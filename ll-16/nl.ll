; ModuleID = 'src/nl.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.linebuffer = type { i64, i64, ptr }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [62 x i8] c"Write each FILE to standard output, with line numbers added.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [3 x i8] c"nl\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [70 x i8] c"  -b, --body-numbering=STYLE      use STYLE for numbering body lines\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [70 x i8] c"  -d, --section-delimiter=CC      use CC for logical page delimiters\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [72 x i8] c"  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [72 x i8] c"  -h, --header-numbering=STYLE    use STYLE for numbering header lines\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [70 x i8] c"  -i, --line-increment=NUMBER     line number increment at each line\0A\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [78 x i8] c"  -l, --join-blank-lines=NUMBER   group of NUMBER empty lines counted as one\0A\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [75 x i8] c"  -n, --number-format=FORMAT      insert line numbers according to FORMAT\0A\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [78 x i8] c"  -p, --no-renumber               do not reset line numbers for each section\0A\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [75 x i8] c"  -s, --number-separator=STRING   add STRING after (possible) line number\0A\00", align 1, !dbg !50
@.str.13 = private unnamed_addr constant [73 x i8] c"  -v, --starting-line-number=NUMBER  first line number for each section\0A\00", align 1, !dbg !52
@.str.14 = private unnamed_addr constant [71 x i8] c"  -w, --number-width=NUMBER       use NUMBER columns for line numbers\0A\00", align 1, !dbg !57
@.str.15 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !62
@.str.16 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !67
@.str.17 = private unnamed_addr constant [323 x i8] c"\0ADefault options are: -bt -d'\\:' -fn -hn -i1 -l1 -n'rn' -s<TAB> -v1 -w6\0A\0ACC are two delimiter characters used to construct logical page delimiters;\0Aa missing second character implies ':'.  As a GNU extension one can specify\0Amore than two characters, and also specifying the empty string (-d '')\0Adisables section matching.\0A\00", align 1, !dbg !69
@.str.18 = private unnamed_addr constant [202 x i8] c"\0ASTYLE is one of:\0A\0A  a      number all lines\0A  t      number only nonempty lines\0A  n      number no lines\0A  pBRE   number only lines that contain a match for the basic regular\0A         expression, BRE\0A\00", align 1, !dbg !74
@.str.19 = private unnamed_addr constant [147 x i8] c"\0AFORMAT is one of:\0A\0A  ln     left justified, no leading zeros\0A  rn     right justified, no leading zeros\0A  rz     right justified, leading zeros\0A\0A\00", align 1, !dbg !79
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !84
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !89
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !94
@.str.23 = private unnamed_addr constant [22 x i8] c"h:b:f:v:i:pl:s:w:n:d:\00", align 1, !dbg !99
@longopts = internal constant [14 x %struct.option] [%struct.option { ptr @.str.77, i32 1, ptr null, i32 104 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.80, i32 1, ptr null, i32 118 }, %struct.option { ptr @.str.81, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.82, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 108 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.85, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.86, i32 1, ptr null, i32 110 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.88, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !104
@header_type = internal global ptr @.str.91, align 8, !dbg !543
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !270
@header_fastmap = internal global [256 x i8] zeroinitializer, align 1, !dbg !279
@.str.24 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1, !dbg !188
@optarg = external local_unnamed_addr global ptr, align 8
@body_type = internal global ptr @.str.92, align 8, !dbg !547
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !246
@body_fastmap = internal global [256 x i8] zeroinitializer, align 1, !dbg !274
@.str.25 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1, !dbg !193
@footer_type = internal global ptr @.str.91, align 8, !dbg !549
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !272
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 1, !dbg !281
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid footer numbering style: %s\00", align 1, !dbg !195
@.str.27 = private unnamed_addr constant [29 x i8] c"invalid starting line number\00", align 1, !dbg !197
@starting_line_number = internal unnamed_addr global i64 1, align 8, !dbg !551
@.str.28 = private unnamed_addr constant [30 x i8] c"invalid line number increment\00", align 1, !dbg !202
@page_incr = internal unnamed_addr global i64 1, align 8, !dbg !553
@reset_numbers = internal unnamed_addr global i1 false, align 1, !dbg !623
@.str.29 = private unnamed_addr constant [35 x i8] c"invalid line number of blank lines\00", align 1, !dbg !207
@blank_join = internal unnamed_addr global i64 1, align 8, !dbg !557
@separator_str = internal unnamed_addr global ptr @.str.93, align 8, !dbg !561
@.str.30 = private unnamed_addr constant [32 x i8] c"invalid line number field width\00", align 1, !dbg !209
@lineno_width = internal unnamed_addr global i32 6, align 4, !dbg !563
@.str.31 = private unnamed_addr constant [3 x i8] c"ln\00", align 1, !dbg !214
@FORMAT_LEFT = internal constant [8 x i8] c"%-*jd%s\00", align 1, !dbg !565
@lineno_format = internal unnamed_addr global ptr @FORMAT_RIGHT_NOLZ, align 8, !dbg !568
@.str.32 = private unnamed_addr constant [3 x i8] c"rn\00", align 1, !dbg !216
@FORMAT_RIGHT_NOLZ = internal constant [7 x i8] c"%*jd%s\00", align 1, !dbg !570
@.str.33 = private unnamed_addr constant [3 x i8] c"rz\00", align 1, !dbg !218
@FORMAT_RIGHT_LZ = internal constant [8 x i8] c"%0*jd%s\00", align 1, !dbg !573
@.str.34 = private unnamed_addr constant [34 x i8] c"invalid line numbering format: %s\00", align 1, !dbg !220
@section_del = internal unnamed_addr global ptr @DEFAULT_SECTION_DELIMITERS, align 8, !dbg !575
@.str.36 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !230
@.str.37 = private unnamed_addr constant [14 x i8] c"Scott Bartram\00", align 1, !dbg !235
@.str.38 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !237
@section_del_len = internal unnamed_addr global i64 0, align 8, !dbg !283
@header_del_len = internal unnamed_addr global i64 0, align 8, !dbg !285
@header_del = internal unnamed_addr global ptr null, align 8, !dbg !582
@body_del_len = internal unnamed_addr global i64 0, align 8, !dbg !287
@body_del = internal unnamed_addr global ptr null, align 8, !dbg !584
@footer_del_len = internal unnamed_addr global i64 0, align 8, !dbg !289
@footer_del = internal unnamed_addr global ptr null, align 8, !dbg !586
@line_buf = internal global %struct.linebuffer zeroinitializer, align 8, !dbg !291
@print_no_line_fmt = internal unnamed_addr global ptr null, align 8, !dbg !588
@line_no = internal unnamed_addr global i64 0, align 8, !dbg !303
@current_type = internal unnamed_addr global ptr null, align 8, !dbg !244
@current_regex = internal unnamed_addr global ptr null, align 8, !dbg !590
@optind = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !242
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !624
@stdin = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !311
@.str.41 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !316
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !318
@.str.42 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !398
@.str.43 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !403
@.str.44 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !405
@.str.45 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !410
@.str.59 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !447
@.str.60 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !449
@.str.61 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !451
@.str.62 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !456
@.str.63 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !461
@.str.64 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !466
@.str.65 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !471
@.str.66 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !473
@.str.67 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !475
@.str.68 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !477
@.str.72 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !485
@.str.73 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !487
@.str.74 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !489
@.str.75 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !494
@.str.76 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !499
@.str.77 = private unnamed_addr constant [17 x i8] c"header-numbering\00", align 1, !dbg !504
@.str.78 = private unnamed_addr constant [15 x i8] c"body-numbering\00", align 1, !dbg !506
@.str.79 = private unnamed_addr constant [17 x i8] c"footer-numbering\00", align 1, !dbg !508
@.str.80 = private unnamed_addr constant [21 x i8] c"starting-line-number\00", align 1, !dbg !510
@.str.81 = private unnamed_addr constant [15 x i8] c"line-increment\00", align 1, !dbg !515
@.str.82 = private unnamed_addr constant [12 x i8] c"no-renumber\00", align 1, !dbg !517
@.str.83 = private unnamed_addr constant [17 x i8] c"join-blank-lines\00", align 1, !dbg !519
@.str.84 = private unnamed_addr constant [17 x i8] c"number-separator\00", align 1, !dbg !521
@.str.85 = private unnamed_addr constant [13 x i8] c"number-width\00", align 1, !dbg !523
@.str.86 = private unnamed_addr constant [14 x i8] c"number-format\00", align 1, !dbg !528
@.str.87 = private unnamed_addr constant [18 x i8] c"section-delimiter\00", align 1, !dbg !530
@.str.88 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !535
@.str.89 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !537
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.90 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !539
@.str.91 = private unnamed_addr constant [2 x i8] c"n\00", align 1, !dbg !541
@.str.92 = private unnamed_addr constant [2 x i8] c"t\00", align 1, !dbg !545
@.str.93 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !559
@DEFAULT_SECTION_DELIMITERS = internal global [9 x i8] c"\\:\00\00\00\00\00\00\00", align 1, !dbg !577
@.str.94 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !593
@line_no_overflow = internal unnamed_addr global i1 false, align 1, !dbg !625
@proc_text.blank_lines = internal unnamed_addr global i64 0, align 8, !dbg !597
@.str.95 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1, !dbg !607
@.str.96 = private unnamed_addr constant [21 x i8] c"line number overflow\00", align 1, !dbg !609
@.str.97 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !611
@.str.35 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !626
@Version = dso_local local_unnamed_addr global ptr @.str.35, align 8, !dbg !629
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !633
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !646
@.str.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !638
@.str.1.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !640
@.str.2.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !642
@.str.3.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !644
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !648
@stderr = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !654
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !691
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !656
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !681
@.str.1.56 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !683
@.str.2.58 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !685
@.str.3.57 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !687
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !689
@.str.4.51 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !693
@.str.5.52 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !695
@.str.6.53 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !697
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !700
@.str.98 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !706
@.str.1.99 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !708
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !710
@.str.102 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !741
@.str.1.103 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !744
@.str.2.104 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !746
@.str.3.105 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !748
@.str.4.106 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !750
@.str.5.107 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !752
@.str.6.108 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !754
@.str.7.109 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !756
@.str.8.110 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !758
@.str.9.111 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !760
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.102, ptr @.str.1.103, ptr @.str.2.104, ptr @.str.3.105, ptr @.str.4.106, ptr @.str.5.107, ptr @.str.6.108, ptr @.str.7.109, ptr @.str.8.110, ptr @.str.9.111, ptr null], align 8, !dbg !762
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !773
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !787
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !822
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !829
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !789
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !831
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !777
@.str.10.114 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !791
@.str.11.112 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !793
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !795
@.str.13.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !797
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !799
@.str.122 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !837
@.str.1.123 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !840
@.str.2.124 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !842
@.str.3.125 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !844
@.str.4.126 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !846
@.str.5.127 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !848
@.str.6.128 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !853
@.str.7.129 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !855
@.str.8.130 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !857
@.str.9.131 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !862
@.str.10.132 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !867
@.str.11.133 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !869
@.str.12.134 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !874
@.str.13.135 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !876
@.str.14.136 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !881
@.str.15.137 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !886
@.str.16.138 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !891
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.143 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !896
@.str.18.144 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !898
@.str.19.145 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !900
@.str.20.146 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !902
@.str.21.147 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !904
@.str.22.148 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !906
@.str.23.149 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !908
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !910
@exit_failure = dso_local global i32 1, align 4, !dbg !918
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !924
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !927
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !929
@.str.167 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !931
@.str.178 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !934
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !937
@.str.183 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !952
@.str.1.184 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !955

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1050 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1054, metadata !DIExpression()), !dbg !1055
  %2 = icmp eq i32 %0, 0, !dbg !1056
  br i1 %2, label %8, label %3, !dbg !1058

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1059, !tbaa !1061
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !1059
  %6 = load ptr, ptr @program_name, align 8, !dbg !1059, !tbaa !1061
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !1059
  br label %57, !dbg !1059

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !1065
  %10 = load ptr, ptr @program_name, align 8, !dbg !1065, !tbaa !1061
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !1065
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1067
  %13 = load ptr, ptr @stdout, align 8, !dbg !1067, !tbaa !1061
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1067
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #40, !dbg !1068
  %16 = load ptr, ptr @stdout, align 8, !dbg !1068, !tbaa !1061
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1068
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #40, !dbg !1072
  %19 = load ptr, ptr @stdout, align 8, !dbg !1072, !tbaa !1061
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1072
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1075
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1075
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1076
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1076
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1077
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1077
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1078
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1078
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1079
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1079
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1080
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1080
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1081
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1081
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1082
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1082
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1083
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1083
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1084
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1084
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1085
  tail call fastcc void @oputs_(ptr noundef %31), !dbg !1085
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1086
  tail call fastcc void @oputs_(ptr noundef %32), !dbg !1086
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1087
  tail call fastcc void @oputs_(ptr noundef %33), !dbg !1087
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !1088
  %35 = load ptr, ptr @stdout, align 8, !dbg !1088, !tbaa !1061
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1088
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #40, !dbg !1089
  %38 = load ptr, ptr @stdout, align 8, !dbg !1089, !tbaa !1061
  %39 = tail call i32 @fputs_unlocked(ptr noundef %37, ptr noundef %38), !dbg !1089
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !1090
  %41 = load ptr, ptr @stdout, align 8, !dbg !1090, !tbaa !1061
  %42 = tail call i32 @fputs_unlocked(ptr noundef %40, ptr noundef %41), !dbg !1090
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1091, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1103, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr poison, metadata !1103, metadata !DIExpression()), !dbg !1108
  tail call void @emit_bug_reporting_address() #40, !dbg !1110
  %43 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1111
  call void @llvm.dbg.value(metadata ptr %43, metadata !1106, metadata !DIExpression()), !dbg !1108
  %44 = icmp eq ptr %43, null, !dbg !1112
  br i1 %44, label %52, label %45, !dbg !1114

45:                                               ; preds = %8
  %46 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(4) @.str.72, i64 noundef 3) #41, !dbg !1115
  %47 = icmp eq i32 %46, 0, !dbg !1115
  br i1 %47, label %52, label %48, !dbg !1116

48:                                               ; preds = %45
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #40, !dbg !1117
  %50 = load ptr, ptr @stdout, align 8, !dbg !1117, !tbaa !1061
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !1117
  br label %52, !dbg !1119

52:                                               ; preds = %8, %45, %48
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1103, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1107, metadata !DIExpression()), !dbg !1108
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #40, !dbg !1120
  %54 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %53, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3) #40, !dbg !1120
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #40, !dbg !1121
  %56 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.76) #40, !dbg !1121
  br label %57

57:                                               ; preds = %52, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1122
  unreachable, !dbg !1122
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1123 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1127 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1133 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1136 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !320 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !324, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata ptr %0, metadata !325, metadata !DIExpression()), !dbg !1139
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1140, !tbaa !1141
  %3 = icmp eq i32 %2, -1, !dbg !1143
  br i1 %3, label %4, label %16, !dbg !1144

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.42) #40, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %5, metadata !326, metadata !DIExpression()), !dbg !1146
  %6 = icmp eq ptr %5, null, !dbg !1147
  br i1 %6, label %14, label %7, !dbg !1148

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1149, !tbaa !1150
  %9 = icmp eq i8 %8, 0, !dbg !1149
  br i1 %9, label %14, label %10, !dbg !1151

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1152, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !1158, metadata !DIExpression()), !dbg !1159
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.43) #41, !dbg !1161
  %12 = icmp eq i32 %11, 0, !dbg !1162
  %13 = zext i1 %12 to i32, !dbg !1151
  br label %14, !dbg !1151

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1163, !tbaa !1141
  br label %16, !dbg !1164

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1165
  %18 = icmp eq i32 %17, 0, !dbg !1165
  br i1 %18, label %22, label %19, !dbg !1167

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1168, !tbaa !1061
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1168
  br label %122, !dbg !1170

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !329, metadata !DIExpression()), !dbg !1139
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.44) #41, !dbg !1171
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %24, metadata !330, metadata !DIExpression()), !dbg !1139
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1173
  call void @llvm.dbg.value(metadata ptr %25, metadata !331, metadata !DIExpression()), !dbg !1139
  %26 = icmp eq ptr %25, null, !dbg !1174
  br i1 %26, label %54, label %27, !dbg !1175

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1176
  br i1 %28, label %54, label %29, !dbg !1177

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !332, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i64 0, metadata !336, metadata !DIExpression()), !dbg !1178
  %30 = icmp ult ptr %24, %25, !dbg !1179
  br i1 %30, label %31, label %52, !dbg !1180

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1139
  %33 = load ptr, ptr %32, align 8, !tbaa !1061
  br label %34, !dbg !1180

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !332, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %36, metadata !336, metadata !DIExpression()), !dbg !1178
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1181
  call void @llvm.dbg.value(metadata ptr %37, metadata !332, metadata !DIExpression()), !dbg !1178
  %38 = load i8, ptr %35, align 1, !dbg !1181, !tbaa !1150
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1181
  %41 = load i16, ptr %40, align 2, !dbg !1181, !tbaa !1182
  %42 = freeze i16 %41, !dbg !1184
  %43 = lshr i16 %42, 13, !dbg !1184
  %44 = and i16 %43, 1, !dbg !1184
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %46, metadata !336, metadata !DIExpression()), !dbg !1178
  %47 = icmp ult ptr %37, %25, !dbg !1179
  %48 = icmp ult i64 %46, 2, !dbg !1186
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1186
  br i1 %49, label %34, label %50, !dbg !1180, !llvm.loop !1187

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1189
  br i1 %51, label %52, label %54, !dbg !1191

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1191

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1139
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !329, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata ptr %55, metadata !331, metadata !DIExpression()), !dbg !1139
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.45) #41, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %57, metadata !337, metadata !DIExpression()), !dbg !1139
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %58, metadata !338, metadata !DIExpression()), !dbg !1139
  br label %59, !dbg !1194

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1139
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !329, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata ptr %60, metadata !338, metadata !DIExpression()), !dbg !1139
  %62 = load i8, ptr %60, align 1, !dbg !1195, !tbaa !1150
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1196

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1197
  %65 = load i8, ptr %64, align 1, !dbg !1200, !tbaa !1150
  %66 = icmp ne i8 %65, 45, !dbg !1201
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1202
  br label %68, !dbg !1202

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !329, metadata !DIExpression()), !dbg !1139
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1203
  %71 = load ptr, ptr %70, align 8, !dbg !1203, !tbaa !1061
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1203
  %74 = load i16, ptr %73, align 2, !dbg !1203, !tbaa !1182
  %75 = and i16 %74, 8192, !dbg !1203
  %76 = icmp eq i16 %75, 0, !dbg !1203
  br i1 %76, label %90, label %77, !dbg !1205

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1206
  br i1 %78, label %92, label %79, !dbg !1209

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1210
  %81 = load i8, ptr %80, align 1, !dbg !1210, !tbaa !1150
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1210
  %84 = load i16, ptr %83, align 2, !dbg !1210, !tbaa !1182
  %85 = and i16 %84, 8192, !dbg !1210
  %86 = icmp eq i16 %85, 0, !dbg !1210
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1211
  br i1 %89, label %90, label %92, !dbg !1211

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1212
  call void @llvm.dbg.value(metadata ptr %91, metadata !338, metadata !DIExpression()), !dbg !1139
  br label %59, !dbg !1194, !llvm.loop !1213

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1215
  %94 = load ptr, ptr @stdout, align 8, !dbg !1215, !tbaa !1061
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1215
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1152, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !393, metadata !DIExpression()), !dbg !1139
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.59, i64 noundef 6) #41, !dbg !1236
  %97 = icmp eq i32 %96, 0, !dbg !1236
  br i1 %97, label %101, label %98, !dbg !1238

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.60, i64 noundef 9) #41, !dbg !1239
  %100 = icmp eq i32 %99, 0, !dbg !1239
  br i1 %100, label %101, label %104, !dbg !1240

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1241
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #40, !dbg !1241
  br label %107, !dbg !1243

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1244
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #40, !dbg !1244
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1246, !tbaa !1061
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.65, ptr noundef %108), !dbg !1246
  %110 = load ptr, ptr @stdout, align 8, !dbg !1247, !tbaa !1061
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.66, ptr noundef %110), !dbg !1247
  %112 = ptrtoint ptr %60 to i64, !dbg !1248
  %113 = sub i64 %112, %93, !dbg !1248
  %114 = load ptr, ptr @stdout, align 8, !dbg !1248, !tbaa !1061
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1248
  %116 = load ptr, ptr @stdout, align 8, !dbg !1249, !tbaa !1061
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %116), !dbg !1249
  %118 = load ptr, ptr @stdout, align 8, !dbg !1250, !tbaa !1061
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.68, ptr noundef %118), !dbg !1250
  %120 = load ptr, ptr @stdout, align 8, !dbg !1251, !tbaa !1061
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1251
  br label %122, !dbg !1252

122:                                              ; preds = %107, %19
  ret void, !dbg !1252
}

; Function Attrs: nounwind
declare !dbg !1253 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1257 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1261 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1263 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1266 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1269 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1272 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1275 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1281 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1282 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1288 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1293, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata ptr %1, metadata !1294, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8 1, metadata !1297, metadata !DIExpression()), !dbg !1305
  %5 = load ptr, ptr %1, align 8, !dbg !1306, !tbaa !1061
  tail call void @set_program_name(ptr noundef %5) #40, !dbg !1307
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.20) #40, !dbg !1308
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #40, !dbg !1309
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.21) #40, !dbg !1310
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1311
  br label %10, !dbg !1312

10:                                               ; preds = %13, %2
  %11 = phi i1 [ true, %2 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1297, metadata !DIExpression()), !dbg !1305
  %12 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %12, metadata !1295, metadata !DIExpression()), !dbg !1305
  switch i32 %12, label %13 [
    i32 -1, label %118
    i32 104, label %15
    i32 98, label %21
    i32 102, label %27
    i32 118, label %33
    i32 105, label %37
    i32 112, label %41
    i32 108, label %42
    i32 115, label %46
    i32 119, label %48
    i32 110, label %53
    i32 100, label %70
    i32 -2, label %112
    i32 -3, label %113
  ], !dbg !1312

13:                                               ; preds = %10, %99, %103, %111, %108, %57, %65, %66, %61, %27, %29, %21, %23, %15, %17, %48, %46, %42, %41, %37, %33
  %14 = phi i1 [ %11, %108 ], [ %11, %111 ], [ %11, %57 ], [ %11, %61 ], [ %11, %65 ], [ false, %66 ], [ %11, %48 ], [ %11, %46 ], [ %11, %42 ], [ %11, %41 ], [ %11, %37 ], [ %11, %33 ], [ %11, %27 ], [ false, %29 ], [ %11, %21 ], [ false, %23 ], [ %11, %15 ], [ false, %17 ], [ %11, %103 ], [ %11, %99 ], [ false, %10 ]
  br label %10, !dbg !1305, !llvm.loop !1314

15:                                               ; preds = %10
  %16 = call fastcc i1 @build_type_arg(ptr noundef nonnull @header_type, ptr noundef nonnull @header_regex, ptr noundef nonnull @header_fastmap), !dbg !1316
  br i1 %16, label %13, label %17, !dbg !1318

17:                                               ; preds = %15
  %18 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1319
  %19 = load ptr, ptr @optarg, align 8, !dbg !1319, !tbaa !1061
  %20 = call ptr @quote(ptr noundef %19) #40, !dbg !1319
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %20) #40, !dbg !1319
  call void @llvm.dbg.value(metadata i8 0, metadata !1297, metadata !DIExpression()), !dbg !1305
  br label %13, !dbg !1321

21:                                               ; preds = %10
  %22 = call fastcc i1 @build_type_arg(ptr noundef nonnull @body_type, ptr noundef nonnull @body_regex, ptr noundef nonnull @body_fastmap), !dbg !1322
  br i1 %22, label %13, label %23, !dbg !1324

23:                                               ; preds = %21
  %24 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1325
  %25 = load ptr, ptr @optarg, align 8, !dbg !1325, !tbaa !1061
  %26 = call ptr @quote(ptr noundef %25) #40, !dbg !1325
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %24, ptr noundef %26) #40, !dbg !1325
  call void @llvm.dbg.value(metadata i8 0, metadata !1297, metadata !DIExpression()), !dbg !1305
  br label %13, !dbg !1327

27:                                               ; preds = %10
  %28 = call fastcc i1 @build_type_arg(ptr noundef nonnull @footer_type, ptr noundef nonnull @footer_regex, ptr noundef nonnull @footer_fastmap), !dbg !1328
  br i1 %28, label %13, label %29, !dbg !1330

29:                                               ; preds = %27
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1331
  %31 = load ptr, ptr @optarg, align 8, !dbg !1331, !tbaa !1061
  %32 = call ptr @quote(ptr noundef %31) #40, !dbg !1331
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30, ptr noundef %32) #40, !dbg !1331
  call void @llvm.dbg.value(metadata i8 0, metadata !1297, metadata !DIExpression()), !dbg !1305
  br label %13, !dbg !1333

33:                                               ; preds = %10
  %34 = load ptr, ptr @optarg, align 8, !dbg !1334, !tbaa !1061
  %35 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !1335
  %36 = call i64 @xdectoimax(ptr noundef %34, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %35, i32 noundef 0) #40, !dbg !1336
  store i64 %36, ptr @starting_line_number, align 8, !dbg !1337, !tbaa !1338
  br label %13, !dbg !1340

37:                                               ; preds = %10
  %38 = load ptr, ptr @optarg, align 8, !dbg !1341, !tbaa !1061
  %39 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #40, !dbg !1342
  %40 = call i64 @xdectoimax(ptr noundef %38, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %39, i32 noundef 0) #40, !dbg !1343
  store i64 %40, ptr @page_incr, align 8, !dbg !1344, !tbaa !1338
  br label %13, !dbg !1345

41:                                               ; preds = %10
  store i1 true, ptr @reset_numbers, align 1, !dbg !1346
  br label %13, !dbg !1347

42:                                               ; preds = %10
  %43 = load ptr, ptr @optarg, align 8, !dbg !1348, !tbaa !1061
  %44 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !1349
  %45 = call i64 @xnumtoimax(ptr noundef %43, i32 noundef 10, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %44, i32 noundef 0, i32 noundef 6) #40, !dbg !1350
  store i64 %45, ptr @blank_join, align 8, !dbg !1351, !tbaa !1338
  br label %13, !dbg !1352

46:                                               ; preds = %10
  %47 = load ptr, ptr @optarg, align 8, !dbg !1353, !tbaa !1061
  store ptr %47, ptr @separator_str, align 8, !dbg !1354, !tbaa !1061
  br label %13, !dbg !1355

48:                                               ; preds = %10
  %49 = load ptr, ptr @optarg, align 8, !dbg !1356, !tbaa !1061
  %50 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !1357
  %51 = call i64 @xnumtoimax(ptr noundef %49, i32 noundef 10, i64 noundef 1, i64 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef %50, i32 noundef 0, i32 noundef 4) #40, !dbg !1358
  %52 = trunc i64 %51 to i32, !dbg !1358
  store i32 %52, ptr @lineno_width, align 4, !dbg !1359, !tbaa !1141
  br label %13, !dbg !1360

53:                                               ; preds = %10
  %54 = load ptr, ptr @optarg, align 8, !dbg !1361, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %54, metadata !1152, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !1158, metadata !DIExpression()), !dbg !1363
  %55 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.31) #41, !dbg !1365
  %56 = icmp eq i32 %55, 0, !dbg !1366
  br i1 %56, label %57, label %58, !dbg !1367

57:                                               ; preds = %53
  store ptr @FORMAT_LEFT, ptr @lineno_format, align 8, !dbg !1368, !tbaa !1061
  br label %13, !dbg !1369

58:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr %54, metadata !1152, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata ptr @.str.32, metadata !1158, metadata !DIExpression()), !dbg !1370
  %59 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.32) #41, !dbg !1373
  %60 = icmp eq i32 %59, 0, !dbg !1374
  br i1 %60, label %61, label %62, !dbg !1375

61:                                               ; preds = %58
  store ptr @FORMAT_RIGHT_NOLZ, ptr @lineno_format, align 8, !dbg !1376, !tbaa !1061
  br label %13, !dbg !1377

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr %54, metadata !1152, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !1158, metadata !DIExpression()), !dbg !1378
  %63 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.33) #41, !dbg !1381
  %64 = icmp eq i32 %63, 0, !dbg !1382
  br i1 %64, label %65, label %66, !dbg !1383

65:                                               ; preds = %62
  store ptr @FORMAT_RIGHT_LZ, ptr @lineno_format, align 8, !dbg !1384, !tbaa !1061
  br label %13, !dbg !1385

66:                                               ; preds = %62
  %67 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !1386
  %68 = load ptr, ptr @optarg, align 8, !dbg !1386, !tbaa !1061
  %69 = call ptr @quote(ptr noundef %68) #40, !dbg !1386
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %69) #40, !dbg !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1297, metadata !DIExpression()), !dbg !1305
  br label %13

70:                                               ; preds = %10
  %71 = load ptr, ptr @optarg, align 8, !dbg !1388, !tbaa !1061
  %72 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %71) #41, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %72, metadata !1296, metadata !DIExpression()), !dbg !1305
  %73 = call i64 @__ctype_get_mb_cur_max() #40, !dbg !1390
  %74 = icmp ugt i64 %73, 1, !dbg !1391
  br i1 %74, label %75, label %105, !dbg !1392

75:                                               ; preds = %70
  %76 = load ptr, ptr @optarg, align 8, !dbg !1393, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %76, metadata !1298, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1303, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1394
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr %76, metadata !1298, metadata !DIExpression()), !dbg !1394
  %77 = icmp sgt i64 %72, 0, !dbg !1395
  br i1 %77, label %78, label %103, !dbg !1398

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %76, i64 %72, !dbg !1399
  call void @llvm.dbg.value(metadata ptr %79, metadata !1303, metadata !DIExpression()), !dbg !1394
  %80 = ptrtoint ptr %79 to i64
  call void @llvm.dbg.value(metadata ptr %76, metadata !1298, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i32 poison, metadata !1304, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr %76, metadata !1400, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1411, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1426
  %81 = load i8, ptr %76, align 1, !dbg !1428, !tbaa !1150
  call void @llvm.dbg.value(metadata i8 %81, metadata !1412, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %81, metadata !1429, metadata !DIExpression()), !dbg !1434
  %82 = icmp sgt i8 %81, -1, !dbg !1437
  br i1 %82, label %87, label %83, !dbg !1438

83:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1439
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1413, metadata !DIExpression()), !dbg !1440
  store i32 0, ptr %3, align 4, !dbg !1441, !tbaa !1442
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %4, metadata !1424, metadata !DIExpression(DW_OP_deref)), !dbg !1426
  %84 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %76, i64 noundef %72, ptr noundef nonnull %3) #40, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %84, metadata !1425, metadata !DIExpression()), !dbg !1426
  %85 = icmp slt i64 %84, 0, !dbg !1446
  %86 = select i1 %85, i64 1, i64 %84, !dbg !1448, !prof !1449
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40, !dbg !1450
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1450
  br label %87

87:                                               ; preds = %78, %83
  %88 = phi i64 [ %86, %83 ], [ 1, %78 ], !dbg !1426
  %89 = getelementptr inbounds i8, ptr %76, i64 %88, !dbg !1451
  call void @llvm.dbg.value(metadata ptr %89, metadata !1298, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i32 poison, metadata !1304, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1394
  %90 = icmp slt i64 %88, %72, !dbg !1395
  br i1 %90, label %91, label %99, !dbg !1398, !llvm.loop !1452

91:                                               ; preds = %87
  call void @llvm.dbg.value(metadata ptr %89, metadata !1298, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i32 poison, metadata !1304, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr %89, metadata !1400, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1411, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1426
  %92 = load i8, ptr %89, align 1, !dbg !1428, !tbaa !1150
  call void @llvm.dbg.value(metadata i8 %92, metadata !1412, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %92, metadata !1429, metadata !DIExpression()), !dbg !1434
  %93 = icmp sgt i8 %92, -1, !dbg !1437
  br i1 %93, label %98, label %94, !dbg !1438

94:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1439
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1413, metadata !DIExpression()), !dbg !1440
  store i32 0, ptr %3, align 4, !dbg !1441, !tbaa !1442
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40, !dbg !1444
  %95 = ptrtoint ptr %89 to i64, !dbg !1454
  %96 = sub i64 %80, %95, !dbg !1454
  call void @llvm.dbg.value(metadata ptr %4, metadata !1424, metadata !DIExpression(DW_OP_deref)), !dbg !1426
  %97 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %89, i64 noundef %96, ptr noundef nonnull %3) #40, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %97, metadata !1425, metadata !DIExpression()), !dbg !1426
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40, !dbg !1450
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1450
  br label %98

98:                                               ; preds = %91, %94
  br i1 %90, label %103, label %99, !dbg !1455

99:                                               ; preds = %87, %98
  %100 = load ptr, ptr @section_del, align 8, !dbg !1456, !tbaa !1061
  %101 = load ptr, ptr @optarg, align 8, !dbg !1458, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %100, metadata !1459, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata ptr %101, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i64 %72, metadata !1467, metadata !DIExpression()), !dbg !1468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %100, ptr noundef nonnull align 1 %101, i64 noundef %72, i1 noundef false) #40, !dbg !1470
  %102 = getelementptr inbounds i8, ptr %100, i64 %72, !dbg !1470
  call void @llvm.dbg.value(metadata ptr %102, metadata !1471, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata !1070, metadata !1474, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i64 2, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i16 58, ptr %102, align 1, !dbg !1478
  br label %13, !dbg !1479

103:                                              ; preds = %75, %98
  %104 = load ptr, ptr @optarg, align 8, !dbg !1480, !tbaa !1061
  store ptr %104, ptr @section_del, align 8, !dbg !1481, !tbaa !1061
  br label %13

105:                                              ; preds = %70
  %106 = icmp eq i64 %72, 1, !dbg !1482
  %107 = load ptr, ptr @optarg, align 8, !dbg !1485, !tbaa !1061
  br i1 %106, label %108, label %111, !dbg !1486

108:                                              ; preds = %105
  %109 = load i8, ptr %107, align 1, !dbg !1487, !tbaa !1150
  %110 = load ptr, ptr @section_del, align 8, !dbg !1488, !tbaa !1061
  store i8 %109, ptr %110, align 1, !dbg !1489, !tbaa !1150
  br label %13, !dbg !1490

111:                                              ; preds = %105
  store ptr %107, ptr @section_del, align 8, !dbg !1491, !tbaa !1061
  br label %13

112:                                              ; preds = %10
  call void @usage(i32 noundef 0) #44, !dbg !1492
  unreachable, !dbg !1492

113:                                              ; preds = %10
  %114 = load ptr, ptr @stdout, align 8, !dbg !1493, !tbaa !1061
  %115 = load ptr, ptr @Version, align 8, !dbg !1493, !tbaa !1061
  %116 = call ptr @proper_name_lite(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37) #40, !dbg !1493
  %117 = call ptr @proper_name_lite(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #40, !dbg !1493
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %114, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, ptr noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef null) #40, !dbg !1493
  call void @exit(i32 noundef 0) #42, !dbg !1493
  unreachable, !dbg !1493

118:                                              ; preds = %10
  br i1 %11, label %120, label %119, !dbg !1494

119:                                              ; preds = %118
  call void @usage(i32 noundef 1) #44, !dbg !1495
  unreachable, !dbg !1495

120:                                              ; preds = %118
  %121 = load ptr, ptr @section_del, align 8, !dbg !1497, !tbaa !1061
  %122 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %121) #41, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %122, metadata !1296, metadata !DIExpression()), !dbg !1305
  store i64 %122, ptr @section_del_len, align 8, !dbg !1499, !tbaa !1338
  %123 = mul i64 %122, 3, !dbg !1500
  store i64 %123, ptr @header_del_len, align 8, !dbg !1501, !tbaa !1338
  %124 = add i64 %123, 1, !dbg !1502
  %125 = call noalias nonnull ptr @xmalloc(i64 noundef %124) #45, !dbg !1503
  store ptr %125, ptr @header_del, align 8, !dbg !1504, !tbaa !1061
  %126 = load ptr, ptr @section_del, align 8, !dbg !1505, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %125, metadata !1506, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata ptr %126, metadata !1512, metadata !DIExpression()), !dbg !1513
  %127 = call ptr @stpcpy(ptr nonnull %125, ptr %126), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %127, metadata !1506, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata ptr %126, metadata !1512, metadata !DIExpression()), !dbg !1516
  %128 = call ptr @stpcpy(ptr %127, ptr %126), !dbg !1518
  call void @llvm.dbg.value(metadata ptr %128, metadata !1506, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %126, metadata !1512, metadata !DIExpression()), !dbg !1519
  %129 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %128, ptr noundef nonnull dereferenceable(1) %126), !dbg !1521
  %130 = shl i64 %122, 1, !dbg !1522
  store i64 %130, ptr @body_del_len, align 8, !dbg !1523, !tbaa !1338
  %131 = load ptr, ptr @header_del, align 8, !dbg !1524, !tbaa !1061
  %132 = getelementptr inbounds i8, ptr %131, i64 %122, !dbg !1525
  store ptr %132, ptr @body_del, align 8, !dbg !1526, !tbaa !1061
  store i64 %122, ptr @footer_del_len, align 8, !dbg !1527, !tbaa !1338
  %133 = getelementptr inbounds i8, ptr %132, i64 %122, !dbg !1528
  store ptr %133, ptr @footer_del, align 8, !dbg !1529, !tbaa !1061
  call void @initbuffer(ptr noundef nonnull @line_buf) #40, !dbg !1530
  %134 = load ptr, ptr @separator_str, align 8, !dbg !1531, !tbaa !1061
  %135 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %134) #41, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %135, metadata !1296, metadata !DIExpression()), !dbg !1305
  %136 = load i32, ptr @lineno_width, align 4, !dbg !1533, !tbaa !1141
  %137 = sext i32 %136 to i64, !dbg !1533
  %138 = add i64 %135, 1, !dbg !1534
  %139 = add i64 %138, %137, !dbg !1535
  %140 = call noalias nonnull ptr @xmalloc(i64 noundef %139) #45, !dbg !1536
  store ptr %140, ptr @print_no_line_fmt, align 8, !dbg !1537, !tbaa !1061
  %141 = load i32, ptr @lineno_width, align 4, !dbg !1538, !tbaa !1141
  %142 = sext i32 %141 to i64, !dbg !1538
  %143 = add i64 %135, %142, !dbg !1539
  call void @llvm.dbg.value(metadata ptr %140, metadata !1540, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 32, metadata !1545, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %143, metadata !1546, metadata !DIExpression()), !dbg !1547
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %140, i8 noundef 32, i64 noundef %143, i1 noundef false) #40, !dbg !1549
  %144 = getelementptr inbounds i8, ptr %140, i64 %143, !dbg !1550
  store i8 0, ptr %144, align 1, !dbg !1551, !tbaa !1150
  %145 = load i64, ptr @starting_line_number, align 8, !dbg !1552, !tbaa !1338
  store i64 %145, ptr @line_no, align 8, !dbg !1553, !tbaa !1338
  %146 = load ptr, ptr @body_type, align 8, !dbg !1554, !tbaa !1061
  store ptr %146, ptr @current_type, align 8, !dbg !1555, !tbaa !1061
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1556, !tbaa !1061
  %147 = load i32, ptr @optind, align 4, !dbg !1557, !tbaa !1141
  %148 = icmp eq i32 %147, %0, !dbg !1559
  br i1 %148, label %151, label %149, !dbg !1560

149:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1297, metadata !DIExpression()), !dbg !1305
  %150 = icmp slt i32 %147, %0, !dbg !1561
  br i1 %150, label %153, label %164, !dbg !1564

151:                                              ; preds = %120
  %152 = call fastcc i1 @nl_file(ptr noundef nonnull @.str.39), !dbg !1565
  call void @llvm.dbg.value(metadata i1 %152, metadata !1297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1305
  br label %164, !dbg !1566

153:                                              ; preds = %149, %153
  %154 = phi i32 [ %162, %153 ], [ %147, %149 ]
  %155 = phi i1 [ %160, %153 ], [ true, %149 ]
  %156 = sext i32 %154 to i64, !dbg !1567
  %157 = getelementptr inbounds ptr, ptr %1, i64 %156, !dbg !1567
  %158 = load ptr, ptr %157, align 8, !dbg !1567, !tbaa !1061
  %159 = call fastcc i1 @nl_file(ptr noundef %158), !dbg !1568
  %160 = and i1 %155, %159, !dbg !1569
  call void @llvm.dbg.value(metadata i1 %160, metadata !1297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1305
  %161 = load i32, ptr @optind, align 4, !dbg !1570, !tbaa !1141
  %162 = add nsw i32 %161, 1, !dbg !1570
  store i32 %162, ptr @optind, align 4, !dbg !1570, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 poison, metadata !1297, metadata !DIExpression()), !dbg !1305
  %163 = icmp slt i32 %162, %0, !dbg !1561
  br i1 %163, label %153, label %164, !dbg !1564, !llvm.loop !1571

164:                                              ; preds = %153, %149, %151
  %165 = phi i1 [ %152, %151 ], [ true, %149 ], [ %160, %153 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1297, metadata !DIExpression()), !dbg !1305
  %166 = load i1, ptr @have_read_stdin, align 1, !dbg !1573
  br i1 %166, label %167, label %174, !dbg !1575

167:                                              ; preds = %164
  %168 = load ptr, ptr @stdin, align 8, !dbg !1576, !tbaa !1061
  %169 = call i32 @rpl_fclose(ptr noundef %168) #40, !dbg !1577
  %170 = icmp eq i32 %169, -1, !dbg !1578
  br i1 %170, label %171, label %174, !dbg !1579

171:                                              ; preds = %167
  %172 = tail call ptr @__errno_location() #43, !dbg !1580
  %173 = load i32, ptr %172, align 4, !dbg !1580, !tbaa !1141
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %173, ptr noundef nonnull @.str.39) #40, !dbg !1580
  unreachable, !dbg !1580

174:                                              ; preds = %167, %164
  %175 = xor i1 %165, true, !dbg !1581
  %176 = zext i1 %175 to i32, !dbg !1581
  ret i32 %176, !dbg !1582
}

; Function Attrs: nounwind
declare !dbg !1583 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1586 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1587 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1590 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i1 @build_type_arg(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !dbg !1596 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1601, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata ptr %1, metadata !1602, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata ptr %2, metadata !1603, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1606
  %4 = load ptr, ptr @optarg, align 8, !dbg !1607, !tbaa !1061
  %5 = load i8, ptr %4, align 1, !dbg !1608, !tbaa !1150
  switch i8 %5, label %16 [
    i8 97, label %6
    i8 116, label %6
    i8 110, label %6
    i8 112, label %7
  ], !dbg !1609

6:                                                ; preds = %3, %3, %3
  store ptr %4, ptr %0, align 8, !dbg !1610, !tbaa !1061
  br label %16, !dbg !1612

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1613
  store ptr %8, ptr @optarg, align 8, !dbg !1613, !tbaa !1061
  store ptr %4, ptr %0, align 8, !dbg !1614, !tbaa !1061
  %9 = getelementptr inbounds %struct.re_pattern_buffer, ptr %1, i64 0, i32 4, !dbg !1615
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1616
  store ptr %2, ptr %9, align 8, !dbg !1617, !tbaa !1618
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %1, i64 0, i32 5, !dbg !1620
  store ptr null, ptr %10, align 8, !dbg !1621, !tbaa !1622
  store i64 710, ptr @re_syntax_options, align 8, !dbg !1623, !tbaa !1338
  %11 = load ptr, ptr @optarg, align 8, !dbg !1624, !tbaa !1061
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #41, !dbg !1625
  %13 = tail call ptr @re_compile_pattern(ptr noundef %11, i64 noundef %12, ptr noundef nonnull %1) #40, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %13, metadata !1604, metadata !DIExpression()), !dbg !1606
  %14 = icmp eq ptr %13, null, !dbg !1627
  br i1 %14, label %16, label %15, !dbg !1629

15:                                               ; preds = %7
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull %13) #40, !dbg !1630
  unreachable, !dbg !1630

16:                                               ; preds = %3, %7, %6
  %17 = phi i1 [ true, %7 ], [ true, %6 ], [ false, %3 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1605, metadata !DIExpression()), !dbg !1606
  ret i1 %17, !dbg !1631
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1632 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1635 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1638 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) #13

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define internal fastcc i1 @nl_file(ptr noundef %0) unnamed_addr #10 !dbg !1645 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1649, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata ptr %0, metadata !1152, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !1158, metadata !DIExpression()), !dbg !1653
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.39) #41, !dbg !1656
  %3 = icmp eq i32 %2, 0, !dbg !1657
  br i1 %3, label %4, label %6, !dbg !1658

4:                                                ; preds = %1
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1659
  %5 = load ptr, ptr @stdin, align 8, !dbg !1661, !tbaa !1061, !nonnull !1070
  call void @llvm.dbg.value(metadata ptr %5, metadata !1650, metadata !DIExpression()), !dbg !1652
  br label %12, !dbg !1662

6:                                                ; preds = %1
  %7 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.94) #40, !dbg !1663
  call void @llvm.dbg.value(metadata ptr %7, metadata !1650, metadata !DIExpression()), !dbg !1652
  %8 = icmp eq ptr %7, null, !dbg !1665
  br i1 %8, label %9, label %12, !dbg !1667

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #43, !dbg !1668
  %11 = load i32, ptr %10, align 4, !dbg !1668, !tbaa !1141
  br label %241, !dbg !1670

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %5, %4 ], [ %7, %6 ], !dbg !1671
  call void @llvm.dbg.value(metadata ptr %13, metadata !1650, metadata !DIExpression()), !dbg !1652
  tail call void @fadvise(ptr noundef nonnull %13, i32 noundef 2) #40, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %13, metadata !1673, metadata !DIExpression()), !dbg !1678
  br label %14, !dbg !1680

14:                                               ; preds = %208, %12
  %15 = tail call ptr @readlinebuffer(ptr noundef nonnull @line_buf, ptr noundef %13) #40, !dbg !1681
  %16 = icmp eq ptr %15, null, !dbg !1680
  br i1 %16, label %221, label %17, !dbg !1680

17:                                               ; preds = %14
  %18 = load i64, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 1), align 8, !dbg !1682, !tbaa !1690
  %19 = add nsw i64 %18, -1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %19, metadata !1687, metadata !DIExpression()), !dbg !1693
  %20 = load i64, ptr @section_del_len, align 8, !dbg !1694, !tbaa !1338
  %21 = icmp ult i64 %19, %20, !dbg !1696
  %22 = load i64, ptr @footer_del_len, align 8
  %23 = icmp ult i64 %22, %20
  %24 = select i1 %21, i1 true, i1 %23, !dbg !1697
  br i1 %24, label %98, label %25, !dbg !1697

25:                                               ; preds = %17
  %26 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1698, !tbaa !1699
  %27 = load ptr, ptr @section_del, align 8, !dbg !1700, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %26, metadata !1701, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr %27, metadata !1706, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %20, metadata !1707, metadata !DIExpression()), !dbg !1708
  %28 = tail call i32 @bcmp(ptr %26, ptr %27, i64 %20), !dbg !1710
  %29 = icmp eq i32 %28, 0, !dbg !1711
  br i1 %29, label %30, label %98, !dbg !1712

30:                                               ; preds = %25
  %31 = load i64, ptr @header_del_len, align 8, !dbg !1713, !tbaa !1338
  %32 = icmp eq i64 %19, %31, !dbg !1715
  br i1 %32, label %33, label %37, !dbg !1716

33:                                               ; preds = %30
  %34 = load ptr, ptr @header_del, align 8, !dbg !1717, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %26, metadata !1701, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %34, metadata !1706, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %31, metadata !1707, metadata !DIExpression()), !dbg !1718
  %35 = tail call i32 @bcmp(ptr %26, ptr %34, i64 %19), !dbg !1720
  %36 = icmp eq i32 %35, 0, !dbg !1721
  br i1 %36, label %50, label %37, !dbg !1722

37:                                               ; preds = %33, %30
  %38 = load i64, ptr @body_del_len, align 8, !dbg !1723, !tbaa !1338
  %39 = icmp eq i64 %19, %38, !dbg !1725
  br i1 %39, label %40, label %44, !dbg !1726

40:                                               ; preds = %37
  %41 = load ptr, ptr @body_del, align 8, !dbg !1727, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %26, metadata !1701, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata ptr %41, metadata !1706, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %38, metadata !1707, metadata !DIExpression()), !dbg !1728
  %42 = tail call i32 @bcmp(ptr %26, ptr %41, i64 %19), !dbg !1730
  %43 = icmp eq i32 %42, 0, !dbg !1731
  br i1 %43, label %66, label %44, !dbg !1732

44:                                               ; preds = %40, %37
  %45 = icmp eq i64 %19, %22, !dbg !1733
  br i1 %45, label %46, label %98, !dbg !1735

46:                                               ; preds = %44
  %47 = load ptr, ptr @footer_del, align 8, !dbg !1736, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %26, metadata !1701, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %47, metadata !1706, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i64 %22, metadata !1707, metadata !DIExpression()), !dbg !1737
  %48 = tail call i32 @bcmp(ptr %26, ptr %47, i64 %19), !dbg !1739
  %49 = icmp eq i32 %48, 0, !dbg !1740
  br i1 %49, label %82, label %98, !dbg !1741

50:                                               ; preds = %33
  %51 = load ptr, ptr @header_type, align 8, !dbg !1742, !tbaa !1061
  store ptr %51, ptr @current_type, align 8, !dbg !1746, !tbaa !1061
  store ptr @header_regex, ptr @current_regex, align 8, !dbg !1747, !tbaa !1061
  %52 = load i1, ptr @reset_numbers, align 1, !dbg !1748
  br i1 %52, label %55, label %53, !dbg !1752

53:                                               ; preds = %50
  %54 = load i64, ptr @starting_line_number, align 8, !dbg !1753, !tbaa !1338
  store i64 %54, ptr @line_no, align 8, !dbg !1755, !tbaa !1338
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1756
  br label %55, !dbg !1757

55:                                               ; preds = %53, %50
  call void @llvm.dbg.value(metadata i32 10, metadata !1758, metadata !DIExpression()), !dbg !1764
  %56 = load ptr, ptr @stdout, align 8, !dbg !1766, !tbaa !1061
  %57 = getelementptr inbounds %struct._IO_FILE, ptr %56, i64 0, i32 5, !dbg !1766
  %58 = load ptr, ptr %57, align 8, !dbg !1766, !tbaa !1767
  %59 = getelementptr inbounds %struct._IO_FILE, ptr %56, i64 0, i32 6, !dbg !1766
  %60 = load ptr, ptr %59, align 8, !dbg !1766, !tbaa !1769
  %61 = icmp ult ptr %58, %60, !dbg !1766
  br i1 %61, label %64, label %62, !dbg !1766, !prof !1770

62:                                               ; preds = %55
  %63 = tail call i32 @__overflow(ptr noundef nonnull %56, i32 noundef 10) #40, !dbg !1766
  br label %208, !dbg !1766

64:                                               ; preds = %55
  %65 = getelementptr inbounds i8, ptr %58, i64 1, !dbg !1766
  store ptr %65, ptr %57, align 8, !dbg !1766, !tbaa !1767
  store i8 10, ptr %58, align 1, !dbg !1766, !tbaa !1150
  br label %208, !dbg !1766

66:                                               ; preds = %40
  %67 = load ptr, ptr @body_type, align 8, !dbg !1771, !tbaa !1061
  store ptr %67, ptr @current_type, align 8, !dbg !1774, !tbaa !1061
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1775, !tbaa !1061
  %68 = load i1, ptr @reset_numbers, align 1, !dbg !1776
  br i1 %68, label %71, label %69, !dbg !1778

69:                                               ; preds = %66
  %70 = load i64, ptr @starting_line_number, align 8, !dbg !1779, !tbaa !1338
  store i64 %70, ptr @line_no, align 8, !dbg !1780, !tbaa !1338
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1781
  br label %71, !dbg !1782

71:                                               ; preds = %69, %66
  call void @llvm.dbg.value(metadata i32 10, metadata !1758, metadata !DIExpression()), !dbg !1783
  %72 = load ptr, ptr @stdout, align 8, !dbg !1785, !tbaa !1061
  %73 = getelementptr inbounds %struct._IO_FILE, ptr %72, i64 0, i32 5, !dbg !1785
  %74 = load ptr, ptr %73, align 8, !dbg !1785, !tbaa !1767
  %75 = getelementptr inbounds %struct._IO_FILE, ptr %72, i64 0, i32 6, !dbg !1785
  %76 = load ptr, ptr %75, align 8, !dbg !1785, !tbaa !1769
  %77 = icmp ult ptr %74, %76, !dbg !1785
  br i1 %77, label %80, label %78, !dbg !1785, !prof !1770

78:                                               ; preds = %71
  %79 = tail call i32 @__overflow(ptr noundef nonnull %72, i32 noundef 10) #40, !dbg !1785
  br label %208, !dbg !1785

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !1785
  store ptr %81, ptr %73, align 8, !dbg !1785, !tbaa !1767
  store i8 10, ptr %74, align 1, !dbg !1785, !tbaa !1150
  br label %208, !dbg !1785

82:                                               ; preds = %46
  %83 = load ptr, ptr @footer_type, align 8, !dbg !1786, !tbaa !1061
  store ptr %83, ptr @current_type, align 8, !dbg !1789, !tbaa !1061
  store ptr @footer_regex, ptr @current_regex, align 8, !dbg !1790, !tbaa !1061
  %84 = load i1, ptr @reset_numbers, align 1, !dbg !1791
  br i1 %84, label %87, label %85, !dbg !1793

85:                                               ; preds = %82
  %86 = load i64, ptr @starting_line_number, align 8, !dbg !1794, !tbaa !1338
  store i64 %86, ptr @line_no, align 8, !dbg !1795, !tbaa !1338
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1796
  br label %87, !dbg !1797

87:                                               ; preds = %85, %82
  call void @llvm.dbg.value(metadata i32 10, metadata !1758, metadata !DIExpression()), !dbg !1798
  %88 = load ptr, ptr @stdout, align 8, !dbg !1800, !tbaa !1061
  %89 = getelementptr inbounds %struct._IO_FILE, ptr %88, i64 0, i32 5, !dbg !1800
  %90 = load ptr, ptr %89, align 8, !dbg !1800, !tbaa !1767
  %91 = getelementptr inbounds %struct._IO_FILE, ptr %88, i64 0, i32 6, !dbg !1800
  %92 = load ptr, ptr %91, align 8, !dbg !1800, !tbaa !1769
  %93 = icmp ult ptr %90, %92, !dbg !1800
  br i1 %93, label %96, label %94, !dbg !1800, !prof !1770

94:                                               ; preds = %87
  %95 = tail call i32 @__overflow(ptr noundef nonnull %88, i32 noundef 10) #40, !dbg !1800
  br label %208, !dbg !1800

96:                                               ; preds = %87
  %97 = getelementptr inbounds i8, ptr %90, i64 1, !dbg !1800
  store ptr %97, ptr %89, align 8, !dbg !1800, !tbaa !1767
  store i8 10, ptr %90, align 1, !dbg !1800, !tbaa !1150
  br label %208, !dbg !1800

98:                                               ; preds = %46, %44, %25, %17
  %99 = load ptr, ptr @current_type, align 8, !dbg !1801, !tbaa !1061
  %100 = load i8, ptr %99, align 1, !dbg !1803, !tbaa !1150
  switch i8 %100, label %203 [
    i8 97, label %101
    i8 116, label %147
    i8 110, label %169
    i8 112, label %173
  ], !dbg !1804

101:                                              ; preds = %98
  %102 = load i64, ptr @blank_join, align 8, !dbg !1805, !tbaa !1338
  %103 = icmp sgt i64 %102, 1, !dbg !1808
  br i1 %103, label %104, label %131, !dbg !1809

104:                                              ; preds = %101
  %105 = icmp sgt i64 %18, 1, !dbg !1810
  br i1 %105, label %110, label %106, !dbg !1813

106:                                              ; preds = %104
  %107 = load i64, ptr @proc_text.blank_lines, align 8, !dbg !1814, !tbaa !1338
  %108 = add nsw i64 %107, 1, !dbg !1814
  store i64 %108, ptr @proc_text.blank_lines, align 8, !dbg !1814, !tbaa !1338
  %109 = icmp eq i64 %108, %102, !dbg !1815
  br i1 %109, label %110, label %127, !dbg !1816

110:                                              ; preds = %106, %104
  %111 = load i1, ptr @line_no_overflow, align 1, !dbg !1817
  br i1 %111, label %112, label %114, !dbg !1822

112:                                              ; preds = %110
  %113 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !1823
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %113) #40, !dbg !1823
  unreachable, !dbg !1823

114:                                              ; preds = %110
  %115 = load ptr, ptr @lineno_format, align 8, !dbg !1824, !tbaa !1061
  %116 = load i32, ptr @lineno_width, align 4, !dbg !1824, !tbaa !1141
  %117 = load i64, ptr @line_no, align 8, !dbg !1824, !tbaa !1338
  %118 = load ptr, ptr @separator_str, align 8, !dbg !1824, !tbaa !1061
  %119 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %115, i32 noundef %116, i64 noundef %117, ptr noundef %118) #40, !dbg !1824
  %120 = load i64, ptr @line_no, align 8, !dbg !1825, !tbaa !1338
  %121 = load i64, ptr @page_incr, align 8, !dbg !1825, !tbaa !1338
  %122 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %120, i64 %121), !dbg !1825
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !1825
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !1825
  store i64 %124, ptr @line_no, align 8, !dbg !1825
  br i1 %123, label %125, label %126, !dbg !1827

125:                                              ; preds = %114
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1828
  br label %126, !dbg !1829

126:                                              ; preds = %125, %114
  store i64 0, ptr @proc_text.blank_lines, align 8, !dbg !1830, !tbaa !1338
  br label %203, !dbg !1831

127:                                              ; preds = %106
  %128 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1832, !tbaa !1061
  %129 = load ptr, ptr @stdout, align 8, !dbg !1832, !tbaa !1061
  %130 = tail call i32 @fputs_unlocked(ptr noundef %128, ptr noundef %129), !dbg !1832
  br label %203

131:                                              ; preds = %101
  %132 = load i1, ptr @line_no_overflow, align 1, !dbg !1833
  br i1 %132, label %133, label %135, !dbg !1835

133:                                              ; preds = %131
  %134 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !1836
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %134) #40, !dbg !1836
  unreachable, !dbg !1836

135:                                              ; preds = %131
  %136 = load ptr, ptr @lineno_format, align 8, !dbg !1837, !tbaa !1061
  %137 = load i32, ptr @lineno_width, align 4, !dbg !1837, !tbaa !1141
  %138 = load i64, ptr @line_no, align 8, !dbg !1837, !tbaa !1338
  %139 = load ptr, ptr @separator_str, align 8, !dbg !1837, !tbaa !1061
  %140 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %136, i32 noundef %137, i64 noundef %138, ptr noundef %139) #40, !dbg !1837
  %141 = load i64, ptr @line_no, align 8, !dbg !1838, !tbaa !1338
  %142 = load i64, ptr @page_incr, align 8, !dbg !1838, !tbaa !1338
  %143 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %141, i64 %142), !dbg !1838
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !1838
  %145 = extractvalue { i64, i1 } %143, 0, !dbg !1838
  store i64 %145, ptr @line_no, align 8, !dbg !1838
  br i1 %144, label %146, label %203, !dbg !1839

146:                                              ; preds = %135
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1840
  br label %203, !dbg !1841

147:                                              ; preds = %98
  %148 = icmp sgt i64 %18, 1, !dbg !1842
  br i1 %148, label %149, label %165, !dbg !1844

149:                                              ; preds = %147
  %150 = load i1, ptr @line_no_overflow, align 1, !dbg !1845
  br i1 %150, label %151, label %153, !dbg !1847

151:                                              ; preds = %149
  %152 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !1848
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %152) #40, !dbg !1848
  unreachable, !dbg !1848

153:                                              ; preds = %149
  %154 = load ptr, ptr @lineno_format, align 8, !dbg !1849, !tbaa !1061
  %155 = load i32, ptr @lineno_width, align 4, !dbg !1849, !tbaa !1141
  %156 = load i64, ptr @line_no, align 8, !dbg !1849, !tbaa !1338
  %157 = load ptr, ptr @separator_str, align 8, !dbg !1849, !tbaa !1061
  %158 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %154, i32 noundef %155, i64 noundef %156, ptr noundef %157) #40, !dbg !1849
  %159 = load i64, ptr @line_no, align 8, !dbg !1850, !tbaa !1338
  %160 = load i64, ptr @page_incr, align 8, !dbg !1850, !tbaa !1338
  %161 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %160), !dbg !1850
  %162 = extractvalue { i64, i1 } %161, 1, !dbg !1850
  %163 = extractvalue { i64, i1 } %161, 0, !dbg !1850
  store i64 %163, ptr @line_no, align 8, !dbg !1850
  br i1 %162, label %164, label %203, !dbg !1851

164:                                              ; preds = %153
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1852
  br label %203, !dbg !1853

165:                                              ; preds = %147
  %166 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1854, !tbaa !1061
  %167 = load ptr, ptr @stdout, align 8, !dbg !1854, !tbaa !1061
  %168 = tail call i32 @fputs_unlocked(ptr noundef %166, ptr noundef %167), !dbg !1854
  br label %203

169:                                              ; preds = %98
  %170 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1855, !tbaa !1061
  %171 = load ptr, ptr @stdout, align 8, !dbg !1855, !tbaa !1061
  %172 = tail call i32 @fputs_unlocked(ptr noundef %170, ptr noundef %171), !dbg !1855
  br label %203, !dbg !1856

173:                                              ; preds = %98
  %174 = load ptr, ptr @current_regex, align 8, !dbg !1857, !tbaa !1061
  %175 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1858, !tbaa !1699
  %176 = trunc i64 %18 to i32, !dbg !1859
  %177 = add i32 %176, -1, !dbg !1859
  %178 = tail call i32 @re_search(ptr noundef %174, ptr noundef %175, i32 noundef %177, i32 noundef 0, i32 noundef %177, ptr noundef null) #40, !dbg !1860
  switch i32 %178, label %187 [
    i32 -2, label %179
    i32 -1, label %183
  ], !dbg !1861

179:                                              ; preds = %173
  %180 = tail call ptr @__errno_location() #43, !dbg !1862
  %181 = load i32, ptr %180, align 4, !dbg !1862, !tbaa !1141
  %182 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #40, !dbg !1862
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %181, ptr noundef %182) #40, !dbg !1862
  unreachable, !dbg !1862

183:                                              ; preds = %173
  %184 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1864, !tbaa !1061
  %185 = load ptr, ptr @stdout, align 8, !dbg !1864, !tbaa !1061
  %186 = tail call i32 @fputs_unlocked(ptr noundef %184, ptr noundef %185), !dbg !1864
  br label %203, !dbg !1865

187:                                              ; preds = %173
  %188 = load i1, ptr @line_no_overflow, align 1, !dbg !1866
  br i1 %188, label %189, label %191, !dbg !1868

189:                                              ; preds = %187
  %190 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !1869
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %190) #40, !dbg !1869
  unreachable, !dbg !1869

191:                                              ; preds = %187
  %192 = load ptr, ptr @lineno_format, align 8, !dbg !1870, !tbaa !1061
  %193 = load i32, ptr @lineno_width, align 4, !dbg !1870, !tbaa !1141
  %194 = load i64, ptr @line_no, align 8, !dbg !1870, !tbaa !1338
  %195 = load ptr, ptr @separator_str, align 8, !dbg !1870, !tbaa !1061
  %196 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %192, i32 noundef %193, i64 noundef %194, ptr noundef %195) #40, !dbg !1870
  %197 = load i64, ptr @line_no, align 8, !dbg !1871, !tbaa !1338
  %198 = load i64, ptr @page_incr, align 8, !dbg !1871, !tbaa !1338
  %199 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %197, i64 %198), !dbg !1871
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !1871
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !1871
  store i64 %201, ptr @line_no, align 8, !dbg !1871
  br i1 %200, label %202, label %203, !dbg !1872

202:                                              ; preds = %191
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1873
  br label %203, !dbg !1874

203:                                              ; preds = %202, %191, %183, %169, %165, %164, %153, %146, %135, %127, %126, %98
  %204 = load i64, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 1), align 8, !dbg !1875, !tbaa !1690
  %205 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1875, !tbaa !1699
  %206 = load ptr, ptr @stdout, align 8, !dbg !1875, !tbaa !1061
  %207 = tail call i64 @fwrite_unlocked(ptr noundef %205, i64 noundef 1, i64 noundef %204, ptr noundef %206), !dbg !1875
  br label %208, !dbg !1875

208:                                              ; preds = %203, %96, %94, %80, %78, %64, %62
  %209 = load ptr, ptr @stdout, align 8, !dbg !1876, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %209, metadata !1878, metadata !DIExpression()), !dbg !1883
  %210 = load i32, ptr %209, align 8, !dbg !1885, !tbaa !1886
  %211 = and i32 %210, 32, !dbg !1876
  %212 = icmp eq i32 %211, 0, !dbg !1876
  br i1 %212, label %14, label %213, !dbg !1887, !llvm.loop !1888

213:                                              ; preds = %208
  %214 = tail call ptr @__errno_location() #43, !dbg !1890
  %215 = load i32, ptr %214, align 4, !dbg !1890, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %215, metadata !1893, metadata !DIExpression()), !dbg !1895
  %216 = tail call i32 @fflush_unlocked(ptr noundef nonnull %209) #40, !dbg !1896
  %217 = load ptr, ptr @stdout, align 8, !dbg !1897, !tbaa !1061
  %218 = tail call i32 @fpurge(ptr noundef %217) #40, !dbg !1898
  %219 = load ptr, ptr @stdout, align 8, !dbg !1899, !tbaa !1061
  tail call void @clearerr_unlocked(ptr noundef %219) #40, !dbg !1899
  %220 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #40, !dbg !1900
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %215, ptr noundef %220) #40, !dbg !1900
  unreachable, !dbg !1900

221:                                              ; preds = %14
  %222 = tail call ptr @__errno_location() #43, !dbg !1901
  %223 = load i32, ptr %222, align 4, !dbg !1901, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %223, metadata !1651, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata ptr %13, metadata !1878, metadata !DIExpression()), !dbg !1902
  %224 = load i32, ptr %13, align 8, !dbg !1905, !tbaa !1886
  %225 = and i32 %224, 32, !dbg !1906
  %226 = icmp eq i32 %225, 0, !dbg !1906
  %227 = select i1 %226, i32 0, i32 %223, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %227, metadata !1651, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata ptr %0, metadata !1152, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !1158, metadata !DIExpression()), !dbg !1908
  %228 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.39) #41, !dbg !1911
  %229 = icmp eq i32 %228, 0, !dbg !1912
  br i1 %229, label %230, label %231, !dbg !1913

230:                                              ; preds = %221
  tail call void @clearerr_unlocked(ptr noundef nonnull %13) #40, !dbg !1914
  br label %238, !dbg !1914

231:                                              ; preds = %221
  %232 = tail call i32 @rpl_fclose(ptr noundef nonnull %13) #40, !dbg !1915
  %233 = icmp eq i32 %232, 0, !dbg !1917
  %234 = icmp ne i32 %227, 0
  %235 = select i1 %233, i1 true, i1 %234, !dbg !1918
  br i1 %235, label %238, label %236, !dbg !1918

236:                                              ; preds = %231
  %237 = load i32, ptr %222, align 4, !dbg !1919, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %237, metadata !1651, metadata !DIExpression()), !dbg !1652
  br label %238, !dbg !1920

238:                                              ; preds = %231, %236, %230
  %239 = phi i32 [ %227, %230 ], [ %227, %231 ], [ %237, %236 ], !dbg !1652
  call void @llvm.dbg.value(metadata i32 %239, metadata !1651, metadata !DIExpression()), !dbg !1652
  %240 = icmp eq i32 %239, 0, !dbg !1921
  br i1 %240, label %244, label %241, !dbg !1923

241:                                              ; preds = %238, %9
  %242 = phi i32 [ %11, %9 ], [ %239, %238 ]
  %243 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1652
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %242, ptr noundef nonnull @.str.90, ptr noundef %243) #40, !dbg !1652
  br label %244, !dbg !1924

244:                                              ; preds = %241, %238
  %245 = phi i1 [ true, %238 ], [ false, %241 ], !dbg !1652
  ret i1 %245, !dbg !1924
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1925 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

declare !dbg !1929 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

declare !dbg !1932 i32 @re_search(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1944 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1945 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1946 ptr @re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1949 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1951, metadata !DIExpression()), !dbg !1952
  store ptr %0, ptr @file_name, align 8, !dbg !1953, !tbaa !1061
  ret void, !dbg !1954
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1955 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1959, metadata !DIExpression()), !dbg !1960
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1961, !tbaa !1962
  ret void, !dbg !1964
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1965 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1970, !tbaa !1061
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1971
  %3 = icmp eq i32 %2, 0, !dbg !1972
  br i1 %3, label %22, label %4, !dbg !1973

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1974, !tbaa !1962, !range !1975, !noundef !1070
  %6 = icmp eq i8 %5, 0, !dbg !1974
  br i1 %6, label %11, label %7, !dbg !1976

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1977
  %9 = load i32, ptr %8, align 4, !dbg !1977, !tbaa !1141
  %10 = icmp eq i32 %9, 32, !dbg !1978
  br i1 %10, label %22, label %11, !dbg !1979

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1.47, i32 noundef 5) #40, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %12, metadata !1967, metadata !DIExpression()), !dbg !1981
  %13 = load ptr, ptr @file_name, align 8, !dbg !1982, !tbaa !1061
  %14 = icmp eq ptr %13, null, !dbg !1982
  %15 = tail call ptr @__errno_location() #43, !dbg !1984
  %16 = load i32, ptr %15, align 4, !dbg !1984, !tbaa !1141
  br i1 %14, label %19, label %17, !dbg !1985

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1986
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.48, ptr noundef %18, ptr noundef %12) #40, !dbg !1986
  br label %20, !dbg !1986

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.49, ptr noundef %12) #40, !dbg !1987
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1988, !tbaa !1141
  tail call void @_exit(i32 noundef %21) #42, !dbg !1989
  unreachable, !dbg !1989

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1990, !tbaa !1061
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1992
  %25 = icmp eq i32 %24, 0, !dbg !1993
  br i1 %25, label %28, label %26, !dbg !1994

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1995, !tbaa !1141
  tail call void @_exit(i32 noundef %27) #42, !dbg !1996
  unreachable, !dbg !1996

28:                                               ; preds = %22
  ret void, !dbg !1997
}

; Function Attrs: noreturn
declare !dbg !1998 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !2000 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %1, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %2, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2007, metadata !DIExpression()), !dbg !2009
  tail call fastcc void @flush_stdout(), !dbg !2010
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2011, !tbaa !1061
  %7 = icmp eq ptr %6, null, !dbg !2011
  br i1 %7, label %9, label %8, !dbg !2013

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !2014
  br label %13, !dbg !2014

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2015, !tbaa !1061
  %11 = tail call ptr @getprogname() #41, !dbg !2015
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef %11) #40, !dbg !2015
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2017, !tbaa.struct !2018
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2017
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2017
  ret void, !dbg !2019
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2020 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2022, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 1, metadata !2024, metadata !DIExpression()), !dbg !2027
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2030
  %2 = icmp slt i32 %1, 0, !dbg !2031
  br i1 %2, label %6, label %3, !dbg !2032

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2033, !tbaa !1061
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2033
  br label %6, !dbg !2033

6:                                                ; preds = %3, %0
  ret void, !dbg !2034
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2035 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2037, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %1, metadata !2038, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %2, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2040, metadata !DIExpression()), !dbg !2042
  %7 = load ptr, ptr @stderr, align 8, !dbg !2043, !tbaa !1061
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2044, !noalias !2088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %7, metadata !2084, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr %2, metadata !2085, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2086, metadata !DIExpression()), !dbg !2094
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !2044
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2044, !noalias !2088
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2095, !tbaa !1141
  %10 = add i32 %9, 1, !dbg !2095
  store i32 %10, ptr @error_message_count, align 4, !dbg !2095, !tbaa !1141
  %11 = icmp eq i32 %1, 0, !dbg !2096
  br i1 %11, label %21, label %12, !dbg !2098

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2099, metadata !DIExpression()), !dbg !2107
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2109
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2103, metadata !DIExpression()), !dbg !2110
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2111
  call void @llvm.dbg.value(metadata ptr %13, metadata !2102, metadata !DIExpression()), !dbg !2107
  %14 = icmp eq ptr %13, null, !dbg !2112
  br i1 %14, label %15, label %17, !dbg !2114

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.51, ptr noundef nonnull @.str.5.52, i32 noundef 5) #40, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %16, metadata !2102, metadata !DIExpression()), !dbg !2107
  br label %17, !dbg !2116

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2107
  call void @llvm.dbg.value(metadata ptr %18, metadata !2102, metadata !DIExpression()), !dbg !2107
  %19 = load ptr, ptr @stderr, align 8, !dbg !2117, !tbaa !1061
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.53, ptr noundef %18) #40, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2118
  br label %21, !dbg !2119

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2120, !tbaa !1061
  call void @llvm.dbg.value(metadata i32 10, metadata !2121, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata ptr %22, metadata !2126, metadata !DIExpression()), !dbg !2127
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2129
  %24 = load ptr, ptr %23, align 8, !dbg !2129, !tbaa !1767
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2129
  %26 = load ptr, ptr %25, align 8, !dbg !2129, !tbaa !1769
  %27 = icmp ult ptr %24, %26, !dbg !2129
  br i1 %27, label %30, label %28, !dbg !2129, !prof !1770

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !2129
  br label %32, !dbg !2129

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2129
  store ptr %31, ptr %23, align 8, !dbg !2129, !tbaa !1767
  store i8 10, ptr %24, align 1, !dbg !2129, !tbaa !1150
  br label %32, !dbg !2129

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2130, !tbaa !1061
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !2130
  %35 = icmp eq i32 %0, 0, !dbg !2131
  br i1 %35, label %37, label %36, !dbg !2133

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !2134
  unreachable, !dbg !2134

37:                                               ; preds = %32
  ret void, !dbg !2135
}

declare !dbg !2136 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2139 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2142 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2146 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2150, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i32 %1, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata ptr %2, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !2155
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2153, metadata !DIExpression()), !dbg !2156
  call void @llvm.va_start(ptr nonnull %4), !dbg !2157
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2158, !tbaa.struct !2018
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2158
  call void @llvm.va_end(ptr nonnull %4), !dbg !2159
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !2160
  ret void, !dbg !2160
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !658 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !675, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1, metadata !676, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr %2, metadata !677, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i32 %3, metadata !678, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr %4, metadata !679, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.declare(metadata ptr %5, metadata !680, metadata !DIExpression()), !dbg !2162
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2163, !tbaa !1141
  %9 = icmp eq i32 %8, 0, !dbg !2163
  br i1 %9, label %24, label %10, !dbg !2165

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2166, !tbaa !1141
  %12 = icmp eq i32 %11, %3, !dbg !2169
  br i1 %12, label %13, label %23, !dbg !2170

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2171, !tbaa !1061
  %15 = icmp eq ptr %14, %2, !dbg !2172
  br i1 %15, label %37, label %16, !dbg !2173

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2174
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2175
  br i1 %19, label %20, label %23, !dbg !2175

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2176
  %22 = icmp eq i32 %21, 0, !dbg !2177
  br i1 %22, label %37, label %23, !dbg !2178

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2179, !tbaa !1061
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2180, !tbaa !1141
  br label %24, !dbg !2181

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2182
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2183, !tbaa !1061
  %26 = icmp eq ptr %25, null, !dbg !2183
  br i1 %26, label %28, label %27, !dbg !2185

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !2186
  br label %32, !dbg !2186

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2187, !tbaa !1061
  %30 = tail call ptr @getprogname() #41, !dbg !2187
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.56, ptr noundef %30) #40, !dbg !2187
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2189, !tbaa !1061
  %34 = icmp eq ptr %2, null, !dbg !2189
  %35 = select i1 %34, ptr @.str.3.57, ptr @.str.2.58, !dbg !2189
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !2189
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2190, !tbaa.struct !2018
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2190
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2190
  br label %37, !dbg !2191

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2191
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2192 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2196, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %1, metadata !2197, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata ptr %2, metadata !2198, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %3, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata ptr %4, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.va_start(ptr nonnull %6), !dbg !2205
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2206, !tbaa.struct !2018
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2206
  call void @llvm.va_end(ptr nonnull %6), !dbg !2207
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2208
  ret void, !dbg !2208
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2215, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i64 %1, metadata !2216, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i64 %2, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 %3, metadata !2218, metadata !DIExpression()), !dbg !2219
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #40, !dbg !2220
  ret void, !dbg !2221
}

; Function Attrs: nounwind
declare !dbg !2222 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2225 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2265
  %3 = icmp eq ptr %0, null, !dbg !2266
  br i1 %3, label %7, label %4, !dbg !2268

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %5, metadata !2215, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 0, metadata !2216, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 0, metadata !2217, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %1, metadata !2218, metadata !DIExpression()), !dbg !2270
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #40, !dbg !2272
  br label %7, !dbg !2273

7:                                                ; preds = %4, %2
  ret void, !dbg !2274
}

; Function Attrs: nofree nounwind
declare !dbg !2275 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2278 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2316, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 0, metadata !2317, metadata !DIExpression()), !dbg !2320
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %2, metadata !2318, metadata !DIExpression()), !dbg !2320
  %3 = icmp slt i32 %2, 0, !dbg !2322
  br i1 %3, label %4, label %6, !dbg !2324

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2325
  br label %24, !dbg !2326

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !2327
  %8 = icmp eq i32 %7, 0, !dbg !2327
  br i1 %8, label %13, label %9, !dbg !2329

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2330
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !2331
  %12 = icmp eq i64 %11, -1, !dbg !2332
  br i1 %12, label %16, label %13, !dbg !2333

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !2334
  %15 = icmp eq i32 %14, 0, !dbg !2334
  br i1 %15, label %16, label %18, !dbg !2335

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 0, metadata !2319, metadata !DIExpression()), !dbg !2320
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2336
  call void @llvm.dbg.value(metadata i32 %17, metadata !2319, metadata !DIExpression()), !dbg !2320
  br label %24, !dbg !2337

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !2338
  %20 = load i32, ptr %19, align 4, !dbg !2338, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %20, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 0, metadata !2319, metadata !DIExpression()), !dbg !2320
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2336
  call void @llvm.dbg.value(metadata i32 %21, metadata !2319, metadata !DIExpression()), !dbg !2320
  %22 = icmp eq i32 %20, 0, !dbg !2339
  br i1 %22, label %24, label %23, !dbg !2337

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2341, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 -1, metadata !2319, metadata !DIExpression()), !dbg !2320
  br label %24, !dbg !2343

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2320
  ret i32 %25, !dbg !2344
}

; Function Attrs: nofree nounwind
declare !dbg !2345 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2346 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2348 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2351 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2389, metadata !DIExpression()), !dbg !2390
  %2 = icmp eq ptr %0, null, !dbg !2391
  br i1 %2, label %6, label %3, !dbg !2393

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !2394
  %5 = icmp eq i32 %4, 0, !dbg !2394
  br i1 %5, label %6, label %8, !dbg !2395

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2396
  br label %16, !dbg !2397

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2403
  %9 = load i32, ptr %0, align 8, !dbg !2405, !tbaa !1886
  %10 = and i32 %9, 256, !dbg !2407
  %11 = icmp eq i32 %10, 0, !dbg !2407
  br i1 %11, label %14, label %12, !dbg !2408

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !2409
  br label %14, !dbg !2409

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2410
  br label %16, !dbg !2411

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2390
  ret i32 %17, !dbg !2412
}

; Function Attrs: nofree nounwind
declare !dbg !2413 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2414 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2452, metadata !DIExpression()), !dbg !2453
  tail call void @__fpurge(ptr noundef nonnull %0) #40, !dbg !2454
  ret i32 0, !dbg !2455
}

; Function Attrs: nounwind
declare !dbg !2456 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2459 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2497, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %1, metadata !2498, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %2, metadata !2499, metadata !DIExpression()), !dbg !2503
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2504
  %5 = load ptr, ptr %4, align 8, !dbg !2504, !tbaa !2505
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2506
  %7 = load ptr, ptr %6, align 8, !dbg !2506, !tbaa !2507
  %8 = icmp eq ptr %5, %7, !dbg !2508
  br i1 %8, label %9, label %27, !dbg !2509

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2510
  %11 = load ptr, ptr %10, align 8, !dbg !2510, !tbaa !1767
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2511
  %13 = load ptr, ptr %12, align 8, !dbg !2511, !tbaa !2512
  %14 = icmp eq ptr %11, %13, !dbg !2513
  br i1 %14, label %15, label %27, !dbg !2514

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2515
  %17 = load ptr, ptr %16, align 8, !dbg !2515, !tbaa !2516
  %18 = icmp eq ptr %17, null, !dbg !2517
  br i1 %18, label %19, label %27, !dbg !2518

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2519
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %21, metadata !2500, metadata !DIExpression()), !dbg !2521
  %22 = icmp eq i64 %21, -1, !dbg !2522
  br i1 %22, label %29, label %23, !dbg !2524

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2525, !tbaa !1886
  %25 = and i32 %24, -17, !dbg !2525
  store i32 %25, ptr %0, align 8, !dbg !2525, !tbaa !1886
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2526
  store i64 %21, ptr %26, align 8, !dbg !2527, !tbaa !2528
  br label %29, !dbg !2529

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2530
  br label %29, !dbg !2531

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2503
  ret i32 %30, !dbg !2532
}

; Function Attrs: nofree nounwind
declare !dbg !2533 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2536 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2539, !tbaa !1061
  ret ptr %1, !dbg !2540
}

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @initbuffer(ptr noundef %0) local_unnamed_addr #21 !dbg !2541 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 0, metadata !2556, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 24, metadata !2557, metadata !DIExpression()), !dbg !2558
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef 24, i1 noundef false) #40, !dbg !2560
  ret void, !dbg !2561
}

; Function Attrs: nounwind uwtable
define dso_local ptr @readlinebuffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2562 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %1, metadata !2601, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %1, metadata !2608, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8 10, metadata !2609, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %1, metadata !2620, metadata !DIExpression()), !dbg !2625
  %3 = load i32, ptr %1, align 8, !dbg !2628, !tbaa !1886
  %4 = and i32 %3, 16, !dbg !2629
  %5 = icmp eq i32 %4, 0, !dbg !2629
  br i1 %5, label %6, label %60, !dbg !2630

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2631
  %8 = load ptr, ptr %7, align 8, !dbg !2631, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %8, metadata !2610, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %8, metadata !2611, metadata !DIExpression()), !dbg !2618
  %9 = load i64, ptr %0, align 8, !dbg !2632, !tbaa !2633
  %10 = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !2634
  call void @llvm.dbg.value(metadata ptr %10, metadata !2612, metadata !DIExpression()), !dbg !2618
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  br label %13, !dbg !2635

13:                                               ; preds = %46, %6
  %14 = phi ptr [ %8, %6 ], [ %47, %46 ], !dbg !2618
  %15 = phi ptr [ %8, %6 ], [ %51, %46 ], !dbg !2618
  %16 = phi ptr [ %10, %6 ], [ %49, %46 ], !dbg !2618
  call void @llvm.dbg.value(metadata ptr %16, metadata !2612, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %15, metadata !2611, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %14, metadata !2610, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2639
  %17 = load ptr, ptr %11, align 8, !dbg !2641, !tbaa !2507
  %18 = load ptr, ptr %12, align 8, !dbg !2641, !tbaa !2505
  %19 = icmp ult ptr %17, %18, !dbg !2641
  br i1 %19, label %20, label %24, !dbg !2641, !prof !1770

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !2641
  store ptr %21, ptr %11, align 8, !dbg !2641, !tbaa !2507
  %22 = load i8, ptr %17, align 1, !dbg !2641, !tbaa !1150
  %23 = zext i8 %22 to i32, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %23, metadata !2613, metadata !DIExpression()), !dbg !2618
  br label %37, !dbg !2642

24:                                               ; preds = %13
  %25 = tail call i32 @__uflow(ptr noundef nonnull %1) #40, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %25, metadata !2613, metadata !DIExpression()), !dbg !2618
  %26 = icmp eq i32 %25, -1, !dbg !2643
  br i1 %26, label %27, label %37, !dbg !2642

27:                                               ; preds = %24
  %28 = icmp eq ptr %15, %14, !dbg !2645
  br i1 %28, label %60, label %29, !dbg !2648

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %1, metadata !2649, metadata !DIExpression()), !dbg !2652
  %30 = load i32, ptr %1, align 8, !dbg !2654, !tbaa !1886
  %31 = and i32 %30, 32, !dbg !2655
  %32 = icmp eq i32 %31, 0, !dbg !2655
  br i1 %32, label %33, label %60, !dbg !2656

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !2657
  %35 = load i8, ptr %34, align 1, !dbg !2657, !tbaa !1150
  %36 = icmp eq i8 %35, 10, !dbg !2659
  br i1 %36, label %53, label %37, !dbg !2660

37:                                               ; preds = %33, %24, %20
  %38 = phi i32 [ %25, %24 ], [ %23, %20 ], [ 10, %33 ], !dbg !2661
  call void @llvm.dbg.value(metadata i32 %38, metadata !2613, metadata !DIExpression()), !dbg !2618
  %39 = icmp eq ptr %15, %16, !dbg !2662
  br i1 %39, label %40, label %46, !dbg !2663

40:                                               ; preds = %37
  %41 = load i64, ptr %0, align 8, !dbg !2664, !tbaa !2633
  call void @llvm.dbg.value(metadata i64 %41, metadata !2614, metadata !DIExpression()), !dbg !2665
  %42 = tail call nonnull ptr @xpalloc(ptr noundef %14, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #40, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %42, metadata !2610, metadata !DIExpression()), !dbg !2618
  %43 = getelementptr inbounds i8, ptr %42, i64 %41, !dbg !2667
  call void @llvm.dbg.value(metadata ptr %43, metadata !2611, metadata !DIExpression()), !dbg !2618
  store ptr %42, ptr %7, align 8, !dbg !2668, !tbaa !1699
  %44 = load i64, ptr %0, align 8, !dbg !2669, !tbaa !2633
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2670
  call void @llvm.dbg.value(metadata ptr %45, metadata !2612, metadata !DIExpression()), !dbg !2618
  br label %46, !dbg !2671

46:                                               ; preds = %40, %37
  %47 = phi ptr [ %42, %40 ], [ %14, %37 ], !dbg !2618
  %48 = phi ptr [ %43, %40 ], [ %15, %37 ], !dbg !2618
  %49 = phi ptr [ %45, %40 ], [ %16, %37 ], !dbg !2618
  call void @llvm.dbg.value(metadata ptr %49, metadata !2612, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %48, metadata !2611, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %47, metadata !2610, metadata !DIExpression()), !dbg !2618
  %50 = trunc i32 %38 to i8, !dbg !2672
  %51 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !2673
  call void @llvm.dbg.value(metadata ptr %51, metadata !2611, metadata !DIExpression()), !dbg !2618
  store i8 %50, ptr %48, align 1, !dbg !2674, !tbaa !1150
  %52 = icmp eq i32 %38, 10, !dbg !2675
  br i1 %52, label %53, label %13, !dbg !2676, !llvm.loop !2677

53:                                               ; preds = %46, %33
  %54 = phi ptr [ %14, %33 ], [ %47, %46 ], !dbg !2618
  %55 = phi ptr [ %15, %33 ], [ %51, %46 ], !dbg !2618
  call void @llvm.dbg.value(metadata ptr %55, metadata !2611, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %54, metadata !2610, metadata !DIExpression()), !dbg !2618
  %56 = ptrtoint ptr %55 to i64, !dbg !2679
  %57 = ptrtoint ptr %54 to i64, !dbg !2679
  %58 = sub i64 %56, %57, !dbg !2679
  %59 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2680
  store i64 %58, ptr %59, align 8, !dbg !2681, !tbaa !1690
  br label %60, !dbg !2682

60:                                               ; preds = %27, %29, %2, %53
  %61 = phi ptr [ null, %2 ], [ %0, %53 ], [ null, %29 ], [ null, %27 ], !dbg !2618
  ret ptr %61, !dbg !2683
}

declare !dbg !2684 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @readlinebuffer_delim(ptr noundef %0, ptr noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2604 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %1, metadata !2608, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 %2, metadata !2609, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %1, metadata !2620, metadata !DIExpression()), !dbg !2686
  %4 = load i32, ptr %1, align 8, !dbg !2688, !tbaa !1886
  %5 = and i32 %4, 16, !dbg !2689
  %6 = icmp eq i32 %5, 0, !dbg !2689
  br i1 %6, label %7, label %62, !dbg !2690

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2691
  %9 = load ptr, ptr %8, align 8, !dbg !2691, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %9, metadata !2610, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %9, metadata !2611, metadata !DIExpression()), !dbg !2685
  %10 = load i64, ptr %0, align 8, !dbg !2692, !tbaa !2633
  %11 = getelementptr inbounds i8, ptr %9, i64 %10, !dbg !2693
  call void @llvm.dbg.value(metadata ptr %11, metadata !2612, metadata !DIExpression()), !dbg !2685
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %14 = zext i8 %2 to i32
  br label %15, !dbg !2694

15:                                               ; preds = %48, %7
  %16 = phi ptr [ %9, %7 ], [ %49, %48 ], !dbg !2685
  %17 = phi ptr [ %9, %7 ], [ %53, %48 ], !dbg !2685
  %18 = phi ptr [ %11, %7 ], [ %51, %48 ], !dbg !2685
  call void @llvm.dbg.value(metadata ptr %18, metadata !2612, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %17, metadata !2611, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %16, metadata !2610, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2695
  %19 = load ptr, ptr %12, align 8, !dbg !2697, !tbaa !2507
  %20 = load ptr, ptr %13, align 8, !dbg !2697, !tbaa !2505
  %21 = icmp ult ptr %19, %20, !dbg !2697
  br i1 %21, label %22, label %26, !dbg !2697, !prof !1770

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !2697
  store ptr %23, ptr %12, align 8, !dbg !2697, !tbaa !2507
  %24 = load i8, ptr %19, align 1, !dbg !2697, !tbaa !1150
  %25 = zext i8 %24 to i32, !dbg !2697
  call void @llvm.dbg.value(metadata i32 %25, metadata !2613, metadata !DIExpression()), !dbg !2685
  br label %39, !dbg !2698

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(ptr noundef nonnull %1) #40, !dbg !2697
  call void @llvm.dbg.value(metadata i32 %27, metadata !2613, metadata !DIExpression()), !dbg !2685
  %28 = icmp eq i32 %27, -1, !dbg !2699
  br i1 %28, label %29, label %39, !dbg !2698

29:                                               ; preds = %26
  %30 = icmp eq ptr %17, %16, !dbg !2700
  br i1 %30, label %62, label %31, !dbg !2701

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata ptr %1, metadata !2649, metadata !DIExpression()), !dbg !2702
  %32 = load i32, ptr %1, align 8, !dbg !2704, !tbaa !1886
  %33 = and i32 %32, 32, !dbg !2705
  %34 = icmp eq i32 %33, 0, !dbg !2705
  br i1 %34, label %35, label %62, !dbg !2706

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !2707
  %37 = load i8, ptr %36, align 1, !dbg !2707, !tbaa !1150
  %38 = icmp eq i8 %37, %2, !dbg !2708
  br i1 %38, label %55, label %39, !dbg !2709

39:                                               ; preds = %35, %22, %26
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ %14, %35 ], !dbg !2710
  call void @llvm.dbg.value(metadata i32 %40, metadata !2613, metadata !DIExpression()), !dbg !2685
  %41 = icmp eq ptr %17, %18, !dbg !2711
  br i1 %41, label %42, label %48, !dbg !2712

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8, !dbg !2713, !tbaa !2633
  call void @llvm.dbg.value(metadata i64 %43, metadata !2614, metadata !DIExpression()), !dbg !2714
  %44 = tail call nonnull ptr @xpalloc(ptr noundef %16, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #40, !dbg !2715
  call void @llvm.dbg.value(metadata ptr %44, metadata !2610, metadata !DIExpression()), !dbg !2685
  %45 = getelementptr inbounds i8, ptr %44, i64 %43, !dbg !2716
  call void @llvm.dbg.value(metadata ptr %45, metadata !2611, metadata !DIExpression()), !dbg !2685
  store ptr %44, ptr %8, align 8, !dbg !2717, !tbaa !1699
  %46 = load i64, ptr %0, align 8, !dbg !2718, !tbaa !2633
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !2719
  call void @llvm.dbg.value(metadata ptr %47, metadata !2612, metadata !DIExpression()), !dbg !2685
  br label %48, !dbg !2720

48:                                               ; preds = %42, %39
  %49 = phi ptr [ %44, %42 ], [ %16, %39 ], !dbg !2685
  %50 = phi ptr [ %45, %42 ], [ %17, %39 ], !dbg !2685
  %51 = phi ptr [ %47, %42 ], [ %18, %39 ], !dbg !2685
  call void @llvm.dbg.value(metadata ptr %51, metadata !2612, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %50, metadata !2611, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %49, metadata !2610, metadata !DIExpression()), !dbg !2685
  %52 = trunc i32 %40 to i8, !dbg !2721
  %53 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2722
  call void @llvm.dbg.value(metadata ptr %53, metadata !2611, metadata !DIExpression()), !dbg !2685
  store i8 %52, ptr %50, align 1, !dbg !2723, !tbaa !1150
  %54 = icmp eq i32 %40, %14, !dbg !2724
  br i1 %54, label %55, label %15, !dbg !2725, !llvm.loop !2726

55:                                               ; preds = %35, %48
  %56 = phi ptr [ %16, %35 ], [ %49, %48 ], !dbg !2685
  %57 = phi ptr [ %17, %35 ], [ %53, %48 ], !dbg !2685
  call void @llvm.dbg.value(metadata ptr %57, metadata !2611, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %56, metadata !2610, metadata !DIExpression()), !dbg !2685
  %58 = ptrtoint ptr %57 to i64, !dbg !2728
  %59 = ptrtoint ptr %56 to i64, !dbg !2728
  %60 = sub i64 %58, %59, !dbg !2728
  %61 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2729
  store i64 %60, ptr %61, align 8, !dbg !2730, !tbaa !1690
  br label %62, !dbg !2731

62:                                               ; preds = %31, %29, %55, %3
  %63 = phi ptr [ null, %3 ], [ %0, %55 ], [ null, %29 ], [ null, %31 ], !dbg !2685
  ret ptr %63, !dbg !2732
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @freebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !dbg !2733 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2735, metadata !DIExpression()), !dbg !2736
  %2 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2737
  %3 = load ptr, ptr %2, align 8, !dbg !2737, !tbaa !1699
  tail call void @free(ptr noundef %3) #40, !dbg !2738
  ret void, !dbg !2739
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2740 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2743 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2745, metadata !DIExpression()), !dbg !2748
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %2, metadata !2746, metadata !DIExpression()), !dbg !2748
  %3 = icmp eq ptr %2, null, !dbg !2750
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2750
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2750
  call void @llvm.dbg.value(metadata ptr %5, metadata !2747, metadata !DIExpression()), !dbg !2748
  %6 = ptrtoint ptr %5 to i64, !dbg !2751
  %7 = ptrtoint ptr %0 to i64, !dbg !2751
  %8 = sub i64 %6, %7, !dbg !2751
  %9 = icmp sgt i64 %8, 6, !dbg !2753
  br i1 %9, label %10, label %19, !dbg !2754

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2755
  call void @llvm.dbg.value(metadata ptr %11, metadata !2756, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 7, metadata !2760, metadata !DIExpression()), !dbg !2761
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.98, i64 7), !dbg !2763
  %13 = icmp eq i32 %12, 0, !dbg !2764
  br i1 %13, label %14, label %19, !dbg !2765

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2745, metadata !DIExpression()), !dbg !2748
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.99, i64 noundef 3) #41, !dbg !2766
  %16 = icmp eq i32 %15, 0, !dbg !2769
  %17 = select i1 %16, i64 3, i64 0, !dbg !2770
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2770
  br label %19, !dbg !2770

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2748
  call void @llvm.dbg.value(metadata ptr %21, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %20, metadata !2745, metadata !DIExpression()), !dbg !2748
  store ptr %20, ptr @program_name, align 8, !dbg !2771, !tbaa !1061
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2772, !tbaa !1061
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2773, !tbaa !1061
  ret void, !dbg !2774
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2775 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !712 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !719, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %1, metadata !720, metadata !DIExpression()), !dbg !2776
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2777
  call void @llvm.dbg.value(metadata ptr %5, metadata !721, metadata !DIExpression()), !dbg !2776
  %6 = icmp eq ptr %5, %0, !dbg !2778
  br i1 %6, label %7, label %14, !dbg !2780

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2781
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2782
  call void @llvm.dbg.declare(metadata ptr %4, metadata !727, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %4, metadata !2784, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %4, metadata !2793, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 8, metadata !2797, metadata !DIExpression()), !dbg !2798
  store i64 0, ptr %4, align 8, !dbg !2800
  call void @llvm.dbg.value(metadata ptr %3, metadata !722, metadata !DIExpression(DW_OP_deref)), !dbg !2776
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2801
  %9 = icmp eq i64 %8, 2, !dbg !2803
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !722, metadata !DIExpression()), !dbg !2776
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2804
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2776
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2805
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2805
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2776
  ret ptr %15, !dbg !2805
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2806 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2811, metadata !DIExpression()), !dbg !2814
  %2 = tail call ptr @__errno_location() #43, !dbg !2815
  %3 = load i32, ptr %2, align 4, !dbg !2815, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %3, metadata !2812, metadata !DIExpression()), !dbg !2814
  %4 = icmp eq ptr %0, null, !dbg !2816
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2816
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #47, !dbg !2817
  call void @llvm.dbg.value(metadata ptr %6, metadata !2813, metadata !DIExpression()), !dbg !2814
  store i32 %3, ptr %2, align 4, !dbg !2818, !tbaa !1141
  ret ptr %6, !dbg !2819
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2820 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2826, metadata !DIExpression()), !dbg !2827
  %2 = icmp eq ptr %0, null, !dbg !2828
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2828
  %4 = load i32, ptr %3, align 8, !dbg !2829, !tbaa !2830
  ret i32 %4, !dbg !2832
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2833 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2837, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %1, metadata !2838, metadata !DIExpression()), !dbg !2839
  %3 = icmp eq ptr %0, null, !dbg !2840
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2840
  store i32 %1, ptr %4, align 8, !dbg !2841, !tbaa !2830
  ret void, !dbg !2842
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2843 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2847, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %1, metadata !2848, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %2, metadata !2849, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %1, metadata !2850, metadata !DIExpression()), !dbg !2855
  %4 = icmp eq ptr %0, null, !dbg !2856
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2856
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2857
  %7 = lshr i8 %1, 5, !dbg !2858
  %8 = zext i8 %7 to i64, !dbg !2858
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2859
  call void @llvm.dbg.value(metadata ptr %9, metadata !2851, metadata !DIExpression()), !dbg !2855
  %10 = and i8 %1, 31, !dbg !2860
  %11 = zext i8 %10 to i32, !dbg !2860
  call void @llvm.dbg.value(metadata i32 %11, metadata !2853, metadata !DIExpression()), !dbg !2855
  %12 = load i32, ptr %9, align 4, !dbg !2861, !tbaa !1141
  %13 = lshr i32 %12, %11, !dbg !2862
  %14 = and i32 %13, 1, !dbg !2863
  call void @llvm.dbg.value(metadata i32 %14, metadata !2854, metadata !DIExpression()), !dbg !2855
  %15 = xor i32 %13, %2, !dbg !2864
  %16 = and i32 %15, 1, !dbg !2864
  %17 = shl nuw i32 %16, %11, !dbg !2865
  %18 = xor i32 %17, %12, !dbg !2866
  store i32 %18, ptr %9, align 4, !dbg !2866, !tbaa !1141
  ret i32 %14, !dbg !2867
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2868 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2872, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32 %1, metadata !2873, metadata !DIExpression()), !dbg !2875
  %3 = icmp eq ptr %0, null, !dbg !2876
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2878
  call void @llvm.dbg.value(metadata ptr %4, metadata !2872, metadata !DIExpression()), !dbg !2875
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2879
  %6 = load i32, ptr %5, align 4, !dbg !2879, !tbaa !2880
  call void @llvm.dbg.value(metadata i32 %6, metadata !2874, metadata !DIExpression()), !dbg !2875
  store i32 %1, ptr %5, align 4, !dbg !2881, !tbaa !2880
  ret i32 %6, !dbg !2882
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2883 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %1, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %2, metadata !2889, metadata !DIExpression()), !dbg !2890
  %4 = icmp eq ptr %0, null, !dbg !2891
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2893
  call void @llvm.dbg.value(metadata ptr %5, metadata !2887, metadata !DIExpression()), !dbg !2890
  store i32 10, ptr %5, align 8, !dbg !2894, !tbaa !2830
  %6 = icmp ne ptr %1, null, !dbg !2895
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2897
  br i1 %8, label %10, label %9, !dbg !2897

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2898
  unreachable, !dbg !2898

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2899
  store ptr %1, ptr %11, align 8, !dbg !2900, !tbaa !2901
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2902
  store ptr %2, ptr %12, align 8, !dbg !2903, !tbaa !2904
  ret void, !dbg !2905
}

; Function Attrs: noreturn nounwind
declare !dbg !2906 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2907 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2911, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 %1, metadata !2912, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %2, metadata !2913, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 %3, metadata !2914, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %4, metadata !2915, metadata !DIExpression()), !dbg !2919
  %6 = icmp eq ptr %4, null, !dbg !2920
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2920
  call void @llvm.dbg.value(metadata ptr %7, metadata !2916, metadata !DIExpression()), !dbg !2919
  %8 = tail call ptr @__errno_location() #43, !dbg !2921
  %9 = load i32, ptr %8, align 4, !dbg !2921, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %9, metadata !2917, metadata !DIExpression()), !dbg !2919
  %10 = load i32, ptr %7, align 8, !dbg !2922, !tbaa !2830
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2923
  %12 = load i32, ptr %11, align 4, !dbg !2923, !tbaa !2880
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2924
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2925
  %15 = load ptr, ptr %14, align 8, !dbg !2925, !tbaa !2901
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2926
  %17 = load ptr, ptr %16, align 8, !dbg !2926, !tbaa !2904
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %18, metadata !2918, metadata !DIExpression()), !dbg !2919
  store i32 %9, ptr %8, align 4, !dbg !2928, !tbaa !1141
  ret i64 %18, !dbg !2929
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2930 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2936, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %1, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %2, metadata !2938, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %3, metadata !2939, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %4, metadata !2940, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %5, metadata !2941, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %6, metadata !2942, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %7, metadata !2943, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %8, metadata !2944, metadata !DIExpression()), !dbg !2998
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2999
  %17 = icmp eq i64 %16, 1, !dbg !3000
  call void @llvm.dbg.value(metadata i1 %17, metadata !2945, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2998
  call void @llvm.dbg.value(metadata i64 0, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 0, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr null, metadata !2948, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 0, metadata !2949, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 0, metadata !2950, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %5, metadata !2951, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2998
  call void @llvm.dbg.value(metadata i8 0, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 1, metadata !2953, metadata !DIExpression()), !dbg !2998
  %18 = and i32 %5, 2, !dbg !3001
  %19 = icmp ne i32 %18, 0, !dbg !3001
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3001

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3002
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3003
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3004
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2953, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2951, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2950, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %34, metadata !2949, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %33, metadata !2948, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %32, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 0, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %31, metadata !2939, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %30, metadata !2944, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %29, metadata !2943, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %28, metadata !2940, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.label(metadata !2991), !dbg !3005
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !2998
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
  ], !dbg !3006

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2951, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 5, metadata !2940, metadata !DIExpression()), !dbg !2998
  br label %102, !dbg !3007

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2951, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 5, metadata !2940, metadata !DIExpression()), !dbg !2998
  br i1 %36, label %102, label %42, !dbg !3007

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3008
  br i1 %43, label %102, label %44, !dbg !3012

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3008, !tbaa !1150
  br label %102, !dbg !3008

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.112, metadata !805, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %28, metadata !806, metadata !DIExpression()), !dbg !3013
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.113, ptr noundef nonnull @.str.11.112, i32 noundef 5) #40, !dbg !3017
  call void @llvm.dbg.value(metadata ptr %46, metadata !807, metadata !DIExpression()), !dbg !3013
  %47 = icmp eq ptr %46, @.str.11.112, !dbg !3018
  br i1 %47, label %48, label %57, !dbg !3020

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !3021
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %13, metadata !809, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %13, metadata !3024, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %13, metadata !3032, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i32 0, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 8, metadata !3036, metadata !DIExpression()), !dbg !3037
  store i64 0, ptr %13, align 8, !dbg !3039
  call void @llvm.dbg.value(metadata ptr %12, metadata !808, metadata !DIExpression(DW_OP_deref)), !dbg !3013
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !3040
  %50 = icmp eq i64 %49, 3, !dbg !3042
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !808, metadata !DIExpression()), !dbg !3013
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3043
  %54 = icmp eq i32 %28, 9, !dbg !3043
  %55 = select i1 %54, ptr @.str.10.114, ptr @.str.12.115, !dbg !3043
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3043
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !3044
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !3044
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3013
  call void @llvm.dbg.value(metadata ptr %58, metadata !2943, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr @.str.12.115, metadata !805, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %28, metadata !806, metadata !DIExpression()), !dbg !3045
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.113, ptr noundef nonnull @.str.12.115, i32 noundef 5) #40, !dbg !3047
  call void @llvm.dbg.value(metadata ptr %59, metadata !807, metadata !DIExpression()), !dbg !3045
  %60 = icmp eq ptr %59, @.str.12.115, !dbg !3048
  br i1 %60, label %61, label %70, !dbg !3049

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !3050
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !3051
  call void @llvm.dbg.declare(metadata ptr %11, metadata !809, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %11, metadata !3024, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %11, metadata !3032, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3035, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 8, metadata !3036, metadata !DIExpression()), !dbg !3055
  store i64 0, ptr %11, align 8, !dbg !3057
  call void @llvm.dbg.value(metadata ptr %10, metadata !808, metadata !DIExpression(DW_OP_deref)), !dbg !3045
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !3058
  %63 = icmp eq i64 %62, 3, !dbg !3059
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !808, metadata !DIExpression()), !dbg !3045
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3060
  %67 = icmp eq i32 %28, 9, !dbg !3060
  %68 = select i1 %67, ptr @.str.10.114, ptr @.str.12.115, !dbg !3060
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3060
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !3061
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2944, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %71, metadata !2943, metadata !DIExpression()), !dbg !2998
  br i1 %36, label %88, label %73, !dbg !3062

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2955, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 0, metadata !2946, metadata !DIExpression()), !dbg !2998
  %74 = load i8, ptr %71, align 1, !dbg !3064, !tbaa !1150
  %75 = icmp eq i8 %74, 0, !dbg !3066
  br i1 %75, label %88, label %76, !dbg !3066

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2955, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %79, metadata !2946, metadata !DIExpression()), !dbg !2998
  %80 = icmp ult i64 %79, %39, !dbg !3067
  br i1 %80, label %81, label %83, !dbg !3070

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3067
  store i8 %77, ptr %82, align 1, !dbg !3067, !tbaa !1150
  br label %83, !dbg !3067

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %84, metadata !2946, metadata !DIExpression()), !dbg !2998
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3071
  call void @llvm.dbg.value(metadata ptr %85, metadata !2955, metadata !DIExpression()), !dbg !3063
  %86 = load i8, ptr %85, align 1, !dbg !3064, !tbaa !1150
  %87 = icmp eq i8 %86, 0, !dbg !3066
  br i1 %87, label %88, label %76, !dbg !3066, !llvm.loop !3072

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3074
  call void @llvm.dbg.value(metadata i64 %89, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 1, metadata !2950, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %72, metadata !2948, metadata !DIExpression()), !dbg !2998
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %90, metadata !2949, metadata !DIExpression()), !dbg !2998
  br label %102, !dbg !3076

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2950, metadata !DIExpression()), !dbg !2998
  br label %93, !dbg !3077

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2951, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2950, metadata !DIExpression()), !dbg !2998
  br i1 %36, label %102, label %96, !dbg !3078

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2951, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2950, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 2, metadata !2940, metadata !DIExpression()), !dbg !2998
  br label %102, !dbg !3079

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2951, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2950, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 2, metadata !2940, metadata !DIExpression()), !dbg !2998
  br i1 %36, label %102, label %96, !dbg !3079

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3080
  br i1 %98, label %102, label %99, !dbg !3084

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3080, !tbaa !1150
  br label %102, !dbg !3080

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2951, metadata !DIExpression()), !dbg !2998
  br label %102, !dbg !3085

101:                                              ; preds = %27
  call void @abort() #42, !dbg !3086
  unreachable, !dbg !3086

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3074
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.114, %42 ], [ @.str.10.114, %44 ], [ @.str.10.114, %41 ], [ %33, %27 ], [ @.str.12.115, %96 ], [ @.str.12.115, %99 ], [ @.str.12.115, %95 ], [ @.str.10.114, %40 ], [ @.str.12.115, %93 ], [ @.str.12.115, %92 ], !dbg !2998
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2998
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2951, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2950, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %108, metadata !2949, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %107, metadata !2948, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %106, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %105, metadata !2944, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %104, metadata !2943, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %103, metadata !2940, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 0, metadata !2960, metadata !DIExpression()), !dbg !3087
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
  br label %122, !dbg !3088

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3074
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3002
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3089
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %129, metadata !2960, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2953, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %125, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %124, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %123, metadata !2939, metadata !DIExpression()), !dbg !2998
  %131 = icmp eq i64 %123, -1, !dbg !3090
  br i1 %131, label %132, label %136, !dbg !3091

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3092
  %134 = load i8, ptr %133, align 1, !dbg !3092, !tbaa !1150
  %135 = icmp eq i8 %134, 0, !dbg !3093
  br i1 %135, label %579, label %138, !dbg !3094

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3095
  br i1 %137, label %579, label %138, !dbg !3094

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2962, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 0, metadata !2966, metadata !DIExpression()), !dbg !3096
  br i1 %114, label %139, label %152, !dbg !3097

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3099
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3100
  br i1 %141, label %142, label %144, !dbg !3100

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %143, metadata !2939, metadata !DIExpression()), !dbg !2998
  br label %144, !dbg !3102

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3102
  call void @llvm.dbg.value(metadata i64 %145, metadata !2939, metadata !DIExpression()), !dbg !2998
  %146 = icmp ugt i64 %140, %145, !dbg !3103
  br i1 %146, label %152, label %147, !dbg !3104

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3105
  call void @llvm.dbg.value(metadata ptr %148, metadata !3106, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %107, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %108, metadata !3110, metadata !DIExpression()), !dbg !3111
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3113
  %150 = icmp eq i32 %149, 0, !dbg !3114
  %151 = and i1 %150, %110, !dbg !3115
  br i1 %151, label %630, label %152, !dbg !3115

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2962, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %153, metadata !2939, metadata !DIExpression()), !dbg !2998
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3116
  %156 = load i8, ptr %155, align 1, !dbg !3116, !tbaa !1150
  call void @llvm.dbg.value(metadata i8 %156, metadata !2967, metadata !DIExpression()), !dbg !3096
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
  ], !dbg !3117

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3118

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3119

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2965, metadata !DIExpression()), !dbg !3096
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3123
  br i1 %160, label %177, label %161, !dbg !3123

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3125
  br i1 %162, label %163, label %165, !dbg !3129

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3125
  store i8 39, ptr %164, align 1, !dbg !3125, !tbaa !1150
  br label %165, !dbg !3125

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %166, metadata !2946, metadata !DIExpression()), !dbg !2998
  %167 = icmp ult i64 %166, %130, !dbg !3130
  br i1 %167, label %168, label %170, !dbg !3133

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3130
  store i8 36, ptr %169, align 1, !dbg !3130, !tbaa !1150
  br label %170, !dbg !3130

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %171, metadata !2946, metadata !DIExpression()), !dbg !2998
  %172 = icmp ult i64 %171, %130, !dbg !3134
  br i1 %172, label %173, label %175, !dbg !3137

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3134
  store i8 39, ptr %174, align 1, !dbg !3134, !tbaa !1150
  br label %175, !dbg !3134

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %176, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 1, metadata !2954, metadata !DIExpression()), !dbg !2998
  br label %177, !dbg !3138

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2998
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %178, metadata !2946, metadata !DIExpression()), !dbg !2998
  %180 = icmp ult i64 %178, %130, !dbg !3139
  br i1 %180, label %181, label %183, !dbg !3142

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3139
  store i8 92, ptr %182, align 1, !dbg !3139, !tbaa !1150
  br label %183, !dbg !3139

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %184, metadata !2946, metadata !DIExpression()), !dbg !2998
  br i1 %111, label %185, label %482, !dbg !3143

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3145
  %187 = icmp ult i64 %186, %153, !dbg !3146
  br i1 %187, label %188, label %439, !dbg !3147

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3148
  %190 = load i8, ptr %189, align 1, !dbg !3148, !tbaa !1150
  %191 = add i8 %190, -48, !dbg !3149
  %192 = icmp ult i8 %191, 10, !dbg !3149
  br i1 %192, label %193, label %439, !dbg !3149

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3150
  br i1 %194, label %195, label %197, !dbg !3154

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3150
  store i8 48, ptr %196, align 1, !dbg !3150, !tbaa !1150
  br label %197, !dbg !3150

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %198, metadata !2946, metadata !DIExpression()), !dbg !2998
  %199 = icmp ult i64 %198, %130, !dbg !3155
  br i1 %199, label %200, label %202, !dbg !3158

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3155
  store i8 48, ptr %201, align 1, !dbg !3155, !tbaa !1150
  br label %202, !dbg !3155

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %203, metadata !2946, metadata !DIExpression()), !dbg !2998
  br label %439, !dbg !3159

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3160

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3161

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3162

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3164

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3166
  %210 = icmp ult i64 %209, %153, !dbg !3167
  br i1 %210, label %211, label %439, !dbg !3168

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3169
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3170
  %214 = load i8, ptr %213, align 1, !dbg !3170, !tbaa !1150
  %215 = icmp eq i8 %214, 63, !dbg !3171
  br i1 %215, label %216, label %439, !dbg !3172

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3173
  %218 = load i8, ptr %217, align 1, !dbg !3173, !tbaa !1150
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
  ], !dbg !3174

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3175

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2967, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %209, metadata !2960, metadata !DIExpression()), !dbg !3087
  %221 = icmp ult i64 %124, %130, !dbg !3177
  br i1 %221, label %222, label %224, !dbg !3180

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3177
  store i8 63, ptr %223, align 1, !dbg !3177, !tbaa !1150
  br label %224, !dbg !3177

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %225, metadata !2946, metadata !DIExpression()), !dbg !2998
  %226 = icmp ult i64 %225, %130, !dbg !3181
  br i1 %226, label %227, label %229, !dbg !3184

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3181
  store i8 34, ptr %228, align 1, !dbg !3181, !tbaa !1150
  br label %229, !dbg !3181

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %230, metadata !2946, metadata !DIExpression()), !dbg !2998
  %231 = icmp ult i64 %230, %130, !dbg !3185
  br i1 %231, label %232, label %234, !dbg !3188

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3185
  store i8 34, ptr %233, align 1, !dbg !3185, !tbaa !1150
  br label %234, !dbg !3185

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %235, metadata !2946, metadata !DIExpression()), !dbg !2998
  %236 = icmp ult i64 %235, %130, !dbg !3189
  br i1 %236, label %237, label %239, !dbg !3192

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3189
  store i8 63, ptr %238, align 1, !dbg !3189, !tbaa !1150
  br label %239, !dbg !3189

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %240, metadata !2946, metadata !DIExpression()), !dbg !2998
  br label %439, !dbg !3193

241:                                              ; preds = %152
  br label %251, !dbg !3194

242:                                              ; preds = %152
  br label %251, !dbg !3195

243:                                              ; preds = %152
  br label %249, !dbg !3196

244:                                              ; preds = %152
  br label %249, !dbg !3197

245:                                              ; preds = %152
  br label %251, !dbg !3198

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3199

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3200

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3203

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3205
  call void @llvm.dbg.label(metadata !2992), !dbg !3206
  br i1 %119, label %621, label %251, !dbg !3207

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3205
  call void @llvm.dbg.label(metadata !2994), !dbg !3209
  br i1 %109, label %493, label %450, !dbg !3210

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3211

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3212, !tbaa !1150
  %256 = icmp eq i8 %255, 0, !dbg !3214
  br i1 %256, label %257, label %439, !dbg !3215

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3216
  br i1 %258, label %259, label %439, !dbg !3218

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2966, metadata !DIExpression()), !dbg !3096
  br label %260, !dbg !3219

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3096
  br i1 %116, label %262, label %439, !dbg !3220

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3222

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 1, metadata !2966, metadata !DIExpression()), !dbg !3096
  br i1 %116, label %264, label %439, !dbg !3223

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3224

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3227
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3229
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3229
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %270, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %269, metadata !2947, metadata !DIExpression()), !dbg !2998
  %271 = icmp ult i64 %124, %270, !dbg !3230
  br i1 %271, label %272, label %274, !dbg !3233

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3230
  store i8 39, ptr %273, align 1, !dbg !3230, !tbaa !1150
  br label %274, !dbg !3230

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %275, metadata !2946, metadata !DIExpression()), !dbg !2998
  %276 = icmp ult i64 %275, %270, !dbg !3234
  br i1 %276, label %277, label %279, !dbg !3237

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3234
  store i8 92, ptr %278, align 1, !dbg !3234, !tbaa !1150
  br label %279, !dbg !3234

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %280, metadata !2946, metadata !DIExpression()), !dbg !2998
  %281 = icmp ult i64 %280, %270, !dbg !3238
  br i1 %281, label %282, label %284, !dbg !3241

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3238
  store i8 39, ptr %283, align 1, !dbg !3238, !tbaa !1150
  br label %284, !dbg !3238

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3241
  call void @llvm.dbg.value(metadata i64 %285, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !2998
  br label %439, !dbg !3242

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3243

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2968, metadata !DIExpression()), !dbg !3244
  %288 = tail call ptr @__ctype_b_loc() #43, !dbg !3245
  %289 = load ptr, ptr %288, align 8, !dbg !3245, !tbaa !1061
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3245
  %292 = load i16, ptr %291, align 2, !dbg !3245, !tbaa !1182
  %293 = and i16 %292, 16384, !dbg !3245
  %294 = icmp ne i16 %293, 0, !dbg !3247
  call void @llvm.dbg.value(metadata i1 %294, metadata !2971, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3244
  br label %337, !dbg !3248

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3249
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2972, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata ptr %14, metadata !3024, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata ptr %14, metadata !3032, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 0, metadata !3035, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 8, metadata !3036, metadata !DIExpression()), !dbg !3253
  store i64 0, ptr %14, align 8, !dbg !3255
  call void @llvm.dbg.value(metadata i64 0, metadata !2968, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i8 1, metadata !2971, metadata !DIExpression()), !dbg !3244
  %296 = icmp eq i64 %153, -1, !dbg !3256
  br i1 %296, label %297, label %299, !dbg !3258

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %298, metadata !2939, metadata !DIExpression()), !dbg !2998
  br label %299, !dbg !3260

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3096
  call void @llvm.dbg.value(metadata i64 %300, metadata !2939, metadata !DIExpression()), !dbg !2998
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3261
  %301 = sub i64 %300, %129, !dbg !3262
  call void @llvm.dbg.value(metadata ptr %15, metadata !2975, metadata !DIExpression(DW_OP_deref)), !dbg !3263
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #40, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %302, metadata !2979, metadata !DIExpression()), !dbg !3263
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3265

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2968, metadata !DIExpression()), !dbg !3244
  %304 = icmp ugt i64 %300, %129, !dbg !3266
  br i1 %304, label %306, label %332, !dbg !3268

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2971, metadata !DIExpression()), !dbg !3244
  br label %332, !dbg !3269

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2968, metadata !DIExpression()), !dbg !3244
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3271
  %310 = load i8, ptr %309, align 1, !dbg !3271, !tbaa !1150
  %311 = icmp eq i8 %310, 0, !dbg !3268
  br i1 %311, label %332, label %312, !dbg !3272

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %313, metadata !2968, metadata !DIExpression()), !dbg !3244
  %314 = add i64 %313, %129, !dbg !3274
  %315 = icmp eq i64 %313, %301, !dbg !3266
  br i1 %315, label %332, label %306, !dbg !3268, !llvm.loop !3275

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3276
  %319 = and i1 %318, %110, !dbg !3276
  call void @llvm.dbg.value(metadata i64 1, metadata !2980, metadata !DIExpression()), !dbg !3277
  br i1 %319, label %320, label %328, !dbg !3276

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2980, metadata !DIExpression()), !dbg !3277
  %322 = add i64 %321, %129, !dbg !3278
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3280
  %324 = load i8, ptr %323, align 1, !dbg !3280, !tbaa !1150
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3281

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %326, metadata !2980, metadata !DIExpression()), !dbg !3277
  %327 = icmp eq i64 %326, %302, !dbg !3283
  br i1 %327, label %328, label %320, !dbg !3284, !llvm.loop !3285

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3287, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %329, metadata !2975, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32 %329, metadata !3289, metadata !DIExpression()), !dbg !3297
  %330 = call i32 @iswprint(i32 noundef %329) #40, !dbg !3299
  %331 = icmp ne i32 %330, 0, !dbg !3300
  call void @llvm.dbg.value(metadata i8 poison, metadata !2971, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %302, metadata !2968, metadata !DIExpression()), !dbg !3244
  br label %332, !dbg !3301

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2971, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %333, metadata !2968, metadata !DIExpression()), !dbg !3244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3302
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3303
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2971, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 0, metadata !2968, metadata !DIExpression()), !dbg !3244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3302
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3303
  call void @llvm.dbg.label(metadata !2997), !dbg !3304
  %336 = select i1 %109, i32 4, i32 2, !dbg !3305
  br label %626, !dbg !3305

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3096
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3307
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2971, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %339, metadata !2968, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %338, metadata !2939, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i1 %340, metadata !2966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3096
  %341 = icmp ult i64 %339, 2, !dbg !3308
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3309
  br i1 %343, label %439, label %344, !dbg !3309

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3310
  call void @llvm.dbg.value(metadata i64 %345, metadata !2988, metadata !DIExpression()), !dbg !3311
  br label %346, !dbg !3312

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2998
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3087
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3313
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3096
  call void @llvm.dbg.value(metadata i8 %352, metadata !2967, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %351, metadata !2965, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2962, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %349, metadata !2960, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %347, metadata !2946, metadata !DIExpression()), !dbg !2998
  br i1 %342, label %397, label %353, !dbg !3314

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3319

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2965, metadata !DIExpression()), !dbg !3096
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3322
  br i1 %355, label %372, label %356, !dbg !3322

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3324
  br i1 %357, label %358, label %360, !dbg !3328

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3324
  store i8 39, ptr %359, align 1, !dbg !3324, !tbaa !1150
  br label %360, !dbg !3324

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %361, metadata !2946, metadata !DIExpression()), !dbg !2998
  %362 = icmp ult i64 %361, %130, !dbg !3329
  br i1 %362, label %363, label %365, !dbg !3332

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3329
  store i8 36, ptr %364, align 1, !dbg !3329, !tbaa !1150
  br label %365, !dbg !3329

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %366, metadata !2946, metadata !DIExpression()), !dbg !2998
  %367 = icmp ult i64 %366, %130, !dbg !3333
  br i1 %367, label %368, label %370, !dbg !3336

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3333
  store i8 39, ptr %369, align 1, !dbg !3333, !tbaa !1150
  br label %370, !dbg !3333

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %371, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 1, metadata !2954, metadata !DIExpression()), !dbg !2998
  br label %372, !dbg !3337

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2998
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %373, metadata !2946, metadata !DIExpression()), !dbg !2998
  %375 = icmp ult i64 %373, %130, !dbg !3338
  br i1 %375, label %376, label %378, !dbg !3341

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3338
  store i8 92, ptr %377, align 1, !dbg !3338, !tbaa !1150
  br label %378, !dbg !3338

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %379, metadata !2946, metadata !DIExpression()), !dbg !2998
  %380 = icmp ult i64 %379, %130, !dbg !3342
  br i1 %380, label %381, label %385, !dbg !3345

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3342
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3342
  store i8 %383, ptr %384, align 1, !dbg !3342, !tbaa !1150
  br label %385, !dbg !3342

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %386, metadata !2946, metadata !DIExpression()), !dbg !2998
  %387 = icmp ult i64 %386, %130, !dbg !3346
  br i1 %387, label %388, label %393, !dbg !3349

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3346
  %391 = or i8 %390, 48, !dbg !3346
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3346
  store i8 %391, ptr %392, align 1, !dbg !3346, !tbaa !1150
  br label %393, !dbg !3346

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %394, metadata !2946, metadata !DIExpression()), !dbg !2998
  %395 = and i8 %352, 7, !dbg !3350
  %396 = or i8 %395, 48, !dbg !3351
  call void @llvm.dbg.value(metadata i8 %396, metadata !2967, metadata !DIExpression()), !dbg !3096
  br label %404, !dbg !3352

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3353

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3354
  br i1 %399, label %400, label %402, !dbg !3359

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3354
  store i8 92, ptr %401, align 1, !dbg !3354, !tbaa !1150
  br label %402, !dbg !3354

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %403, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 0, metadata !2962, metadata !DIExpression()), !dbg !3096
  br label %404, !dbg !3360

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2998
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3096
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3096
  call void @llvm.dbg.value(metadata i8 %409, metadata !2967, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %408, metadata !2965, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2962, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %405, metadata !2946, metadata !DIExpression()), !dbg !2998
  %410 = add i64 %349, 1, !dbg !3361
  %411 = icmp ugt i64 %345, %410, !dbg !3363
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3364

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3365
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3365
  br i1 %415, label %416, label %427, !dbg !3365

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3368
  br i1 %417, label %418, label %420, !dbg !3372

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3368
  store i8 39, ptr %419, align 1, !dbg !3368, !tbaa !1150
  br label %420, !dbg !3368

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %421, metadata !2946, metadata !DIExpression()), !dbg !2998
  %422 = icmp ult i64 %421, %130, !dbg !3373
  br i1 %422, label %423, label %425, !dbg !3376

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3373
  store i8 39, ptr %424, align 1, !dbg !3373, !tbaa !1150
  br label %425, !dbg !3373

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %426, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !2998
  br label %427, !dbg !3377

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3378
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %428, metadata !2946, metadata !DIExpression()), !dbg !2998
  %430 = icmp ult i64 %428, %130, !dbg !3379
  br i1 %430, label %431, label %433, !dbg !3382

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3379
  store i8 %409, ptr %432, align 1, !dbg !3379, !tbaa !1150
  br label %433, !dbg !3379

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %434, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %410, metadata !2960, metadata !DIExpression()), !dbg !3087
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3383
  %436 = load i8, ptr %435, align 1, !dbg !3383, !tbaa !1150
  call void @llvm.dbg.value(metadata i8 %436, metadata !2967, metadata !DIExpression()), !dbg !3096
  br label %346, !dbg !3384, !llvm.loop !3385

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2967, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i1 %340, metadata !2966, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %408, metadata !2965, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2962, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %349, metadata !2960, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %405, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %338, metadata !2939, metadata !DIExpression()), !dbg !2998
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3388
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2998
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3002
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3087
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3096
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 %448, metadata !2967, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2962, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %445, metadata !2960, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %442, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %441, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %440, metadata !2939, metadata !DIExpression()), !dbg !2998
  br i1 %112, label %461, label %450, !dbg !3389

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
  br i1 %121, label %462, label %482, !dbg !3391

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3392

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
  %473 = lshr i8 %464, 5, !dbg !3393
  %474 = zext i8 %473 to i64, !dbg !3393
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3394
  %476 = load i32, ptr %475, align 4, !dbg !3394, !tbaa !1141
  %477 = and i8 %464, 31, !dbg !3395
  %478 = zext i8 %477 to i32, !dbg !3395
  %479 = shl nuw i32 1, %478, !dbg !3396
  %480 = and i32 %476, %479, !dbg !3396
  %481 = icmp eq i32 %480, 0, !dbg !3396
  br i1 %481, label %482, label %493, !dbg !3397

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
  br i1 %154, label %493, label %529, !dbg !3398

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3388
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2998
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3002
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3399
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3096
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 %501, metadata !2967, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %499, metadata !2960, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %496, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %495, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %494, metadata !2939, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.label(metadata !2995), !dbg !3400
  br i1 %110, label %621, label %503, !dbg !3401

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2965, metadata !DIExpression()), !dbg !3096
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3403
  br i1 %504, label %521, label %505, !dbg !3403

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3405
  br i1 %506, label %507, label %509, !dbg !3409

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3405
  store i8 39, ptr %508, align 1, !dbg !3405, !tbaa !1150
  br label %509, !dbg !3405

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %510, metadata !2946, metadata !DIExpression()), !dbg !2998
  %511 = icmp ult i64 %510, %502, !dbg !3410
  br i1 %511, label %512, label %514, !dbg !3413

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3410
  store i8 36, ptr %513, align 1, !dbg !3410, !tbaa !1150
  br label %514, !dbg !3410

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %515, metadata !2946, metadata !DIExpression()), !dbg !2998
  %516 = icmp ult i64 %515, %502, !dbg !3414
  br i1 %516, label %517, label %519, !dbg !3417

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3414
  store i8 39, ptr %518, align 1, !dbg !3414, !tbaa !1150
  br label %519, !dbg !3414

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %520, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 1, metadata !2954, metadata !DIExpression()), !dbg !2998
  br label %521, !dbg !3418

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3096
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %522, metadata !2946, metadata !DIExpression()), !dbg !2998
  %524 = icmp ult i64 %522, %502, !dbg !3419
  br i1 %524, label %525, label %527, !dbg !3422

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3419
  store i8 92, ptr %526, align 1, !dbg !3419, !tbaa !1150
  br label %527, !dbg !3419

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %502, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 %501, metadata !2967, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %499, metadata !2960, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %496, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %528, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %494, metadata !2939, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.label(metadata !2996), !dbg !3423
  br label %553, !dbg !3424

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3388
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2998
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3002
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3399
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3427
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 %538, metadata !2967, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %535, metadata !2960, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %532, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %531, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %530, metadata !2939, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.label(metadata !2996), !dbg !3423
  %540 = xor i1 %534, true, !dbg !3424
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3424
  br i1 %541, label %553, label %542, !dbg !3424

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3428
  br i1 %543, label %544, label %546, !dbg !3432

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3428
  store i8 39, ptr %545, align 1, !dbg !3428, !tbaa !1150
  br label %546, !dbg !3428

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %547, metadata !2946, metadata !DIExpression()), !dbg !2998
  %548 = icmp ult i64 %547, %539, !dbg !3433
  br i1 %548, label %549, label %551, !dbg !3436

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3433
  store i8 39, ptr %550, align 1, !dbg !3433, !tbaa !1150
  br label %551, !dbg !3433

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %552, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 0, metadata !2954, metadata !DIExpression()), !dbg !2998
  br label %553, !dbg !3437

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3096
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %561, metadata !2946, metadata !DIExpression()), !dbg !2998
  %563 = icmp ult i64 %561, %554, !dbg !3438
  br i1 %563, label %564, label %566, !dbg !3441

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3438
  store i8 %555, ptr %565, align 1, !dbg !3438, !tbaa !1150
  br label %566, !dbg !3438

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %567, metadata !2946, metadata !DIExpression()), !dbg !2998
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3442
  call void @llvm.dbg.value(metadata i8 poison, metadata !2953, metadata !DIExpression()), !dbg !2998
  br label %569, !dbg !3443

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3388
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2998
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3002
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3399
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %576, metadata !2960, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 poison, metadata !2954, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2953, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %572, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %571, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %570, metadata !2939, metadata !DIExpression()), !dbg !2998
  %578 = add i64 %576, 1, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %578, metadata !2960, metadata !DIExpression()), !dbg !3087
  br label %122, !dbg !3445, !llvm.loop !3446

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2937, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2953, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2952, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %125, metadata !2947, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %124, metadata !2946, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %123, metadata !2939, metadata !DIExpression()), !dbg !2998
  %580 = icmp ne i64 %124, 0, !dbg !3448
  %581 = xor i1 %110, true, !dbg !3450
  %582 = or i1 %580, %581, !dbg !3450
  %583 = or i1 %582, %111, !dbg !3450
  br i1 %583, label %584, label %621, !dbg !3450

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3451
  %586 = xor i1 %126, true, !dbg !3451
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3451
  br i1 %587, label %595, label %588, !dbg !3451

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3453

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3455
  br label %636, !dbg !3457

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3458
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3460
  br i1 %594, label %27, label %595, !dbg !3460

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3461
  %598 = or i1 %597, %596, !dbg !3463
  br i1 %598, label %614, label %599, !dbg !3463

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2948, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %124, metadata !2946, metadata !DIExpression()), !dbg !2998
  %600 = load i8, ptr %107, align 1, !dbg !3464, !tbaa !1150
  %601 = icmp eq i8 %600, 0, !dbg !3467
  br i1 %601, label %614, label %602, !dbg !3467

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2948, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %605, metadata !2946, metadata !DIExpression()), !dbg !2998
  %606 = icmp ult i64 %605, %130, !dbg !3468
  br i1 %606, label %607, label %609, !dbg !3471

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3468
  store i8 %603, ptr %608, align 1, !dbg !3468, !tbaa !1150
  br label %609, !dbg !3468

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %610, metadata !2946, metadata !DIExpression()), !dbg !2998
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3472
  call void @llvm.dbg.value(metadata ptr %611, metadata !2948, metadata !DIExpression()), !dbg !2998
  %612 = load i8, ptr %611, align 1, !dbg !3464, !tbaa !1150
  %613 = icmp eq i8 %612, 0, !dbg !3467
  br i1 %613, label %614, label %602, !dbg !3467, !llvm.loop !3473

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3074
  call void @llvm.dbg.value(metadata i64 %615, metadata !2946, metadata !DIExpression()), !dbg !2998
  %616 = icmp ult i64 %615, %130, !dbg !3475
  br i1 %616, label %617, label %636, !dbg !3477

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3478
  store i8 0, ptr %618, align 1, !dbg !3479, !tbaa !1150
  br label %636, !dbg !3478

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2997), !dbg !3304
  %620 = icmp eq i32 %103, 2, !dbg !3480
  br i1 %620, label %626, label %630, !dbg !3305

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2997), !dbg !3304
  %624 = icmp eq i32 %103, 2, !dbg !3480
  %625 = select i1 %109, i32 4, i32 2, !dbg !3305
  br i1 %624, label %626, label %630, !dbg !3305

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3305

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2940, metadata !DIExpression()), !dbg !2998
  %634 = and i32 %5, -3, !dbg !3481
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3482
  br label %636, !dbg !3483

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3484
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3485 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3487 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %2, metadata !3493, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %0, metadata !3495, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %1, metadata !3500, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata ptr null, metadata !3501, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata ptr %2, metadata !3502, metadata !DIExpression()), !dbg !3508
  %4 = icmp eq ptr %2, null, !dbg !3510
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3510
  call void @llvm.dbg.value(metadata ptr %5, metadata !3503, metadata !DIExpression()), !dbg !3508
  %6 = tail call ptr @__errno_location() #43, !dbg !3511
  %7 = load i32, ptr %6, align 4, !dbg !3511, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %7, metadata !3504, metadata !DIExpression()), !dbg !3508
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3512
  %9 = load i32, ptr %8, align 4, !dbg !3512, !tbaa !2880
  %10 = or i32 %9, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %10, metadata !3505, metadata !DIExpression()), !dbg !3508
  %11 = load i32, ptr %5, align 8, !dbg !3514, !tbaa !2830
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3515
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3516
  %14 = load ptr, ptr %13, align 8, !dbg !3516, !tbaa !2901
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3517
  %16 = load ptr, ptr %15, align 8, !dbg !3517, !tbaa !2904
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3518
  %18 = add i64 %17, 1, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %18, metadata !3506, metadata !DIExpression()), !dbg !3508
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3520
  call void @llvm.dbg.value(metadata ptr %19, metadata !3507, metadata !DIExpression()), !dbg !3508
  %20 = load i32, ptr %5, align 8, !dbg !3521, !tbaa !2830
  %21 = load ptr, ptr %13, align 8, !dbg !3522, !tbaa !2901
  %22 = load ptr, ptr %15, align 8, !dbg !3523, !tbaa !2904
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3524
  store i32 %7, ptr %6, align 4, !dbg !3525, !tbaa !1141
  ret ptr %19, !dbg !3526
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3495, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %1, metadata !3500, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %2, metadata !3501, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %3, metadata !3502, metadata !DIExpression()), !dbg !3527
  %5 = icmp eq ptr %3, null, !dbg !3528
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3528
  call void @llvm.dbg.value(metadata ptr %6, metadata !3503, metadata !DIExpression()), !dbg !3527
  %7 = tail call ptr @__errno_location() #43, !dbg !3529
  %8 = load i32, ptr %7, align 4, !dbg !3529, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %8, metadata !3504, metadata !DIExpression()), !dbg !3527
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3530
  %10 = load i32, ptr %9, align 4, !dbg !3530, !tbaa !2880
  %11 = icmp eq ptr %2, null, !dbg !3531
  %12 = zext i1 %11 to i32, !dbg !3531
  %13 = or i32 %10, %12, !dbg !3532
  call void @llvm.dbg.value(metadata i32 %13, metadata !3505, metadata !DIExpression()), !dbg !3527
  %14 = load i32, ptr %6, align 8, !dbg !3533, !tbaa !2830
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3534
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3535
  %17 = load ptr, ptr %16, align 8, !dbg !3535, !tbaa !2901
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3536
  %19 = load ptr, ptr %18, align 8, !dbg !3536, !tbaa !2904
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3537
  %21 = add i64 %20, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %21, metadata !3506, metadata !DIExpression()), !dbg !3527
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3539
  call void @llvm.dbg.value(metadata ptr %22, metadata !3507, metadata !DIExpression()), !dbg !3527
  %23 = load i32, ptr %6, align 8, !dbg !3540, !tbaa !2830
  %24 = load ptr, ptr %16, align 8, !dbg !3541, !tbaa !2901
  %25 = load ptr, ptr %18, align 8, !dbg !3542, !tbaa !2904
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3543
  store i32 %8, ptr %7, align 4, !dbg !3544, !tbaa !1141
  br i1 %11, label %28, label %27, !dbg !3545

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3546, !tbaa !1338
  br label %28, !dbg !3548

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3549
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3550 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3555, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %1, metadata !3552, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 1, metadata !3553, metadata !DIExpression()), !dbg !3557
  %2 = load i32, ptr @nslots, align 4, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 1, metadata !3553, metadata !DIExpression()), !dbg !3557
  %3 = icmp sgt i32 %2, 1, !dbg !3558
  br i1 %3, label %4, label %6, !dbg !3560

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3558
  br label %10, !dbg !3560

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3561
  %8 = load ptr, ptr %7, align 8, !dbg !3561, !tbaa !3563
  %9 = icmp eq ptr %8, @slot0, !dbg !3565
  br i1 %9, label %17, label %16, !dbg !3566

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3553, metadata !DIExpression()), !dbg !3557
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3567
  %13 = load ptr, ptr %12, align 8, !dbg !3567, !tbaa !3563
  tail call void @free(ptr noundef %13) #40, !dbg !3568
  %14 = add nuw nsw i64 %11, 1, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %14, metadata !3553, metadata !DIExpression()), !dbg !3557
  %15 = icmp eq i64 %14, %5, !dbg !3558
  br i1 %15, label %6, label %10, !dbg !3560, !llvm.loop !3570

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3572
  store i64 256, ptr @slotvec0, align 8, !dbg !3574, !tbaa !3575
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3576, !tbaa !3563
  br label %17, !dbg !3577

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3578
  br i1 %18, label %20, label %19, !dbg !3580

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3581
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3583, !tbaa !1061
  br label %20, !dbg !3584

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3585, !tbaa !1141
  ret void, !dbg !3586
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3587 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %1, metadata !3590, metadata !DIExpression()), !dbg !3591
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3592
  ret ptr %3, !dbg !3593
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3594 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3598, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %1, metadata !3599, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %2, metadata !3600, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %3, metadata !3601, metadata !DIExpression()), !dbg !3614
  %6 = tail call ptr @__errno_location() #43, !dbg !3615
  %7 = load i32, ptr %6, align 4, !dbg !3615, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %7, metadata !3602, metadata !DIExpression()), !dbg !3614
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3616, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %8, metadata !3603, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3604, metadata !DIExpression()), !dbg !3614
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3617
  br i1 %9, label %10, label %11, !dbg !3617

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3619
  unreachable, !dbg !3619

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3620, !tbaa !1141
  %13 = icmp sgt i32 %12, %0, !dbg !3621
  br i1 %13, label %32, label %14, !dbg !3622

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3623
  call void @llvm.dbg.value(metadata i1 %15, metadata !3605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3624
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3625
  %16 = sext i32 %12 to i64, !dbg !3626
  call void @llvm.dbg.value(metadata i64 %16, metadata !3608, metadata !DIExpression()), !dbg !3624
  store i64 %16, ptr %5, align 8, !dbg !3627, !tbaa !1338
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3628
  %18 = add nuw nsw i32 %0, 1, !dbg !3629
  %19 = sub i32 %18, %12, !dbg !3630
  %20 = sext i32 %19 to i64, !dbg !3631
  call void @llvm.dbg.value(metadata ptr %5, metadata !3608, metadata !DIExpression(DW_OP_deref)), !dbg !3624
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3632
  call void @llvm.dbg.value(metadata ptr %21, metadata !3603, metadata !DIExpression()), !dbg !3614
  store ptr %21, ptr @slotvec, align 8, !dbg !3633, !tbaa !1061
  br i1 %15, label %22, label %23, !dbg !3634

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3635, !tbaa.struct !3637
  br label %23, !dbg !3638

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3639, !tbaa !1141
  %25 = sext i32 %24 to i64, !dbg !3640
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3640
  %27 = load i64, ptr %5, align 8, !dbg !3641, !tbaa !1338
  call void @llvm.dbg.value(metadata i64 %27, metadata !3608, metadata !DIExpression()), !dbg !3624
  %28 = sub nsw i64 %27, %25, !dbg !3642
  %29 = shl i64 %28, 4, !dbg !3643
  call void @llvm.dbg.value(metadata ptr %26, metadata !3032, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !3035, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %29, metadata !3036, metadata !DIExpression()), !dbg !3644
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3646
  %30 = load i64, ptr %5, align 8, !dbg !3647, !tbaa !1338
  call void @llvm.dbg.value(metadata i64 %30, metadata !3608, metadata !DIExpression()), !dbg !3624
  %31 = trunc i64 %30 to i32, !dbg !3647
  store i32 %31, ptr @nslots, align 4, !dbg !3648, !tbaa !1141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3649
  br label %32, !dbg !3650

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3614
  call void @llvm.dbg.value(metadata ptr %33, metadata !3603, metadata !DIExpression()), !dbg !3614
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3651
  %36 = load i64, ptr %35, align 8, !dbg !3652, !tbaa !3575
  call void @llvm.dbg.value(metadata i64 %36, metadata !3609, metadata !DIExpression()), !dbg !3653
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3654
  %38 = load ptr, ptr %37, align 8, !dbg !3654, !tbaa !3563
  call void @llvm.dbg.value(metadata ptr %38, metadata !3611, metadata !DIExpression()), !dbg !3653
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3655
  %40 = load i32, ptr %39, align 4, !dbg !3655, !tbaa !2880
  %41 = or i32 %40, 1, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %41, metadata !3612, metadata !DIExpression()), !dbg !3653
  %42 = load i32, ptr %3, align 8, !dbg !3657, !tbaa !2830
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3658
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3659
  %45 = load ptr, ptr %44, align 8, !dbg !3659, !tbaa !2901
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3660
  %47 = load ptr, ptr %46, align 8, !dbg !3660, !tbaa !2904
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %48, metadata !3613, metadata !DIExpression()), !dbg !3653
  %49 = icmp ugt i64 %36, %48, !dbg !3662
  br i1 %49, label %60, label %50, !dbg !3664

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3665
  call void @llvm.dbg.value(metadata i64 %51, metadata !3609, metadata !DIExpression()), !dbg !3653
  store i64 %51, ptr %35, align 8, !dbg !3667, !tbaa !3575
  %52 = icmp eq ptr %38, @slot0, !dbg !3668
  br i1 %52, label %54, label %53, !dbg !3670

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3671
  br label %54, !dbg !3671

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3672
  call void @llvm.dbg.value(metadata ptr %55, metadata !3611, metadata !DIExpression()), !dbg !3653
  store ptr %55, ptr %37, align 8, !dbg !3673, !tbaa !3563
  %56 = load i32, ptr %3, align 8, !dbg !3674, !tbaa !2830
  %57 = load ptr, ptr %44, align 8, !dbg !3675, !tbaa !2901
  %58 = load ptr, ptr %46, align 8, !dbg !3676, !tbaa !2904
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3677
  br label %60, !dbg !3678

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3653
  call void @llvm.dbg.value(metadata ptr %61, metadata !3611, metadata !DIExpression()), !dbg !3653
  store i32 %7, ptr %6, align 4, !dbg !3679, !tbaa !1141
  ret ptr %61, !dbg !3680
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %1, metadata !3686, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %2, metadata !3687, metadata !DIExpression()), !dbg !3688
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3689
  ret ptr %4, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3691 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %0, metadata !3590, metadata !DIExpression()), !dbg !3695
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3697
  ret ptr %2, !dbg !3698
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3699 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3703, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %1, metadata !3704, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i32 0, metadata !3685, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %0, metadata !3686, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()), !dbg !3706
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3708
  ret ptr %3, !dbg !3709
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3710 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3714, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %1, metadata !3715, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %2, metadata !3716, metadata !DIExpression()), !dbg !3718
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3719
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3717, metadata !DIExpression()), !dbg !3720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3721), !dbg !3724
  call void @llvm.dbg.value(metadata i32 %1, metadata !3725, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3730, metadata !DIExpression()), !dbg !3733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3733, !alias.scope !3721
  %5 = icmp eq i32 %1, 10, !dbg !3734
  br i1 %5, label %6, label %7, !dbg !3736

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3737, !noalias !3721
  unreachable, !dbg !3737

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3738, !tbaa !2830, !alias.scope !3721
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3739
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3740
  ret ptr %8, !dbg !3741
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3742 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3746, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 %1, metadata !3747, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %2, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %3, metadata !3749, metadata !DIExpression()), !dbg !3751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3752
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3750, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3754), !dbg !3757
  call void @llvm.dbg.value(metadata i32 %1, metadata !3725, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3730, metadata !DIExpression()), !dbg !3760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3760, !alias.scope !3754
  %6 = icmp eq i32 %1, 10, !dbg !3761
  br i1 %6, label %7, label %8, !dbg !3762

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3763, !noalias !3754
  unreachable, !dbg !3763

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3764, !tbaa !2830, !alias.scope !3754
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3765
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3766
  ret ptr %9, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3768 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %1, metadata !3773, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 0, metadata !3714, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 %0, metadata !3715, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata ptr %1, metadata !3716, metadata !DIExpression()), !dbg !3775
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3777
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3717, metadata !DIExpression()), !dbg !3778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3779), !dbg !3782
  call void @llvm.dbg.value(metadata i32 %0, metadata !3725, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3730, metadata !DIExpression()), !dbg !3785
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3785, !alias.scope !3779
  %4 = icmp eq i32 %0, 10, !dbg !3786
  br i1 %4, label %5, label %6, !dbg !3787

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3788, !noalias !3779
  unreachable, !dbg !3788

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3789, !tbaa !2830, !alias.scope !3779
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3790
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3791
  ret ptr %7, !dbg !3792
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3793 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3797, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %1, metadata !3798, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %2, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 0, metadata !3746, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %0, metadata !3747, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %1, metadata !3748, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %2, metadata !3749, metadata !DIExpression()), !dbg !3801
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3803
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3750, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3805), !dbg !3808
  call void @llvm.dbg.value(metadata i32 %0, metadata !3725, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3730, metadata !DIExpression()), !dbg !3811
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3811, !alias.scope !3805
  %5 = icmp eq i32 %0, 10, !dbg !3812
  br i1 %5, label %6, label %7, !dbg !3813

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3814, !noalias !3805
  unreachable, !dbg !3814

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3815, !tbaa !2830, !alias.scope !3805
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3816
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3817
  ret ptr %8, !dbg !3818
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3819 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3823, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8 %2, metadata !3825, metadata !DIExpression()), !dbg !3827
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3828
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3830, !tbaa.struct !3831
  call void @llvm.dbg.value(metadata ptr %4, metadata !2847, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i8 %2, metadata !2848, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i32 1, metadata !2849, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i8 %2, metadata !2850, metadata !DIExpression()), !dbg !3832
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3834
  %6 = lshr i8 %2, 5, !dbg !3835
  %7 = zext i8 %6 to i64, !dbg !3835
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3836
  call void @llvm.dbg.value(metadata ptr %8, metadata !2851, metadata !DIExpression()), !dbg !3832
  %9 = and i8 %2, 31, !dbg !3837
  %10 = zext i8 %9 to i32, !dbg !3837
  call void @llvm.dbg.value(metadata i32 %10, metadata !2853, metadata !DIExpression()), !dbg !3832
  %11 = load i32, ptr %8, align 4, !dbg !3838, !tbaa !1141
  %12 = lshr i32 %11, %10, !dbg !3839
  call void @llvm.dbg.value(metadata i32 %12, metadata !2854, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3832
  %13 = and i32 %12, 1, !dbg !3840
  %14 = xor i32 %13, 1, !dbg !3840
  %15 = shl nuw i32 %14, %10, !dbg !3841
  %16 = xor i32 %15, %11, !dbg !3842
  store i32 %16, ptr %8, align 4, !dbg !3842, !tbaa !1141
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3843
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3844
  ret ptr %17, !dbg !3845
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3846 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3850, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i8 %1, metadata !3851, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata ptr %0, metadata !3823, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 -1, metadata !3824, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i8 %1, metadata !3825, metadata !DIExpression()), !dbg !3853
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3826, metadata !DIExpression()), !dbg !3856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3857, !tbaa.struct !3831
  call void @llvm.dbg.value(metadata ptr %3, metadata !2847, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i8 %1, metadata !2848, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i32 1, metadata !2849, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i8 %1, metadata !2850, metadata !DIExpression()), !dbg !3858
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3860
  %5 = lshr i8 %1, 5, !dbg !3861
  %6 = zext i8 %5 to i64, !dbg !3861
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3862
  call void @llvm.dbg.value(metadata ptr %7, metadata !2851, metadata !DIExpression()), !dbg !3858
  %8 = and i8 %1, 31, !dbg !3863
  %9 = zext i8 %8 to i32, !dbg !3863
  call void @llvm.dbg.value(metadata i32 %9, metadata !2853, metadata !DIExpression()), !dbg !3858
  %10 = load i32, ptr %7, align 4, !dbg !3864, !tbaa !1141
  %11 = lshr i32 %10, %9, !dbg !3865
  call void @llvm.dbg.value(metadata i32 %11, metadata !2854, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3858
  %12 = and i32 %11, 1, !dbg !3866
  %13 = xor i32 %12, 1, !dbg !3866
  %14 = shl nuw i32 %13, %9, !dbg !3867
  %15 = xor i32 %14, %10, !dbg !3868
  store i32 %15, ptr %7, align 4, !dbg !3868, !tbaa !1141
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3869
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3870
  ret ptr %16, !dbg !3871
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3872 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3874, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata ptr %0, metadata !3850, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8 58, metadata !3851, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata ptr %0, metadata !3823, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 -1, metadata !3824, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i8 58, metadata !3825, metadata !DIExpression()), !dbg !3878
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3880
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3826, metadata !DIExpression()), !dbg !3881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3882, !tbaa.struct !3831
  call void @llvm.dbg.value(metadata ptr %2, metadata !2847, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8 58, metadata !2848, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 1, metadata !2849, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8 58, metadata !2850, metadata !DIExpression()), !dbg !3883
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3885
  call void @llvm.dbg.value(metadata ptr %3, metadata !2851, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 26, metadata !2853, metadata !DIExpression()), !dbg !3883
  %4 = load i32, ptr %3, align 4, !dbg !3886, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %4, metadata !2854, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3883
  %5 = or i32 %4, 67108864, !dbg !3887
  store i32 %5, ptr %3, align 4, !dbg !3887, !tbaa !1141
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3888
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3889
  ret ptr %6, !dbg !3890
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3891 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3893, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %1, metadata !3894, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata ptr %0, metadata !3823, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i8 58, metadata !3825, metadata !DIExpression()), !dbg !3896
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3898
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3826, metadata !DIExpression()), !dbg !3899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3900, !tbaa.struct !3831
  call void @llvm.dbg.value(metadata ptr %3, metadata !2847, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i8 58, metadata !2848, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 1, metadata !2849, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i8 58, metadata !2850, metadata !DIExpression()), !dbg !3901
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3903
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 26, metadata !2853, metadata !DIExpression()), !dbg !3901
  %5 = load i32, ptr %4, align 4, !dbg !3904, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %5, metadata !2854, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3901
  %6 = or i32 %5, 67108864, !dbg !3905
  store i32 %6, ptr %4, align 4, !dbg !3905, !tbaa !1141
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3906
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3907
  ret ptr %7, !dbg !3908
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3909 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3730, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3915
  call void @llvm.dbg.value(metadata i32 %0, metadata !3911, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i32 %1, metadata !3912, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata ptr %2, metadata !3913, metadata !DIExpression()), !dbg !3917
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3918
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3914, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %1, metadata !3725, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 0, metadata !3730, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3920
  %5 = icmp eq i32 %1, 10, !dbg !3921
  br i1 %5, label %6, label %7, !dbg !3922

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3923, !noalias !3924
  unreachable, !dbg !3923

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3730, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3920
  store i32 %1, ptr %4, align 8, !dbg !3927, !tbaa.struct !3831
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3927
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3927
  call void @llvm.dbg.value(metadata ptr %4, metadata !2847, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8 58, metadata !2848, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 1, metadata !2849, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8 58, metadata !2850, metadata !DIExpression()), !dbg !3928
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3930
  call void @llvm.dbg.value(metadata ptr %9, metadata !2851, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 26, metadata !2853, metadata !DIExpression()), !dbg !3928
  %10 = load i32, ptr %9, align 4, !dbg !3931, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %10, metadata !2854, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3928
  %11 = or i32 %10, 67108864, !dbg !3932
  store i32 %11, ptr %9, align 4, !dbg !3932, !tbaa !1141
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3933
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3934
  ret ptr %12, !dbg !3935
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3936 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3940, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata ptr %1, metadata !3941, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata ptr %2, metadata !3942, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata ptr %3, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i32 %0, metadata !3945, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr %1, metadata !3950, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr %2, metadata !3951, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr %3, metadata !3952, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i64 -1, metadata !3953, metadata !DIExpression()), !dbg !3955
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3957
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3954, metadata !DIExpression()), !dbg !3958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3959, !tbaa.struct !3831
  call void @llvm.dbg.value(metadata ptr %5, metadata !2887, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata ptr %1, metadata !2888, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata ptr %2, metadata !2889, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata ptr %5, metadata !2887, metadata !DIExpression()), !dbg !3960
  store i32 10, ptr %5, align 8, !dbg !3962, !tbaa !2830
  %6 = icmp ne ptr %1, null, !dbg !3963
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3964
  br i1 %8, label %10, label %9, !dbg !3964

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3965
  unreachable, !dbg !3965

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3966
  store ptr %1, ptr %11, align 8, !dbg !3967, !tbaa !2901
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3968
  store ptr %2, ptr %12, align 8, !dbg !3969, !tbaa !2904
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3970
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3971
  ret ptr %13, !dbg !3972
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3946 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3945, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr %1, metadata !3950, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr %2, metadata !3951, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr %3, metadata !3952, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i64 %4, metadata !3953, metadata !DIExpression()), !dbg !3973
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3974
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3954, metadata !DIExpression()), !dbg !3975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3976, !tbaa.struct !3831
  call void @llvm.dbg.value(metadata ptr %6, metadata !2887, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr %1, metadata !2888, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr %2, metadata !2889, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr %6, metadata !2887, metadata !DIExpression()), !dbg !3977
  store i32 10, ptr %6, align 8, !dbg !3979, !tbaa !2830
  %7 = icmp ne ptr %1, null, !dbg !3980
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3981
  br i1 %9, label %11, label %10, !dbg !3981

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3982
  unreachable, !dbg !3982

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3983
  store ptr %1, ptr %12, align 8, !dbg !3984, !tbaa !2901
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3985
  store ptr %2, ptr %13, align 8, !dbg !3986, !tbaa !2904
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3987
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3988
  ret ptr %14, !dbg !3989
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3990 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %1, metadata !3995, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %2, metadata !3996, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 0, metadata !3940, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata ptr %1, metadata !3942, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata ptr %2, metadata !3943, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %0, metadata !3950, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %1, metadata !3951, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %2, metadata !3952, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 -1, metadata !3953, metadata !DIExpression()), !dbg !4000
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4002
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3954, metadata !DIExpression()), !dbg !4003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4004, !tbaa.struct !3831
  call void @llvm.dbg.value(metadata ptr %4, metadata !2887, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata ptr %1, metadata !2889, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata ptr %4, metadata !2887, metadata !DIExpression()), !dbg !4005
  store i32 10, ptr %4, align 8, !dbg !4007, !tbaa !2830
  %5 = icmp ne ptr %0, null, !dbg !4008
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4009
  br i1 %7, label %9, label %8, !dbg !4009

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4010
  unreachable, !dbg !4010

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4011
  store ptr %0, ptr %10, align 8, !dbg !4012, !tbaa !2901
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4013
  store ptr %1, ptr %11, align 8, !dbg !4014, !tbaa !2904
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4015
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4016
  ret ptr %12, !dbg !4017
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4018 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata ptr %1, metadata !4023, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata ptr %2, metadata !4024, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %3, metadata !4025, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata ptr %0, metadata !3950, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata ptr %1, metadata !3951, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata ptr %2, metadata !3952, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i64 %3, metadata !3953, metadata !DIExpression()), !dbg !4027
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4029
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3954, metadata !DIExpression()), !dbg !4030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4031, !tbaa.struct !3831
  call void @llvm.dbg.value(metadata ptr %5, metadata !2887, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata ptr %1, metadata !2889, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata ptr %5, metadata !2887, metadata !DIExpression()), !dbg !4032
  store i32 10, ptr %5, align 8, !dbg !4034, !tbaa !2830
  %6 = icmp ne ptr %0, null, !dbg !4035
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4036
  br i1 %8, label %10, label %9, !dbg !4036

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4037
  unreachable, !dbg !4037

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4038
  store ptr %0, ptr %11, align 8, !dbg !4039, !tbaa !2901
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4040
  store ptr %1, ptr %12, align 8, !dbg !4041, !tbaa !2904
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4042
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4043
  ret ptr %13, !dbg !4044
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4045 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4049, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr %1, metadata !4050, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %2, metadata !4051, metadata !DIExpression()), !dbg !4052
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4053
  ret ptr %4, !dbg !4054
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4055 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4059, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 %1, metadata !4060, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 0, metadata !4049, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %0, metadata !4050, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i64 %1, metadata !4051, metadata !DIExpression()), !dbg !4062
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4064
  ret ptr %3, !dbg !4065
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4066 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4070, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata ptr %1, metadata !4071, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 %0, metadata !4049, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %1, metadata !4050, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 -1, metadata !4051, metadata !DIExpression()), !dbg !4073
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4075
  ret ptr %3, !dbg !4076
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4077 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i32 0, metadata !4070, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 0, metadata !4049, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata ptr %0, metadata !4050, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 -1, metadata !4051, metadata !DIExpression()), !dbg !4085
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4087
  ret ptr %2, !dbg !4088
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4089 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4128, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata ptr %1, metadata !4129, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata ptr %2, metadata !4130, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata ptr %3, metadata !4131, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata ptr %4, metadata !4132, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %5, metadata !4133, metadata !DIExpression()), !dbg !4134
  %7 = icmp eq ptr %1, null, !dbg !4135
  br i1 %7, label %10, label %8, !dbg !4137

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.122, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4138
  br label %12, !dbg !4138

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.123, ptr noundef %2, ptr noundef %3) #40, !dbg !4139
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.3.125, i32 noundef 5) #40, !dbg !4140
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4140
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %0), !dbg !4141
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.5.127, i32 noundef 5) #40, !dbg !4142
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.128) #40, !dbg !4142
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %0), !dbg !4143
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
  ], !dbg !4144

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.7.129, i32 noundef 5) #40, !dbg !4145
  %21 = load ptr, ptr %4, align 8, !dbg !4145, !tbaa !1061
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4145
  br label %147, !dbg !4147

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.8.130, i32 noundef 5) #40, !dbg !4148
  %25 = load ptr, ptr %4, align 8, !dbg !4148, !tbaa !1061
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4148
  %27 = load ptr, ptr %26, align 8, !dbg !4148, !tbaa !1061
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4148
  br label %147, !dbg !4149

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.9.131, i32 noundef 5) #40, !dbg !4150
  %31 = load ptr, ptr %4, align 8, !dbg !4150, !tbaa !1061
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4150
  %33 = load ptr, ptr %32, align 8, !dbg !4150, !tbaa !1061
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4150
  %35 = load ptr, ptr %34, align 8, !dbg !4150, !tbaa !1061
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4150
  br label %147, !dbg !4151

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.10.132, i32 noundef 5) #40, !dbg !4152
  %39 = load ptr, ptr %4, align 8, !dbg !4152, !tbaa !1061
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4152
  %41 = load ptr, ptr %40, align 8, !dbg !4152, !tbaa !1061
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4152
  %43 = load ptr, ptr %42, align 8, !dbg !4152, !tbaa !1061
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4152
  %45 = load ptr, ptr %44, align 8, !dbg !4152, !tbaa !1061
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4152
  br label %147, !dbg !4153

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.11.133, i32 noundef 5) #40, !dbg !4154
  %49 = load ptr, ptr %4, align 8, !dbg !4154, !tbaa !1061
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4154
  %51 = load ptr, ptr %50, align 8, !dbg !4154, !tbaa !1061
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4154
  %53 = load ptr, ptr %52, align 8, !dbg !4154, !tbaa !1061
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4154
  %55 = load ptr, ptr %54, align 8, !dbg !4154, !tbaa !1061
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4154
  %57 = load ptr, ptr %56, align 8, !dbg !4154, !tbaa !1061
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4154
  br label %147, !dbg !4155

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.12.134, i32 noundef 5) #40, !dbg !4156
  %61 = load ptr, ptr %4, align 8, !dbg !4156, !tbaa !1061
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4156
  %63 = load ptr, ptr %62, align 8, !dbg !4156, !tbaa !1061
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4156
  %65 = load ptr, ptr %64, align 8, !dbg !4156, !tbaa !1061
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4156
  %67 = load ptr, ptr %66, align 8, !dbg !4156, !tbaa !1061
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4156
  %69 = load ptr, ptr %68, align 8, !dbg !4156, !tbaa !1061
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4156
  %71 = load ptr, ptr %70, align 8, !dbg !4156, !tbaa !1061
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4156
  br label %147, !dbg !4157

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.13.135, i32 noundef 5) #40, !dbg !4158
  %75 = load ptr, ptr %4, align 8, !dbg !4158, !tbaa !1061
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4158
  %77 = load ptr, ptr %76, align 8, !dbg !4158, !tbaa !1061
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4158
  %79 = load ptr, ptr %78, align 8, !dbg !4158, !tbaa !1061
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4158
  %81 = load ptr, ptr %80, align 8, !dbg !4158, !tbaa !1061
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4158
  %83 = load ptr, ptr %82, align 8, !dbg !4158, !tbaa !1061
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4158
  %85 = load ptr, ptr %84, align 8, !dbg !4158, !tbaa !1061
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4158
  %87 = load ptr, ptr %86, align 8, !dbg !4158, !tbaa !1061
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4158
  br label %147, !dbg !4159

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.14.136, i32 noundef 5) #40, !dbg !4160
  %91 = load ptr, ptr %4, align 8, !dbg !4160, !tbaa !1061
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4160
  %93 = load ptr, ptr %92, align 8, !dbg !4160, !tbaa !1061
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4160
  %95 = load ptr, ptr %94, align 8, !dbg !4160, !tbaa !1061
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4160
  %97 = load ptr, ptr %96, align 8, !dbg !4160, !tbaa !1061
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4160
  %99 = load ptr, ptr %98, align 8, !dbg !4160, !tbaa !1061
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4160
  %101 = load ptr, ptr %100, align 8, !dbg !4160, !tbaa !1061
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4160
  %103 = load ptr, ptr %102, align 8, !dbg !4160, !tbaa !1061
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4160
  %105 = load ptr, ptr %104, align 8, !dbg !4160, !tbaa !1061
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4160
  br label %147, !dbg !4161

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.15.137, i32 noundef 5) #40, !dbg !4162
  %109 = load ptr, ptr %4, align 8, !dbg !4162, !tbaa !1061
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4162
  %111 = load ptr, ptr %110, align 8, !dbg !4162, !tbaa !1061
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4162
  %113 = load ptr, ptr %112, align 8, !dbg !4162, !tbaa !1061
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4162
  %115 = load ptr, ptr %114, align 8, !dbg !4162, !tbaa !1061
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4162
  %117 = load ptr, ptr %116, align 8, !dbg !4162, !tbaa !1061
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4162
  %119 = load ptr, ptr %118, align 8, !dbg !4162, !tbaa !1061
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4162
  %121 = load ptr, ptr %120, align 8, !dbg !4162, !tbaa !1061
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4162
  %123 = load ptr, ptr %122, align 8, !dbg !4162, !tbaa !1061
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4162
  %125 = load ptr, ptr %124, align 8, !dbg !4162, !tbaa !1061
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4162
  br label %147, !dbg !4163

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.16.138, i32 noundef 5) #40, !dbg !4164
  %129 = load ptr, ptr %4, align 8, !dbg !4164, !tbaa !1061
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4164
  %131 = load ptr, ptr %130, align 8, !dbg !4164, !tbaa !1061
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4164
  %133 = load ptr, ptr %132, align 8, !dbg !4164, !tbaa !1061
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4164
  %135 = load ptr, ptr %134, align 8, !dbg !4164, !tbaa !1061
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4164
  %137 = load ptr, ptr %136, align 8, !dbg !4164, !tbaa !1061
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4164
  %139 = load ptr, ptr %138, align 8, !dbg !4164, !tbaa !1061
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4164
  %141 = load ptr, ptr %140, align 8, !dbg !4164, !tbaa !1061
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4164
  %143 = load ptr, ptr %142, align 8, !dbg !4164, !tbaa !1061
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4164
  %145 = load ptr, ptr %144, align 8, !dbg !4164, !tbaa !1061
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4164
  br label %147, !dbg !4165

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4166
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4167 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4171, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata ptr %1, metadata !4172, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata ptr %2, metadata !4173, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata ptr %3, metadata !4174, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata ptr %4, metadata !4175, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64 0, metadata !4176, metadata !DIExpression()), !dbg !4177
  br label %6, !dbg !4178

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4180
  call void @llvm.dbg.value(metadata i64 %7, metadata !4176, metadata !DIExpression()), !dbg !4177
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4181
  %9 = load ptr, ptr %8, align 8, !dbg !4181, !tbaa !1061
  %10 = icmp eq ptr %9, null, !dbg !4183
  %11 = add i64 %7, 1, !dbg !4184
  call void @llvm.dbg.value(metadata i64 %11, metadata !4176, metadata !DIExpression()), !dbg !4177
  br i1 %10, label %12, label %6, !dbg !4183, !llvm.loop !4185

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4187
  ret void, !dbg !4188
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4189 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4204, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %1, metadata !4205, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %2, metadata !4206, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %3, metadata !4207, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4208, metadata !DIExpression()), !dbg !4213
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4214
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4210, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 0, metadata !4209, metadata !DIExpression()), !dbg !4212
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4209, metadata !DIExpression()), !dbg !4212
  %10 = icmp sgt i32 %9, -1, !dbg !4216
  br i1 %10, label %18, label %11, !dbg !4216

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4216
  store i32 %12, ptr %7, align 8, !dbg !4216
  %13 = icmp ult i32 %9, -7, !dbg !4216
  br i1 %13, label %14, label %18, !dbg !4216

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4216
  %16 = sext i32 %9 to i64, !dbg !4216
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4216
  br label %22, !dbg !4216

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4216
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4216
  store ptr %21, ptr %4, align 8, !dbg !4216
  br label %22, !dbg !4216

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4216
  %25 = load ptr, ptr %24, align 8, !dbg !4216
  store ptr %25, ptr %6, align 8, !dbg !4219, !tbaa !1061
  %26 = icmp eq ptr %25, null, !dbg !4220
  br i1 %26, label %197, label %27, !dbg !4221

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 1, metadata !4209, metadata !DIExpression()), !dbg !4212
  %28 = icmp sgt i32 %23, -1, !dbg !4216
  br i1 %28, label %36, label %29, !dbg !4216

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4216
  store i32 %30, ptr %7, align 8, !dbg !4216
  %31 = icmp ult i32 %23, -7, !dbg !4216
  br i1 %31, label %32, label %36, !dbg !4216

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4216
  %34 = sext i32 %23 to i64, !dbg !4216
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4216
  br label %40, !dbg !4216

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4216
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4216
  store ptr %39, ptr %4, align 8, !dbg !4216
  br label %40, !dbg !4216

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4216
  %43 = load ptr, ptr %42, align 8, !dbg !4216
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4222
  store ptr %43, ptr %44, align 8, !dbg !4219, !tbaa !1061
  %45 = icmp eq ptr %43, null, !dbg !4220
  br i1 %45, label %197, label %46, !dbg !4221

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 2, metadata !4209, metadata !DIExpression()), !dbg !4212
  %47 = icmp sgt i32 %41, -1, !dbg !4216
  br i1 %47, label %55, label %48, !dbg !4216

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4216
  store i32 %49, ptr %7, align 8, !dbg !4216
  %50 = icmp ult i32 %41, -7, !dbg !4216
  br i1 %50, label %51, label %55, !dbg !4216

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4216
  %53 = sext i32 %41 to i64, !dbg !4216
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4216
  br label %59, !dbg !4216

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4216
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4216
  store ptr %58, ptr %4, align 8, !dbg !4216
  br label %59, !dbg !4216

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4216
  %62 = load ptr, ptr %61, align 8, !dbg !4216
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4222
  store ptr %62, ptr %63, align 8, !dbg !4219, !tbaa !1061
  %64 = icmp eq ptr %62, null, !dbg !4220
  br i1 %64, label %197, label %65, !dbg !4221

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 3, metadata !4209, metadata !DIExpression()), !dbg !4212
  %66 = icmp sgt i32 %60, -1, !dbg !4216
  br i1 %66, label %74, label %67, !dbg !4216

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4216
  store i32 %68, ptr %7, align 8, !dbg !4216
  %69 = icmp ult i32 %60, -7, !dbg !4216
  br i1 %69, label %70, label %74, !dbg !4216

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4216
  %72 = sext i32 %60 to i64, !dbg !4216
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4216
  br label %78, !dbg !4216

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4216
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4216
  store ptr %77, ptr %4, align 8, !dbg !4216
  br label %78, !dbg !4216

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4216
  %81 = load ptr, ptr %80, align 8, !dbg !4216
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4222
  store ptr %81, ptr %82, align 8, !dbg !4219, !tbaa !1061
  %83 = icmp eq ptr %81, null, !dbg !4220
  br i1 %83, label %197, label %84, !dbg !4221

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 4, metadata !4209, metadata !DIExpression()), !dbg !4212
  %85 = icmp sgt i32 %79, -1, !dbg !4216
  br i1 %85, label %93, label %86, !dbg !4216

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4216
  store i32 %87, ptr %7, align 8, !dbg !4216
  %88 = icmp ult i32 %79, -7, !dbg !4216
  br i1 %88, label %89, label %93, !dbg !4216

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4216
  %91 = sext i32 %79 to i64, !dbg !4216
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4216
  br label %97, !dbg !4216

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4216
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4216
  store ptr %96, ptr %4, align 8, !dbg !4216
  br label %97, !dbg !4216

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4216
  %100 = load ptr, ptr %99, align 8, !dbg !4216
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4222
  store ptr %100, ptr %101, align 8, !dbg !4219, !tbaa !1061
  %102 = icmp eq ptr %100, null, !dbg !4220
  br i1 %102, label %197, label %103, !dbg !4221

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 5, metadata !4209, metadata !DIExpression()), !dbg !4212
  %104 = icmp sgt i32 %98, -1, !dbg !4216
  br i1 %104, label %112, label %105, !dbg !4216

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4216
  store i32 %106, ptr %7, align 8, !dbg !4216
  %107 = icmp ult i32 %98, -7, !dbg !4216
  br i1 %107, label %108, label %112, !dbg !4216

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4216
  %110 = sext i32 %98 to i64, !dbg !4216
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4216
  br label %116, !dbg !4216

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4216
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4216
  store ptr %115, ptr %4, align 8, !dbg !4216
  br label %116, !dbg !4216

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4216
  %119 = load ptr, ptr %118, align 8, !dbg !4216
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4222
  store ptr %119, ptr %120, align 8, !dbg !4219, !tbaa !1061
  %121 = icmp eq ptr %119, null, !dbg !4220
  br i1 %121, label %197, label %122, !dbg !4221

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 6, metadata !4209, metadata !DIExpression()), !dbg !4212
  %123 = icmp sgt i32 %117, -1, !dbg !4216
  br i1 %123, label %131, label %124, !dbg !4216

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4216
  store i32 %125, ptr %7, align 8, !dbg !4216
  %126 = icmp ult i32 %117, -7, !dbg !4216
  br i1 %126, label %127, label %131, !dbg !4216

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4216
  %129 = sext i32 %117 to i64, !dbg !4216
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4216
  br label %135, !dbg !4216

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4216
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4216
  store ptr %134, ptr %4, align 8, !dbg !4216
  br label %135, !dbg !4216

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4216
  %138 = load ptr, ptr %137, align 8, !dbg !4216
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4222
  store ptr %138, ptr %139, align 8, !dbg !4219, !tbaa !1061
  %140 = icmp eq ptr %138, null, !dbg !4220
  br i1 %140, label %197, label %141, !dbg !4221

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 7, metadata !4209, metadata !DIExpression()), !dbg !4212
  %142 = icmp sgt i32 %136, -1, !dbg !4216
  br i1 %142, label %150, label %143, !dbg !4216

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4216
  store i32 %144, ptr %7, align 8, !dbg !4216
  %145 = icmp ult i32 %136, -7, !dbg !4216
  br i1 %145, label %146, label %150, !dbg !4216

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4216
  %148 = sext i32 %136 to i64, !dbg !4216
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4216
  br label %154, !dbg !4216

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4216
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4216
  store ptr %153, ptr %4, align 8, !dbg !4216
  br label %154, !dbg !4216

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4216
  %157 = load ptr, ptr %156, align 8, !dbg !4216
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4222
  store ptr %157, ptr %158, align 8, !dbg !4219, !tbaa !1061
  %159 = icmp eq ptr %157, null, !dbg !4220
  br i1 %159, label %197, label %160, !dbg !4221

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 8, metadata !4209, metadata !DIExpression()), !dbg !4212
  %161 = icmp sgt i32 %155, -1, !dbg !4216
  br i1 %161, label %169, label %162, !dbg !4216

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4216
  store i32 %163, ptr %7, align 8, !dbg !4216
  %164 = icmp ult i32 %155, -7, !dbg !4216
  br i1 %164, label %165, label %169, !dbg !4216

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4216
  %167 = sext i32 %155 to i64, !dbg !4216
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4216
  br label %173, !dbg !4216

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4216
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4216
  store ptr %172, ptr %4, align 8, !dbg !4216
  br label %173, !dbg !4216

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4216
  %176 = load ptr, ptr %175, align 8, !dbg !4216
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4222
  store ptr %176, ptr %177, align 8, !dbg !4219, !tbaa !1061
  %178 = icmp eq ptr %176, null, !dbg !4220
  br i1 %178, label %197, label %179, !dbg !4221

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 9, metadata !4209, metadata !DIExpression()), !dbg !4212
  %180 = icmp sgt i32 %174, -1, !dbg !4216
  br i1 %180, label %188, label %181, !dbg !4216

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4216
  store i32 %182, ptr %7, align 8, !dbg !4216
  %183 = icmp ult i32 %174, -7, !dbg !4216
  br i1 %183, label %184, label %188, !dbg !4216

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4216
  %186 = sext i32 %174 to i64, !dbg !4216
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4216
  br label %191, !dbg !4216

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4216
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4216
  store ptr %190, ptr %4, align 8, !dbg !4216
  br label %191, !dbg !4216

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4216
  %193 = load ptr, ptr %192, align 8, !dbg !4216
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4222
  store ptr %193, ptr %194, align 8, !dbg !4219, !tbaa !1061
  %195 = icmp eq ptr %193, null, !dbg !4220
  %196 = select i1 %195, i64 9, i64 10, !dbg !4221
  br label %197, !dbg !4221

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4223
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4224
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4225
  ret void, !dbg !4225
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4226 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4230, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata ptr %1, metadata !4231, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata ptr %2, metadata !4232, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata ptr %3, metadata !4233, metadata !DIExpression()), !dbg !4235
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !4236
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4234, metadata !DIExpression()), !dbg !4237
  call void @llvm.va_start(ptr nonnull %5), !dbg !4238
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !4239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4239, !tbaa.struct !2018
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !4239
  call void @llvm.va_end(ptr nonnull %5), !dbg !4240
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !4241
  ret void, !dbg !4241
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4242 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4243, !tbaa !1061
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %1), !dbg !4243
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.17.143, i32 noundef 5) #40, !dbg !4244
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.144) #40, !dbg !4244
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.19.145, i32 noundef 5) #40, !dbg !4245
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.146, ptr noundef nonnull @.str.21.147) #40, !dbg !4245
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.22.148, i32 noundef 5) #40, !dbg !4246
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.149) #40, !dbg !4246
  ret void, !dbg !4247
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4248 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4253, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !4254, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %2, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata ptr %0, metadata !4257, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %1, metadata !4260, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %2, metadata !4261, metadata !DIExpression()), !dbg !4262
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4264
  call void @llvm.dbg.value(metadata ptr %4, metadata !4265, metadata !DIExpression()), !dbg !4270
  %5 = icmp eq ptr %4, null, !dbg !4272
  br i1 %5, label %6, label %7, !dbg !4274

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4275
  unreachable, !dbg !4275

7:                                                ; preds = %3
  ret ptr %4, !dbg !4276
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4258 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4257, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %1, metadata !4260, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %2, metadata !4261, metadata !DIExpression()), !dbg !4277
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4278
  call void @llvm.dbg.value(metadata ptr %4, metadata !4265, metadata !DIExpression()), !dbg !4279
  %5 = icmp eq ptr %4, null, !dbg !4281
  br i1 %5, label %6, label %7, !dbg !4282

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4283
  unreachable, !dbg !4283

7:                                                ; preds = %3
  ret ptr %4, !dbg !4284
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4285 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()), !dbg !4290
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4291
  call void @llvm.dbg.value(metadata ptr %2, metadata !4265, metadata !DIExpression()), !dbg !4292
  %3 = icmp eq ptr %2, null, !dbg !4294
  br i1 %3, label %4, label %5, !dbg !4295

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4296
  unreachable, !dbg !4296

5:                                                ; preds = %1
  ret ptr %2, !dbg !4297
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4298 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4299 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4303, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %0, metadata !4305, metadata !DIExpression()), !dbg !4309
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4311
  call void @llvm.dbg.value(metadata ptr %2, metadata !4265, metadata !DIExpression()), !dbg !4312
  %3 = icmp eq ptr %2, null, !dbg !4314
  br i1 %3, label %4, label %5, !dbg !4315

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4316
  unreachable, !dbg !4316

5:                                                ; preds = %1
  ret ptr %2, !dbg !4317
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4318 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4322, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()), !dbg !4324
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4326
  call void @llvm.dbg.value(metadata ptr %2, metadata !4265, metadata !DIExpression()), !dbg !4327
  %3 = icmp eq ptr %2, null, !dbg !4329
  br i1 %3, label %4, label %5, !dbg !4330

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4331
  unreachable, !dbg !4331

5:                                                ; preds = %1
  ret ptr %2, !dbg !4332
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4333 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4337, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %1, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i64 %1, metadata !4344, metadata !DIExpression()), !dbg !4345
  %3 = icmp eq i64 %1, 0, !dbg !4347
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4347
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4348
  call void @llvm.dbg.value(metadata ptr %5, metadata !4265, metadata !DIExpression()), !dbg !4349
  %6 = icmp eq ptr %5, null, !dbg !4351
  br i1 %6, label %7, label %8, !dbg !4352

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4353
  unreachable, !dbg !4353

8:                                                ; preds = %2
  ret ptr %5, !dbg !4354
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4355 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4360, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %1, metadata !4361, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata ptr %0, metadata !4363, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %1, metadata !4366, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %1, metadata !4344, metadata !DIExpression()), !dbg !4369
  %3 = icmp eq i64 %1, 0, !dbg !4371
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4371
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4372
  call void @llvm.dbg.value(metadata ptr %5, metadata !4265, metadata !DIExpression()), !dbg !4373
  %6 = icmp eq ptr %5, null, !dbg !4375
  br i1 %6, label %7, label %8, !dbg !4376

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4377
  unreachable, !dbg !4377

8:                                                ; preds = %2
  ret ptr %5, !dbg !4378
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4379 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4383, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %1, metadata !4384, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %2, metadata !4385, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %0, metadata !4387, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %1, metadata !4390, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %2, metadata !4391, metadata !DIExpression()), !dbg !4392
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4394
  call void @llvm.dbg.value(metadata ptr %4, metadata !4265, metadata !DIExpression()), !dbg !4395
  %5 = icmp eq ptr %4, null, !dbg !4397
  br i1 %5, label %6, label %7, !dbg !4398

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4399
  unreachable, !dbg !4399

7:                                                ; preds = %3
  ret ptr %4, !dbg !4400
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4401 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4405, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 %1, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata ptr null, metadata !4257, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %0, metadata !4260, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %1, metadata !4261, metadata !DIExpression()), !dbg !4408
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4410
  call void @llvm.dbg.value(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4411
  %4 = icmp eq ptr %3, null, !dbg !4413
  br i1 %4, label %5, label %6, !dbg !4414

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4415
  unreachable, !dbg !4415

6:                                                ; preds = %2
  ret ptr %3, !dbg !4416
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4417 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4421, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i64 %1, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata ptr null, metadata !4383, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %0, metadata !4384, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %1, metadata !4385, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata ptr null, metadata !4387, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %0, metadata !4390, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %1, metadata !4391, metadata !DIExpression()), !dbg !4426
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4428
  call void @llvm.dbg.value(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4429
  %4 = icmp eq ptr %3, null, !dbg !4431
  br i1 %4, label %5, label %6, !dbg !4432

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4433
  unreachable, !dbg !4433

6:                                                ; preds = %2
  ret ptr %3, !dbg !4434
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4435 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4439, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %1, metadata !4440, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %0, metadata !989, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %1, metadata !990, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 1, metadata !991, metadata !DIExpression()), !dbg !4442
  %3 = load i64, ptr %1, align 8, !dbg !4444, !tbaa !1338
  call void @llvm.dbg.value(metadata i64 %3, metadata !992, metadata !DIExpression()), !dbg !4442
  %4 = icmp eq ptr %0, null, !dbg !4445
  br i1 %4, label %5, label %8, !dbg !4447

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4448
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4451
  br label %15, !dbg !4451

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4452
  %10 = add nuw i64 %9, 1, !dbg !4452
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4452
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4452
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4452
  call void @llvm.dbg.value(metadata i64 %13, metadata !992, metadata !DIExpression()), !dbg !4442
  br i1 %12, label %14, label %15, !dbg !4455

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4456
  unreachable, !dbg !4456

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4442
  call void @llvm.dbg.value(metadata i64 %16, metadata !992, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %0, metadata !4257, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 %16, metadata !4260, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 1, metadata !4261, metadata !DIExpression()), !dbg !4457
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4459
  call void @llvm.dbg.value(metadata ptr %17, metadata !4265, metadata !DIExpression()), !dbg !4460
  %18 = icmp eq ptr %17, null, !dbg !4462
  br i1 %18, label %19, label %20, !dbg !4463

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4464
  unreachable, !dbg !4464

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !989, metadata !DIExpression()), !dbg !4442
  store i64 %16, ptr %1, align 8, !dbg !4465, !tbaa !1338
  ret ptr %17, !dbg !4466
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !984 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !989, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata ptr %1, metadata !990, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i64 %2, metadata !991, metadata !DIExpression()), !dbg !4467
  %4 = load i64, ptr %1, align 8, !dbg !4468, !tbaa !1338
  call void @llvm.dbg.value(metadata i64 %4, metadata !992, metadata !DIExpression()), !dbg !4467
  %5 = icmp eq ptr %0, null, !dbg !4469
  br i1 %5, label %6, label %13, !dbg !4470

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4471
  br i1 %7, label %8, label %20, !dbg !4472

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %9, metadata !992, metadata !DIExpression()), !dbg !4467
  %10 = icmp ugt i64 %2, 128, !dbg !4475
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4476
  call void @llvm.dbg.value(metadata i64 %12, metadata !992, metadata !DIExpression()), !dbg !4467
  br label %20, !dbg !4477

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4478
  %15 = add nuw i64 %14, 1, !dbg !4478
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4478
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4478
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4478
  call void @llvm.dbg.value(metadata i64 %18, metadata !992, metadata !DIExpression()), !dbg !4467
  br i1 %17, label %19, label %20, !dbg !4479

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4480
  unreachable, !dbg !4480

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4467
  call void @llvm.dbg.value(metadata i64 %21, metadata !992, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata ptr %0, metadata !4257, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i64 %21, metadata !4260, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i64 %2, metadata !4261, metadata !DIExpression()), !dbg !4481
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4483
  call void @llvm.dbg.value(metadata ptr %22, metadata !4265, metadata !DIExpression()), !dbg !4484
  %23 = icmp eq ptr %22, null, !dbg !4486
  br i1 %23, label %24, label %25, !dbg !4487

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4488
  unreachable, !dbg !4488

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !989, metadata !DIExpression()), !dbg !4467
  store i64 %21, ptr %1, align 8, !dbg !4489, !tbaa !1338
  ret ptr %22, !dbg !4490
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !996 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1001, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata ptr %1, metadata !1002, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %2, metadata !1003, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %3, metadata !1004, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %4, metadata !1005, metadata !DIExpression()), !dbg !4491
  %6 = load i64, ptr %1, align 8, !dbg !4492, !tbaa !1338
  call void @llvm.dbg.value(metadata i64 %6, metadata !1006, metadata !DIExpression()), !dbg !4491
  %7 = ashr i64 %6, 1, !dbg !4493
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4493
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4493
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4493
  call void @llvm.dbg.value(metadata i64 %10, metadata !1007, metadata !DIExpression()), !dbg !4491
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %11, metadata !1007, metadata !DIExpression()), !dbg !4491
  %12 = icmp sgt i64 %3, -1, !dbg !4496
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4498
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %15, metadata !1007, metadata !DIExpression()), !dbg !4491
  %16 = icmp slt i64 %4, 0, !dbg !4499
  br i1 %16, label %17, label %30, !dbg !4499

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4499
  br i1 %18, label %19, label %24, !dbg !4499

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4499
  %21 = udiv i64 9223372036854775807, %20, !dbg !4499
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4499
  br i1 %23, label %46, label %43, !dbg !4499

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4499
  br i1 %25, label %43, label %26, !dbg !4499

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4499
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4499
  %29 = icmp ult i64 %28, %15, !dbg !4499
  br i1 %29, label %46, label %43, !dbg !4499

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4499
  br i1 %31, label %43, label %32, !dbg !4499

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4499
  br i1 %33, label %34, label %40, !dbg !4499

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4499
  br i1 %35, label %43, label %36, !dbg !4499

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4499
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4499
  %39 = icmp ult i64 %38, %4, !dbg !4499
  br i1 %39, label %46, label %43, !dbg !4499

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4499
  br i1 %42, label %46, label %43, !dbg !4499

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1008, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4491
  %44 = mul i64 %15, %4, !dbg !4499
  call void @llvm.dbg.value(metadata i64 %44, metadata !1008, metadata !DIExpression()), !dbg !4491
  %45 = icmp slt i64 %44, 128, !dbg !4499
  br i1 %45, label %46, label %52, !dbg !4499

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1009, metadata !DIExpression()), !dbg !4491
  %48 = sdiv i64 %47, %4, !dbg !4500
  call void @llvm.dbg.value(metadata i64 %48, metadata !1007, metadata !DIExpression()), !dbg !4491
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %51, metadata !1008, metadata !DIExpression()), !dbg !4491
  br label %52, !dbg !4504

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4491
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4491
  call void @llvm.dbg.value(metadata i64 %54, metadata !1008, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %53, metadata !1007, metadata !DIExpression()), !dbg !4491
  %55 = icmp eq ptr %0, null, !dbg !4505
  br i1 %55, label %56, label %57, !dbg !4507

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4508, !tbaa !1338
  br label %57, !dbg !4509

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4510
  %59 = icmp slt i64 %58, %2, !dbg !4512
  br i1 %59, label %60, label %97, !dbg !4513

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4514
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4514
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %63, metadata !1007, metadata !DIExpression()), !dbg !4491
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4515
  br i1 %66, label %96, label %67, !dbg !4515

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4516

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4516
  br i1 %69, label %70, label %75, !dbg !4516

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4516
  %72 = udiv i64 9223372036854775807, %71, !dbg !4516
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4516
  br i1 %74, label %96, label %94, !dbg !4516

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4516
  br i1 %76, label %94, label %77, !dbg !4516

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4516
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4516
  %80 = icmp ult i64 %79, %63, !dbg !4516
  br i1 %80, label %96, label %94, !dbg !4516

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4516
  br i1 %82, label %94, label %83, !dbg !4516

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4516
  br i1 %84, label %85, label %91, !dbg !4516

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4516
  br i1 %86, label %94, label %87, !dbg !4516

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4516
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4516
  %90 = icmp ult i64 %89, %4, !dbg !4516
  br i1 %90, label %96, label %94, !dbg !4516

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4516
  br i1 %93, label %96, label %94, !dbg !4516

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !1008, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4491
  %95 = mul i64 %63, %4, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %95, metadata !1008, metadata !DIExpression()), !dbg !4491
  br label %97, !dbg !4517

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #42, !dbg !4518
  unreachable, !dbg !4518

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4491
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4491
  call void @llvm.dbg.value(metadata i64 %99, metadata !1008, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %98, metadata !1007, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata ptr %0, metadata !4337, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i64 %99, metadata !4338, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %99, metadata !4344, metadata !DIExpression()), !dbg !4521
  %100 = icmp eq i64 %99, 0, !dbg !4523
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4523
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #47, !dbg !4524
  call void @llvm.dbg.value(metadata ptr %102, metadata !4265, metadata !DIExpression()), !dbg !4525
  %103 = icmp eq ptr %102, null, !dbg !4527
  br i1 %103, label %104, label %105, !dbg !4528

104:                                              ; preds = %97
  tail call void @xalloc_die() #42, !dbg !4529
  unreachable, !dbg !4529

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !1001, metadata !DIExpression()), !dbg !4491
  store i64 %98, ptr %1, align 8, !dbg !4530, !tbaa !1338
  ret ptr %102, !dbg !4531
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4532 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %0, metadata !4536, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i64 1, metadata !4539, metadata !DIExpression()), !dbg !4540
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4542
  call void @llvm.dbg.value(metadata ptr %2, metadata !4265, metadata !DIExpression()), !dbg !4543
  %3 = icmp eq ptr %2, null, !dbg !4545
  br i1 %3, label %4, label %5, !dbg !4546

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4547
  unreachable, !dbg !4547

5:                                                ; preds = %1
  ret ptr %2, !dbg !4548
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4549 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4537 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4536, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %1, metadata !4539, metadata !DIExpression()), !dbg !4550
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4551
  call void @llvm.dbg.value(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4552
  %4 = icmp eq ptr %3, null, !dbg !4554
  br i1 %4, label %5, label %6, !dbg !4555

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4556
  unreachable, !dbg !4556

6:                                                ; preds = %2
  ret ptr %3, !dbg !4557
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4558 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4560, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i64 %0, metadata !4562, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 1, metadata !4565, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %0, metadata !4568, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 1, metadata !4571, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %0, metadata !4568, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 1, metadata !4571, metadata !DIExpression()), !dbg !4572
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4574
  call void @llvm.dbg.value(metadata ptr %2, metadata !4265, metadata !DIExpression()), !dbg !4575
  %3 = icmp eq ptr %2, null, !dbg !4577
  br i1 %3, label %4, label %5, !dbg !4578

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4579
  unreachable, !dbg !4579

5:                                                ; preds = %1
  ret ptr %2, !dbg !4580
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4563 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4562, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 %1, metadata !4565, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 %0, metadata !4568, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64 %1, metadata !4571, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64 %0, metadata !4568, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64 %1, metadata !4571, metadata !DIExpression()), !dbg !4582
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4584
  call void @llvm.dbg.value(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4585
  %4 = icmp eq ptr %3, null, !dbg !4587
  br i1 %4, label %5, label %6, !dbg !4588

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4589
  unreachable, !dbg !4589

6:                                                ; preds = %2
  ret ptr %3, !dbg !4590
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4591 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4595, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 %1, metadata !4596, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 %1, metadata !4289, metadata !DIExpression()), !dbg !4598
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4600
  call void @llvm.dbg.value(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4601
  %4 = icmp eq ptr %3, null, !dbg !4603
  br i1 %4, label %5, label %6, !dbg !4604

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4605
  unreachable, !dbg !4605

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4606, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata ptr %0, metadata !4609, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %1, metadata !4610, metadata !DIExpression()), !dbg !4611
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4613
  ret ptr %3, !dbg !4614
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4615 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4619, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %1, metadata !4620, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %1, metadata !4303, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64 %1, metadata !4305, metadata !DIExpression()), !dbg !4624
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4626
  call void @llvm.dbg.value(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4627
  %4 = icmp eq ptr %3, null, !dbg !4629
  br i1 %4, label %5, label %6, !dbg !4630

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4631
  unreachable, !dbg !4631

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4606, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata ptr %0, metadata !4609, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %1, metadata !4610, metadata !DIExpression()), !dbg !4632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4634
  ret ptr %3, !dbg !4635
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4636 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4640, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 %1, metadata !4641, metadata !DIExpression()), !dbg !4643
  %3 = add nsw i64 %1, 1, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %3, metadata !4303, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i64 %3, metadata !4305, metadata !DIExpression()), !dbg !4647
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4649
  call void @llvm.dbg.value(metadata ptr %4, metadata !4265, metadata !DIExpression()), !dbg !4650
  %5 = icmp eq ptr %4, null, !dbg !4652
  br i1 %5, label %6, label %7, !dbg !4653

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4654
  unreachable, !dbg !4654

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4642, metadata !DIExpression()), !dbg !4643
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4655
  store i8 0, ptr %8, align 1, !dbg !4656, !tbaa !1150
  call void @llvm.dbg.value(metadata ptr %4, metadata !4606, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata ptr %0, metadata !4609, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %1, metadata !4610, metadata !DIExpression()), !dbg !4657
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4659
  ret ptr %4, !dbg !4660
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4661 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4663, metadata !DIExpression()), !dbg !4664
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4665
  %3 = add i64 %2, 1, !dbg !4666
  call void @llvm.dbg.value(metadata ptr %0, metadata !4595, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata i64 %3, metadata !4596, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata i64 %3, metadata !4289, metadata !DIExpression()), !dbg !4669
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4671
  call void @llvm.dbg.value(metadata ptr %4, metadata !4265, metadata !DIExpression()), !dbg !4672
  %5 = icmp eq ptr %4, null, !dbg !4674
  br i1 %5, label %6, label %7, !dbg !4675

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4676
  unreachable, !dbg !4676

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4606, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata ptr %0, metadata !4609, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 %3, metadata !4610, metadata !DIExpression()), !dbg !4677
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4679
  ret ptr %4, !dbg !4680
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4681 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4686, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %1, metadata !4683, metadata !DIExpression()), !dbg !4687
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #40, !dbg !4686
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #40, !dbg !4686
  %3 = icmp eq i32 %1, 0, !dbg !4686
  tail call void @llvm.assume(i1 %3), !dbg !4686
  tail call void @abort() #42, !dbg !4688
  unreachable, !dbg !4688
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4689 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4693, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i32 %1, metadata !4694, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %2, metadata !4695, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %3, metadata !4696, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata ptr %4, metadata !4697, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata ptr %5, metadata !4698, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i32 %6, metadata !4699, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i32 %7, metadata !4700, metadata !DIExpression()), !dbg !4710
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40, !dbg !4711
  call void @llvm.dbg.value(metadata ptr %9, metadata !4701, metadata !DIExpression(DW_OP_deref)), !dbg !4710
  %10 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #40, !dbg !4712
  call void @llvm.dbg.value(metadata i32 %10, metadata !4703, metadata !DIExpression()), !dbg !4710
  %11 = icmp eq i32 %10, 4, !dbg !4713
  br i1 %11, label %41, label %12, !dbg !4715

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4716, !tbaa !1338
  call void @llvm.dbg.value(metadata i64 %13, metadata !4701, metadata !DIExpression()), !dbg !4710
  %14 = icmp slt i64 %13, %2, !dbg !4719
  br i1 %14, label %15, label %20, !dbg !4720

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !4702, metadata !DIExpression()), !dbg !4710
  %16 = and i32 %7, 4, !dbg !4721
  %17 = icmp eq i32 %16, 0, !dbg !4723
  %18 = select i1 %17, i32 75, i32 34, !dbg !4723
  call void @llvm.dbg.value(metadata i32 %18, metadata !4705, metadata !DIExpression()), !dbg !4710
  %19 = icmp eq i32 %10, 0, !dbg !4724
  call void @llvm.dbg.value(metadata i32 undef, metadata !4703, metadata !DIExpression()), !dbg !4710
  br i1 %19, label %34, label %27, !dbg !4726

20:                                               ; preds = %12
  %21 = icmp sgt i64 %13, %3, !dbg !4727
  br i1 %21, label %22, label %27, !dbg !4729

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !4702, metadata !DIExpression()), !dbg !4710
  %23 = and i32 %7, 8, !dbg !4730
  %24 = icmp eq i32 %23, 0, !dbg !4732
  %25 = select i1 %24, i32 75, i32 34, !dbg !4732
  call void @llvm.dbg.value(metadata i32 %25, metadata !4705, metadata !DIExpression()), !dbg !4710
  %26 = icmp eq i32 %10, 0, !dbg !4733
  call void @llvm.dbg.value(metadata i32 undef, metadata !4703, metadata !DIExpression()), !dbg !4710
  br i1 %26, label %34, label %27, !dbg !4735

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !4702, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i32 %10, metadata !4703, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i32 %28, metadata !4705, metadata !DIExpression()), !dbg !4710
  %30 = icmp eq i32 %10, 1, !dbg !4736
  %31 = select i1 %30, i32 %28, i32 0, !dbg !4737
  call void @llvm.dbg.value(metadata i32 %31, metadata !4706, metadata !DIExpression()), !dbg !4710
  %32 = icmp eq i32 %10, 0, !dbg !4738
  br i1 %32, label %46, label %33, !dbg !4739

33:                                               ; preds = %27
  br i1 %30, label %34, label %41, !dbg !4740

34:                                               ; preds = %22, %15, %33
  %35 = phi i64 [ %29, %33 ], [ %3, %22 ], [ %2, %15 ]
  %36 = phi i32 [ %28, %33 ], [ %25, %22 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4701, metadata !DIExpression()), !dbg !4710
  %37 = icmp slt i64 %13, 0, !dbg !4741
  %38 = select i1 %37, i32 1, i32 2, !dbg !4742
  %39 = and i32 %38, %7, !dbg !4743
  %40 = icmp eq i32 %39, 0, !dbg !4743
  br i1 %40, label %41, label %46, !dbg !4744

41:                                               ; preds = %8, %34, %33
  %42 = phi i32 [ %36, %34 ], [ 0, %33 ], [ 0, %8 ]
  %43 = icmp eq i32 %6, 0, !dbg !4745
  %44 = select i1 %43, i32 1, i32 %6, !dbg !4745
  %45 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !4745
  call void (i32, i32, ptr, ...) @error(i32 noundef %44, i32 noundef %42, ptr noundef nonnull @.str.167, ptr noundef nonnull %5, ptr noundef %45) #40, !dbg !4745
  unreachable, !dbg !4745

46:                                               ; preds = %34, %27
  %47 = phi i32 [ %36, %34 ], [ %31, %27 ]
  %48 = phi i64 [ %35, %34 ], [ %29, %27 ]
  %49 = tail call ptr @__errno_location() #43, !dbg !4746
  store i32 %47, ptr %49, align 4, !dbg !4747, !tbaa !1141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !4748
  ret i64 %48, !dbg !4749
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4750 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4754, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %1, metadata !4755, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %2, metadata !4756, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata ptr %3, metadata !4757, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata ptr %4, metadata !4758, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i32 %5, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata ptr %0, metadata !4693, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 10, metadata !4694, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %1, metadata !4695, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %2, metadata !4696, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata ptr %3, metadata !4697, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata ptr %4, metadata !4698, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 %5, metadata !4699, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 0, metadata !4700, metadata !DIExpression()), !dbg !4761
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !4763
  call void @llvm.dbg.value(metadata ptr %7, metadata !4701, metadata !DIExpression(DW_OP_deref)), !dbg !4761
  %8 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #40, !dbg !4764
  call void @llvm.dbg.value(metadata i32 %8, metadata !4703, metadata !DIExpression()), !dbg !4761
  %9 = icmp eq i32 %8, 4, !dbg !4765
  br i1 %9, label %22, label %10, !dbg !4766

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4767, !tbaa !1338
  call void @llvm.dbg.value(metadata i64 %11, metadata !4701, metadata !DIExpression()), !dbg !4761
  %12 = icmp slt i64 %11, %1, !dbg !4768
  br i1 %12, label %13, label %15, !dbg !4769

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !4702, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 75, metadata !4705, metadata !DIExpression()), !dbg !4761
  %14 = icmp eq i32 %8, 0, !dbg !4770
  call void @llvm.dbg.value(metadata i32 undef, metadata !4703, metadata !DIExpression()), !dbg !4761
  br i1 %14, label %21, label %19, !dbg !4771

15:                                               ; preds = %10
  %16 = icmp sgt i64 %11, %2, !dbg !4772
  br i1 %16, label %17, label %19, !dbg !4773

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !4702, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 75, metadata !4705, metadata !DIExpression()), !dbg !4761
  %18 = icmp eq i32 %8, 0, !dbg !4774
  call void @llvm.dbg.value(metadata i32 undef, metadata !4703, metadata !DIExpression()), !dbg !4761
  br i1 %18, label %21, label %19, !dbg !4775

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !4702, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 %8, metadata !4703, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 75, metadata !4705, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 poison, metadata !4706, metadata !DIExpression()), !dbg !4761
  switch i32 %8, label %22 [
    i32 0, label %27
    i32 1, label %21
  ], !dbg !4776

21:                                               ; preds = %19, %17, %13
  call void @llvm.dbg.value(metadata i64 %11, metadata !4701, metadata !DIExpression()), !dbg !4761
  br label %22

22:                                               ; preds = %19, %21, %6
  %23 = phi i32 [ 75, %21 ], [ 0, %6 ], [ 0, %19 ]
  %24 = icmp eq i32 %5, 0, !dbg !4777
  %25 = select i1 %24, i32 1, i32 %5, !dbg !4777
  %26 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !4777
  call void (i32, i32, ptr, ...) @error(i32 noundef %25, i32 noundef %23, ptr noundef nonnull @.str.167, ptr noundef nonnull %4, ptr noundef %26) #40, !dbg !4777
  unreachable, !dbg !4777

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !4706, metadata !DIExpression()), !dbg !4761
  %28 = tail call ptr @__errno_location() #43, !dbg !4778
  store i32 0, ptr %28, align 4, !dbg !4779, !tbaa !1141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !4780
  ret i64 %20, !dbg !4781
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4782 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4788, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr %1, metadata !4789, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 %2, metadata !4790, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr %3, metadata !4791, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr %4, metadata !4792, metadata !DIExpression()), !dbg !4802
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !4803
  %7 = icmp eq ptr %1, null, !dbg !4804
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4804
  call void @llvm.dbg.value(metadata ptr %8, metadata !4794, metadata !DIExpression()), !dbg !4802
  %9 = tail call ptr @__errno_location() #43, !dbg !4805
  store i32 0, ptr %9, align 4, !dbg !4806, !tbaa !1141
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef %8, i32 noundef %2) #40, !dbg !4807
  call void @llvm.dbg.value(metadata i64 %10, metadata !4795, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 0, metadata !4796, metadata !DIExpression()), !dbg !4802
  %11 = load ptr, ptr %8, align 8, !dbg !4808, !tbaa !1061
  %12 = icmp eq ptr %11, %0, !dbg !4810
  br i1 %12, label %13, label %22, !dbg !4811

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4812
  br i1 %14, label %990, label %15, !dbg !4815

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4816, !tbaa !1150
  %17 = icmp eq i8 %16, 0, !dbg !4816
  br i1 %17, label %990, label %18, !dbg !4817

18:                                               ; preds = %15
  %19 = zext i8 %16 to i32, !dbg !4816
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #41, !dbg !4818
  %21 = icmp eq ptr %20, null, !dbg !4818
  br i1 %21, label %990, label %29, !dbg !4819

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4820, !tbaa !1141
  switch i32 %23, label %990 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4822

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !4796, metadata !DIExpression()), !dbg !4802
  br label %25, !dbg !4823

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4802
  call void @llvm.dbg.value(metadata i32 %26, metadata !4796, metadata !DIExpression()), !dbg !4802
  %27 = icmp eq ptr %4, null, !dbg !4825
  br i1 %27, label %28, label %29, !dbg !4827

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !4795, metadata !DIExpression()), !dbg !4802
  store i64 %10, ptr %3, align 8, !dbg !4828, !tbaa !1338
  br label %990, !dbg !4830

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4831, !tbaa !1150
  %33 = icmp eq i8 %32, 0, !dbg !4832
  br i1 %33, label %987, label %34, !dbg !4833

34:                                               ; preds = %29
  %35 = zext i8 %32 to i32, !dbg !4831
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #41, !dbg !4834
  %37 = icmp eq ptr %36, null, !dbg !4834
  br i1 %37, label %38, label %40, !dbg !4836

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %10, metadata !4795, metadata !DIExpression()), !dbg !4802
  store i64 %31, ptr %3, align 8, !dbg !4837, !tbaa !1338
  %39 = or i32 %30, 2, !dbg !4839
  br label %990, !dbg !4840

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 1024, metadata !4797, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 1, metadata !4800, metadata !DIExpression()), !dbg !4841
  switch i8 %32, label %53 [
    i8 69, label %41
    i8 71, label %41
    i8 103, label %41
    i8 107, label %41
    i8 75, label %41
    i8 77, label %41
    i8 109, label %41
    i8 80, label %41
    i8 81, label %41
    i8 82, label %41
    i8 84, label %41
    i8 116, label %41
    i8 89, label %41
    i8 90, label %41
  ], !dbg !4842

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #41, !dbg !4843
  %43 = icmp eq ptr %42, null, !dbg !4843
  br i1 %43, label %53, label %44, !dbg !4846

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4847
  %46 = load i8, ptr %45, align 1, !dbg !4847, !tbaa !1150
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !4848

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4849
  %49 = load i8, ptr %48, align 1, !dbg !4849, !tbaa !1150
  %50 = icmp eq i8 %49, 66, !dbg !4852
  %51 = select i1 %50, i64 3, i64 1, !dbg !4853
  br label %53, !dbg !4853

52:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !4797, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 2, metadata !4800, metadata !DIExpression()), !dbg !4841
  br label %53, !dbg !4854

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ]
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4800, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 poison, metadata !4797, metadata !DIExpression()), !dbg !4841
  switch i8 %32, label %985 [
    i8 98, label %68
    i8 66, label %76
    i8 99, label %976
    i8 69, label %66
    i8 71, label %180
    i8 103, label %180
    i8 107, label %230
    i8 75, label %230
    i8 77, label %243
    i8 109, label %243
    i8 80, label %64
    i8 81, label %62
    i8 82, label %60
    i8 84, label %661
    i8 116, label %661
    i8 119, label %727
    i8 89, label %58
    i8 90, label %56
  ], !dbg !4855

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 7, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 6, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4874
  %57 = icmp slt i64 %31, 0, !dbg !4876
  br i1 %57, label %864, label %870, !dbg !4876

58:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 8, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 7, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4880
  %59 = icmp slt i64 %31, 0, !dbg !4882
  br i1 %59, label %736, label %742, !dbg !4882

60:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 9, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 8, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %61 = icmp slt i64 %31, 0, !dbg !4887
  br i1 %61, label %517, label %523, !dbg !4887

62:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 10, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 9, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %63 = icmp slt i64 %31, 0, !dbg !4892
  br i1 %63, label %357, label %363, !dbg !4892

64:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 5, metadata !4863, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 4, metadata !4863, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4895
  %65 = icmp slt i64 %31, 0, !dbg !4897
  br i1 %65, label %277, label %283, !dbg !4897

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 6, metadata !4863, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 5, metadata !4863, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4900
  %67 = icmp slt i64 %31, 0, !dbg !4902
  br i1 %67, label %84, label %90, !dbg !4902

68:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i32 512, metadata !4872, metadata !DIExpression()), !dbg !4903
  %69 = icmp slt i64 %31, 0, !dbg !4905
  br i1 %69, label %70, label %72, !dbg !4905

70:                                               ; preds = %68
  %71 = icmp ult i64 %31, -18014398509481984, !dbg !4905
  br i1 %71, label %976, label %74, !dbg !4905

72:                                               ; preds = %68
  %73 = icmp ugt i64 %31, 18014398509481983, !dbg !4905
  br i1 %73, label %976, label %74, !dbg !4905

74:                                               ; preds = %70, %72
  %75 = shl nsw i64 %31, 9, !dbg !4905
  call void @llvm.dbg.value(metadata i64 %75, metadata !4873, metadata !DIExpression()), !dbg !4903
  br label %976, !dbg !4906

76:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i32 1024, metadata !4872, metadata !DIExpression()), !dbg !4907
  %77 = icmp slt i64 %31, 0, !dbg !4909
  br i1 %77, label %78, label %80, !dbg !4909

78:                                               ; preds = %76
  %79 = icmp ult i64 %31, -9007199254740992, !dbg !4909
  br i1 %79, label %976, label %82, !dbg !4909

80:                                               ; preds = %76
  %81 = icmp ugt i64 %31, 9007199254740991, !dbg !4909
  br i1 %81, label %976, label %82, !dbg !4909

82:                                               ; preds = %78, %80
  %83 = shl nsw i64 %31, 10, !dbg !4909
  call void @llvm.dbg.value(metadata i64 %83, metadata !4873, metadata !DIExpression()), !dbg !4907
  br label %976, !dbg !4910

84:                                               ; preds = %66
  %85 = icmp eq i64 %31, -1, !dbg !4902
  br i1 %85, label %93, label %86, !dbg !4902

86:                                               ; preds = %84
  %87 = sub i64 0, %31, !dbg !4902
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4902
  %89 = icmp ult i64 %88, %54, !dbg !4902
  br i1 %89, label %101, label %93, !dbg !4902

90:                                               ; preds = %66
  %91 = udiv i64 9223372036854775807, %54, !dbg !4902
  %92 = icmp ult i64 %91, %31, !dbg !4902
  br i1 %92, label %96, label %93, !dbg !4902

93:                                               ; preds = %84, %86, %90
  %94 = mul i64 %31, %54, !dbg !4902
  call void @llvm.dbg.value(metadata i64 %94, metadata !4873, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 4, metadata !4863, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4900
  %95 = icmp slt i64 %94, 0, !dbg !4902
  br i1 %95, label %101, label %96, !dbg !4902

96:                                               ; preds = %90, %93
  %97 = phi i32 [ 0, %93 ], [ 1, %90 ]
  %98 = phi i64 [ %94, %93 ], [ 9223372036854775807, %90 ]
  %99 = udiv i64 9223372036854775807, %54, !dbg !4902
  %100 = icmp ult i64 %99, %98, !dbg !4902
  br i1 %100, label %112, label %107, !dbg !4902

101:                                              ; preds = %86, %93
  %102 = phi i32 [ 0, %93 ], [ 1, %86 ]
  %103 = phi i64 [ %94, %93 ], [ -9223372036854775808, %86 ]
  %104 = sub i64 0, %103, !dbg !4902
  %105 = udiv i64 -9223372036854775808, %104, !dbg !4902
  %106 = icmp ult i64 %105, %54, !dbg !4902
  br i1 %106, label %117, label %107, !dbg !4902

107:                                              ; preds = %96, %101
  %108 = phi i32 [ %102, %101 ], [ %97, %96 ]
  %109 = phi i64 [ %103, %101 ], [ %98, %96 ]
  %110 = mul i64 %109, %54, !dbg !4902
  call void @llvm.dbg.value(metadata i64 %110, metadata !4873, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 %108, metadata !4856, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 3, metadata !4863, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4900
  %111 = icmp slt i64 %110, 0, !dbg !4902
  br i1 %111, label %117, label %112, !dbg !4902

112:                                              ; preds = %96, %107
  %113 = phi i32 [ %108, %107 ], [ 1, %96 ]
  %114 = phi i64 [ %110, %107 ], [ 9223372036854775807, %96 ]
  %115 = udiv i64 9223372036854775807, %54, !dbg !4902
  %116 = icmp ult i64 %115, %114, !dbg !4902
  br i1 %116, label %128, label %123, !dbg !4902

117:                                              ; preds = %101, %107
  %118 = phi i32 [ %108, %107 ], [ 1, %101 ]
  %119 = phi i64 [ %110, %107 ], [ -9223372036854775808, %101 ]
  %120 = sub i64 0, %119, !dbg !4902
  %121 = udiv i64 -9223372036854775808, %120, !dbg !4902
  %122 = icmp ult i64 %121, %54, !dbg !4902
  br i1 %122, label %133, label %123, !dbg !4902

123:                                              ; preds = %112, %117
  %124 = phi i32 [ %118, %117 ], [ %113, %112 ]
  %125 = phi i64 [ %119, %117 ], [ %114, %112 ]
  %126 = mul i64 %125, %54, !dbg !4902
  call void @llvm.dbg.value(metadata i64 %126, metadata !4873, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 %124, metadata !4856, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 2, metadata !4863, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4900
  %127 = icmp slt i64 %126, 0, !dbg !4902
  br i1 %127, label %133, label %128, !dbg !4902

128:                                              ; preds = %112, %123
  %129 = phi i32 [ %124, %123 ], [ 1, %112 ]
  %130 = phi i64 [ %126, %123 ], [ 9223372036854775807, %112 ]
  %131 = udiv i64 9223372036854775807, %54, !dbg !4902
  %132 = icmp ult i64 %131, %130, !dbg !4902
  br i1 %132, label %144, label %139, !dbg !4902

133:                                              ; preds = %117, %123
  %134 = phi i32 [ %124, %123 ], [ 1, %117 ]
  %135 = phi i64 [ %126, %123 ], [ -9223372036854775808, %117 ]
  %136 = sub i64 0, %135, !dbg !4902
  %137 = udiv i64 -9223372036854775808, %136, !dbg !4902
  %138 = icmp ult i64 %137, %54, !dbg !4902
  br i1 %138, label %149, label %139, !dbg !4902

139:                                              ; preds = %128, %133
  %140 = phi i32 [ %134, %133 ], [ %129, %128 ]
  %141 = phi i64 [ %135, %133 ], [ %130, %128 ]
  %142 = mul i64 %141, %54, !dbg !4902
  call void @llvm.dbg.value(metadata i64 %142, metadata !4873, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 %140, metadata !4856, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4900
  %143 = icmp slt i64 %142, 0, !dbg !4902
  br i1 %143, label %149, label %144, !dbg !4902

144:                                              ; preds = %128, %139
  %145 = phi i32 [ %140, %139 ], [ 1, %128 ]
  %146 = phi i64 [ %142, %139 ], [ 9223372036854775807, %128 ]
  %147 = udiv i64 9223372036854775807, %54, !dbg !4902
  %148 = icmp ult i64 %147, %146, !dbg !4902
  br i1 %148, label %160, label %155, !dbg !4902

149:                                              ; preds = %133, %139
  %150 = phi i32 [ %140, %139 ], [ 1, %133 ]
  %151 = phi i64 [ %142, %139 ], [ -9223372036854775808, %133 ]
  %152 = sub i64 0, %151, !dbg !4902
  %153 = udiv i64 -9223372036854775808, %152, !dbg !4902
  %154 = icmp ult i64 %153, %54, !dbg !4902
  br i1 %154, label %165, label %155, !dbg !4902

155:                                              ; preds = %144, %149
  %156 = phi i32 [ %150, %149 ], [ %145, %144 ]
  %157 = phi i64 [ %151, %149 ], [ %146, %144 ]
  %158 = mul i64 %157, %54, !dbg !4902
  call void @llvm.dbg.value(metadata i64 %158, metadata !4873, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 %156, metadata !4856, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4900
  %159 = icmp slt i64 %158, 0, !dbg !4902
  br i1 %159, label %165, label %160, !dbg !4902

160:                                              ; preds = %144, %155
  %161 = phi i32 [ %156, %155 ], [ 1, %144 ]
  %162 = phi i64 [ %158, %155 ], [ 9223372036854775807, %144 ]
  %163 = udiv i64 9223372036854775807, %54, !dbg !4902
  %164 = icmp ult i64 %163, %162, !dbg !4902
  br i1 %164, label %175, label %171, !dbg !4902

165:                                              ; preds = %149, %155
  %166 = phi i32 [ %156, %155 ], [ 1, %149 ]
  %167 = phi i64 [ %158, %155 ], [ -9223372036854775808, %149 ]
  %168 = sub i64 0, %167, !dbg !4902
  %169 = udiv i64 -9223372036854775808, %168, !dbg !4902
  %170 = icmp ult i64 %169, %54, !dbg !4902
  br i1 %170, label %175, label %171, !dbg !4902

171:                                              ; preds = %165, %160
  %172 = phi i32 [ %166, %165 ], [ %161, %160 ]
  %173 = phi i64 [ %167, %165 ], [ %162, %160 ]
  %174 = mul i64 %173, %54, !dbg !4902
  call void @llvm.dbg.value(metadata i64 %174, metadata !4873, metadata !DIExpression()), !dbg !4900
  br label %175, !dbg !4911

175:                                              ; preds = %171, %165, %160
  %176 = phi i32 [ %172, %171 ], [ %161, %160 ], [ %166, %165 ]
  %177 = phi i64 [ %174, %171 ], [ 9223372036854775807, %160 ], [ -9223372036854775808, %165 ], !dbg !4900
  %178 = phi i32 [ 0, %171 ], [ 1, %160 ], [ 1, %165 ], !dbg !4900
  %179 = or i32 %178, %176, !dbg !4912
  call void @llvm.dbg.value(metadata i32 %179, metadata !4856, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4898
  br label %976, !dbg !4913

180:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4861, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 poison, metadata !4862, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 2, metadata !4863, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4916
  %181 = icmp slt i64 %31, 0, !dbg !4918
  br i1 %181, label %182, label %188, !dbg !4918

182:                                              ; preds = %180
  %183 = icmp eq i64 %31, -1, !dbg !4918
  br i1 %183, label %191, label %184, !dbg !4918

184:                                              ; preds = %182
  %185 = sub i64 0, %31, !dbg !4918
  %186 = udiv i64 -9223372036854775808, %185, !dbg !4918
  %187 = icmp ult i64 %186, %54, !dbg !4918
  br i1 %187, label %199, label %191, !dbg !4918

188:                                              ; preds = %180
  %189 = udiv i64 9223372036854775807, %54, !dbg !4918
  %190 = icmp ult i64 %189, %31, !dbg !4918
  br i1 %190, label %194, label %191, !dbg !4918

191:                                              ; preds = %182, %184, %188
  %192 = mul i64 %31, %54, !dbg !4918
  call void @llvm.dbg.value(metadata i64 %192, metadata !4873, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4916
  %193 = icmp slt i64 %192, 0, !dbg !4918
  br i1 %193, label %199, label %194, !dbg !4918

194:                                              ; preds = %188, %191
  %195 = phi i32 [ 0, %191 ], [ 1, %188 ]
  %196 = phi i64 [ %192, %191 ], [ 9223372036854775807, %188 ]
  %197 = udiv i64 9223372036854775807, %54, !dbg !4918
  %198 = icmp ult i64 %197, %196, !dbg !4918
  br i1 %198, label %210, label %205, !dbg !4918

199:                                              ; preds = %184, %191
  %200 = phi i32 [ 0, %191 ], [ 1, %184 ]
  %201 = phi i64 [ %192, %191 ], [ -9223372036854775808, %184 ]
  %202 = sub i64 0, %201, !dbg !4918
  %203 = udiv i64 -9223372036854775808, %202, !dbg !4918
  %204 = icmp ult i64 %203, %54, !dbg !4918
  br i1 %204, label %215, label %205, !dbg !4918

205:                                              ; preds = %194, %199
  %206 = phi i32 [ %200, %199 ], [ %195, %194 ]
  %207 = phi i64 [ %201, %199 ], [ %196, %194 ]
  %208 = mul i64 %207, %54, !dbg !4918
  call void @llvm.dbg.value(metadata i64 %208, metadata !4873, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 %206, metadata !4856, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4916
  %209 = icmp slt i64 %208, 0, !dbg !4918
  br i1 %209, label %215, label %210, !dbg !4918

210:                                              ; preds = %194, %205
  %211 = phi i32 [ %206, %205 ], [ 1, %194 ]
  %212 = phi i64 [ %208, %205 ], [ 9223372036854775807, %194 ]
  %213 = udiv i64 9223372036854775807, %54, !dbg !4918
  %214 = icmp ult i64 %213, %212, !dbg !4918
  br i1 %214, label %225, label %221, !dbg !4918

215:                                              ; preds = %199, %205
  %216 = phi i32 [ %206, %205 ], [ 1, %199 ]
  %217 = phi i64 [ %208, %205 ], [ -9223372036854775808, %199 ]
  %218 = sub i64 0, %217, !dbg !4918
  %219 = udiv i64 -9223372036854775808, %218, !dbg !4918
  %220 = icmp ult i64 %219, %54, !dbg !4918
  br i1 %220, label %225, label %221, !dbg !4918

221:                                              ; preds = %215, %210
  %222 = phi i32 [ %216, %215 ], [ %211, %210 ]
  %223 = phi i64 [ %217, %215 ], [ %212, %210 ]
  %224 = mul i64 %223, %54, !dbg !4918
  call void @llvm.dbg.value(metadata i64 %224, metadata !4873, metadata !DIExpression()), !dbg !4916
  br label %225, !dbg !4919

225:                                              ; preds = %221, %215, %210
  %226 = phi i32 [ %222, %221 ], [ %211, %210 ], [ %216, %215 ]
  %227 = phi i64 [ %224, %221 ], [ 9223372036854775807, %210 ], [ -9223372036854775808, %215 ], !dbg !4916
  %228 = phi i32 [ 0, %221 ], [ 1, %210 ], [ 1, %215 ], !dbg !4916
  %229 = or i32 %228, %226, !dbg !4920
  call void @llvm.dbg.value(metadata i32 %229, metadata !4856, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4914
  br label %976, !dbg !4913

230:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4861, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i32 poison, metadata !4862, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4923
  %231 = icmp slt i64 %31, 0, !dbg !4925
  br i1 %231, label %232, label %238, !dbg !4925

232:                                              ; preds = %230
  %233 = icmp eq i64 %31, -1, !dbg !4925
  br i1 %233, label %241, label %234, !dbg !4925

234:                                              ; preds = %232
  %235 = sub i64 0, %31, !dbg !4925
  %236 = udiv i64 -9223372036854775808, %235, !dbg !4925
  %237 = icmp ult i64 %236, %54, !dbg !4925
  br i1 %237, label %976, label %241, !dbg !4925

238:                                              ; preds = %230
  %239 = udiv i64 9223372036854775807, %54, !dbg !4925
  %240 = icmp ult i64 %239, %31, !dbg !4925
  br i1 %240, label %976, label %241, !dbg !4925

241:                                              ; preds = %238, %234, %232
  %242 = mul i64 %31, %54, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %242, metadata !4873, metadata !DIExpression()), !dbg !4923
  br label %976, !dbg !4926

243:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4861, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 poison, metadata !4862, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4929
  %244 = icmp slt i64 %31, 0, !dbg !4931
  br i1 %244, label %245, label %251, !dbg !4931

245:                                              ; preds = %243
  %246 = icmp eq i64 %31, -1, !dbg !4931
  br i1 %246, label %254, label %247, !dbg !4931

247:                                              ; preds = %245
  %248 = sub i64 0, %31, !dbg !4931
  %249 = udiv i64 -9223372036854775808, %248, !dbg !4931
  %250 = icmp ult i64 %249, %54, !dbg !4931
  br i1 %250, label %262, label %254, !dbg !4931

251:                                              ; preds = %243
  %252 = udiv i64 9223372036854775807, %54, !dbg !4931
  %253 = icmp ult i64 %252, %31, !dbg !4931
  br i1 %253, label %257, label %254, !dbg !4931

254:                                              ; preds = %245, %247, %251
  %255 = mul i64 %31, %54, !dbg !4931
  call void @llvm.dbg.value(metadata i64 %255, metadata !4873, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4929
  %256 = icmp slt i64 %255, 0, !dbg !4931
  br i1 %256, label %262, label %257, !dbg !4931

257:                                              ; preds = %251, %254
  %258 = phi i32 [ 0, %254 ], [ 1, %251 ]
  %259 = phi i64 [ %255, %254 ], [ 9223372036854775807, %251 ]
  %260 = udiv i64 9223372036854775807, %54, !dbg !4931
  %261 = icmp ult i64 %260, %259, !dbg !4931
  br i1 %261, label %272, label %268, !dbg !4931

262:                                              ; preds = %247, %254
  %263 = phi i32 [ 0, %254 ], [ 1, %247 ]
  %264 = phi i64 [ %255, %254 ], [ -9223372036854775808, %247 ]
  %265 = sub i64 0, %264, !dbg !4931
  %266 = udiv i64 -9223372036854775808, %265, !dbg !4931
  %267 = icmp ult i64 %266, %54, !dbg !4931
  br i1 %267, label %272, label %268, !dbg !4931

268:                                              ; preds = %262, %257
  %269 = phi i32 [ %263, %262 ], [ %258, %257 ]
  %270 = phi i64 [ %264, %262 ], [ %259, %257 ]
  %271 = mul i64 %270, %54, !dbg !4931
  call void @llvm.dbg.value(metadata i64 %271, metadata !4873, metadata !DIExpression()), !dbg !4929
  br label %272, !dbg !4932

272:                                              ; preds = %268, %262, %257
  %273 = phi i32 [ %269, %268 ], [ %258, %257 ], [ %263, %262 ]
  %274 = phi i64 [ %271, %268 ], [ 9223372036854775807, %257 ], [ -9223372036854775808, %262 ], !dbg !4929
  %275 = phi i32 [ 0, %268 ], [ 1, %257 ], [ 1, %262 ], !dbg !4929
  %276 = or i32 %275, %273, !dbg !4933
  call void @llvm.dbg.value(metadata i32 %276, metadata !4856, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4927
  br label %976, !dbg !4913

277:                                              ; preds = %64
  %278 = icmp eq i64 %31, -1, !dbg !4897
  br i1 %278, label %286, label %279, !dbg !4897

279:                                              ; preds = %277
  %280 = sub i64 0, %31, !dbg !4897
  %281 = udiv i64 -9223372036854775808, %280, !dbg !4897
  %282 = icmp ult i64 %281, %54, !dbg !4897
  br i1 %282, label %294, label %286, !dbg !4897

283:                                              ; preds = %64
  %284 = udiv i64 9223372036854775807, %54, !dbg !4897
  %285 = icmp ult i64 %284, %31, !dbg !4897
  br i1 %285, label %289, label %286, !dbg !4897

286:                                              ; preds = %277, %279, %283
  %287 = mul i64 %31, %54, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %287, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 3, metadata !4863, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4895
  %288 = icmp slt i64 %287, 0, !dbg !4897
  br i1 %288, label %294, label %289, !dbg !4897

289:                                              ; preds = %283, %286
  %290 = phi i32 [ 0, %286 ], [ 1, %283 ]
  %291 = phi i64 [ %287, %286 ], [ 9223372036854775807, %283 ]
  %292 = udiv i64 9223372036854775807, %54, !dbg !4897
  %293 = icmp ult i64 %292, %291, !dbg !4897
  br i1 %293, label %305, label %300, !dbg !4897

294:                                              ; preds = %279, %286
  %295 = phi i32 [ 0, %286 ], [ 1, %279 ]
  %296 = phi i64 [ %287, %286 ], [ -9223372036854775808, %279 ]
  %297 = sub i64 0, %296, !dbg !4897
  %298 = udiv i64 -9223372036854775808, %297, !dbg !4897
  %299 = icmp ult i64 %298, %54, !dbg !4897
  br i1 %299, label %310, label %300, !dbg !4897

300:                                              ; preds = %289, %294
  %301 = phi i32 [ %295, %294 ], [ %290, %289 ]
  %302 = phi i64 [ %296, %294 ], [ %291, %289 ]
  %303 = mul i64 %302, %54, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %303, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %301, metadata !4856, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 2, metadata !4863, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4895
  %304 = icmp slt i64 %303, 0, !dbg !4897
  br i1 %304, label %310, label %305, !dbg !4897

305:                                              ; preds = %289, %300
  %306 = phi i32 [ %301, %300 ], [ 1, %289 ]
  %307 = phi i64 [ %303, %300 ], [ 9223372036854775807, %289 ]
  %308 = udiv i64 9223372036854775807, %54, !dbg !4897
  %309 = icmp ult i64 %308, %307, !dbg !4897
  br i1 %309, label %321, label %316, !dbg !4897

310:                                              ; preds = %294, %300
  %311 = phi i32 [ %301, %300 ], [ 1, %294 ]
  %312 = phi i64 [ %303, %300 ], [ -9223372036854775808, %294 ]
  %313 = sub i64 0, %312, !dbg !4897
  %314 = udiv i64 -9223372036854775808, %313, !dbg !4897
  %315 = icmp ult i64 %314, %54, !dbg !4897
  br i1 %315, label %326, label %316, !dbg !4897

316:                                              ; preds = %305, %310
  %317 = phi i32 [ %311, %310 ], [ %306, %305 ]
  %318 = phi i64 [ %312, %310 ], [ %307, %305 ]
  %319 = mul i64 %318, %54, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %319, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %317, metadata !4856, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4895
  %320 = icmp slt i64 %319, 0, !dbg !4897
  br i1 %320, label %326, label %321, !dbg !4897

321:                                              ; preds = %305, %316
  %322 = phi i32 [ %317, %316 ], [ 1, %305 ]
  %323 = phi i64 [ %319, %316 ], [ 9223372036854775807, %305 ]
  %324 = udiv i64 9223372036854775807, %54, !dbg !4897
  %325 = icmp ult i64 %324, %323, !dbg !4897
  br i1 %325, label %337, label %332, !dbg !4897

326:                                              ; preds = %310, %316
  %327 = phi i32 [ %317, %316 ], [ 1, %310 ]
  %328 = phi i64 [ %319, %316 ], [ -9223372036854775808, %310 ]
  %329 = sub i64 0, %328, !dbg !4897
  %330 = udiv i64 -9223372036854775808, %329, !dbg !4897
  %331 = icmp ult i64 %330, %54, !dbg !4897
  br i1 %331, label %342, label %332, !dbg !4897

332:                                              ; preds = %321, %326
  %333 = phi i32 [ %327, %326 ], [ %322, %321 ]
  %334 = phi i64 [ %328, %326 ], [ %323, %321 ]
  %335 = mul i64 %334, %54, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %335, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %333, metadata !4856, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4895
  %336 = icmp slt i64 %335, 0, !dbg !4897
  br i1 %336, label %342, label %337, !dbg !4897

337:                                              ; preds = %321, %332
  %338 = phi i32 [ %333, %332 ], [ 1, %321 ]
  %339 = phi i64 [ %335, %332 ], [ 9223372036854775807, %321 ]
  %340 = udiv i64 9223372036854775807, %54, !dbg !4897
  %341 = icmp ult i64 %340, %339, !dbg !4897
  br i1 %341, label %352, label %348, !dbg !4897

342:                                              ; preds = %326, %332
  %343 = phi i32 [ %333, %332 ], [ 1, %326 ]
  %344 = phi i64 [ %335, %332 ], [ -9223372036854775808, %326 ]
  %345 = sub i64 0, %344, !dbg !4897
  %346 = udiv i64 -9223372036854775808, %345, !dbg !4897
  %347 = icmp ult i64 %346, %54, !dbg !4897
  br i1 %347, label %352, label %348, !dbg !4897

348:                                              ; preds = %342, %337
  %349 = phi i32 [ %343, %342 ], [ %338, %337 ]
  %350 = phi i64 [ %344, %342 ], [ %339, %337 ]
  %351 = mul i64 %350, %54, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %351, metadata !4873, metadata !DIExpression()), !dbg !4895
  br label %352, !dbg !4934

352:                                              ; preds = %348, %342, %337
  %353 = phi i32 [ %349, %348 ], [ %338, %337 ], [ %343, %342 ]
  %354 = phi i64 [ %351, %348 ], [ 9223372036854775807, %337 ], [ -9223372036854775808, %342 ], !dbg !4895
  %355 = phi i32 [ 0, %348 ], [ 1, %337 ], [ 1, %342 ], !dbg !4895
  %356 = or i32 %355, %353, !dbg !4935
  call void @llvm.dbg.value(metadata i32 %356, metadata !4856, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4893
  br label %976, !dbg !4913

357:                                              ; preds = %62
  %358 = icmp eq i64 %31, -1, !dbg !4892
  br i1 %358, label %366, label %359, !dbg !4892

359:                                              ; preds = %357
  %360 = sub i64 0, %31, !dbg !4892
  %361 = udiv i64 -9223372036854775808, %360, !dbg !4892
  %362 = icmp ult i64 %361, %54, !dbg !4892
  br i1 %362, label %374, label %366, !dbg !4892

363:                                              ; preds = %62
  %364 = udiv i64 9223372036854775807, %54, !dbg !4892
  %365 = icmp ult i64 %364, %31, !dbg !4892
  br i1 %365, label %369, label %366, !dbg !4892

366:                                              ; preds = %357, %359, %363
  %367 = mul i64 %31, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %367, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 8, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %368 = icmp slt i64 %367, 0, !dbg !4892
  br i1 %368, label %374, label %369, !dbg !4892

369:                                              ; preds = %363, %366
  %370 = phi i32 [ 0, %366 ], [ 1, %363 ]
  %371 = phi i64 [ %367, %366 ], [ 9223372036854775807, %363 ]
  %372 = udiv i64 9223372036854775807, %54, !dbg !4892
  %373 = icmp ult i64 %372, %371, !dbg !4892
  br i1 %373, label %385, label %380, !dbg !4892

374:                                              ; preds = %359, %366
  %375 = phi i32 [ 0, %366 ], [ 1, %359 ]
  %376 = phi i64 [ %367, %366 ], [ -9223372036854775808, %359 ]
  %377 = sub i64 0, %376, !dbg !4892
  %378 = udiv i64 -9223372036854775808, %377, !dbg !4892
  %379 = icmp ult i64 %378, %54, !dbg !4892
  br i1 %379, label %390, label %380, !dbg !4892

380:                                              ; preds = %369, %374
  %381 = phi i32 [ %375, %374 ], [ %370, %369 ]
  %382 = phi i64 [ %376, %374 ], [ %371, %369 ]
  %383 = mul i64 %382, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %383, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %381, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 7, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %384 = icmp slt i64 %383, 0, !dbg !4892
  br i1 %384, label %390, label %385, !dbg !4892

385:                                              ; preds = %369, %380
  %386 = phi i32 [ %381, %380 ], [ 1, %369 ]
  %387 = phi i64 [ %383, %380 ], [ 9223372036854775807, %369 ]
  %388 = udiv i64 9223372036854775807, %54, !dbg !4892
  %389 = icmp ult i64 %388, %387, !dbg !4892
  br i1 %389, label %401, label %396, !dbg !4892

390:                                              ; preds = %374, %380
  %391 = phi i32 [ %381, %380 ], [ 1, %374 ]
  %392 = phi i64 [ %383, %380 ], [ -9223372036854775808, %374 ]
  %393 = sub i64 0, %392, !dbg !4892
  %394 = udiv i64 -9223372036854775808, %393, !dbg !4892
  %395 = icmp ult i64 %394, %54, !dbg !4892
  br i1 %395, label %406, label %396, !dbg !4892

396:                                              ; preds = %385, %390
  %397 = phi i32 [ %391, %390 ], [ %386, %385 ]
  %398 = phi i64 [ %392, %390 ], [ %387, %385 ]
  %399 = mul i64 %398, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %399, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %397, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 6, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %400 = icmp slt i64 %399, 0, !dbg !4892
  br i1 %400, label %406, label %401, !dbg !4892

401:                                              ; preds = %385, %396
  %402 = phi i32 [ %397, %396 ], [ 1, %385 ]
  %403 = phi i64 [ %399, %396 ], [ 9223372036854775807, %385 ]
  %404 = udiv i64 9223372036854775807, %54, !dbg !4892
  %405 = icmp ult i64 %404, %403, !dbg !4892
  br i1 %405, label %417, label %412, !dbg !4892

406:                                              ; preds = %390, %396
  %407 = phi i32 [ %397, %396 ], [ 1, %390 ]
  %408 = phi i64 [ %399, %396 ], [ -9223372036854775808, %390 ]
  %409 = sub i64 0, %408, !dbg !4892
  %410 = udiv i64 -9223372036854775808, %409, !dbg !4892
  %411 = icmp ult i64 %410, %54, !dbg !4892
  br i1 %411, label %422, label %412, !dbg !4892

412:                                              ; preds = %401, %406
  %413 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %414 = phi i64 [ %408, %406 ], [ %403, %401 ]
  %415 = mul i64 %414, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %415, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %413, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 5, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %416 = icmp slt i64 %415, 0, !dbg !4892
  br i1 %416, label %422, label %417, !dbg !4892

417:                                              ; preds = %401, %412
  %418 = phi i32 [ %413, %412 ], [ 1, %401 ]
  %419 = phi i64 [ %415, %412 ], [ 9223372036854775807, %401 ]
  %420 = udiv i64 9223372036854775807, %54, !dbg !4892
  %421 = icmp ult i64 %420, %419, !dbg !4892
  br i1 %421, label %433, label %428, !dbg !4892

422:                                              ; preds = %406, %412
  %423 = phi i32 [ %413, %412 ], [ 1, %406 ]
  %424 = phi i64 [ %415, %412 ], [ -9223372036854775808, %406 ]
  %425 = sub i64 0, %424, !dbg !4892
  %426 = udiv i64 -9223372036854775808, %425, !dbg !4892
  %427 = icmp ult i64 %426, %54, !dbg !4892
  br i1 %427, label %438, label %428, !dbg !4892

428:                                              ; preds = %417, %422
  %429 = phi i32 [ %423, %422 ], [ %418, %417 ]
  %430 = phi i64 [ %424, %422 ], [ %419, %417 ]
  %431 = mul i64 %430, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %431, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %429, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 4, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %432 = icmp slt i64 %431, 0, !dbg !4892
  br i1 %432, label %438, label %433, !dbg !4892

433:                                              ; preds = %417, %428
  %434 = phi i32 [ %429, %428 ], [ 1, %417 ]
  %435 = phi i64 [ %431, %428 ], [ 9223372036854775807, %417 ]
  %436 = udiv i64 9223372036854775807, %54, !dbg !4892
  %437 = icmp ult i64 %436, %435, !dbg !4892
  br i1 %437, label %449, label %444, !dbg !4892

438:                                              ; preds = %422, %428
  %439 = phi i32 [ %429, %428 ], [ 1, %422 ]
  %440 = phi i64 [ %431, %428 ], [ -9223372036854775808, %422 ]
  %441 = sub i64 0, %440, !dbg !4892
  %442 = udiv i64 -9223372036854775808, %441, !dbg !4892
  %443 = icmp ult i64 %442, %54, !dbg !4892
  br i1 %443, label %454, label %444, !dbg !4892

444:                                              ; preds = %433, %438
  %445 = phi i32 [ %439, %438 ], [ %434, %433 ]
  %446 = phi i64 [ %440, %438 ], [ %435, %433 ]
  %447 = mul i64 %446, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %447, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %445, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 3, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %448 = icmp slt i64 %447, 0, !dbg !4892
  br i1 %448, label %454, label %449, !dbg !4892

449:                                              ; preds = %433, %444
  %450 = phi i32 [ %445, %444 ], [ 1, %433 ]
  %451 = phi i64 [ %447, %444 ], [ 9223372036854775807, %433 ]
  %452 = udiv i64 9223372036854775807, %54, !dbg !4892
  %453 = icmp ult i64 %452, %451, !dbg !4892
  br i1 %453, label %465, label %460, !dbg !4892

454:                                              ; preds = %438, %444
  %455 = phi i32 [ %445, %444 ], [ 1, %438 ]
  %456 = phi i64 [ %447, %444 ], [ -9223372036854775808, %438 ]
  %457 = sub i64 0, %456, !dbg !4892
  %458 = udiv i64 -9223372036854775808, %457, !dbg !4892
  %459 = icmp ult i64 %458, %54, !dbg !4892
  br i1 %459, label %470, label %460, !dbg !4892

460:                                              ; preds = %449, %454
  %461 = phi i32 [ %455, %454 ], [ %450, %449 ]
  %462 = phi i64 [ %456, %454 ], [ %451, %449 ]
  %463 = mul i64 %462, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %463, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %461, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 2, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %464 = icmp slt i64 %463, 0, !dbg !4892
  br i1 %464, label %470, label %465, !dbg !4892

465:                                              ; preds = %449, %460
  %466 = phi i32 [ %461, %460 ], [ 1, %449 ]
  %467 = phi i64 [ %463, %460 ], [ 9223372036854775807, %449 ]
  %468 = udiv i64 9223372036854775807, %54, !dbg !4892
  %469 = icmp ult i64 %468, %467, !dbg !4892
  br i1 %469, label %481, label %476, !dbg !4892

470:                                              ; preds = %454, %460
  %471 = phi i32 [ %461, %460 ], [ 1, %454 ]
  %472 = phi i64 [ %463, %460 ], [ -9223372036854775808, %454 ]
  %473 = sub i64 0, %472, !dbg !4892
  %474 = udiv i64 -9223372036854775808, %473, !dbg !4892
  %475 = icmp ult i64 %474, %54, !dbg !4892
  br i1 %475, label %486, label %476, !dbg !4892

476:                                              ; preds = %465, %470
  %477 = phi i32 [ %471, %470 ], [ %466, %465 ]
  %478 = phi i64 [ %472, %470 ], [ %467, %465 ]
  %479 = mul i64 %478, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %479, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %477, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %480 = icmp slt i64 %479, 0, !dbg !4892
  br i1 %480, label %486, label %481, !dbg !4892

481:                                              ; preds = %465, %476
  %482 = phi i32 [ %477, %476 ], [ 1, %465 ]
  %483 = phi i64 [ %479, %476 ], [ 9223372036854775807, %465 ]
  %484 = udiv i64 9223372036854775807, %54, !dbg !4892
  %485 = icmp ult i64 %484, %483, !dbg !4892
  br i1 %485, label %497, label %492, !dbg !4892

486:                                              ; preds = %470, %476
  %487 = phi i32 [ %477, %476 ], [ 1, %470 ]
  %488 = phi i64 [ %479, %476 ], [ -9223372036854775808, %470 ]
  %489 = sub i64 0, %488, !dbg !4892
  %490 = udiv i64 -9223372036854775808, %489, !dbg !4892
  %491 = icmp ult i64 %490, %54, !dbg !4892
  br i1 %491, label %502, label %492, !dbg !4892

492:                                              ; preds = %481, %486
  %493 = phi i32 [ %487, %486 ], [ %482, %481 ]
  %494 = phi i64 [ %488, %486 ], [ %483, %481 ]
  %495 = mul i64 %494, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %495, metadata !4873, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %493, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4890
  %496 = icmp slt i64 %495, 0, !dbg !4892
  br i1 %496, label %502, label %497, !dbg !4892

497:                                              ; preds = %481, %492
  %498 = phi i32 [ %493, %492 ], [ 1, %481 ]
  %499 = phi i64 [ %495, %492 ], [ 9223372036854775807, %481 ]
  %500 = udiv i64 9223372036854775807, %54, !dbg !4892
  %501 = icmp ult i64 %500, %499, !dbg !4892
  br i1 %501, label %512, label %508, !dbg !4892

502:                                              ; preds = %486, %492
  %503 = phi i32 [ %493, %492 ], [ 1, %486 ]
  %504 = phi i64 [ %495, %492 ], [ -9223372036854775808, %486 ]
  %505 = sub i64 0, %504, !dbg !4892
  %506 = udiv i64 -9223372036854775808, %505, !dbg !4892
  %507 = icmp ult i64 %506, %54, !dbg !4892
  br i1 %507, label %512, label %508, !dbg !4892

508:                                              ; preds = %502, %497
  %509 = phi i32 [ %503, %502 ], [ %498, %497 ]
  %510 = phi i64 [ %504, %502 ], [ %499, %497 ]
  %511 = mul i64 %510, %54, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %511, metadata !4873, metadata !DIExpression()), !dbg !4890
  br label %512, !dbg !4936

512:                                              ; preds = %508, %502, %497
  %513 = phi i32 [ %509, %508 ], [ %498, %497 ], [ %503, %502 ]
  %514 = phi i64 [ %511, %508 ], [ 9223372036854775807, %497 ], [ -9223372036854775808, %502 ], !dbg !4890
  %515 = phi i32 [ 0, %508 ], [ 1, %497 ], [ 1, %502 ], !dbg !4890
  %516 = or i32 %515, %513, !dbg !4937
  call void @llvm.dbg.value(metadata i32 %516, metadata !4856, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4888
  br label %976, !dbg !4913

517:                                              ; preds = %60
  %518 = icmp eq i64 %31, -1, !dbg !4887
  br i1 %518, label %526, label %519, !dbg !4887

519:                                              ; preds = %517
  %520 = sub i64 0, %31, !dbg !4887
  %521 = udiv i64 -9223372036854775808, %520, !dbg !4887
  %522 = icmp ult i64 %521, %54, !dbg !4887
  br i1 %522, label %534, label %526, !dbg !4887

523:                                              ; preds = %60
  %524 = udiv i64 9223372036854775807, %54, !dbg !4887
  %525 = icmp ult i64 %524, %31, !dbg !4887
  br i1 %525, label %529, label %526, !dbg !4887

526:                                              ; preds = %517, %519, %523
  %527 = mul i64 %31, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %527, metadata !4873, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 7, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %528 = icmp slt i64 %527, 0, !dbg !4887
  br i1 %528, label %534, label %529, !dbg !4887

529:                                              ; preds = %523, %526
  %530 = phi i32 [ 0, %526 ], [ 1, %523 ]
  %531 = phi i64 [ %527, %526 ], [ 9223372036854775807, %523 ]
  %532 = udiv i64 9223372036854775807, %54, !dbg !4887
  %533 = icmp ult i64 %532, %531, !dbg !4887
  br i1 %533, label %545, label %540, !dbg !4887

534:                                              ; preds = %519, %526
  %535 = phi i32 [ 0, %526 ], [ 1, %519 ]
  %536 = phi i64 [ %527, %526 ], [ -9223372036854775808, %519 ]
  %537 = sub i64 0, %536, !dbg !4887
  %538 = udiv i64 -9223372036854775808, %537, !dbg !4887
  %539 = icmp ult i64 %538, %54, !dbg !4887
  br i1 %539, label %550, label %540, !dbg !4887

540:                                              ; preds = %529, %534
  %541 = phi i32 [ %535, %534 ], [ %530, %529 ]
  %542 = phi i64 [ %536, %534 ], [ %531, %529 ]
  %543 = mul i64 %542, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %543, metadata !4873, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %541, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 6, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %544 = icmp slt i64 %543, 0, !dbg !4887
  br i1 %544, label %550, label %545, !dbg !4887

545:                                              ; preds = %529, %540
  %546 = phi i32 [ %541, %540 ], [ 1, %529 ]
  %547 = phi i64 [ %543, %540 ], [ 9223372036854775807, %529 ]
  %548 = udiv i64 9223372036854775807, %54, !dbg !4887
  %549 = icmp ult i64 %548, %547, !dbg !4887
  br i1 %549, label %561, label %556, !dbg !4887

550:                                              ; preds = %534, %540
  %551 = phi i32 [ %541, %540 ], [ 1, %534 ]
  %552 = phi i64 [ %543, %540 ], [ -9223372036854775808, %534 ]
  %553 = sub i64 0, %552, !dbg !4887
  %554 = udiv i64 -9223372036854775808, %553, !dbg !4887
  %555 = icmp ult i64 %554, %54, !dbg !4887
  br i1 %555, label %566, label %556, !dbg !4887

556:                                              ; preds = %545, %550
  %557 = phi i32 [ %551, %550 ], [ %546, %545 ]
  %558 = phi i64 [ %552, %550 ], [ %547, %545 ]
  %559 = mul i64 %558, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %559, metadata !4873, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %557, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 5, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %560 = icmp slt i64 %559, 0, !dbg !4887
  br i1 %560, label %566, label %561, !dbg !4887

561:                                              ; preds = %545, %556
  %562 = phi i32 [ %557, %556 ], [ 1, %545 ]
  %563 = phi i64 [ %559, %556 ], [ 9223372036854775807, %545 ]
  %564 = udiv i64 9223372036854775807, %54, !dbg !4887
  %565 = icmp ult i64 %564, %563, !dbg !4887
  br i1 %565, label %577, label %572, !dbg !4887

566:                                              ; preds = %550, %556
  %567 = phi i32 [ %557, %556 ], [ 1, %550 ]
  %568 = phi i64 [ %559, %556 ], [ -9223372036854775808, %550 ]
  %569 = sub i64 0, %568, !dbg !4887
  %570 = udiv i64 -9223372036854775808, %569, !dbg !4887
  %571 = icmp ult i64 %570, %54, !dbg !4887
  br i1 %571, label %582, label %572, !dbg !4887

572:                                              ; preds = %561, %566
  %573 = phi i32 [ %567, %566 ], [ %562, %561 ]
  %574 = phi i64 [ %568, %566 ], [ %563, %561 ]
  %575 = mul i64 %574, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %575, metadata !4873, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %573, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 4, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %576 = icmp slt i64 %575, 0, !dbg !4887
  br i1 %576, label %582, label %577, !dbg !4887

577:                                              ; preds = %561, %572
  %578 = phi i32 [ %573, %572 ], [ 1, %561 ]
  %579 = phi i64 [ %575, %572 ], [ 9223372036854775807, %561 ]
  %580 = udiv i64 9223372036854775807, %54, !dbg !4887
  %581 = icmp ult i64 %580, %579, !dbg !4887
  br i1 %581, label %593, label %588, !dbg !4887

582:                                              ; preds = %566, %572
  %583 = phi i32 [ %573, %572 ], [ 1, %566 ]
  %584 = phi i64 [ %575, %572 ], [ -9223372036854775808, %566 ]
  %585 = sub i64 0, %584, !dbg !4887
  %586 = udiv i64 -9223372036854775808, %585, !dbg !4887
  %587 = icmp ult i64 %586, %54, !dbg !4887
  br i1 %587, label %598, label %588, !dbg !4887

588:                                              ; preds = %577, %582
  %589 = phi i32 [ %583, %582 ], [ %578, %577 ]
  %590 = phi i64 [ %584, %582 ], [ %579, %577 ]
  %591 = mul i64 %590, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %591, metadata !4873, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %589, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 3, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %592 = icmp slt i64 %591, 0, !dbg !4887
  br i1 %592, label %598, label %593, !dbg !4887

593:                                              ; preds = %577, %588
  %594 = phi i32 [ %589, %588 ], [ 1, %577 ]
  %595 = phi i64 [ %591, %588 ], [ 9223372036854775807, %577 ]
  %596 = udiv i64 9223372036854775807, %54, !dbg !4887
  %597 = icmp ult i64 %596, %595, !dbg !4887
  br i1 %597, label %609, label %604, !dbg !4887

598:                                              ; preds = %582, %588
  %599 = phi i32 [ %589, %588 ], [ 1, %582 ]
  %600 = phi i64 [ %591, %588 ], [ -9223372036854775808, %582 ]
  %601 = sub i64 0, %600, !dbg !4887
  %602 = udiv i64 -9223372036854775808, %601, !dbg !4887
  %603 = icmp ult i64 %602, %54, !dbg !4887
  br i1 %603, label %614, label %604, !dbg !4887

604:                                              ; preds = %593, %598
  %605 = phi i32 [ %599, %598 ], [ %594, %593 ]
  %606 = phi i64 [ %600, %598 ], [ %595, %593 ]
  %607 = mul i64 %606, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %607, metadata !4873, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %605, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 2, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %608 = icmp slt i64 %607, 0, !dbg !4887
  br i1 %608, label %614, label %609, !dbg !4887

609:                                              ; preds = %593, %604
  %610 = phi i32 [ %605, %604 ], [ 1, %593 ]
  %611 = phi i64 [ %607, %604 ], [ 9223372036854775807, %593 ]
  %612 = udiv i64 9223372036854775807, %54, !dbg !4887
  %613 = icmp ult i64 %612, %611, !dbg !4887
  br i1 %613, label %625, label %620, !dbg !4887

614:                                              ; preds = %598, %604
  %615 = phi i32 [ %605, %604 ], [ 1, %598 ]
  %616 = phi i64 [ %607, %604 ], [ -9223372036854775808, %598 ]
  %617 = sub i64 0, %616, !dbg !4887
  %618 = udiv i64 -9223372036854775808, %617, !dbg !4887
  %619 = icmp ult i64 %618, %54, !dbg !4887
  br i1 %619, label %630, label %620, !dbg !4887

620:                                              ; preds = %609, %614
  %621 = phi i32 [ %615, %614 ], [ %610, %609 ]
  %622 = phi i64 [ %616, %614 ], [ %611, %609 ]
  %623 = mul i64 %622, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %623, metadata !4873, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %621, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %624 = icmp slt i64 %623, 0, !dbg !4887
  br i1 %624, label %630, label %625, !dbg !4887

625:                                              ; preds = %609, %620
  %626 = phi i32 [ %621, %620 ], [ 1, %609 ]
  %627 = phi i64 [ %623, %620 ], [ 9223372036854775807, %609 ]
  %628 = udiv i64 9223372036854775807, %54, !dbg !4887
  %629 = icmp ult i64 %628, %627, !dbg !4887
  br i1 %629, label %641, label %636, !dbg !4887

630:                                              ; preds = %614, %620
  %631 = phi i32 [ %621, %620 ], [ 1, %614 ]
  %632 = phi i64 [ %623, %620 ], [ -9223372036854775808, %614 ]
  %633 = sub i64 0, %632, !dbg !4887
  %634 = udiv i64 -9223372036854775808, %633, !dbg !4887
  %635 = icmp ult i64 %634, %54, !dbg !4887
  br i1 %635, label %646, label %636, !dbg !4887

636:                                              ; preds = %625, %630
  %637 = phi i32 [ %631, %630 ], [ %626, %625 ]
  %638 = phi i64 [ %632, %630 ], [ %627, %625 ]
  %639 = mul i64 %638, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %639, metadata !4873, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %637, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4885
  %640 = icmp slt i64 %639, 0, !dbg !4887
  br i1 %640, label %646, label %641, !dbg !4887

641:                                              ; preds = %625, %636
  %642 = phi i32 [ %637, %636 ], [ 1, %625 ]
  %643 = phi i64 [ %639, %636 ], [ 9223372036854775807, %625 ]
  %644 = udiv i64 9223372036854775807, %54, !dbg !4887
  %645 = icmp ult i64 %644, %643, !dbg !4887
  br i1 %645, label %656, label %652, !dbg !4887

646:                                              ; preds = %630, %636
  %647 = phi i32 [ %637, %636 ], [ 1, %630 ]
  %648 = phi i64 [ %639, %636 ], [ -9223372036854775808, %630 ]
  %649 = sub i64 0, %648, !dbg !4887
  %650 = udiv i64 -9223372036854775808, %649, !dbg !4887
  %651 = icmp ult i64 %650, %54, !dbg !4887
  br i1 %651, label %656, label %652, !dbg !4887

652:                                              ; preds = %646, %641
  %653 = phi i32 [ %647, %646 ], [ %642, %641 ]
  %654 = phi i64 [ %648, %646 ], [ %643, %641 ]
  %655 = mul i64 %654, %54, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %655, metadata !4873, metadata !DIExpression()), !dbg !4885
  br label %656, !dbg !4938

656:                                              ; preds = %652, %646, %641
  %657 = phi i32 [ %653, %652 ], [ %642, %641 ], [ %647, %646 ]
  %658 = phi i64 [ %655, %652 ], [ 9223372036854775807, %641 ], [ -9223372036854775808, %646 ], !dbg !4885
  %659 = phi i32 [ 0, %652 ], [ 1, %641 ], [ 1, %646 ], !dbg !4885
  %660 = or i32 %659, %657, !dbg !4939
  call void @llvm.dbg.value(metadata i32 %660, metadata !4856, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4883
  br label %976, !dbg !4913

661:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4861, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 poison, metadata !4862, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 3, metadata !4863, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4942
  %662 = icmp slt i64 %31, 0, !dbg !4944
  br i1 %662, label %663, label %669, !dbg !4944

663:                                              ; preds = %661
  %664 = icmp eq i64 %31, -1, !dbg !4944
  br i1 %664, label %672, label %665, !dbg !4944

665:                                              ; preds = %663
  %666 = sub i64 0, %31, !dbg !4944
  %667 = udiv i64 -9223372036854775808, %666, !dbg !4944
  %668 = icmp ult i64 %667, %54, !dbg !4944
  br i1 %668, label %680, label %672, !dbg !4944

669:                                              ; preds = %661
  %670 = udiv i64 9223372036854775807, %54, !dbg !4944
  %671 = icmp ult i64 %670, %31, !dbg !4944
  br i1 %671, label %675, label %672, !dbg !4944

672:                                              ; preds = %663, %665, %669
  %673 = mul i64 %31, %54, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %673, metadata !4873, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 2, metadata !4863, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4942
  %674 = icmp slt i64 %673, 0, !dbg !4944
  br i1 %674, label %680, label %675, !dbg !4944

675:                                              ; preds = %669, %672
  %676 = phi i32 [ 0, %672 ], [ 1, %669 ]
  %677 = phi i64 [ %673, %672 ], [ 9223372036854775807, %669 ]
  %678 = udiv i64 9223372036854775807, %54, !dbg !4944
  %679 = icmp ult i64 %678, %677, !dbg !4944
  br i1 %679, label %691, label %686, !dbg !4944

680:                                              ; preds = %665, %672
  %681 = phi i32 [ 0, %672 ], [ 1, %665 ]
  %682 = phi i64 [ %673, %672 ], [ -9223372036854775808, %665 ]
  %683 = sub i64 0, %682, !dbg !4944
  %684 = udiv i64 -9223372036854775808, %683, !dbg !4944
  %685 = icmp ult i64 %684, %54, !dbg !4944
  br i1 %685, label %696, label %686, !dbg !4944

686:                                              ; preds = %675, %680
  %687 = phi i32 [ %681, %680 ], [ %676, %675 ]
  %688 = phi i64 [ %682, %680 ], [ %677, %675 ]
  %689 = mul i64 %688, %54, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %689, metadata !4873, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 %687, metadata !4856, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4942
  %690 = icmp slt i64 %689, 0, !dbg !4944
  br i1 %690, label %696, label %691, !dbg !4944

691:                                              ; preds = %675, %686
  %692 = phi i32 [ %687, %686 ], [ 1, %675 ]
  %693 = phi i64 [ %689, %686 ], [ 9223372036854775807, %675 ]
  %694 = udiv i64 9223372036854775807, %54, !dbg !4944
  %695 = icmp ult i64 %694, %693, !dbg !4944
  br i1 %695, label %707, label %702, !dbg !4944

696:                                              ; preds = %680, %686
  %697 = phi i32 [ %687, %686 ], [ 1, %680 ]
  %698 = phi i64 [ %689, %686 ], [ -9223372036854775808, %680 ]
  %699 = sub i64 0, %698, !dbg !4944
  %700 = udiv i64 -9223372036854775808, %699, !dbg !4944
  %701 = icmp ult i64 %700, %54, !dbg !4944
  br i1 %701, label %712, label %702, !dbg !4944

702:                                              ; preds = %691, %696
  %703 = phi i32 [ %697, %696 ], [ %692, %691 ]
  %704 = phi i64 [ %698, %696 ], [ %693, %691 ]
  %705 = mul i64 %704, %54, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %705, metadata !4873, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 %703, metadata !4856, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4942
  %706 = icmp slt i64 %705, 0, !dbg !4944
  br i1 %706, label %712, label %707, !dbg !4944

707:                                              ; preds = %691, %702
  %708 = phi i32 [ %703, %702 ], [ 1, %691 ]
  %709 = phi i64 [ %705, %702 ], [ 9223372036854775807, %691 ]
  %710 = udiv i64 9223372036854775807, %54, !dbg !4944
  %711 = icmp ult i64 %710, %709, !dbg !4944
  br i1 %711, label %722, label %718, !dbg !4944

712:                                              ; preds = %696, %702
  %713 = phi i32 [ %703, %702 ], [ 1, %696 ]
  %714 = phi i64 [ %705, %702 ], [ -9223372036854775808, %696 ]
  %715 = sub i64 0, %714, !dbg !4944
  %716 = udiv i64 -9223372036854775808, %715, !dbg !4944
  %717 = icmp ult i64 %716, %54, !dbg !4944
  br i1 %717, label %722, label %718, !dbg !4944

718:                                              ; preds = %712, %707
  %719 = phi i32 [ %713, %712 ], [ %708, %707 ]
  %720 = phi i64 [ %714, %712 ], [ %709, %707 ]
  %721 = mul i64 %720, %54, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %721, metadata !4873, metadata !DIExpression()), !dbg !4942
  br label %722, !dbg !4945

722:                                              ; preds = %718, %712, %707
  %723 = phi i32 [ %719, %718 ], [ %708, %707 ], [ %713, %712 ]
  %724 = phi i64 [ %721, %718 ], [ 9223372036854775807, %707 ], [ -9223372036854775808, %712 ], !dbg !4942
  %725 = phi i32 [ 0, %718 ], [ 1, %707 ], [ 1, %712 ], !dbg !4942
  %726 = or i32 %725, %723, !dbg !4946
  call void @llvm.dbg.value(metadata i32 %726, metadata !4856, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4940
  br label %976, !dbg !4913

727:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata i32 2, metadata !4872, metadata !DIExpression()), !dbg !4947
  %728 = icmp slt i64 %31, 0, !dbg !4949
  br i1 %728, label %729, label %732, !dbg !4949

729:                                              ; preds = %727
  %730 = add i64 %31, -1, !dbg !4949
  %731 = icmp ult i64 %730, -4611686018427387905, !dbg !4949
  br i1 %731, label %976, label %734, !dbg !4949

732:                                              ; preds = %727
  %733 = icmp ugt i64 %31, 4611686018427387903, !dbg !4949
  br i1 %733, label %976, label %734, !dbg !4949

734:                                              ; preds = %729, %732
  %735 = shl nsw i64 %31, 1, !dbg !4949
  call void @llvm.dbg.value(metadata i64 %735, metadata !4873, metadata !DIExpression()), !dbg !4947
  br label %976, !dbg !4950

736:                                              ; preds = %58
  %737 = icmp eq i64 %31, -1, !dbg !4882
  br i1 %737, label %745, label %738, !dbg !4882

738:                                              ; preds = %736
  %739 = sub i64 0, %31, !dbg !4882
  %740 = udiv i64 -9223372036854775808, %739, !dbg !4882
  %741 = icmp ult i64 %740, %54, !dbg !4882
  br i1 %741, label %753, label %745, !dbg !4882

742:                                              ; preds = %58
  %743 = udiv i64 9223372036854775807, %54, !dbg !4882
  %744 = icmp ult i64 %743, %31, !dbg !4882
  br i1 %744, label %748, label %745, !dbg !4882

745:                                              ; preds = %736, %738, %742
  %746 = mul i64 %31, %54, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %746, metadata !4873, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 6, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4880
  %747 = icmp slt i64 %746, 0, !dbg !4882
  br i1 %747, label %753, label %748, !dbg !4882

748:                                              ; preds = %742, %745
  %749 = phi i32 [ 0, %745 ], [ 1, %742 ]
  %750 = phi i64 [ %746, %745 ], [ 9223372036854775807, %742 ]
  %751 = udiv i64 9223372036854775807, %54, !dbg !4882
  %752 = icmp ult i64 %751, %750, !dbg !4882
  br i1 %752, label %764, label %759, !dbg !4882

753:                                              ; preds = %738, %745
  %754 = phi i32 [ 0, %745 ], [ 1, %738 ]
  %755 = phi i64 [ %746, %745 ], [ -9223372036854775808, %738 ]
  %756 = sub i64 0, %755, !dbg !4882
  %757 = udiv i64 -9223372036854775808, %756, !dbg !4882
  %758 = icmp ult i64 %757, %54, !dbg !4882
  br i1 %758, label %769, label %759, !dbg !4882

759:                                              ; preds = %748, %753
  %760 = phi i32 [ %754, %753 ], [ %749, %748 ]
  %761 = phi i64 [ %755, %753 ], [ %750, %748 ]
  %762 = mul i64 %761, %54, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %762, metadata !4873, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 %760, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 5, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4880
  %763 = icmp slt i64 %762, 0, !dbg !4882
  br i1 %763, label %769, label %764, !dbg !4882

764:                                              ; preds = %748, %759
  %765 = phi i32 [ %760, %759 ], [ 1, %748 ]
  %766 = phi i64 [ %762, %759 ], [ 9223372036854775807, %748 ]
  %767 = udiv i64 9223372036854775807, %54, !dbg !4882
  %768 = icmp ult i64 %767, %766, !dbg !4882
  br i1 %768, label %780, label %775, !dbg !4882

769:                                              ; preds = %753, %759
  %770 = phi i32 [ %760, %759 ], [ 1, %753 ]
  %771 = phi i64 [ %762, %759 ], [ -9223372036854775808, %753 ]
  %772 = sub i64 0, %771, !dbg !4882
  %773 = udiv i64 -9223372036854775808, %772, !dbg !4882
  %774 = icmp ult i64 %773, %54, !dbg !4882
  br i1 %774, label %785, label %775, !dbg !4882

775:                                              ; preds = %764, %769
  %776 = phi i32 [ %770, %769 ], [ %765, %764 ]
  %777 = phi i64 [ %771, %769 ], [ %766, %764 ]
  %778 = mul i64 %777, %54, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %778, metadata !4873, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 %776, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 4, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4880
  %779 = icmp slt i64 %778, 0, !dbg !4882
  br i1 %779, label %785, label %780, !dbg !4882

780:                                              ; preds = %764, %775
  %781 = phi i32 [ %776, %775 ], [ 1, %764 ]
  %782 = phi i64 [ %778, %775 ], [ 9223372036854775807, %764 ]
  %783 = udiv i64 9223372036854775807, %54, !dbg !4882
  %784 = icmp ult i64 %783, %782, !dbg !4882
  br i1 %784, label %796, label %791, !dbg !4882

785:                                              ; preds = %769, %775
  %786 = phi i32 [ %776, %775 ], [ 1, %769 ]
  %787 = phi i64 [ %778, %775 ], [ -9223372036854775808, %769 ]
  %788 = sub i64 0, %787, !dbg !4882
  %789 = udiv i64 -9223372036854775808, %788, !dbg !4882
  %790 = icmp ult i64 %789, %54, !dbg !4882
  br i1 %790, label %801, label %791, !dbg !4882

791:                                              ; preds = %780, %785
  %792 = phi i32 [ %786, %785 ], [ %781, %780 ]
  %793 = phi i64 [ %787, %785 ], [ %782, %780 ]
  %794 = mul i64 %793, %54, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %794, metadata !4873, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 %792, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 3, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4880
  %795 = icmp slt i64 %794, 0, !dbg !4882
  br i1 %795, label %801, label %796, !dbg !4882

796:                                              ; preds = %780, %791
  %797 = phi i32 [ %792, %791 ], [ 1, %780 ]
  %798 = phi i64 [ %794, %791 ], [ 9223372036854775807, %780 ]
  %799 = udiv i64 9223372036854775807, %54, !dbg !4882
  %800 = icmp ult i64 %799, %798, !dbg !4882
  br i1 %800, label %812, label %807, !dbg !4882

801:                                              ; preds = %785, %791
  %802 = phi i32 [ %792, %791 ], [ 1, %785 ]
  %803 = phi i64 [ %794, %791 ], [ -9223372036854775808, %785 ]
  %804 = sub i64 0, %803, !dbg !4882
  %805 = udiv i64 -9223372036854775808, %804, !dbg !4882
  %806 = icmp ult i64 %805, %54, !dbg !4882
  br i1 %806, label %817, label %807, !dbg !4882

807:                                              ; preds = %796, %801
  %808 = phi i32 [ %802, %801 ], [ %797, %796 ]
  %809 = phi i64 [ %803, %801 ], [ %798, %796 ]
  %810 = mul i64 %809, %54, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %810, metadata !4873, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 %808, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 2, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4880
  %811 = icmp slt i64 %810, 0, !dbg !4882
  br i1 %811, label %817, label %812, !dbg !4882

812:                                              ; preds = %796, %807
  %813 = phi i32 [ %808, %807 ], [ 1, %796 ]
  %814 = phi i64 [ %810, %807 ], [ 9223372036854775807, %796 ]
  %815 = udiv i64 9223372036854775807, %54, !dbg !4882
  %816 = icmp ult i64 %815, %814, !dbg !4882
  br i1 %816, label %828, label %823, !dbg !4882

817:                                              ; preds = %801, %807
  %818 = phi i32 [ %808, %807 ], [ 1, %801 ]
  %819 = phi i64 [ %810, %807 ], [ -9223372036854775808, %801 ]
  %820 = sub i64 0, %819, !dbg !4882
  %821 = udiv i64 -9223372036854775808, %820, !dbg !4882
  %822 = icmp ult i64 %821, %54, !dbg !4882
  br i1 %822, label %833, label %823, !dbg !4882

823:                                              ; preds = %812, %817
  %824 = phi i32 [ %818, %817 ], [ %813, %812 ]
  %825 = phi i64 [ %819, %817 ], [ %814, %812 ]
  %826 = mul i64 %825, %54, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %826, metadata !4873, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 %824, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4880
  %827 = icmp slt i64 %826, 0, !dbg !4882
  br i1 %827, label %833, label %828, !dbg !4882

828:                                              ; preds = %812, %823
  %829 = phi i32 [ %824, %823 ], [ 1, %812 ]
  %830 = phi i64 [ %826, %823 ], [ 9223372036854775807, %812 ]
  %831 = udiv i64 9223372036854775807, %54, !dbg !4882
  %832 = icmp ult i64 %831, %830, !dbg !4882
  br i1 %832, label %844, label %839, !dbg !4882

833:                                              ; preds = %817, %823
  %834 = phi i32 [ %824, %823 ], [ 1, %817 ]
  %835 = phi i64 [ %826, %823 ], [ -9223372036854775808, %817 ]
  %836 = sub i64 0, %835, !dbg !4882
  %837 = udiv i64 -9223372036854775808, %836, !dbg !4882
  %838 = icmp ult i64 %837, %54, !dbg !4882
  br i1 %838, label %849, label %839, !dbg !4882

839:                                              ; preds = %828, %833
  %840 = phi i32 [ %834, %833 ], [ %829, %828 ]
  %841 = phi i64 [ %835, %833 ], [ %830, %828 ]
  %842 = mul i64 %841, %54, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %842, metadata !4873, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 %840, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4880
  %843 = icmp slt i64 %842, 0, !dbg !4882
  br i1 %843, label %849, label %844, !dbg !4882

844:                                              ; preds = %828, %839
  %845 = phi i32 [ %840, %839 ], [ 1, %828 ]
  %846 = phi i64 [ %842, %839 ], [ 9223372036854775807, %828 ]
  %847 = udiv i64 9223372036854775807, %54, !dbg !4882
  %848 = icmp ult i64 %847, %846, !dbg !4882
  br i1 %848, label %859, label %855, !dbg !4882

849:                                              ; preds = %833, %839
  %850 = phi i32 [ %840, %839 ], [ 1, %833 ]
  %851 = phi i64 [ %842, %839 ], [ -9223372036854775808, %833 ]
  %852 = sub i64 0, %851, !dbg !4882
  %853 = udiv i64 -9223372036854775808, %852, !dbg !4882
  %854 = icmp ult i64 %853, %54, !dbg !4882
  br i1 %854, label %859, label %855, !dbg !4882

855:                                              ; preds = %849, %844
  %856 = phi i32 [ %850, %849 ], [ %845, %844 ]
  %857 = phi i64 [ %851, %849 ], [ %846, %844 ]
  %858 = mul i64 %857, %54, !dbg !4882
  call void @llvm.dbg.value(metadata i64 %858, metadata !4873, metadata !DIExpression()), !dbg !4880
  br label %859, !dbg !4951

859:                                              ; preds = %855, %849, %844
  %860 = phi i32 [ %856, %855 ], [ %845, %844 ], [ %850, %849 ]
  %861 = phi i64 [ %858, %855 ], [ 9223372036854775807, %844 ], [ -9223372036854775808, %849 ], !dbg !4880
  %862 = phi i32 [ 0, %855 ], [ 1, %844 ], [ 1, %849 ], !dbg !4880
  %863 = or i32 %862, %860, !dbg !4952
  call void @llvm.dbg.value(metadata i32 %863, metadata !4856, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4878
  br label %976, !dbg !4913

864:                                              ; preds = %56
  %865 = icmp eq i64 %31, -1, !dbg !4876
  br i1 %865, label %873, label %866, !dbg !4876

866:                                              ; preds = %864
  %867 = sub i64 0, %31, !dbg !4876
  %868 = udiv i64 -9223372036854775808, %867, !dbg !4876
  %869 = icmp ult i64 %868, %54, !dbg !4876
  br i1 %869, label %881, label %873, !dbg !4876

870:                                              ; preds = %56
  %871 = udiv i64 9223372036854775807, %54, !dbg !4876
  %872 = icmp ult i64 %871, %31, !dbg !4876
  br i1 %872, label %876, label %873, !dbg !4876

873:                                              ; preds = %864, %866, %870
  %874 = mul i64 %31, %54, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %874, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 0, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 5, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4874
  %875 = icmp slt i64 %874, 0, !dbg !4876
  br i1 %875, label %881, label %876, !dbg !4876

876:                                              ; preds = %870, %873
  %877 = phi i32 [ 0, %873 ], [ 1, %870 ]
  %878 = phi i64 [ %874, %873 ], [ 9223372036854775807, %870 ]
  %879 = udiv i64 9223372036854775807, %54, !dbg !4876
  %880 = icmp ult i64 %879, %878, !dbg !4876
  br i1 %880, label %892, label %887, !dbg !4876

881:                                              ; preds = %866, %873
  %882 = phi i32 [ 0, %873 ], [ 1, %866 ]
  %883 = phi i64 [ %874, %873 ], [ -9223372036854775808, %866 ]
  %884 = sub i64 0, %883, !dbg !4876
  %885 = udiv i64 -9223372036854775808, %884, !dbg !4876
  %886 = icmp ult i64 %885, %54, !dbg !4876
  br i1 %886, label %897, label %887, !dbg !4876

887:                                              ; preds = %876, %881
  %888 = phi i32 [ %882, %881 ], [ %877, %876 ]
  %889 = phi i64 [ %883, %881 ], [ %878, %876 ]
  %890 = mul i64 %889, %54, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %890, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 %888, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 4, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4874
  %891 = icmp slt i64 %890, 0, !dbg !4876
  br i1 %891, label %897, label %892, !dbg !4876

892:                                              ; preds = %876, %887
  %893 = phi i32 [ %888, %887 ], [ 1, %876 ]
  %894 = phi i64 [ %890, %887 ], [ 9223372036854775807, %876 ]
  %895 = udiv i64 9223372036854775807, %54, !dbg !4876
  %896 = icmp ult i64 %895, %894, !dbg !4876
  br i1 %896, label %908, label %903, !dbg !4876

897:                                              ; preds = %881, %887
  %898 = phi i32 [ %888, %887 ], [ 1, %881 ]
  %899 = phi i64 [ %890, %887 ], [ -9223372036854775808, %881 ]
  %900 = sub i64 0, %899, !dbg !4876
  %901 = udiv i64 -9223372036854775808, %900, !dbg !4876
  %902 = icmp ult i64 %901, %54, !dbg !4876
  br i1 %902, label %913, label %903, !dbg !4876

903:                                              ; preds = %892, %897
  %904 = phi i32 [ %898, %897 ], [ %893, %892 ]
  %905 = phi i64 [ %899, %897 ], [ %894, %892 ]
  %906 = mul i64 %905, %54, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %906, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 %904, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 3, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4874
  %907 = icmp slt i64 %906, 0, !dbg !4876
  br i1 %907, label %913, label %908, !dbg !4876

908:                                              ; preds = %892, %903
  %909 = phi i32 [ %904, %903 ], [ 1, %892 ]
  %910 = phi i64 [ %906, %903 ], [ 9223372036854775807, %892 ]
  %911 = udiv i64 9223372036854775807, %54, !dbg !4876
  %912 = icmp ult i64 %911, %910, !dbg !4876
  br i1 %912, label %924, label %919, !dbg !4876

913:                                              ; preds = %897, %903
  %914 = phi i32 [ %904, %903 ], [ 1, %897 ]
  %915 = phi i64 [ %906, %903 ], [ -9223372036854775808, %897 ]
  %916 = sub i64 0, %915, !dbg !4876
  %917 = udiv i64 -9223372036854775808, %916, !dbg !4876
  %918 = icmp ult i64 %917, %54, !dbg !4876
  br i1 %918, label %929, label %919, !dbg !4876

919:                                              ; preds = %908, %913
  %920 = phi i32 [ %914, %913 ], [ %909, %908 ]
  %921 = phi i64 [ %915, %913 ], [ %910, %908 ]
  %922 = mul i64 %921, %54, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %922, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 %920, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 2, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4874
  %923 = icmp slt i64 %922, 0, !dbg !4876
  br i1 %923, label %929, label %924, !dbg !4876

924:                                              ; preds = %908, %919
  %925 = phi i32 [ %920, %919 ], [ 1, %908 ]
  %926 = phi i64 [ %922, %919 ], [ 9223372036854775807, %908 ]
  %927 = udiv i64 9223372036854775807, %54, !dbg !4876
  %928 = icmp ult i64 %927, %926, !dbg !4876
  br i1 %928, label %940, label %935, !dbg !4876

929:                                              ; preds = %913, %919
  %930 = phi i32 [ %920, %919 ], [ 1, %913 ]
  %931 = phi i64 [ %922, %919 ], [ -9223372036854775808, %913 ]
  %932 = sub i64 0, %931, !dbg !4876
  %933 = udiv i64 -9223372036854775808, %932, !dbg !4876
  %934 = icmp ult i64 %933, %54, !dbg !4876
  br i1 %934, label %945, label %935, !dbg !4876

935:                                              ; preds = %924, %929
  %936 = phi i32 [ %930, %929 ], [ %925, %924 ]
  %937 = phi i64 [ %931, %929 ], [ %926, %924 ]
  %938 = mul i64 %937, %54, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %938, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 %936, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 1, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4874
  %939 = icmp slt i64 %938, 0, !dbg !4876
  br i1 %939, label %945, label %940, !dbg !4876

940:                                              ; preds = %924, %935
  %941 = phi i32 [ %936, %935 ], [ 1, %924 ]
  %942 = phi i64 [ %938, %935 ], [ 9223372036854775807, %924 ]
  %943 = udiv i64 9223372036854775807, %54, !dbg !4876
  %944 = icmp ult i64 %943, %942, !dbg !4876
  br i1 %944, label %956, label %951, !dbg !4876

945:                                              ; preds = %929, %935
  %946 = phi i32 [ %936, %935 ], [ 1, %929 ]
  %947 = phi i64 [ %938, %935 ], [ -9223372036854775808, %929 ]
  %948 = sub i64 0, %947, !dbg !4876
  %949 = udiv i64 -9223372036854775808, %948, !dbg !4876
  %950 = icmp ult i64 %949, %54, !dbg !4876
  br i1 %950, label %961, label %951, !dbg !4876

951:                                              ; preds = %940, %945
  %952 = phi i32 [ %946, %945 ], [ %941, %940 ]
  %953 = phi i64 [ %947, %945 ], [ %942, %940 ]
  %954 = mul i64 %953, %54, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %954, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 %952, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr undef, metadata !4867, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 poison, metadata !4872, metadata !DIExpression()), !dbg !4874
  %955 = icmp slt i64 %954, 0, !dbg !4876
  br i1 %955, label %961, label %956, !dbg !4876

956:                                              ; preds = %940, %951
  %957 = phi i32 [ %952, %951 ], [ 1, %940 ]
  %958 = phi i64 [ %954, %951 ], [ 9223372036854775807, %940 ]
  %959 = udiv i64 9223372036854775807, %54, !dbg !4876
  %960 = icmp ult i64 %959, %958, !dbg !4876
  br i1 %960, label %971, label %967, !dbg !4876

961:                                              ; preds = %945, %951
  %962 = phi i32 [ %952, %951 ], [ 1, %945 ]
  %963 = phi i64 [ %954, %951 ], [ -9223372036854775808, %945 ]
  %964 = sub i64 0, %963, !dbg !4876
  %965 = udiv i64 -9223372036854775808, %964, !dbg !4876
  %966 = icmp ult i64 %965, %54, !dbg !4876
  br i1 %966, label %971, label %967, !dbg !4876

967:                                              ; preds = %961, %956
  %968 = phi i32 [ %962, %961 ], [ %957, %956 ]
  %969 = phi i64 [ %963, %961 ], [ %958, %956 ]
  %970 = mul i64 %969, %54, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %970, metadata !4873, metadata !DIExpression()), !dbg !4874
  br label %971, !dbg !4953

971:                                              ; preds = %967, %961, %956
  %972 = phi i32 [ %968, %967 ], [ %957, %956 ], [ %962, %961 ]
  %973 = phi i64 [ %970, %967 ], [ 9223372036854775807, %956 ], [ -9223372036854775808, %961 ], !dbg !4874
  %974 = phi i32 [ 0, %967 ], [ 1, %956 ], [ 1, %961 ], !dbg !4874
  %975 = or i32 %974, %972, !dbg !4954
  call void @llvm.dbg.value(metadata i32 %975, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 0, metadata !4863, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4864
  br label %976, !dbg !4913

976:                                              ; preds = %234, %238, %241, %971, %859, %722, %656, %512, %352, %272, %225, %175, %729, %78, %70, %53, %72, %74, %80, %82, %732, %734
  %977 = phi i64 [ %31, %53 ], [ %75, %74 ], [ 9223372036854775807, %72 ], [ %83, %82 ], [ 9223372036854775807, %80 ], [ %735, %734 ], [ 9223372036854775807, %732 ], [ -9223372036854775808, %70 ], [ -9223372036854775808, %78 ], [ -9223372036854775808, %729 ], [ %177, %175 ], [ %227, %225 ], [ %274, %272 ], [ %354, %352 ], [ %514, %512 ], [ %658, %656 ], [ %724, %722 ], [ %861, %859 ], [ %973, %971 ], [ %242, %241 ], [ 9223372036854775807, %238 ], [ -9223372036854775808, %234 ], !dbg !4802
  %978 = phi i32 [ 0, %53 ], [ 0, %74 ], [ 1, %72 ], [ 0, %82 ], [ 1, %80 ], [ 0, %734 ], [ 1, %732 ], [ 1, %70 ], [ 1, %78 ], [ 1, %729 ], [ %179, %175 ], [ %229, %225 ], [ %276, %272 ], [ %356, %352 ], [ %516, %512 ], [ %660, %656 ], [ %726, %722 ], [ %863, %859 ], [ %975, %971 ], [ 0, %241 ], [ 1, %238 ], [ 1, %234 ], !dbg !4955
  call void @llvm.dbg.value(metadata i32 %978, metadata !4801, metadata !DIExpression()), !dbg !4841
  %979 = or i32 %978, %30, !dbg !4913
  call void @llvm.dbg.value(metadata i32 %979, metadata !4796, metadata !DIExpression()), !dbg !4802
  %980 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !4956
  store ptr %980, ptr %8, align 8, !dbg !4956, !tbaa !1061
  %981 = load i8, ptr %980, align 1, !dbg !4957, !tbaa !1150
  %982 = icmp eq i8 %981, 0, !dbg !4957
  %983 = or i32 %979, 2
  %984 = select i1 %982, i32 %979, i32 %983, !dbg !4959
  call void @llvm.dbg.value(metadata i32 %984, metadata !4796, metadata !DIExpression()), !dbg !4802
  br label %987

985:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i64 %10, metadata !4795, metadata !DIExpression()), !dbg !4802
  store i64 %31, ptr %3, align 8, !dbg !4960, !tbaa !1338
  %986 = or i32 %30, 2, !dbg !4961
  call void @llvm.dbg.value(metadata i32 %30, metadata !4796, metadata !DIExpression()), !dbg !4802
  br label %990

987:                                              ; preds = %976, %29
  %988 = phi i64 [ %31, %29 ], [ %977, %976 ], !dbg !4962
  %989 = phi i32 [ %30, %29 ], [ %984, %976 ], !dbg !4963
  call void @llvm.dbg.value(metadata i32 %989, metadata !4796, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %988, metadata !4795, metadata !DIExpression()), !dbg !4802
  store i64 %988, ptr %3, align 8, !dbg !4964, !tbaa !1338
  br label %990, !dbg !4965

990:                                              ; preds = %985, %22, %13, %15, %18, %987, %38, %28
  %991 = phi i32 [ %989, %987 ], [ %986, %985 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4802
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40, !dbg !4966
  ret i32 %991, !dbg !4966
}

; Function Attrs: nounwind
declare !dbg !4967 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4972 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !5010, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata ptr %1, metadata !5011, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i32 0, metadata !5012, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i32 0, metadata !5013, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i8 0, metadata !5014, metadata !DIExpression()), !dbg !5034
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #40, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5015, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata ptr %1, metadata !5019, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %3, metadata !5021, metadata !DIExpression()), !dbg !5037
  br label %4, !dbg !5038

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !5037
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !5034
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !5039
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !5034
  call void @llvm.dbg.value(metadata i32 %9, metadata !5012, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i32 %8, metadata !5013, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata ptr %10, metadata !5021, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %6, metadata !5019, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i8 poison, metadata !5014, metadata !DIExpression()), !dbg !5034
  %11 = load i8, ptr %6, align 1, !dbg !5040, !tbaa !1150
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !5041

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !5012, metadata !DIExpression()), !dbg !5034
  %13 = icmp slt i64 %7, 80, !dbg !5042
  br i1 %13, label %14, label %43, !dbg !5045

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !5046
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !5021, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5037
  store i8 114, ptr %10, align 1, !dbg !5047, !tbaa !1150
  br label %43, !dbg !5048

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !5012, metadata !DIExpression()), !dbg !5034
  %17 = or i32 %8, 576, !dbg !5049
  call void @llvm.dbg.value(metadata i32 %17, metadata !5013, metadata !DIExpression()), !dbg !5034
  %18 = icmp slt i64 %7, 80, !dbg !5050
  br i1 %18, label %19, label %43, !dbg !5052

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !5053
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !5021, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5037
  store i8 119, ptr %10, align 1, !dbg !5054, !tbaa !1150
  br label %43, !dbg !5055

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !5012, metadata !DIExpression()), !dbg !5034
  %22 = or i32 %8, 1088, !dbg !5056
  call void @llvm.dbg.value(metadata i32 %22, metadata !5013, metadata !DIExpression()), !dbg !5034
  %23 = icmp slt i64 %7, 80, !dbg !5057
  br i1 %23, label %24, label %43, !dbg !5059

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5060
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !5021, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5037
  store i8 97, ptr %10, align 1, !dbg !5061, !tbaa !1150
  br label %43, !dbg !5062

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !5013, metadata !DIExpression()), !dbg !5034
  %27 = icmp slt i64 %7, 80, !dbg !5063
  br i1 %27, label %28, label %43, !dbg !5065

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5066
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5021, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5037
  store i8 98, ptr %10, align 1, !dbg !5067, !tbaa !1150
  br label %43, !dbg !5068

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !5012, metadata !DIExpression()), !dbg !5034
  %31 = icmp slt i64 %7, 80, !dbg !5069
  br i1 %31, label %32, label %43, !dbg !5071

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5072
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5021, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5037
  store i8 43, ptr %10, align 1, !dbg !5073, !tbaa !1150
  br label %43, !dbg !5074

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5075
  call void @llvm.dbg.value(metadata i32 %35, metadata !5013, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i8 1, metadata !5014, metadata !DIExpression()), !dbg !5034
  br label %43, !dbg !5076

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5077
  call void @llvm.dbg.value(metadata i32 %37, metadata !5013, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i8 1, metadata !5014, metadata !DIExpression()), !dbg !5034
  br label %43, !dbg !5078

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #41, !dbg !5079
  call void @llvm.dbg.value(metadata i64 %39, metadata !5022, metadata !DIExpression()), !dbg !5080
  %40 = sub nsw i64 80, %7, !dbg !5081
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5083
  call void @llvm.dbg.value(metadata i64 %41, metadata !5022, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.value(metadata ptr %10, metadata !5084, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata ptr %6, metadata !5087, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i64 %41, metadata !5088, metadata !DIExpression()), !dbg !5089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #40, !dbg !5091
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5092
  call void @llvm.dbg.value(metadata ptr %42, metadata !5021, metadata !DIExpression()), !dbg !5037
  br label %49, !dbg !5093

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !5034
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !5034
  call void @llvm.dbg.value(metadata i32 %47, metadata !5012, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i32 %46, metadata !5013, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !5021, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5037
  call void @llvm.dbg.value(metadata i8 poison, metadata !5014, metadata !DIExpression()), !dbg !5034
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5094
  call void @llvm.dbg.value(metadata ptr %48, metadata !5019, metadata !DIExpression()), !dbg !5037
  br label %4, !dbg !5095, !llvm.loop !5096

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !5037
  call void @llvm.dbg.value(metadata ptr %50, metadata !5021, metadata !DIExpression()), !dbg !5037
  store i8 0, ptr %50, align 1, !dbg !5098, !tbaa !1150
  br i1 %5, label %51, label %62, !dbg !5099

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !5100
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #40, !dbg !5101
  call void @llvm.dbg.value(metadata i32 %53, metadata !5027, metadata !DIExpression()), !dbg !5102
  %54 = icmp slt i32 %53, 0, !dbg !5103
  br i1 %54, label %64, label %55, !dbg !5105

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #40, !dbg !5106
  call void @llvm.dbg.value(metadata ptr %56, metadata !5030, metadata !DIExpression()), !dbg !5102
  %57 = icmp eq ptr %56, null, !dbg !5107
  br i1 %57, label %58, label %64, !dbg !5108

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #43, !dbg !5109
  %60 = load i32, ptr %59, align 4, !dbg !5109, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %60, metadata !5031, metadata !DIExpression()), !dbg !5110
  %61 = tail call i32 @close(i32 noundef %53) #40, !dbg !5111
  store i32 %60, ptr %59, align 4, !dbg !5112, !tbaa !1141
  br label %64, !dbg !5113

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5114, metadata !DIExpression()), !dbg !5118
  call void @llvm.dbg.value(metadata ptr %1, metadata !5117, metadata !DIExpression()), !dbg !5118
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5120
  br label %64, !dbg !5121

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !5034
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #40, !dbg !5122
  ret ptr %65, !dbg !5122
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5123 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare !dbg !5126 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5129 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5130 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5133 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5171, metadata !DIExpression()), !dbg !5176
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !5177
  call void @llvm.dbg.value(metadata i1 poison, metadata !5172, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5176
  call void @llvm.dbg.value(metadata ptr %0, metadata !5178, metadata !DIExpression()), !dbg !5181
  %3 = load i32, ptr %0, align 8, !dbg !5183, !tbaa !1886
  %4 = and i32 %3, 32, !dbg !5184
  %5 = icmp eq i32 %4, 0, !dbg !5184
  call void @llvm.dbg.value(metadata i1 %5, metadata !5174, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5176
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !5185
  %7 = icmp eq i32 %6, 0, !dbg !5186
  call void @llvm.dbg.value(metadata i1 %7, metadata !5175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5176
  br i1 %5, label %8, label %18, !dbg !5187

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5189
  call void @llvm.dbg.value(metadata i1 %9, metadata !5172, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5176
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5190
  %11 = xor i1 %7, true, !dbg !5190
  %12 = sext i1 %11 to i32, !dbg !5190
  br i1 %10, label %21, label %13, !dbg !5190

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !5191
  %15 = load i32, ptr %14, align 4, !dbg !5191, !tbaa !1141
  %16 = icmp ne i32 %15, 9, !dbg !5192
  %17 = sext i1 %16 to i32, !dbg !5193
  br label %21, !dbg !5193

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5194

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !5196
  store i32 0, ptr %20, align 4, !dbg !5198, !tbaa !1141
  br label %21, !dbg !5196

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5176
  ret i32 %22, !dbg !5199
}

; Function Attrs: nounwind
declare !dbg !5200 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5203 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5208, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.value(metadata ptr %1, metadata !5209, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.value(metadata i64 %2, metadata !5210, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.value(metadata ptr %3, metadata !5211, metadata !DIExpression()), !dbg !5213
  %5 = icmp eq ptr %1, null, !dbg !5214
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5216
  %7 = select i1 %5, ptr @.str.178, ptr %1, !dbg !5216
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5216
  call void @llvm.dbg.value(metadata i64 %8, metadata !5210, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.value(metadata ptr %7, metadata !5209, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.value(metadata ptr %6, metadata !5208, metadata !DIExpression()), !dbg !5213
  %9 = icmp eq ptr %3, null, !dbg !5217
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5219
  call void @llvm.dbg.value(metadata ptr %10, metadata !5211, metadata !DIExpression()), !dbg !5213
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !5220
  call void @llvm.dbg.value(metadata i64 %11, metadata !5212, metadata !DIExpression()), !dbg !5213
  %12 = icmp ult i64 %11, -3, !dbg !5221
  br i1 %12, label %13, label %17, !dbg !5223

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !5224
  %15 = icmp eq i32 %14, 0, !dbg !5224
  br i1 %15, label %16, label %29, !dbg !5225

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5226, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.value(metadata ptr %10, metadata !5233, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata i32 0, metadata !5236, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata i64 8, metadata !5237, metadata !DIExpression()), !dbg !5238
  store i64 0, ptr %10, align 1, !dbg !5240
  br label %29, !dbg !5241

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5242
  br i1 %18, label %19, label %20, !dbg !5244

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5245
  unreachable, !dbg !5245

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5246

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !5248
  br i1 %23, label %29, label %24, !dbg !5249

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5250
  br i1 %25, label %29, label %26, !dbg !5253

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5254, !tbaa !1150
  %28 = zext i8 %27 to i32, !dbg !5255
  store i32 %28, ptr %6, align 4, !dbg !5256, !tbaa !1141
  br label %29, !dbg !5257

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5213
  ret i64 %30, !dbg !5258
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5259 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5265 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5267, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.value(metadata i64 %1, metadata !5268, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.value(metadata i64 %2, metadata !5269, metadata !DIExpression()), !dbg !5271
  %4 = icmp eq i64 %2, 0, !dbg !5272
  br i1 %4, label %8, label %5, !dbg !5272

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5272
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5272
  br i1 %7, label %13, label %8, !dbg !5272

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5270, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5271
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5270, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5271
  %9 = mul i64 %2, %1, !dbg !5272
  call void @llvm.dbg.value(metadata i64 %9, metadata !5270, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.value(metadata ptr %0, metadata !5274, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.value(metadata i64 %9, metadata !5277, metadata !DIExpression()), !dbg !5278
  %10 = icmp eq i64 %9, 0, !dbg !5280
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5280
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #47, !dbg !5281
  br label %15, !dbg !5282

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5270, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5271
  %14 = tail call ptr @__errno_location() #43, !dbg !5283
  store i32 12, ptr %14, align 4, !dbg !5285, !tbaa !1141
  br label %15, !dbg !5286

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5271
  ret ptr %16, !dbg !5287
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5288 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5292, metadata !DIExpression()), !dbg !5297
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5298
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5293, metadata !DIExpression()), !dbg !5299
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5300
  %4 = icmp eq i32 %3, 0, !dbg !5300
  br i1 %4, label %5, label %12, !dbg !5302

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5303, metadata !DIExpression()), !dbg !5307
  call void @llvm.dbg.value(metadata ptr @.str.183, metadata !5306, metadata !DIExpression()), !dbg !5307
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.183, i64 2), !dbg !5310
  %7 = icmp eq i32 %6, 0, !dbg !5311
  br i1 %7, label %11, label %8, !dbg !5312

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5303, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata ptr @.str.1.184, metadata !5306, metadata !DIExpression()), !dbg !5313
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.184, i64 6), !dbg !5315
  %10 = icmp eq i32 %9, 0, !dbg !5316
  br i1 %10, label %11, label %12, !dbg !5317

11:                                               ; preds = %8, %5
  br label %12, !dbg !5318

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5297
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5319
  ret i1 %13, !dbg !5319
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5324, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.value(metadata ptr %1, metadata !5325, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.value(metadata i64 %2, metadata !5326, metadata !DIExpression()), !dbg !5327
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5328
  ret i32 %4, !dbg !5329
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5334, metadata !DIExpression()), !dbg !5335
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5336
  ret ptr %2, !dbg !5337
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5340, metadata !DIExpression()), !dbg !5342
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5343
  call void @llvm.dbg.value(metadata ptr %2, metadata !5341, metadata !DIExpression()), !dbg !5342
  ret ptr %2, !dbg !5344
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5345 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5347, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.value(metadata ptr %1, metadata !5348, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.value(metadata i64 %2, metadata !5349, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.value(metadata i32 %0, metadata !5340, metadata !DIExpression()), !dbg !5355
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5357
  call void @llvm.dbg.value(metadata ptr %4, metadata !5341, metadata !DIExpression()), !dbg !5355
  call void @llvm.dbg.value(metadata ptr %4, metadata !5350, metadata !DIExpression()), !dbg !5354
  %5 = icmp eq ptr %4, null, !dbg !5358
  br i1 %5, label %6, label %9, !dbg !5359

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5360
  br i1 %7, label %19, label %8, !dbg !5363

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5364, !tbaa !1150
  br label %19, !dbg !5365

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5366
  call void @llvm.dbg.value(metadata i64 %10, metadata !5351, metadata !DIExpression()), !dbg !5367
  %11 = icmp ult i64 %10, %2, !dbg !5368
  br i1 %11, label %12, label %14, !dbg !5370

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5371
  call void @llvm.dbg.value(metadata ptr %1, metadata !5373, metadata !DIExpression()), !dbg !5378
  call void @llvm.dbg.value(metadata ptr %4, metadata !5376, metadata !DIExpression()), !dbg !5378
  call void @llvm.dbg.value(metadata i64 %13, metadata !5377, metadata !DIExpression()), !dbg !5378
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !5380
  br label %19, !dbg !5381

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5382
  br i1 %15, label %19, label %16, !dbg !5385

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5386
  call void @llvm.dbg.value(metadata ptr %1, metadata !5373, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata ptr %4, metadata !5376, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata i64 %17, metadata !5377, metadata !DIExpression()), !dbg !5388
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5390
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5391
  store i8 0, ptr %18, align 1, !dbg !5392, !tbaa !1150
  br label %19, !dbg !5393

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5394
  ret i32 %20, !dbg !5395
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
attributes #13 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nounwind willreturn uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!106, !631, !635, !650, !920, !957, !960, !962, !965, !967, !969, !971, !702, !716, !764, !974, !912, !980, !1011, !1013, !1025, !1029, !1031, !939, !1033, !1036, !1038, !1040}
!llvm.ident = !{!1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042, !1042}
!llvm.module.flags = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "07c189a22e7a32e0222ef52bf431f505")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 62)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 3)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 70)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 72)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !31, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !24, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 78)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 75)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !40, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !45, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 73)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 71)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 50)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !14, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2584, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 323)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1616, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 202)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1176, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 147)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 10)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 24)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 512, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 22)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "longopts", scope: !106, file: !2, line: 154, type: !613, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !176, globals: !187, splitDebugInlining: false, nameTableKind: None)
!107 = !{!108, !116, !122, !137, !141, !144, !147, !161, !170}
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 24, baseType: !110, size: 32, elements: !111)
!109 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!113 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!114 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!115 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 337, baseType: !118, size: 32, elements: !119)
!117 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!121 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 46, baseType: !110, size: 32, elements: !124)
!123 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!125 = !DIEnumerator(name: "_ISupper", value: 256)
!126 = !DIEnumerator(name: "_ISlower", value: 512)
!127 = !DIEnumerator(name: "_ISalpha", value: 1024)
!128 = !DIEnumerator(name: "_ISdigit", value: 2048)
!129 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!130 = !DIEnumerator(name: "_ISspace", value: 8192)
!131 = !DIEnumerator(name: "_ISprint", value: 16384)
!132 = !DIEnumerator(name: "_ISgraph", value: 32768)
!133 = !DIEnumerator(name: "_ISblank", value: 1)
!134 = !DIEnumerator(name: "_IScntrl", value: 2)
!135 = !DIEnumerator(name: "_ISpunct", value: 4)
!136 = !DIEnumerator(name: "_ISalnum", value: 8)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 131, baseType: !110, size: 32, elements: !139)
!138 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!139 = !{!140}
!140 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 127, baseType: !110, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 130, baseType: !110, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !148, line: 42, baseType: !110, size: 32, elements: !149)
!148 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!150 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!151 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!152 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!153 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!154 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!155 = !DIEnumerator(name: "c_quoting_style", value: 5)
!156 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!157 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!158 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!159 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!160 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !162, line: 44, baseType: !110, size: 32, elements: !163)
!162 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!163 = !{!164, !165, !166, !167, !168, !169}
!164 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!165 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!166 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!167 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!168 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!169 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "section", file: !2, line: 60, baseType: !110, size: 32, elements: !171)
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "Header", value: 0)
!173 = !DIEnumerator(name: "Body", value: 1)
!174 = !DIEnumerator(name: "Footer", value: 2)
!175 = !DIEnumerator(name: "Text", value: 3)
!176 = !{!177, !178, !118, !179, !180, !183, !185, !186}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 46, baseType: !182)
!181 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!185 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!187 = !{!0, !7, !12, !17, !22, !27, !29, !34, !36, !38, !43, !48, !50, !52, !57, !62, !67, !69, !74, !79, !84, !89, !94, !99, !188, !193, !195, !197, !202, !207, !209, !214, !216, !218, !220, !225, !230, !235, !237, !242, !244, !246, !270, !272, !274, !279, !281, !283, !285, !287, !289, !291, !303, !309, !311, !316, !318, !398, !403, !405, !410, !415, !417, !419, !421, !423, !425, !427, !429, !434, !439, !441, !443, !445, !447, !449, !451, !456, !461, !466, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !494, !499, !504, !506, !508, !510, !515, !517, !519, !521, !523, !528, !530, !535, !537, !104, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !568, !570, !573, !575, !577, !582, !584, !586, !588, !590, !593, !595, !597, !607, !609, !611}
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 35)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 529, type: !9, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !190, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 29)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 30)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 556, type: !190, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 32)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !19, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !19, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !19, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 34)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 591, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 2)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 14)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !232, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 16)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 643, type: !227, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "current_type", scope: !106, file: !2, line: 75, type: !183, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "body_regex", scope: !106, file: !2, line: 78, type: !248, isLocal: true, isDefinition: true)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !249, line: 413, size: 512, elements: !250)
!249 = !DIFile(filename: "./lib/regex.h", directory: "/src", checksumkind: CSK_MD5, checksum: "fbbb1db427db36bb03cde72fd2b4622e")
!250 = !{!251, !254, !256, !257, !259, !260, !262, !263, !264, !265, !266, !267, !268, !269}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !248, file: !249, line: 417, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !249, line: 417, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !248, file: !249, line: 420, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !249, line: 56, baseType: !182)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !248, file: !249, line: 423, baseType: !255, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !248, file: !249, line: 426, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !249, line: 71, baseType: !182)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !248, file: !249, line: 431, baseType: !177, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !248, file: !249, line: 437, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !248, file: !249, line: 440, baseType: !180, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !248, file: !249, line: 446, baseType: !110, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !248, file: !249, line: 457, baseType: !110, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !248, file: !249, line: 461, baseType: !110, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !248, file: !249, line: 465, baseType: !110, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !248, file: !249, line: 469, baseType: !110, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !248, file: !249, line: 472, baseType: !110, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !248, file: !249, line: 475, baseType: !110, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "header_regex", scope: !106, file: !2, line: 81, type: !248, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "footer_regex", scope: !106, file: !2, line: 84, type: !248, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "body_fastmap", scope: !106, file: !2, line: 87, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 256)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "header_fastmap", scope: !106, file: !2, line: 88, type: !276, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "footer_fastmap", scope: !106, file: !2, line: 89, type: !276, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "section_del_len", scope: !106, file: !2, line: 101, type: !180, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "header_del_len", scope: !106, file: !2, line: 107, type: !180, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "body_del_len", scope: !106, file: !2, line: 113, type: !180, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "footer_del_len", scope: !106, file: !2, line: 119, type: !180, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "line_buf", scope: !106, file: !2, line: 122, type: !293, isLocal: true, isDefinition: true)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !294, line: 32, size: 192, elements: !295)
!294 = !DIFile(filename: "./lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!295 = !{!296, !301, !302}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !293, file: !294, line: 34, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !298, line: 130, baseType: !299)
!298 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !181, line: 35, baseType: !300)
!300 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !293, file: !294, line: 35, baseType: !297, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !293, file: !294, line: 36, baseType: !177, size: 64, offset: 128)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "line_no", scope: !106, file: !2, line: 146, type: !305, isLocal: true, isDefinition: true)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !306, line: 101, baseType: !307)
!306 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !308, line: 72, baseType: !300)
!308 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !106, file: !2, line: 152, type: !186, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !117, line: 729, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 56)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !117, line: 736, type: !45, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !320, file: !117, line: 575, type: !118, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "oputs_", scope: !117, file: !117, line: 573, type: !321, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !323)
!321 = !DISubroutineType(cc: DW_CC_nocall, types: !322)
!322 = !{null, !183, !183}
!323 = !{!324, !325, !326, !329, !330, !331, !332, !336, !337, !338, !339, !341, !392, !393, !394, !396, !397}
!324 = !DILocalVariable(name: "program", arg: 1, scope: !320, file: !117, line: 573, type: !183)
!325 = !DILocalVariable(name: "option", arg: 2, scope: !320, file: !117, line: 573, type: !183)
!326 = !DILocalVariable(name: "term", scope: !327, file: !117, line: 585, type: !183)
!327 = distinct !DILexicalBlock(scope: !328, file: !117, line: 582, column: 5)
!328 = distinct !DILexicalBlock(scope: !320, file: !117, line: 581, column: 7)
!329 = !DILocalVariable(name: "double_space", scope: !320, file: !117, line: 594, type: !186)
!330 = !DILocalVariable(name: "first_word", scope: !320, file: !117, line: 595, type: !183)
!331 = !DILocalVariable(name: "option_text", scope: !320, file: !117, line: 596, type: !183)
!332 = !DILocalVariable(name: "s", scope: !333, file: !117, line: 608, type: !183)
!333 = distinct !DILexicalBlock(scope: !334, file: !117, line: 605, column: 5)
!334 = distinct !DILexicalBlock(scope: !335, file: !117, line: 604, column: 12)
!335 = distinct !DILexicalBlock(scope: !320, file: !117, line: 597, column: 7)
!336 = !DILocalVariable(name: "spaces", scope: !333, file: !117, line: 609, type: !180)
!337 = !DILocalVariable(name: "anchor_len", scope: !320, file: !117, line: 620, type: !180)
!338 = !DILocalVariable(name: "desc_text", scope: !320, file: !117, line: 625, type: !183)
!339 = !DILocalVariable(name: "__ptr", scope: !340, file: !117, line: 644, type: !183)
!340 = distinct !DILexicalBlock(scope: !320, file: !117, line: 644, column: 3)
!341 = !DILocalVariable(name: "__stream", scope: !340, file: !117, line: 644, type: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !345)
!344 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !347)
!346 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !363, !365, !366, !367, !369, !370, !372, !373, !376, !378, !381, !384, !385, !386, !387, !388}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !345, file: !346, line: 51, baseType: !118, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !345, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !345, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !345, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !345, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !345, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !345, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !345, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !345, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !345, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !345, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !345, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !345, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !346, line: 36, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !345, file: !346, line: 70, baseType: !364, size: 64, offset: 832)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !345, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !345, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !345, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !308, line: 152, baseType: !300)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !345, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !345, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!371 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !345, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !345, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !346, line: 43, baseType: null)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !345, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !308, line: 153, baseType: !300)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !345, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !346, line: 37, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !345, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !346, line: 38, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !345, file: !346, line: 93, baseType: !364, size: 64, offset: 1344)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !345, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !345, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !345, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !345, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 20)
!392 = !DILocalVariable(name: "__cnt", scope: !340, file: !117, line: 644, type: !180)
!393 = !DILocalVariable(name: "url_program", scope: !320, file: !117, line: 648, type: !183)
!394 = !DILocalVariable(name: "__ptr", scope: !395, file: !117, line: 686, type: !183)
!395 = distinct !DILexicalBlock(scope: !320, file: !117, line: 686, column: 3)
!396 = !DILocalVariable(name: "__stream", scope: !395, file: !117, line: 686, type: !342)
!397 = !DILocalVariable(name: "__cnt", scope: !395, file: !117, line: 686, type: !180)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !117, line: 585, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 5)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !117, line: 586, type: !400, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !117, line: 595, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 4)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !117, line: 620, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 6)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !117, line: 648, type: !227, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !117, line: 648, type: !400, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !117, line: 649, type: !407, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !117, line: 649, type: !19, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !117, line: 650, type: !400, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !117, line: 651, type: !412, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !117, line: 651, type: !412, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !117, line: 652, type: !431, isLocal: true, isDefinition: true)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 7)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !117, line: 653, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 8)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !117, line: 654, type: !91, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !117, line: 655, type: !91, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !117, line: 656, type: !91, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !117, line: 657, type: !91, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !117, line: 663, type: !431, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !117, line: 664, type: !91, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 17)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 40)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 15)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 61)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !117, line: 679, type: !19, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !117, line: 683, type: !400, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !400, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !117, line: 691, type: !436, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !117, line: 839, type: !239, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !117, line: 840, type: !101, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !117, line: 841, type: !463, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !117, line: 862, type: !407, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !117, line: 868, type: !59, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !117, line: 875, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 27)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !117, line: 877, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 51)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !117, line: 877, type: !501, isLocal: true, isDefinition: true)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 12)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !453, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !463, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !453, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !512, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 21)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !463, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !501, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !453, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !453, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !525, isLocal: true, isDefinition: true)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 13)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !232, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !532, isLocal: true, isDefinition: true)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 18)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !400, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !436, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !19, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !227, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "header_type", scope: !106, file: !2, line: 69, type: !183, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !227, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "body_type", scope: !106, file: !2, line: 66, type: !183, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "footer_type", scope: !106, file: !2, line: 72, type: !183, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "starting_line_number", scope: !106, file: !2, line: 128, type: !305, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "page_incr", scope: !106, file: !2, line: 131, type: !305, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "reset_numbers", scope: !106, file: !2, line: 134, type: !186, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "blank_join", scope: !106, file: !2, line: 137, type: !305, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !227, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "separator_str", scope: !106, file: !2, line: 95, type: !183, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "lineno_width", scope: !106, file: !2, line: 140, type: !118, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "FORMAT_LEFT", scope: !106, file: !2, line: 53, type: !567, isLocal: true, isDefinition: true)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !437)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "lineno_format", scope: !106, file: !2, line: 143, type: !183, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_NOLZ", scope: !106, file: !2, line: 47, type: !572, isLocal: true, isDefinition: true)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 56, elements: !432)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_LZ", scope: !106, file: !2, line: 50, type: !567, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "section_del", scope: !106, file: !2, line: 98, type: !177, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "DEFAULT_SECTION_DELIMITERS", scope: !106, file: !2, line: 56, type: !579, isLocal: true, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 9)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "header_del", scope: !106, file: !2, line: 104, type: !177, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "body_del", scope: !106, file: !2, line: 110, type: !177, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "footer_del", scope: !106, file: !2, line: 116, type: !177, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "print_no_line_fmt", scope: !106, file: !2, line: 125, type: !177, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "current_regex", scope: !106, file: !2, line: 92, type: !592, isLocal: true, isDefinition: true)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !227, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "line_no_overflow", scope: !106, file: !2, line: 149, type: !186, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "blank_lines", scope: !599, file: !2, line: 358, type: !305, isLocal: true, isDefinition: true)
!599 = distinct !DISubprogram(name: "proc_text", scope: !2, file: !2, line: 356, type: !600, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{null}
!602 = !{!603, !605, !606}
!603 = !DILocalVariable(name: "__ptr", scope: !604, file: !2, line: 401, type: !183)
!604 = distinct !DILexicalBlock(scope: !599, file: !2, line: 401, column: 3)
!605 = !DILocalVariable(name: "__stream", scope: !604, file: !2, line: 401, type: !342)
!606 = !DILocalVariable(name: "__cnt", scope: !604, file: !2, line: 401, type: !180)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !2, line: 390, type: !190, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !512, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !117, line: 952, type: !501, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 3584, elements: !233)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !616, line: 50, size: 256, elements: !617)
!616 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!617 = !{!618, !619, !620, !622}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !615, file: !616, line: 52, baseType: !183, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !615, file: !616, line: 55, baseType: !118, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !615, file: !616, line: 56, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !615, file: !616, line: 57, baseType: !118, size: 32, offset: 192)
!623 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!624 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!625 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !628, line: 3, type: !463, isLocal: true, isDefinition: true)
!628 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "Version", scope: !631, file: !628, line: 3, type: !183, isLocal: false, isDefinition: true)
!631 = distinct !DICompileUnit(language: DW_LANG_C11, file: !628, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !632, splitDebugInlining: false, nameTableKind: None)
!632 = !{!626, !629}
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "file_name", scope: !635, file: !636, line: 45, type: !183, isLocal: true, isDefinition: true)
!635 = distinct !DICompileUnit(language: DW_LANG_C11, file: !636, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !637, splitDebugInlining: false, nameTableKind: None)
!636 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!637 = !{!638, !640, !642, !644, !633, !646}
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !636, line: 121, type: !431, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !636, line: 121, type: !501, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !636, line: 123, type: !431, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !636, line: 126, type: !19, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !635, file: !636, line: 55, type: !186, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !650, file: !651, line: 66, type: !699, isLocal: false, isDefinition: true)
!650 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !652, globals: !653, splitDebugInlining: false, nameTableKind: None)
!651 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!652 = !{!178, !185}
!653 = !{!654, !656, !681, !683, !685, !687, !648, !689, !691, !693, !695, !697}
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !651, line: 272, type: !400, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "old_file_name", scope: !658, file: !651, line: 304, type: !183, isLocal: true, isDefinition: true)
!658 = distinct !DISubprogram(name: "verror_at_line", scope: !651, file: !651, line: 298, type: !659, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !674)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !118, !118, !183, !110, !183, !661}
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !662, line: 52, baseType: !663)
!662 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !664, line: 14, baseType: !665)
!664 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !666, baseType: !667)
!666 = !DIFile(filename: "lib/error.c", directory: "/src")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !668)
!668 = !{!669, !670, !671, !672, !673}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !667, file: !666, baseType: !178, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !667, file: !666, baseType: !178, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !667, file: !666, baseType: !178, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !667, file: !666, baseType: !118, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !667, file: !666, baseType: !118, size: 32, offset: 224)
!674 = !{!675, !676, !677, !678, !679, !680}
!675 = !DILocalVariable(name: "status", arg: 1, scope: !658, file: !651, line: 298, type: !118)
!676 = !DILocalVariable(name: "errnum", arg: 2, scope: !658, file: !651, line: 298, type: !118)
!677 = !DILocalVariable(name: "file_name", arg: 3, scope: !658, file: !651, line: 298, type: !183)
!678 = !DILocalVariable(name: "line_number", arg: 4, scope: !658, file: !651, line: 298, type: !110)
!679 = !DILocalVariable(name: "message", arg: 5, scope: !658, file: !651, line: 298, type: !183)
!680 = !DILocalVariable(name: "args", arg: 6, scope: !658, file: !651, line: 298, type: !661)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "old_line_number", scope: !658, file: !651, line: 305, type: !110, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !651, line: 338, type: !407, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !651, line: 346, type: !436, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !651, line: 346, type: !227, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(name: "error_message_count", scope: !650, file: !651, line: 69, type: !110, isLocal: false, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !650, file: !651, line: 295, type: !118, isLocal: false, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !651, line: 208, type: !431, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !651, line: 208, type: !512, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !651, line: 214, type: !400, isLocal: true, isDefinition: true)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "program_name", scope: !702, file: !703, line: 31, type: !183, isLocal: false, isDefinition: true)
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !704, globals: !705, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!704 = !{!177}
!705 = !{!700, !706, !708}
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !703, line: 46, type: !436, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !703, line: 49, type: !407, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "utf07FF", scope: !712, file: !713, line: 46, type: !740, isLocal: true, isDefinition: true)
!712 = distinct !DISubprogram(name: "proper_name_lite", scope: !713, file: !713, line: 38, type: !714, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !718)
!713 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!714 = !DISubroutineType(types: !715)
!715 = !{!183, !183, !183}
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !717, splitDebugInlining: false, nameTableKind: None)
!717 = !{!710}
!718 = !{!719, !720, !721, !722, !727}
!719 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !712, file: !713, line: 38, type: !183)
!720 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !712, file: !713, line: 38, type: !183)
!721 = !DILocalVariable(name: "translation", scope: !712, file: !713, line: 40, type: !183)
!722 = !DILocalVariable(name: "w", scope: !712, file: !713, line: 47, type: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !724, line: 37, baseType: !725)
!724 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !308, line: 57, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !308, line: 42, baseType: !110)
!727 = !DILocalVariable(name: "mbs", scope: !712, file: !713, line: 48, type: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !729, line: 6, baseType: !730)
!729 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !731, line: 21, baseType: !732)
!731 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 13, size: 64, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !732, file: !731, line: 15, baseType: !118, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !732, file: !731, line: 20, baseType: !736, size: 32, offset: 32)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !731, line: 16, size: 32, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !736, file: !731, line: 18, baseType: !110, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !736, file: !731, line: 19, baseType: !407, size: 32)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 16, elements: !228)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !743, line: 78, type: !436, isLocal: true, isDefinition: true)
!743 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !743, line: 79, type: !412, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !743, line: 80, type: !525, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !743, line: 81, type: !525, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !743, line: 82, type: !389, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !743, line: 83, type: !227, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !743, line: 84, type: !436, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !743, line: 85, type: !431, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !743, line: 86, type: !431, isLocal: true, isDefinition: true)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !743, line: 87, type: !436, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !764, file: !743, line: 76, type: !833, isLocal: false, isDefinition: true)
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !765, retainedTypes: !771, globals: !772, splitDebugInlining: false, nameTableKind: None)
!765 = !{!147, !766, !122}
!766 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !148, line: 254, baseType: !110, size: 32, elements: !767)
!767 = !{!768, !769, !770}
!768 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!769 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!770 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!771 = !{!118, !179, !180}
!772 = !{!741, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !773, !777, !787, !789, !791, !793, !795, !797, !799, !822, !829, !831}
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !764, file: !743, line: 92, type: !775, isLocal: false, isDefinition: true)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 320, elements: !92)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !764, file: !743, line: 1040, type: !779, isLocal: false, isDefinition: true)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !743, line: 56, size: 448, elements: !780)
!780 = !{!781, !782, !783, !785, !786}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !779, file: !743, line: 59, baseType: !147, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !743, line: 62, baseType: !118, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !779, file: !743, line: 66, baseType: !784, size: 256, offset: 64)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !437)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !779, file: !743, line: 69, baseType: !183, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !779, file: !743, line: 72, baseType: !183, size: 64, offset: 384)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !764, file: !743, line: 107, type: !779, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(name: "slot0", scope: !764, file: !743, line: 831, type: !276, isLocal: true, isDefinition: true)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !743, line: 321, type: !227, isLocal: true, isDefinition: true)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !743, line: 357, type: !227, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !743, line: 358, type: !227, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !743, line: 199, type: !431, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "quote", scope: !801, file: !743, line: 228, type: !820, isLocal: true, isDefinition: true)
!801 = distinct !DISubprogram(name: "gettext_quote", scope: !743, file: !743, line: 197, type: !802, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{!183, !183, !147}
!804 = !{!805, !806, !807, !808, !809}
!805 = !DILocalVariable(name: "msgid", arg: 1, scope: !801, file: !743, line: 197, type: !183)
!806 = !DILocalVariable(name: "s", arg: 2, scope: !801, file: !743, line: 197, type: !147)
!807 = !DILocalVariable(name: "translation", scope: !801, file: !743, line: 199, type: !183)
!808 = !DILocalVariable(name: "w", scope: !801, file: !743, line: 229, type: !723)
!809 = !DILocalVariable(name: "mbs", scope: !801, file: !743, line: 230, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !729, line: 6, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !731, line: 21, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 13, size: 64, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !812, file: !731, line: 15, baseType: !118, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !812, file: !731, line: 20, baseType: !816, size: 32, offset: 32)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !812, file: !731, line: 16, size: 32, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !816, file: !731, line: 18, baseType: !110, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !816, file: !731, line: 19, baseType: !407, size: 32)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !821)
!821 = !{!229, !409}
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "slotvec", scope: !764, file: !743, line: 834, type: !824, isLocal: true, isDefinition: true)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !743, line: 823, size: 128, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !825, file: !743, line: 825, baseType: !180, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !825, file: !743, line: 826, baseType: !177, size: 64, offset: 64)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(name: "nslots", scope: !764, file: !743, line: 832, type: !118, isLocal: true, isDefinition: true)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "slotvec0", scope: !764, file: !743, line: 833, type: !825, isLocal: true, isDefinition: true)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !834, size: 704, elements: !835)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!835 = !{!836}
!836 = !DISubrange(count: 11)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !839, line: 67, type: !501, isLocal: true, isDefinition: true)
!839 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !839, line: 69, type: !431, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !839, line: 83, type: !431, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !839, line: 83, type: !407, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !839, line: 85, type: !227, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !839, line: 88, type: !850, isLocal: true, isDefinition: true)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !851)
!851 = !{!852}
!852 = !DISubrange(count: 171)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !839, line: 88, type: !222, isLocal: true, isDefinition: true)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !839, line: 105, type: !239, isLocal: true, isDefinition: true)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !839, line: 109, type: !859, isLocal: true, isDefinition: true)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 23)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !839, line: 113, type: !864, isLocal: true, isDefinition: true)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 28)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !839, line: 120, type: !211, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !839, line: 127, type: !871, isLocal: true, isDefinition: true)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !872)
!872 = !{!873}
!873 = !DISubrange(count: 36)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(scope: null, file: !839, line: 134, type: !458, isLocal: true, isDefinition: true)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(scope: null, file: !839, line: 142, type: !878, isLocal: true, isDefinition: true)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 44)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(scope: null, file: !839, line: 150, type: !883, isLocal: true, isDefinition: true)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 48)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(scope: null, file: !839, line: 159, type: !888, isLocal: true, isDefinition: true)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 52)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !839, line: 170, type: !893, isLocal: true, isDefinition: true)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 60)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !839, line: 248, type: !389, isLocal: true, isDefinition: true)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !839, line: 248, type: !101, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !839, line: 254, type: !389, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !839, line: 254, type: !232, isLocal: true, isDefinition: true)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !839, line: 254, type: !458, isLocal: true, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !839, line: 259, type: !3, isLocal: true, isDefinition: true)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !839, line: 259, type: !199, isLocal: true, isDefinition: true)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !912, file: !913, line: 26, type: !915, isLocal: false, isDefinition: true)
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !913, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !914, splitDebugInlining: false, nameTableKind: None)
!913 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!914 = !{!910}
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 376, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 47)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(name: "exit_failure", scope: !920, file: !921, line: 24, type: !923, isLocal: false, isDefinition: true)
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !922, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!922 = !{!918}
!923 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !926, line: 34, type: !19, isLocal: true, isDefinition: true)
!926 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(scope: null, file: !926, line: 34, type: !431, isLocal: true, isDefinition: true)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(scope: null, file: !926, line: 34, type: !453, isLocal: true, isDefinition: true)
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(scope: null, file: !933, line: 80, type: !431, isLocal: true, isDefinition: true)
!933 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !936, line: 108, type: !86, isLocal: true, isDefinition: true)
!936 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(name: "internal_state", scope: !939, file: !936, line: 97, type: !942, isLocal: true, isDefinition: true)
!939 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !940, globals: !941, splitDebugInlining: false, nameTableKind: None)
!940 = !{!178, !180, !185}
!941 = !{!934, !937}
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !729, line: 6, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !731, line: 21, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 13, size: 64, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !944, file: !731, line: 15, baseType: !118, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !944, file: !731, line: 20, baseType: !948, size: 32, offset: 32)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !731, line: 16, size: 32, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !948, file: !731, line: 18, baseType: !110, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !948, file: !731, line: 19, baseType: !407, size: 32)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !954, line: 35, type: !227, isLocal: true, isDefinition: true)
!954 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !954, line: 35, type: !412, isLocal: true, isDefinition: true)
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !959, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!959 = !{!161}
!960 = distinct !DICompileUnit(language: DW_LANG_C11, file: !961, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!961 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!962 = distinct !DICompileUnit(language: DW_LANG_C11, file: !963, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !964, splitDebugInlining: false, nameTableKind: None)
!963 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!964 = !{!178}
!965 = distinct !DICompileUnit(language: DW_LANG_C11, file: !966, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!966 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!967 = distinct !DICompileUnit(language: DW_LANG_C11, file: !968, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !964, splitDebugInlining: false, nameTableKind: None)
!968 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!969 = distinct !DICompileUnit(language: DW_LANG_C11, file: !970, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!970 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!971 = distinct !DICompileUnit(language: DW_LANG_C11, file: !972, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !973, splitDebugInlining: false, nameTableKind: None)
!972 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!973 = !{!261}
!974 = distinct !DICompileUnit(language: DW_LANG_C11, file: !839, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !975, retainedTypes: !964, globals: !979, splitDebugInlining: false, nameTableKind: None)
!975 = !{!976}
!976 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !839, line: 40, baseType: !110, size: 32, elements: !977)
!977 = !{!978}
!978 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!979 = !{!837, !840, !842, !844, !846, !848, !853, !855, !857, !862, !867, !869, !874, !876, !881, !886, !891, !896, !898, !900, !902, !904, !906, !908}
!980 = distinct !DICompileUnit(language: DW_LANG_C11, file: !981, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !982, retainedTypes: !1010, splitDebugInlining: false, nameTableKind: None)
!981 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!982 = !{!983, !995}
!983 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !984, file: !981, line: 188, baseType: !110, size: 32, elements: !993)
!984 = distinct !DISubprogram(name: "x2nrealloc", scope: !981, file: !981, line: 176, type: !985, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !988)
!985 = !DISubroutineType(types: !986)
!986 = !{!178, !178, !987, !180}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!988 = !{!989, !990, !991, !992}
!989 = !DILocalVariable(name: "p", arg: 1, scope: !984, file: !981, line: 176, type: !178)
!990 = !DILocalVariable(name: "pn", arg: 2, scope: !984, file: !981, line: 176, type: !987)
!991 = !DILocalVariable(name: "s", arg: 3, scope: !984, file: !981, line: 176, type: !180)
!992 = !DILocalVariable(name: "n", scope: !984, file: !981, line: 178, type: !180)
!993 = !{!994}
!994 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!995 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !996, file: !981, line: 228, baseType: !110, size: 32, elements: !993)
!996 = distinct !DISubprogram(name: "xpalloc", scope: !981, file: !981, line: 223, type: !997, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !1000)
!997 = !DISubroutineType(types: !998)
!998 = !{!178, !178, !999, !297, !299, !297}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009}
!1001 = !DILocalVariable(name: "pa", arg: 1, scope: !996, file: !981, line: 223, type: !178)
!1002 = !DILocalVariable(name: "pn", arg: 2, scope: !996, file: !981, line: 223, type: !999)
!1003 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !996, file: !981, line: 223, type: !297)
!1004 = !DILocalVariable(name: "n_max", arg: 4, scope: !996, file: !981, line: 223, type: !299)
!1005 = !DILocalVariable(name: "s", arg: 5, scope: !996, file: !981, line: 223, type: !297)
!1006 = !DILocalVariable(name: "n0", scope: !996, file: !981, line: 230, type: !297)
!1007 = !DILocalVariable(name: "n", scope: !996, file: !981, line: 237, type: !297)
!1008 = !DILocalVariable(name: "nbytes", scope: !996, file: !981, line: 248, type: !297)
!1009 = !DILocalVariable(name: "adjusted_nbytes", scope: !996, file: !981, line: 252, type: !297)
!1010 = !{!177, !178, !186, !300, !182}
!1011 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1012, splitDebugInlining: false, nameTableKind: None)
!1012 = !{!924, !927, !929}
!1013 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1014, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1015, globals: !1024, splitDebugInlining: false, nameTableKind: None)
!1014 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!1015 = !{!1016, !108}
!1016 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1017, line: 30, baseType: !110, size: 32, elements: !1018)
!1017 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1018 = !{!1019, !1020, !1021, !1022, !1023}
!1019 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!1020 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!1021 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!1022 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!1023 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!1024 = !{!931}
!1025 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1026, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1027, retainedTypes: !1028, splitDebugInlining: false, nameTableKind: None)
!1026 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!1027 = !{!1016}
!1028 = !{!186, !300, !182, !305}
!1029 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1030, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !964, splitDebugInlining: false, nameTableKind: None)
!1030 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1031 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1032, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1032 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1033 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1034, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1035, splitDebugInlining: false, nameTableKind: None)
!1034 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1035 = !{!186, !182, !178}
!1036 = distinct !DICompileUnit(language: DW_LANG_C11, file: !954, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1037, splitDebugInlining: false, nameTableKind: None)
!1037 = !{!952, !955}
!1038 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1039, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1039 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1040 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1041, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !964, splitDebugInlining: false, nameTableKind: None)
!1041 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1042 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1043 = !{i32 7, !"Dwarf Version", i32 5}
!1044 = !{i32 2, !"Debug Info Version", i32 3}
!1045 = !{i32 1, !"wchar_size", i32 4}
!1046 = !{i32 8, !"PIC Level", i32 2}
!1047 = !{i32 7, !"PIE Level", i32 2}
!1048 = !{i32 7, !"uwtable", i32 2}
!1049 = !{i32 7, !"frame-pointer", i32 1}
!1050 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 175, type: !1051, scopeLine: 176, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !118}
!1053 = !{!1054}
!1054 = !DILocalVariable(name: "status", arg: 1, scope: !1050, file: !2, line: 175, type: !118)
!1055 = !DILocation(line: 0, scope: !1050)
!1056 = !DILocation(line: 177, column: 14, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 177, column: 7)
!1058 = !DILocation(line: 177, column: 7, scope: !1050)
!1059 = !DILocation(line: 178, column: 5, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 178, column: 5)
!1061 = !{!1062, !1062, i64 0}
!1062 = !{!"any pointer", !1063, i64 0}
!1063 = !{!"omnipotent char", !1064, i64 0}
!1064 = !{!"Simple C/C++ TBAA"}
!1065 = !DILocation(line: 181, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 180, column: 5)
!1067 = !DILocation(line: 185, column: 7, scope: !1066)
!1068 = !DILocation(line: 729, column: 3, scope: !1069, inlinedAt: !1071)
!1069 = distinct !DISubprogram(name: "emit_stdin_note", scope: !117, file: !117, line: 727, type: !600, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1070)
!1070 = !{}
!1071 = distinct !DILocation(line: 189, column: 7, scope: !1066)
!1072 = !DILocation(line: 736, column: 3, scope: !1073, inlinedAt: !1074)
!1073 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !117, file: !117, line: 734, type: !600, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1070)
!1074 = distinct !DILocation(line: 190, column: 7, scope: !1066)
!1075 = !DILocation(line: 192, column: 7, scope: !1066)
!1076 = !DILocation(line: 195, column: 7, scope: !1066)
!1077 = !DILocation(line: 198, column: 7, scope: !1066)
!1078 = !DILocation(line: 201, column: 7, scope: !1066)
!1079 = !DILocation(line: 204, column: 7, scope: !1066)
!1080 = !DILocation(line: 207, column: 7, scope: !1066)
!1081 = !DILocation(line: 210, column: 7, scope: !1066)
!1082 = !DILocation(line: 213, column: 7, scope: !1066)
!1083 = !DILocation(line: 216, column: 7, scope: !1066)
!1084 = !DILocation(line: 219, column: 7, scope: !1066)
!1085 = !DILocation(line: 222, column: 7, scope: !1066)
!1086 = !DILocation(line: 225, column: 7, scope: !1066)
!1087 = !DILocation(line: 226, column: 7, scope: !1066)
!1088 = !DILocation(line: 227, column: 7, scope: !1066)
!1089 = !DILocation(line: 236, column: 7, scope: !1066)
!1090 = !DILocation(line: 246, column: 7, scope: !1066)
!1091 = !DILocalVariable(name: "program", arg: 1, scope: !1092, file: !117, line: 836, type: !183)
!1092 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 836, type: !1093, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !183}
!1095 = !{!1091, !1096, !1103, !1104, !1106, !1107}
!1096 = !DILocalVariable(name: "infomap", scope: !1092, file: !117, line: 838, type: !1097)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1098, size: 896, elements: !432)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1092, file: !117, line: 838, size: 128, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1099, file: !117, line: 838, baseType: !183, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1099, file: !117, line: 838, baseType: !183, size: 64, offset: 64)
!1103 = !DILocalVariable(name: "node", scope: !1092, file: !117, line: 848, type: !183)
!1104 = !DILocalVariable(name: "map_prog", scope: !1092, file: !117, line: 849, type: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1106 = !DILocalVariable(name: "lc_messages", scope: !1092, file: !117, line: 861, type: !183)
!1107 = !DILocalVariable(name: "url_program", scope: !1092, file: !117, line: 874, type: !183)
!1108 = !DILocation(line: 0, scope: !1092, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 255, column: 7, scope: !1066)
!1110 = !DILocation(line: 857, column: 3, scope: !1092, inlinedAt: !1109)
!1111 = !DILocation(line: 861, column: 29, scope: !1092, inlinedAt: !1109)
!1112 = !DILocation(line: 862, column: 7, scope: !1113, inlinedAt: !1109)
!1113 = distinct !DILexicalBlock(scope: !1092, file: !117, line: 862, column: 7)
!1114 = !DILocation(line: 862, column: 19, scope: !1113, inlinedAt: !1109)
!1115 = !DILocation(line: 862, column: 22, scope: !1113, inlinedAt: !1109)
!1116 = !DILocation(line: 862, column: 7, scope: !1092, inlinedAt: !1109)
!1117 = !DILocation(line: 868, column: 7, scope: !1118, inlinedAt: !1109)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !117, line: 863, column: 5)
!1119 = !DILocation(line: 870, column: 5, scope: !1118, inlinedAt: !1109)
!1120 = !DILocation(line: 875, column: 3, scope: !1092, inlinedAt: !1109)
!1121 = !DILocation(line: 877, column: 3, scope: !1092, inlinedAt: !1109)
!1122 = !DILocation(line: 257, column: 3, scope: !1050)
!1123 = !DISubprogram(name: "dcgettext", scope: !1124, file: !1124, line: 51, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1124 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!177, !183, !183, !118}
!1127 = !DISubprogram(name: "__fprintf_chk", scope: !1128, file: !1128, line: 93, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1128 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!118, !1131, !118, !1132, null}
!1131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !342)
!1132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !183)
!1133 = !DISubprogram(name: "__printf_chk", scope: !1128, file: !1128, line: 95, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!118, !118, !1132, null}
!1136 = !DISubprogram(name: "fputs_unlocked", scope: !662, file: !662, line: 691, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!118, !1132, !1131}
!1139 = !DILocation(line: 0, scope: !320)
!1140 = !DILocation(line: 581, column: 7, scope: !328)
!1141 = !{!1142, !1142, i64 0}
!1142 = !{!"int", !1063, i64 0}
!1143 = !DILocation(line: 581, column: 19, scope: !328)
!1144 = !DILocation(line: 581, column: 7, scope: !320)
!1145 = !DILocation(line: 585, column: 26, scope: !327)
!1146 = !DILocation(line: 0, scope: !327)
!1147 = !DILocation(line: 586, column: 23, scope: !327)
!1148 = !DILocation(line: 586, column: 28, scope: !327)
!1149 = !DILocation(line: 586, column: 32, scope: !327)
!1150 = !{!1063, !1063, i64 0}
!1151 = !DILocation(line: 586, column: 38, scope: !327)
!1152 = !DILocalVariable(name: "__s1", arg: 1, scope: !1153, file: !1154, line: 1359, type: !183)
!1153 = distinct !DISubprogram(name: "streq", scope: !1154, file: !1154, line: 1359, type: !1155, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1157)
!1154 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!186, !183, !183}
!1157 = !{!1152, !1158}
!1158 = !DILocalVariable(name: "__s2", arg: 2, scope: !1153, file: !1154, line: 1359, type: !183)
!1159 = !DILocation(line: 0, scope: !1153, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 586, column: 41, scope: !327)
!1161 = !DILocation(line: 1361, column: 11, scope: !1153, inlinedAt: !1160)
!1162 = !DILocation(line: 1361, column: 10, scope: !1153, inlinedAt: !1160)
!1163 = !DILocation(line: 586, column: 19, scope: !327)
!1164 = !DILocation(line: 587, column: 5, scope: !327)
!1165 = !DILocation(line: 588, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !320, file: !117, line: 588, column: 7)
!1167 = !DILocation(line: 588, column: 7, scope: !320)
!1168 = !DILocation(line: 590, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !117, line: 589, column: 5)
!1170 = !DILocation(line: 591, column: 7, scope: !1169)
!1171 = !DILocation(line: 595, column: 37, scope: !320)
!1172 = !DILocation(line: 595, column: 35, scope: !320)
!1173 = !DILocation(line: 596, column: 29, scope: !320)
!1174 = !DILocation(line: 597, column: 8, scope: !335)
!1175 = !DILocation(line: 597, column: 7, scope: !320)
!1176 = !DILocation(line: 604, column: 24, scope: !334)
!1177 = !DILocation(line: 604, column: 12, scope: !335)
!1178 = !DILocation(line: 0, scope: !333)
!1179 = !DILocation(line: 610, column: 16, scope: !333)
!1180 = !DILocation(line: 610, column: 7, scope: !333)
!1181 = !DILocation(line: 611, column: 21, scope: !333)
!1182 = !{!1183, !1183, i64 0}
!1183 = !{!"short", !1063, i64 0}
!1184 = !DILocation(line: 611, column: 19, scope: !333)
!1185 = !DILocation(line: 611, column: 16, scope: !333)
!1186 = !DILocation(line: 610, column: 30, scope: !333)
!1187 = distinct !{!1187, !1180, !1181, !1188}
!1188 = !{!"llvm.loop.mustprogress"}
!1189 = !DILocation(line: 612, column: 18, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !333, file: !117, line: 612, column: 11)
!1191 = !DILocation(line: 612, column: 11, scope: !333)
!1192 = !DILocation(line: 620, column: 23, scope: !320)
!1193 = !DILocation(line: 625, column: 39, scope: !320)
!1194 = !DILocation(line: 626, column: 3, scope: !320)
!1195 = !DILocation(line: 626, column: 10, scope: !320)
!1196 = !DILocation(line: 626, column: 21, scope: !320)
!1197 = !DILocation(line: 628, column: 44, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !117, line: 628, column: 11)
!1199 = distinct !DILexicalBlock(scope: !320, file: !117, line: 627, column: 5)
!1200 = !DILocation(line: 628, column: 32, scope: !1198)
!1201 = !DILocation(line: 628, column: 49, scope: !1198)
!1202 = !DILocation(line: 628, column: 11, scope: !1199)
!1203 = !DILocation(line: 630, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !117, line: 630, column: 11)
!1205 = !DILocation(line: 630, column: 11, scope: !1199)
!1206 = !DILocation(line: 632, column: 26, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !117, line: 632, column: 15)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !117, line: 631, column: 9)
!1209 = !DILocation(line: 632, column: 34, scope: !1207)
!1210 = !DILocation(line: 632, column: 37, scope: !1207)
!1211 = !DILocation(line: 632, column: 15, scope: !1208)
!1212 = !DILocation(line: 640, column: 16, scope: !1199)
!1213 = distinct !{!1213, !1194, !1214, !1188}
!1214 = !DILocation(line: 641, column: 5, scope: !320)
!1215 = !DILocation(line: 644, column: 3, scope: !320)
!1216 = !DILocation(line: 0, scope: !1153, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 648, column: 31, scope: !320)
!1218 = !DILocation(line: 0, scope: !1153, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 649, column: 31, scope: !320)
!1220 = !DILocation(line: 0, scope: !1153, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 650, column: 31, scope: !320)
!1222 = !DILocation(line: 0, scope: !1153, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 651, column: 31, scope: !320)
!1224 = !DILocation(line: 0, scope: !1153, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 652, column: 31, scope: !320)
!1226 = !DILocation(line: 0, scope: !1153, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 653, column: 31, scope: !320)
!1228 = !DILocation(line: 0, scope: !1153, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 654, column: 31, scope: !320)
!1230 = !DILocation(line: 0, scope: !1153, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 655, column: 31, scope: !320)
!1232 = !DILocation(line: 0, scope: !1153, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 656, column: 31, scope: !320)
!1234 = !DILocation(line: 0, scope: !1153, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 657, column: 31, scope: !320)
!1236 = !DILocation(line: 663, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !320, file: !117, line: 663, column: 7)
!1238 = !DILocation(line: 664, column: 7, scope: !1237)
!1239 = !DILocation(line: 664, column: 10, scope: !1237)
!1240 = !DILocation(line: 663, column: 7, scope: !320)
!1241 = !DILocation(line: 669, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !117, line: 665, column: 5)
!1243 = !DILocation(line: 671, column: 5, scope: !1242)
!1244 = !DILocation(line: 676, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1237, file: !117, line: 673, column: 5)
!1246 = !DILocation(line: 679, column: 3, scope: !320)
!1247 = !DILocation(line: 683, column: 3, scope: !320)
!1248 = !DILocation(line: 686, column: 3, scope: !320)
!1249 = !DILocation(line: 688, column: 3, scope: !320)
!1250 = !DILocation(line: 691, column: 3, scope: !320)
!1251 = !DILocation(line: 695, column: 3, scope: !320)
!1252 = !DILocation(line: 696, column: 1, scope: !320)
!1253 = !DISubprogram(name: "setlocale", scope: !1254, file: !1254, line: 122, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1254 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!177, !118, !183}
!1257 = !DISubprogram(name: "strncmp", scope: !1258, file: !1258, line: 159, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1258 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!118, !183, !183, !180}
!1261 = !DISubprogram(name: "exit", scope: !1262, file: !1262, line: 624, type: !1051, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1262 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1263 = !DISubprogram(name: "getenv", scope: !1262, file: !1262, line: 641, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!177, !183}
!1266 = !DISubprogram(name: "strcmp", scope: !1258, file: !1258, line: 156, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!118, !183, !183}
!1269 = !DISubprogram(name: "strspn", scope: !1258, file: !1258, line: 297, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!182, !183, !183}
!1272 = !DISubprogram(name: "strchr", scope: !1258, file: !1258, line: 246, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!177, !183, !118}
!1275 = !DISubprogram(name: "__ctype_b_loc", scope: !123, file: !123, line: 79, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1281 = !DISubprogram(name: "strcspn", scope: !1258, file: !1258, line: 293, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1282 = !DISubprogram(name: "fwrite_unlocked", scope: !662, file: !662, line: 704, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!180, !1285, !180, !180, !1131}
!1285 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1288 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 498, type: !1289, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1292)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!118, !118, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1303, !1304}
!1293 = !DILocalVariable(name: "argc", arg: 1, scope: !1288, file: !2, line: 498, type: !118)
!1294 = !DILocalVariable(name: "argv", arg: 2, scope: !1288, file: !2, line: 498, type: !1291)
!1295 = !DILocalVariable(name: "c", scope: !1288, file: !2, line: 500, type: !118)
!1296 = !DILocalVariable(name: "len", scope: !1288, file: !2, line: 501, type: !180)
!1297 = !DILocalVariable(name: "ok", scope: !1288, file: !2, line: 502, type: !186)
!1298 = !DILocalVariable(name: "p", scope: !1299, file: !2, line: 585, type: !183)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 584, column: 13)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 583, column: 15)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 517, column: 9)
!1302 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 515, column: 5)
!1303 = !DILocalVariable(name: "lim", scope: !1299, file: !2, line: 586, type: !183)
!1304 = !DILocalVariable(name: "n_chars", scope: !1299, file: !2, line: 587, type: !118)
!1305 = !DILocation(line: 0, scope: !1288)
!1306 = !DILocation(line: 505, column: 21, scope: !1288)
!1307 = !DILocation(line: 505, column: 3, scope: !1288)
!1308 = !DILocation(line: 506, column: 3, scope: !1288)
!1309 = !DILocation(line: 507, column: 3, scope: !1288)
!1310 = !DILocation(line: 508, column: 3, scope: !1288)
!1311 = !DILocation(line: 510, column: 3, scope: !1288)
!1312 = !DILocation(line: 512, column: 3, scope: !1288)
!1313 = !DILocation(line: 512, column: 15, scope: !1288)
!1314 = distinct !{!1314, !1312, !1315, !1188}
!1315 = !DILocation(line: 609, column: 5, scope: !1288)
!1316 = !DILocation(line: 519, column: 17, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 519, column: 15)
!1318 = !DILocation(line: 519, column: 15, scope: !1301)
!1319 = !DILocation(line: 521, column: 15, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 520, column: 13)
!1321 = !DILocation(line: 524, column: 13, scope: !1320)
!1322 = !DILocation(line: 527, column: 17, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 527, column: 15)
!1324 = !DILocation(line: 527, column: 15, scope: !1301)
!1325 = !DILocation(line: 529, column: 15, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 528, column: 13)
!1327 = !DILocation(line: 532, column: 13, scope: !1326)
!1328 = !DILocation(line: 535, column: 17, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 535, column: 15)
!1330 = !DILocation(line: 535, column: 15, scope: !1301)
!1331 = !DILocation(line: 537, column: 15, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 536, column: 13)
!1333 = !DILocation(line: 540, column: 13, scope: !1332)
!1334 = !DILocation(line: 543, column: 46, scope: !1301)
!1335 = !DILocation(line: 544, column: 46, scope: !1301)
!1336 = !DILocation(line: 543, column: 34, scope: !1301)
!1337 = !DILocation(line: 543, column: 32, scope: !1301)
!1338 = !{!1339, !1339, i64 0}
!1339 = !{!"long", !1063, i64 0}
!1340 = !DILocation(line: 546, column: 11, scope: !1301)
!1341 = !DILocation(line: 548, column: 35, scope: !1301)
!1342 = !DILocation(line: 549, column: 35, scope: !1301)
!1343 = !DILocation(line: 548, column: 23, scope: !1301)
!1344 = !DILocation(line: 548, column: 21, scope: !1301)
!1345 = !DILocation(line: 550, column: 11, scope: !1301)
!1346 = !DILocation(line: 552, column: 25, scope: !1301)
!1347 = !DILocation(line: 553, column: 11, scope: !1301)
!1348 = !DILocation(line: 555, column: 36, scope: !1301)
!1349 = !DILocation(line: 556, column: 36, scope: !1301)
!1350 = !DILocation(line: 555, column: 24, scope: !1301)
!1351 = !DILocation(line: 555, column: 22, scope: !1301)
!1352 = !DILocation(line: 558, column: 11, scope: !1301)
!1353 = !DILocation(line: 560, column: 27, scope: !1301)
!1354 = !DILocation(line: 560, column: 25, scope: !1301)
!1355 = !DILocation(line: 561, column: 11, scope: !1301)
!1356 = !DILocation(line: 563, column: 38, scope: !1301)
!1357 = !DILocation(line: 564, column: 38, scope: !1301)
!1358 = !DILocation(line: 563, column: 26, scope: !1301)
!1359 = !DILocation(line: 563, column: 24, scope: !1301)
!1360 = !DILocation(line: 566, column: 11, scope: !1301)
!1361 = !DILocation(line: 568, column: 22, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 568, column: 15)
!1363 = !DILocation(line: 0, scope: !1153, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 568, column: 15, scope: !1362)
!1365 = !DILocation(line: 1361, column: 11, scope: !1153, inlinedAt: !1364)
!1366 = !DILocation(line: 1361, column: 10, scope: !1153, inlinedAt: !1364)
!1367 = !DILocation(line: 568, column: 15, scope: !1301)
!1368 = !DILocation(line: 569, column: 27, scope: !1362)
!1369 = !DILocation(line: 569, column: 13, scope: !1362)
!1370 = !DILocation(line: 0, scope: !1153, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 570, column: 20, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 570, column: 20)
!1373 = !DILocation(line: 1361, column: 11, scope: !1153, inlinedAt: !1371)
!1374 = !DILocation(line: 1361, column: 10, scope: !1153, inlinedAt: !1371)
!1375 = !DILocation(line: 570, column: 20, scope: !1362)
!1376 = !DILocation(line: 571, column: 27, scope: !1372)
!1377 = !DILocation(line: 571, column: 13, scope: !1372)
!1378 = !DILocation(line: 0, scope: !1153, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 572, column: 20, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 572, column: 20)
!1381 = !DILocation(line: 1361, column: 11, scope: !1153, inlinedAt: !1379)
!1382 = !DILocation(line: 1361, column: 10, scope: !1153, inlinedAt: !1379)
!1383 = !DILocation(line: 572, column: 20, scope: !1372)
!1384 = !DILocation(line: 573, column: 27, scope: !1380)
!1385 = !DILocation(line: 573, column: 13, scope: !1380)
!1386 = !DILocation(line: 576, column: 15, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 575, column: 13)
!1388 = !DILocation(line: 582, column: 25, scope: !1301)
!1389 = !DILocation(line: 582, column: 17, scope: !1301)
!1390 = !DILocation(line: 583, column: 19, scope: !1300)
!1391 = !DILocation(line: 583, column: 17, scope: !1300)
!1392 = !DILocation(line: 583, column: 15, scope: !1301)
!1393 = !DILocation(line: 585, column: 31, scope: !1299)
!1394 = !DILocation(line: 0, scope: !1299)
!1395 = !DILocation(line: 588, column: 24, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 588, column: 15)
!1397 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 588, column: 15)
!1398 = !DILocation(line: 588, column: 15, scope: !1397)
!1399 = !DILocation(line: 586, column: 35, scope: !1299)
!1400 = !DILocalVariable(name: "p", arg: 1, scope: !1401, file: !138, line: 230, type: !183)
!1401 = distinct !DISubprogram(name: "mcel_scan", scope: !138, file: !138, line: 230, type: !1402, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1410)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1404, !183, !183}
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !138, line: 143, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 138, size: 64, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !1405, file: !138, line: 140, baseType: !723, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1405, file: !138, line: 141, baseType: !185, size: 8, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1405, file: !138, line: 142, baseType: !185, size: 8, offset: 40)
!1410 = !{!1400, !1411, !1412, !1413, !1424, !1425}
!1411 = !DILocalVariable(name: "lim", arg: 2, scope: !1401, file: !138, line: 230, type: !183)
!1412 = !DILocalVariable(name: "c", scope: !1401, file: !138, line: 235, type: !4)
!1413 = !DILocalVariable(name: "mbs", scope: !1401, file: !138, line: 244, type: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !729, line: 6, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !731, line: 21, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 13, size: 64, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1416, file: !731, line: 15, baseType: !118, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1416, file: !731, line: 20, baseType: !1420, size: 32, offset: 32)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !731, line: 16, size: 32, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1420, file: !731, line: 18, baseType: !110, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1420, file: !731, line: 19, baseType: !407, size: 32)
!1424 = !DILocalVariable(name: "ch", scope: !1401, file: !138, line: 267, type: !723)
!1425 = !DILocalVariable(name: "len", scope: !1401, file: !138, line: 268, type: !180)
!1426 = !DILocation(line: 0, scope: !1401, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 589, column: 24, scope: !1396)
!1428 = !DILocation(line: 235, column: 12, scope: !1401, inlinedAt: !1427)
!1429 = !DILocalVariable(name: "c", arg: 1, scope: !1430, file: !138, line: 215, type: !4)
!1430 = distinct !DISubprogram(name: "mcel_isbasic", scope: !138, file: !138, line: 215, type: !1431, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!186, !4}
!1433 = !{!1429}
!1434 = !DILocation(line: 0, scope: !1430, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 236, column: 7, scope: !1436, inlinedAt: !1427)
!1436 = distinct !DILexicalBlock(scope: !1401, file: !138, line: 236, column: 7)
!1437 = !DILocation(line: 217, column: 10, scope: !1430, inlinedAt: !1435)
!1438 = !DILocation(line: 236, column: 7, scope: !1401, inlinedAt: !1427)
!1439 = !DILocation(line: 244, column: 3, scope: !1401, inlinedAt: !1427)
!1440 = !DILocation(line: 244, column: 13, scope: !1401, inlinedAt: !1427)
!1441 = !DILocation(line: 244, column: 30, scope: !1401, inlinedAt: !1427)
!1442 = !{!1443, !1142, i64 0}
!1443 = !{!"", !1142, i64 0, !1063, i64 4}
!1444 = !DILocation(line: 267, column: 3, scope: !1401, inlinedAt: !1427)
!1445 = !DILocation(line: 268, column: 16, scope: !1401, inlinedAt: !1427)
!1446 = !DILocation(line: 274, column: 7, scope: !1447, inlinedAt: !1427)
!1447 = distinct !DILexicalBlock(scope: !1401, file: !138, line: 274, column: 7)
!1448 = !DILocation(line: 274, column: 7, scope: !1401, inlinedAt: !1427)
!1449 = !{!"branch_weights", i32 1, i32 2000}
!1450 = !DILocation(line: 280, column: 1, scope: !1401, inlinedAt: !1427)
!1451 = !DILocation(line: 589, column: 21, scope: !1396)
!1452 = distinct !{!1452, !1398, !1453, !1188}
!1453 = !DILocation(line: 589, column: 43, scope: !1397)
!1454 = !DILocation(line: 268, column: 38, scope: !1401, inlinedAt: !1427)
!1455 = !DILocation(line: 590, column: 19, scope: !1299)
!1456 = !DILocation(line: 591, column: 34, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 590, column: 19)
!1458 = !DILocation(line: 591, column: 47, scope: !1457)
!1459 = !DILocalVariable(name: "__dest", arg: 1, scope: !1460, file: !1461, line: 42, type: !1464)
!1460 = distinct !DISubprogram(name: "mempcpy", scope: !1461, file: !1461, line: 42, type: !1462, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1465)
!1461 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!178, !1464, !1285, !180}
!1464 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1465 = !{!1459, !1466, !1467}
!1466 = !DILocalVariable(name: "__src", arg: 2, scope: !1460, file: !1461, line: 42, type: !1285)
!1467 = !DILocalVariable(name: "__len", arg: 3, scope: !1460, file: !1461, line: 42, type: !180)
!1468 = !DILocation(line: 0, scope: !1460, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 591, column: 25, scope: !1457)
!1470 = !DILocation(line: 45, column: 10, scope: !1460, inlinedAt: !1469)
!1471 = !DILocalVariable(name: "__dest", arg: 1, scope: !1472, file: !1461, line: 26, type: !1464)
!1472 = distinct !DISubprogram(name: "memcpy", scope: !1461, file: !1461, line: 26, type: !1462, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1473)
!1473 = !{!1471, !1474, !1475}
!1474 = !DILocalVariable(name: "__src", arg: 2, scope: !1472, file: !1461, line: 26, type: !1285)
!1475 = !DILocalVariable(name: "__len", arg: 3, scope: !1472, file: !1461, line: 26, type: !180)
!1476 = !DILocation(line: 0, scope: !1472, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 591, column: 17, scope: !1457)
!1478 = !DILocation(line: 29, column: 10, scope: !1472, inlinedAt: !1477)
!1479 = !DILocation(line: 591, column: 17, scope: !1457)
!1480 = !DILocation(line: 593, column: 31, scope: !1457)
!1481 = !DILocation(line: 593, column: 29, scope: !1457)
!1482 = !DILocation(line: 597, column: 23, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 597, column: 19)
!1484 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 596, column: 13)
!1485 = !DILocation(line: 0, scope: !1483)
!1486 = !DILocation(line: 597, column: 19, scope: !1484)
!1487 = !DILocation(line: 598, column: 32, scope: !1483)
!1488 = !DILocation(line: 598, column: 18, scope: !1483)
!1489 = !DILocation(line: 598, column: 30, scope: !1483)
!1490 = !DILocation(line: 598, column: 17, scope: !1483)
!1491 = !DILocation(line: 600, column: 29, scope: !1483)
!1492 = !DILocation(line: 603, column: 9, scope: !1301)
!1493 = !DILocation(line: 604, column: 9, scope: !1301)
!1494 = !DILocation(line: 611, column: 7, scope: !1288)
!1495 = !DILocation(line: 612, column: 5, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 611, column: 7)
!1497 = !DILocation(line: 615, column: 35, scope: !1288)
!1498 = !DILocation(line: 615, column: 27, scope: !1288)
!1499 = !DILocation(line: 615, column: 19, scope: !1288)
!1500 = !DILocation(line: 617, column: 24, scope: !1288)
!1501 = !DILocation(line: 617, column: 18, scope: !1288)
!1502 = !DILocation(line: 618, column: 40, scope: !1288)
!1503 = !DILocation(line: 618, column: 16, scope: !1288)
!1504 = !DILocation(line: 618, column: 14, scope: !1288)
!1505 = !DILocation(line: 619, column: 39, scope: !1288)
!1506 = !DILocalVariable(name: "__dest", arg: 1, scope: !1507, file: !1461, line: 84, type: !1510)
!1507 = distinct !DISubprogram(name: "stpcpy", scope: !1461, file: !1461, line: 84, type: !1508, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1511)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!177, !1510, !1132}
!1510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!1511 = !{!1506, !1512}
!1512 = !DILocalVariable(name: "__src", arg: 2, scope: !1507, file: !1461, line: 84, type: !1132)
!1513 = !DILocation(line: 0, scope: !1507, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 619, column: 19, scope: !1288)
!1515 = !DILocation(line: 86, column: 10, scope: !1507, inlinedAt: !1514)
!1516 = !DILocation(line: 0, scope: !1507, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 619, column: 11, scope: !1288)
!1518 = !DILocation(line: 86, column: 10, scope: !1507, inlinedAt: !1517)
!1519 = !DILocation(line: 0, scope: !1507, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 619, column: 3, scope: !1288)
!1521 = !DILocation(line: 86, column: 10, scope: !1507, inlinedAt: !1520)
!1522 = !DILocation(line: 621, column: 22, scope: !1288)
!1523 = !DILocation(line: 621, column: 16, scope: !1288)
!1524 = !DILocation(line: 622, column: 14, scope: !1288)
!1525 = !DILocation(line: 622, column: 25, scope: !1288)
!1526 = !DILocation(line: 622, column: 12, scope: !1288)
!1527 = !DILocation(line: 624, column: 18, scope: !1288)
!1528 = !DILocation(line: 625, column: 25, scope: !1288)
!1529 = !DILocation(line: 625, column: 14, scope: !1288)
!1530 = !DILocation(line: 628, column: 3, scope: !1288)
!1531 = !DILocation(line: 631, column: 17, scope: !1288)
!1532 = !DILocation(line: 631, column: 9, scope: !1288)
!1533 = !DILocation(line: 632, column: 32, scope: !1288)
!1534 = !DILocation(line: 632, column: 45, scope: !1288)
!1535 = !DILocation(line: 632, column: 51, scope: !1288)
!1536 = !DILocation(line: 632, column: 23, scope: !1288)
!1537 = !DILocation(line: 632, column: 21, scope: !1288)
!1538 = !DILocation(line: 633, column: 35, scope: !1288)
!1539 = !DILocation(line: 633, column: 48, scope: !1288)
!1540 = !DILocalVariable(name: "__dest", arg: 1, scope: !1541, file: !1461, line: 57, type: !178)
!1541 = distinct !DISubprogram(name: "memset", scope: !1461, file: !1461, line: 57, type: !1542, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!178, !178, !118, !180}
!1544 = !{!1540, !1545, !1546}
!1545 = !DILocalVariable(name: "__ch", arg: 2, scope: !1541, file: !1461, line: 57, type: !118)
!1546 = !DILocalVariable(name: "__len", arg: 3, scope: !1541, file: !1461, line: 57, type: !180)
!1547 = !DILocation(line: 0, scope: !1541, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 633, column: 3, scope: !1288)
!1549 = !DILocation(line: 59, column: 10, scope: !1541, inlinedAt: !1548)
!1550 = !DILocation(line: 634, column: 3, scope: !1288)
!1551 = !DILocation(line: 634, column: 41, scope: !1288)
!1552 = !DILocation(line: 636, column: 13, scope: !1288)
!1553 = !DILocation(line: 636, column: 11, scope: !1288)
!1554 = !DILocation(line: 637, column: 18, scope: !1288)
!1555 = !DILocation(line: 637, column: 16, scope: !1288)
!1556 = !DILocation(line: 638, column: 17, scope: !1288)
!1557 = !DILocation(line: 642, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 642, column: 7)
!1559 = !DILocation(line: 642, column: 14, scope: !1558)
!1560 = !DILocation(line: 642, column: 7, scope: !1288)
!1561 = !DILocation(line: 645, column: 19, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 645, column: 5)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 645, column: 5)
!1564 = !DILocation(line: 645, column: 5, scope: !1563)
!1565 = !DILocation(line: 643, column: 10, scope: !1558)
!1566 = !DILocation(line: 643, column: 5, scope: !1558)
!1567 = !DILocation(line: 646, column: 22, scope: !1562)
!1568 = !DILocation(line: 646, column: 13, scope: !1562)
!1569 = !DILocation(line: 646, column: 10, scope: !1562)
!1570 = !DILocation(line: 645, column: 33, scope: !1562)
!1571 = distinct !{!1571, !1564, !1572, !1188}
!1572 = !DILocation(line: 646, column: 34, scope: !1563)
!1573 = !DILocation(line: 648, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 648, column: 7)
!1575 = !DILocation(line: 648, column: 23, scope: !1574)
!1576 = !DILocation(line: 648, column: 34, scope: !1574)
!1577 = !DILocation(line: 648, column: 26, scope: !1574)
!1578 = !DILocation(line: 648, column: 41, scope: !1574)
!1579 = !DILocation(line: 648, column: 7, scope: !1288)
!1580 = !DILocation(line: 649, column: 5, scope: !1574)
!1581 = !DILocation(line: 651, column: 10, scope: !1288)
!1582 = !DILocation(line: 651, column: 3, scope: !1288)
!1583 = !DISubprogram(name: "bindtextdomain", scope: !1124, file: !1124, line: 86, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!177, !183, !183}
!1586 = !DISubprogram(name: "textdomain", scope: !1124, file: !1124, line: 82, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1587 = !DISubprogram(name: "atexit", scope: !1262, file: !1262, line: 602, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!118, !699}
!1590 = !DISubprogram(name: "getopt_long", scope: !616, file: !616, line: 66, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!118, !118, !1593, !183, !1595, !621}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!1596 = distinct !DISubprogram(name: "build_type_arg", scope: !2, file: !2, line: 264, type: !1597, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1600)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!186, !1599, !592, !177}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1600 = !{!1601, !1602, !1603, !1604, !1605}
!1601 = !DILocalVariable(name: "typep", arg: 1, scope: !1596, file: !2, line: 264, type: !1599)
!1602 = !DILocalVariable(name: "regexp", arg: 2, scope: !1596, file: !2, line: 265, type: !592)
!1603 = !DILocalVariable(name: "fastmap", arg: 3, scope: !1596, file: !2, line: 265, type: !177)
!1604 = !DILocalVariable(name: "errmsg", scope: !1596, file: !2, line: 267, type: !183)
!1605 = !DILocalVariable(name: "rval", scope: !1596, file: !2, line: 268, type: !186)
!1606 = !DILocation(line: 0, scope: !1596)
!1607 = !DILocation(line: 270, column: 12, scope: !1596)
!1608 = !DILocation(line: 270, column: 11, scope: !1596)
!1609 = !DILocation(line: 270, column: 3, scope: !1596)
!1610 = !DILocation(line: 275, column: 14, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 271, column: 5)
!1612 = !DILocation(line: 276, column: 7, scope: !1611)
!1613 = !DILocation(line: 278, column: 22, scope: !1611)
!1614 = !DILocation(line: 278, column: 14, scope: !1611)
!1615 = !DILocation(line: 281, column: 15, scope: !1611)
!1616 = !DILocation(line: 280, column: 25, scope: !1611)
!1617 = !DILocation(line: 281, column: 23, scope: !1611)
!1618 = !{!1619, !1062, i64 32}
!1619 = !{!"re_pattern_buffer", !1062, i64 0, !1339, i64 8, !1339, i64 16, !1339, i64 24, !1062, i64 32, !1062, i64 40, !1339, i64 48, !1142, i64 56, !1142, i64 56, !1142, i64 56, !1142, i64 56, !1142, i64 56, !1142, i64 56, !1142, i64 56}
!1620 = !DILocation(line: 282, column: 15, scope: !1611)
!1621 = !DILocation(line: 282, column: 25, scope: !1611)
!1622 = !{!1619, !1062, i64 40}
!1623 = !DILocation(line: 283, column: 25, scope: !1611)
!1624 = !DILocation(line: 285, column: 36, scope: !1611)
!1625 = !DILocation(line: 285, column: 44, scope: !1611)
!1626 = !DILocation(line: 285, column: 16, scope: !1611)
!1627 = !DILocation(line: 286, column: 11, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 286, column: 11)
!1629 = !DILocation(line: 286, column: 11, scope: !1611)
!1630 = !DILocation(line: 287, column: 9, scope: !1628)
!1631 = !DILocation(line: 293, column: 3, scope: !1596)
!1632 = !DISubprogram(name: "strlen", scope: !1258, file: !1258, line: 407, type: !1633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!182, !183}
!1635 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1262, file: !1262, line: 98, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!180}
!1638 = !DISubprogram(name: "mbrtoc32", scope: !724, file: !724, line: 57, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!180, !1641, !1132, !180, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1645 = distinct !DISubprogram(name: "nl_file", scope: !2, file: !2, line: 458, type: !1646, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!186, !183}
!1648 = !{!1649, !1650, !1651}
!1649 = !DILocalVariable(name: "file", arg: 1, scope: !1645, file: !2, line: 458, type: !183)
!1650 = !DILocalVariable(name: "stream", scope: !1645, file: !2, line: 460, type: !342)
!1651 = !DILocalVariable(name: "err", scope: !1645, file: !2, line: 482, type: !118)
!1652 = !DILocation(line: 0, scope: !1645)
!1653 = !DILocation(line: 0, scope: !1153, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 462, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 462, column: 7)
!1656 = !DILocation(line: 1361, column: 11, scope: !1153, inlinedAt: !1654)
!1657 = !DILocation(line: 1361, column: 10, scope: !1153, inlinedAt: !1654)
!1658 = !DILocation(line: 462, column: 7, scope: !1645)
!1659 = !DILocation(line: 464, column: 23, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 463, column: 5)
!1661 = !DILocation(line: 465, column: 16, scope: !1660)
!1662 = !DILocation(line: 467, column: 5, scope: !1660)
!1663 = !DILocation(line: 470, column: 16, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 469, column: 5)
!1665 = !DILocation(line: 471, column: 18, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 471, column: 11)
!1667 = !DILocation(line: 471, column: 11, scope: !1664)
!1668 = !DILocation(line: 473, column: 11, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 472, column: 9)
!1670 = !DILocation(line: 474, column: 11, scope: !1669)
!1671 = !DILocation(line: 0, scope: !1655)
!1672 = !DILocation(line: 478, column: 3, scope: !1645)
!1673 = !DILocalVariable(name: "fp", arg: 1, scope: !1674, file: !2, line: 429, type: !342)
!1674 = distinct !DISubprogram(name: "process_file", scope: !2, file: !2, line: 429, type: !1675, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1677)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !342}
!1677 = !{!1673}
!1678 = !DILocation(line: 0, scope: !1674, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 480, column: 3, scope: !1645)
!1680 = !DILocation(line: 431, column: 3, scope: !1674, inlinedAt: !1679)
!1681 = !DILocation(line: 431, column: 10, scope: !1674, inlinedAt: !1679)
!1682 = !DILocation(line: 409, column: 25, scope: !1683, inlinedAt: !1688)
!1683 = distinct !DISubprogram(name: "check_section", scope: !2, file: !2, line: 407, type: !1684, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!170}
!1686 = !{!1687}
!1687 = !DILocalVariable(name: "len", scope: !1683, file: !2, line: 409, type: !180)
!1688 = distinct !DILocation(line: 433, column: 15, scope: !1689, inlinedAt: !1679)
!1689 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 432, column: 5)
!1690 = !{!1691, !1339, i64 8}
!1691 = !{!"linebuffer", !1339, i64 0, !1339, i64 8, !1062, i64 16}
!1692 = !DILocation(line: 409, column: 32, scope: !1683, inlinedAt: !1688)
!1693 = !DILocation(line: 0, scope: !1683, inlinedAt: !1688)
!1694 = !DILocation(line: 411, column: 13, scope: !1695, inlinedAt: !1688)
!1695 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 411, column: 7)
!1696 = !DILocation(line: 411, column: 11, scope: !1695, inlinedAt: !1688)
!1697 = !DILocation(line: 411, column: 29, scope: !1695, inlinedAt: !1688)
!1698 = !DILocation(line: 412, column: 27, scope: !1695, inlinedAt: !1688)
!1699 = !{!1691, !1062, i64 16}
!1700 = !DILocation(line: 412, column: 35, scope: !1695, inlinedAt: !1688)
!1701 = !DILocalVariable(name: "__s1", arg: 1, scope: !1702, file: !1154, line: 974, type: !1286)
!1702 = distinct !DISubprogram(name: "memeq", scope: !1154, file: !1154, line: 974, type: !1703, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!186, !1286, !1286, !180}
!1705 = !{!1701, !1706, !1707}
!1706 = !DILocalVariable(name: "__s2", arg: 2, scope: !1702, file: !1154, line: 974, type: !1286)
!1707 = !DILocalVariable(name: "__n", arg: 3, scope: !1702, file: !1154, line: 974, type: !180)
!1708 = !DILocation(line: 0, scope: !1702, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 412, column: 11, scope: !1695, inlinedAt: !1688)
!1710 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1709)
!1711 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1709)
!1712 = !DILocation(line: 411, column: 7, scope: !1683, inlinedAt: !1688)
!1713 = !DILocation(line: 414, column: 14, scope: !1714, inlinedAt: !1688)
!1714 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 414, column: 7)
!1715 = !DILocation(line: 414, column: 11, scope: !1714, inlinedAt: !1688)
!1716 = !DILocation(line: 415, column: 7, scope: !1714, inlinedAt: !1688)
!1717 = !DILocation(line: 415, column: 34, scope: !1714, inlinedAt: !1688)
!1718 = !DILocation(line: 0, scope: !1702, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 415, column: 10, scope: !1714, inlinedAt: !1688)
!1720 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1719)
!1721 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1719)
!1722 = !DILocation(line: 414, column: 7, scope: !1683, inlinedAt: !1688)
!1723 = !DILocation(line: 417, column: 14, scope: !1724, inlinedAt: !1688)
!1724 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 417, column: 7)
!1725 = !DILocation(line: 417, column: 11, scope: !1724, inlinedAt: !1688)
!1726 = !DILocation(line: 418, column: 7, scope: !1724, inlinedAt: !1688)
!1727 = !DILocation(line: 418, column: 34, scope: !1724, inlinedAt: !1688)
!1728 = !DILocation(line: 0, scope: !1702, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 418, column: 10, scope: !1724, inlinedAt: !1688)
!1730 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1729)
!1731 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1729)
!1732 = !DILocation(line: 417, column: 7, scope: !1683, inlinedAt: !1688)
!1733 = !DILocation(line: 420, column: 11, scope: !1734, inlinedAt: !1688)
!1734 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 420, column: 7)
!1735 = !DILocation(line: 421, column: 7, scope: !1734, inlinedAt: !1688)
!1736 = !DILocation(line: 421, column: 34, scope: !1734, inlinedAt: !1688)
!1737 = !DILocation(line: 0, scope: !1702, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 421, column: 10, scope: !1734, inlinedAt: !1688)
!1739 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1738)
!1740 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1738)
!1741 = !DILocation(line: 420, column: 7, scope: !1683, inlinedAt: !1688)
!1742 = !DILocation(line: 325, column: 18, scope: !1743, inlinedAt: !1744)
!1743 = distinct !DISubprogram(name: "proc_header", scope: !2, file: !2, line: 323, type: !600, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1070)
!1744 = distinct !DILocation(line: 436, column: 11, scope: !1745, inlinedAt: !1679)
!1745 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 434, column: 9)
!1746 = !DILocation(line: 325, column: 16, scope: !1743, inlinedAt: !1744)
!1747 = !DILocation(line: 326, column: 17, scope: !1743, inlinedAt: !1744)
!1748 = !DILocation(line: 313, column: 7, scope: !1749, inlinedAt: !1751)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 313, column: 7)
!1750 = distinct !DISubprogram(name: "reset_lineno", scope: !2, file: !2, line: 311, type: !600, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1070)
!1751 = distinct !DILocation(line: 327, column: 3, scope: !1743, inlinedAt: !1744)
!1752 = !DILocation(line: 313, column: 7, scope: !1750, inlinedAt: !1751)
!1753 = !DILocation(line: 315, column: 17, scope: !1754, inlinedAt: !1751)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 314, column: 5)
!1755 = !DILocation(line: 315, column: 15, scope: !1754, inlinedAt: !1751)
!1756 = !DILocation(line: 316, column: 24, scope: !1754, inlinedAt: !1751)
!1757 = !DILocation(line: 317, column: 5, scope: !1754, inlinedAt: !1751)
!1758 = !DILocalVariable(name: "__c", arg: 1, scope: !1759, file: !1760, line: 108, type: !118)
!1759 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1760, file: !1760, line: 108, type: !1761, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1763)
!1760 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!118, !118}
!1763 = !{!1758}
!1764 = !DILocation(line: 0, scope: !1759, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 328, column: 3, scope: !1743, inlinedAt: !1744)
!1766 = !DILocation(line: 110, column: 10, scope: !1759, inlinedAt: !1765)
!1767 = !{!1768, !1062, i64 40}
!1768 = !{!"_IO_FILE", !1142, i64 0, !1062, i64 8, !1062, i64 16, !1062, i64 24, !1062, i64 32, !1062, i64 40, !1062, i64 48, !1062, i64 56, !1062, i64 64, !1062, i64 72, !1062, i64 80, !1062, i64 88, !1062, i64 96, !1062, i64 104, !1142, i64 112, !1142, i64 116, !1339, i64 120, !1183, i64 128, !1063, i64 130, !1063, i64 131, !1062, i64 136, !1339, i64 144, !1062, i64 152, !1062, i64 160, !1062, i64 168, !1062, i64 176, !1339, i64 184, !1142, i64 192, !1063, i64 196}
!1769 = !{!1768, !1062, i64 48}
!1770 = !{!"branch_weights", i32 2000, i32 1}
!1771 = !DILocation(line: 336, column: 18, scope: !1772, inlinedAt: !1773)
!1772 = distinct !DISubprogram(name: "proc_body", scope: !2, file: !2, line: 334, type: !600, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1070)
!1773 = distinct !DILocation(line: 439, column: 11, scope: !1745, inlinedAt: !1679)
!1774 = !DILocation(line: 336, column: 16, scope: !1772, inlinedAt: !1773)
!1775 = !DILocation(line: 337, column: 17, scope: !1772, inlinedAt: !1773)
!1776 = !DILocation(line: 313, column: 7, scope: !1749, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 338, column: 3, scope: !1772, inlinedAt: !1773)
!1778 = !DILocation(line: 313, column: 7, scope: !1750, inlinedAt: !1777)
!1779 = !DILocation(line: 315, column: 17, scope: !1754, inlinedAt: !1777)
!1780 = !DILocation(line: 315, column: 15, scope: !1754, inlinedAt: !1777)
!1781 = !DILocation(line: 316, column: 24, scope: !1754, inlinedAt: !1777)
!1782 = !DILocation(line: 317, column: 5, scope: !1754, inlinedAt: !1777)
!1783 = !DILocation(line: 0, scope: !1759, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 339, column: 3, scope: !1772, inlinedAt: !1773)
!1785 = !DILocation(line: 110, column: 10, scope: !1759, inlinedAt: !1784)
!1786 = !DILocation(line: 347, column: 18, scope: !1787, inlinedAt: !1788)
!1787 = distinct !DISubprogram(name: "proc_footer", scope: !2, file: !2, line: 345, type: !600, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1070)
!1788 = distinct !DILocation(line: 442, column: 11, scope: !1745, inlinedAt: !1679)
!1789 = !DILocation(line: 347, column: 16, scope: !1787, inlinedAt: !1788)
!1790 = !DILocation(line: 348, column: 17, scope: !1787, inlinedAt: !1788)
!1791 = !DILocation(line: 313, column: 7, scope: !1749, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 349, column: 3, scope: !1787, inlinedAt: !1788)
!1793 = !DILocation(line: 313, column: 7, scope: !1750, inlinedAt: !1792)
!1794 = !DILocation(line: 315, column: 17, scope: !1754, inlinedAt: !1792)
!1795 = !DILocation(line: 315, column: 15, scope: !1754, inlinedAt: !1792)
!1796 = !DILocation(line: 316, column: 24, scope: !1754, inlinedAt: !1792)
!1797 = !DILocation(line: 317, column: 5, scope: !1754, inlinedAt: !1792)
!1798 = !DILocation(line: 0, scope: !1759, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 350, column: 3, scope: !1787, inlinedAt: !1788)
!1800 = !DILocation(line: 110, column: 10, scope: !1759, inlinedAt: !1799)
!1801 = !DILocation(line: 360, column: 12, scope: !599, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 445, column: 11, scope: !1745, inlinedAt: !1679)
!1803 = !DILocation(line: 360, column: 11, scope: !599, inlinedAt: !1802)
!1804 = !DILocation(line: 360, column: 3, scope: !599, inlinedAt: !1802)
!1805 = !DILocation(line: 363, column: 11, scope: !1806, inlinedAt: !1802)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 363, column: 11)
!1807 = distinct !DILexicalBlock(scope: !599, file: !2, line: 361, column: 5)
!1808 = !DILocation(line: 363, column: 22, scope: !1806, inlinedAt: !1802)
!1809 = !DILocation(line: 363, column: 11, scope: !1807, inlinedAt: !1802)
!1810 = !DILocation(line: 365, column: 17, scope: !1811, inlinedAt: !1802)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 365, column: 15)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 364, column: 9)
!1813 = !DILocation(line: 365, column: 35, scope: !1811, inlinedAt: !1802)
!1814 = !DILocation(line: 365, column: 38, scope: !1811, inlinedAt: !1802)
!1815 = !DILocation(line: 365, column: 52, scope: !1811, inlinedAt: !1802)
!1816 = !DILocation(line: 365, column: 15, scope: !1812, inlinedAt: !1802)
!1817 = !DILocation(line: 301, column: 7, scope: !1818, inlinedAt: !1820)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 301, column: 7)
!1819 = distinct !DISubprogram(name: "print_lineno", scope: !2, file: !2, line: 299, type: !600, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1070)
!1820 = distinct !DILocation(line: 367, column: 15, scope: !1821, inlinedAt: !1802)
!1821 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 366, column: 13)
!1822 = !DILocation(line: 301, column: 7, scope: !1819, inlinedAt: !1820)
!1823 = !DILocation(line: 302, column: 5, scope: !1818, inlinedAt: !1820)
!1824 = !DILocation(line: 304, column: 3, scope: !1819, inlinedAt: !1820)
!1825 = !DILocation(line: 306, column: 7, scope: !1826, inlinedAt: !1820)
!1826 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 306, column: 7)
!1827 = !DILocation(line: 306, column: 7, scope: !1819, inlinedAt: !1820)
!1828 = !DILocation(line: 307, column: 22, scope: !1826, inlinedAt: !1820)
!1829 = !DILocation(line: 307, column: 5, scope: !1826, inlinedAt: !1820)
!1830 = !DILocation(line: 368, column: 27, scope: !1821, inlinedAt: !1802)
!1831 = !DILocation(line: 369, column: 13, scope: !1821, inlinedAt: !1802)
!1832 = !DILocation(line: 371, column: 13, scope: !1811, inlinedAt: !1802)
!1833 = !DILocation(line: 301, column: 7, scope: !1818, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 374, column: 9, scope: !1806, inlinedAt: !1802)
!1835 = !DILocation(line: 301, column: 7, scope: !1819, inlinedAt: !1834)
!1836 = !DILocation(line: 302, column: 5, scope: !1818, inlinedAt: !1834)
!1837 = !DILocation(line: 304, column: 3, scope: !1819, inlinedAt: !1834)
!1838 = !DILocation(line: 306, column: 7, scope: !1826, inlinedAt: !1834)
!1839 = !DILocation(line: 306, column: 7, scope: !1819, inlinedAt: !1834)
!1840 = !DILocation(line: 307, column: 22, scope: !1826, inlinedAt: !1834)
!1841 = !DILocation(line: 307, column: 5, scope: !1826, inlinedAt: !1834)
!1842 = !DILocation(line: 377, column: 13, scope: !1843, inlinedAt: !1802)
!1843 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 377, column: 11)
!1844 = !DILocation(line: 377, column: 11, scope: !1807, inlinedAt: !1802)
!1845 = !DILocation(line: 301, column: 7, scope: !1818, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 378, column: 9, scope: !1843, inlinedAt: !1802)
!1847 = !DILocation(line: 301, column: 7, scope: !1819, inlinedAt: !1846)
!1848 = !DILocation(line: 302, column: 5, scope: !1818, inlinedAt: !1846)
!1849 = !DILocation(line: 304, column: 3, scope: !1819, inlinedAt: !1846)
!1850 = !DILocation(line: 306, column: 7, scope: !1826, inlinedAt: !1846)
!1851 = !DILocation(line: 306, column: 7, scope: !1819, inlinedAt: !1846)
!1852 = !DILocation(line: 307, column: 22, scope: !1826, inlinedAt: !1846)
!1853 = !DILocation(line: 307, column: 5, scope: !1826, inlinedAt: !1846)
!1854 = !DILocation(line: 380, column: 9, scope: !1843, inlinedAt: !1802)
!1855 = !DILocation(line: 383, column: 7, scope: !1807, inlinedAt: !1802)
!1856 = !DILocation(line: 384, column: 7, scope: !1807, inlinedAt: !1802)
!1857 = !DILocation(line: 386, column: 26, scope: !1807, inlinedAt: !1802)
!1858 = !DILocation(line: 386, column: 50, scope: !1807, inlinedAt: !1802)
!1859 = !DILocation(line: 386, column: 58, scope: !1807, inlinedAt: !1802)
!1860 = !DILocation(line: 386, column: 15, scope: !1807, inlinedAt: !1802)
!1861 = !DILocation(line: 386, column: 7, scope: !1807, inlinedAt: !1802)
!1862 = !DILocation(line: 390, column: 11, scope: !1863, inlinedAt: !1802)
!1863 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 388, column: 9)
!1864 = !DILocation(line: 393, column: 11, scope: !1863, inlinedAt: !1802)
!1865 = !DILocation(line: 394, column: 11, scope: !1863, inlinedAt: !1802)
!1866 = !DILocation(line: 301, column: 7, scope: !1818, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 397, column: 11, scope: !1863, inlinedAt: !1802)
!1868 = !DILocation(line: 301, column: 7, scope: !1819, inlinedAt: !1867)
!1869 = !DILocation(line: 302, column: 5, scope: !1818, inlinedAt: !1867)
!1870 = !DILocation(line: 304, column: 3, scope: !1819, inlinedAt: !1867)
!1871 = !DILocation(line: 306, column: 7, scope: !1826, inlinedAt: !1867)
!1872 = !DILocation(line: 306, column: 7, scope: !1819, inlinedAt: !1867)
!1873 = !DILocation(line: 307, column: 22, scope: !1826, inlinedAt: !1867)
!1874 = !DILocation(line: 307, column: 5, scope: !1826, inlinedAt: !1867)
!1875 = !DILocation(line: 401, column: 3, scope: !599, inlinedAt: !1802)
!1876 = !DILocation(line: 449, column: 11, scope: !1877, inlinedAt: !1679)
!1877 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 449, column: 11)
!1878 = !DILocalVariable(name: "__stream", arg: 1, scope: !1879, file: !1760, line: 135, type: !342)
!1879 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1760, file: !1760, line: 135, type: !1880, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!118, !342}
!1882 = !{!1878}
!1883 = !DILocation(line: 0, scope: !1879, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 449, column: 11, scope: !1877, inlinedAt: !1679)
!1885 = !DILocation(line: 137, column: 10, scope: !1879, inlinedAt: !1884)
!1886 = !{!1768, !1142, i64 0}
!1887 = !DILocation(line: 449, column: 11, scope: !1689, inlinedAt: !1679)
!1888 = distinct !{!1888, !1680, !1889, !1188}
!1889 = !DILocation(line: 451, column: 5, scope: !1674, inlinedAt: !1679)
!1890 = !DILocation(line: 948, column: 21, scope: !1891, inlinedAt: !1894)
!1891 = distinct !DISubprogram(name: "write_error", scope: !117, file: !117, line: 946, type: !600, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1892)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "saved_errno", scope: !1891, file: !117, line: 948, type: !118)
!1894 = distinct !DILocation(line: 450, column: 9, scope: !1877, inlinedAt: !1679)
!1895 = !DILocation(line: 0, scope: !1891, inlinedAt: !1894)
!1896 = !DILocation(line: 949, column: 3, scope: !1891, inlinedAt: !1894)
!1897 = !DILocation(line: 950, column: 11, scope: !1891, inlinedAt: !1894)
!1898 = !DILocation(line: 950, column: 3, scope: !1891, inlinedAt: !1894)
!1899 = !DILocation(line: 951, column: 3, scope: !1891, inlinedAt: !1894)
!1900 = !DILocation(line: 952, column: 3, scope: !1891, inlinedAt: !1894)
!1901 = !DILocation(line: 482, column: 13, scope: !1645)
!1902 = !DILocation(line: 0, scope: !1879, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 483, column: 8, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 483, column: 7)
!1905 = !DILocation(line: 137, column: 10, scope: !1879, inlinedAt: !1903)
!1906 = !DILocation(line: 483, column: 8, scope: !1904)
!1907 = !DILocation(line: 483, column: 7, scope: !1645)
!1908 = !DILocation(line: 0, scope: !1153, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 485, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 485, column: 7)
!1911 = !DILocation(line: 1361, column: 11, scope: !1153, inlinedAt: !1909)
!1912 = !DILocation(line: 1361, column: 10, scope: !1153, inlinedAt: !1909)
!1913 = !DILocation(line: 485, column: 7, scope: !1645)
!1914 = !DILocation(line: 486, column: 5, scope: !1910)
!1915 = !DILocation(line: 487, column: 12, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 487, column: 12)
!1917 = !DILocation(line: 487, column: 28, scope: !1916)
!1918 = !DILocation(line: 487, column: 33, scope: !1916)
!1919 = !DILocation(line: 488, column: 11, scope: !1916)
!1920 = !DILocation(line: 488, column: 5, scope: !1916)
!1921 = !DILocation(line: 489, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 489, column: 7)
!1923 = !DILocation(line: 489, column: 7, scope: !1645)
!1924 = !DILocation(line: 495, column: 1, scope: !1645)
!1925 = !DISubprogram(name: "__errno_location", scope: !1926, file: !1926, line: 37, type: !1927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1926 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!621}
!1929 = !DISubprogram(name: "__overflow", scope: !662, file: !662, line: 886, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!118, !342, !118}
!1932 = !DISubprogram(name: "re_search", scope: !249, file: !249, line: 564, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1935, !592, !183, !1935, !1935, !1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !249, line: 490, baseType: !118)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !249, line: 497, size: 192, elements: !1938)
!1938 = !{!1939, !1941, !1943}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !1937, file: !249, line: 499, baseType: !1940, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !249, line: 55, baseType: !110)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1937, file: !249, line: 500, baseType: !1942, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1937, file: !249, line: 501, baseType: !1942, size: 64, offset: 128)
!1944 = !DISubprogram(name: "fflush_unlocked", scope: !662, file: !662, line: 239, type: !1880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1945 = !DISubprogram(name: "clearerr_unlocked", scope: !662, file: !662, line: 794, type: !1675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1946 = !DISubprogram(name: "re_compile_pattern", scope: !249, file: !249, line: 548, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!183, !183, !180, !592}
!1949 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !636, file: !636, line: 50, type: !1093, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !635, retainedNodes: !1950)
!1950 = !{!1951}
!1951 = !DILocalVariable(name: "file", arg: 1, scope: !1949, file: !636, line: 50, type: !183)
!1952 = !DILocation(line: 0, scope: !1949)
!1953 = !DILocation(line: 52, column: 13, scope: !1949)
!1954 = !DILocation(line: 53, column: 1, scope: !1949)
!1955 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !636, file: !636, line: 87, type: !1956, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !635, retainedNodes: !1958)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !186}
!1958 = !{!1959}
!1959 = !DILocalVariable(name: "ignore", arg: 1, scope: !1955, file: !636, line: 87, type: !186)
!1960 = !DILocation(line: 0, scope: !1955)
!1961 = !DILocation(line: 89, column: 16, scope: !1955)
!1962 = !{!1963, !1963, i64 0}
!1963 = !{!"_Bool", !1063, i64 0}
!1964 = !DILocation(line: 90, column: 1, scope: !1955)
!1965 = distinct !DISubprogram(name: "close_stdout", scope: !636, file: !636, line: 116, type: !600, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !635, retainedNodes: !1966)
!1966 = !{!1967}
!1967 = !DILocalVariable(name: "write_error", scope: !1968, file: !636, line: 121, type: !183)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !636, line: 120, column: 5)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !636, line: 118, column: 7)
!1970 = !DILocation(line: 118, column: 21, scope: !1969)
!1971 = !DILocation(line: 118, column: 7, scope: !1969)
!1972 = !DILocation(line: 118, column: 29, scope: !1969)
!1973 = !DILocation(line: 119, column: 7, scope: !1969)
!1974 = !DILocation(line: 119, column: 12, scope: !1969)
!1975 = !{i8 0, i8 2}
!1976 = !DILocation(line: 119, column: 25, scope: !1969)
!1977 = !DILocation(line: 119, column: 28, scope: !1969)
!1978 = !DILocation(line: 119, column: 34, scope: !1969)
!1979 = !DILocation(line: 118, column: 7, scope: !1965)
!1980 = !DILocation(line: 121, column: 33, scope: !1968)
!1981 = !DILocation(line: 0, scope: !1968)
!1982 = !DILocation(line: 122, column: 11, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1968, file: !636, line: 122, column: 11)
!1984 = !DILocation(line: 0, scope: !1983)
!1985 = !DILocation(line: 122, column: 11, scope: !1968)
!1986 = !DILocation(line: 123, column: 9, scope: !1983)
!1987 = !DILocation(line: 126, column: 9, scope: !1983)
!1988 = !DILocation(line: 128, column: 14, scope: !1968)
!1989 = !DILocation(line: 128, column: 7, scope: !1968)
!1990 = !DILocation(line: 133, column: 42, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1965, file: !636, line: 133, column: 7)
!1992 = !DILocation(line: 133, column: 28, scope: !1991)
!1993 = !DILocation(line: 133, column: 50, scope: !1991)
!1994 = !DILocation(line: 133, column: 7, scope: !1965)
!1995 = !DILocation(line: 134, column: 12, scope: !1991)
!1996 = !DILocation(line: 134, column: 5, scope: !1991)
!1997 = !DILocation(line: 135, column: 1, scope: !1965)
!1998 = !DISubprogram(name: "_exit", scope: !1999, file: !1999, line: 624, type: !1051, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1999 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2000 = distinct !DISubprogram(name: "verror", scope: !651, file: !651, line: 251, type: !2001, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !118, !118, !183, !661}
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "status", arg: 1, scope: !2000, file: !651, line: 251, type: !118)
!2005 = !DILocalVariable(name: "errnum", arg: 2, scope: !2000, file: !651, line: 251, type: !118)
!2006 = !DILocalVariable(name: "message", arg: 3, scope: !2000, file: !651, line: 251, type: !183)
!2007 = !DILocalVariable(name: "args", arg: 4, scope: !2000, file: !651, line: 251, type: !661)
!2008 = !DILocation(line: 0, scope: !2000)
!2009 = !DILocation(line: 251, column: 1, scope: !2000)
!2010 = !DILocation(line: 261, column: 3, scope: !2000)
!2011 = !DILocation(line: 265, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2000, file: !651, line: 265, column: 7)
!2013 = !DILocation(line: 265, column: 7, scope: !2000)
!2014 = !DILocation(line: 266, column: 5, scope: !2012)
!2015 = !DILocation(line: 272, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !651, line: 268, column: 5)
!2017 = !DILocation(line: 276, column: 3, scope: !2000)
!2018 = !{i64 0, i64 8, !1061, i64 8, i64 8, !1061, i64 16, i64 8, !1061, i64 24, i64 4, !1141, i64 28, i64 4, !1141}
!2019 = !DILocation(line: 282, column: 1, scope: !2000)
!2020 = distinct !DISubprogram(name: "flush_stdout", scope: !651, file: !651, line: 163, type: !600, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2021)
!2021 = !{!2022}
!2022 = !DILocalVariable(name: "stdout_fd", scope: !2020, file: !651, line: 166, type: !118)
!2023 = !DILocation(line: 0, scope: !2020)
!2024 = !DILocalVariable(name: "fd", arg: 1, scope: !2025, file: !651, line: 145, type: !118)
!2025 = distinct !DISubprogram(name: "is_open", scope: !651, file: !651, line: 145, type: !1761, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2026)
!2026 = !{!2024}
!2027 = !DILocation(line: 0, scope: !2025, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 182, column: 25, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2020, file: !651, line: 182, column: 7)
!2030 = !DILocation(line: 157, column: 15, scope: !2025, inlinedAt: !2028)
!2031 = !DILocation(line: 157, column: 12, scope: !2025, inlinedAt: !2028)
!2032 = !DILocation(line: 182, column: 7, scope: !2020)
!2033 = !DILocation(line: 184, column: 5, scope: !2029)
!2034 = !DILocation(line: 185, column: 1, scope: !2020)
!2035 = distinct !DISubprogram(name: "error_tail", scope: !651, file: !651, line: 219, type: !2001, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2036)
!2036 = !{!2037, !2038, !2039, !2040}
!2037 = !DILocalVariable(name: "status", arg: 1, scope: !2035, file: !651, line: 219, type: !118)
!2038 = !DILocalVariable(name: "errnum", arg: 2, scope: !2035, file: !651, line: 219, type: !118)
!2039 = !DILocalVariable(name: "message", arg: 3, scope: !2035, file: !651, line: 219, type: !183)
!2040 = !DILocalVariable(name: "args", arg: 4, scope: !2035, file: !651, line: 219, type: !661)
!2041 = !DILocation(line: 0, scope: !2035)
!2042 = !DILocation(line: 219, column: 1, scope: !2035)
!2043 = !DILocation(line: 229, column: 13, scope: !2035)
!2044 = !DILocation(line: 135, column: 10, scope: !2045, inlinedAt: !2087)
!2045 = distinct !DISubprogram(name: "vfprintf", scope: !1128, file: !1128, line: 132, type: !2046, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2083)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!118, !2048, !1132, !663}
!2048 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2049)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2051, file: !346, line: 51, baseType: !118, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2051, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2051, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2051, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2051, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2051, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2051, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2051, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2051, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2051, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2051, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2051, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2051, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2051, file: !346, line: 70, baseType: !2067, size: 64, offset: 832)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2051, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2051, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2051, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2051, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2051, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2051, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2051, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2051, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2051, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2051, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2051, file: !346, line: 93, baseType: !2067, size: 64, offset: 1344)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2051, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2051, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2051, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2051, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2083 = !{!2084, !2085, !2086}
!2084 = !DILocalVariable(name: "__stream", arg: 1, scope: !2045, file: !1128, line: 132, type: !2048)
!2085 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2045, file: !1128, line: 133, type: !1132)
!2086 = !DILocalVariable(name: "__ap", arg: 3, scope: !2045, file: !1128, line: 133, type: !663)
!2087 = distinct !DILocation(line: 229, column: 3, scope: !2035)
!2088 = !{!2089, !2091}
!2089 = distinct !{!2089, !2090, !"vfprintf.inline: argument 0"}
!2090 = distinct !{!2090, !"vfprintf.inline"}
!2091 = distinct !{!2091, !2090, !"vfprintf.inline: argument 1"}
!2092 = !DILocation(line: 229, column: 3, scope: !2035)
!2093 = !DILocation(line: 0, scope: !2045, inlinedAt: !2087)
!2094 = !DILocation(line: 133, column: 49, scope: !2045, inlinedAt: !2087)
!2095 = !DILocation(line: 232, column: 3, scope: !2035)
!2096 = !DILocation(line: 233, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2035, file: !651, line: 233, column: 7)
!2098 = !DILocation(line: 233, column: 7, scope: !2035)
!2099 = !DILocalVariable(name: "errnum", arg: 1, scope: !2100, file: !651, line: 188, type: !118)
!2100 = distinct !DISubprogram(name: "print_errno_message", scope: !651, file: !651, line: 188, type: !1051, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2101)
!2101 = !{!2099, !2102, !2103}
!2102 = !DILocalVariable(name: "s", scope: !2100, file: !651, line: 190, type: !183)
!2103 = !DILocalVariable(name: "errbuf", scope: !2100, file: !651, line: 193, type: !2104)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2105)
!2105 = !{!2106}
!2106 = !DISubrange(count: 1024)
!2107 = !DILocation(line: 0, scope: !2100, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 234, column: 5, scope: !2097)
!2109 = !DILocation(line: 193, column: 3, scope: !2100, inlinedAt: !2108)
!2110 = !DILocation(line: 193, column: 8, scope: !2100, inlinedAt: !2108)
!2111 = !DILocation(line: 195, column: 7, scope: !2100, inlinedAt: !2108)
!2112 = !DILocation(line: 207, column: 9, scope: !2113, inlinedAt: !2108)
!2113 = distinct !DILexicalBlock(scope: !2100, file: !651, line: 207, column: 7)
!2114 = !DILocation(line: 207, column: 7, scope: !2100, inlinedAt: !2108)
!2115 = !DILocation(line: 208, column: 9, scope: !2113, inlinedAt: !2108)
!2116 = !DILocation(line: 208, column: 5, scope: !2113, inlinedAt: !2108)
!2117 = !DILocation(line: 214, column: 3, scope: !2100, inlinedAt: !2108)
!2118 = !DILocation(line: 216, column: 1, scope: !2100, inlinedAt: !2108)
!2119 = !DILocation(line: 234, column: 5, scope: !2097)
!2120 = !DILocation(line: 238, column: 3, scope: !2035)
!2121 = !DILocalVariable(name: "__c", arg: 1, scope: !2122, file: !1760, line: 101, type: !118)
!2122 = distinct !DISubprogram(name: "putc_unlocked", scope: !1760, file: !1760, line: 101, type: !2123, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!118, !118, !2049}
!2125 = !{!2121, !2126}
!2126 = !DILocalVariable(name: "__stream", arg: 2, scope: !2122, file: !1760, line: 101, type: !2049)
!2127 = !DILocation(line: 0, scope: !2122, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 238, column: 3, scope: !2035)
!2129 = !DILocation(line: 103, column: 10, scope: !2122, inlinedAt: !2128)
!2130 = !DILocation(line: 240, column: 3, scope: !2035)
!2131 = !DILocation(line: 241, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2035, file: !651, line: 241, column: 7)
!2133 = !DILocation(line: 241, column: 7, scope: !2035)
!2134 = !DILocation(line: 242, column: 5, scope: !2132)
!2135 = !DILocation(line: 243, column: 1, scope: !2035)
!2136 = !DISubprogram(name: "__vfprintf_chk", scope: !1128, file: !1128, line: 96, type: !2137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!118, !2048, !118, !1132, !663}
!2139 = !DISubprogram(name: "strerror_r", scope: !1258, file: !1258, line: 444, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!177, !118, !177, !180}
!2142 = !DISubprogram(name: "fcntl", scope: !2143, file: !2143, line: 149, type: !2144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2143 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!118, !118, !118, null}
!2146 = distinct !DISubprogram(name: "error", scope: !651, file: !651, line: 285, type: !2147, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !118, !118, !183, null}
!2149 = !{!2150, !2151, !2152, !2153}
!2150 = !DILocalVariable(name: "status", arg: 1, scope: !2146, file: !651, line: 285, type: !118)
!2151 = !DILocalVariable(name: "errnum", arg: 2, scope: !2146, file: !651, line: 285, type: !118)
!2152 = !DILocalVariable(name: "message", arg: 3, scope: !2146, file: !651, line: 285, type: !183)
!2153 = !DILocalVariable(name: "ap", scope: !2146, file: !651, line: 287, type: !661)
!2154 = !DILocation(line: 0, scope: !2146)
!2155 = !DILocation(line: 287, column: 3, scope: !2146)
!2156 = !DILocation(line: 287, column: 11, scope: !2146)
!2157 = !DILocation(line: 288, column: 3, scope: !2146)
!2158 = !DILocation(line: 289, column: 3, scope: !2146)
!2159 = !DILocation(line: 290, column: 3, scope: !2146)
!2160 = !DILocation(line: 291, column: 1, scope: !2146)
!2161 = !DILocation(line: 0, scope: !658)
!2162 = !DILocation(line: 298, column: 1, scope: !658)
!2163 = !DILocation(line: 302, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !658, file: !651, line: 302, column: 7)
!2165 = !DILocation(line: 302, column: 7, scope: !658)
!2166 = !DILocation(line: 307, column: 11, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !651, line: 307, column: 11)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !651, line: 303, column: 5)
!2169 = !DILocation(line: 307, column: 27, scope: !2167)
!2170 = !DILocation(line: 308, column: 11, scope: !2167)
!2171 = !DILocation(line: 308, column: 28, scope: !2167)
!2172 = !DILocation(line: 308, column: 25, scope: !2167)
!2173 = !DILocation(line: 309, column: 15, scope: !2167)
!2174 = !DILocation(line: 309, column: 33, scope: !2167)
!2175 = !DILocation(line: 310, column: 19, scope: !2167)
!2176 = !DILocation(line: 311, column: 22, scope: !2167)
!2177 = !DILocation(line: 311, column: 56, scope: !2167)
!2178 = !DILocation(line: 307, column: 11, scope: !2168)
!2179 = !DILocation(line: 316, column: 21, scope: !2168)
!2180 = !DILocation(line: 317, column: 23, scope: !2168)
!2181 = !DILocation(line: 318, column: 5, scope: !2168)
!2182 = !DILocation(line: 327, column: 3, scope: !658)
!2183 = !DILocation(line: 331, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !658, file: !651, line: 331, column: 7)
!2185 = !DILocation(line: 331, column: 7, scope: !658)
!2186 = !DILocation(line: 332, column: 5, scope: !2184)
!2187 = !DILocation(line: 338, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !651, line: 334, column: 5)
!2189 = !DILocation(line: 346, column: 3, scope: !658)
!2190 = !DILocation(line: 350, column: 3, scope: !658)
!2191 = !DILocation(line: 356, column: 1, scope: !658)
!2192 = distinct !DISubprogram(name: "error_at_line", scope: !651, file: !651, line: 359, type: !2193, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !118, !118, !183, !110, !183, null}
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201}
!2196 = !DILocalVariable(name: "status", arg: 1, scope: !2192, file: !651, line: 359, type: !118)
!2197 = !DILocalVariable(name: "errnum", arg: 2, scope: !2192, file: !651, line: 359, type: !118)
!2198 = !DILocalVariable(name: "file_name", arg: 3, scope: !2192, file: !651, line: 359, type: !183)
!2199 = !DILocalVariable(name: "line_number", arg: 4, scope: !2192, file: !651, line: 360, type: !110)
!2200 = !DILocalVariable(name: "message", arg: 5, scope: !2192, file: !651, line: 360, type: !183)
!2201 = !DILocalVariable(name: "ap", scope: !2192, file: !651, line: 362, type: !661)
!2202 = !DILocation(line: 0, scope: !2192)
!2203 = !DILocation(line: 362, column: 3, scope: !2192)
!2204 = !DILocation(line: 362, column: 11, scope: !2192)
!2205 = !DILocation(line: 363, column: 3, scope: !2192)
!2206 = !DILocation(line: 364, column: 3, scope: !2192)
!2207 = !DILocation(line: 366, column: 3, scope: !2192)
!2208 = !DILocation(line: 367, column: 1, scope: !2192)
!2209 = distinct !DISubprogram(name: "fdadvise", scope: !958, file: !958, line: 25, type: !2210, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !2214)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !118, !2212, !2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !662, line: 63, baseType: !368)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !162, line: 51, baseType: !161)
!2214 = !{!2215, !2216, !2217, !2218}
!2215 = !DILocalVariable(name: "fd", arg: 1, scope: !2209, file: !958, line: 25, type: !118)
!2216 = !DILocalVariable(name: "offset", arg: 2, scope: !2209, file: !958, line: 25, type: !2212)
!2217 = !DILocalVariable(name: "len", arg: 3, scope: !2209, file: !958, line: 25, type: !2212)
!2218 = !DILocalVariable(name: "advice", arg: 4, scope: !2209, file: !958, line: 25, type: !2213)
!2219 = !DILocation(line: 0, scope: !2209)
!2220 = !DILocation(line: 28, column: 3, scope: !2209)
!2221 = !DILocation(line: 30, column: 1, scope: !2209)
!2222 = !DISubprogram(name: "posix_fadvise", scope: !2143, file: !2143, line: 273, type: !2223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!118, !118, !2212, !2212, !118}
!2225 = distinct !DISubprogram(name: "fadvise", scope: !958, file: !958, line: 33, type: !2226, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !2262)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !2228, !2213}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2230)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2230, file: !346, line: 51, baseType: !118, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2230, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2230, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2230, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2230, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2230, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2230, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2230, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2230, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2230, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2230, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2230, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2230, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2230, file: !346, line: 70, baseType: !2246, size: 64, offset: 832)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2230, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2230, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2230, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2230, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2230, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2230, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2230, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2230, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2230, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2230, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2230, file: !346, line: 93, baseType: !2246, size: 64, offset: 1344)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2230, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2230, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2230, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2230, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2262 = !{!2263, !2264}
!2263 = !DILocalVariable(name: "fp", arg: 1, scope: !2225, file: !958, line: 33, type: !2228)
!2264 = !DILocalVariable(name: "advice", arg: 2, scope: !2225, file: !958, line: 33, type: !2213)
!2265 = !DILocation(line: 0, scope: !2225)
!2266 = !DILocation(line: 35, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2225, file: !958, line: 35, column: 7)
!2268 = !DILocation(line: 35, column: 7, scope: !2225)
!2269 = !DILocation(line: 36, column: 15, scope: !2267)
!2270 = !DILocation(line: 0, scope: !2209, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 36, column: 5, scope: !2267)
!2272 = !DILocation(line: 28, column: 3, scope: !2209, inlinedAt: !2271)
!2273 = !DILocation(line: 36, column: 5, scope: !2267)
!2274 = !DILocation(line: 37, column: 1, scope: !2225)
!2275 = !DISubprogram(name: "fileno", scope: !662, file: !662, line: 809, type: !2276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!118, !2228}
!2278 = distinct !DISubprogram(name: "rpl_fclose", scope: !961, file: !961, line: 58, type: !2279, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !2315)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!118, !2281}
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2283, file: !346, line: 51, baseType: !118, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2283, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2283, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2283, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2283, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2283, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2283, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2283, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2283, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2283, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2283, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2283, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2283, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2283, file: !346, line: 70, baseType: !2299, size: 64, offset: 832)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2283, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2283, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2283, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2283, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2283, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2283, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2283, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2283, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2283, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2283, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2283, file: !346, line: 93, baseType: !2299, size: 64, offset: 1344)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2283, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2283, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2283, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2283, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2315 = !{!2316, !2317, !2318, !2319}
!2316 = !DILocalVariable(name: "fp", arg: 1, scope: !2278, file: !961, line: 58, type: !2281)
!2317 = !DILocalVariable(name: "saved_errno", scope: !2278, file: !961, line: 60, type: !118)
!2318 = !DILocalVariable(name: "fd", scope: !2278, file: !961, line: 63, type: !118)
!2319 = !DILocalVariable(name: "result", scope: !2278, file: !961, line: 74, type: !118)
!2320 = !DILocation(line: 0, scope: !2278)
!2321 = !DILocation(line: 63, column: 12, scope: !2278)
!2322 = !DILocation(line: 64, column: 10, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2278, file: !961, line: 64, column: 7)
!2324 = !DILocation(line: 64, column: 7, scope: !2278)
!2325 = !DILocation(line: 65, column: 12, scope: !2323)
!2326 = !DILocation(line: 65, column: 5, scope: !2323)
!2327 = !DILocation(line: 70, column: 9, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2278, file: !961, line: 70, column: 7)
!2329 = !DILocation(line: 70, column: 23, scope: !2328)
!2330 = !DILocation(line: 70, column: 33, scope: !2328)
!2331 = !DILocation(line: 70, column: 26, scope: !2328)
!2332 = !DILocation(line: 70, column: 59, scope: !2328)
!2333 = !DILocation(line: 71, column: 7, scope: !2328)
!2334 = !DILocation(line: 71, column: 10, scope: !2328)
!2335 = !DILocation(line: 70, column: 7, scope: !2278)
!2336 = !DILocation(line: 100, column: 12, scope: !2278)
!2337 = !DILocation(line: 105, column: 7, scope: !2278)
!2338 = !DILocation(line: 72, column: 19, scope: !2328)
!2339 = !DILocation(line: 105, column: 19, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2278, file: !961, line: 105, column: 7)
!2341 = !DILocation(line: 107, column: 13, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2340, file: !961, line: 106, column: 5)
!2343 = !DILocation(line: 109, column: 5, scope: !2342)
!2344 = !DILocation(line: 112, column: 1, scope: !2278)
!2345 = !DISubprogram(name: "fclose", scope: !662, file: !662, line: 178, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2346 = !DISubprogram(name: "__freading", scope: !2347, file: !2347, line: 51, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2347 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2348 = !DISubprogram(name: "lseek", scope: !1999, file: !1999, line: 339, type: !2349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!368, !118, !368, !118}
!2351 = distinct !DISubprogram(name: "rpl_fflush", scope: !963, file: !963, line: 130, type: !2352, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !2388)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!118, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2356, file: !346, line: 51, baseType: !118, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2356, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2356, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2356, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2356, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2356, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2356, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2356, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2356, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2356, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2356, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2356, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2356, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2356, file: !346, line: 70, baseType: !2372, size: 64, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2356, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2356, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2356, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2356, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2356, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2356, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2356, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2356, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2356, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2356, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2356, file: !346, line: 93, baseType: !2372, size: 64, offset: 1344)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2356, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2356, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2356, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2356, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2388 = !{!2389}
!2389 = !DILocalVariable(name: "stream", arg: 1, scope: !2351, file: !963, line: 130, type: !2354)
!2390 = !DILocation(line: 0, scope: !2351)
!2391 = !DILocation(line: 151, column: 14, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2351, file: !963, line: 151, column: 7)
!2393 = !DILocation(line: 151, column: 22, scope: !2392)
!2394 = !DILocation(line: 151, column: 27, scope: !2392)
!2395 = !DILocation(line: 151, column: 7, scope: !2351)
!2396 = !DILocation(line: 152, column: 12, scope: !2392)
!2397 = !DILocation(line: 152, column: 5, scope: !2392)
!2398 = !DILocalVariable(name: "fp", arg: 1, scope: !2399, file: !963, line: 42, type: !2354)
!2399 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !963, file: !963, line: 42, type: !2400, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !2354}
!2402 = !{!2398}
!2403 = !DILocation(line: 0, scope: !2399, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 157, column: 3, scope: !2351)
!2405 = !DILocation(line: 44, column: 12, scope: !2406, inlinedAt: !2404)
!2406 = distinct !DILexicalBlock(scope: !2399, file: !963, line: 44, column: 7)
!2407 = !DILocation(line: 44, column: 19, scope: !2406, inlinedAt: !2404)
!2408 = !DILocation(line: 44, column: 7, scope: !2399, inlinedAt: !2404)
!2409 = !DILocation(line: 46, column: 5, scope: !2406, inlinedAt: !2404)
!2410 = !DILocation(line: 159, column: 10, scope: !2351)
!2411 = !DILocation(line: 159, column: 3, scope: !2351)
!2412 = !DILocation(line: 236, column: 1, scope: !2351)
!2413 = !DISubprogram(name: "fflush", scope: !662, file: !662, line: 230, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2414 = distinct !DISubprogram(name: "fpurge", scope: !966, file: !966, line: 32, type: !2415, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !2451)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!118, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2419, file: !346, line: 51, baseType: !118, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2419, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2419, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2419, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2419, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2419, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2419, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2419, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2419, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2419, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2419, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2419, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2419, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2419, file: !346, line: 70, baseType: !2435, size: 64, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2419, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2419, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2419, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2419, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2419, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2419, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2419, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2419, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2419, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2419, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2419, file: !346, line: 93, baseType: !2435, size: 64, offset: 1344)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2419, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2419, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2419, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2419, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2451 = !{!2452}
!2452 = !DILocalVariable(name: "fp", arg: 1, scope: !2414, file: !966, line: 32, type: !2417)
!2453 = !DILocation(line: 0, scope: !2414)
!2454 = !DILocation(line: 36, column: 3, scope: !2414)
!2455 = !DILocation(line: 38, column: 3, scope: !2414)
!2456 = !DISubprogram(name: "__fpurge", scope: !2347, file: !2347, line: 72, type: !2457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2417}
!2459 = distinct !DISubprogram(name: "rpl_fseeko", scope: !968, file: !968, line: 28, type: !2460, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !2496)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!118, !2462, !2212, !118}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2464)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2464, file: !346, line: 51, baseType: !118, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2464, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2464, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2464, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2464, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2464, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2464, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2464, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2464, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2464, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2464, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2464, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2464, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2464, file: !346, line: 70, baseType: !2480, size: 64, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2464, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2464, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2464, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2464, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2464, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2464, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2464, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2464, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2464, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2464, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2464, file: !346, line: 93, baseType: !2480, size: 64, offset: 1344)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2464, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2464, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2464, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2464, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2496 = !{!2497, !2498, !2499, !2500}
!2497 = !DILocalVariable(name: "fp", arg: 1, scope: !2459, file: !968, line: 28, type: !2462)
!2498 = !DILocalVariable(name: "offset", arg: 2, scope: !2459, file: !968, line: 28, type: !2212)
!2499 = !DILocalVariable(name: "whence", arg: 3, scope: !2459, file: !968, line: 28, type: !118)
!2500 = !DILocalVariable(name: "pos", scope: !2501, file: !968, line: 123, type: !2212)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !968, line: 119, column: 5)
!2502 = distinct !DILexicalBlock(scope: !2459, file: !968, line: 55, column: 7)
!2503 = !DILocation(line: 0, scope: !2459)
!2504 = !DILocation(line: 55, column: 12, scope: !2502)
!2505 = !{!1768, !1062, i64 16}
!2506 = !DILocation(line: 55, column: 33, scope: !2502)
!2507 = !{!1768, !1062, i64 8}
!2508 = !DILocation(line: 55, column: 25, scope: !2502)
!2509 = !DILocation(line: 56, column: 7, scope: !2502)
!2510 = !DILocation(line: 56, column: 15, scope: !2502)
!2511 = !DILocation(line: 56, column: 37, scope: !2502)
!2512 = !{!1768, !1062, i64 32}
!2513 = !DILocation(line: 56, column: 29, scope: !2502)
!2514 = !DILocation(line: 57, column: 7, scope: !2502)
!2515 = !DILocation(line: 57, column: 15, scope: !2502)
!2516 = !{!1768, !1062, i64 72}
!2517 = !DILocation(line: 57, column: 29, scope: !2502)
!2518 = !DILocation(line: 55, column: 7, scope: !2459)
!2519 = !DILocation(line: 123, column: 26, scope: !2501)
!2520 = !DILocation(line: 123, column: 19, scope: !2501)
!2521 = !DILocation(line: 0, scope: !2501)
!2522 = !DILocation(line: 124, column: 15, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2501, file: !968, line: 124, column: 11)
!2524 = !DILocation(line: 124, column: 11, scope: !2501)
!2525 = !DILocation(line: 135, column: 19, scope: !2501)
!2526 = !DILocation(line: 136, column: 12, scope: !2501)
!2527 = !DILocation(line: 136, column: 20, scope: !2501)
!2528 = !{!1768, !1339, i64 144}
!2529 = !DILocation(line: 167, column: 7, scope: !2501)
!2530 = !DILocation(line: 169, column: 10, scope: !2459)
!2531 = !DILocation(line: 169, column: 3, scope: !2459)
!2532 = !DILocation(line: 170, column: 1, scope: !2459)
!2533 = !DISubprogram(name: "fseeko", scope: !662, file: !662, line: 736, type: !2534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!118, !2462, !368, !118}
!2536 = distinct !DISubprogram(name: "getprogname", scope: !970, file: !970, line: 54, type: !2537, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !1070)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!183}
!2539 = !DILocation(line: 58, column: 10, scope: !2536)
!2540 = !DILocation(line: 58, column: 3, scope: !2536)
!2541 = distinct !DISubprogram(name: "initbuffer", scope: !972, file: !972, line: 37, type: !2542, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2550)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !294, line: 32, size: 192, elements: !2546)
!2546 = !{!2547, !2548, !2549}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2545, file: !294, line: 34, baseType: !297, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2545, file: !294, line: 35, baseType: !297, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2545, file: !294, line: 36, baseType: !177, size: 64, offset: 128)
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2541, file: !972, line: 37, type: !2544)
!2552 = !DILocation(line: 0, scope: !2541)
!2553 = !DILocalVariable(name: "__dest", arg: 1, scope: !2554, file: !1461, line: 57, type: !178)
!2554 = distinct !DISubprogram(name: "memset", scope: !1461, file: !1461, line: 57, type: !1542, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2555)
!2555 = !{!2553, !2556, !2557}
!2556 = !DILocalVariable(name: "__ch", arg: 2, scope: !2554, file: !1461, line: 57, type: !118)
!2557 = !DILocalVariable(name: "__len", arg: 3, scope: !2554, file: !1461, line: 57, type: !180)
!2558 = !DILocation(line: 0, scope: !2554, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 39, column: 3, scope: !2541)
!2560 = !DILocation(line: 59, column: 10, scope: !2554, inlinedAt: !2559)
!2561 = !DILocation(line: 40, column: 1, scope: !2541)
!2562 = distinct !DISubprogram(name: "readlinebuffer", scope: !972, file: !972, line: 43, type: !2563, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2599)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!2544, !2544, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2567)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2567, file: !346, line: 51, baseType: !118, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2567, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2567, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2567, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2567, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2567, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2567, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2567, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2567, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2567, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2567, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2567, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2567, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2567, file: !346, line: 70, baseType: !2583, size: 64, offset: 832)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2567, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2567, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2567, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2567, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2567, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2567, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2567, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2567, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2567, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2567, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2567, file: !346, line: 93, baseType: !2583, size: 64, offset: 1344)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2567, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2567, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2567, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2567, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2562, file: !972, line: 43, type: !2544)
!2601 = !DILocalVariable(name: "stream", arg: 2, scope: !2562, file: !972, line: 43, type: !2565)
!2602 = !DILocation(line: 0, scope: !2562)
!2603 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2604, file: !972, line: 59, type: !2544)
!2604 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !972, file: !972, line: 59, type: !2605, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!2544, !2544, !2565, !4}
!2607 = !{!2603, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2608 = !DILocalVariable(name: "stream", arg: 2, scope: !2604, file: !972, line: 59, type: !2565)
!2609 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2604, file: !972, line: 60, type: !4)
!2610 = !DILocalVariable(name: "buffer", scope: !2604, file: !972, line: 65, type: !177)
!2611 = !DILocalVariable(name: "p", scope: !2604, file: !972, line: 66, type: !177)
!2612 = !DILocalVariable(name: "end", scope: !2604, file: !972, line: 67, type: !177)
!2613 = !DILocalVariable(name: "c", scope: !2604, file: !972, line: 68, type: !118)
!2614 = !DILocalVariable(name: "oldsize", scope: !2615, file: !972, line: 83, type: !297)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !972, line: 82, column: 9)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !972, line: 81, column: 11)
!2617 = distinct !DILexicalBlock(scope: !2604, file: !972, line: 71, column: 5)
!2618 = !DILocation(line: 0, scope: !2604, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 45, column: 10, scope: !2562)
!2620 = !DILocalVariable(name: "__stream", arg: 1, scope: !2621, file: !1760, line: 128, type: !2565)
!2621 = distinct !DISubprogram(name: "feof_unlocked", scope: !1760, file: !1760, line: 128, type: !2622, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!118, !2565}
!2624 = !{!2620}
!2625 = !DILocation(line: 0, scope: !2621, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 62, column: 7, scope: !2627, inlinedAt: !2619)
!2627 = distinct !DILexicalBlock(scope: !2604, file: !972, line: 62, column: 7)
!2628 = !DILocation(line: 130, column: 10, scope: !2621, inlinedAt: !2626)
!2629 = !DILocation(line: 62, column: 7, scope: !2627, inlinedAt: !2619)
!2630 = !DILocation(line: 62, column: 7, scope: !2604, inlinedAt: !2619)
!2631 = !DILocation(line: 65, column: 30, scope: !2604, inlinedAt: !2619)
!2632 = !DILocation(line: 67, column: 36, scope: !2604, inlinedAt: !2619)
!2633 = !{!1691, !1339, i64 0}
!2634 = !DILocation(line: 67, column: 22, scope: !2604, inlinedAt: !2619)
!2635 = !DILocation(line: 70, column: 3, scope: !2604, inlinedAt: !2619)
!2636 = !DILocalVariable(name: "__fp", arg: 1, scope: !2637, file: !1760, line: 66, type: !2565)
!2637 = distinct !DISubprogram(name: "getc_unlocked", scope: !1760, file: !1760, line: 66, type: !2622, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2638)
!2638 = !{!2636}
!2639 = !DILocation(line: 0, scope: !2637, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 72, column: 11, scope: !2617, inlinedAt: !2619)
!2641 = !DILocation(line: 68, column: 10, scope: !2637, inlinedAt: !2640)
!2642 = !DILocation(line: 73, column: 11, scope: !2617, inlinedAt: !2619)
!2643 = !DILocation(line: 73, column: 13, scope: !2644, inlinedAt: !2619)
!2644 = distinct !DILexicalBlock(scope: !2617, file: !972, line: 73, column: 11)
!2645 = !DILocation(line: 75, column: 17, scope: !2646, inlinedAt: !2619)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !972, line: 75, column: 15)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !972, line: 74, column: 9)
!2648 = !DILocation(line: 75, column: 27, scope: !2646, inlinedAt: !2619)
!2649 = !DILocalVariable(name: "__stream", arg: 1, scope: !2650, file: !1760, line: 135, type: !2565)
!2650 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1760, file: !1760, line: 135, type: !2622, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2651)
!2651 = !{!2649}
!2652 = !DILocation(line: 0, scope: !2650, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 75, column: 30, scope: !2646, inlinedAt: !2619)
!2654 = !DILocation(line: 137, column: 10, scope: !2650, inlinedAt: !2653)
!2655 = !DILocation(line: 75, column: 30, scope: !2646, inlinedAt: !2619)
!2656 = !DILocation(line: 75, column: 15, scope: !2647, inlinedAt: !2619)
!2657 = !DILocation(line: 77, column: 15, scope: !2658, inlinedAt: !2619)
!2658 = distinct !DILexicalBlock(scope: !2647, file: !972, line: 77, column: 15)
!2659 = !DILocation(line: 77, column: 21, scope: !2658, inlinedAt: !2619)
!2660 = !DILocation(line: 77, column: 15, scope: !2647, inlinedAt: !2619)
!2661 = !DILocation(line: 0, scope: !2617, inlinedAt: !2619)
!2662 = !DILocation(line: 81, column: 13, scope: !2616, inlinedAt: !2619)
!2663 = !DILocation(line: 81, column: 11, scope: !2617, inlinedAt: !2619)
!2664 = !DILocation(line: 83, column: 39, scope: !2615, inlinedAt: !2619)
!2665 = !DILocation(line: 0, scope: !2615, inlinedAt: !2619)
!2666 = !DILocation(line: 84, column: 20, scope: !2615, inlinedAt: !2619)
!2667 = !DILocation(line: 85, column: 22, scope: !2615, inlinedAt: !2619)
!2668 = !DILocation(line: 86, column: 30, scope: !2615, inlinedAt: !2619)
!2669 = !DILocation(line: 87, column: 38, scope: !2615, inlinedAt: !2619)
!2670 = !DILocation(line: 87, column: 24, scope: !2615, inlinedAt: !2619)
!2671 = !DILocation(line: 88, column: 9, scope: !2615, inlinedAt: !2619)
!2672 = !DILocation(line: 89, column: 14, scope: !2617, inlinedAt: !2619)
!2673 = !DILocation(line: 89, column: 9, scope: !2617, inlinedAt: !2619)
!2674 = !DILocation(line: 89, column: 12, scope: !2617, inlinedAt: !2619)
!2675 = !DILocation(line: 91, column: 12, scope: !2604, inlinedAt: !2619)
!2676 = !DILocation(line: 90, column: 5, scope: !2617, inlinedAt: !2619)
!2677 = distinct !{!2677, !2635, !2678, !1188}
!2678 = !DILocation(line: 91, column: 24, scope: !2604, inlinedAt: !2619)
!2679 = !DILocation(line: 93, column: 26, scope: !2604, inlinedAt: !2619)
!2680 = !DILocation(line: 93, column: 15, scope: !2604, inlinedAt: !2619)
!2681 = !DILocation(line: 93, column: 22, scope: !2604, inlinedAt: !2619)
!2682 = !DILocation(line: 94, column: 3, scope: !2604, inlinedAt: !2619)
!2683 = !DILocation(line: 45, column: 3, scope: !2562)
!2684 = !DISubprogram(name: "__uflow", scope: !662, file: !662, line: 885, type: !2622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2685 = !DILocation(line: 0, scope: !2604)
!2686 = !DILocation(line: 0, scope: !2621, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 62, column: 7, scope: !2627)
!2688 = !DILocation(line: 130, column: 10, scope: !2621, inlinedAt: !2687)
!2689 = !DILocation(line: 62, column: 7, scope: !2627)
!2690 = !DILocation(line: 62, column: 7, scope: !2604)
!2691 = !DILocation(line: 65, column: 30, scope: !2604)
!2692 = !DILocation(line: 67, column: 36, scope: !2604)
!2693 = !DILocation(line: 67, column: 22, scope: !2604)
!2694 = !DILocation(line: 70, column: 3, scope: !2604)
!2695 = !DILocation(line: 0, scope: !2637, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 72, column: 11, scope: !2617)
!2697 = !DILocation(line: 68, column: 10, scope: !2637, inlinedAt: !2696)
!2698 = !DILocation(line: 73, column: 11, scope: !2617)
!2699 = !DILocation(line: 73, column: 13, scope: !2644)
!2700 = !DILocation(line: 75, column: 17, scope: !2646)
!2701 = !DILocation(line: 75, column: 27, scope: !2646)
!2702 = !DILocation(line: 0, scope: !2650, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 75, column: 30, scope: !2646)
!2704 = !DILocation(line: 137, column: 10, scope: !2650, inlinedAt: !2703)
!2705 = !DILocation(line: 75, column: 30, scope: !2646)
!2706 = !DILocation(line: 75, column: 15, scope: !2647)
!2707 = !DILocation(line: 77, column: 15, scope: !2658)
!2708 = !DILocation(line: 77, column: 21, scope: !2658)
!2709 = !DILocation(line: 77, column: 15, scope: !2647)
!2710 = !DILocation(line: 0, scope: !2617)
!2711 = !DILocation(line: 81, column: 13, scope: !2616)
!2712 = !DILocation(line: 81, column: 11, scope: !2617)
!2713 = !DILocation(line: 83, column: 39, scope: !2615)
!2714 = !DILocation(line: 0, scope: !2615)
!2715 = !DILocation(line: 84, column: 20, scope: !2615)
!2716 = !DILocation(line: 85, column: 22, scope: !2615)
!2717 = !DILocation(line: 86, column: 30, scope: !2615)
!2718 = !DILocation(line: 87, column: 38, scope: !2615)
!2719 = !DILocation(line: 87, column: 24, scope: !2615)
!2720 = !DILocation(line: 88, column: 9, scope: !2615)
!2721 = !DILocation(line: 89, column: 14, scope: !2617)
!2722 = !DILocation(line: 89, column: 9, scope: !2617)
!2723 = !DILocation(line: 89, column: 12, scope: !2617)
!2724 = !DILocation(line: 91, column: 12, scope: !2604)
!2725 = !DILocation(line: 90, column: 5, scope: !2617)
!2726 = distinct !{!2726, !2694, !2727, !1188}
!2727 = !DILocation(line: 91, column: 24, scope: !2604)
!2728 = !DILocation(line: 93, column: 26, scope: !2604)
!2729 = !DILocation(line: 93, column: 15, scope: !2604)
!2730 = !DILocation(line: 93, column: 22, scope: !2604)
!2731 = !DILocation(line: 94, column: 3, scope: !2604)
!2732 = !DILocation(line: 95, column: 1, scope: !2604)
!2733 = distinct !DISubprogram(name: "freebuffer", scope: !972, file: !972, line: 100, type: !2542, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2734)
!2734 = !{!2735}
!2735 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2733, file: !972, line: 100, type: !2544)
!2736 = !DILocation(line: 0, scope: !2733)
!2737 = !DILocation(line: 102, column: 21, scope: !2733)
!2738 = !DILocation(line: 102, column: 3, scope: !2733)
!2739 = !DILocation(line: 103, column: 1, scope: !2733)
!2740 = !DISubprogram(name: "free", scope: !1154, file: !1154, line: 752, type: !2741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{null, !178}
!2743 = distinct !DISubprogram(name: "set_program_name", scope: !703, file: !703, line: 37, type: !1093, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2744)
!2744 = !{!2745, !2746, !2747}
!2745 = !DILocalVariable(name: "argv0", arg: 1, scope: !2743, file: !703, line: 37, type: !183)
!2746 = !DILocalVariable(name: "slash", scope: !2743, file: !703, line: 44, type: !183)
!2747 = !DILocalVariable(name: "base", scope: !2743, file: !703, line: 45, type: !183)
!2748 = !DILocation(line: 0, scope: !2743)
!2749 = !DILocation(line: 44, column: 23, scope: !2743)
!2750 = !DILocation(line: 45, column: 22, scope: !2743)
!2751 = !DILocation(line: 46, column: 17, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2743, file: !703, line: 46, column: 7)
!2753 = !DILocation(line: 46, column: 9, scope: !2752)
!2754 = !DILocation(line: 46, column: 25, scope: !2752)
!2755 = !DILocation(line: 46, column: 40, scope: !2752)
!2756 = !DILocalVariable(name: "__s1", arg: 1, scope: !2757, file: !1154, line: 974, type: !1286)
!2757 = distinct !DISubprogram(name: "memeq", scope: !1154, file: !1154, line: 974, type: !1703, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2758)
!2758 = !{!2756, !2759, !2760}
!2759 = !DILocalVariable(name: "__s2", arg: 2, scope: !2757, file: !1154, line: 974, type: !1286)
!2760 = !DILocalVariable(name: "__n", arg: 3, scope: !2757, file: !1154, line: 974, type: !180)
!2761 = !DILocation(line: 0, scope: !2757, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 46, column: 28, scope: !2752)
!2763 = !DILocation(line: 976, column: 11, scope: !2757, inlinedAt: !2762)
!2764 = !DILocation(line: 976, column: 10, scope: !2757, inlinedAt: !2762)
!2765 = !DILocation(line: 46, column: 7, scope: !2743)
!2766 = !DILocation(line: 49, column: 11, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !703, line: 49, column: 11)
!2768 = distinct !DILexicalBlock(scope: !2752, file: !703, line: 47, column: 5)
!2769 = !DILocation(line: 49, column: 36, scope: !2767)
!2770 = !DILocation(line: 49, column: 11, scope: !2768)
!2771 = !DILocation(line: 65, column: 16, scope: !2743)
!2772 = !DILocation(line: 71, column: 27, scope: !2743)
!2773 = !DILocation(line: 74, column: 33, scope: !2743)
!2774 = !DILocation(line: 76, column: 1, scope: !2743)
!2775 = !DISubprogram(name: "strrchr", scope: !1258, file: !1258, line: 273, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2776 = !DILocation(line: 0, scope: !712)
!2777 = !DILocation(line: 40, column: 29, scope: !712)
!2778 = !DILocation(line: 41, column: 19, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !712, file: !713, line: 41, column: 7)
!2780 = !DILocation(line: 41, column: 7, scope: !712)
!2781 = !DILocation(line: 47, column: 3, scope: !712)
!2782 = !DILocation(line: 48, column: 3, scope: !712)
!2783 = !DILocation(line: 48, column: 13, scope: !712)
!2784 = !DILocalVariable(name: "ps", arg: 1, scope: !2785, file: !2786, line: 1135, type: !2789)
!2785 = distinct !DISubprogram(name: "mbszero", scope: !2786, file: !2786, line: 1135, type: !2787, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2790)
!2786 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2787 = !DISubroutineType(types: !2788)
!2788 = !{null, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!2790 = !{!2784}
!2791 = !DILocation(line: 0, scope: !2785, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 48, column: 18, scope: !712)
!2793 = !DILocalVariable(name: "__dest", arg: 1, scope: !2794, file: !1461, line: 57, type: !178)
!2794 = distinct !DISubprogram(name: "memset", scope: !1461, file: !1461, line: 57, type: !1542, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2795)
!2795 = !{!2793, !2796, !2797}
!2796 = !DILocalVariable(name: "__ch", arg: 2, scope: !2794, file: !1461, line: 57, type: !118)
!2797 = !DILocalVariable(name: "__len", arg: 3, scope: !2794, file: !1461, line: 57, type: !180)
!2798 = !DILocation(line: 0, scope: !2794, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1137, column: 3, scope: !2785, inlinedAt: !2792)
!2800 = !DILocation(line: 59, column: 10, scope: !2794, inlinedAt: !2799)
!2801 = !DILocation(line: 49, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !712, file: !713, line: 49, column: 7)
!2803 = !DILocation(line: 49, column: 39, scope: !2802)
!2804 = !DILocation(line: 49, column: 44, scope: !2802)
!2805 = !DILocation(line: 54, column: 1, scope: !712)
!2806 = distinct !DISubprogram(name: "clone_quoting_options", scope: !743, file: !743, line: 113, type: !2807, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2810)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!2809, !2809}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!2810 = !{!2811, !2812, !2813}
!2811 = !DILocalVariable(name: "o", arg: 1, scope: !2806, file: !743, line: 113, type: !2809)
!2812 = !DILocalVariable(name: "saved_errno", scope: !2806, file: !743, line: 115, type: !118)
!2813 = !DILocalVariable(name: "p", scope: !2806, file: !743, line: 116, type: !2809)
!2814 = !DILocation(line: 0, scope: !2806)
!2815 = !DILocation(line: 115, column: 21, scope: !2806)
!2816 = !DILocation(line: 116, column: 40, scope: !2806)
!2817 = !DILocation(line: 116, column: 31, scope: !2806)
!2818 = !DILocation(line: 118, column: 9, scope: !2806)
!2819 = !DILocation(line: 119, column: 3, scope: !2806)
!2820 = distinct !DISubprogram(name: "get_quoting_style", scope: !743, file: !743, line: 124, type: !2821, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2825)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!147, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!2825 = !{!2826}
!2826 = !DILocalVariable(name: "o", arg: 1, scope: !2820, file: !743, line: 124, type: !2823)
!2827 = !DILocation(line: 0, scope: !2820)
!2828 = !DILocation(line: 126, column: 11, scope: !2820)
!2829 = !DILocation(line: 126, column: 46, scope: !2820)
!2830 = !{!2831, !1063, i64 0}
!2831 = !{!"quoting_options", !1063, i64 0, !1142, i64 4, !1063, i64 8, !1062, i64 40, !1062, i64 48}
!2832 = !DILocation(line: 126, column: 3, scope: !2820)
!2833 = distinct !DISubprogram(name: "set_quoting_style", scope: !743, file: !743, line: 132, type: !2834, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !2809, !147}
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "o", arg: 1, scope: !2833, file: !743, line: 132, type: !2809)
!2838 = !DILocalVariable(name: "s", arg: 2, scope: !2833, file: !743, line: 132, type: !147)
!2839 = !DILocation(line: 0, scope: !2833)
!2840 = !DILocation(line: 134, column: 4, scope: !2833)
!2841 = !DILocation(line: 134, column: 45, scope: !2833)
!2842 = !DILocation(line: 135, column: 1, scope: !2833)
!2843 = distinct !DISubprogram(name: "set_char_quoting", scope: !743, file: !743, line: 143, type: !2844, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!118, !2809, !4, !118}
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2853, !2854}
!2847 = !DILocalVariable(name: "o", arg: 1, scope: !2843, file: !743, line: 143, type: !2809)
!2848 = !DILocalVariable(name: "c", arg: 2, scope: !2843, file: !743, line: 143, type: !4)
!2849 = !DILocalVariable(name: "i", arg: 3, scope: !2843, file: !743, line: 143, type: !118)
!2850 = !DILocalVariable(name: "uc", scope: !2843, file: !743, line: 145, type: !185)
!2851 = !DILocalVariable(name: "p", scope: !2843, file: !743, line: 146, type: !2852)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2853 = !DILocalVariable(name: "shift", scope: !2843, file: !743, line: 148, type: !118)
!2854 = !DILocalVariable(name: "r", scope: !2843, file: !743, line: 149, type: !110)
!2855 = !DILocation(line: 0, scope: !2843)
!2856 = !DILocation(line: 147, column: 6, scope: !2843)
!2857 = !DILocation(line: 147, column: 41, scope: !2843)
!2858 = !DILocation(line: 147, column: 62, scope: !2843)
!2859 = !DILocation(line: 147, column: 57, scope: !2843)
!2860 = !DILocation(line: 148, column: 15, scope: !2843)
!2861 = !DILocation(line: 149, column: 21, scope: !2843)
!2862 = !DILocation(line: 149, column: 24, scope: !2843)
!2863 = !DILocation(line: 149, column: 34, scope: !2843)
!2864 = !DILocation(line: 150, column: 19, scope: !2843)
!2865 = !DILocation(line: 150, column: 24, scope: !2843)
!2866 = !DILocation(line: 150, column: 6, scope: !2843)
!2867 = !DILocation(line: 151, column: 3, scope: !2843)
!2868 = distinct !DISubprogram(name: "set_quoting_flags", scope: !743, file: !743, line: 159, type: !2869, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!118, !2809, !118}
!2871 = !{!2872, !2873, !2874}
!2872 = !DILocalVariable(name: "o", arg: 1, scope: !2868, file: !743, line: 159, type: !2809)
!2873 = !DILocalVariable(name: "i", arg: 2, scope: !2868, file: !743, line: 159, type: !118)
!2874 = !DILocalVariable(name: "r", scope: !2868, file: !743, line: 163, type: !118)
!2875 = !DILocation(line: 0, scope: !2868)
!2876 = !DILocation(line: 161, column: 8, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2868, file: !743, line: 161, column: 7)
!2878 = !DILocation(line: 161, column: 7, scope: !2868)
!2879 = !DILocation(line: 163, column: 14, scope: !2868)
!2880 = !{!2831, !1142, i64 4}
!2881 = !DILocation(line: 164, column: 12, scope: !2868)
!2882 = !DILocation(line: 165, column: 3, scope: !2868)
!2883 = distinct !DISubprogram(name: "set_custom_quoting", scope: !743, file: !743, line: 169, type: !2884, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2809, !183, !183}
!2886 = !{!2887, !2888, !2889}
!2887 = !DILocalVariable(name: "o", arg: 1, scope: !2883, file: !743, line: 169, type: !2809)
!2888 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2883, file: !743, line: 170, type: !183)
!2889 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2883, file: !743, line: 170, type: !183)
!2890 = !DILocation(line: 0, scope: !2883)
!2891 = !DILocation(line: 172, column: 8, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2883, file: !743, line: 172, column: 7)
!2893 = !DILocation(line: 172, column: 7, scope: !2883)
!2894 = !DILocation(line: 174, column: 12, scope: !2883)
!2895 = !DILocation(line: 175, column: 8, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2883, file: !743, line: 175, column: 7)
!2897 = !DILocation(line: 175, column: 19, scope: !2896)
!2898 = !DILocation(line: 176, column: 5, scope: !2896)
!2899 = !DILocation(line: 177, column: 6, scope: !2883)
!2900 = !DILocation(line: 177, column: 17, scope: !2883)
!2901 = !{!2831, !1062, i64 40}
!2902 = !DILocation(line: 178, column: 6, scope: !2883)
!2903 = !DILocation(line: 178, column: 18, scope: !2883)
!2904 = !{!2831, !1062, i64 48}
!2905 = !DILocation(line: 179, column: 1, scope: !2883)
!2906 = !DISubprogram(name: "abort", scope: !1262, file: !1262, line: 598, type: !600, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2907 = distinct !DISubprogram(name: "quotearg_buffer", scope: !743, file: !743, line: 774, type: !2908, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!180, !177, !180, !183, !180, !2823}
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918}
!2911 = !DILocalVariable(name: "buffer", arg: 1, scope: !2907, file: !743, line: 774, type: !177)
!2912 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2907, file: !743, line: 774, type: !180)
!2913 = !DILocalVariable(name: "arg", arg: 3, scope: !2907, file: !743, line: 775, type: !183)
!2914 = !DILocalVariable(name: "argsize", arg: 4, scope: !2907, file: !743, line: 775, type: !180)
!2915 = !DILocalVariable(name: "o", arg: 5, scope: !2907, file: !743, line: 776, type: !2823)
!2916 = !DILocalVariable(name: "p", scope: !2907, file: !743, line: 778, type: !2823)
!2917 = !DILocalVariable(name: "saved_errno", scope: !2907, file: !743, line: 779, type: !118)
!2918 = !DILocalVariable(name: "r", scope: !2907, file: !743, line: 780, type: !180)
!2919 = !DILocation(line: 0, scope: !2907)
!2920 = !DILocation(line: 778, column: 37, scope: !2907)
!2921 = !DILocation(line: 779, column: 21, scope: !2907)
!2922 = !DILocation(line: 781, column: 43, scope: !2907)
!2923 = !DILocation(line: 781, column: 53, scope: !2907)
!2924 = !DILocation(line: 781, column: 63, scope: !2907)
!2925 = !DILocation(line: 782, column: 43, scope: !2907)
!2926 = !DILocation(line: 782, column: 58, scope: !2907)
!2927 = !DILocation(line: 780, column: 14, scope: !2907)
!2928 = !DILocation(line: 783, column: 9, scope: !2907)
!2929 = !DILocation(line: 784, column: 3, scope: !2907)
!2930 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !743, file: !743, line: 251, type: !2931, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2935)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!180, !177, !180, !183, !180, !147, !118, !2933, !183, !183}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2960, !2962, !2965, !2966, !2967, !2968, !2971, !2972, !2975, !2979, !2980, !2988, !2991, !2992, !2994, !2995, !2996, !2997}
!2936 = !DILocalVariable(name: "buffer", arg: 1, scope: !2930, file: !743, line: 251, type: !177)
!2937 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2930, file: !743, line: 251, type: !180)
!2938 = !DILocalVariable(name: "arg", arg: 3, scope: !2930, file: !743, line: 252, type: !183)
!2939 = !DILocalVariable(name: "argsize", arg: 4, scope: !2930, file: !743, line: 252, type: !180)
!2940 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2930, file: !743, line: 253, type: !147)
!2941 = !DILocalVariable(name: "flags", arg: 6, scope: !2930, file: !743, line: 253, type: !118)
!2942 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2930, file: !743, line: 254, type: !2933)
!2943 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2930, file: !743, line: 255, type: !183)
!2944 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2930, file: !743, line: 256, type: !183)
!2945 = !DILocalVariable(name: "unibyte_locale", scope: !2930, file: !743, line: 258, type: !186)
!2946 = !DILocalVariable(name: "len", scope: !2930, file: !743, line: 260, type: !180)
!2947 = !DILocalVariable(name: "orig_buffersize", scope: !2930, file: !743, line: 261, type: !180)
!2948 = !DILocalVariable(name: "quote_string", scope: !2930, file: !743, line: 262, type: !183)
!2949 = !DILocalVariable(name: "quote_string_len", scope: !2930, file: !743, line: 263, type: !180)
!2950 = !DILocalVariable(name: "backslash_escapes", scope: !2930, file: !743, line: 264, type: !186)
!2951 = !DILocalVariable(name: "elide_outer_quotes", scope: !2930, file: !743, line: 265, type: !186)
!2952 = !DILocalVariable(name: "encountered_single_quote", scope: !2930, file: !743, line: 266, type: !186)
!2953 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2930, file: !743, line: 267, type: !186)
!2954 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2930, file: !743, line: 309, type: !186)
!2955 = !DILocalVariable(name: "lq", scope: !2956, file: !743, line: 361, type: !183)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !743, line: 361, column: 11)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !743, line: 360, column: 13)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !743, line: 333, column: 7)
!2959 = distinct !DILexicalBlock(scope: !2930, file: !743, line: 312, column: 5)
!2960 = !DILocalVariable(name: "i", scope: !2961, file: !743, line: 395, type: !180)
!2961 = distinct !DILexicalBlock(scope: !2930, file: !743, line: 395, column: 3)
!2962 = !DILocalVariable(name: "is_right_quote", scope: !2963, file: !743, line: 397, type: !186)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !743, line: 396, column: 5)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !743, line: 395, column: 3)
!2965 = !DILocalVariable(name: "escaping", scope: !2963, file: !743, line: 398, type: !186)
!2966 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2963, file: !743, line: 399, type: !186)
!2967 = !DILocalVariable(name: "c", scope: !2963, file: !743, line: 417, type: !185)
!2968 = !DILocalVariable(name: "m", scope: !2969, file: !743, line: 598, type: !180)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !743, line: 596, column: 11)
!2970 = distinct !DILexicalBlock(scope: !2963, file: !743, line: 419, column: 9)
!2971 = !DILocalVariable(name: "printable", scope: !2969, file: !743, line: 600, type: !186)
!2972 = !DILocalVariable(name: "mbs", scope: !2973, file: !743, line: 609, type: !810)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !743, line: 608, column: 15)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !743, line: 602, column: 17)
!2975 = !DILocalVariable(name: "w", scope: !2976, file: !743, line: 618, type: !723)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !743, line: 617, column: 19)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !743, line: 616, column: 17)
!2978 = distinct !DILexicalBlock(scope: !2973, file: !743, line: 616, column: 17)
!2979 = !DILocalVariable(name: "bytes", scope: !2976, file: !743, line: 619, type: !180)
!2980 = !DILocalVariable(name: "j", scope: !2981, file: !743, line: 648, type: !180)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !743, line: 648, column: 29)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !743, line: 647, column: 27)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !743, line: 645, column: 29)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !743, line: 636, column: 23)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !743, line: 628, column: 30)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !743, line: 623, column: 30)
!2987 = distinct !DILexicalBlock(scope: !2976, file: !743, line: 621, column: 25)
!2988 = !DILocalVariable(name: "ilim", scope: !2989, file: !743, line: 674, type: !180)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !743, line: 671, column: 15)
!2990 = distinct !DILexicalBlock(scope: !2969, file: !743, line: 670, column: 17)
!2991 = !DILabel(scope: !2930, name: "process_input", file: !743, line: 308)
!2992 = !DILabel(scope: !2993, name: "c_and_shell_escape", file: !743, line: 502)
!2993 = distinct !DILexicalBlock(scope: !2970, file: !743, line: 478, column: 9)
!2994 = !DILabel(scope: !2993, name: "c_escape", file: !743, line: 507)
!2995 = !DILabel(scope: !2963, name: "store_escape", file: !743, line: 709)
!2996 = !DILabel(scope: !2963, name: "store_c", file: !743, line: 712)
!2997 = !DILabel(scope: !2930, name: "force_outer_quoting_style", file: !743, line: 753)
!2998 = !DILocation(line: 0, scope: !2930)
!2999 = !DILocation(line: 258, column: 25, scope: !2930)
!3000 = !DILocation(line: 258, column: 36, scope: !2930)
!3001 = !DILocation(line: 267, column: 3, scope: !2930)
!3002 = !DILocation(line: 261, column: 10, scope: !2930)
!3003 = !DILocation(line: 262, column: 15, scope: !2930)
!3004 = !DILocation(line: 263, column: 10, scope: !2930)
!3005 = !DILocation(line: 308, column: 2, scope: !2930)
!3006 = !DILocation(line: 311, column: 3, scope: !2930)
!3007 = !DILocation(line: 318, column: 11, scope: !2959)
!3008 = !DILocation(line: 319, column: 9, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !743, line: 319, column: 9)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !743, line: 319, column: 9)
!3011 = distinct !DILexicalBlock(scope: !2959, file: !743, line: 318, column: 11)
!3012 = !DILocation(line: 319, column: 9, scope: !3010)
!3013 = !DILocation(line: 0, scope: !801, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 357, column: 26, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !743, line: 335, column: 11)
!3016 = distinct !DILexicalBlock(scope: !2958, file: !743, line: 334, column: 13)
!3017 = !DILocation(line: 199, column: 29, scope: !801, inlinedAt: !3014)
!3018 = !DILocation(line: 201, column: 19, scope: !3019, inlinedAt: !3014)
!3019 = distinct !DILexicalBlock(scope: !801, file: !743, line: 201, column: 7)
!3020 = !DILocation(line: 201, column: 7, scope: !801, inlinedAt: !3014)
!3021 = !DILocation(line: 229, column: 3, scope: !801, inlinedAt: !3014)
!3022 = !DILocation(line: 230, column: 3, scope: !801, inlinedAt: !3014)
!3023 = !DILocation(line: 230, column: 13, scope: !801, inlinedAt: !3014)
!3024 = !DILocalVariable(name: "ps", arg: 1, scope: !3025, file: !2786, line: 1135, type: !3028)
!3025 = distinct !DISubprogram(name: "mbszero", scope: !2786, file: !2786, line: 1135, type: !3026, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3029)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !3028}
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!3029 = !{!3024}
!3030 = !DILocation(line: 0, scope: !3025, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 230, column: 18, scope: !801, inlinedAt: !3014)
!3032 = !DILocalVariable(name: "__dest", arg: 1, scope: !3033, file: !1461, line: 57, type: !178)
!3033 = distinct !DISubprogram(name: "memset", scope: !1461, file: !1461, line: 57, type: !1542, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3034)
!3034 = !{!3032, !3035, !3036}
!3035 = !DILocalVariable(name: "__ch", arg: 2, scope: !3033, file: !1461, line: 57, type: !118)
!3036 = !DILocalVariable(name: "__len", arg: 3, scope: !3033, file: !1461, line: 57, type: !180)
!3037 = !DILocation(line: 0, scope: !3033, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1137, column: 3, scope: !3025, inlinedAt: !3031)
!3039 = !DILocation(line: 59, column: 10, scope: !3033, inlinedAt: !3038)
!3040 = !DILocation(line: 231, column: 7, scope: !3041, inlinedAt: !3014)
!3041 = distinct !DILexicalBlock(scope: !801, file: !743, line: 231, column: 7)
!3042 = !DILocation(line: 231, column: 40, scope: !3041, inlinedAt: !3014)
!3043 = !DILocation(line: 231, column: 45, scope: !3041, inlinedAt: !3014)
!3044 = !DILocation(line: 235, column: 1, scope: !801, inlinedAt: !3014)
!3045 = !DILocation(line: 0, scope: !801, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 358, column: 27, scope: !3015)
!3047 = !DILocation(line: 199, column: 29, scope: !801, inlinedAt: !3046)
!3048 = !DILocation(line: 201, column: 19, scope: !3019, inlinedAt: !3046)
!3049 = !DILocation(line: 201, column: 7, scope: !801, inlinedAt: !3046)
!3050 = !DILocation(line: 229, column: 3, scope: !801, inlinedAt: !3046)
!3051 = !DILocation(line: 230, column: 3, scope: !801, inlinedAt: !3046)
!3052 = !DILocation(line: 230, column: 13, scope: !801, inlinedAt: !3046)
!3053 = !DILocation(line: 0, scope: !3025, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 230, column: 18, scope: !801, inlinedAt: !3046)
!3055 = !DILocation(line: 0, scope: !3033, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 1137, column: 3, scope: !3025, inlinedAt: !3054)
!3057 = !DILocation(line: 59, column: 10, scope: !3033, inlinedAt: !3056)
!3058 = !DILocation(line: 231, column: 7, scope: !3041, inlinedAt: !3046)
!3059 = !DILocation(line: 231, column: 40, scope: !3041, inlinedAt: !3046)
!3060 = !DILocation(line: 231, column: 45, scope: !3041, inlinedAt: !3046)
!3061 = !DILocation(line: 235, column: 1, scope: !801, inlinedAt: !3046)
!3062 = !DILocation(line: 360, column: 13, scope: !2958)
!3063 = !DILocation(line: 0, scope: !2956)
!3064 = !DILocation(line: 361, column: 45, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2956, file: !743, line: 361, column: 11)
!3066 = !DILocation(line: 361, column: 11, scope: !2956)
!3067 = !DILocation(line: 362, column: 13, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !743, line: 362, column: 13)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !743, line: 362, column: 13)
!3070 = !DILocation(line: 362, column: 13, scope: !3069)
!3071 = !DILocation(line: 361, column: 52, scope: !3065)
!3072 = distinct !{!3072, !3066, !3073, !1188}
!3073 = !DILocation(line: 362, column: 13, scope: !2956)
!3074 = !DILocation(line: 260, column: 10, scope: !2930)
!3075 = !DILocation(line: 365, column: 28, scope: !2958)
!3076 = !DILocation(line: 367, column: 7, scope: !2959)
!3077 = !DILocation(line: 370, column: 7, scope: !2959)
!3078 = !DILocation(line: 376, column: 11, scope: !2959)
!3079 = !DILocation(line: 381, column: 11, scope: !2959)
!3080 = !DILocation(line: 382, column: 9, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !743, line: 382, column: 9)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !743, line: 382, column: 9)
!3083 = distinct !DILexicalBlock(scope: !2959, file: !743, line: 381, column: 11)
!3084 = !DILocation(line: 382, column: 9, scope: !3082)
!3085 = !DILocation(line: 389, column: 7, scope: !2959)
!3086 = !DILocation(line: 392, column: 7, scope: !2959)
!3087 = !DILocation(line: 0, scope: !2961)
!3088 = !DILocation(line: 395, column: 8, scope: !2961)
!3089 = !DILocation(line: 395, scope: !2961)
!3090 = !DILocation(line: 395, column: 34, scope: !2964)
!3091 = !DILocation(line: 395, column: 26, scope: !2964)
!3092 = !DILocation(line: 395, column: 48, scope: !2964)
!3093 = !DILocation(line: 395, column: 55, scope: !2964)
!3094 = !DILocation(line: 395, column: 3, scope: !2961)
!3095 = !DILocation(line: 395, column: 67, scope: !2964)
!3096 = !DILocation(line: 0, scope: !2963)
!3097 = !DILocation(line: 402, column: 11, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2963, file: !743, line: 401, column: 11)
!3099 = !DILocation(line: 404, column: 17, scope: !3098)
!3100 = !DILocation(line: 405, column: 39, scope: !3098)
!3101 = !DILocation(line: 409, column: 32, scope: !3098)
!3102 = !DILocation(line: 405, column: 19, scope: !3098)
!3103 = !DILocation(line: 405, column: 15, scope: !3098)
!3104 = !DILocation(line: 410, column: 11, scope: !3098)
!3105 = !DILocation(line: 410, column: 25, scope: !3098)
!3106 = !DILocalVariable(name: "__s1", arg: 1, scope: !3107, file: !1154, line: 974, type: !1286)
!3107 = distinct !DISubprogram(name: "memeq", scope: !1154, file: !1154, line: 974, type: !1703, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3108)
!3108 = !{!3106, !3109, !3110}
!3109 = !DILocalVariable(name: "__s2", arg: 2, scope: !3107, file: !1154, line: 974, type: !1286)
!3110 = !DILocalVariable(name: "__n", arg: 3, scope: !3107, file: !1154, line: 974, type: !180)
!3111 = !DILocation(line: 0, scope: !3107, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 410, column: 14, scope: !3098)
!3113 = !DILocation(line: 976, column: 11, scope: !3107, inlinedAt: !3112)
!3114 = !DILocation(line: 976, column: 10, scope: !3107, inlinedAt: !3112)
!3115 = !DILocation(line: 401, column: 11, scope: !2963)
!3116 = !DILocation(line: 417, column: 25, scope: !2963)
!3117 = !DILocation(line: 418, column: 7, scope: !2963)
!3118 = !DILocation(line: 421, column: 15, scope: !2970)
!3119 = !DILocation(line: 423, column: 15, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !743, line: 423, column: 15)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !743, line: 422, column: 13)
!3122 = distinct !DILexicalBlock(scope: !2970, file: !743, line: 421, column: 15)
!3123 = !DILocation(line: 423, column: 15, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !743, line: 423, column: 15)
!3125 = !DILocation(line: 423, column: 15, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !743, line: 423, column: 15)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !743, line: 423, column: 15)
!3128 = distinct !DILexicalBlock(scope: !3124, file: !743, line: 423, column: 15)
!3129 = !DILocation(line: 423, column: 15, scope: !3127)
!3130 = !DILocation(line: 423, column: 15, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !743, line: 423, column: 15)
!3132 = distinct !DILexicalBlock(scope: !3128, file: !743, line: 423, column: 15)
!3133 = !DILocation(line: 423, column: 15, scope: !3132)
!3134 = !DILocation(line: 423, column: 15, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !743, line: 423, column: 15)
!3136 = distinct !DILexicalBlock(scope: !3128, file: !743, line: 423, column: 15)
!3137 = !DILocation(line: 423, column: 15, scope: !3136)
!3138 = !DILocation(line: 423, column: 15, scope: !3128)
!3139 = !DILocation(line: 423, column: 15, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !743, line: 423, column: 15)
!3141 = distinct !DILexicalBlock(scope: !3120, file: !743, line: 423, column: 15)
!3142 = !DILocation(line: 423, column: 15, scope: !3141)
!3143 = !DILocation(line: 431, column: 19, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3121, file: !743, line: 430, column: 19)
!3145 = !DILocation(line: 431, column: 24, scope: !3144)
!3146 = !DILocation(line: 431, column: 28, scope: !3144)
!3147 = !DILocation(line: 431, column: 38, scope: !3144)
!3148 = !DILocation(line: 431, column: 48, scope: !3144)
!3149 = !DILocation(line: 431, column: 59, scope: !3144)
!3150 = !DILocation(line: 433, column: 19, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !743, line: 433, column: 19)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !743, line: 433, column: 19)
!3153 = distinct !DILexicalBlock(scope: !3144, file: !743, line: 432, column: 17)
!3154 = !DILocation(line: 433, column: 19, scope: !3152)
!3155 = !DILocation(line: 434, column: 19, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !743, line: 434, column: 19)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !743, line: 434, column: 19)
!3158 = !DILocation(line: 434, column: 19, scope: !3157)
!3159 = !DILocation(line: 435, column: 17, scope: !3153)
!3160 = !DILocation(line: 442, column: 20, scope: !3122)
!3161 = !DILocation(line: 447, column: 11, scope: !2970)
!3162 = !DILocation(line: 450, column: 19, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !2970, file: !743, line: 448, column: 13)
!3164 = !DILocation(line: 456, column: 19, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3163, file: !743, line: 455, column: 19)
!3166 = !DILocation(line: 456, column: 24, scope: !3165)
!3167 = !DILocation(line: 456, column: 28, scope: !3165)
!3168 = !DILocation(line: 456, column: 38, scope: !3165)
!3169 = !DILocation(line: 456, column: 47, scope: !3165)
!3170 = !DILocation(line: 456, column: 41, scope: !3165)
!3171 = !DILocation(line: 456, column: 52, scope: !3165)
!3172 = !DILocation(line: 455, column: 19, scope: !3163)
!3173 = !DILocation(line: 457, column: 25, scope: !3165)
!3174 = !DILocation(line: 457, column: 17, scope: !3165)
!3175 = !DILocation(line: 464, column: 25, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3165, file: !743, line: 458, column: 19)
!3177 = !DILocation(line: 468, column: 21, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !743, line: 468, column: 21)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !743, line: 468, column: 21)
!3180 = !DILocation(line: 468, column: 21, scope: !3179)
!3181 = !DILocation(line: 469, column: 21, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !743, line: 469, column: 21)
!3183 = distinct !DILexicalBlock(scope: !3176, file: !743, line: 469, column: 21)
!3184 = !DILocation(line: 469, column: 21, scope: !3183)
!3185 = !DILocation(line: 470, column: 21, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !743, line: 470, column: 21)
!3187 = distinct !DILexicalBlock(scope: !3176, file: !743, line: 470, column: 21)
!3188 = !DILocation(line: 470, column: 21, scope: !3187)
!3189 = !DILocation(line: 471, column: 21, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !743, line: 471, column: 21)
!3191 = distinct !DILexicalBlock(scope: !3176, file: !743, line: 471, column: 21)
!3192 = !DILocation(line: 471, column: 21, scope: !3191)
!3193 = !DILocation(line: 472, column: 21, scope: !3176)
!3194 = !DILocation(line: 482, column: 33, scope: !2993)
!3195 = !DILocation(line: 483, column: 33, scope: !2993)
!3196 = !DILocation(line: 485, column: 33, scope: !2993)
!3197 = !DILocation(line: 486, column: 33, scope: !2993)
!3198 = !DILocation(line: 487, column: 33, scope: !2993)
!3199 = !DILocation(line: 490, column: 17, scope: !2993)
!3200 = !DILocation(line: 492, column: 21, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !743, line: 491, column: 15)
!3202 = distinct !DILexicalBlock(scope: !2993, file: !743, line: 490, column: 17)
!3203 = !DILocation(line: 499, column: 35, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !2993, file: !743, line: 499, column: 17)
!3205 = !DILocation(line: 0, scope: !2993)
!3206 = !DILocation(line: 502, column: 11, scope: !2993)
!3207 = !DILocation(line: 504, column: 17, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !2993, file: !743, line: 503, column: 17)
!3209 = !DILocation(line: 507, column: 11, scope: !2993)
!3210 = !DILocation(line: 508, column: 17, scope: !2993)
!3211 = !DILocation(line: 517, column: 15, scope: !2970)
!3212 = !DILocation(line: 517, column: 40, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !2970, file: !743, line: 517, column: 15)
!3214 = !DILocation(line: 517, column: 47, scope: !3213)
!3215 = !DILocation(line: 517, column: 18, scope: !3213)
!3216 = !DILocation(line: 521, column: 17, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !2970, file: !743, line: 521, column: 15)
!3218 = !DILocation(line: 521, column: 15, scope: !2970)
!3219 = !DILocation(line: 525, column: 11, scope: !2970)
!3220 = !DILocation(line: 537, column: 15, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !2970, file: !743, line: 536, column: 15)
!3222 = !DILocation(line: 536, column: 15, scope: !2970)
!3223 = !DILocation(line: 544, column: 15, scope: !2970)
!3224 = !DILocation(line: 546, column: 19, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !743, line: 545, column: 13)
!3226 = distinct !DILexicalBlock(scope: !2970, file: !743, line: 544, column: 15)
!3227 = !DILocation(line: 549, column: 19, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3225, file: !743, line: 549, column: 19)
!3229 = !DILocation(line: 549, column: 30, scope: !3228)
!3230 = !DILocation(line: 558, column: 15, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !743, line: 558, column: 15)
!3232 = distinct !DILexicalBlock(scope: !3225, file: !743, line: 558, column: 15)
!3233 = !DILocation(line: 558, column: 15, scope: !3232)
!3234 = !DILocation(line: 559, column: 15, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !743, line: 559, column: 15)
!3236 = distinct !DILexicalBlock(scope: !3225, file: !743, line: 559, column: 15)
!3237 = !DILocation(line: 559, column: 15, scope: !3236)
!3238 = !DILocation(line: 560, column: 15, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !743, line: 560, column: 15)
!3240 = distinct !DILexicalBlock(scope: !3225, file: !743, line: 560, column: 15)
!3241 = !DILocation(line: 560, column: 15, scope: !3240)
!3242 = !DILocation(line: 562, column: 13, scope: !3225)
!3243 = !DILocation(line: 602, column: 17, scope: !2969)
!3244 = !DILocation(line: 0, scope: !2969)
!3245 = !DILocation(line: 605, column: 29, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2974, file: !743, line: 603, column: 15)
!3247 = !DILocation(line: 605, column: 41, scope: !3246)
!3248 = !DILocation(line: 606, column: 15, scope: !3246)
!3249 = !DILocation(line: 609, column: 17, scope: !2973)
!3250 = !DILocation(line: 609, column: 27, scope: !2973)
!3251 = !DILocation(line: 0, scope: !3025, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 609, column: 32, scope: !2973)
!3253 = !DILocation(line: 0, scope: !3033, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 1137, column: 3, scope: !3025, inlinedAt: !3252)
!3255 = !DILocation(line: 59, column: 10, scope: !3033, inlinedAt: !3254)
!3256 = !DILocation(line: 613, column: 29, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !2973, file: !743, line: 613, column: 21)
!3258 = !DILocation(line: 613, column: 21, scope: !2973)
!3259 = !DILocation(line: 614, column: 29, scope: !3257)
!3260 = !DILocation(line: 614, column: 19, scope: !3257)
!3261 = !DILocation(line: 618, column: 21, scope: !2976)
!3262 = !DILocation(line: 620, column: 54, scope: !2976)
!3263 = !DILocation(line: 0, scope: !2976)
!3264 = !DILocation(line: 619, column: 36, scope: !2976)
!3265 = !DILocation(line: 621, column: 25, scope: !2976)
!3266 = !DILocation(line: 631, column: 38, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !2985, file: !743, line: 629, column: 23)
!3268 = !DILocation(line: 631, column: 48, scope: !3267)
!3269 = !DILocation(line: 626, column: 25, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !2986, file: !743, line: 624, column: 23)
!3271 = !DILocation(line: 631, column: 51, scope: !3267)
!3272 = !DILocation(line: 631, column: 25, scope: !3267)
!3273 = !DILocation(line: 632, column: 28, scope: !3267)
!3274 = !DILocation(line: 631, column: 34, scope: !3267)
!3275 = distinct !{!3275, !3272, !3273, !1188}
!3276 = !DILocation(line: 646, column: 29, scope: !2983)
!3277 = !DILocation(line: 0, scope: !2981)
!3278 = !DILocation(line: 649, column: 49, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !2981, file: !743, line: 648, column: 29)
!3280 = !DILocation(line: 649, column: 39, scope: !3279)
!3281 = !DILocation(line: 649, column: 31, scope: !3279)
!3282 = !DILocation(line: 648, column: 60, scope: !3279)
!3283 = !DILocation(line: 648, column: 50, scope: !3279)
!3284 = !DILocation(line: 648, column: 29, scope: !2981)
!3285 = distinct !{!3285, !3284, !3286, !1188}
!3286 = !DILocation(line: 654, column: 33, scope: !2981)
!3287 = !DILocation(line: 657, column: 43, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !2984, file: !743, line: 657, column: 29)
!3289 = !DILocalVariable(name: "wc", arg: 1, scope: !3290, file: !3291, line: 865, type: !3294)
!3290 = distinct !DISubprogram(name: "c32isprint", scope: !3291, file: !3291, line: 865, type: !3292, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3296)
!3291 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!118, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3295, line: 20, baseType: !110)
!3295 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3296 = !{!3289}
!3297 = !DILocation(line: 0, scope: !3290, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 657, column: 31, scope: !3288)
!3299 = !DILocation(line: 871, column: 10, scope: !3290, inlinedAt: !3298)
!3300 = !DILocation(line: 657, column: 31, scope: !3288)
!3301 = !DILocation(line: 664, column: 23, scope: !2976)
!3302 = !DILocation(line: 665, column: 19, scope: !2977)
!3303 = !DILocation(line: 666, column: 15, scope: !2974)
!3304 = !DILocation(line: 753, column: 2, scope: !2930)
!3305 = !DILocation(line: 756, column: 51, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !2930, file: !743, line: 756, column: 7)
!3307 = !DILocation(line: 0, scope: !2974)
!3308 = !DILocation(line: 670, column: 19, scope: !2990)
!3309 = !DILocation(line: 670, column: 23, scope: !2990)
!3310 = !DILocation(line: 674, column: 33, scope: !2989)
!3311 = !DILocation(line: 0, scope: !2989)
!3312 = !DILocation(line: 676, column: 17, scope: !2989)
!3313 = !DILocation(line: 398, column: 12, scope: !2963)
!3314 = !DILocation(line: 678, column: 43, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !743, line: 678, column: 25)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !743, line: 677, column: 19)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !743, line: 676, column: 17)
!3318 = distinct !DILexicalBlock(scope: !2989, file: !743, line: 676, column: 17)
!3319 = !DILocation(line: 680, column: 25, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !743, line: 680, column: 25)
!3321 = distinct !DILexicalBlock(scope: !3315, file: !743, line: 679, column: 23)
!3322 = !DILocation(line: 680, column: 25, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3320, file: !743, line: 680, column: 25)
!3324 = !DILocation(line: 680, column: 25, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !743, line: 680, column: 25)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !743, line: 680, column: 25)
!3327 = distinct !DILexicalBlock(scope: !3323, file: !743, line: 680, column: 25)
!3328 = !DILocation(line: 680, column: 25, scope: !3326)
!3329 = !DILocation(line: 680, column: 25, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !743, line: 680, column: 25)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !743, line: 680, column: 25)
!3332 = !DILocation(line: 680, column: 25, scope: !3331)
!3333 = !DILocation(line: 680, column: 25, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !743, line: 680, column: 25)
!3335 = distinct !DILexicalBlock(scope: !3327, file: !743, line: 680, column: 25)
!3336 = !DILocation(line: 680, column: 25, scope: !3335)
!3337 = !DILocation(line: 680, column: 25, scope: !3327)
!3338 = !DILocation(line: 680, column: 25, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !743, line: 680, column: 25)
!3340 = distinct !DILexicalBlock(scope: !3320, file: !743, line: 680, column: 25)
!3341 = !DILocation(line: 680, column: 25, scope: !3340)
!3342 = !DILocation(line: 681, column: 25, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !743, line: 681, column: 25)
!3344 = distinct !DILexicalBlock(scope: !3321, file: !743, line: 681, column: 25)
!3345 = !DILocation(line: 681, column: 25, scope: !3344)
!3346 = !DILocation(line: 682, column: 25, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !743, line: 682, column: 25)
!3348 = distinct !DILexicalBlock(scope: !3321, file: !743, line: 682, column: 25)
!3349 = !DILocation(line: 682, column: 25, scope: !3348)
!3350 = !DILocation(line: 683, column: 38, scope: !3321)
!3351 = !DILocation(line: 683, column: 33, scope: !3321)
!3352 = !DILocation(line: 684, column: 23, scope: !3321)
!3353 = !DILocation(line: 685, column: 30, scope: !3315)
!3354 = !DILocation(line: 687, column: 25, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !743, line: 687, column: 25)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !743, line: 687, column: 25)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !743, line: 686, column: 23)
!3358 = distinct !DILexicalBlock(scope: !3315, file: !743, line: 685, column: 30)
!3359 = !DILocation(line: 687, column: 25, scope: !3356)
!3360 = !DILocation(line: 689, column: 23, scope: !3357)
!3361 = !DILocation(line: 690, column: 35, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3316, file: !743, line: 690, column: 25)
!3363 = !DILocation(line: 690, column: 30, scope: !3362)
!3364 = !DILocation(line: 690, column: 25, scope: !3316)
!3365 = !DILocation(line: 692, column: 21, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !743, line: 692, column: 21)
!3367 = distinct !DILexicalBlock(scope: !3316, file: !743, line: 692, column: 21)
!3368 = !DILocation(line: 692, column: 21, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !743, line: 692, column: 21)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !743, line: 692, column: 21)
!3371 = distinct !DILexicalBlock(scope: !3366, file: !743, line: 692, column: 21)
!3372 = !DILocation(line: 692, column: 21, scope: !3370)
!3373 = !DILocation(line: 692, column: 21, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !743, line: 692, column: 21)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !743, line: 692, column: 21)
!3376 = !DILocation(line: 692, column: 21, scope: !3375)
!3377 = !DILocation(line: 692, column: 21, scope: !3371)
!3378 = !DILocation(line: 0, scope: !3316)
!3379 = !DILocation(line: 693, column: 21, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !743, line: 693, column: 21)
!3381 = distinct !DILexicalBlock(scope: !3316, file: !743, line: 693, column: 21)
!3382 = !DILocation(line: 693, column: 21, scope: !3381)
!3383 = !DILocation(line: 694, column: 25, scope: !3316)
!3384 = !DILocation(line: 676, column: 17, scope: !3317)
!3385 = distinct !{!3385, !3386, !3387}
!3386 = !DILocation(line: 676, column: 17, scope: !3318)
!3387 = !DILocation(line: 695, column: 19, scope: !3318)
!3388 = !DILocation(line: 409, column: 30, scope: !3098)
!3389 = !DILocation(line: 702, column: 34, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !2963, file: !743, line: 702, column: 11)
!3391 = !DILocation(line: 704, column: 14, scope: !3390)
!3392 = !DILocation(line: 705, column: 14, scope: !3390)
!3393 = !DILocation(line: 705, column: 35, scope: !3390)
!3394 = !DILocation(line: 705, column: 17, scope: !3390)
!3395 = !DILocation(line: 705, column: 47, scope: !3390)
!3396 = !DILocation(line: 705, column: 65, scope: !3390)
!3397 = !DILocation(line: 706, column: 11, scope: !3390)
!3398 = !DILocation(line: 702, column: 11, scope: !2963)
!3399 = !DILocation(line: 395, column: 15, scope: !2961)
!3400 = !DILocation(line: 709, column: 5, scope: !2963)
!3401 = !DILocation(line: 710, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !2963, file: !743, line: 710, column: 7)
!3403 = !DILocation(line: 710, column: 7, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3402, file: !743, line: 710, column: 7)
!3405 = !DILocation(line: 710, column: 7, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !743, line: 710, column: 7)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !743, line: 710, column: 7)
!3408 = distinct !DILexicalBlock(scope: !3404, file: !743, line: 710, column: 7)
!3409 = !DILocation(line: 710, column: 7, scope: !3407)
!3410 = !DILocation(line: 710, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !743, line: 710, column: 7)
!3412 = distinct !DILexicalBlock(scope: !3408, file: !743, line: 710, column: 7)
!3413 = !DILocation(line: 710, column: 7, scope: !3412)
!3414 = !DILocation(line: 710, column: 7, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !743, line: 710, column: 7)
!3416 = distinct !DILexicalBlock(scope: !3408, file: !743, line: 710, column: 7)
!3417 = !DILocation(line: 710, column: 7, scope: !3416)
!3418 = !DILocation(line: 710, column: 7, scope: !3408)
!3419 = !DILocation(line: 710, column: 7, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !743, line: 710, column: 7)
!3421 = distinct !DILexicalBlock(scope: !3402, file: !743, line: 710, column: 7)
!3422 = !DILocation(line: 710, column: 7, scope: !3421)
!3423 = !DILocation(line: 712, column: 5, scope: !2963)
!3424 = !DILocation(line: 713, column: 7, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !743, line: 713, column: 7)
!3426 = distinct !DILexicalBlock(scope: !2963, file: !743, line: 713, column: 7)
!3427 = !DILocation(line: 417, column: 21, scope: !2963)
!3428 = !DILocation(line: 713, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !743, line: 713, column: 7)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !743, line: 713, column: 7)
!3431 = distinct !DILexicalBlock(scope: !3425, file: !743, line: 713, column: 7)
!3432 = !DILocation(line: 713, column: 7, scope: !3430)
!3433 = !DILocation(line: 713, column: 7, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !743, line: 713, column: 7)
!3435 = distinct !DILexicalBlock(scope: !3431, file: !743, line: 713, column: 7)
!3436 = !DILocation(line: 713, column: 7, scope: !3435)
!3437 = !DILocation(line: 713, column: 7, scope: !3431)
!3438 = !DILocation(line: 714, column: 7, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !743, line: 714, column: 7)
!3440 = distinct !DILexicalBlock(scope: !2963, file: !743, line: 714, column: 7)
!3441 = !DILocation(line: 714, column: 7, scope: !3440)
!3442 = !DILocation(line: 716, column: 11, scope: !2963)
!3443 = !DILocation(line: 718, column: 5, scope: !2964)
!3444 = !DILocation(line: 395, column: 82, scope: !2964)
!3445 = !DILocation(line: 395, column: 3, scope: !2964)
!3446 = distinct !{!3446, !3094, !3447, !1188}
!3447 = !DILocation(line: 718, column: 5, scope: !2961)
!3448 = !DILocation(line: 720, column: 11, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !2930, file: !743, line: 720, column: 7)
!3450 = !DILocation(line: 720, column: 16, scope: !3449)
!3451 = !DILocation(line: 728, column: 51, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !2930, file: !743, line: 728, column: 7)
!3453 = !DILocation(line: 731, column: 11, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3452, file: !743, line: 730, column: 5)
!3455 = !DILocation(line: 732, column: 16, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3454, file: !743, line: 731, column: 11)
!3457 = !DILocation(line: 732, column: 9, scope: !3456)
!3458 = !DILocation(line: 736, column: 18, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3456, file: !743, line: 736, column: 16)
!3460 = !DILocation(line: 736, column: 29, scope: !3459)
!3461 = !DILocation(line: 745, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !2930, file: !743, line: 745, column: 7)
!3463 = !DILocation(line: 745, column: 20, scope: !3462)
!3464 = !DILocation(line: 746, column: 12, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !743, line: 746, column: 5)
!3466 = distinct !DILexicalBlock(scope: !3462, file: !743, line: 746, column: 5)
!3467 = !DILocation(line: 746, column: 5, scope: !3466)
!3468 = !DILocation(line: 747, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !743, line: 747, column: 7)
!3470 = distinct !DILexicalBlock(scope: !3465, file: !743, line: 747, column: 7)
!3471 = !DILocation(line: 747, column: 7, scope: !3470)
!3472 = !DILocation(line: 746, column: 39, scope: !3465)
!3473 = distinct !{!3473, !3467, !3474, !1188}
!3474 = !DILocation(line: 747, column: 7, scope: !3466)
!3475 = !DILocation(line: 749, column: 11, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !2930, file: !743, line: 749, column: 7)
!3477 = !DILocation(line: 749, column: 7, scope: !2930)
!3478 = !DILocation(line: 750, column: 5, scope: !3476)
!3479 = !DILocation(line: 750, column: 17, scope: !3476)
!3480 = !DILocation(line: 756, column: 21, scope: !3306)
!3481 = !DILocation(line: 760, column: 42, scope: !2930)
!3482 = !DILocation(line: 758, column: 10, scope: !2930)
!3483 = !DILocation(line: 758, column: 3, scope: !2930)
!3484 = !DILocation(line: 762, column: 1, scope: !2930)
!3485 = !DISubprogram(name: "iswprint", scope: !3486, file: !3486, line: 120, type: !3292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3486 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3487 = distinct !DISubprogram(name: "quotearg_alloc", scope: !743, file: !743, line: 788, type: !3488, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!177, !183, !180, !2823}
!3490 = !{!3491, !3492, !3493}
!3491 = !DILocalVariable(name: "arg", arg: 1, scope: !3487, file: !743, line: 788, type: !183)
!3492 = !DILocalVariable(name: "argsize", arg: 2, scope: !3487, file: !743, line: 788, type: !180)
!3493 = !DILocalVariable(name: "o", arg: 3, scope: !3487, file: !743, line: 789, type: !2823)
!3494 = !DILocation(line: 0, scope: !3487)
!3495 = !DILocalVariable(name: "arg", arg: 1, scope: !3496, file: !743, line: 801, type: !183)
!3496 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !743, file: !743, line: 801, type: !3497, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!177, !183, !180, !987, !2823}
!3499 = !{!3495, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507}
!3500 = !DILocalVariable(name: "argsize", arg: 2, scope: !3496, file: !743, line: 801, type: !180)
!3501 = !DILocalVariable(name: "size", arg: 3, scope: !3496, file: !743, line: 801, type: !987)
!3502 = !DILocalVariable(name: "o", arg: 4, scope: !3496, file: !743, line: 802, type: !2823)
!3503 = !DILocalVariable(name: "p", scope: !3496, file: !743, line: 804, type: !2823)
!3504 = !DILocalVariable(name: "saved_errno", scope: !3496, file: !743, line: 805, type: !118)
!3505 = !DILocalVariable(name: "flags", scope: !3496, file: !743, line: 807, type: !118)
!3506 = !DILocalVariable(name: "bufsize", scope: !3496, file: !743, line: 808, type: !180)
!3507 = !DILocalVariable(name: "buf", scope: !3496, file: !743, line: 812, type: !177)
!3508 = !DILocation(line: 0, scope: !3496, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 791, column: 10, scope: !3487)
!3510 = !DILocation(line: 804, column: 37, scope: !3496, inlinedAt: !3509)
!3511 = !DILocation(line: 805, column: 21, scope: !3496, inlinedAt: !3509)
!3512 = !DILocation(line: 807, column: 18, scope: !3496, inlinedAt: !3509)
!3513 = !DILocation(line: 807, column: 24, scope: !3496, inlinedAt: !3509)
!3514 = !DILocation(line: 808, column: 72, scope: !3496, inlinedAt: !3509)
!3515 = !DILocation(line: 809, column: 56, scope: !3496, inlinedAt: !3509)
!3516 = !DILocation(line: 810, column: 49, scope: !3496, inlinedAt: !3509)
!3517 = !DILocation(line: 811, column: 49, scope: !3496, inlinedAt: !3509)
!3518 = !DILocation(line: 808, column: 20, scope: !3496, inlinedAt: !3509)
!3519 = !DILocation(line: 811, column: 62, scope: !3496, inlinedAt: !3509)
!3520 = !DILocation(line: 812, column: 15, scope: !3496, inlinedAt: !3509)
!3521 = !DILocation(line: 813, column: 60, scope: !3496, inlinedAt: !3509)
!3522 = !DILocation(line: 815, column: 32, scope: !3496, inlinedAt: !3509)
!3523 = !DILocation(line: 815, column: 47, scope: !3496, inlinedAt: !3509)
!3524 = !DILocation(line: 813, column: 3, scope: !3496, inlinedAt: !3509)
!3525 = !DILocation(line: 816, column: 9, scope: !3496, inlinedAt: !3509)
!3526 = !DILocation(line: 791, column: 3, scope: !3487)
!3527 = !DILocation(line: 0, scope: !3496)
!3528 = !DILocation(line: 804, column: 37, scope: !3496)
!3529 = !DILocation(line: 805, column: 21, scope: !3496)
!3530 = !DILocation(line: 807, column: 18, scope: !3496)
!3531 = !DILocation(line: 807, column: 27, scope: !3496)
!3532 = !DILocation(line: 807, column: 24, scope: !3496)
!3533 = !DILocation(line: 808, column: 72, scope: !3496)
!3534 = !DILocation(line: 809, column: 56, scope: !3496)
!3535 = !DILocation(line: 810, column: 49, scope: !3496)
!3536 = !DILocation(line: 811, column: 49, scope: !3496)
!3537 = !DILocation(line: 808, column: 20, scope: !3496)
!3538 = !DILocation(line: 811, column: 62, scope: !3496)
!3539 = !DILocation(line: 812, column: 15, scope: !3496)
!3540 = !DILocation(line: 813, column: 60, scope: !3496)
!3541 = !DILocation(line: 815, column: 32, scope: !3496)
!3542 = !DILocation(line: 815, column: 47, scope: !3496)
!3543 = !DILocation(line: 813, column: 3, scope: !3496)
!3544 = !DILocation(line: 816, column: 9, scope: !3496)
!3545 = !DILocation(line: 817, column: 7, scope: !3496)
!3546 = !DILocation(line: 818, column: 11, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3496, file: !743, line: 817, column: 7)
!3548 = !DILocation(line: 818, column: 5, scope: !3547)
!3549 = !DILocation(line: 819, column: 3, scope: !3496)
!3550 = distinct !DISubprogram(name: "quotearg_free", scope: !743, file: !743, line: 837, type: !600, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3551)
!3551 = !{!3552, !3553}
!3552 = !DILocalVariable(name: "sv", scope: !3550, file: !743, line: 839, type: !824)
!3553 = !DILocalVariable(name: "i", scope: !3554, file: !743, line: 840, type: !118)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !743, line: 840, column: 3)
!3555 = !DILocation(line: 839, column: 24, scope: !3550)
!3556 = !DILocation(line: 0, scope: !3550)
!3557 = !DILocation(line: 0, scope: !3554)
!3558 = !DILocation(line: 840, column: 21, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3554, file: !743, line: 840, column: 3)
!3560 = !DILocation(line: 840, column: 3, scope: !3554)
!3561 = !DILocation(line: 842, column: 13, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3550, file: !743, line: 842, column: 7)
!3563 = !{!3564, !1062, i64 8}
!3564 = !{!"slotvec", !1339, i64 0, !1062, i64 8}
!3565 = !DILocation(line: 842, column: 17, scope: !3562)
!3566 = !DILocation(line: 842, column: 7, scope: !3550)
!3567 = !DILocation(line: 841, column: 17, scope: !3559)
!3568 = !DILocation(line: 841, column: 5, scope: !3559)
!3569 = !DILocation(line: 840, column: 32, scope: !3559)
!3570 = distinct !{!3570, !3560, !3571, !1188}
!3571 = !DILocation(line: 841, column: 20, scope: !3554)
!3572 = !DILocation(line: 844, column: 7, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3562, file: !743, line: 843, column: 5)
!3574 = !DILocation(line: 845, column: 21, scope: !3573)
!3575 = !{!3564, !1339, i64 0}
!3576 = !DILocation(line: 846, column: 20, scope: !3573)
!3577 = !DILocation(line: 847, column: 5, scope: !3573)
!3578 = !DILocation(line: 848, column: 10, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3550, file: !743, line: 848, column: 7)
!3580 = !DILocation(line: 848, column: 7, scope: !3550)
!3581 = !DILocation(line: 850, column: 7, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !743, line: 849, column: 5)
!3583 = !DILocation(line: 851, column: 15, scope: !3582)
!3584 = !DILocation(line: 852, column: 5, scope: !3582)
!3585 = !DILocation(line: 853, column: 10, scope: !3550)
!3586 = !DILocation(line: 854, column: 1, scope: !3550)
!3587 = distinct !DISubprogram(name: "quotearg_n", scope: !743, file: !743, line: 919, type: !1255, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3588)
!3588 = !{!3589, !3590}
!3589 = !DILocalVariable(name: "n", arg: 1, scope: !3587, file: !743, line: 919, type: !118)
!3590 = !DILocalVariable(name: "arg", arg: 2, scope: !3587, file: !743, line: 919, type: !183)
!3591 = !DILocation(line: 0, scope: !3587)
!3592 = !DILocation(line: 921, column: 10, scope: !3587)
!3593 = !DILocation(line: 921, column: 3, scope: !3587)
!3594 = distinct !DISubprogram(name: "quotearg_n_options", scope: !743, file: !743, line: 866, type: !3595, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!177, !118, !183, !180, !2823}
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3608, !3609, !3611, !3612, !3613}
!3598 = !DILocalVariable(name: "n", arg: 1, scope: !3594, file: !743, line: 866, type: !118)
!3599 = !DILocalVariable(name: "arg", arg: 2, scope: !3594, file: !743, line: 866, type: !183)
!3600 = !DILocalVariable(name: "argsize", arg: 3, scope: !3594, file: !743, line: 866, type: !180)
!3601 = !DILocalVariable(name: "options", arg: 4, scope: !3594, file: !743, line: 867, type: !2823)
!3602 = !DILocalVariable(name: "saved_errno", scope: !3594, file: !743, line: 869, type: !118)
!3603 = !DILocalVariable(name: "sv", scope: !3594, file: !743, line: 871, type: !824)
!3604 = !DILocalVariable(name: "nslots_max", scope: !3594, file: !743, line: 873, type: !118)
!3605 = !DILocalVariable(name: "preallocated", scope: !3606, file: !743, line: 879, type: !186)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !743, line: 878, column: 5)
!3607 = distinct !DILexicalBlock(scope: !3594, file: !743, line: 877, column: 7)
!3608 = !DILocalVariable(name: "new_nslots", scope: !3606, file: !743, line: 880, type: !297)
!3609 = !DILocalVariable(name: "size", scope: !3610, file: !743, line: 891, type: !180)
!3610 = distinct !DILexicalBlock(scope: !3594, file: !743, line: 890, column: 3)
!3611 = !DILocalVariable(name: "val", scope: !3610, file: !743, line: 892, type: !177)
!3612 = !DILocalVariable(name: "flags", scope: !3610, file: !743, line: 894, type: !118)
!3613 = !DILocalVariable(name: "qsize", scope: !3610, file: !743, line: 895, type: !180)
!3614 = !DILocation(line: 0, scope: !3594)
!3615 = !DILocation(line: 869, column: 21, scope: !3594)
!3616 = !DILocation(line: 871, column: 24, scope: !3594)
!3617 = !DILocation(line: 874, column: 17, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3594, file: !743, line: 874, column: 7)
!3619 = !DILocation(line: 875, column: 5, scope: !3618)
!3620 = !DILocation(line: 877, column: 7, scope: !3607)
!3621 = !DILocation(line: 877, column: 14, scope: !3607)
!3622 = !DILocation(line: 877, column: 7, scope: !3594)
!3623 = !DILocation(line: 879, column: 31, scope: !3606)
!3624 = !DILocation(line: 0, scope: !3606)
!3625 = !DILocation(line: 880, column: 7, scope: !3606)
!3626 = !DILocation(line: 880, column: 26, scope: !3606)
!3627 = !DILocation(line: 880, column: 13, scope: !3606)
!3628 = !DILocation(line: 882, column: 31, scope: !3606)
!3629 = !DILocation(line: 883, column: 33, scope: !3606)
!3630 = !DILocation(line: 883, column: 42, scope: !3606)
!3631 = !DILocation(line: 883, column: 31, scope: !3606)
!3632 = !DILocation(line: 882, column: 22, scope: !3606)
!3633 = !DILocation(line: 882, column: 15, scope: !3606)
!3634 = !DILocation(line: 884, column: 11, scope: !3606)
!3635 = !DILocation(line: 885, column: 15, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3606, file: !743, line: 884, column: 11)
!3637 = !{i64 0, i64 8, !1338, i64 8, i64 8, !1061}
!3638 = !DILocation(line: 885, column: 9, scope: !3636)
!3639 = !DILocation(line: 886, column: 20, scope: !3606)
!3640 = !DILocation(line: 886, column: 18, scope: !3606)
!3641 = !DILocation(line: 886, column: 32, scope: !3606)
!3642 = !DILocation(line: 886, column: 43, scope: !3606)
!3643 = !DILocation(line: 886, column: 53, scope: !3606)
!3644 = !DILocation(line: 0, scope: !3033, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 886, column: 7, scope: !3606)
!3646 = !DILocation(line: 59, column: 10, scope: !3033, inlinedAt: !3645)
!3647 = !DILocation(line: 887, column: 16, scope: !3606)
!3648 = !DILocation(line: 887, column: 14, scope: !3606)
!3649 = !DILocation(line: 888, column: 5, scope: !3607)
!3650 = !DILocation(line: 888, column: 5, scope: !3606)
!3651 = !DILocation(line: 891, column: 19, scope: !3610)
!3652 = !DILocation(line: 891, column: 25, scope: !3610)
!3653 = !DILocation(line: 0, scope: !3610)
!3654 = !DILocation(line: 892, column: 23, scope: !3610)
!3655 = !DILocation(line: 894, column: 26, scope: !3610)
!3656 = !DILocation(line: 894, column: 32, scope: !3610)
!3657 = !DILocation(line: 896, column: 55, scope: !3610)
!3658 = !DILocation(line: 897, column: 55, scope: !3610)
!3659 = !DILocation(line: 898, column: 55, scope: !3610)
!3660 = !DILocation(line: 899, column: 55, scope: !3610)
!3661 = !DILocation(line: 895, column: 20, scope: !3610)
!3662 = !DILocation(line: 901, column: 14, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3610, file: !743, line: 901, column: 9)
!3664 = !DILocation(line: 901, column: 9, scope: !3610)
!3665 = !DILocation(line: 903, column: 35, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3663, file: !743, line: 902, column: 7)
!3667 = !DILocation(line: 903, column: 20, scope: !3666)
!3668 = !DILocation(line: 904, column: 17, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3666, file: !743, line: 904, column: 13)
!3670 = !DILocation(line: 904, column: 13, scope: !3666)
!3671 = !DILocation(line: 905, column: 11, scope: !3669)
!3672 = !DILocation(line: 906, column: 27, scope: !3666)
!3673 = !DILocation(line: 906, column: 19, scope: !3666)
!3674 = !DILocation(line: 907, column: 69, scope: !3666)
!3675 = !DILocation(line: 909, column: 44, scope: !3666)
!3676 = !DILocation(line: 910, column: 44, scope: !3666)
!3677 = !DILocation(line: 907, column: 9, scope: !3666)
!3678 = !DILocation(line: 911, column: 7, scope: !3666)
!3679 = !DILocation(line: 913, column: 11, scope: !3610)
!3680 = !DILocation(line: 914, column: 5, scope: !3610)
!3681 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !743, file: !743, line: 925, type: !3682, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!177, !118, !183, !180}
!3684 = !{!3685, !3686, !3687}
!3685 = !DILocalVariable(name: "n", arg: 1, scope: !3681, file: !743, line: 925, type: !118)
!3686 = !DILocalVariable(name: "arg", arg: 2, scope: !3681, file: !743, line: 925, type: !183)
!3687 = !DILocalVariable(name: "argsize", arg: 3, scope: !3681, file: !743, line: 925, type: !180)
!3688 = !DILocation(line: 0, scope: !3681)
!3689 = !DILocation(line: 927, column: 10, scope: !3681)
!3690 = !DILocation(line: 927, column: 3, scope: !3681)
!3691 = distinct !DISubprogram(name: "quotearg", scope: !743, file: !743, line: 931, type: !1264, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3692)
!3692 = !{!3693}
!3693 = !DILocalVariable(name: "arg", arg: 1, scope: !3691, file: !743, line: 931, type: !183)
!3694 = !DILocation(line: 0, scope: !3691)
!3695 = !DILocation(line: 0, scope: !3587, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 933, column: 10, scope: !3691)
!3697 = !DILocation(line: 921, column: 10, scope: !3587, inlinedAt: !3696)
!3698 = !DILocation(line: 933, column: 3, scope: !3691)
!3699 = distinct !DISubprogram(name: "quotearg_mem", scope: !743, file: !743, line: 937, type: !3700, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!177, !183, !180}
!3702 = !{!3703, !3704}
!3703 = !DILocalVariable(name: "arg", arg: 1, scope: !3699, file: !743, line: 937, type: !183)
!3704 = !DILocalVariable(name: "argsize", arg: 2, scope: !3699, file: !743, line: 937, type: !180)
!3705 = !DILocation(line: 0, scope: !3699)
!3706 = !DILocation(line: 0, scope: !3681, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 939, column: 10, scope: !3699)
!3708 = !DILocation(line: 927, column: 10, scope: !3681, inlinedAt: !3707)
!3709 = !DILocation(line: 939, column: 3, scope: !3699)
!3710 = distinct !DISubprogram(name: "quotearg_n_style", scope: !743, file: !743, line: 943, type: !3711, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!177, !118, !147, !183}
!3713 = !{!3714, !3715, !3716, !3717}
!3714 = !DILocalVariable(name: "n", arg: 1, scope: !3710, file: !743, line: 943, type: !118)
!3715 = !DILocalVariable(name: "s", arg: 2, scope: !3710, file: !743, line: 943, type: !147)
!3716 = !DILocalVariable(name: "arg", arg: 3, scope: !3710, file: !743, line: 943, type: !183)
!3717 = !DILocalVariable(name: "o", scope: !3710, file: !743, line: 945, type: !2824)
!3718 = !DILocation(line: 0, scope: !3710)
!3719 = !DILocation(line: 945, column: 3, scope: !3710)
!3720 = !DILocation(line: 945, column: 32, scope: !3710)
!3721 = !{!3722}
!3722 = distinct !{!3722, !3723, !"quoting_options_from_style: argument 0"}
!3723 = distinct !{!3723, !"quoting_options_from_style"}
!3724 = !DILocation(line: 945, column: 36, scope: !3710)
!3725 = !DILocalVariable(name: "style", arg: 1, scope: !3726, file: !743, line: 183, type: !147)
!3726 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !743, file: !743, line: 183, type: !3727, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!779, !147}
!3729 = !{!3725, !3730}
!3730 = !DILocalVariable(name: "o", scope: !3726, file: !743, line: 185, type: !779)
!3731 = !DILocation(line: 0, scope: !3726, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 945, column: 36, scope: !3710)
!3733 = !DILocation(line: 185, column: 26, scope: !3726, inlinedAt: !3732)
!3734 = !DILocation(line: 186, column: 13, scope: !3735, inlinedAt: !3732)
!3735 = distinct !DILexicalBlock(scope: !3726, file: !743, line: 186, column: 7)
!3736 = !DILocation(line: 186, column: 7, scope: !3726, inlinedAt: !3732)
!3737 = !DILocation(line: 187, column: 5, scope: !3735, inlinedAt: !3732)
!3738 = !DILocation(line: 188, column: 11, scope: !3726, inlinedAt: !3732)
!3739 = !DILocation(line: 946, column: 10, scope: !3710)
!3740 = !DILocation(line: 947, column: 1, scope: !3710)
!3741 = !DILocation(line: 946, column: 3, scope: !3710)
!3742 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !743, file: !743, line: 950, type: !3743, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!177, !118, !147, !183, !180}
!3745 = !{!3746, !3747, !3748, !3749, !3750}
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3742, file: !743, line: 950, type: !118)
!3747 = !DILocalVariable(name: "s", arg: 2, scope: !3742, file: !743, line: 950, type: !147)
!3748 = !DILocalVariable(name: "arg", arg: 3, scope: !3742, file: !743, line: 951, type: !183)
!3749 = !DILocalVariable(name: "argsize", arg: 4, scope: !3742, file: !743, line: 951, type: !180)
!3750 = !DILocalVariable(name: "o", scope: !3742, file: !743, line: 953, type: !2824)
!3751 = !DILocation(line: 0, scope: !3742)
!3752 = !DILocation(line: 953, column: 3, scope: !3742)
!3753 = !DILocation(line: 953, column: 32, scope: !3742)
!3754 = !{!3755}
!3755 = distinct !{!3755, !3756, !"quoting_options_from_style: argument 0"}
!3756 = distinct !{!3756, !"quoting_options_from_style"}
!3757 = !DILocation(line: 953, column: 36, scope: !3742)
!3758 = !DILocation(line: 0, scope: !3726, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 953, column: 36, scope: !3742)
!3760 = !DILocation(line: 185, column: 26, scope: !3726, inlinedAt: !3759)
!3761 = !DILocation(line: 186, column: 13, scope: !3735, inlinedAt: !3759)
!3762 = !DILocation(line: 186, column: 7, scope: !3726, inlinedAt: !3759)
!3763 = !DILocation(line: 187, column: 5, scope: !3735, inlinedAt: !3759)
!3764 = !DILocation(line: 188, column: 11, scope: !3726, inlinedAt: !3759)
!3765 = !DILocation(line: 954, column: 10, scope: !3742)
!3766 = !DILocation(line: 955, column: 1, scope: !3742)
!3767 = !DILocation(line: 954, column: 3, scope: !3742)
!3768 = distinct !DISubprogram(name: "quotearg_style", scope: !743, file: !743, line: 958, type: !3769, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!177, !147, !183}
!3771 = !{!3772, !3773}
!3772 = !DILocalVariable(name: "s", arg: 1, scope: !3768, file: !743, line: 958, type: !147)
!3773 = !DILocalVariable(name: "arg", arg: 2, scope: !3768, file: !743, line: 958, type: !183)
!3774 = !DILocation(line: 0, scope: !3768)
!3775 = !DILocation(line: 0, scope: !3710, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 960, column: 10, scope: !3768)
!3777 = !DILocation(line: 945, column: 3, scope: !3710, inlinedAt: !3776)
!3778 = !DILocation(line: 945, column: 32, scope: !3710, inlinedAt: !3776)
!3779 = !{!3780}
!3780 = distinct !{!3780, !3781, !"quoting_options_from_style: argument 0"}
!3781 = distinct !{!3781, !"quoting_options_from_style"}
!3782 = !DILocation(line: 945, column: 36, scope: !3710, inlinedAt: !3776)
!3783 = !DILocation(line: 0, scope: !3726, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 945, column: 36, scope: !3710, inlinedAt: !3776)
!3785 = !DILocation(line: 185, column: 26, scope: !3726, inlinedAt: !3784)
!3786 = !DILocation(line: 186, column: 13, scope: !3735, inlinedAt: !3784)
!3787 = !DILocation(line: 186, column: 7, scope: !3726, inlinedAt: !3784)
!3788 = !DILocation(line: 187, column: 5, scope: !3735, inlinedAt: !3784)
!3789 = !DILocation(line: 188, column: 11, scope: !3726, inlinedAt: !3784)
!3790 = !DILocation(line: 946, column: 10, scope: !3710, inlinedAt: !3776)
!3791 = !DILocation(line: 947, column: 1, scope: !3710, inlinedAt: !3776)
!3792 = !DILocation(line: 960, column: 3, scope: !3768)
!3793 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !743, file: !743, line: 964, type: !3794, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!177, !147, !183, !180}
!3796 = !{!3797, !3798, !3799}
!3797 = !DILocalVariable(name: "s", arg: 1, scope: !3793, file: !743, line: 964, type: !147)
!3798 = !DILocalVariable(name: "arg", arg: 2, scope: !3793, file: !743, line: 964, type: !183)
!3799 = !DILocalVariable(name: "argsize", arg: 3, scope: !3793, file: !743, line: 964, type: !180)
!3800 = !DILocation(line: 0, scope: !3793)
!3801 = !DILocation(line: 0, scope: !3742, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 966, column: 10, scope: !3793)
!3803 = !DILocation(line: 953, column: 3, scope: !3742, inlinedAt: !3802)
!3804 = !DILocation(line: 953, column: 32, scope: !3742, inlinedAt: !3802)
!3805 = !{!3806}
!3806 = distinct !{!3806, !3807, !"quoting_options_from_style: argument 0"}
!3807 = distinct !{!3807, !"quoting_options_from_style"}
!3808 = !DILocation(line: 953, column: 36, scope: !3742, inlinedAt: !3802)
!3809 = !DILocation(line: 0, scope: !3726, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 953, column: 36, scope: !3742, inlinedAt: !3802)
!3811 = !DILocation(line: 185, column: 26, scope: !3726, inlinedAt: !3810)
!3812 = !DILocation(line: 186, column: 13, scope: !3735, inlinedAt: !3810)
!3813 = !DILocation(line: 186, column: 7, scope: !3726, inlinedAt: !3810)
!3814 = !DILocation(line: 187, column: 5, scope: !3735, inlinedAt: !3810)
!3815 = !DILocation(line: 188, column: 11, scope: !3726, inlinedAt: !3810)
!3816 = !DILocation(line: 954, column: 10, scope: !3742, inlinedAt: !3802)
!3817 = !DILocation(line: 955, column: 1, scope: !3742, inlinedAt: !3802)
!3818 = !DILocation(line: 966, column: 3, scope: !3793)
!3819 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !743, file: !743, line: 970, type: !3820, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!177, !183, !180, !4}
!3822 = !{!3823, !3824, !3825, !3826}
!3823 = !DILocalVariable(name: "arg", arg: 1, scope: !3819, file: !743, line: 970, type: !183)
!3824 = !DILocalVariable(name: "argsize", arg: 2, scope: !3819, file: !743, line: 970, type: !180)
!3825 = !DILocalVariable(name: "ch", arg: 3, scope: !3819, file: !743, line: 970, type: !4)
!3826 = !DILocalVariable(name: "options", scope: !3819, file: !743, line: 972, type: !779)
!3827 = !DILocation(line: 0, scope: !3819)
!3828 = !DILocation(line: 972, column: 3, scope: !3819)
!3829 = !DILocation(line: 972, column: 26, scope: !3819)
!3830 = !DILocation(line: 973, column: 13, scope: !3819)
!3831 = !{i64 0, i64 4, !1150, i64 4, i64 4, !1141, i64 8, i64 32, !1150, i64 40, i64 8, !1061, i64 48, i64 8, !1061}
!3832 = !DILocation(line: 0, scope: !2843, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 974, column: 3, scope: !3819)
!3834 = !DILocation(line: 147, column: 41, scope: !2843, inlinedAt: !3833)
!3835 = !DILocation(line: 147, column: 62, scope: !2843, inlinedAt: !3833)
!3836 = !DILocation(line: 147, column: 57, scope: !2843, inlinedAt: !3833)
!3837 = !DILocation(line: 148, column: 15, scope: !2843, inlinedAt: !3833)
!3838 = !DILocation(line: 149, column: 21, scope: !2843, inlinedAt: !3833)
!3839 = !DILocation(line: 149, column: 24, scope: !2843, inlinedAt: !3833)
!3840 = !DILocation(line: 150, column: 19, scope: !2843, inlinedAt: !3833)
!3841 = !DILocation(line: 150, column: 24, scope: !2843, inlinedAt: !3833)
!3842 = !DILocation(line: 150, column: 6, scope: !2843, inlinedAt: !3833)
!3843 = !DILocation(line: 975, column: 10, scope: !3819)
!3844 = !DILocation(line: 976, column: 1, scope: !3819)
!3845 = !DILocation(line: 975, column: 3, scope: !3819)
!3846 = distinct !DISubprogram(name: "quotearg_char", scope: !743, file: !743, line: 979, type: !3847, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!177, !183, !4}
!3849 = !{!3850, !3851}
!3850 = !DILocalVariable(name: "arg", arg: 1, scope: !3846, file: !743, line: 979, type: !183)
!3851 = !DILocalVariable(name: "ch", arg: 2, scope: !3846, file: !743, line: 979, type: !4)
!3852 = !DILocation(line: 0, scope: !3846)
!3853 = !DILocation(line: 0, scope: !3819, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 981, column: 10, scope: !3846)
!3855 = !DILocation(line: 972, column: 3, scope: !3819, inlinedAt: !3854)
!3856 = !DILocation(line: 972, column: 26, scope: !3819, inlinedAt: !3854)
!3857 = !DILocation(line: 973, column: 13, scope: !3819, inlinedAt: !3854)
!3858 = !DILocation(line: 0, scope: !2843, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 974, column: 3, scope: !3819, inlinedAt: !3854)
!3860 = !DILocation(line: 147, column: 41, scope: !2843, inlinedAt: !3859)
!3861 = !DILocation(line: 147, column: 62, scope: !2843, inlinedAt: !3859)
!3862 = !DILocation(line: 147, column: 57, scope: !2843, inlinedAt: !3859)
!3863 = !DILocation(line: 148, column: 15, scope: !2843, inlinedAt: !3859)
!3864 = !DILocation(line: 149, column: 21, scope: !2843, inlinedAt: !3859)
!3865 = !DILocation(line: 149, column: 24, scope: !2843, inlinedAt: !3859)
!3866 = !DILocation(line: 150, column: 19, scope: !2843, inlinedAt: !3859)
!3867 = !DILocation(line: 150, column: 24, scope: !2843, inlinedAt: !3859)
!3868 = !DILocation(line: 150, column: 6, scope: !2843, inlinedAt: !3859)
!3869 = !DILocation(line: 975, column: 10, scope: !3819, inlinedAt: !3854)
!3870 = !DILocation(line: 976, column: 1, scope: !3819, inlinedAt: !3854)
!3871 = !DILocation(line: 981, column: 3, scope: !3846)
!3872 = distinct !DISubprogram(name: "quotearg_colon", scope: !743, file: !743, line: 985, type: !1264, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3873)
!3873 = !{!3874}
!3874 = !DILocalVariable(name: "arg", arg: 1, scope: !3872, file: !743, line: 985, type: !183)
!3875 = !DILocation(line: 0, scope: !3872)
!3876 = !DILocation(line: 0, scope: !3846, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 987, column: 10, scope: !3872)
!3878 = !DILocation(line: 0, scope: !3819, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 981, column: 10, scope: !3846, inlinedAt: !3877)
!3880 = !DILocation(line: 972, column: 3, scope: !3819, inlinedAt: !3879)
!3881 = !DILocation(line: 972, column: 26, scope: !3819, inlinedAt: !3879)
!3882 = !DILocation(line: 973, column: 13, scope: !3819, inlinedAt: !3879)
!3883 = !DILocation(line: 0, scope: !2843, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 974, column: 3, scope: !3819, inlinedAt: !3879)
!3885 = !DILocation(line: 147, column: 57, scope: !2843, inlinedAt: !3884)
!3886 = !DILocation(line: 149, column: 21, scope: !2843, inlinedAt: !3884)
!3887 = !DILocation(line: 150, column: 6, scope: !2843, inlinedAt: !3884)
!3888 = !DILocation(line: 975, column: 10, scope: !3819, inlinedAt: !3879)
!3889 = !DILocation(line: 976, column: 1, scope: !3819, inlinedAt: !3879)
!3890 = !DILocation(line: 987, column: 3, scope: !3872)
!3891 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !743, file: !743, line: 991, type: !3700, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3892)
!3892 = !{!3893, !3894}
!3893 = !DILocalVariable(name: "arg", arg: 1, scope: !3891, file: !743, line: 991, type: !183)
!3894 = !DILocalVariable(name: "argsize", arg: 2, scope: !3891, file: !743, line: 991, type: !180)
!3895 = !DILocation(line: 0, scope: !3891)
!3896 = !DILocation(line: 0, scope: !3819, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 993, column: 10, scope: !3891)
!3898 = !DILocation(line: 972, column: 3, scope: !3819, inlinedAt: !3897)
!3899 = !DILocation(line: 972, column: 26, scope: !3819, inlinedAt: !3897)
!3900 = !DILocation(line: 973, column: 13, scope: !3819, inlinedAt: !3897)
!3901 = !DILocation(line: 0, scope: !2843, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 974, column: 3, scope: !3819, inlinedAt: !3897)
!3903 = !DILocation(line: 147, column: 57, scope: !2843, inlinedAt: !3902)
!3904 = !DILocation(line: 149, column: 21, scope: !2843, inlinedAt: !3902)
!3905 = !DILocation(line: 150, column: 6, scope: !2843, inlinedAt: !3902)
!3906 = !DILocation(line: 975, column: 10, scope: !3819, inlinedAt: !3897)
!3907 = !DILocation(line: 976, column: 1, scope: !3819, inlinedAt: !3897)
!3908 = !DILocation(line: 993, column: 3, scope: !3891)
!3909 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !743, file: !743, line: 997, type: !3711, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3910)
!3910 = !{!3911, !3912, !3913, !3914}
!3911 = !DILocalVariable(name: "n", arg: 1, scope: !3909, file: !743, line: 997, type: !118)
!3912 = !DILocalVariable(name: "s", arg: 2, scope: !3909, file: !743, line: 997, type: !147)
!3913 = !DILocalVariable(name: "arg", arg: 3, scope: !3909, file: !743, line: 997, type: !183)
!3914 = !DILocalVariable(name: "options", scope: !3909, file: !743, line: 999, type: !779)
!3915 = !DILocation(line: 185, column: 26, scope: !3726, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 1000, column: 13, scope: !3909)
!3917 = !DILocation(line: 0, scope: !3909)
!3918 = !DILocation(line: 999, column: 3, scope: !3909)
!3919 = !DILocation(line: 999, column: 26, scope: !3909)
!3920 = !DILocation(line: 0, scope: !3726, inlinedAt: !3916)
!3921 = !DILocation(line: 186, column: 13, scope: !3735, inlinedAt: !3916)
!3922 = !DILocation(line: 186, column: 7, scope: !3726, inlinedAt: !3916)
!3923 = !DILocation(line: 187, column: 5, scope: !3735, inlinedAt: !3916)
!3924 = !{!3925}
!3925 = distinct !{!3925, !3926, !"quoting_options_from_style: argument 0"}
!3926 = distinct !{!3926, !"quoting_options_from_style"}
!3927 = !DILocation(line: 1000, column: 13, scope: !3909)
!3928 = !DILocation(line: 0, scope: !2843, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 1001, column: 3, scope: !3909)
!3930 = !DILocation(line: 147, column: 57, scope: !2843, inlinedAt: !3929)
!3931 = !DILocation(line: 149, column: 21, scope: !2843, inlinedAt: !3929)
!3932 = !DILocation(line: 150, column: 6, scope: !2843, inlinedAt: !3929)
!3933 = !DILocation(line: 1002, column: 10, scope: !3909)
!3934 = !DILocation(line: 1003, column: 1, scope: !3909)
!3935 = !DILocation(line: 1002, column: 3, scope: !3909)
!3936 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !743, file: !743, line: 1006, type: !3937, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!177, !118, !183, !183, !183}
!3939 = !{!3940, !3941, !3942, !3943}
!3940 = !DILocalVariable(name: "n", arg: 1, scope: !3936, file: !743, line: 1006, type: !118)
!3941 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3936, file: !743, line: 1006, type: !183)
!3942 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3936, file: !743, line: 1007, type: !183)
!3943 = !DILocalVariable(name: "arg", arg: 4, scope: !3936, file: !743, line: 1007, type: !183)
!3944 = !DILocation(line: 0, scope: !3936)
!3945 = !DILocalVariable(name: "n", arg: 1, scope: !3946, file: !743, line: 1014, type: !118)
!3946 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !743, file: !743, line: 1014, type: !3947, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!177, !118, !183, !183, !183, !180}
!3949 = !{!3945, !3950, !3951, !3952, !3953, !3954}
!3950 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3946, file: !743, line: 1014, type: !183)
!3951 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3946, file: !743, line: 1015, type: !183)
!3952 = !DILocalVariable(name: "arg", arg: 4, scope: !3946, file: !743, line: 1016, type: !183)
!3953 = !DILocalVariable(name: "argsize", arg: 5, scope: !3946, file: !743, line: 1016, type: !180)
!3954 = !DILocalVariable(name: "o", scope: !3946, file: !743, line: 1018, type: !779)
!3955 = !DILocation(line: 0, scope: !3946, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 1009, column: 10, scope: !3936)
!3957 = !DILocation(line: 1018, column: 3, scope: !3946, inlinedAt: !3956)
!3958 = !DILocation(line: 1018, column: 26, scope: !3946, inlinedAt: !3956)
!3959 = !DILocation(line: 1018, column: 30, scope: !3946, inlinedAt: !3956)
!3960 = !DILocation(line: 0, scope: !2883, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 1019, column: 3, scope: !3946, inlinedAt: !3956)
!3962 = !DILocation(line: 174, column: 12, scope: !2883, inlinedAt: !3961)
!3963 = !DILocation(line: 175, column: 8, scope: !2896, inlinedAt: !3961)
!3964 = !DILocation(line: 175, column: 19, scope: !2896, inlinedAt: !3961)
!3965 = !DILocation(line: 176, column: 5, scope: !2896, inlinedAt: !3961)
!3966 = !DILocation(line: 177, column: 6, scope: !2883, inlinedAt: !3961)
!3967 = !DILocation(line: 177, column: 17, scope: !2883, inlinedAt: !3961)
!3968 = !DILocation(line: 178, column: 6, scope: !2883, inlinedAt: !3961)
!3969 = !DILocation(line: 178, column: 18, scope: !2883, inlinedAt: !3961)
!3970 = !DILocation(line: 1020, column: 10, scope: !3946, inlinedAt: !3956)
!3971 = !DILocation(line: 1021, column: 1, scope: !3946, inlinedAt: !3956)
!3972 = !DILocation(line: 1009, column: 3, scope: !3936)
!3973 = !DILocation(line: 0, scope: !3946)
!3974 = !DILocation(line: 1018, column: 3, scope: !3946)
!3975 = !DILocation(line: 1018, column: 26, scope: !3946)
!3976 = !DILocation(line: 1018, column: 30, scope: !3946)
!3977 = !DILocation(line: 0, scope: !2883, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 1019, column: 3, scope: !3946)
!3979 = !DILocation(line: 174, column: 12, scope: !2883, inlinedAt: !3978)
!3980 = !DILocation(line: 175, column: 8, scope: !2896, inlinedAt: !3978)
!3981 = !DILocation(line: 175, column: 19, scope: !2896, inlinedAt: !3978)
!3982 = !DILocation(line: 176, column: 5, scope: !2896, inlinedAt: !3978)
!3983 = !DILocation(line: 177, column: 6, scope: !2883, inlinedAt: !3978)
!3984 = !DILocation(line: 177, column: 17, scope: !2883, inlinedAt: !3978)
!3985 = !DILocation(line: 178, column: 6, scope: !2883, inlinedAt: !3978)
!3986 = !DILocation(line: 178, column: 18, scope: !2883, inlinedAt: !3978)
!3987 = !DILocation(line: 1020, column: 10, scope: !3946)
!3988 = !DILocation(line: 1021, column: 1, scope: !3946)
!3989 = !DILocation(line: 1020, column: 3, scope: !3946)
!3990 = distinct !DISubprogram(name: "quotearg_custom", scope: !743, file: !743, line: 1024, type: !3991, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!177, !183, !183, !183}
!3993 = !{!3994, !3995, !3996}
!3994 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3990, file: !743, line: 1024, type: !183)
!3995 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3990, file: !743, line: 1024, type: !183)
!3996 = !DILocalVariable(name: "arg", arg: 3, scope: !3990, file: !743, line: 1025, type: !183)
!3997 = !DILocation(line: 0, scope: !3990)
!3998 = !DILocation(line: 0, scope: !3936, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 1027, column: 10, scope: !3990)
!4000 = !DILocation(line: 0, scope: !3946, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 1009, column: 10, scope: !3936, inlinedAt: !3999)
!4002 = !DILocation(line: 1018, column: 3, scope: !3946, inlinedAt: !4001)
!4003 = !DILocation(line: 1018, column: 26, scope: !3946, inlinedAt: !4001)
!4004 = !DILocation(line: 1018, column: 30, scope: !3946, inlinedAt: !4001)
!4005 = !DILocation(line: 0, scope: !2883, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 1019, column: 3, scope: !3946, inlinedAt: !4001)
!4007 = !DILocation(line: 174, column: 12, scope: !2883, inlinedAt: !4006)
!4008 = !DILocation(line: 175, column: 8, scope: !2896, inlinedAt: !4006)
!4009 = !DILocation(line: 175, column: 19, scope: !2896, inlinedAt: !4006)
!4010 = !DILocation(line: 176, column: 5, scope: !2896, inlinedAt: !4006)
!4011 = !DILocation(line: 177, column: 6, scope: !2883, inlinedAt: !4006)
!4012 = !DILocation(line: 177, column: 17, scope: !2883, inlinedAt: !4006)
!4013 = !DILocation(line: 178, column: 6, scope: !2883, inlinedAt: !4006)
!4014 = !DILocation(line: 178, column: 18, scope: !2883, inlinedAt: !4006)
!4015 = !DILocation(line: 1020, column: 10, scope: !3946, inlinedAt: !4001)
!4016 = !DILocation(line: 1021, column: 1, scope: !3946, inlinedAt: !4001)
!4017 = !DILocation(line: 1027, column: 3, scope: !3990)
!4018 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !743, file: !743, line: 1031, type: !4019, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!177, !183, !183, !183, !180}
!4021 = !{!4022, !4023, !4024, !4025}
!4022 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4018, file: !743, line: 1031, type: !183)
!4023 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4018, file: !743, line: 1031, type: !183)
!4024 = !DILocalVariable(name: "arg", arg: 3, scope: !4018, file: !743, line: 1032, type: !183)
!4025 = !DILocalVariable(name: "argsize", arg: 4, scope: !4018, file: !743, line: 1032, type: !180)
!4026 = !DILocation(line: 0, scope: !4018)
!4027 = !DILocation(line: 0, scope: !3946, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 1034, column: 10, scope: !4018)
!4029 = !DILocation(line: 1018, column: 3, scope: !3946, inlinedAt: !4028)
!4030 = !DILocation(line: 1018, column: 26, scope: !3946, inlinedAt: !4028)
!4031 = !DILocation(line: 1018, column: 30, scope: !3946, inlinedAt: !4028)
!4032 = !DILocation(line: 0, scope: !2883, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 1019, column: 3, scope: !3946, inlinedAt: !4028)
!4034 = !DILocation(line: 174, column: 12, scope: !2883, inlinedAt: !4033)
!4035 = !DILocation(line: 175, column: 8, scope: !2896, inlinedAt: !4033)
!4036 = !DILocation(line: 175, column: 19, scope: !2896, inlinedAt: !4033)
!4037 = !DILocation(line: 176, column: 5, scope: !2896, inlinedAt: !4033)
!4038 = !DILocation(line: 177, column: 6, scope: !2883, inlinedAt: !4033)
!4039 = !DILocation(line: 177, column: 17, scope: !2883, inlinedAt: !4033)
!4040 = !DILocation(line: 178, column: 6, scope: !2883, inlinedAt: !4033)
!4041 = !DILocation(line: 178, column: 18, scope: !2883, inlinedAt: !4033)
!4042 = !DILocation(line: 1020, column: 10, scope: !3946, inlinedAt: !4028)
!4043 = !DILocation(line: 1021, column: 1, scope: !3946, inlinedAt: !4028)
!4044 = !DILocation(line: 1034, column: 3, scope: !4018)
!4045 = distinct !DISubprogram(name: "quote_n_mem", scope: !743, file: !743, line: 1049, type: !4046, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4048)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!183, !118, !183, !180}
!4048 = !{!4049, !4050, !4051}
!4049 = !DILocalVariable(name: "n", arg: 1, scope: !4045, file: !743, line: 1049, type: !118)
!4050 = !DILocalVariable(name: "arg", arg: 2, scope: !4045, file: !743, line: 1049, type: !183)
!4051 = !DILocalVariable(name: "argsize", arg: 3, scope: !4045, file: !743, line: 1049, type: !180)
!4052 = !DILocation(line: 0, scope: !4045)
!4053 = !DILocation(line: 1051, column: 10, scope: !4045)
!4054 = !DILocation(line: 1051, column: 3, scope: !4045)
!4055 = distinct !DISubprogram(name: "quote_mem", scope: !743, file: !743, line: 1055, type: !4056, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!183, !183, !180}
!4058 = !{!4059, !4060}
!4059 = !DILocalVariable(name: "arg", arg: 1, scope: !4055, file: !743, line: 1055, type: !183)
!4060 = !DILocalVariable(name: "argsize", arg: 2, scope: !4055, file: !743, line: 1055, type: !180)
!4061 = !DILocation(line: 0, scope: !4055)
!4062 = !DILocation(line: 0, scope: !4045, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 1057, column: 10, scope: !4055)
!4064 = !DILocation(line: 1051, column: 10, scope: !4045, inlinedAt: !4063)
!4065 = !DILocation(line: 1057, column: 3, scope: !4055)
!4066 = distinct !DISubprogram(name: "quote_n", scope: !743, file: !743, line: 1061, type: !4067, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!183, !118, !183}
!4069 = !{!4070, !4071}
!4070 = !DILocalVariable(name: "n", arg: 1, scope: !4066, file: !743, line: 1061, type: !118)
!4071 = !DILocalVariable(name: "arg", arg: 2, scope: !4066, file: !743, line: 1061, type: !183)
!4072 = !DILocation(line: 0, scope: !4066)
!4073 = !DILocation(line: 0, scope: !4045, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 1063, column: 10, scope: !4066)
!4075 = !DILocation(line: 1051, column: 10, scope: !4045, inlinedAt: !4074)
!4076 = !DILocation(line: 1063, column: 3, scope: !4066)
!4077 = distinct !DISubprogram(name: "quote", scope: !743, file: !743, line: 1067, type: !4078, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!183, !183}
!4080 = !{!4081}
!4081 = !DILocalVariable(name: "arg", arg: 1, scope: !4077, file: !743, line: 1067, type: !183)
!4082 = !DILocation(line: 0, scope: !4077)
!4083 = !DILocation(line: 0, scope: !4066, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 1069, column: 10, scope: !4077)
!4085 = !DILocation(line: 0, scope: !4045, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 1063, column: 10, scope: !4066, inlinedAt: !4084)
!4087 = !DILocation(line: 1051, column: 10, scope: !4045, inlinedAt: !4086)
!4088 = !DILocation(line: 1069, column: 3, scope: !4077)
!4089 = distinct !DISubprogram(name: "version_etc_arn", scope: !839, file: !839, line: 61, type: !4090, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !4127)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !4092, !183, !183, !183, !4126, !180}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4094, file: !346, line: 51, baseType: !118, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4094, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4094, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4094, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4094, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4094, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4094, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4094, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4094, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4094, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4094, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4094, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4094, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4094, file: !346, line: 70, baseType: !4110, size: 64, offset: 832)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4094, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4094, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4094, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4094, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4094, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4094, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4094, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4094, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4094, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4094, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4094, file: !346, line: 93, baseType: !4110, size: 64, offset: 1344)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4094, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4094, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4094, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4094, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133}
!4128 = !DILocalVariable(name: "stream", arg: 1, scope: !4089, file: !839, line: 61, type: !4092)
!4129 = !DILocalVariable(name: "command_name", arg: 2, scope: !4089, file: !839, line: 62, type: !183)
!4130 = !DILocalVariable(name: "package", arg: 3, scope: !4089, file: !839, line: 62, type: !183)
!4131 = !DILocalVariable(name: "version", arg: 4, scope: !4089, file: !839, line: 63, type: !183)
!4132 = !DILocalVariable(name: "authors", arg: 5, scope: !4089, file: !839, line: 64, type: !4126)
!4133 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4089, file: !839, line: 64, type: !180)
!4134 = !DILocation(line: 0, scope: !4089)
!4135 = !DILocation(line: 66, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4089, file: !839, line: 66, column: 7)
!4137 = !DILocation(line: 66, column: 7, scope: !4089)
!4138 = !DILocation(line: 67, column: 5, scope: !4136)
!4139 = !DILocation(line: 69, column: 5, scope: !4136)
!4140 = !DILocation(line: 83, column: 3, scope: !4089)
!4141 = !DILocation(line: 85, column: 3, scope: !4089)
!4142 = !DILocation(line: 88, column: 3, scope: !4089)
!4143 = !DILocation(line: 95, column: 3, scope: !4089)
!4144 = !DILocation(line: 97, column: 3, scope: !4089)
!4145 = !DILocation(line: 105, column: 7, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4089, file: !839, line: 98, column: 5)
!4147 = !DILocation(line: 106, column: 7, scope: !4146)
!4148 = !DILocation(line: 109, column: 7, scope: !4146)
!4149 = !DILocation(line: 110, column: 7, scope: !4146)
!4150 = !DILocation(line: 113, column: 7, scope: !4146)
!4151 = !DILocation(line: 115, column: 7, scope: !4146)
!4152 = !DILocation(line: 120, column: 7, scope: !4146)
!4153 = !DILocation(line: 122, column: 7, scope: !4146)
!4154 = !DILocation(line: 127, column: 7, scope: !4146)
!4155 = !DILocation(line: 129, column: 7, scope: !4146)
!4156 = !DILocation(line: 134, column: 7, scope: !4146)
!4157 = !DILocation(line: 137, column: 7, scope: !4146)
!4158 = !DILocation(line: 142, column: 7, scope: !4146)
!4159 = !DILocation(line: 145, column: 7, scope: !4146)
!4160 = !DILocation(line: 150, column: 7, scope: !4146)
!4161 = !DILocation(line: 154, column: 7, scope: !4146)
!4162 = !DILocation(line: 159, column: 7, scope: !4146)
!4163 = !DILocation(line: 163, column: 7, scope: !4146)
!4164 = !DILocation(line: 170, column: 7, scope: !4146)
!4165 = !DILocation(line: 174, column: 7, scope: !4146)
!4166 = !DILocation(line: 176, column: 1, scope: !4089)
!4167 = distinct !DISubprogram(name: "version_etc_ar", scope: !839, file: !839, line: 183, type: !4168, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !4092, !183, !183, !183, !4126}
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176}
!4171 = !DILocalVariable(name: "stream", arg: 1, scope: !4167, file: !839, line: 183, type: !4092)
!4172 = !DILocalVariable(name: "command_name", arg: 2, scope: !4167, file: !839, line: 184, type: !183)
!4173 = !DILocalVariable(name: "package", arg: 3, scope: !4167, file: !839, line: 184, type: !183)
!4174 = !DILocalVariable(name: "version", arg: 4, scope: !4167, file: !839, line: 185, type: !183)
!4175 = !DILocalVariable(name: "authors", arg: 5, scope: !4167, file: !839, line: 185, type: !4126)
!4176 = !DILocalVariable(name: "n_authors", scope: !4167, file: !839, line: 187, type: !180)
!4177 = !DILocation(line: 0, scope: !4167)
!4178 = !DILocation(line: 189, column: 8, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4167, file: !839, line: 189, column: 3)
!4180 = !DILocation(line: 189, scope: !4179)
!4181 = !DILocation(line: 189, column: 23, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4179, file: !839, line: 189, column: 3)
!4183 = !DILocation(line: 189, column: 3, scope: !4179)
!4184 = !DILocation(line: 189, column: 52, scope: !4182)
!4185 = distinct !{!4185, !4183, !4186, !1188}
!4186 = !DILocation(line: 190, column: 5, scope: !4179)
!4187 = !DILocation(line: 191, column: 3, scope: !4167)
!4188 = !DILocation(line: 192, column: 1, scope: !4167)
!4189 = distinct !DISubprogram(name: "version_etc_va", scope: !839, file: !839, line: 199, type: !4190, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !4203)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{null, !4092, !183, !183, !183, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !662, line: 52, baseType: !4193)
!4193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !664, line: 14, baseType: !4194)
!4194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4195, baseType: !4196)
!4195 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4196, file: !4195, line: 192, baseType: !178, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4196, file: !4195, line: 192, baseType: !178, size: 64, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4196, file: !4195, line: 192, baseType: !178, size: 64, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4196, file: !4195, line: 192, baseType: !118, size: 32, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4196, file: !4195, line: 192, baseType: !118, size: 32, offset: 224)
!4203 = !{!4204, !4205, !4206, !4207, !4208, !4209, !4210}
!4204 = !DILocalVariable(name: "stream", arg: 1, scope: !4189, file: !839, line: 199, type: !4092)
!4205 = !DILocalVariable(name: "command_name", arg: 2, scope: !4189, file: !839, line: 200, type: !183)
!4206 = !DILocalVariable(name: "package", arg: 3, scope: !4189, file: !839, line: 200, type: !183)
!4207 = !DILocalVariable(name: "version", arg: 4, scope: !4189, file: !839, line: 201, type: !183)
!4208 = !DILocalVariable(name: "authors", arg: 5, scope: !4189, file: !839, line: 201, type: !4192)
!4209 = !DILocalVariable(name: "n_authors", scope: !4189, file: !839, line: 203, type: !180)
!4210 = !DILocalVariable(name: "authtab", scope: !4189, file: !839, line: 204, type: !4211)
!4211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 640, elements: !92)
!4212 = !DILocation(line: 0, scope: !4189)
!4213 = !DILocation(line: 201, column: 46, scope: !4189)
!4214 = !DILocation(line: 204, column: 3, scope: !4189)
!4215 = !DILocation(line: 204, column: 15, scope: !4189)
!4216 = !DILocation(line: 208, column: 35, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !839, line: 206, column: 3)
!4218 = distinct !DILexicalBlock(scope: !4189, file: !839, line: 206, column: 3)
!4219 = !DILocation(line: 208, column: 33, scope: !4217)
!4220 = !DILocation(line: 208, column: 67, scope: !4217)
!4221 = !DILocation(line: 206, column: 3, scope: !4218)
!4222 = !DILocation(line: 208, column: 14, scope: !4217)
!4223 = !DILocation(line: 0, scope: !4218)
!4224 = !DILocation(line: 211, column: 3, scope: !4189)
!4225 = !DILocation(line: 213, column: 1, scope: !4189)
!4226 = distinct !DISubprogram(name: "version_etc", scope: !839, file: !839, line: 230, type: !4227, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{null, !4092, !183, !183, !183, null}
!4229 = !{!4230, !4231, !4232, !4233, !4234}
!4230 = !DILocalVariable(name: "stream", arg: 1, scope: !4226, file: !839, line: 230, type: !4092)
!4231 = !DILocalVariable(name: "command_name", arg: 2, scope: !4226, file: !839, line: 231, type: !183)
!4232 = !DILocalVariable(name: "package", arg: 3, scope: !4226, file: !839, line: 231, type: !183)
!4233 = !DILocalVariable(name: "version", arg: 4, scope: !4226, file: !839, line: 232, type: !183)
!4234 = !DILocalVariable(name: "authors", scope: !4226, file: !839, line: 234, type: !4192)
!4235 = !DILocation(line: 0, scope: !4226)
!4236 = !DILocation(line: 234, column: 3, scope: !4226)
!4237 = !DILocation(line: 234, column: 11, scope: !4226)
!4238 = !DILocation(line: 235, column: 3, scope: !4226)
!4239 = !DILocation(line: 236, column: 3, scope: !4226)
!4240 = !DILocation(line: 237, column: 3, scope: !4226)
!4241 = !DILocation(line: 238, column: 1, scope: !4226)
!4242 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !839, file: !839, line: 241, type: !600, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !1070)
!4243 = !DILocation(line: 243, column: 3, scope: !4242)
!4244 = !DILocation(line: 248, column: 3, scope: !4242)
!4245 = !DILocation(line: 254, column: 3, scope: !4242)
!4246 = !DILocation(line: 259, column: 3, scope: !4242)
!4247 = !DILocation(line: 261, column: 1, scope: !4242)
!4248 = distinct !DISubprogram(name: "xnrealloc", scope: !4249, file: !4249, line: 147, type: !4250, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4252)
!4249 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!178, !178, !180, !180}
!4252 = !{!4253, !4254, !4255}
!4253 = !DILocalVariable(name: "p", arg: 1, scope: !4248, file: !4249, line: 147, type: !178)
!4254 = !DILocalVariable(name: "n", arg: 2, scope: !4248, file: !4249, line: 147, type: !180)
!4255 = !DILocalVariable(name: "s", arg: 3, scope: !4248, file: !4249, line: 147, type: !180)
!4256 = !DILocation(line: 0, scope: !4248)
!4257 = !DILocalVariable(name: "p", arg: 1, scope: !4258, file: !981, line: 83, type: !178)
!4258 = distinct !DISubprogram(name: "xreallocarray", scope: !981, file: !981, line: 83, type: !4250, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4259)
!4259 = !{!4257, !4260, !4261}
!4260 = !DILocalVariable(name: "n", arg: 2, scope: !4258, file: !981, line: 83, type: !180)
!4261 = !DILocalVariable(name: "s", arg: 3, scope: !4258, file: !981, line: 83, type: !180)
!4262 = !DILocation(line: 0, scope: !4258, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 149, column: 10, scope: !4248)
!4264 = !DILocation(line: 85, column: 25, scope: !4258, inlinedAt: !4263)
!4265 = !DILocalVariable(name: "p", arg: 1, scope: !4266, file: !981, line: 37, type: !178)
!4266 = distinct !DISubprogram(name: "check_nonnull", scope: !981, file: !981, line: 37, type: !4267, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!178, !178}
!4269 = !{!4265}
!4270 = !DILocation(line: 0, scope: !4266, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 85, column: 10, scope: !4258, inlinedAt: !4263)
!4272 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4271)
!4273 = distinct !DILexicalBlock(scope: !4266, file: !981, line: 39, column: 7)
!4274 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4271)
!4275 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4271)
!4276 = !DILocation(line: 149, column: 3, scope: !4248)
!4277 = !DILocation(line: 0, scope: !4258)
!4278 = !DILocation(line: 85, column: 25, scope: !4258)
!4279 = !DILocation(line: 0, scope: !4266, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 85, column: 10, scope: !4258)
!4281 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4280)
!4282 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4280)
!4283 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4280)
!4284 = !DILocation(line: 85, column: 3, scope: !4258)
!4285 = distinct !DISubprogram(name: "xmalloc", scope: !981, file: !981, line: 47, type: !4286, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!178, !180}
!4288 = !{!4289}
!4289 = !DILocalVariable(name: "s", arg: 1, scope: !4285, file: !981, line: 47, type: !180)
!4290 = !DILocation(line: 0, scope: !4285)
!4291 = !DILocation(line: 49, column: 25, scope: !4285)
!4292 = !DILocation(line: 0, scope: !4266, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 49, column: 10, scope: !4285)
!4294 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4293)
!4295 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4293)
!4296 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4293)
!4297 = !DILocation(line: 49, column: 3, scope: !4285)
!4298 = !DISubprogram(name: "malloc", scope: !1262, file: !1262, line: 540, type: !4286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!4299 = distinct !DISubprogram(name: "ximalloc", scope: !981, file: !981, line: 53, type: !4300, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4302)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!178, !297}
!4302 = !{!4303}
!4303 = !DILocalVariable(name: "s", arg: 1, scope: !4299, file: !981, line: 53, type: !297)
!4304 = !DILocation(line: 0, scope: !4299)
!4305 = !DILocalVariable(name: "s", arg: 1, scope: !4306, file: !4307, line: 55, type: !297)
!4306 = distinct !DISubprogram(name: "imalloc", scope: !4307, file: !4307, line: 55, type: !4300, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4308)
!4307 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4308 = !{!4305}
!4309 = !DILocation(line: 0, scope: !4306, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 55, column: 25, scope: !4299)
!4311 = !DILocation(line: 57, column: 26, scope: !4306, inlinedAt: !4310)
!4312 = !DILocation(line: 0, scope: !4266, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 55, column: 10, scope: !4299)
!4314 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4313)
!4315 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4313)
!4316 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4313)
!4317 = !DILocation(line: 55, column: 3, scope: !4299)
!4318 = distinct !DISubprogram(name: "xcharalloc", scope: !981, file: !981, line: 59, type: !4319, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!177, !180}
!4321 = !{!4322}
!4322 = !DILocalVariable(name: "n", arg: 1, scope: !4318, file: !981, line: 59, type: !180)
!4323 = !DILocation(line: 0, scope: !4318)
!4324 = !DILocation(line: 0, scope: !4285, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 61, column: 10, scope: !4318)
!4326 = !DILocation(line: 49, column: 25, scope: !4285, inlinedAt: !4325)
!4327 = !DILocation(line: 0, scope: !4266, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 49, column: 10, scope: !4285, inlinedAt: !4325)
!4329 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4328)
!4330 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4328)
!4331 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4328)
!4332 = !DILocation(line: 61, column: 3, scope: !4318)
!4333 = distinct !DISubprogram(name: "xrealloc", scope: !981, file: !981, line: 68, type: !4334, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4336)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!178, !178, !180}
!4336 = !{!4337, !4338}
!4337 = !DILocalVariable(name: "p", arg: 1, scope: !4333, file: !981, line: 68, type: !178)
!4338 = !DILocalVariable(name: "s", arg: 2, scope: !4333, file: !981, line: 68, type: !180)
!4339 = !DILocation(line: 0, scope: !4333)
!4340 = !DILocalVariable(name: "ptr", arg: 1, scope: !4341, file: !4342, line: 2057, type: !178)
!4341 = distinct !DISubprogram(name: "rpl_realloc", scope: !4342, file: !4342, line: 2057, type: !4334, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4343)
!4342 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4343 = !{!4340, !4344}
!4344 = !DILocalVariable(name: "size", arg: 2, scope: !4341, file: !4342, line: 2057, type: !180)
!4345 = !DILocation(line: 0, scope: !4341, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 70, column: 25, scope: !4333)
!4347 = !DILocation(line: 2059, column: 24, scope: !4341, inlinedAt: !4346)
!4348 = !DILocation(line: 2059, column: 10, scope: !4341, inlinedAt: !4346)
!4349 = !DILocation(line: 0, scope: !4266, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 70, column: 10, scope: !4333)
!4351 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4350)
!4352 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4350)
!4353 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4350)
!4354 = !DILocation(line: 70, column: 3, scope: !4333)
!4355 = !DISubprogram(name: "realloc", scope: !1262, file: !1262, line: 551, type: !4334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!4356 = distinct !DISubprogram(name: "xirealloc", scope: !981, file: !981, line: 74, type: !4357, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4359)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!178, !178, !297}
!4359 = !{!4360, !4361}
!4360 = !DILocalVariable(name: "p", arg: 1, scope: !4356, file: !981, line: 74, type: !178)
!4361 = !DILocalVariable(name: "s", arg: 2, scope: !4356, file: !981, line: 74, type: !297)
!4362 = !DILocation(line: 0, scope: !4356)
!4363 = !DILocalVariable(name: "p", arg: 1, scope: !4364, file: !4307, line: 66, type: !178)
!4364 = distinct !DISubprogram(name: "irealloc", scope: !4307, file: !4307, line: 66, type: !4357, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4365)
!4365 = !{!4363, !4366}
!4366 = !DILocalVariable(name: "s", arg: 2, scope: !4364, file: !4307, line: 66, type: !297)
!4367 = !DILocation(line: 0, scope: !4364, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 76, column: 25, scope: !4356)
!4369 = !DILocation(line: 0, scope: !4341, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 68, column: 26, scope: !4364, inlinedAt: !4368)
!4371 = !DILocation(line: 2059, column: 24, scope: !4341, inlinedAt: !4370)
!4372 = !DILocation(line: 2059, column: 10, scope: !4341, inlinedAt: !4370)
!4373 = !DILocation(line: 0, scope: !4266, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 76, column: 10, scope: !4356)
!4375 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4374)
!4376 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4374)
!4377 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4374)
!4378 = !DILocation(line: 76, column: 3, scope: !4356)
!4379 = distinct !DISubprogram(name: "xireallocarray", scope: !981, file: !981, line: 89, type: !4380, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4382)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!178, !178, !297, !297}
!4382 = !{!4383, !4384, !4385}
!4383 = !DILocalVariable(name: "p", arg: 1, scope: !4379, file: !981, line: 89, type: !178)
!4384 = !DILocalVariable(name: "n", arg: 2, scope: !4379, file: !981, line: 89, type: !297)
!4385 = !DILocalVariable(name: "s", arg: 3, scope: !4379, file: !981, line: 89, type: !297)
!4386 = !DILocation(line: 0, scope: !4379)
!4387 = !DILocalVariable(name: "p", arg: 1, scope: !4388, file: !4307, line: 98, type: !178)
!4388 = distinct !DISubprogram(name: "ireallocarray", scope: !4307, file: !4307, line: 98, type: !4380, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4389)
!4389 = !{!4387, !4390, !4391}
!4390 = !DILocalVariable(name: "n", arg: 2, scope: !4388, file: !4307, line: 98, type: !297)
!4391 = !DILocalVariable(name: "s", arg: 3, scope: !4388, file: !4307, line: 98, type: !297)
!4392 = !DILocation(line: 0, scope: !4388, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 91, column: 25, scope: !4379)
!4394 = !DILocation(line: 101, column: 13, scope: !4388, inlinedAt: !4393)
!4395 = !DILocation(line: 0, scope: !4266, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 91, column: 10, scope: !4379)
!4397 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4396)
!4398 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4396)
!4399 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4396)
!4400 = !DILocation(line: 91, column: 3, scope: !4379)
!4401 = distinct !DISubprogram(name: "xnmalloc", scope: !981, file: !981, line: 98, type: !4402, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4404)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!178, !180, !180}
!4404 = !{!4405, !4406}
!4405 = !DILocalVariable(name: "n", arg: 1, scope: !4401, file: !981, line: 98, type: !180)
!4406 = !DILocalVariable(name: "s", arg: 2, scope: !4401, file: !981, line: 98, type: !180)
!4407 = !DILocation(line: 0, scope: !4401)
!4408 = !DILocation(line: 0, scope: !4258, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 100, column: 10, scope: !4401)
!4410 = !DILocation(line: 85, column: 25, scope: !4258, inlinedAt: !4409)
!4411 = !DILocation(line: 0, scope: !4266, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 85, column: 10, scope: !4258, inlinedAt: !4409)
!4413 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4412)
!4414 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4412)
!4415 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4412)
!4416 = !DILocation(line: 100, column: 3, scope: !4401)
!4417 = distinct !DISubprogram(name: "xinmalloc", scope: !981, file: !981, line: 104, type: !4418, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!178, !297, !297}
!4420 = !{!4421, !4422}
!4421 = !DILocalVariable(name: "n", arg: 1, scope: !4417, file: !981, line: 104, type: !297)
!4422 = !DILocalVariable(name: "s", arg: 2, scope: !4417, file: !981, line: 104, type: !297)
!4423 = !DILocation(line: 0, scope: !4417)
!4424 = !DILocation(line: 0, scope: !4379, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 106, column: 10, scope: !4417)
!4426 = !DILocation(line: 0, scope: !4388, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 91, column: 25, scope: !4379, inlinedAt: !4425)
!4428 = !DILocation(line: 101, column: 13, scope: !4388, inlinedAt: !4427)
!4429 = !DILocation(line: 0, scope: !4266, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 91, column: 10, scope: !4379, inlinedAt: !4425)
!4431 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4430)
!4432 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4430)
!4433 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4430)
!4434 = !DILocation(line: 106, column: 3, scope: !4417)
!4435 = distinct !DISubprogram(name: "x2realloc", scope: !981, file: !981, line: 116, type: !4436, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!178, !178, !987}
!4438 = !{!4439, !4440}
!4439 = !DILocalVariable(name: "p", arg: 1, scope: !4435, file: !981, line: 116, type: !178)
!4440 = !DILocalVariable(name: "ps", arg: 2, scope: !4435, file: !981, line: 116, type: !987)
!4441 = !DILocation(line: 0, scope: !4435)
!4442 = !DILocation(line: 0, scope: !984, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 118, column: 10, scope: !4435)
!4444 = !DILocation(line: 178, column: 14, scope: !984, inlinedAt: !4443)
!4445 = !DILocation(line: 180, column: 9, scope: !4446, inlinedAt: !4443)
!4446 = distinct !DILexicalBlock(scope: !984, file: !981, line: 180, column: 7)
!4447 = !DILocation(line: 180, column: 7, scope: !984, inlinedAt: !4443)
!4448 = !DILocation(line: 182, column: 13, scope: !4449, inlinedAt: !4443)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !981, line: 182, column: 11)
!4450 = distinct !DILexicalBlock(scope: !4446, file: !981, line: 181, column: 5)
!4451 = !DILocation(line: 182, column: 11, scope: !4450, inlinedAt: !4443)
!4452 = !DILocation(line: 197, column: 11, scope: !4453, inlinedAt: !4443)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !981, line: 197, column: 11)
!4454 = distinct !DILexicalBlock(scope: !4446, file: !981, line: 195, column: 5)
!4455 = !DILocation(line: 197, column: 11, scope: !4454, inlinedAt: !4443)
!4456 = !DILocation(line: 198, column: 9, scope: !4453, inlinedAt: !4443)
!4457 = !DILocation(line: 0, scope: !4258, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 201, column: 7, scope: !984, inlinedAt: !4443)
!4459 = !DILocation(line: 85, column: 25, scope: !4258, inlinedAt: !4458)
!4460 = !DILocation(line: 0, scope: !4266, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 85, column: 10, scope: !4258, inlinedAt: !4458)
!4462 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4461)
!4463 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4461)
!4464 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4461)
!4465 = !DILocation(line: 202, column: 7, scope: !984, inlinedAt: !4443)
!4466 = !DILocation(line: 118, column: 3, scope: !4435)
!4467 = !DILocation(line: 0, scope: !984)
!4468 = !DILocation(line: 178, column: 14, scope: !984)
!4469 = !DILocation(line: 180, column: 9, scope: !4446)
!4470 = !DILocation(line: 180, column: 7, scope: !984)
!4471 = !DILocation(line: 182, column: 13, scope: !4449)
!4472 = !DILocation(line: 182, column: 11, scope: !4450)
!4473 = !DILocation(line: 190, column: 30, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4449, file: !981, line: 183, column: 9)
!4475 = !DILocation(line: 191, column: 16, scope: !4474)
!4476 = !DILocation(line: 191, column: 13, scope: !4474)
!4477 = !DILocation(line: 192, column: 9, scope: !4474)
!4478 = !DILocation(line: 197, column: 11, scope: !4453)
!4479 = !DILocation(line: 197, column: 11, scope: !4454)
!4480 = !DILocation(line: 198, column: 9, scope: !4453)
!4481 = !DILocation(line: 0, scope: !4258, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 201, column: 7, scope: !984)
!4483 = !DILocation(line: 85, column: 25, scope: !4258, inlinedAt: !4482)
!4484 = !DILocation(line: 0, scope: !4266, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 85, column: 10, scope: !4258, inlinedAt: !4482)
!4486 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4485)
!4487 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4485)
!4488 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4485)
!4489 = !DILocation(line: 202, column: 7, scope: !984)
!4490 = !DILocation(line: 203, column: 3, scope: !984)
!4491 = !DILocation(line: 0, scope: !996)
!4492 = !DILocation(line: 230, column: 14, scope: !996)
!4493 = !DILocation(line: 238, column: 7, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !996, file: !981, line: 238, column: 7)
!4495 = !DILocation(line: 238, column: 7, scope: !996)
!4496 = !DILocation(line: 240, column: 9, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !996, file: !981, line: 240, column: 7)
!4498 = !DILocation(line: 240, column: 18, scope: !4497)
!4499 = !DILocation(line: 253, column: 8, scope: !996)
!4500 = !DILocation(line: 258, column: 27, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !981, line: 257, column: 5)
!4502 = distinct !DILexicalBlock(scope: !996, file: !981, line: 256, column: 7)
!4503 = !DILocation(line: 259, column: 32, scope: !4501)
!4504 = !DILocation(line: 260, column: 5, scope: !4501)
!4505 = !DILocation(line: 262, column: 9, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !996, file: !981, line: 262, column: 7)
!4507 = !DILocation(line: 262, column: 7, scope: !996)
!4508 = !DILocation(line: 263, column: 9, scope: !4506)
!4509 = !DILocation(line: 263, column: 5, scope: !4506)
!4510 = !DILocation(line: 264, column: 9, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !996, file: !981, line: 264, column: 7)
!4512 = !DILocation(line: 264, column: 14, scope: !4511)
!4513 = !DILocation(line: 265, column: 7, scope: !4511)
!4514 = !DILocation(line: 265, column: 11, scope: !4511)
!4515 = !DILocation(line: 266, column: 11, scope: !4511)
!4516 = !DILocation(line: 267, column: 14, scope: !4511)
!4517 = !DILocation(line: 264, column: 7, scope: !996)
!4518 = !DILocation(line: 268, column: 5, scope: !4511)
!4519 = !DILocation(line: 0, scope: !4333, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 269, column: 8, scope: !996)
!4521 = !DILocation(line: 0, scope: !4341, inlinedAt: !4522)
!4522 = distinct !DILocation(line: 70, column: 25, scope: !4333, inlinedAt: !4520)
!4523 = !DILocation(line: 2059, column: 24, scope: !4341, inlinedAt: !4522)
!4524 = !DILocation(line: 2059, column: 10, scope: !4341, inlinedAt: !4522)
!4525 = !DILocation(line: 0, scope: !4266, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 70, column: 10, scope: !4333, inlinedAt: !4520)
!4527 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4526)
!4528 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4526)
!4529 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4526)
!4530 = !DILocation(line: 270, column: 7, scope: !996)
!4531 = !DILocation(line: 271, column: 3, scope: !996)
!4532 = distinct !DISubprogram(name: "xzalloc", scope: !981, file: !981, line: 279, type: !4286, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4533)
!4533 = !{!4534}
!4534 = !DILocalVariable(name: "s", arg: 1, scope: !4532, file: !981, line: 279, type: !180)
!4535 = !DILocation(line: 0, scope: !4532)
!4536 = !DILocalVariable(name: "n", arg: 1, scope: !4537, file: !981, line: 294, type: !180)
!4537 = distinct !DISubprogram(name: "xcalloc", scope: !981, file: !981, line: 294, type: !4402, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4538)
!4538 = !{!4536, !4539}
!4539 = !DILocalVariable(name: "s", arg: 2, scope: !4537, file: !981, line: 294, type: !180)
!4540 = !DILocation(line: 0, scope: !4537, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 281, column: 10, scope: !4532)
!4542 = !DILocation(line: 296, column: 25, scope: !4537, inlinedAt: !4541)
!4543 = !DILocation(line: 0, scope: !4266, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 296, column: 10, scope: !4537, inlinedAt: !4541)
!4545 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4544)
!4546 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4544)
!4547 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4544)
!4548 = !DILocation(line: 281, column: 3, scope: !4532)
!4549 = !DISubprogram(name: "calloc", scope: !1262, file: !1262, line: 543, type: !4402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!4550 = !DILocation(line: 0, scope: !4537)
!4551 = !DILocation(line: 296, column: 25, scope: !4537)
!4552 = !DILocation(line: 0, scope: !4266, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 296, column: 10, scope: !4537)
!4554 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4553)
!4555 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4553)
!4556 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4553)
!4557 = !DILocation(line: 296, column: 3, scope: !4537)
!4558 = distinct !DISubprogram(name: "xizalloc", scope: !981, file: !981, line: 285, type: !4300, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4559)
!4559 = !{!4560}
!4560 = !DILocalVariable(name: "s", arg: 1, scope: !4558, file: !981, line: 285, type: !297)
!4561 = !DILocation(line: 0, scope: !4558)
!4562 = !DILocalVariable(name: "n", arg: 1, scope: !4563, file: !981, line: 300, type: !297)
!4563 = distinct !DISubprogram(name: "xicalloc", scope: !981, file: !981, line: 300, type: !4418, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4564)
!4564 = !{!4562, !4565}
!4565 = !DILocalVariable(name: "s", arg: 2, scope: !4563, file: !981, line: 300, type: !297)
!4566 = !DILocation(line: 0, scope: !4563, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 287, column: 10, scope: !4558)
!4568 = !DILocalVariable(name: "n", arg: 1, scope: !4569, file: !4307, line: 77, type: !297)
!4569 = distinct !DISubprogram(name: "icalloc", scope: !4307, file: !4307, line: 77, type: !4418, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4570)
!4570 = !{!4568, !4571}
!4571 = !DILocalVariable(name: "s", arg: 2, scope: !4569, file: !4307, line: 77, type: !297)
!4572 = !DILocation(line: 0, scope: !4569, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 302, column: 25, scope: !4563, inlinedAt: !4567)
!4574 = !DILocation(line: 91, column: 10, scope: !4569, inlinedAt: !4573)
!4575 = !DILocation(line: 0, scope: !4266, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 302, column: 10, scope: !4563, inlinedAt: !4567)
!4577 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4576)
!4578 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4576)
!4579 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4576)
!4580 = !DILocation(line: 287, column: 3, scope: !4558)
!4581 = !DILocation(line: 0, scope: !4563)
!4582 = !DILocation(line: 0, scope: !4569, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 302, column: 25, scope: !4563)
!4584 = !DILocation(line: 91, column: 10, scope: !4569, inlinedAt: !4583)
!4585 = !DILocation(line: 0, scope: !4266, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 302, column: 10, scope: !4563)
!4587 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4586)
!4588 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4586)
!4589 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4586)
!4590 = !DILocation(line: 302, column: 3, scope: !4563)
!4591 = distinct !DISubprogram(name: "xmemdup", scope: !981, file: !981, line: 310, type: !4592, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4594)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!178, !1286, !180}
!4594 = !{!4595, !4596}
!4595 = !DILocalVariable(name: "p", arg: 1, scope: !4591, file: !981, line: 310, type: !1286)
!4596 = !DILocalVariable(name: "s", arg: 2, scope: !4591, file: !981, line: 310, type: !180)
!4597 = !DILocation(line: 0, scope: !4591)
!4598 = !DILocation(line: 0, scope: !4285, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 312, column: 18, scope: !4591)
!4600 = !DILocation(line: 49, column: 25, scope: !4285, inlinedAt: !4599)
!4601 = !DILocation(line: 0, scope: !4266, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 49, column: 10, scope: !4285, inlinedAt: !4599)
!4603 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4602)
!4604 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4602)
!4605 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4602)
!4606 = !DILocalVariable(name: "__dest", arg: 1, scope: !4607, file: !1461, line: 26, type: !1464)
!4607 = distinct !DISubprogram(name: "memcpy", scope: !1461, file: !1461, line: 26, type: !1462, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4608)
!4608 = !{!4606, !4609, !4610}
!4609 = !DILocalVariable(name: "__src", arg: 2, scope: !4607, file: !1461, line: 26, type: !1285)
!4610 = !DILocalVariable(name: "__len", arg: 3, scope: !4607, file: !1461, line: 26, type: !180)
!4611 = !DILocation(line: 0, scope: !4607, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 312, column: 10, scope: !4591)
!4613 = !DILocation(line: 29, column: 10, scope: !4607, inlinedAt: !4612)
!4614 = !DILocation(line: 312, column: 3, scope: !4591)
!4615 = distinct !DISubprogram(name: "ximemdup", scope: !981, file: !981, line: 316, type: !4616, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4618)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!178, !1286, !297}
!4618 = !{!4619, !4620}
!4619 = !DILocalVariable(name: "p", arg: 1, scope: !4615, file: !981, line: 316, type: !1286)
!4620 = !DILocalVariable(name: "s", arg: 2, scope: !4615, file: !981, line: 316, type: !297)
!4621 = !DILocation(line: 0, scope: !4615)
!4622 = !DILocation(line: 0, scope: !4299, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 318, column: 18, scope: !4615)
!4624 = !DILocation(line: 0, scope: !4306, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 55, column: 25, scope: !4299, inlinedAt: !4623)
!4626 = !DILocation(line: 57, column: 26, scope: !4306, inlinedAt: !4625)
!4627 = !DILocation(line: 0, scope: !4266, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 55, column: 10, scope: !4299, inlinedAt: !4623)
!4629 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4628)
!4630 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4628)
!4631 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4628)
!4632 = !DILocation(line: 0, scope: !4607, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 318, column: 10, scope: !4615)
!4634 = !DILocation(line: 29, column: 10, scope: !4607, inlinedAt: !4633)
!4635 = !DILocation(line: 318, column: 3, scope: !4615)
!4636 = distinct !DISubprogram(name: "ximemdup0", scope: !981, file: !981, line: 325, type: !4637, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4639)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!177, !1286, !297}
!4639 = !{!4640, !4641, !4642}
!4640 = !DILocalVariable(name: "p", arg: 1, scope: !4636, file: !981, line: 325, type: !1286)
!4641 = !DILocalVariable(name: "s", arg: 2, scope: !4636, file: !981, line: 325, type: !297)
!4642 = !DILocalVariable(name: "result", scope: !4636, file: !981, line: 327, type: !177)
!4643 = !DILocation(line: 0, scope: !4636)
!4644 = !DILocation(line: 327, column: 30, scope: !4636)
!4645 = !DILocation(line: 0, scope: !4299, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 327, column: 18, scope: !4636)
!4647 = !DILocation(line: 0, scope: !4306, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 55, column: 25, scope: !4299, inlinedAt: !4646)
!4649 = !DILocation(line: 57, column: 26, scope: !4306, inlinedAt: !4648)
!4650 = !DILocation(line: 0, scope: !4266, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 55, column: 10, scope: !4299, inlinedAt: !4646)
!4652 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4651)
!4653 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4651)
!4654 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4651)
!4655 = !DILocation(line: 328, column: 3, scope: !4636)
!4656 = !DILocation(line: 328, column: 13, scope: !4636)
!4657 = !DILocation(line: 0, scope: !4607, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 329, column: 10, scope: !4636)
!4659 = !DILocation(line: 29, column: 10, scope: !4607, inlinedAt: !4658)
!4660 = !DILocation(line: 329, column: 3, scope: !4636)
!4661 = distinct !DISubprogram(name: "xstrdup", scope: !981, file: !981, line: 335, type: !1264, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !4662)
!4662 = !{!4663}
!4663 = !DILocalVariable(name: "string", arg: 1, scope: !4661, file: !981, line: 335, type: !183)
!4664 = !DILocation(line: 0, scope: !4661)
!4665 = !DILocation(line: 337, column: 27, scope: !4661)
!4666 = !DILocation(line: 337, column: 43, scope: !4661)
!4667 = !DILocation(line: 0, scope: !4591, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 337, column: 10, scope: !4661)
!4669 = !DILocation(line: 0, scope: !4285, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 312, column: 18, scope: !4591, inlinedAt: !4668)
!4671 = !DILocation(line: 49, column: 25, scope: !4285, inlinedAt: !4670)
!4672 = !DILocation(line: 0, scope: !4266, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 49, column: 10, scope: !4285, inlinedAt: !4670)
!4674 = !DILocation(line: 39, column: 8, scope: !4273, inlinedAt: !4673)
!4675 = !DILocation(line: 39, column: 7, scope: !4266, inlinedAt: !4673)
!4676 = !DILocation(line: 40, column: 5, scope: !4273, inlinedAt: !4673)
!4677 = !DILocation(line: 0, scope: !4607, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 312, column: 10, scope: !4591, inlinedAt: !4668)
!4679 = !DILocation(line: 29, column: 10, scope: !4607, inlinedAt: !4678)
!4680 = !DILocation(line: 337, column: 3, scope: !4661)
!4681 = distinct !DISubprogram(name: "xalloc_die", scope: !926, file: !926, line: 32, type: !600, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1011, retainedNodes: !4682)
!4682 = !{!4683}
!4683 = !DILocalVariable(name: "__errstatus", scope: !4684, file: !926, line: 34, type: !4685)
!4684 = distinct !DILexicalBlock(scope: !4681, file: !926, line: 34, column: 3)
!4685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!4686 = !DILocation(line: 34, column: 3, scope: !4684)
!4687 = !DILocation(line: 0, scope: !4684)
!4688 = !DILocation(line: 40, column: 3, scope: !4681)
!4689 = distinct !DISubprogram(name: "xnumtoimax", scope: !933, file: !933, line: 42, type: !4690, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !4692)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!305, !183, !118, !305, !305, !183, !183, !118, !118}
!4692 = !{!4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4705, !4706, !4707}
!4693 = !DILocalVariable(name: "n_str", arg: 1, scope: !4689, file: !933, line: 42, type: !183)
!4694 = !DILocalVariable(name: "base", arg: 2, scope: !4689, file: !933, line: 42, type: !118)
!4695 = !DILocalVariable(name: "min", arg: 3, scope: !4689, file: !933, line: 42, type: !305)
!4696 = !DILocalVariable(name: "max", arg: 4, scope: !4689, file: !933, line: 42, type: !305)
!4697 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4689, file: !933, line: 43, type: !183)
!4698 = !DILocalVariable(name: "err", arg: 6, scope: !4689, file: !933, line: 43, type: !183)
!4699 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4689, file: !933, line: 43, type: !118)
!4700 = !DILocalVariable(name: "flags", arg: 8, scope: !4689, file: !933, line: 44, type: !118)
!4701 = !DILocalVariable(name: "tnum", scope: !4689, file: !933, line: 46, type: !305)
!4702 = !DILocalVariable(name: "r", scope: !4689, file: !933, line: 46, type: !305)
!4703 = !DILocalVariable(name: "s_err", scope: !4689, file: !933, line: 47, type: !4704)
!4704 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1017, line: 43, baseType: !1016)
!4705 = !DILocalVariable(name: "overflow_errno", scope: !4689, file: !933, line: 50, type: !118)
!4706 = !DILocalVariable(name: "e", scope: !4689, file: !933, line: 75, type: !118)
!4707 = !DILocalVariable(name: "__errstatus", scope: !4708, file: !933, line: 80, type: !4685)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !933, line: 80, column: 5)
!4709 = distinct !DILexicalBlock(scope: !4689, file: !933, line: 77, column: 7)
!4710 = !DILocation(line: 0, scope: !4689)
!4711 = !DILocation(line: 46, column: 3, scope: !4689)
!4712 = !DILocation(line: 47, column: 24, scope: !4689)
!4713 = !DILocation(line: 52, column: 13, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4689, file: !933, line: 52, column: 7)
!4715 = !DILocation(line: 52, column: 7, scope: !4689)
!4716 = !DILocation(line: 54, column: 11, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !933, line: 54, column: 11)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !933, line: 53, column: 5)
!4719 = !DILocation(line: 54, column: 16, scope: !4717)
!4720 = !DILocation(line: 54, column: 11, scope: !4718)
!4721 = !DILocation(line: 57, column: 34, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4717, file: !933, line: 55, column: 9)
!4723 = !DILocation(line: 57, column: 28, scope: !4722)
!4724 = !DILocation(line: 58, column: 21, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4722, file: !933, line: 58, column: 15)
!4726 = !DILocation(line: 0, scope: !4722)
!4727 = !DILocation(line: 61, column: 20, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4717, file: !933, line: 61, column: 16)
!4729 = !DILocation(line: 61, column: 16, scope: !4717)
!4730 = !DILocation(line: 64, column: 34, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4728, file: !933, line: 62, column: 9)
!4732 = !DILocation(line: 64, column: 28, scope: !4731)
!4733 = !DILocation(line: 65, column: 21, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4731, file: !933, line: 65, column: 15)
!4735 = !DILocation(line: 0, scope: !4731)
!4736 = !DILocation(line: 75, column: 17, scope: !4689)
!4737 = !DILocation(line: 75, column: 11, scope: !4689)
!4738 = !DILocation(line: 77, column: 16, scope: !4709)
!4739 = !DILocation(line: 78, column: 10, scope: !4709)
!4740 = !DILocation(line: 79, column: 14, scope: !4709)
!4741 = !DILocation(line: 79, column: 31, scope: !4709)
!4742 = !DILocation(line: 79, column: 26, scope: !4709)
!4743 = !DILocation(line: 79, column: 23, scope: !4709)
!4744 = !DILocation(line: 77, column: 7, scope: !4689)
!4745 = !DILocation(line: 80, column: 5, scope: !4709)
!4746 = !DILocation(line: 82, column: 3, scope: !4689)
!4747 = !DILocation(line: 82, column: 9, scope: !4689)
!4748 = !DILocation(line: 84, column: 1, scope: !4689)
!4749 = !DILocation(line: 83, column: 3, scope: !4689)
!4750 = distinct !DISubprogram(name: "xdectoimax", scope: !933, file: !933, line: 92, type: !4751, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !4753)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!305, !183, !305, !305, !183, !183, !118}
!4753 = !{!4754, !4755, !4756, !4757, !4758, !4759}
!4754 = !DILocalVariable(name: "n_str", arg: 1, scope: !4750, file: !933, line: 92, type: !183)
!4755 = !DILocalVariable(name: "min", arg: 2, scope: !4750, file: !933, line: 92, type: !305)
!4756 = !DILocalVariable(name: "max", arg: 3, scope: !4750, file: !933, line: 92, type: !305)
!4757 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4750, file: !933, line: 93, type: !183)
!4758 = !DILocalVariable(name: "err", arg: 5, scope: !4750, file: !933, line: 93, type: !183)
!4759 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4750, file: !933, line: 93, type: !118)
!4760 = !DILocation(line: 0, scope: !4750)
!4761 = !DILocation(line: 0, scope: !4689, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 95, column: 10, scope: !4750)
!4763 = !DILocation(line: 46, column: 3, scope: !4689, inlinedAt: !4762)
!4764 = !DILocation(line: 47, column: 24, scope: !4689, inlinedAt: !4762)
!4765 = !DILocation(line: 52, column: 13, scope: !4714, inlinedAt: !4762)
!4766 = !DILocation(line: 52, column: 7, scope: !4689, inlinedAt: !4762)
!4767 = !DILocation(line: 54, column: 11, scope: !4717, inlinedAt: !4762)
!4768 = !DILocation(line: 54, column: 16, scope: !4717, inlinedAt: !4762)
!4769 = !DILocation(line: 54, column: 11, scope: !4718, inlinedAt: !4762)
!4770 = !DILocation(line: 58, column: 21, scope: !4725, inlinedAt: !4762)
!4771 = !DILocation(line: 0, scope: !4722, inlinedAt: !4762)
!4772 = !DILocation(line: 61, column: 20, scope: !4728, inlinedAt: !4762)
!4773 = !DILocation(line: 61, column: 16, scope: !4717, inlinedAt: !4762)
!4774 = !DILocation(line: 65, column: 21, scope: !4734, inlinedAt: !4762)
!4775 = !DILocation(line: 0, scope: !4731, inlinedAt: !4762)
!4776 = !DILocation(line: 78, column: 10, scope: !4709, inlinedAt: !4762)
!4777 = !DILocation(line: 80, column: 5, scope: !4709, inlinedAt: !4762)
!4778 = !DILocation(line: 82, column: 3, scope: !4689, inlinedAt: !4762)
!4779 = !DILocation(line: 82, column: 9, scope: !4689, inlinedAt: !4762)
!4780 = !DILocation(line: 84, column: 1, scope: !4689, inlinedAt: !4762)
!4781 = !DILocation(line: 95, column: 3, scope: !4750)
!4782 = distinct !DISubprogram(name: "xstrtoimax", scope: !4783, file: !4783, line: 71, type: !4784, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4787)
!4783 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!4704, !183, !1291, !118, !4786, !183}
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4787 = !{!4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4800, !4801}
!4788 = !DILocalVariable(name: "nptr", arg: 1, scope: !4782, file: !4783, line: 71, type: !183)
!4789 = !DILocalVariable(name: "endptr", arg: 2, scope: !4782, file: !4783, line: 71, type: !1291)
!4790 = !DILocalVariable(name: "base", arg: 3, scope: !4782, file: !4783, line: 71, type: !118)
!4791 = !DILocalVariable(name: "val", arg: 4, scope: !4782, file: !4783, line: 72, type: !4786)
!4792 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4782, file: !4783, line: 72, type: !183)
!4793 = !DILocalVariable(name: "t_ptr", scope: !4782, file: !4783, line: 74, type: !177)
!4794 = !DILocalVariable(name: "p", scope: !4782, file: !4783, line: 75, type: !1291)
!4795 = !DILocalVariable(name: "tmp", scope: !4782, file: !4783, line: 91, type: !305)
!4796 = !DILocalVariable(name: "err", scope: !4782, file: !4783, line: 92, type: !4704)
!4797 = !DILocalVariable(name: "xbase", scope: !4798, file: !4783, line: 126, type: !118)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !4783, line: 119, column: 5)
!4799 = distinct !DILexicalBlock(scope: !4782, file: !4783, line: 118, column: 7)
!4800 = !DILocalVariable(name: "suffixes", scope: !4798, file: !4783, line: 127, type: !118)
!4801 = !DILocalVariable(name: "overflow", scope: !4798, file: !4783, line: 156, type: !4704)
!4802 = !DILocation(line: 0, scope: !4782)
!4803 = !DILocation(line: 74, column: 3, scope: !4782)
!4804 = !DILocation(line: 75, column: 14, scope: !4782)
!4805 = !DILocation(line: 90, column: 3, scope: !4782)
!4806 = !DILocation(line: 90, column: 9, scope: !4782)
!4807 = !DILocation(line: 91, column: 20, scope: !4782)
!4808 = !DILocation(line: 94, column: 7, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4782, file: !4783, line: 94, column: 7)
!4810 = !DILocation(line: 94, column: 10, scope: !4809)
!4811 = !DILocation(line: 94, column: 7, scope: !4782)
!4812 = !DILocation(line: 98, column: 14, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !4783, line: 98, column: 11)
!4814 = distinct !DILexicalBlock(scope: !4809, file: !4783, line: 95, column: 5)
!4815 = !DILocation(line: 98, column: 29, scope: !4813)
!4816 = !DILocation(line: 98, column: 32, scope: !4813)
!4817 = !DILocation(line: 98, column: 38, scope: !4813)
!4818 = !DILocation(line: 98, column: 41, scope: !4813)
!4819 = !DILocation(line: 98, column: 11, scope: !4814)
!4820 = !DILocation(line: 102, column: 12, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4809, file: !4783, line: 102, column: 12)
!4822 = !DILocation(line: 102, column: 12, scope: !4809)
!4823 = !DILocation(line: 107, column: 5, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4821, file: !4783, line: 103, column: 5)
!4825 = !DILocation(line: 112, column: 8, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4782, file: !4783, line: 112, column: 7)
!4827 = !DILocation(line: 112, column: 7, scope: !4782)
!4828 = !DILocation(line: 114, column: 12, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4826, file: !4783, line: 113, column: 5)
!4830 = !DILocation(line: 115, column: 7, scope: !4829)
!4831 = !DILocation(line: 118, column: 7, scope: !4799)
!4832 = !DILocation(line: 118, column: 11, scope: !4799)
!4833 = !DILocation(line: 118, column: 7, scope: !4782)
!4834 = !DILocation(line: 120, column: 12, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4798, file: !4783, line: 120, column: 11)
!4836 = !DILocation(line: 120, column: 11, scope: !4798)
!4837 = !DILocation(line: 122, column: 16, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !4783, line: 121, column: 9)
!4839 = !DILocation(line: 123, column: 22, scope: !4838)
!4840 = !DILocation(line: 123, column: 11, scope: !4838)
!4841 = !DILocation(line: 0, scope: !4798)
!4842 = !DILocation(line: 128, column: 7, scope: !4798)
!4843 = !DILocation(line: 140, column: 15, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !4783, line: 140, column: 15)
!4845 = distinct !DILexicalBlock(scope: !4798, file: !4783, line: 129, column: 9)
!4846 = !DILocation(line: 140, column: 15, scope: !4845)
!4847 = !DILocation(line: 141, column: 21, scope: !4844)
!4848 = !DILocation(line: 141, column: 13, scope: !4844)
!4849 = !DILocation(line: 144, column: 21, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !4783, line: 144, column: 21)
!4851 = distinct !DILexicalBlock(scope: !4844, file: !4783, line: 142, column: 15)
!4852 = !DILocation(line: 144, column: 29, scope: !4850)
!4853 = !DILocation(line: 144, column: 21, scope: !4851)
!4854 = !DILocation(line: 152, column: 17, scope: !4851)
!4855 = !DILocation(line: 157, column: 7, scope: !4798)
!4856 = !DILocalVariable(name: "err", scope: !4857, file: !4783, line: 64, type: !4704)
!4857 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4783, file: !4783, line: 62, type: !4858, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4860)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!4704, !4786, !118, !118}
!4860 = !{!4861, !4862, !4863, !4856}
!4861 = !DILocalVariable(name: "x", arg: 1, scope: !4857, file: !4783, line: 62, type: !4786)
!4862 = !DILocalVariable(name: "base", arg: 2, scope: !4857, file: !4783, line: 62, type: !118)
!4863 = !DILocalVariable(name: "power", arg: 3, scope: !4857, file: !4783, line: 62, type: !118)
!4864 = !DILocation(line: 0, scope: !4857, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 219, column: 22, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4798, file: !4783, line: 158, column: 9)
!4867 = !DILocalVariable(name: "x", arg: 1, scope: !4868, file: !4783, line: 47, type: !4786)
!4868 = distinct !DISubprogram(name: "bkm_scale", scope: !4783, file: !4783, line: 47, type: !4869, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4871)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!4704, !4786, !118}
!4871 = !{!4867, !4872, !4873}
!4872 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4868, file: !4783, line: 47, type: !118)
!4873 = !DILocalVariable(name: "scaled", scope: !4868, file: !4783, line: 49, type: !305)
!4874 = !DILocation(line: 0, scope: !4868, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4865)
!4876 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4875)
!4877 = distinct !DILexicalBlock(scope: !4868, file: !4783, line: 50, column: 7)
!4878 = !DILocation(line: 0, scope: !4857, inlinedAt: !4879)
!4879 = distinct !DILocation(line: 215, column: 22, scope: !4866)
!4880 = !DILocation(line: 0, scope: !4868, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4879)
!4882 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4881)
!4883 = !DILocation(line: 0, scope: !4857, inlinedAt: !4884)
!4884 = distinct !DILocation(line: 202, column: 22, scope: !4866)
!4885 = !DILocation(line: 0, scope: !4868, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4884)
!4887 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4886)
!4888 = !DILocation(line: 0, scope: !4857, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 198, column: 22, scope: !4866)
!4890 = !DILocation(line: 0, scope: !4868, inlinedAt: !4891)
!4891 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4889)
!4892 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4891)
!4893 = !DILocation(line: 0, scope: !4857, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 194, column: 22, scope: !4866)
!4895 = !DILocation(line: 0, scope: !4868, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4894)
!4897 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4896)
!4898 = !DILocation(line: 0, scope: !4857, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 175, column: 22, scope: !4866)
!4900 = !DILocation(line: 0, scope: !4868, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4899)
!4902 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4901)
!4903 = !DILocation(line: 0, scope: !4868, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 160, column: 22, scope: !4866)
!4905 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4904)
!4906 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4904)
!4907 = !DILocation(line: 0, scope: !4868, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 167, column: 22, scope: !4866)
!4909 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4908)
!4910 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4908)
!4911 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4901)
!4912 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4899)
!4913 = !DILocation(line: 227, column: 11, scope: !4798)
!4914 = !DILocation(line: 0, scope: !4857, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 180, column: 22, scope: !4866)
!4916 = !DILocation(line: 0, scope: !4868, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4915)
!4918 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4917)
!4919 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4917)
!4920 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4915)
!4921 = !DILocation(line: 0, scope: !4857, inlinedAt: !4922)
!4922 = distinct !DILocation(line: 185, column: 22, scope: !4866)
!4923 = !DILocation(line: 0, scope: !4868, inlinedAt: !4924)
!4924 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4922)
!4925 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4924)
!4926 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4924)
!4927 = !DILocation(line: 0, scope: !4857, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 190, column: 22, scope: !4866)
!4929 = !DILocation(line: 0, scope: !4868, inlinedAt: !4930)
!4930 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4928)
!4931 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4930)
!4932 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4930)
!4933 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4928)
!4934 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4896)
!4935 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4894)
!4936 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4891)
!4937 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4889)
!4938 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4886)
!4939 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4884)
!4940 = !DILocation(line: 0, scope: !4857, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 207, column: 22, scope: !4866)
!4942 = !DILocation(line: 0, scope: !4868, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 66, column: 12, scope: !4857, inlinedAt: !4941)
!4944 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4943)
!4945 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4943)
!4946 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4941)
!4947 = !DILocation(line: 0, scope: !4868, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 211, column: 22, scope: !4866)
!4949 = !DILocation(line: 50, column: 7, scope: !4877, inlinedAt: !4948)
!4950 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4948)
!4951 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4881)
!4952 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4879)
!4953 = !DILocation(line: 50, column: 7, scope: !4868, inlinedAt: !4875)
!4954 = !DILocation(line: 66, column: 9, scope: !4857, inlinedAt: !4865)
!4955 = !DILocation(line: 0, scope: !4866)
!4956 = !DILocation(line: 228, column: 10, scope: !4798)
!4957 = !DILocation(line: 229, column: 11, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4798, file: !4783, line: 229, column: 11)
!4959 = !DILocation(line: 229, column: 11, scope: !4798)
!4960 = !DILocation(line: 223, column: 16, scope: !4866)
!4961 = !DILocation(line: 224, column: 22, scope: !4866)
!4962 = !DILocation(line: 100, column: 11, scope: !4814)
!4963 = !DILocation(line: 92, column: 16, scope: !4782)
!4964 = !DILocation(line: 233, column: 8, scope: !4782)
!4965 = !DILocation(line: 234, column: 3, scope: !4782)
!4966 = !DILocation(line: 235, column: 1, scope: !4782)
!4967 = !DISubprogram(name: "strtoimax", scope: !4968, file: !4968, line: 297, type: !4969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!4968 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!305, !1132, !4971, !118}
!4971 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1291)
!4972 = distinct !DISubprogram(name: "rpl_fopen", scope: !1030, file: !1030, line: 46, type: !4973, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !5009)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!4975, !183, !183}
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !4977)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !4978)
!4978 = !{!4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4977, file: !346, line: 51, baseType: !118, size: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4977, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4977, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4977, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4977, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4977, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4977, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4977, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4977, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4977, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4977, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4977, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4977, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4977, file: !346, line: 70, baseType: !4993, size: 64, offset: 832)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4977, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4977, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4977, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4977, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4977, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4977, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4977, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4977, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4977, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4977, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4977, file: !346, line: 93, baseType: !4993, size: 64, offset: 1344)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4977, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4977, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4977, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4977, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!5009 = !{!5010, !5011, !5012, !5013, !5014, !5015, !5019, !5021, !5022, !5027, !5030, !5031}
!5010 = !DILocalVariable(name: "filename", arg: 1, scope: !4972, file: !1030, line: 46, type: !183)
!5011 = !DILocalVariable(name: "mode", arg: 2, scope: !4972, file: !1030, line: 46, type: !183)
!5012 = !DILocalVariable(name: "open_direction", scope: !4972, file: !1030, line: 54, type: !118)
!5013 = !DILocalVariable(name: "open_flags", scope: !4972, file: !1030, line: 55, type: !118)
!5014 = !DILocalVariable(name: "open_flags_gnu", scope: !4972, file: !1030, line: 57, type: !186)
!5015 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4972, file: !1030, line: 59, type: !5016)
!5016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5017)
!5017 = !{!5018}
!5018 = !DISubrange(count: 81)
!5019 = !DILocalVariable(name: "p", scope: !5020, file: !1030, line: 62, type: !183)
!5020 = distinct !DILexicalBlock(scope: !4972, file: !1030, line: 61, column: 3)
!5021 = !DILocalVariable(name: "q", scope: !5020, file: !1030, line: 64, type: !177)
!5022 = !DILocalVariable(name: "len", scope: !5023, file: !1030, line: 128, type: !180)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !1030, line: 127, column: 9)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !1030, line: 68, column: 7)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !1030, line: 67, column: 5)
!5026 = distinct !DILexicalBlock(scope: !5020, file: !1030, line: 67, column: 5)
!5027 = !DILocalVariable(name: "fd", scope: !5028, file: !1030, line: 199, type: !118)
!5028 = distinct !DILexicalBlock(scope: !5029, file: !1030, line: 198, column: 5)
!5029 = distinct !DILexicalBlock(scope: !4972, file: !1030, line: 197, column: 7)
!5030 = !DILocalVariable(name: "fp", scope: !5028, file: !1030, line: 204, type: !4975)
!5031 = !DILocalVariable(name: "saved_errno", scope: !5032, file: !1030, line: 207, type: !118)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !1030, line: 206, column: 9)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !1030, line: 205, column: 11)
!5034 = !DILocation(line: 0, scope: !4972)
!5035 = !DILocation(line: 59, column: 3, scope: !4972)
!5036 = !DILocation(line: 59, column: 8, scope: !4972)
!5037 = !DILocation(line: 0, scope: !5020)
!5038 = !DILocation(line: 67, column: 5, scope: !5020)
!5039 = !DILocation(line: 54, column: 7, scope: !4972)
!5040 = !DILocation(line: 67, column: 12, scope: !5025)
!5041 = !DILocation(line: 67, column: 5, scope: !5026)
!5042 = !DILocation(line: 74, column: 19, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5044, file: !1030, line: 74, column: 17)
!5044 = distinct !DILexicalBlock(scope: !5024, file: !1030, line: 70, column: 11)
!5045 = !DILocation(line: 74, column: 17, scope: !5044)
!5046 = !DILocation(line: 75, column: 17, scope: !5043)
!5047 = !DILocation(line: 75, column: 20, scope: !5043)
!5048 = !DILocation(line: 75, column: 15, scope: !5043)
!5049 = !DILocation(line: 80, column: 24, scope: !5044)
!5050 = !DILocation(line: 82, column: 19, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5044, file: !1030, line: 82, column: 17)
!5052 = !DILocation(line: 82, column: 17, scope: !5044)
!5053 = !DILocation(line: 83, column: 17, scope: !5051)
!5054 = !DILocation(line: 83, column: 20, scope: !5051)
!5055 = !DILocation(line: 83, column: 15, scope: !5051)
!5056 = !DILocation(line: 88, column: 24, scope: !5044)
!5057 = !DILocation(line: 90, column: 19, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5044, file: !1030, line: 90, column: 17)
!5059 = !DILocation(line: 90, column: 17, scope: !5044)
!5060 = !DILocation(line: 91, column: 17, scope: !5058)
!5061 = !DILocation(line: 91, column: 20, scope: !5058)
!5062 = !DILocation(line: 91, column: 15, scope: !5058)
!5063 = !DILocation(line: 100, column: 19, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5044, file: !1030, line: 100, column: 17)
!5065 = !DILocation(line: 100, column: 17, scope: !5044)
!5066 = !DILocation(line: 101, column: 17, scope: !5064)
!5067 = !DILocation(line: 101, column: 20, scope: !5064)
!5068 = !DILocation(line: 101, column: 15, scope: !5064)
!5069 = !DILocation(line: 107, column: 19, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5044, file: !1030, line: 107, column: 17)
!5071 = !DILocation(line: 107, column: 17, scope: !5044)
!5072 = !DILocation(line: 108, column: 17, scope: !5070)
!5073 = !DILocation(line: 108, column: 20, scope: !5070)
!5074 = !DILocation(line: 108, column: 15, scope: !5070)
!5075 = !DILocation(line: 113, column: 24, scope: !5044)
!5076 = !DILocation(line: 115, column: 13, scope: !5044)
!5077 = !DILocation(line: 117, column: 24, scope: !5044)
!5078 = !DILocation(line: 119, column: 13, scope: !5044)
!5079 = !DILocation(line: 128, column: 24, scope: !5023)
!5080 = !DILocation(line: 0, scope: !5023)
!5081 = !DILocation(line: 129, column: 48, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5023, file: !1030, line: 129, column: 15)
!5083 = !DILocation(line: 129, column: 15, scope: !5023)
!5084 = !DILocalVariable(name: "__dest", arg: 1, scope: !5085, file: !1461, line: 26, type: !1464)
!5085 = distinct !DISubprogram(name: "memcpy", scope: !1461, file: !1461, line: 26, type: !1462, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !5086)
!5086 = !{!5084, !5087, !5088}
!5087 = !DILocalVariable(name: "__src", arg: 2, scope: !5085, file: !1461, line: 26, type: !1285)
!5088 = !DILocalVariable(name: "__len", arg: 3, scope: !5085, file: !1461, line: 26, type: !180)
!5089 = !DILocation(line: 0, scope: !5085, inlinedAt: !5090)
!5090 = distinct !DILocation(line: 131, column: 11, scope: !5023)
!5091 = !DILocation(line: 29, column: 10, scope: !5085, inlinedAt: !5090)
!5092 = !DILocation(line: 132, column: 13, scope: !5023)
!5093 = !DILocation(line: 135, column: 9, scope: !5024)
!5094 = !DILocation(line: 67, column: 25, scope: !5025)
!5095 = !DILocation(line: 67, column: 5, scope: !5025)
!5096 = distinct !{!5096, !5041, !5097, !1188}
!5097 = !DILocation(line: 136, column: 7, scope: !5026)
!5098 = !DILocation(line: 138, column: 8, scope: !5020)
!5099 = !DILocation(line: 197, column: 7, scope: !4972)
!5100 = !DILocation(line: 199, column: 47, scope: !5028)
!5101 = !DILocation(line: 199, column: 16, scope: !5028)
!5102 = !DILocation(line: 0, scope: !5028)
!5103 = !DILocation(line: 201, column: 14, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5028, file: !1030, line: 201, column: 11)
!5105 = !DILocation(line: 201, column: 11, scope: !5028)
!5106 = !DILocation(line: 204, column: 18, scope: !5028)
!5107 = !DILocation(line: 205, column: 14, scope: !5033)
!5108 = !DILocation(line: 205, column: 11, scope: !5028)
!5109 = !DILocation(line: 207, column: 29, scope: !5032)
!5110 = !DILocation(line: 0, scope: !5032)
!5111 = !DILocation(line: 208, column: 11, scope: !5032)
!5112 = !DILocation(line: 209, column: 17, scope: !5032)
!5113 = !DILocation(line: 210, column: 9, scope: !5032)
!5114 = !DILocalVariable(name: "filename", arg: 1, scope: !5115, file: !1030, line: 30, type: !183)
!5115 = distinct !DISubprogram(name: "orig_fopen", scope: !1030, file: !1030, line: 30, type: !4973, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !5116)
!5116 = !{!5114, !5117}
!5117 = !DILocalVariable(name: "mode", arg: 2, scope: !5115, file: !1030, line: 30, type: !183)
!5118 = !DILocation(line: 0, scope: !5115, inlinedAt: !5119)
!5119 = distinct !DILocation(line: 219, column: 10, scope: !4972)
!5120 = !DILocation(line: 32, column: 10, scope: !5115, inlinedAt: !5119)
!5121 = !DILocation(line: 219, column: 3, scope: !4972)
!5122 = !DILocation(line: 220, column: 1, scope: !4972)
!5123 = !DISubprogram(name: "open", scope: !2143, file: !2143, line: 181, type: !5124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!118, !183, !118, null}
!5126 = !DISubprogram(name: "fdopen", scope: !662, file: !662, line: 293, type: !5127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!4975, !118, !183}
!5129 = !DISubprogram(name: "close", scope: !1999, file: !1999, line: 358, type: !1761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!5130 = !DISubprogram(name: "fopen", scope: !662, file: !662, line: 258, type: !5131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!4975, !1132, !1132}
!5133 = distinct !DISubprogram(name: "close_stream", scope: !1032, file: !1032, line: 55, type: !5134, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !5170)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!118, !5136}
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !5138)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !5139)
!5139 = !{!5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5138, file: !346, line: 51, baseType: !118, size: 32)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5138, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5138, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5138, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5138, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5138, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5138, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5138, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5138, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5138, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5138, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5138, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5138, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5138, file: !346, line: 70, baseType: !5154, size: 64, offset: 832)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5138, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5138, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5138, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5138, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5138, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5138, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5138, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5138, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5138, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5138, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5138, file: !346, line: 93, baseType: !5154, size: 64, offset: 1344)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5138, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5138, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5138, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5138, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!5170 = !{!5171, !5172, !5174, !5175}
!5171 = !DILocalVariable(name: "stream", arg: 1, scope: !5133, file: !1032, line: 55, type: !5136)
!5172 = !DILocalVariable(name: "some_pending", scope: !5133, file: !1032, line: 57, type: !5173)
!5173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!5174 = !DILocalVariable(name: "prev_fail", scope: !5133, file: !1032, line: 58, type: !5173)
!5175 = !DILocalVariable(name: "fclose_fail", scope: !5133, file: !1032, line: 59, type: !5173)
!5176 = !DILocation(line: 0, scope: !5133)
!5177 = !DILocation(line: 57, column: 30, scope: !5133)
!5178 = !DILocalVariable(name: "__stream", arg: 1, scope: !5179, file: !1760, line: 135, type: !5136)
!5179 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1760, file: !1760, line: 135, type: !5134, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !5180)
!5180 = !{!5178}
!5181 = !DILocation(line: 0, scope: !5179, inlinedAt: !5182)
!5182 = distinct !DILocation(line: 58, column: 27, scope: !5133)
!5183 = !DILocation(line: 137, column: 10, scope: !5179, inlinedAt: !5182)
!5184 = !DILocation(line: 58, column: 43, scope: !5133)
!5185 = !DILocation(line: 59, column: 29, scope: !5133)
!5186 = !DILocation(line: 59, column: 45, scope: !5133)
!5187 = !DILocation(line: 69, column: 17, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5133, file: !1032, line: 69, column: 7)
!5189 = !DILocation(line: 57, column: 50, scope: !5133)
!5190 = !DILocation(line: 69, column: 33, scope: !5188)
!5191 = !DILocation(line: 69, column: 53, scope: !5188)
!5192 = !DILocation(line: 69, column: 59, scope: !5188)
!5193 = !DILocation(line: 69, column: 7, scope: !5133)
!5194 = !DILocation(line: 71, column: 11, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5188, file: !1032, line: 70, column: 5)
!5196 = !DILocation(line: 72, column: 9, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5195, file: !1032, line: 71, column: 11)
!5198 = !DILocation(line: 72, column: 15, scope: !5197)
!5199 = !DILocation(line: 77, column: 1, scope: !5133)
!5200 = !DISubprogram(name: "__fpending", scope: !2347, file: !2347, line: 75, type: !5201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!180, !5136}
!5203 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !936, file: !936, line: 100, type: !5204, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !939, retainedNodes: !5207)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!180, !1642, !183, !180, !5206}
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!5207 = !{!5208, !5209, !5210, !5211, !5212}
!5208 = !DILocalVariable(name: "pwc", arg: 1, scope: !5203, file: !936, line: 100, type: !1642)
!5209 = !DILocalVariable(name: "s", arg: 2, scope: !5203, file: !936, line: 100, type: !183)
!5210 = !DILocalVariable(name: "n", arg: 3, scope: !5203, file: !936, line: 100, type: !180)
!5211 = !DILocalVariable(name: "ps", arg: 4, scope: !5203, file: !936, line: 100, type: !5206)
!5212 = !DILocalVariable(name: "ret", scope: !5203, file: !936, line: 130, type: !180)
!5213 = !DILocation(line: 0, scope: !5203)
!5214 = !DILocation(line: 105, column: 9, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5203, file: !936, line: 105, column: 7)
!5216 = !DILocation(line: 105, column: 7, scope: !5203)
!5217 = !DILocation(line: 117, column: 10, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5203, file: !936, line: 117, column: 7)
!5219 = !DILocation(line: 117, column: 7, scope: !5203)
!5220 = !DILocation(line: 130, column: 16, scope: !5203)
!5221 = !DILocation(line: 135, column: 11, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5203, file: !936, line: 135, column: 7)
!5223 = !DILocation(line: 135, column: 25, scope: !5222)
!5224 = !DILocation(line: 135, column: 30, scope: !5222)
!5225 = !DILocation(line: 135, column: 7, scope: !5203)
!5226 = !DILocalVariable(name: "ps", arg: 1, scope: !5227, file: !2786, line: 1135, type: !5206)
!5227 = distinct !DISubprogram(name: "mbszero", scope: !2786, file: !2786, line: 1135, type: !5228, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !939, retainedNodes: !5230)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{null, !5206}
!5230 = !{!5226}
!5231 = !DILocation(line: 0, scope: !5227, inlinedAt: !5232)
!5232 = distinct !DILocation(line: 137, column: 5, scope: !5222)
!5233 = !DILocalVariable(name: "__dest", arg: 1, scope: !5234, file: !1461, line: 57, type: !178)
!5234 = distinct !DISubprogram(name: "memset", scope: !1461, file: !1461, line: 57, type: !1542, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !939, retainedNodes: !5235)
!5235 = !{!5233, !5236, !5237}
!5236 = !DILocalVariable(name: "__ch", arg: 2, scope: !5234, file: !1461, line: 57, type: !118)
!5237 = !DILocalVariable(name: "__len", arg: 3, scope: !5234, file: !1461, line: 57, type: !180)
!5238 = !DILocation(line: 0, scope: !5234, inlinedAt: !5239)
!5239 = distinct !DILocation(line: 1137, column: 3, scope: !5227, inlinedAt: !5232)
!5240 = !DILocation(line: 59, column: 10, scope: !5234, inlinedAt: !5239)
!5241 = !DILocation(line: 137, column: 5, scope: !5222)
!5242 = !DILocation(line: 138, column: 11, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5203, file: !936, line: 138, column: 7)
!5244 = !DILocation(line: 138, column: 7, scope: !5203)
!5245 = !DILocation(line: 139, column: 5, scope: !5243)
!5246 = !DILocation(line: 143, column: 26, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5203, file: !936, line: 143, column: 7)
!5248 = !DILocation(line: 143, column: 41, scope: !5247)
!5249 = !DILocation(line: 143, column: 7, scope: !5203)
!5250 = !DILocation(line: 145, column: 15, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5252, file: !936, line: 145, column: 11)
!5252 = distinct !DILexicalBlock(scope: !5247, file: !936, line: 144, column: 5)
!5253 = !DILocation(line: 145, column: 11, scope: !5252)
!5254 = !DILocation(line: 146, column: 32, scope: !5251)
!5255 = !DILocation(line: 146, column: 16, scope: !5251)
!5256 = !DILocation(line: 146, column: 14, scope: !5251)
!5257 = !DILocation(line: 146, column: 9, scope: !5251)
!5258 = !DILocation(line: 286, column: 1, scope: !5203)
!5259 = !DISubprogram(name: "mbsinit", scope: !5260, file: !5260, line: 293, type: !5261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!5260 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!118, !5263}
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!5265 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1034, file: !1034, line: 27, type: !4250, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !5266)
!5266 = !{!5267, !5268, !5269, !5270}
!5267 = !DILocalVariable(name: "ptr", arg: 1, scope: !5265, file: !1034, line: 27, type: !178)
!5268 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5265, file: !1034, line: 27, type: !180)
!5269 = !DILocalVariable(name: "size", arg: 3, scope: !5265, file: !1034, line: 27, type: !180)
!5270 = !DILocalVariable(name: "nbytes", scope: !5265, file: !1034, line: 29, type: !180)
!5271 = !DILocation(line: 0, scope: !5265)
!5272 = !DILocation(line: 30, column: 7, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5265, file: !1034, line: 30, column: 7)
!5274 = !DILocalVariable(name: "ptr", arg: 1, scope: !5275, file: !4342, line: 2057, type: !178)
!5275 = distinct !DISubprogram(name: "rpl_realloc", scope: !4342, file: !4342, line: 2057, type: !4334, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !5276)
!5276 = !{!5274, !5277}
!5277 = !DILocalVariable(name: "size", arg: 2, scope: !5275, file: !4342, line: 2057, type: !180)
!5278 = !DILocation(line: 0, scope: !5275, inlinedAt: !5279)
!5279 = distinct !DILocation(line: 37, column: 10, scope: !5265)
!5280 = !DILocation(line: 2059, column: 24, scope: !5275, inlinedAt: !5279)
!5281 = !DILocation(line: 2059, column: 10, scope: !5275, inlinedAt: !5279)
!5282 = !DILocation(line: 37, column: 3, scope: !5265)
!5283 = !DILocation(line: 32, column: 7, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5273, file: !1034, line: 31, column: 5)
!5285 = !DILocation(line: 32, column: 13, scope: !5284)
!5286 = !DILocation(line: 33, column: 7, scope: !5284)
!5287 = !DILocation(line: 38, column: 1, scope: !5265)
!5288 = distinct !DISubprogram(name: "hard_locale", scope: !954, file: !954, line: 28, type: !5289, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !5291)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!186, !118}
!5291 = !{!5292, !5293}
!5292 = !DILocalVariable(name: "category", arg: 1, scope: !5288, file: !954, line: 28, type: !118)
!5293 = !DILocalVariable(name: "locale", scope: !5288, file: !954, line: 30, type: !5294)
!5294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5295)
!5295 = !{!5296}
!5296 = !DISubrange(count: 257)
!5297 = !DILocation(line: 0, scope: !5288)
!5298 = !DILocation(line: 30, column: 3, scope: !5288)
!5299 = !DILocation(line: 30, column: 8, scope: !5288)
!5300 = !DILocation(line: 32, column: 7, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5288, file: !954, line: 32, column: 7)
!5302 = !DILocation(line: 32, column: 7, scope: !5288)
!5303 = !DILocalVariable(name: "__s1", arg: 1, scope: !5304, file: !1154, line: 1359, type: !183)
!5304 = distinct !DISubprogram(name: "streq", scope: !1154, file: !1154, line: 1359, type: !1155, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !5305)
!5305 = !{!5303, !5306}
!5306 = !DILocalVariable(name: "__s2", arg: 2, scope: !5304, file: !1154, line: 1359, type: !183)
!5307 = !DILocation(line: 0, scope: !5304, inlinedAt: !5308)
!5308 = distinct !DILocation(line: 35, column: 9, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5288, file: !954, line: 35, column: 7)
!5310 = !DILocation(line: 1361, column: 11, scope: !5304, inlinedAt: !5308)
!5311 = !DILocation(line: 1361, column: 10, scope: !5304, inlinedAt: !5308)
!5312 = !DILocation(line: 35, column: 29, scope: !5309)
!5313 = !DILocation(line: 0, scope: !5304, inlinedAt: !5314)
!5314 = distinct !DILocation(line: 35, column: 32, scope: !5309)
!5315 = !DILocation(line: 1361, column: 11, scope: !5304, inlinedAt: !5314)
!5316 = !DILocation(line: 1361, column: 10, scope: !5304, inlinedAt: !5314)
!5317 = !DILocation(line: 35, column: 7, scope: !5288)
!5318 = !DILocation(line: 46, column: 3, scope: !5288)
!5319 = !DILocation(line: 47, column: 1, scope: !5288)
!5320 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1039, file: !1039, line: 154, type: !5321, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5323)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!118, !118, !177, !180}
!5323 = !{!5324, !5325, !5326}
!5324 = !DILocalVariable(name: "category", arg: 1, scope: !5320, file: !1039, line: 154, type: !118)
!5325 = !DILocalVariable(name: "buf", arg: 2, scope: !5320, file: !1039, line: 154, type: !177)
!5326 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5320, file: !1039, line: 154, type: !180)
!5327 = !DILocation(line: 0, scope: !5320)
!5328 = !DILocation(line: 159, column: 10, scope: !5320)
!5329 = !DILocation(line: 159, column: 3, scope: !5320)
!5330 = distinct !DISubprogram(name: "setlocale_null", scope: !1039, file: !1039, line: 186, type: !5331, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!183, !118}
!5333 = !{!5334}
!5334 = !DILocalVariable(name: "category", arg: 1, scope: !5330, file: !1039, line: 186, type: !118)
!5335 = !DILocation(line: 0, scope: !5330)
!5336 = !DILocation(line: 189, column: 10, scope: !5330)
!5337 = !DILocation(line: 189, column: 3, scope: !5330)
!5338 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1041, file: !1041, line: 35, type: !5331, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !5339)
!5339 = !{!5340, !5341}
!5340 = !DILocalVariable(name: "category", arg: 1, scope: !5338, file: !1041, line: 35, type: !118)
!5341 = !DILocalVariable(name: "result", scope: !5338, file: !1041, line: 37, type: !183)
!5342 = !DILocation(line: 0, scope: !5338)
!5343 = !DILocation(line: 37, column: 24, scope: !5338)
!5344 = !DILocation(line: 62, column: 3, scope: !5338)
!5345 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1041, file: !1041, line: 66, type: !5321, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !5346)
!5346 = !{!5347, !5348, !5349, !5350, !5351}
!5347 = !DILocalVariable(name: "category", arg: 1, scope: !5345, file: !1041, line: 66, type: !118)
!5348 = !DILocalVariable(name: "buf", arg: 2, scope: !5345, file: !1041, line: 66, type: !177)
!5349 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5345, file: !1041, line: 66, type: !180)
!5350 = !DILocalVariable(name: "result", scope: !5345, file: !1041, line: 111, type: !183)
!5351 = !DILocalVariable(name: "length", scope: !5352, file: !1041, line: 125, type: !180)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !1041, line: 124, column: 5)
!5353 = distinct !DILexicalBlock(scope: !5345, file: !1041, line: 113, column: 7)
!5354 = !DILocation(line: 0, scope: !5345)
!5355 = !DILocation(line: 0, scope: !5338, inlinedAt: !5356)
!5356 = distinct !DILocation(line: 111, column: 24, scope: !5345)
!5357 = !DILocation(line: 37, column: 24, scope: !5338, inlinedAt: !5356)
!5358 = !DILocation(line: 113, column: 14, scope: !5353)
!5359 = !DILocation(line: 113, column: 7, scope: !5345)
!5360 = !DILocation(line: 116, column: 19, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !1041, line: 116, column: 11)
!5362 = distinct !DILexicalBlock(scope: !5353, file: !1041, line: 114, column: 5)
!5363 = !DILocation(line: 116, column: 11, scope: !5362)
!5364 = !DILocation(line: 120, column: 16, scope: !5361)
!5365 = !DILocation(line: 120, column: 9, scope: !5361)
!5366 = !DILocation(line: 125, column: 23, scope: !5352)
!5367 = !DILocation(line: 0, scope: !5352)
!5368 = !DILocation(line: 126, column: 18, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5352, file: !1041, line: 126, column: 11)
!5370 = !DILocation(line: 126, column: 11, scope: !5352)
!5371 = !DILocation(line: 128, column: 39, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5369, file: !1041, line: 127, column: 9)
!5373 = !DILocalVariable(name: "__dest", arg: 1, scope: !5374, file: !1461, line: 26, type: !1464)
!5374 = distinct !DISubprogram(name: "memcpy", scope: !1461, file: !1461, line: 26, type: !1462, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !5375)
!5375 = !{!5373, !5376, !5377}
!5376 = !DILocalVariable(name: "__src", arg: 2, scope: !5374, file: !1461, line: 26, type: !1285)
!5377 = !DILocalVariable(name: "__len", arg: 3, scope: !5374, file: !1461, line: 26, type: !180)
!5378 = !DILocation(line: 0, scope: !5374, inlinedAt: !5379)
!5379 = distinct !DILocation(line: 128, column: 11, scope: !5372)
!5380 = !DILocation(line: 29, column: 10, scope: !5374, inlinedAt: !5379)
!5381 = !DILocation(line: 129, column: 11, scope: !5372)
!5382 = !DILocation(line: 133, column: 23, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !1041, line: 133, column: 15)
!5384 = distinct !DILexicalBlock(scope: !5369, file: !1041, line: 132, column: 9)
!5385 = !DILocation(line: 133, column: 15, scope: !5384)
!5386 = !DILocation(line: 138, column: 44, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5383, file: !1041, line: 134, column: 13)
!5388 = !DILocation(line: 0, scope: !5374, inlinedAt: !5389)
!5389 = distinct !DILocation(line: 138, column: 15, scope: !5387)
!5390 = !DILocation(line: 29, column: 10, scope: !5374, inlinedAt: !5389)
!5391 = !DILocation(line: 139, column: 15, scope: !5387)
!5392 = !DILocation(line: 139, column: 32, scope: !5387)
!5393 = !DILocation(line: 140, column: 13, scope: !5387)
!5394 = !DILocation(line: 0, scope: !5353)
!5395 = !DILocation(line: 145, column: 1, scope: !5345)
