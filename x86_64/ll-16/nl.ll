; ModuleID = 'src/nl.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.linebuffer = type { i64, i64, ptr }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@longopts = internal constant [14 x %struct.option] [%struct.option { ptr @.str.77, i32 1, ptr null, i32 104 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.80, i32 1, ptr null, i32 118 }, %struct.option { ptr @.str.81, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.82, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 108 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.85, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.86, i32 1, ptr null, i32 110 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.88, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !104
@header_type = internal global ptr @.str.91, align 8, !dbg !543
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !270
@header_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !279
@.str.24 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1, !dbg !188
@optarg = external local_unnamed_addr global ptr, align 8
@body_type = internal global ptr @.str.92, align 8, !dbg !547
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !246
@body_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !274
@.str.25 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1, !dbg !193
@footer_type = internal global ptr @.str.91, align 8, !dbg !549
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !272
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !281
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !646
@.str.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !638
@.str.1.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !640
@.str.2.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !642
@.str.3.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !644
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !648
@stderr = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !654
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !686
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !656
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !676
@.str.1.56 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !678
@.str.2.58 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !680
@.str.3.57 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !682
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !684
@.str.4.51 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !688
@.str.5.52 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !690
@.str.6.53 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !692
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !695
@.str.98 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !701
@.str.1.99 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !703
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !705
@.str.102 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !736
@.str.1.103 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !739
@.str.2.104 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !741
@.str.3.105 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !743
@.str.4.106 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !745
@.str.5.107 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !747
@.str.6.108 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !749
@.str.7.109 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !751
@.str.8.110 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !753
@.str.9.111 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !755
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.102, ptr @.str.1.103, ptr @.str.2.104, ptr @.str.3.105, ptr @.str.4.106, ptr @.str.5.107, ptr @.str.6.108, ptr @.str.7.109, ptr @.str.8.110, ptr @.str.9.111, ptr null], align 16, !dbg !757
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !768
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !782
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !817
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !824
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !784
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !826
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !772
@.str.10.114 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !786
@.str.11.112 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !788
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !790
@.str.13.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !792
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !794
@.str.122 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !832
@.str.1.123 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !835
@.str.2.124 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !837
@.str.3.125 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !839
@.str.4.126 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !841
@.str.5.127 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !843
@.str.6.128 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !848
@.str.7.129 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !850
@.str.8.130 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !852
@.str.9.131 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !857
@.str.10.132 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !862
@.str.11.133 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !864
@.str.12.134 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !869
@.str.13.135 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !871
@.str.14.136 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !876
@.str.15.137 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !881
@.str.16.138 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !886
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.143 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !891
@.str.18.144 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !893
@.str.19.145 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !895
@.str.20.146 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !897
@.str.21.147 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !899
@.str.22.148 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !901
@.str.23.149 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !903
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !905
@exit_failure = dso_local global i32 1, align 4, !dbg !913
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !919
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !922
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !924
@.str.167 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !926
@.str.178 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !929
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !932
@.str.1.183 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !947

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1048, metadata !DIExpression()), !dbg !1049
  %2 = icmp eq i32 %0, 0, !dbg !1050
  br i1 %2, label %8, label %3, !dbg !1052

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1053, !tbaa !1055
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !1053
  %6 = load ptr, ptr @program_name, align 8, !dbg !1053, !tbaa !1055
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !1053
  br label %57, !dbg !1053

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !1059
  %10 = load ptr, ptr @program_name, align 8, !dbg !1059, !tbaa !1055
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !1059
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1061
  %13 = load ptr, ptr @stdout, align 8, !dbg !1061, !tbaa !1055
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1061
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #40, !dbg !1062
  %16 = load ptr, ptr @stdout, align 8, !dbg !1062, !tbaa !1055
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1062
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #40, !dbg !1066
  %19 = load ptr, ptr @stdout, align 8, !dbg !1066, !tbaa !1055
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1066
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1069
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1069
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1070
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1070
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1071
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1071
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1072
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1072
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1073
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1073
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1074
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1074
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1075
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1075
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1076
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1076
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1077
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1077
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1078
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1078
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1079
  tail call fastcc void @oputs_(ptr noundef %31), !dbg !1079
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1080
  tail call fastcc void @oputs_(ptr noundef %32), !dbg !1080
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1081
  tail call fastcc void @oputs_(ptr noundef %33), !dbg !1081
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !1082
  %35 = load ptr, ptr @stdout, align 8, !dbg !1082, !tbaa !1055
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1082
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #40, !dbg !1083
  %38 = load ptr, ptr @stdout, align 8, !dbg !1083, !tbaa !1055
  %39 = tail call i32 @fputs_unlocked(ptr noundef %37, ptr noundef %38), !dbg !1083
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !1084
  %41 = load ptr, ptr @stdout, align 8, !dbg !1084, !tbaa !1055
  %42 = tail call i32 @fputs_unlocked(ptr noundef %40, ptr noundef %41), !dbg !1084
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1085, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1097, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr poison, metadata !1097, metadata !DIExpression()), !dbg !1102
  tail call void @emit_bug_reporting_address() #40, !dbg !1104
  %43 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %43, metadata !1100, metadata !DIExpression()), !dbg !1102
  %44 = icmp eq ptr %43, null, !dbg !1106
  br i1 %44, label %52, label %45, !dbg !1108

45:                                               ; preds = %8
  %46 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(4) @.str.72, i64 noundef 3) #41, !dbg !1109
  %47 = icmp eq i32 %46, 0, !dbg !1109
  br i1 %47, label %52, label %48, !dbg !1110

48:                                               ; preds = %45
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #40, !dbg !1111
  %50 = load ptr, ptr @stdout, align 8, !dbg !1111, !tbaa !1055
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !1111
  br label %52, !dbg !1113

52:                                               ; preds = %8, %45, %48
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1097, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1101, metadata !DIExpression()), !dbg !1102
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #40, !dbg !1114
  %54 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %53, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3) #40, !dbg !1114
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #40, !dbg !1115
  %56 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.76) #40, !dbg !1115
  br label %57

57:                                               ; preds = %52, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1116
  unreachable, !dbg !1116
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1117 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1121 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1127 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1130 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !320 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !324, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %0, metadata !325, metadata !DIExpression()), !dbg !1134
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1135, !tbaa !1136
  %3 = icmp eq i32 %2, -1, !dbg !1138
  br i1 %3, label %4, label %16, !dbg !1139

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.42) #40, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %5, metadata !326, metadata !DIExpression()), !dbg !1141
  %6 = icmp eq ptr %5, null, !dbg !1142
  br i1 %6, label %14, label %7, !dbg !1143

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1144, !tbaa !1145
  %9 = icmp eq i8 %8, 0, !dbg !1144
  br i1 %9, label %14, label %10, !dbg !1146

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1147, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !1153, metadata !DIExpression()), !dbg !1154
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.43) #41, !dbg !1156
  %12 = icmp eq i32 %11, 0, !dbg !1157
  %13 = zext i1 %12 to i32, !dbg !1146
  br label %14, !dbg !1146

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1158, !tbaa !1136
  br label %16, !dbg !1159

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1160
  %18 = icmp eq i32 %17, 0, !dbg !1160
  br i1 %18, label %22, label %19, !dbg !1162

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1163, !tbaa !1055
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1163
  br label %128, !dbg !1165

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !329, metadata !DIExpression()), !dbg !1134
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.44) #41, !dbg !1166
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %24, metadata !330, metadata !DIExpression()), !dbg !1134
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1168
  call void @llvm.dbg.value(metadata ptr %25, metadata !331, metadata !DIExpression()), !dbg !1134
  %26 = icmp eq ptr %25, null, !dbg !1169
  br i1 %26, label %58, label %27, !dbg !1170

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1171
  br i1 %28, label %58, label %29, !dbg !1172

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !332, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 0, metadata !336, metadata !DIExpression()), !dbg !1173
  %30 = icmp ult ptr %24, %25, !dbg !1174
  br i1 %30, label %31, label %52, !dbg !1175

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1134
  %33 = load ptr, ptr %32, align 8, !tbaa !1055
  br label %34, !dbg !1175

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !332, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %36, metadata !336, metadata !DIExpression()), !dbg !1173
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %37, metadata !332, metadata !DIExpression()), !dbg !1173
  %38 = load i8, ptr %35, align 1, !dbg !1176, !tbaa !1145
  %39 = sext i8 %38 to i64, !dbg !1176
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1176
  %41 = load i16, ptr %40, align 2, !dbg !1176, !tbaa !1177
  %42 = freeze i16 %41, !dbg !1179
  %43 = lshr i16 %42, 13, !dbg !1179
  %44 = and i16 %43, 1, !dbg !1179
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %46, metadata !336, metadata !DIExpression()), !dbg !1173
  %47 = icmp ult ptr %37, %25, !dbg !1174
  %48 = icmp ult i64 %46, 2, !dbg !1181
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1181
  br i1 %49, label %34, label %50, !dbg !1175, !llvm.loop !1182

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1184
  br i1 %51, label %52, label %54, !dbg !1186

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1186

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1186
  call void @llvm.dbg.value(metadata i8 %57, metadata !329, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %56, metadata !331, metadata !DIExpression()), !dbg !1134
  br label %58, !dbg !1187

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1134
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8 %60, metadata !329, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %59, metadata !331, metadata !DIExpression()), !dbg !1134
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.45) #41, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %61, metadata !337, metadata !DIExpression()), !dbg !1134
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %62, metadata !338, metadata !DIExpression()), !dbg !1134
  br label %63, !dbg !1190

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1134
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8 %65, metadata !329, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %64, metadata !338, metadata !DIExpression()), !dbg !1134
  %66 = load i8, ptr %64, align 1, !dbg !1191, !tbaa !1145
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1192

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1193
  %69 = load i8, ptr %68, align 1, !dbg !1196, !tbaa !1145
  %70 = icmp eq i8 %69, 45, !dbg !1197
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1198
  br label %72, !dbg !1198

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8 %73, metadata !329, metadata !DIExpression()), !dbg !1134
  %74 = tail call ptr @__ctype_b_loc() #43, !dbg !1199
  %75 = load ptr, ptr %74, align 8, !dbg !1199, !tbaa !1055
  %76 = sext i8 %66 to i64, !dbg !1199
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1199
  %78 = load i16, ptr %77, align 2, !dbg !1199, !tbaa !1177
  %79 = and i16 %78, 8192, !dbg !1199
  %80 = icmp eq i16 %79, 0, !dbg !1199
  br i1 %80, label %96, label %81, !dbg !1201

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1202
  br i1 %82, label %98, label %83, !dbg !1205

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1206
  %85 = load i8, ptr %84, align 1, !dbg !1206, !tbaa !1145
  %86 = sext i8 %85 to i64, !dbg !1206
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1206
  %88 = load i16, ptr %87, align 2, !dbg !1206, !tbaa !1177
  %89 = and i16 %88, 8192, !dbg !1206
  %90 = icmp eq i16 %89, 0, !dbg !1206
  br i1 %90, label %91, label %98, !dbg !1207

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1208
  %93 = icmp ne i8 %92, 0, !dbg !1208
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1210
  br i1 %95, label %96, label %98, !dbg !1210

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %97, metadata !338, metadata !DIExpression()), !dbg !1134
  br label %63, !dbg !1190, !llvm.loop !1212

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1214
  %100 = load ptr, ptr @stdout, align 8, !dbg !1214, !tbaa !1055
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1214
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1147, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !393, metadata !DIExpression()), !dbg !1134
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.59, i64 noundef 6) #41, !dbg !1235
  %103 = icmp eq i32 %102, 0, !dbg !1235
  br i1 %103, label %107, label %104, !dbg !1237

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.60, i64 noundef 9) #41, !dbg !1238
  %106 = icmp eq i32 %105, 0, !dbg !1238
  br i1 %106, label %107, label %110, !dbg !1239

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1240
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #40, !dbg !1240
  br label %113, !dbg !1242

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1243
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #40, !dbg !1243
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1245, !tbaa !1055
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.65, ptr noundef %114), !dbg !1245
  %116 = load ptr, ptr @stdout, align 8, !dbg !1246, !tbaa !1055
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.66, ptr noundef %116), !dbg !1246
  %118 = ptrtoint ptr %64 to i64, !dbg !1247
  %119 = sub i64 %118, %99, !dbg !1247
  %120 = load ptr, ptr @stdout, align 8, !dbg !1247, !tbaa !1055
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1247
  %122 = load ptr, ptr @stdout, align 8, !dbg !1248, !tbaa !1055
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %122), !dbg !1248
  %124 = load ptr, ptr @stdout, align 8, !dbg !1249, !tbaa !1055
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.68, ptr noundef %124), !dbg !1249
  %126 = load ptr, ptr @stdout, align 8, !dbg !1250, !tbaa !1055
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1250
  br label %128, !dbg !1251

128:                                              ; preds = %113, %19
  ret void, !dbg !1251
}

; Function Attrs: nounwind
declare !dbg !1252 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1256 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1260 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1262 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1265 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1268 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1271 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1274 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1280 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1281 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1287 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1292, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %1, metadata !1293, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8 1, metadata !1296, metadata !DIExpression()), !dbg !1304
  %5 = load ptr, ptr %1, align 8, !dbg !1305, !tbaa !1055
  tail call void @set_program_name(ptr noundef %5) #40, !dbg !1306
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.20) #40, !dbg !1307
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #40, !dbg !1308
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.21) #40, !dbg !1309
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1310
  br label %10, !dbg !1311

10:                                               ; preds = %13, %2
  %11 = phi i8 [ 1, %2 ], [ %14, %13 ], !dbg !1304
  call void @llvm.dbg.value(metadata i8 %11, metadata !1296, metadata !DIExpression()), !dbg !1304
  %12 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %12, metadata !1294, metadata !DIExpression()), !dbg !1304
  switch i32 %12, label %13 [
    i32 -1, label %122
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
    i32 -130, label %116
    i32 -131, label %117
  ], !dbg !1311

13:                                               ; preds = %10, %103, %107, %115, %112, %57, %65, %66, %61, %27, %29, %21, %23, %15, %17, %48, %46, %42, %41, %37, %33
  %14 = phi i8 [ %11, %112 ], [ %11, %115 ], [ %11, %57 ], [ %11, %61 ], [ %11, %65 ], [ 0, %66 ], [ %11, %48 ], [ %11, %46 ], [ %11, %42 ], [ %11, %41 ], [ %11, %37 ], [ %11, %33 ], [ %11, %27 ], [ 0, %29 ], [ %11, %21 ], [ 0, %23 ], [ %11, %15 ], [ 0, %17 ], [ %11, %107 ], [ %11, %103 ], [ 0, %10 ]
  br label %10, !dbg !1304, !llvm.loop !1313

15:                                               ; preds = %10
  %16 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @header_type, ptr noundef nonnull @header_regex, ptr noundef nonnull @header_fastmap), !dbg !1315
  br i1 %16, label %13, label %17, !dbg !1317

17:                                               ; preds = %15
  %18 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1318
  %19 = load ptr, ptr @optarg, align 8, !dbg !1318, !tbaa !1055
  %20 = call ptr @quote(ptr noundef %19) #40, !dbg !1318
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %20) #40, !dbg !1318
  call void @llvm.dbg.value(metadata i8 0, metadata !1296, metadata !DIExpression()), !dbg !1304
  br label %13, !dbg !1320

21:                                               ; preds = %10
  %22 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @body_type, ptr noundef nonnull @body_regex, ptr noundef nonnull @body_fastmap), !dbg !1321
  br i1 %22, label %13, label %23, !dbg !1323

23:                                               ; preds = %21
  %24 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1324
  %25 = load ptr, ptr @optarg, align 8, !dbg !1324, !tbaa !1055
  %26 = call ptr @quote(ptr noundef %25) #40, !dbg !1324
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %24, ptr noundef %26) #40, !dbg !1324
  call void @llvm.dbg.value(metadata i8 0, metadata !1296, metadata !DIExpression()), !dbg !1304
  br label %13, !dbg !1326

27:                                               ; preds = %10
  %28 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @footer_type, ptr noundef nonnull @footer_regex, ptr noundef nonnull @footer_fastmap), !dbg !1327
  br i1 %28, label %13, label %29, !dbg !1329

29:                                               ; preds = %27
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1330
  %31 = load ptr, ptr @optarg, align 8, !dbg !1330, !tbaa !1055
  %32 = call ptr @quote(ptr noundef %31) #40, !dbg !1330
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30, ptr noundef %32) #40, !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1296, metadata !DIExpression()), !dbg !1304
  br label %13, !dbg !1332

33:                                               ; preds = %10
  %34 = load ptr, ptr @optarg, align 8, !dbg !1333, !tbaa !1055
  %35 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !1334
  %36 = call i64 @xdectoimax(ptr noundef %34, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %35, i32 noundef 0) #40, !dbg !1335
  store i64 %36, ptr @starting_line_number, align 8, !dbg !1336, !tbaa !1337
  br label %13, !dbg !1339

37:                                               ; preds = %10
  %38 = load ptr, ptr @optarg, align 8, !dbg !1340, !tbaa !1055
  %39 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #40, !dbg !1341
  %40 = call i64 @xdectoimax(ptr noundef %38, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %39, i32 noundef 0) #40, !dbg !1342
  store i64 %40, ptr @page_incr, align 8, !dbg !1343, !tbaa !1337
  br label %13, !dbg !1344

41:                                               ; preds = %10
  store i1 true, ptr @reset_numbers, align 1, !dbg !1345
  br label %13, !dbg !1346

42:                                               ; preds = %10
  %43 = load ptr, ptr @optarg, align 8, !dbg !1347, !tbaa !1055
  %44 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !1348
  %45 = call i64 @xnumtoimax(ptr noundef %43, i32 noundef 10, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %44, i32 noundef 0, i32 noundef 6) #40, !dbg !1349
  store i64 %45, ptr @blank_join, align 8, !dbg !1350, !tbaa !1337
  br label %13, !dbg !1351

46:                                               ; preds = %10
  %47 = load ptr, ptr @optarg, align 8, !dbg !1352, !tbaa !1055
  store ptr %47, ptr @separator_str, align 8, !dbg !1353, !tbaa !1055
  br label %13, !dbg !1354

48:                                               ; preds = %10
  %49 = load ptr, ptr @optarg, align 8, !dbg !1355, !tbaa !1055
  %50 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !1356
  %51 = call i64 @xnumtoimax(ptr noundef %49, i32 noundef 10, i64 noundef 1, i64 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef %50, i32 noundef 0, i32 noundef 4) #40, !dbg !1357
  %52 = trunc i64 %51 to i32, !dbg !1357
  store i32 %52, ptr @lineno_width, align 4, !dbg !1358, !tbaa !1136
  br label %13, !dbg !1359

53:                                               ; preds = %10
  %54 = load ptr, ptr @optarg, align 8, !dbg !1360, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %54, metadata !1147, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !1153, metadata !DIExpression()), !dbg !1362
  %55 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.31) #41, !dbg !1364
  %56 = icmp eq i32 %55, 0, !dbg !1365
  br i1 %56, label %57, label %58, !dbg !1366

57:                                               ; preds = %53
  store ptr @FORMAT_LEFT, ptr @lineno_format, align 8, !dbg !1367, !tbaa !1055
  br label %13, !dbg !1368

58:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr %54, metadata !1147, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata ptr @.str.32, metadata !1153, metadata !DIExpression()), !dbg !1369
  %59 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.32) #41, !dbg !1372
  %60 = icmp eq i32 %59, 0, !dbg !1373
  br i1 %60, label %61, label %62, !dbg !1374

61:                                               ; preds = %58
  store ptr @FORMAT_RIGHT_NOLZ, ptr @lineno_format, align 8, !dbg !1375, !tbaa !1055
  br label %13, !dbg !1376

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr %54, metadata !1147, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !1153, metadata !DIExpression()), !dbg !1377
  %63 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.33) #41, !dbg !1380
  %64 = icmp eq i32 %63, 0, !dbg !1381
  br i1 %64, label %65, label %66, !dbg !1382

65:                                               ; preds = %62
  store ptr @FORMAT_RIGHT_LZ, ptr @lineno_format, align 8, !dbg !1383, !tbaa !1055
  br label %13, !dbg !1384

66:                                               ; preds = %62
  %67 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !1385
  %68 = load ptr, ptr @optarg, align 8, !dbg !1385, !tbaa !1055
  %69 = call ptr @quote(ptr noundef %68) #40, !dbg !1385
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %69) #40, !dbg !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !1296, metadata !DIExpression()), !dbg !1304
  br label %13

70:                                               ; preds = %10
  %71 = load ptr, ptr @optarg, align 8, !dbg !1387, !tbaa !1055
  %72 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %71) #41, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %72, metadata !1295, metadata !DIExpression()), !dbg !1304
  %73 = call i64 @__ctype_get_mb_cur_max() #40, !dbg !1389
  %74 = icmp ugt i64 %73, 1, !dbg !1390
  br i1 %74, label %75, label %109, !dbg !1391

75:                                               ; preds = %70
  %76 = load ptr, ptr @optarg, align 8, !dbg !1392, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %76, metadata !1297, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1302, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1393
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %76, metadata !1297, metadata !DIExpression()), !dbg !1393
  %77 = icmp sgt i64 %72, 0, !dbg !1394
  br i1 %77, label %78, label %107, !dbg !1397

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %76, i64 %72, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %79, metadata !1302, metadata !DIExpression()), !dbg !1393
  %80 = ptrtoint ptr %79 to i64
  call void @llvm.dbg.value(metadata ptr %76, metadata !1297, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 poison, metadata !1303, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %76, metadata !1399, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1410, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1425
  %81 = load i8, ptr %76, align 1, !dbg !1427, !tbaa !1145
  call void @llvm.dbg.value(metadata i8 %81, metadata !1411, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %81, metadata !1428, metadata !DIExpression()), !dbg !1433
  %82 = icmp sgt i8 %81, -1, !dbg !1436
  br i1 %82, label %87, label %83, !dbg !1437

83:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1412, metadata !DIExpression()), !dbg !1439
  store i32 0, ptr %3, align 4, !dbg !1440, !tbaa !1441
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %4, metadata !1423, metadata !DIExpression(DW_OP_deref)), !dbg !1425
  %84 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %76, i64 noundef %72, ptr noundef nonnull %3) #40, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %84, metadata !1424, metadata !DIExpression()), !dbg !1425
  %85 = icmp slt i64 %84, 0, !dbg !1445
  %86 = select i1 %85, i64 1, i64 %84, !dbg !1447, !prof !1448
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1449
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i64 [ %86, %83 ], [ 1, %78 ], !dbg !1425
  %89 = getelementptr inbounds i8, ptr %76, i64 %88, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %89, metadata !1297, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 poison, metadata !1303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1393
  %90 = icmp slt i64 %88, %72, !dbg !1394
  br i1 %90, label %91, label %103, !dbg !1397

91:                                               ; preds = %87
  call void @llvm.dbg.value(metadata ptr %89, metadata !1297, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 poison, metadata !1303, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %89, metadata !1399, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1410, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1425
  %92 = load i8, ptr %89, align 1, !dbg !1427, !tbaa !1145
  call void @llvm.dbg.value(metadata i8 %92, metadata !1411, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %92, metadata !1428, metadata !DIExpression()), !dbg !1433
  %93 = icmp sgt i8 %92, -1, !dbg !1436
  br i1 %93, label %100, label %94, !dbg !1437

94:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1412, metadata !DIExpression()), !dbg !1439
  store i32 0, ptr %3, align 4, !dbg !1440, !tbaa !1441
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40, !dbg !1443
  %95 = ptrtoint ptr %89 to i64, !dbg !1451
  %96 = sub i64 %80, %95, !dbg !1451
  call void @llvm.dbg.value(metadata ptr %4, metadata !1423, metadata !DIExpression(DW_OP_deref)), !dbg !1425
  %97 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %89, i64 noundef %96, ptr noundef nonnull %3) #40, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %97, metadata !1424, metadata !DIExpression()), !dbg !1425
  %98 = icmp slt i64 %97, 0, !dbg !1445
  %99 = select i1 %98, i64 1, i64 %97, !dbg !1447, !prof !1448
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1449
  br label %100

100:                                              ; preds = %91, %94
  %101 = phi i64 [ %99, %94 ], [ 1, %91 ], !dbg !1425
  %102 = getelementptr inbounds i8, ptr %89, i64 %101, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %102, metadata !1297, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 poison, metadata !1303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1393
  br i1 %90, label %107, label %103, !dbg !1452

103:                                              ; preds = %87, %100
  %104 = load ptr, ptr @section_del, align 8, !dbg !1453, !tbaa !1055
  %105 = load ptr, ptr @optarg, align 8, !dbg !1455, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %104, metadata !1456, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata ptr %105, metadata !1463, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %72, metadata !1464, metadata !DIExpression()), !dbg !1465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %104, ptr noundef nonnull align 1 %105, i64 noundef %72, i1 noundef false) #40, !dbg !1467
  %106 = getelementptr inbounds i8, ptr %104, i64 %72, !dbg !1467
  call void @llvm.dbg.value(metadata ptr %106, metadata !1468, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata !1064, metadata !1471, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 2, metadata !1472, metadata !DIExpression()), !dbg !1473
  store i16 58, ptr %106, align 1, !dbg !1475
  br label %13, !dbg !1476

107:                                              ; preds = %75, %100
  %108 = load ptr, ptr @optarg, align 8, !dbg !1477, !tbaa !1055
  store ptr %108, ptr @section_del, align 8, !dbg !1478, !tbaa !1055
  br label %13

109:                                              ; preds = %70
  %110 = icmp eq i64 %72, 1, !dbg !1479
  %111 = load ptr, ptr @optarg, align 8, !dbg !1482, !tbaa !1055
  br i1 %110, label %112, label %115, !dbg !1483

112:                                              ; preds = %109
  %113 = load i8, ptr %111, align 1, !dbg !1484, !tbaa !1145
  %114 = load ptr, ptr @section_del, align 8, !dbg !1485, !tbaa !1055
  store i8 %113, ptr %114, align 1, !dbg !1486, !tbaa !1145
  br label %13, !dbg !1487

115:                                              ; preds = %109
  store ptr %111, ptr @section_del, align 8, !dbg !1488, !tbaa !1055
  br label %13

116:                                              ; preds = %10
  call void @usage(i32 noundef 0) #44, !dbg !1489
  unreachable, !dbg !1489

117:                                              ; preds = %10
  %118 = load ptr, ptr @stdout, align 8, !dbg !1490, !tbaa !1055
  %119 = load ptr, ptr @Version, align 8, !dbg !1490, !tbaa !1055
  %120 = call ptr @proper_name_lite(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37) #40, !dbg !1490
  %121 = call ptr @proper_name_lite(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #40, !dbg !1490
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %118, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, ptr noundef %119, ptr noundef %120, ptr noundef %121, ptr noundef null) #40, !dbg !1490
  call void @exit(i32 noundef 0) #42, !dbg !1490
  unreachable, !dbg !1490

122:                                              ; preds = %10
  %123 = icmp eq i8 %11, 0, !dbg !1491
  br i1 %123, label %124, label %125, !dbg !1493

124:                                              ; preds = %122
  call void @usage(i32 noundef 1) #44, !dbg !1494
  unreachable, !dbg !1494

125:                                              ; preds = %122
  %126 = load ptr, ptr @section_del, align 8, !dbg !1495, !tbaa !1055
  %127 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %126) #41, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %127, metadata !1295, metadata !DIExpression()), !dbg !1304
  store i64 %127, ptr @section_del_len, align 8, !dbg !1497, !tbaa !1337
  %128 = mul i64 %127, 3, !dbg !1498
  store i64 %128, ptr @header_del_len, align 8, !dbg !1499, !tbaa !1337
  %129 = add i64 %128, 1, !dbg !1500
  %130 = call noalias nonnull ptr @xmalloc(i64 noundef %129) #45, !dbg !1501
  store ptr %130, ptr @header_del, align 8, !dbg !1502, !tbaa !1055
  %131 = load ptr, ptr @section_del, align 8, !dbg !1503, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %130, metadata !1504, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %131, metadata !1510, metadata !DIExpression()), !dbg !1511
  %132 = call ptr @stpcpy(ptr nonnull %130, ptr %131), !dbg !1513
  call void @llvm.dbg.value(metadata ptr %132, metadata !1504, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata ptr %131, metadata !1510, metadata !DIExpression()), !dbg !1514
  %133 = call ptr @stpcpy(ptr %132, ptr %131), !dbg !1516
  call void @llvm.dbg.value(metadata ptr %133, metadata !1504, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata ptr %131, metadata !1510, metadata !DIExpression()), !dbg !1517
  %134 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %133, ptr noundef nonnull dereferenceable(1) %131), !dbg !1519
  %135 = shl i64 %127, 1, !dbg !1520
  store i64 %135, ptr @body_del_len, align 8, !dbg !1521, !tbaa !1337
  %136 = load ptr, ptr @header_del, align 8, !dbg !1522, !tbaa !1055
  %137 = getelementptr inbounds i8, ptr %136, i64 %127, !dbg !1523
  store ptr %137, ptr @body_del, align 8, !dbg !1524, !tbaa !1055
  store i64 %127, ptr @footer_del_len, align 8, !dbg !1525, !tbaa !1337
  %138 = getelementptr inbounds i8, ptr %137, i64 %127, !dbg !1526
  store ptr %138, ptr @footer_del, align 8, !dbg !1527, !tbaa !1055
  call void @initbuffer(ptr noundef nonnull @line_buf) #40, !dbg !1528
  %139 = load ptr, ptr @separator_str, align 8, !dbg !1529, !tbaa !1055
  %140 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %139) #41, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %140, metadata !1295, metadata !DIExpression()), !dbg !1304
  %141 = load i32, ptr @lineno_width, align 4, !dbg !1531, !tbaa !1136
  %142 = sext i32 %141 to i64, !dbg !1531
  %143 = add i64 %140, 1, !dbg !1532
  %144 = add i64 %143, %142, !dbg !1533
  %145 = call noalias nonnull ptr @xmalloc(i64 noundef %144) #45, !dbg !1534
  store ptr %145, ptr @print_no_line_fmt, align 8, !dbg !1535, !tbaa !1055
  %146 = load i32, ptr @lineno_width, align 4, !dbg !1536, !tbaa !1136
  %147 = sext i32 %146 to i64, !dbg !1536
  %148 = add i64 %140, %147, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %145, metadata !1538, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 32, metadata !1543, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %148, metadata !1544, metadata !DIExpression()), !dbg !1545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %145, i8 noundef 32, i64 noundef %148, i1 noundef false) #40, !dbg !1547
  %149 = getelementptr inbounds i8, ptr %145, i64 %148, !dbg !1548
  store i8 0, ptr %149, align 1, !dbg !1549, !tbaa !1145
  %150 = load i64, ptr @starting_line_number, align 8, !dbg !1550, !tbaa !1337
  store i64 %150, ptr @line_no, align 8, !dbg !1551, !tbaa !1337
  %151 = load ptr, ptr @body_type, align 8, !dbg !1552, !tbaa !1055
  store ptr %151, ptr @current_type, align 8, !dbg !1553, !tbaa !1055
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1554, !tbaa !1055
  %152 = load i32, ptr @optind, align 4, !dbg !1555, !tbaa !1136
  %153 = icmp eq i32 %152, %0, !dbg !1557
  br i1 %153, label %156, label %154, !dbg !1558

154:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8 %11, metadata !1296, metadata !DIExpression()), !dbg !1304
  %155 = icmp slt i32 %152, %0, !dbg !1559
  br i1 %155, label %159, label %173, !dbg !1562

156:                                              ; preds = %125
  %157 = call fastcc zeroext i1 @nl_file(ptr noundef nonnull @.str.39), !dbg !1563
  %158 = zext i1 %157 to i8, !dbg !1564
  call void @llvm.dbg.value(metadata i8 %158, metadata !1296, metadata !DIExpression()), !dbg !1304
  br label %173, !dbg !1565

159:                                              ; preds = %154, %159
  %160 = phi i32 [ %171, %159 ], [ %152, %154 ]
  %161 = phi i8 [ %169, %159 ], [ %11, %154 ]
  call void @llvm.dbg.value(metadata i8 %161, metadata !1296, metadata !DIExpression()), !dbg !1304
  %162 = sext i32 %160 to i64, !dbg !1566
  %163 = getelementptr inbounds ptr, ptr %1, i64 %162, !dbg !1566
  %164 = load ptr, ptr %163, align 8, !dbg !1566, !tbaa !1055
  %165 = call fastcc zeroext i1 @nl_file(ptr noundef %164), !dbg !1567
  %166 = and i8 %161, 1, !dbg !1568
  %167 = icmp ne i8 %166, 0, !dbg !1568
  %168 = and i1 %167, %165, !dbg !1568
  %169 = zext i1 %168 to i8, !dbg !1568
  call void @llvm.dbg.value(metadata i8 %169, metadata !1296, metadata !DIExpression()), !dbg !1304
  %170 = load i32, ptr @optind, align 4, !dbg !1569, !tbaa !1136
  %171 = add nsw i32 %170, 1, !dbg !1569
  store i32 %171, ptr @optind, align 4, !dbg !1569, !tbaa !1136
  %172 = icmp slt i32 %171, %0, !dbg !1559
  br i1 %172, label %159, label %173, !dbg !1562, !llvm.loop !1570

173:                                              ; preds = %159, %154, %156
  %174 = phi i8 [ %158, %156 ], [ %11, %154 ], [ %169, %159 ], !dbg !1304
  call void @llvm.dbg.value(metadata i8 %174, metadata !1296, metadata !DIExpression()), !dbg !1304
  %175 = load i1, ptr @have_read_stdin, align 1, !dbg !1572
  br i1 %175, label %176, label %183, !dbg !1574

176:                                              ; preds = %173
  %177 = load ptr, ptr @stdin, align 8, !dbg !1575, !tbaa !1055
  %178 = call i32 @rpl_fclose(ptr noundef %177) #40, !dbg !1576
  %179 = icmp eq i32 %178, -1, !dbg !1577
  br i1 %179, label %180, label %183, !dbg !1578

180:                                              ; preds = %176
  %181 = tail call ptr @__errno_location() #43, !dbg !1579
  %182 = load i32, ptr %181, align 4, !dbg !1579, !tbaa !1136
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %182, ptr noundef nonnull @.str.39) #40, !dbg !1579
  unreachable, !dbg !1579

183:                                              ; preds = %176, %173
  %184 = and i8 %174, 1, !dbg !1580
  %185 = icmp eq i8 %184, 0, !dbg !1580
  %186 = zext i1 %185 to i32, !dbg !1580
  ret i32 %186, !dbg !1581
}

; Function Attrs: nounwind
declare !dbg !1582 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1585 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1586 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1589 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @build_type_arg(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !dbg !1595 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1600, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %1, metadata !1601, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata ptr %2, metadata !1602, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1605
  %4 = load ptr, ptr @optarg, align 8, !dbg !1606, !tbaa !1055
  %5 = load i8, ptr %4, align 1, !dbg !1607, !tbaa !1145
  %6 = sext i8 %5 to i32, !dbg !1607
  switch i32 %6, label %17 [
    i32 97, label %7
    i32 116, label %7
    i32 110, label %7
    i32 112, label %8
  ], !dbg !1608

7:                                                ; preds = %3, %3, %3
  store ptr %4, ptr %0, align 8, !dbg !1609, !tbaa !1055
  br label %17, !dbg !1611

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1612
  store ptr %9, ptr @optarg, align 8, !dbg !1612, !tbaa !1055
  store ptr %4, ptr %0, align 8, !dbg !1613, !tbaa !1055
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %1, i64 0, i32 4, !dbg !1614
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1615
  store ptr %2, ptr %10, align 8, !dbg !1616, !tbaa !1617
  %11 = getelementptr inbounds %struct.re_pattern_buffer, ptr %1, i64 0, i32 5, !dbg !1619
  store ptr null, ptr %11, align 8, !dbg !1620, !tbaa !1621
  store i64 710, ptr @re_syntax_options, align 8, !dbg !1622, !tbaa !1337
  %12 = load ptr, ptr @optarg, align 8, !dbg !1623, !tbaa !1055
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #41, !dbg !1624
  %14 = tail call ptr @re_compile_pattern(ptr noundef %12, i64 noundef %13, ptr noundef nonnull %1) #40, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %14, metadata !1603, metadata !DIExpression()), !dbg !1605
  %15 = icmp eq ptr %14, null, !dbg !1626
  br i1 %15, label %17, label %16, !dbg !1628

16:                                               ; preds = %8
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull %14) #40, !dbg !1629
  unreachable, !dbg !1629

17:                                               ; preds = %3, %8, %7
  %18 = phi i1 [ true, %8 ], [ true, %7 ], [ false, %3 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1605
  ret i1 %18, !dbg !1630
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1631 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1634 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1637 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

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
define internal fastcc zeroext i1 @nl_file(ptr noundef %0) unnamed_addr #10 !dbg !1644 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1648, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata ptr %0, metadata !1147, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !1153, metadata !DIExpression()), !dbg !1652
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.39) #41, !dbg !1655
  %3 = icmp eq i32 %2, 0, !dbg !1656
  br i1 %3, label %4, label %6, !dbg !1657

4:                                                ; preds = %1
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1658
  %5 = load ptr, ptr @stdin, align 8, !dbg !1660, !tbaa !1055, !nonnull !1064
  call void @llvm.dbg.value(metadata ptr %5, metadata !1649, metadata !DIExpression()), !dbg !1651
  br label %12, !dbg !1661

6:                                                ; preds = %1
  %7 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.94) #40, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %7, metadata !1649, metadata !DIExpression()), !dbg !1651
  %8 = icmp eq ptr %7, null, !dbg !1664
  br i1 %8, label %9, label %12, !dbg !1666

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #43, !dbg !1667
  %11 = load i32, ptr %10, align 4, !dbg !1667, !tbaa !1136
  br label %242, !dbg !1669

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %5, %4 ], [ %7, %6 ], !dbg !1670
  call void @llvm.dbg.value(metadata ptr %13, metadata !1649, metadata !DIExpression()), !dbg !1651
  tail call void @fadvise(ptr noundef nonnull %13, i32 noundef 2) #40, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %13, metadata !1672, metadata !DIExpression()), !dbg !1677
  br label %14, !dbg !1679

14:                                               ; preds = %209, %12
  %15 = tail call ptr @readlinebuffer(ptr noundef nonnull @line_buf, ptr noundef %13) #40, !dbg !1680
  %16 = icmp eq ptr %15, null, !dbg !1679
  br i1 %16, label %222, label %17, !dbg !1679

17:                                               ; preds = %14
  %18 = load i64, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 1), align 8, !dbg !1681, !tbaa !1689
  %19 = add nsw i64 %18, -1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %19, metadata !1686, metadata !DIExpression()), !dbg !1692
  %20 = load i64, ptr @section_del_len, align 8, !dbg !1693, !tbaa !1337
  %21 = icmp ult i64 %19, %20, !dbg !1695
  %22 = load i64, ptr @footer_del_len, align 8
  %23 = icmp ult i64 %22, %20
  %24 = select i1 %21, i1 true, i1 %23, !dbg !1696
  br i1 %24, label %98, label %25, !dbg !1696

25:                                               ; preds = %17
  %26 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1697, !tbaa !1698
  %27 = load ptr, ptr @section_del, align 8, !dbg !1699, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %26, metadata !1700, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %27, metadata !1705, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %20, metadata !1706, metadata !DIExpression()), !dbg !1707
  %28 = tail call i32 @bcmp(ptr %26, ptr %27, i64 %20), !dbg !1709
  %29 = icmp eq i32 %28, 0, !dbg !1710
  br i1 %29, label %30, label %98, !dbg !1711

30:                                               ; preds = %25
  %31 = load i64, ptr @header_del_len, align 8, !dbg !1712, !tbaa !1337
  %32 = icmp eq i64 %19, %31, !dbg !1714
  br i1 %32, label %33, label %37, !dbg !1715

33:                                               ; preds = %30
  %34 = load ptr, ptr @header_del, align 8, !dbg !1716, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %26, metadata !1700, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %34, metadata !1705, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %31, metadata !1706, metadata !DIExpression()), !dbg !1717
  %35 = tail call i32 @bcmp(ptr %26, ptr %34, i64 %19), !dbg !1719
  %36 = icmp eq i32 %35, 0, !dbg !1720
  br i1 %36, label %50, label %37, !dbg !1721

37:                                               ; preds = %33, %30
  %38 = load i64, ptr @body_del_len, align 8, !dbg !1722, !tbaa !1337
  %39 = icmp eq i64 %19, %38, !dbg !1724
  br i1 %39, label %40, label %44, !dbg !1725

40:                                               ; preds = %37
  %41 = load ptr, ptr @body_del, align 8, !dbg !1726, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %26, metadata !1700, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata ptr %41, metadata !1705, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i64 %38, metadata !1706, metadata !DIExpression()), !dbg !1727
  %42 = tail call i32 @bcmp(ptr %26, ptr %41, i64 %19), !dbg !1729
  %43 = icmp eq i32 %42, 0, !dbg !1730
  br i1 %43, label %66, label %44, !dbg !1731

44:                                               ; preds = %40, %37
  %45 = icmp eq i64 %19, %22, !dbg !1732
  br i1 %45, label %46, label %98, !dbg !1734

46:                                               ; preds = %44
  %47 = load ptr, ptr @footer_del, align 8, !dbg !1735, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %26, metadata !1700, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %47, metadata !1705, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i64 %22, metadata !1706, metadata !DIExpression()), !dbg !1736
  %48 = tail call i32 @bcmp(ptr %26, ptr %47, i64 %19), !dbg !1738
  %49 = icmp eq i32 %48, 0, !dbg !1739
  br i1 %49, label %82, label %98, !dbg !1740

50:                                               ; preds = %33
  %51 = load ptr, ptr @header_type, align 8, !dbg !1741, !tbaa !1055
  store ptr %51, ptr @current_type, align 8, !dbg !1745, !tbaa !1055
  store ptr @header_regex, ptr @current_regex, align 8, !dbg !1746, !tbaa !1055
  %52 = load i1, ptr @reset_numbers, align 1, !dbg !1747
  br i1 %52, label %55, label %53, !dbg !1751

53:                                               ; preds = %50
  %54 = load i64, ptr @starting_line_number, align 8, !dbg !1752, !tbaa !1337
  store i64 %54, ptr @line_no, align 8, !dbg !1754, !tbaa !1337
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1755
  br label %55, !dbg !1756

55:                                               ; preds = %53, %50
  call void @llvm.dbg.value(metadata i32 10, metadata !1757, metadata !DIExpression()), !dbg !1763
  %56 = load ptr, ptr @stdout, align 8, !dbg !1765, !tbaa !1055
  %57 = getelementptr inbounds %struct._IO_FILE, ptr %56, i64 0, i32 5, !dbg !1765
  %58 = load ptr, ptr %57, align 8, !dbg !1765, !tbaa !1766
  %59 = getelementptr inbounds %struct._IO_FILE, ptr %56, i64 0, i32 6, !dbg !1765
  %60 = load ptr, ptr %59, align 8, !dbg !1765, !tbaa !1768
  %61 = icmp ult ptr %58, %60, !dbg !1765
  br i1 %61, label %64, label %62, !dbg !1765, !prof !1769

62:                                               ; preds = %55
  %63 = tail call i32 @__overflow(ptr noundef nonnull %56, i32 noundef 10) #40, !dbg !1765
  br label %209, !dbg !1765

64:                                               ; preds = %55
  %65 = getelementptr inbounds i8, ptr %58, i64 1, !dbg !1765
  store ptr %65, ptr %57, align 8, !dbg !1765, !tbaa !1766
  store i8 10, ptr %58, align 1, !dbg !1765, !tbaa !1145
  br label %209, !dbg !1765

66:                                               ; preds = %40
  %67 = load ptr, ptr @body_type, align 8, !dbg !1770, !tbaa !1055
  store ptr %67, ptr @current_type, align 8, !dbg !1773, !tbaa !1055
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1774, !tbaa !1055
  %68 = load i1, ptr @reset_numbers, align 1, !dbg !1775
  br i1 %68, label %71, label %69, !dbg !1777

69:                                               ; preds = %66
  %70 = load i64, ptr @starting_line_number, align 8, !dbg !1778, !tbaa !1337
  store i64 %70, ptr @line_no, align 8, !dbg !1779, !tbaa !1337
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1780
  br label %71, !dbg !1781

71:                                               ; preds = %69, %66
  call void @llvm.dbg.value(metadata i32 10, metadata !1757, metadata !DIExpression()), !dbg !1782
  %72 = load ptr, ptr @stdout, align 8, !dbg !1784, !tbaa !1055
  %73 = getelementptr inbounds %struct._IO_FILE, ptr %72, i64 0, i32 5, !dbg !1784
  %74 = load ptr, ptr %73, align 8, !dbg !1784, !tbaa !1766
  %75 = getelementptr inbounds %struct._IO_FILE, ptr %72, i64 0, i32 6, !dbg !1784
  %76 = load ptr, ptr %75, align 8, !dbg !1784, !tbaa !1768
  %77 = icmp ult ptr %74, %76, !dbg !1784
  br i1 %77, label %80, label %78, !dbg !1784, !prof !1769

78:                                               ; preds = %71
  %79 = tail call i32 @__overflow(ptr noundef nonnull %72, i32 noundef 10) #40, !dbg !1784
  br label %209, !dbg !1784

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !1784
  store ptr %81, ptr %73, align 8, !dbg !1784, !tbaa !1766
  store i8 10, ptr %74, align 1, !dbg !1784, !tbaa !1145
  br label %209, !dbg !1784

82:                                               ; preds = %46
  %83 = load ptr, ptr @footer_type, align 8, !dbg !1785, !tbaa !1055
  store ptr %83, ptr @current_type, align 8, !dbg !1788, !tbaa !1055
  store ptr @footer_regex, ptr @current_regex, align 8, !dbg !1789, !tbaa !1055
  %84 = load i1, ptr @reset_numbers, align 1, !dbg !1790
  br i1 %84, label %87, label %85, !dbg !1792

85:                                               ; preds = %82
  %86 = load i64, ptr @starting_line_number, align 8, !dbg !1793, !tbaa !1337
  store i64 %86, ptr @line_no, align 8, !dbg !1794, !tbaa !1337
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1795
  br label %87, !dbg !1796

87:                                               ; preds = %85, %82
  call void @llvm.dbg.value(metadata i32 10, metadata !1757, metadata !DIExpression()), !dbg !1797
  %88 = load ptr, ptr @stdout, align 8, !dbg !1799, !tbaa !1055
  %89 = getelementptr inbounds %struct._IO_FILE, ptr %88, i64 0, i32 5, !dbg !1799
  %90 = load ptr, ptr %89, align 8, !dbg !1799, !tbaa !1766
  %91 = getelementptr inbounds %struct._IO_FILE, ptr %88, i64 0, i32 6, !dbg !1799
  %92 = load ptr, ptr %91, align 8, !dbg !1799, !tbaa !1768
  %93 = icmp ult ptr %90, %92, !dbg !1799
  br i1 %93, label %96, label %94, !dbg !1799, !prof !1769

94:                                               ; preds = %87
  %95 = tail call i32 @__overflow(ptr noundef nonnull %88, i32 noundef 10) #40, !dbg !1799
  br label %209, !dbg !1799

96:                                               ; preds = %87
  %97 = getelementptr inbounds i8, ptr %90, i64 1, !dbg !1799
  store ptr %97, ptr %89, align 8, !dbg !1799, !tbaa !1766
  store i8 10, ptr %90, align 1, !dbg !1799, !tbaa !1145
  br label %209, !dbg !1799

98:                                               ; preds = %46, %44, %25, %17
  %99 = load ptr, ptr @current_type, align 8, !dbg !1800, !tbaa !1055
  %100 = load i8, ptr %99, align 1, !dbg !1802, !tbaa !1145
  %101 = sext i8 %100 to i32, !dbg !1802
  switch i32 %101, label %204 [
    i32 97, label %102
    i32 116, label %148
    i32 110, label %170
    i32 112, label %174
  ], !dbg !1803

102:                                              ; preds = %98
  %103 = load i64, ptr @blank_join, align 8, !dbg !1804, !tbaa !1337
  %104 = icmp sgt i64 %103, 1, !dbg !1807
  br i1 %104, label %105, label %132, !dbg !1808

105:                                              ; preds = %102
  %106 = icmp sgt i64 %18, 1, !dbg !1809
  br i1 %106, label %111, label %107, !dbg !1812

107:                                              ; preds = %105
  %108 = load i64, ptr @proc_text.blank_lines, align 8, !dbg !1813, !tbaa !1337
  %109 = add nsw i64 %108, 1, !dbg !1813
  store i64 %109, ptr @proc_text.blank_lines, align 8, !dbg !1813, !tbaa !1337
  %110 = icmp eq i64 %109, %103, !dbg !1814
  br i1 %110, label %111, label %128, !dbg !1815

111:                                              ; preds = %107, %105
  %112 = load i1, ptr @line_no_overflow, align 1, !dbg !1816
  br i1 %112, label %113, label %115, !dbg !1821

113:                                              ; preds = %111
  %114 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !1822
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %114) #40, !dbg !1822
  unreachable, !dbg !1822

115:                                              ; preds = %111
  %116 = load ptr, ptr @lineno_format, align 8, !dbg !1823, !tbaa !1055
  %117 = load i32, ptr @lineno_width, align 4, !dbg !1823, !tbaa !1136
  %118 = load i64, ptr @line_no, align 8, !dbg !1823, !tbaa !1337
  %119 = load ptr, ptr @separator_str, align 8, !dbg !1823, !tbaa !1055
  %120 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %116, i32 noundef %117, i64 noundef %118, ptr noundef %119) #40, !dbg !1823
  %121 = load i64, ptr @line_no, align 8, !dbg !1824, !tbaa !1337
  %122 = load i64, ptr @page_incr, align 8, !dbg !1824, !tbaa !1337
  %123 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %121, i64 %122), !dbg !1824
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !1824
  %125 = extractvalue { i64, i1 } %123, 0, !dbg !1824
  store i64 %125, ptr @line_no, align 8, !dbg !1824
  br i1 %124, label %126, label %127, !dbg !1826

126:                                              ; preds = %115
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1827
  br label %127, !dbg !1828

127:                                              ; preds = %126, %115
  store i64 0, ptr @proc_text.blank_lines, align 8, !dbg !1829, !tbaa !1337
  br label %204, !dbg !1830

128:                                              ; preds = %107
  %129 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1831, !tbaa !1055
  %130 = load ptr, ptr @stdout, align 8, !dbg !1831, !tbaa !1055
  %131 = tail call i32 @fputs_unlocked(ptr noundef %129, ptr noundef %130), !dbg !1831
  br label %204

132:                                              ; preds = %102
  %133 = load i1, ptr @line_no_overflow, align 1, !dbg !1832
  br i1 %133, label %134, label %136, !dbg !1834

134:                                              ; preds = %132
  %135 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !1835
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %135) #40, !dbg !1835
  unreachable, !dbg !1835

136:                                              ; preds = %132
  %137 = load ptr, ptr @lineno_format, align 8, !dbg !1836, !tbaa !1055
  %138 = load i32, ptr @lineno_width, align 4, !dbg !1836, !tbaa !1136
  %139 = load i64, ptr @line_no, align 8, !dbg !1836, !tbaa !1337
  %140 = load ptr, ptr @separator_str, align 8, !dbg !1836, !tbaa !1055
  %141 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %137, i32 noundef %138, i64 noundef %139, ptr noundef %140) #40, !dbg !1836
  %142 = load i64, ptr @line_no, align 8, !dbg !1837, !tbaa !1337
  %143 = load i64, ptr @page_incr, align 8, !dbg !1837, !tbaa !1337
  %144 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %142, i64 %143), !dbg !1837
  %145 = extractvalue { i64, i1 } %144, 1, !dbg !1837
  %146 = extractvalue { i64, i1 } %144, 0, !dbg !1837
  store i64 %146, ptr @line_no, align 8, !dbg !1837
  br i1 %145, label %147, label %204, !dbg !1838

147:                                              ; preds = %136
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1839
  br label %204, !dbg !1840

148:                                              ; preds = %98
  %149 = icmp sgt i64 %18, 1, !dbg !1841
  br i1 %149, label %150, label %166, !dbg !1843

150:                                              ; preds = %148
  %151 = load i1, ptr @line_no_overflow, align 1, !dbg !1844
  br i1 %151, label %152, label %154, !dbg !1846

152:                                              ; preds = %150
  %153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !1847
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %153) #40, !dbg !1847
  unreachable, !dbg !1847

154:                                              ; preds = %150
  %155 = load ptr, ptr @lineno_format, align 8, !dbg !1848, !tbaa !1055
  %156 = load i32, ptr @lineno_width, align 4, !dbg !1848, !tbaa !1136
  %157 = load i64, ptr @line_no, align 8, !dbg !1848, !tbaa !1337
  %158 = load ptr, ptr @separator_str, align 8, !dbg !1848, !tbaa !1055
  %159 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %155, i32 noundef %156, i64 noundef %157, ptr noundef %158) #40, !dbg !1848
  %160 = load i64, ptr @line_no, align 8, !dbg !1849, !tbaa !1337
  %161 = load i64, ptr @page_incr, align 8, !dbg !1849, !tbaa !1337
  %162 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %160, i64 %161), !dbg !1849
  %163 = extractvalue { i64, i1 } %162, 1, !dbg !1849
  %164 = extractvalue { i64, i1 } %162, 0, !dbg !1849
  store i64 %164, ptr @line_no, align 8, !dbg !1849
  br i1 %163, label %165, label %204, !dbg !1850

165:                                              ; preds = %154
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1851
  br label %204, !dbg !1852

166:                                              ; preds = %148
  %167 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1853, !tbaa !1055
  %168 = load ptr, ptr @stdout, align 8, !dbg !1853, !tbaa !1055
  %169 = tail call i32 @fputs_unlocked(ptr noundef %167, ptr noundef %168), !dbg !1853
  br label %204

170:                                              ; preds = %98
  %171 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1854, !tbaa !1055
  %172 = load ptr, ptr @stdout, align 8, !dbg !1854, !tbaa !1055
  %173 = tail call i32 @fputs_unlocked(ptr noundef %171, ptr noundef %172), !dbg !1854
  br label %204, !dbg !1855

174:                                              ; preds = %98
  %175 = load ptr, ptr @current_regex, align 8, !dbg !1856, !tbaa !1055
  %176 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1857, !tbaa !1698
  %177 = trunc i64 %18 to i32, !dbg !1858
  %178 = add i32 %177, -1, !dbg !1858
  %179 = tail call i32 @re_search(ptr noundef %175, ptr noundef %176, i32 noundef %178, i32 noundef 0, i32 noundef %178, ptr noundef null) #40, !dbg !1859
  switch i32 %179, label %188 [
    i32 -2, label %180
    i32 -1, label %184
  ], !dbg !1860

180:                                              ; preds = %174
  %181 = tail call ptr @__errno_location() #43, !dbg !1861
  %182 = load i32, ptr %181, align 4, !dbg !1861, !tbaa !1136
  %183 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #40, !dbg !1861
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %182, ptr noundef %183) #40, !dbg !1861
  unreachable, !dbg !1861

184:                                              ; preds = %174
  %185 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1863, !tbaa !1055
  %186 = load ptr, ptr @stdout, align 8, !dbg !1863, !tbaa !1055
  %187 = tail call i32 @fputs_unlocked(ptr noundef %185, ptr noundef %186), !dbg !1863
  br label %204, !dbg !1864

188:                                              ; preds = %174
  %189 = load i1, ptr @line_no_overflow, align 1, !dbg !1865
  br i1 %189, label %190, label %192, !dbg !1867

190:                                              ; preds = %188
  %191 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !1868
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %191) #40, !dbg !1868
  unreachable, !dbg !1868

192:                                              ; preds = %188
  %193 = load ptr, ptr @lineno_format, align 8, !dbg !1869, !tbaa !1055
  %194 = load i32, ptr @lineno_width, align 4, !dbg !1869, !tbaa !1136
  %195 = load i64, ptr @line_no, align 8, !dbg !1869, !tbaa !1337
  %196 = load ptr, ptr @separator_str, align 8, !dbg !1869, !tbaa !1055
  %197 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %193, i32 noundef %194, i64 noundef %195, ptr noundef %196) #40, !dbg !1869
  %198 = load i64, ptr @line_no, align 8, !dbg !1870, !tbaa !1337
  %199 = load i64, ptr @page_incr, align 8, !dbg !1870, !tbaa !1337
  %200 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %198, i64 %199), !dbg !1870
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !1870
  %202 = extractvalue { i64, i1 } %200, 0, !dbg !1870
  store i64 %202, ptr @line_no, align 8, !dbg !1870
  br i1 %201, label %203, label %204, !dbg !1871

203:                                              ; preds = %192
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1872
  br label %204, !dbg !1873

204:                                              ; preds = %203, %192, %184, %170, %166, %165, %154, %147, %136, %128, %127, %98
  %205 = load i64, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 1), align 8, !dbg !1874, !tbaa !1689
  %206 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1874, !tbaa !1698
  %207 = load ptr, ptr @stdout, align 8, !dbg !1874, !tbaa !1055
  %208 = tail call i64 @fwrite_unlocked(ptr noundef %206, i64 noundef 1, i64 noundef %205, ptr noundef %207), !dbg !1874
  br label %209, !dbg !1874

209:                                              ; preds = %204, %96, %94, %80, %78, %64, %62
  %210 = load ptr, ptr @stdout, align 8, !dbg !1875, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %210, metadata !1877, metadata !DIExpression()), !dbg !1882
  %211 = load i32, ptr %210, align 8, !dbg !1884, !tbaa !1885
  %212 = and i32 %211, 32, !dbg !1875
  %213 = icmp eq i32 %212, 0, !dbg !1875
  br i1 %213, label %14, label %214, !dbg !1886, !llvm.loop !1887

214:                                              ; preds = %209
  %215 = tail call ptr @__errno_location() #43, !dbg !1889
  %216 = load i32, ptr %215, align 4, !dbg !1889, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %216, metadata !1892, metadata !DIExpression()), !dbg !1894
  %217 = tail call i32 @fflush_unlocked(ptr noundef nonnull %210) #40, !dbg !1895
  %218 = load ptr, ptr @stdout, align 8, !dbg !1896, !tbaa !1055
  %219 = tail call i32 @fpurge(ptr noundef %218) #40, !dbg !1897
  %220 = load ptr, ptr @stdout, align 8, !dbg !1898, !tbaa !1055
  tail call void @clearerr_unlocked(ptr noundef %220) #40, !dbg !1898
  %221 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #40, !dbg !1899
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %216, ptr noundef %221) #40, !dbg !1899
  unreachable, !dbg !1899

222:                                              ; preds = %14
  %223 = tail call ptr @__errno_location() #43, !dbg !1900
  %224 = load i32, ptr %223, align 4, !dbg !1900, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %224, metadata !1650, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata ptr %13, metadata !1877, metadata !DIExpression()), !dbg !1901
  %225 = load i32, ptr %13, align 8, !dbg !1904, !tbaa !1885
  %226 = and i32 %225, 32, !dbg !1905
  %227 = icmp eq i32 %226, 0, !dbg !1905
  %228 = select i1 %227, i32 0, i32 %224, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %228, metadata !1650, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata ptr %0, metadata !1147, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !1153, metadata !DIExpression()), !dbg !1907
  %229 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.39) #41, !dbg !1910
  %230 = icmp eq i32 %229, 0, !dbg !1911
  br i1 %230, label %231, label %232, !dbg !1912

231:                                              ; preds = %222
  tail call void @clearerr_unlocked(ptr noundef nonnull %13) #40, !dbg !1913
  br label %239, !dbg !1913

232:                                              ; preds = %222
  %233 = tail call i32 @rpl_fclose(ptr noundef nonnull %13) #40, !dbg !1914
  %234 = icmp eq i32 %233, 0, !dbg !1916
  %235 = icmp ne i32 %228, 0
  %236 = select i1 %234, i1 true, i1 %235, !dbg !1917
  br i1 %236, label %239, label %237, !dbg !1917

237:                                              ; preds = %232
  %238 = load i32, ptr %223, align 4, !dbg !1918, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %238, metadata !1650, metadata !DIExpression()), !dbg !1651
  br label %239, !dbg !1919

239:                                              ; preds = %232, %237, %231
  %240 = phi i32 [ %228, %231 ], [ %228, %232 ], [ %238, %237 ], !dbg !1651
  call void @llvm.dbg.value(metadata i32 %240, metadata !1650, metadata !DIExpression()), !dbg !1651
  %241 = icmp eq i32 %240, 0, !dbg !1920
  br i1 %241, label %245, label %242, !dbg !1922

242:                                              ; preds = %239, %9
  %243 = phi i32 [ %11, %9 ], [ %240, %239 ]
  %244 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1651
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %243, ptr noundef nonnull @.str.90, ptr noundef %244) #40, !dbg !1651
  br label %245, !dbg !1923

245:                                              ; preds = %242, %239
  %246 = phi i1 [ true, %239 ], [ false, %242 ], !dbg !1651
  ret i1 %246, !dbg !1923
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1924 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

declare !dbg !1928 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

declare !dbg !1931 i32 @re_search(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1943 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1944 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1945 ptr @re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1950, metadata !DIExpression()), !dbg !1951
  store ptr %0, ptr @file_name, align 8, !dbg !1952, !tbaa !1055
  ret void, !dbg !1953
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1954 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1958, metadata !DIExpression()), !dbg !1959
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1960, !tbaa !1961
  ret void, !dbg !1963
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1964 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1969, !tbaa !1055
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1970
  %3 = icmp eq i32 %2, 0, !dbg !1971
  br i1 %3, label %22, label %4, !dbg !1972

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1973, !tbaa !1961, !range !1974, !noundef !1064
  %6 = icmp eq i8 %5, 0, !dbg !1973
  br i1 %6, label %11, label %7, !dbg !1975

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1976
  %9 = load i32, ptr %8, align 4, !dbg !1976, !tbaa !1136
  %10 = icmp eq i32 %9, 32, !dbg !1977
  br i1 %10, label %22, label %11, !dbg !1978

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1.47, i32 noundef 5) #40, !dbg !1979
  call void @llvm.dbg.value(metadata ptr %12, metadata !1966, metadata !DIExpression()), !dbg !1980
  %13 = load ptr, ptr @file_name, align 8, !dbg !1981, !tbaa !1055
  %14 = icmp eq ptr %13, null, !dbg !1981
  %15 = tail call ptr @__errno_location() #43, !dbg !1983
  %16 = load i32, ptr %15, align 4, !dbg !1983, !tbaa !1136
  br i1 %14, label %19, label %17, !dbg !1984

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1985
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.48, ptr noundef %18, ptr noundef %12) #40, !dbg !1985
  br label %20, !dbg !1985

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.49, ptr noundef %12) #40, !dbg !1986
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1987, !tbaa !1136
  tail call void @_exit(i32 noundef %21) #42, !dbg !1988
  unreachable, !dbg !1988

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1989, !tbaa !1055
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1991
  %25 = icmp eq i32 %24, 0, !dbg !1992
  br i1 %25, label %28, label %26, !dbg !1993

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1994, !tbaa !1136
  tail call void @_exit(i32 noundef %27) #42, !dbg !1995
  unreachable, !dbg !1995

28:                                               ; preds = %22
  ret void, !dbg !1996
}

; Function Attrs: noreturn
declare !dbg !1997 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !1999 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2003, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %1, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %2, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %3, metadata !2006, metadata !DIExpression()), !dbg !2007
  tail call fastcc void @flush_stdout(), !dbg !2008
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2009, !tbaa !1055
  %6 = icmp eq ptr %5, null, !dbg !2009
  br i1 %6, label %8, label %7, !dbg !2011

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !2012
  br label %12, !dbg !2012

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2013, !tbaa !1055
  %10 = tail call ptr @getprogname() #41, !dbg !2013
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef %10) #40, !dbg !2013
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2015
  ret void, !dbg !2016
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2017 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2019, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 1, metadata !2021, metadata !DIExpression()), !dbg !2024
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2027
  %2 = icmp slt i32 %1, 0, !dbg !2028
  br i1 %2, label %6, label %3, !dbg !2029

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2030, !tbaa !1055
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2030
  br label %6, !dbg !2030

6:                                                ; preds = %3, %0
  ret void, !dbg !2031
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2032 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2034, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i32 %1, metadata !2035, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata ptr %2, metadata !2036, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata ptr %3, metadata !2037, metadata !DIExpression()), !dbg !2038
  %6 = load ptr, ptr @stderr, align 8, !dbg !2039, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %6, metadata !2040, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %2, metadata !2080, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %3, metadata !2081, metadata !DIExpression()), !dbg !2082
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !2084
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2085, !tbaa !1136
  %9 = add i32 %8, 1, !dbg !2085
  store i32 %9, ptr @error_message_count, align 4, !dbg !2085, !tbaa !1136
  %10 = icmp eq i32 %1, 0, !dbg !2086
  br i1 %10, label %20, label %11, !dbg !2088

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2089, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2099
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2093, metadata !DIExpression()), !dbg !2100
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2101
  call void @llvm.dbg.value(metadata ptr %12, metadata !2092, metadata !DIExpression()), !dbg !2097
  %13 = icmp eq ptr %12, null, !dbg !2102
  br i1 %13, label %14, label %16, !dbg !2104

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.51, ptr noundef nonnull @.str.5.52, i32 noundef 5) #40, !dbg !2105
  call void @llvm.dbg.value(metadata ptr %15, metadata !2092, metadata !DIExpression()), !dbg !2097
  br label %16, !dbg !2106

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2097
  call void @llvm.dbg.value(metadata ptr %17, metadata !2092, metadata !DIExpression()), !dbg !2097
  %18 = load ptr, ptr @stderr, align 8, !dbg !2107, !tbaa !1055
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.53, ptr noundef %17) #40, !dbg !2107
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2108
  br label %20, !dbg !2109

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2110, !tbaa !1055
  call void @llvm.dbg.value(metadata i32 10, metadata !2111, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata ptr %21, metadata !2116, metadata !DIExpression()), !dbg !2117
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2119
  %23 = load ptr, ptr %22, align 8, !dbg !2119, !tbaa !1766
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2119
  %25 = load ptr, ptr %24, align 8, !dbg !2119, !tbaa !1768
  %26 = icmp ult ptr %23, %25, !dbg !2119
  br i1 %26, label %29, label %27, !dbg !2119, !prof !1769

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !2119
  br label %31, !dbg !2119

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2119
  store ptr %30, ptr %22, align 8, !dbg !2119, !tbaa !1766
  store i8 10, ptr %23, align 1, !dbg !2119, !tbaa !1145
  br label %31, !dbg !2119

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2120, !tbaa !1055
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !2120
  %34 = icmp eq i32 %0, 0, !dbg !2121
  br i1 %34, label %36, label %35, !dbg !2123

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !2124
  unreachable, !dbg !2124

36:                                               ; preds = %31
  ret void, !dbg !2125
}

declare !dbg !2126 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2129 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2132 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2136 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2140, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %1, metadata !2141, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata ptr %2, metadata !2142, metadata !DIExpression()), !dbg !2149
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2143, metadata !DIExpression()), !dbg !2151
  call void @llvm.va_start(ptr nonnull %4), !dbg !2152
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !2153
  call void @llvm.va_end(ptr nonnull %4), !dbg !2154
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !2155
  ret void, !dbg !2155
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !658 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !670, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %1, metadata !671, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %3, metadata !673, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr %4, metadata !674, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr %5, metadata !675, metadata !DIExpression()), !dbg !2156
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2157, !tbaa !1136
  %8 = icmp eq i32 %7, 0, !dbg !2157
  br i1 %8, label %23, label %9, !dbg !2159

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2160, !tbaa !1136
  %11 = icmp eq i32 %10, %3, !dbg !2163
  br i1 %11, label %12, label %22, !dbg !2164

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2165, !tbaa !1055
  %14 = icmp eq ptr %13, %2, !dbg !2166
  br i1 %14, label %36, label %15, !dbg !2167

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2168
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2169
  br i1 %18, label %19, label %22, !dbg !2169

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2170
  %21 = icmp eq i32 %20, 0, !dbg !2171
  br i1 %21, label %36, label %22, !dbg !2172

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2173, !tbaa !1055
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2174, !tbaa !1136
  br label %23, !dbg !2175

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2176
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2177, !tbaa !1055
  %25 = icmp eq ptr %24, null, !dbg !2177
  br i1 %25, label %27, label %26, !dbg !2179

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !2180
  br label %31, !dbg !2180

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2181, !tbaa !1055
  %29 = tail call ptr @getprogname() #41, !dbg !2181
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.56, ptr noundef %29) #40, !dbg !2181
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2183, !tbaa !1055
  %33 = icmp eq ptr %2, null, !dbg !2183
  %34 = select i1 %33, ptr @.str.3.57, ptr @.str.2.58, !dbg !2183
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !2183
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2184
  br label %36, !dbg !2185

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2185
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2186 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2190, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %1, metadata !2191, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata ptr %2, metadata !2192, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %3, metadata !2193, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata ptr %4, metadata !2194, metadata !DIExpression()), !dbg !2196
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !2197
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.va_start(ptr nonnull %6), !dbg !2199
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !2200
  call void @llvm.va_end(ptr nonnull %6), !dbg !2201
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !2202
  ret void, !dbg !2202
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2203 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2209, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i64 %1, metadata !2210, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i64 %2, metadata !2211, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i32 %3, metadata !2212, metadata !DIExpression()), !dbg !2213
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #40, !dbg !2214
  ret void, !dbg !2215
}

; Function Attrs: nounwind
declare !dbg !2216 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2219 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2257, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i32 %1, metadata !2258, metadata !DIExpression()), !dbg !2259
  %3 = icmp eq ptr %0, null, !dbg !2260
  br i1 %3, label %7, label %4, !dbg !2262

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %5, metadata !2209, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 0, metadata !2210, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32 %1, metadata !2212, metadata !DIExpression()), !dbg !2264
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #40, !dbg !2266
  br label %7, !dbg !2267

7:                                                ; preds = %4, %2
  ret void, !dbg !2268
}

; Function Attrs: nofree nounwind
declare !dbg !2269 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2272 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2314
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %2, metadata !2312, metadata !DIExpression()), !dbg !2314
  %3 = icmp slt i32 %2, 0, !dbg !2316
  br i1 %3, label %4, label %6, !dbg !2318

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2319
  br label %24, !dbg !2320

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !2321
  %8 = icmp eq i32 %7, 0, !dbg !2321
  br i1 %8, label %13, label %9, !dbg !2323

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2324
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !2325
  %12 = icmp eq i64 %11, -1, !dbg !2326
  br i1 %12, label %16, label %13, !dbg !2327

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !2328
  %15 = icmp eq i32 %14, 0, !dbg !2328
  br i1 %15, label %16, label %18, !dbg !2329

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 0, metadata !2313, metadata !DIExpression()), !dbg !2314
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %17, metadata !2313, metadata !DIExpression()), !dbg !2314
  br label %24, !dbg !2331

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !2332
  %20 = load i32, ptr %19, align 4, !dbg !2332, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %20, metadata !2311, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 0, metadata !2313, metadata !DIExpression()), !dbg !2314
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %21, metadata !2313, metadata !DIExpression()), !dbg !2314
  %22 = icmp eq i32 %20, 0, !dbg !2333
  br i1 %22, label %24, label %23, !dbg !2331

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2335, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 -1, metadata !2313, metadata !DIExpression()), !dbg !2314
  br label %24, !dbg !2337

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2314
  ret i32 %25, !dbg !2338
}

; Function Attrs: nofree nounwind
declare !dbg !2339 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2340 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2342 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2345 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2383, metadata !DIExpression()), !dbg !2384
  %2 = icmp eq ptr %0, null, !dbg !2385
  br i1 %2, label %6, label %3, !dbg !2387

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !2388
  %5 = icmp eq i32 %4, 0, !dbg !2388
  br i1 %5, label %6, label %8, !dbg !2389

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2390
  br label %16, !dbg !2391

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2392, metadata !DIExpression()), !dbg !2397
  %9 = load i32, ptr %0, align 8, !dbg !2399, !tbaa !1885
  %10 = and i32 %9, 256, !dbg !2401
  %11 = icmp eq i32 %10, 0, !dbg !2401
  br i1 %11, label %14, label %12, !dbg !2402

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !2403
  br label %14, !dbg !2403

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2404
  br label %16, !dbg !2405

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2384
  ret i32 %17, !dbg !2406
}

; Function Attrs: nofree nounwind
declare !dbg !2407 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2408 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2446, metadata !DIExpression()), !dbg !2447
  tail call void @__fpurge(ptr noundef nonnull %0) #40, !dbg !2448
  ret i32 0, !dbg !2449
}

; Function Attrs: nounwind
declare !dbg !2450 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2453 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2491, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %1, metadata !2492, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %2, metadata !2493, metadata !DIExpression()), !dbg !2497
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2498
  %5 = load ptr, ptr %4, align 8, !dbg !2498, !tbaa !2499
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2500
  %7 = load ptr, ptr %6, align 8, !dbg !2500, !tbaa !2501
  %8 = icmp eq ptr %5, %7, !dbg !2502
  br i1 %8, label %9, label %27, !dbg !2503

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2504
  %11 = load ptr, ptr %10, align 8, !dbg !2504, !tbaa !1766
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2505
  %13 = load ptr, ptr %12, align 8, !dbg !2505, !tbaa !2506
  %14 = icmp eq ptr %11, %13, !dbg !2507
  br i1 %14, label %15, label %27, !dbg !2508

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2509
  %17 = load ptr, ptr %16, align 8, !dbg !2509, !tbaa !2510
  %18 = icmp eq ptr %17, null, !dbg !2511
  br i1 %18, label %19, label %27, !dbg !2512

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2513
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %21, metadata !2494, metadata !DIExpression()), !dbg !2515
  %22 = icmp eq i64 %21, -1, !dbg !2516
  br i1 %22, label %29, label %23, !dbg !2518

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2519, !tbaa !1885
  %25 = and i32 %24, -17, !dbg !2519
  store i32 %25, ptr %0, align 8, !dbg !2519, !tbaa !1885
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2520
  store i64 %21, ptr %26, align 8, !dbg !2521, !tbaa !2522
  br label %29, !dbg !2523

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2524
  br label %29, !dbg !2525

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2497
  ret i32 %30, !dbg !2526
}

; Function Attrs: nofree nounwind
declare !dbg !2527 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2530 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2533, !tbaa !1055
  ret ptr %1, !dbg !2534
}

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @initbuffer(ptr noundef %0) local_unnamed_addr #21 !dbg !2535 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %0, metadata !2547, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 0, metadata !2550, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 24, metadata !2551, metadata !DIExpression()), !dbg !2552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef 24, i1 noundef false) #40, !dbg !2554
  ret void, !dbg !2555
}

; Function Attrs: nounwind uwtable
define dso_local ptr @readlinebuffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2556 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %1, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %0, metadata !2597, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %1, metadata !2602, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 10, metadata !2603, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %1, metadata !2614, metadata !DIExpression()), !dbg !2619
  %3 = load i32, ptr %1, align 8, !dbg !2622, !tbaa !1885
  %4 = and i32 %3, 16, !dbg !2623
  %5 = icmp eq i32 %4, 0, !dbg !2623
  br i1 %5, label %6, label %60, !dbg !2624

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2625
  %8 = load ptr, ptr %7, align 8, !dbg !2625, !tbaa !1698
  call void @llvm.dbg.value(metadata ptr %8, metadata !2604, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %8, metadata !2605, metadata !DIExpression()), !dbg !2612
  %9 = load i64, ptr %0, align 8, !dbg !2626, !tbaa !2627
  %10 = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !2628
  call void @llvm.dbg.value(metadata ptr %10, metadata !2606, metadata !DIExpression()), !dbg !2612
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  br label %13, !dbg !2629

13:                                               ; preds = %46, %6
  %14 = phi ptr [ %8, %6 ], [ %47, %46 ], !dbg !2612
  %15 = phi ptr [ %8, %6 ], [ %51, %46 ], !dbg !2612
  %16 = phi ptr [ %10, %6 ], [ %49, %46 ], !dbg !2612
  call void @llvm.dbg.value(metadata ptr %16, metadata !2606, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %15, metadata !2605, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %14, metadata !2604, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %1, metadata !2630, metadata !DIExpression()), !dbg !2633
  %17 = load ptr, ptr %11, align 8, !dbg !2635, !tbaa !2501
  %18 = load ptr, ptr %12, align 8, !dbg !2635, !tbaa !2499
  %19 = icmp ult ptr %17, %18, !dbg !2635
  br i1 %19, label %20, label %24, !dbg !2635, !prof !1769

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !2635
  store ptr %21, ptr %11, align 8, !dbg !2635, !tbaa !2501
  %22 = load i8, ptr %17, align 1, !dbg !2635, !tbaa !1145
  %23 = zext i8 %22 to i32, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %23, metadata !2607, metadata !DIExpression()), !dbg !2612
  br label %37, !dbg !2636

24:                                               ; preds = %13
  %25 = tail call i32 @__uflow(ptr noundef nonnull %1) #40, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %25, metadata !2607, metadata !DIExpression()), !dbg !2612
  %26 = icmp eq i32 %25, -1, !dbg !2637
  br i1 %26, label %27, label %37, !dbg !2636

27:                                               ; preds = %24
  %28 = icmp eq ptr %15, %14, !dbg !2639
  br i1 %28, label %60, label %29, !dbg !2642

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %1, metadata !2643, metadata !DIExpression()), !dbg !2646
  %30 = load i32, ptr %1, align 8, !dbg !2648, !tbaa !1885
  %31 = and i32 %30, 32, !dbg !2649
  %32 = icmp eq i32 %31, 0, !dbg !2649
  br i1 %32, label %33, label %60, !dbg !2650

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !2651
  %35 = load i8, ptr %34, align 1, !dbg !2651, !tbaa !1145
  %36 = icmp eq i8 %35, 10, !dbg !2653
  br i1 %36, label %53, label %37, !dbg !2654

37:                                               ; preds = %33, %24, %20
  %38 = phi i32 [ %25, %24 ], [ %23, %20 ], [ 10, %33 ], !dbg !2655
  call void @llvm.dbg.value(metadata i32 %38, metadata !2607, metadata !DIExpression()), !dbg !2612
  %39 = icmp eq ptr %15, %16, !dbg !2656
  br i1 %39, label %40, label %46, !dbg !2657

40:                                               ; preds = %37
  %41 = load i64, ptr %0, align 8, !dbg !2658, !tbaa !2627
  call void @llvm.dbg.value(metadata i64 %41, metadata !2608, metadata !DIExpression()), !dbg !2659
  %42 = tail call nonnull ptr @xpalloc(ptr noundef %14, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #40, !dbg !2660
  call void @llvm.dbg.value(metadata ptr %42, metadata !2604, metadata !DIExpression()), !dbg !2612
  %43 = getelementptr inbounds i8, ptr %42, i64 %41, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %43, metadata !2605, metadata !DIExpression()), !dbg !2612
  store ptr %42, ptr %7, align 8, !dbg !2662, !tbaa !1698
  %44 = load i64, ptr %0, align 8, !dbg !2663, !tbaa !2627
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2664
  call void @llvm.dbg.value(metadata ptr %45, metadata !2606, metadata !DIExpression()), !dbg !2612
  br label %46, !dbg !2665

46:                                               ; preds = %40, %37
  %47 = phi ptr [ %42, %40 ], [ %14, %37 ], !dbg !2612
  %48 = phi ptr [ %43, %40 ], [ %15, %37 ], !dbg !2612
  %49 = phi ptr [ %45, %40 ], [ %16, %37 ], !dbg !2612
  call void @llvm.dbg.value(metadata ptr %49, metadata !2606, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %48, metadata !2605, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %47, metadata !2604, metadata !DIExpression()), !dbg !2612
  %50 = trunc i32 %38 to i8, !dbg !2666
  %51 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !2667
  call void @llvm.dbg.value(metadata ptr %51, metadata !2605, metadata !DIExpression()), !dbg !2612
  store i8 %50, ptr %48, align 1, !dbg !2668, !tbaa !1145
  %52 = icmp eq i32 %38, 10, !dbg !2669
  br i1 %52, label %53, label %13, !dbg !2670, !llvm.loop !2671

53:                                               ; preds = %46, %33
  %54 = phi ptr [ %14, %33 ], [ %47, %46 ], !dbg !2612
  %55 = phi ptr [ %15, %33 ], [ %51, %46 ], !dbg !2612
  call void @llvm.dbg.value(metadata ptr %55, metadata !2605, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %54, metadata !2604, metadata !DIExpression()), !dbg !2612
  %56 = ptrtoint ptr %55 to i64, !dbg !2673
  %57 = ptrtoint ptr %54 to i64, !dbg !2673
  %58 = sub i64 %56, %57, !dbg !2673
  %59 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2674
  store i64 %58, ptr %59, align 8, !dbg !2675, !tbaa !1689
  br label %60, !dbg !2676

60:                                               ; preds = %27, %29, %2, %53
  %61 = phi ptr [ null, %2 ], [ %0, %53 ], [ null, %29 ], [ null, %27 ], !dbg !2612
  ret ptr %61, !dbg !2677
}

declare !dbg !2678 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @readlinebuffer_delim(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2598 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2597, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %1, metadata !2602, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8 %2, metadata !2603, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %1, metadata !2614, metadata !DIExpression()), !dbg !2680
  %4 = load i32, ptr %1, align 8, !dbg !2682, !tbaa !1885
  %5 = and i32 %4, 16, !dbg !2683
  %6 = icmp eq i32 %5, 0, !dbg !2683
  br i1 %6, label %7, label %62, !dbg !2684

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2685
  %9 = load ptr, ptr %8, align 8, !dbg !2685, !tbaa !1698
  call void @llvm.dbg.value(metadata ptr %9, metadata !2604, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %9, metadata !2605, metadata !DIExpression()), !dbg !2679
  %10 = load i64, ptr %0, align 8, !dbg !2686, !tbaa !2627
  %11 = getelementptr inbounds i8, ptr %9, i64 %10, !dbg !2687
  call void @llvm.dbg.value(metadata ptr %11, metadata !2606, metadata !DIExpression()), !dbg !2679
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %14 = sext i8 %2 to i32
  br label %15, !dbg !2688

15:                                               ; preds = %48, %7
  %16 = phi ptr [ %9, %7 ], [ %49, %48 ], !dbg !2679
  %17 = phi ptr [ %9, %7 ], [ %53, %48 ], !dbg !2679
  %18 = phi ptr [ %11, %7 ], [ %51, %48 ], !dbg !2679
  call void @llvm.dbg.value(metadata ptr %18, metadata !2606, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %17, metadata !2605, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %16, metadata !2604, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %1, metadata !2630, metadata !DIExpression()), !dbg !2689
  %19 = load ptr, ptr %12, align 8, !dbg !2691, !tbaa !2501
  %20 = load ptr, ptr %13, align 8, !dbg !2691, !tbaa !2499
  %21 = icmp ult ptr %19, %20, !dbg !2691
  br i1 %21, label %22, label %26, !dbg !2691, !prof !1769

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !2691
  store ptr %23, ptr %12, align 8, !dbg !2691, !tbaa !2501
  %24 = load i8, ptr %19, align 1, !dbg !2691, !tbaa !1145
  %25 = zext i8 %24 to i32, !dbg !2691
  call void @llvm.dbg.value(metadata i32 %25, metadata !2607, metadata !DIExpression()), !dbg !2679
  br label %39, !dbg !2692

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(ptr noundef nonnull %1) #40, !dbg !2691
  call void @llvm.dbg.value(metadata i32 %27, metadata !2607, metadata !DIExpression()), !dbg !2679
  %28 = icmp eq i32 %27, -1, !dbg !2693
  br i1 %28, label %29, label %39, !dbg !2692

29:                                               ; preds = %26
  %30 = icmp eq ptr %17, %16, !dbg !2694
  br i1 %30, label %62, label %31, !dbg !2695

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata ptr %1, metadata !2643, metadata !DIExpression()), !dbg !2696
  %32 = load i32, ptr %1, align 8, !dbg !2698, !tbaa !1885
  %33 = and i32 %32, 32, !dbg !2699
  %34 = icmp eq i32 %33, 0, !dbg !2699
  br i1 %34, label %35, label %62, !dbg !2700

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !2701
  %37 = load i8, ptr %36, align 1, !dbg !2701, !tbaa !1145
  %38 = icmp eq i8 %37, %2, !dbg !2702
  br i1 %38, label %55, label %39, !dbg !2703

39:                                               ; preds = %35, %22, %26
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ %14, %35 ], !dbg !2704
  call void @llvm.dbg.value(metadata i32 %40, metadata !2607, metadata !DIExpression()), !dbg !2679
  %41 = icmp eq ptr %17, %18, !dbg !2705
  br i1 %41, label %42, label %48, !dbg !2706

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8, !dbg !2707, !tbaa !2627
  call void @llvm.dbg.value(metadata i64 %43, metadata !2608, metadata !DIExpression()), !dbg !2708
  %44 = tail call nonnull ptr @xpalloc(ptr noundef %16, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #40, !dbg !2709
  call void @llvm.dbg.value(metadata ptr %44, metadata !2604, metadata !DIExpression()), !dbg !2679
  %45 = getelementptr inbounds i8, ptr %44, i64 %43, !dbg !2710
  call void @llvm.dbg.value(metadata ptr %45, metadata !2605, metadata !DIExpression()), !dbg !2679
  store ptr %44, ptr %8, align 8, !dbg !2711, !tbaa !1698
  %46 = load i64, ptr %0, align 8, !dbg !2712, !tbaa !2627
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !2713
  call void @llvm.dbg.value(metadata ptr %47, metadata !2606, metadata !DIExpression()), !dbg !2679
  br label %48, !dbg !2714

48:                                               ; preds = %42, %39
  %49 = phi ptr [ %44, %42 ], [ %16, %39 ], !dbg !2679
  %50 = phi ptr [ %45, %42 ], [ %17, %39 ], !dbg !2679
  %51 = phi ptr [ %47, %42 ], [ %18, %39 ], !dbg !2679
  call void @llvm.dbg.value(metadata ptr %51, metadata !2606, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %50, metadata !2605, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %49, metadata !2604, metadata !DIExpression()), !dbg !2679
  %52 = trunc i32 %40 to i8, !dbg !2715
  %53 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2716
  call void @llvm.dbg.value(metadata ptr %53, metadata !2605, metadata !DIExpression()), !dbg !2679
  store i8 %52, ptr %50, align 1, !dbg !2717, !tbaa !1145
  %54 = icmp eq i32 %40, %14, !dbg !2718
  br i1 %54, label %55, label %15, !dbg !2719, !llvm.loop !2720

55:                                               ; preds = %35, %48
  %56 = phi ptr [ %16, %35 ], [ %49, %48 ], !dbg !2679
  %57 = phi ptr [ %17, %35 ], [ %53, %48 ], !dbg !2679
  call void @llvm.dbg.value(metadata ptr %57, metadata !2605, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %56, metadata !2604, metadata !DIExpression()), !dbg !2679
  %58 = ptrtoint ptr %57 to i64, !dbg !2722
  %59 = ptrtoint ptr %56 to i64, !dbg !2722
  %60 = sub i64 %58, %59, !dbg !2722
  %61 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2723
  store i64 %60, ptr %61, align 8, !dbg !2724, !tbaa !1689
  br label %62, !dbg !2725

62:                                               ; preds = %31, %29, %55, %3
  %63 = phi ptr [ null, %3 ], [ %0, %55 ], [ null, %29 ], [ null, %31 ], !dbg !2679
  ret ptr %63, !dbg !2726
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @freebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !dbg !2727 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2730
  %2 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2731
  %3 = load ptr, ptr %2, align 8, !dbg !2731, !tbaa !1698
  tail call void @free(ptr noundef %3) #40, !dbg !2732
  ret void, !dbg !2733
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2734 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2742
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2743
  call void @llvm.dbg.value(metadata ptr %2, metadata !2740, metadata !DIExpression()), !dbg !2742
  %3 = icmp eq ptr %2, null, !dbg !2744
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2744
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2744
  call void @llvm.dbg.value(metadata ptr %5, metadata !2741, metadata !DIExpression()), !dbg !2742
  %6 = ptrtoint ptr %5 to i64, !dbg !2745
  %7 = ptrtoint ptr %0 to i64, !dbg !2745
  %8 = sub i64 %6, %7, !dbg !2745
  %9 = icmp sgt i64 %8, 6, !dbg !2747
  br i1 %9, label %10, label %19, !dbg !2748

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %11, metadata !2750, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 7, metadata !2754, metadata !DIExpression()), !dbg !2755
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.98, i64 7), !dbg !2757
  %13 = icmp eq i32 %12, 0, !dbg !2758
  br i1 %13, label %14, label %19, !dbg !2759

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2739, metadata !DIExpression()), !dbg !2742
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.99, i64 noundef 3) #41, !dbg !2760
  %16 = icmp eq i32 %15, 0, !dbg !2763
  %17 = select i1 %16, i64 3, i64 0, !dbg !2764
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2764
  br label %19, !dbg !2764

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2742
  call void @llvm.dbg.value(metadata ptr %21, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata ptr %20, metadata !2739, metadata !DIExpression()), !dbg !2742
  store ptr %20, ptr @program_name, align 8, !dbg !2765, !tbaa !1055
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2766, !tbaa !1055
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2767, !tbaa !1055
  ret void, !dbg !2768
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2769 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !707 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !714, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata ptr %1, metadata !715, metadata !DIExpression()), !dbg !2770
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2771
  call void @llvm.dbg.value(metadata ptr %5, metadata !716, metadata !DIExpression()), !dbg !2770
  %6 = icmp eq ptr %5, %0, !dbg !2772
  br i1 %6, label %7, label %14, !dbg !2774

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2775
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2776
  call void @llvm.dbg.declare(metadata ptr %4, metadata !722, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %4, metadata !2778, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata ptr %4, metadata !2787, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 8, metadata !2791, metadata !DIExpression()), !dbg !2792
  store i64 0, ptr %4, align 8, !dbg !2794
  call void @llvm.dbg.value(metadata ptr %3, metadata !717, metadata !DIExpression(DW_OP_deref)), !dbg !2770
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2795
  %9 = icmp eq i64 %8, 2, !dbg !2797
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !717, metadata !DIExpression()), !dbg !2770
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2798
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2799
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2799
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2770
  ret ptr %15, !dbg !2799
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2800 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2805, metadata !DIExpression()), !dbg !2808
  %2 = tail call ptr @__errno_location() #43, !dbg !2809
  %3 = load i32, ptr %2, align 4, !dbg !2809, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %3, metadata !2806, metadata !DIExpression()), !dbg !2808
  %4 = icmp eq ptr %0, null, !dbg !2810
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2810
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #47, !dbg !2811
  call void @llvm.dbg.value(metadata ptr %6, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i32 %3, ptr %2, align 4, !dbg !2812, !tbaa !1136
  ret ptr %6, !dbg !2813
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2820, metadata !DIExpression()), !dbg !2821
  %2 = icmp eq ptr %0, null, !dbg !2822
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2822
  %4 = load i32, ptr %3, align 8, !dbg !2823, !tbaa !2824
  ret i32 %4, !dbg !2826
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2827 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 %1, metadata !2832, metadata !DIExpression()), !dbg !2833
  %3 = icmp eq ptr %0, null, !dbg !2834
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2834
  store i32 %1, ptr %4, align 8, !dbg !2835, !tbaa !2824
  ret void, !dbg !2836
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2837 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2841, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8 %1, metadata !2842, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %2, metadata !2843, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i8 %1, metadata !2844, metadata !DIExpression()), !dbg !2849
  %4 = icmp eq ptr %0, null, !dbg !2850
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2850
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2851
  %7 = lshr i8 %1, 5, !dbg !2852
  %8 = zext i8 %7 to i64, !dbg !2852
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2853
  call void @llvm.dbg.value(metadata ptr %9, metadata !2845, metadata !DIExpression()), !dbg !2849
  %10 = and i8 %1, 31, !dbg !2854
  %11 = zext i8 %10 to i32, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %11, metadata !2847, metadata !DIExpression()), !dbg !2849
  %12 = load i32, ptr %9, align 4, !dbg !2855, !tbaa !1136
  %13 = lshr i32 %12, %11, !dbg !2856
  %14 = and i32 %13, 1, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %14, metadata !2848, metadata !DIExpression()), !dbg !2849
  %15 = xor i32 %13, %2, !dbg !2858
  %16 = and i32 %15, 1, !dbg !2858
  %17 = shl nuw i32 %16, %11, !dbg !2859
  %18 = xor i32 %17, %12, !dbg !2860
  store i32 %18, ptr %9, align 4, !dbg !2860, !tbaa !1136
  ret i32 %14, !dbg !2861
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2862 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %1, metadata !2867, metadata !DIExpression()), !dbg !2869
  %3 = icmp eq ptr %0, null, !dbg !2870
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2872
  call void @llvm.dbg.value(metadata ptr %4, metadata !2866, metadata !DIExpression()), !dbg !2869
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2873
  %6 = load i32, ptr %5, align 4, !dbg !2873, !tbaa !2874
  call void @llvm.dbg.value(metadata i32 %6, metadata !2868, metadata !DIExpression()), !dbg !2869
  store i32 %1, ptr %5, align 4, !dbg !2875, !tbaa !2874
  ret i32 %6, !dbg !2876
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %1, metadata !2882, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %2, metadata !2883, metadata !DIExpression()), !dbg !2884
  %4 = icmp eq ptr %0, null, !dbg !2885
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2887
  call void @llvm.dbg.value(metadata ptr %5, metadata !2881, metadata !DIExpression()), !dbg !2884
  store i32 10, ptr %5, align 8, !dbg !2888, !tbaa !2824
  %6 = icmp ne ptr %1, null, !dbg !2889
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2891
  br i1 %8, label %10, label %9, !dbg !2891

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2892
  unreachable, !dbg !2892

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2893
  store ptr %1, ptr %11, align 8, !dbg !2894, !tbaa !2895
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2896
  store ptr %2, ptr %12, align 8, !dbg !2897, !tbaa !2898
  ret void, !dbg !2899
}

; Function Attrs: noreturn nounwind
declare !dbg !2900 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2901 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2905, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %1, metadata !2906, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %2, metadata !2907, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %3, metadata !2908, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %4, metadata !2909, metadata !DIExpression()), !dbg !2913
  %6 = icmp eq ptr %4, null, !dbg !2914
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2914
  call void @llvm.dbg.value(metadata ptr %7, metadata !2910, metadata !DIExpression()), !dbg !2913
  %8 = tail call ptr @__errno_location() #43, !dbg !2915
  %9 = load i32, ptr %8, align 4, !dbg !2915, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %9, metadata !2911, metadata !DIExpression()), !dbg !2913
  %10 = load i32, ptr %7, align 8, !dbg !2916, !tbaa !2824
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2917
  %12 = load i32, ptr %11, align 4, !dbg !2917, !tbaa !2874
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2918
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2919
  %15 = load ptr, ptr %14, align 8, !dbg !2919, !tbaa !2895
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2920
  %17 = load ptr, ptr %16, align 8, !dbg !2920, !tbaa !2898
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %18, metadata !2912, metadata !DIExpression()), !dbg !2913
  store i32 %9, ptr %8, align 4, !dbg !2922, !tbaa !1136
  ret i64 %18, !dbg !2923
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2924 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %2, metadata !2932, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %3, metadata !2933, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %4, metadata !2934, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %5, metadata !2935, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %6, metadata !2936, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %7, metadata !2937, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %8, metadata !2938, metadata !DIExpression()), !dbg !2992
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2993
  %17 = icmp eq i64 %16, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i1 %17, metadata !2939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2992
  call void @llvm.dbg.value(metadata i64 0, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 0, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr null, metadata !2942, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 0, metadata !2943, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2944, metadata !DIExpression()), !dbg !2992
  %18 = trunc i32 %5 to i8, !dbg !2995
  %19 = lshr i8 %18, 1, !dbg !2995
  %20 = and i8 %19, 1, !dbg !2995
  call void @llvm.dbg.value(metadata i8 %20, metadata !2945, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 1, metadata !2947, metadata !DIExpression()), !dbg !2992
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2996

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2997
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2998
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2999
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3000
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2992
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3001
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3002
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %39, metadata !2947, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %38, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %37, metadata !2945, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %36, metadata !2944, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %35, metadata !2943, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %34, metadata !2942, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %33, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 0, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %32, metadata !2933, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %31, metadata !2938, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %30, metadata !2937, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %29, metadata !2934, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.label(metadata !2985), !dbg !3003
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !2992
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
  ], !dbg !3004

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2945, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 5, metadata !2934, metadata !DIExpression()), !dbg !2992
  br label %115, !dbg !3005

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2945, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 5, metadata !2934, metadata !DIExpression()), !dbg !2992
  %43 = and i8 %37, 1, !dbg !3006
  %44 = icmp eq i8 %43, 0, !dbg !3006
  br i1 %44, label %45, label %115, !dbg !3005

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3008
  br i1 %46, label %115, label %47, !dbg !3011

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3008, !tbaa !1145
  br label %115, !dbg !3008

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.112, metadata !800, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %29, metadata !801, metadata !DIExpression()), !dbg !3012
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.113, ptr noundef nonnull @.str.11.112, i32 noundef 5) #40, !dbg !3016
  call void @llvm.dbg.value(metadata ptr %49, metadata !802, metadata !DIExpression()), !dbg !3012
  %50 = icmp eq ptr %49, @.str.11.112, !dbg !3017
  br i1 %50, label %51, label %60, !dbg !3019

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !3020
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !3021
  call void @llvm.dbg.declare(metadata ptr %13, metadata !804, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata ptr %13, metadata !3023, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %13, metadata !3031, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 0, metadata !3034, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i64 8, metadata !3035, metadata !DIExpression()), !dbg !3036
  store i64 0, ptr %13, align 8, !dbg !3038
  call void @llvm.dbg.value(metadata ptr %12, metadata !803, metadata !DIExpression(DW_OP_deref)), !dbg !3012
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !3039
  %53 = icmp eq i64 %52, 3, !dbg !3041
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !803, metadata !DIExpression()), !dbg !3012
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3042
  %57 = icmp eq i32 %29, 9, !dbg !3042
  %58 = select i1 %57, ptr @.str.10.114, ptr @.str.12.115, !dbg !3042
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !3043
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !3043
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3012
  call void @llvm.dbg.value(metadata ptr %61, metadata !2937, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr @.str.12.115, metadata !800, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %29, metadata !801, metadata !DIExpression()), !dbg !3044
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.113, ptr noundef nonnull @.str.12.115, i32 noundef 5) #40, !dbg !3046
  call void @llvm.dbg.value(metadata ptr %62, metadata !802, metadata !DIExpression()), !dbg !3044
  %63 = icmp eq ptr %62, @.str.12.115, !dbg !3047
  br i1 %63, label %64, label %73, !dbg !3048

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !3049
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !3050
  call void @llvm.dbg.declare(metadata ptr %11, metadata !804, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata ptr %11, metadata !3023, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %11, metadata !3031, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 0, metadata !3034, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 8, metadata !3035, metadata !DIExpression()), !dbg !3054
  store i64 0, ptr %11, align 8, !dbg !3056
  call void @llvm.dbg.value(metadata ptr %10, metadata !803, metadata !DIExpression(DW_OP_deref)), !dbg !3044
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !3057
  %66 = icmp eq i64 %65, 3, !dbg !3058
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !803, metadata !DIExpression()), !dbg !3044
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3059
  %70 = icmp eq i32 %29, 9, !dbg !3059
  %71 = select i1 %70, ptr @.str.10.114, ptr @.str.12.115, !dbg !3059
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3059
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !3060
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !3060
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2938, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %74, metadata !2937, metadata !DIExpression()), !dbg !2992
  %76 = and i8 %37, 1, !dbg !3061
  %77 = icmp eq i8 %76, 0, !dbg !3061
  br i1 %77, label %78, label %93, !dbg !3062

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2949, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 0, metadata !2940, metadata !DIExpression()), !dbg !2992
  %79 = load i8, ptr %74, align 1, !dbg !3064, !tbaa !1145
  %80 = icmp eq i8 %79, 0, !dbg !3066
  br i1 %80, label %93, label %81, !dbg !3066

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2949, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %84, metadata !2940, metadata !DIExpression()), !dbg !2992
  %85 = icmp ult i64 %84, %40, !dbg !3067
  br i1 %85, label %86, label %88, !dbg !3070

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3067
  store i8 %82, ptr %87, align 1, !dbg !3067, !tbaa !1145
  br label %88, !dbg !3067

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %89, metadata !2940, metadata !DIExpression()), !dbg !2992
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3071
  call void @llvm.dbg.value(metadata ptr %90, metadata !2949, metadata !DIExpression()), !dbg !3063
  %91 = load i8, ptr %90, align 1, !dbg !3064, !tbaa !1145
  %92 = icmp eq i8 %91, 0, !dbg !3066
  br i1 %92, label %93, label %81, !dbg !3066, !llvm.loop !3072

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3074
  call void @llvm.dbg.value(metadata i64 %94, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 1, metadata !2944, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %75, metadata !2942, metadata !DIExpression()), !dbg !2992
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %95, metadata !2943, metadata !DIExpression()), !dbg !2992
  br label %115, !dbg !3076

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2944, metadata !DIExpression()), !dbg !2992
  br label %97, !dbg !3077

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2992
  call void @llvm.dbg.value(metadata i8 %98, metadata !2944, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 1, metadata !2945, metadata !DIExpression()), !dbg !2992
  br label %99, !dbg !3078

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3000
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2992
  call void @llvm.dbg.value(metadata i8 %101, metadata !2945, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %100, metadata !2944, metadata !DIExpression()), !dbg !2992
  %102 = and i8 %101, 1, !dbg !3079
  %103 = icmp eq i8 %102, 0, !dbg !3079
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3081
  br label %105, !dbg !3081

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2992
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2995
  call void @llvm.dbg.value(metadata i8 %107, metadata !2945, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %106, metadata !2944, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 2, metadata !2934, metadata !DIExpression()), !dbg !2992
  %108 = and i8 %107, 1, !dbg !3082
  %109 = icmp eq i8 %108, 0, !dbg !3082
  br i1 %109, label %110, label %115, !dbg !3084

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3085
  br i1 %111, label %115, label %112, !dbg !3088

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3085, !tbaa !1145
  br label %115, !dbg !3085

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2945, metadata !DIExpression()), !dbg !2992
  br label %115, !dbg !3089

114:                                              ; preds = %28
  call void @abort() #42, !dbg !3090
  unreachable, !dbg !3090

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3074
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.114, %45 ], [ @.str.10.114, %47 ], [ @.str.10.114, %42 ], [ %34, %28 ], [ @.str.12.115, %110 ], [ @.str.12.115, %112 ], [ @.str.12.115, %105 ], [ @.str.10.114, %41 ], !dbg !2992
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2992
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2992
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2992
  call void @llvm.dbg.value(metadata i8 %123, metadata !2945, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %122, metadata !2944, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %121, metadata !2943, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %120, metadata !2942, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %119, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %118, metadata !2938, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %117, metadata !2937, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %116, metadata !2934, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 0, metadata !2954, metadata !DIExpression()), !dbg !3091
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
  br label %138, !dbg !3092

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3074
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2997
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3001
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3002
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3093
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3094
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %145, metadata !2954, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %144, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %143, metadata !2947, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %142, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %141, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %140, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %139, metadata !2933, metadata !DIExpression()), !dbg !2992
  %147 = icmp eq i64 %139, -1, !dbg !3095
  br i1 %147, label %148, label %152, !dbg !3096

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3097
  %150 = load i8, ptr %149, align 1, !dbg !3097, !tbaa !1145
  %151 = icmp eq i8 %150, 0, !dbg !3098
  br i1 %151, label %627, label %154, !dbg !3099

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3100
  br i1 %153, label %627, label %154, !dbg !3099

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2956, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 0, metadata !2959, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 0, metadata !2960, metadata !DIExpression()), !dbg !3101
  br i1 %129, label %155, label %170, !dbg !3102

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3104
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3105
  br i1 %157, label %158, label %160, !dbg !3105

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %159, metadata !2933, metadata !DIExpression()), !dbg !2992
  br label %160, !dbg !3107

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3107
  call void @llvm.dbg.value(metadata i64 %161, metadata !2933, metadata !DIExpression()), !dbg !2992
  %162 = icmp ugt i64 %156, %161, !dbg !3108
  br i1 %162, label %170, label %163, !dbg !3109

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %164, metadata !3111, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %120, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %121, metadata !3115, metadata !DIExpression()), !dbg !3116
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3118
  %166 = icmp ne i32 %165, 0, !dbg !3119
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3120
  %168 = xor i1 %166, true, !dbg !3120
  %169 = zext i1 %168 to i8, !dbg !3120
  br i1 %167, label %170, label %688, !dbg !3120

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3101
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3101
  call void @llvm.dbg.value(metadata i8 %173, metadata !2956, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %171, metadata !2933, metadata !DIExpression()), !dbg !2992
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3121
  %175 = load i8, ptr %174, align 1, !dbg !3121, !tbaa !1145
  call void @llvm.dbg.value(metadata i8 %175, metadata !2961, metadata !DIExpression()), !dbg !3101
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
  ], !dbg !3122

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3123

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3124

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2959, metadata !DIExpression()), !dbg !3101
  %179 = and i8 %144, 1, !dbg !3128
  %180 = icmp eq i8 %179, 0, !dbg !3128
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3128
  br i1 %181, label %182, label %198, !dbg !3128

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3130
  br i1 %183, label %184, label %186, !dbg !3134

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3130
  store i8 39, ptr %185, align 1, !dbg !3130, !tbaa !1145
  br label %186, !dbg !3130

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %187, metadata !2940, metadata !DIExpression()), !dbg !2992
  %188 = icmp ult i64 %187, %146, !dbg !3135
  br i1 %188, label %189, label %191, !dbg !3138

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3135
  store i8 36, ptr %190, align 1, !dbg !3135, !tbaa !1145
  br label %191, !dbg !3135

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %192, metadata !2940, metadata !DIExpression()), !dbg !2992
  %193 = icmp ult i64 %192, %146, !dbg !3139
  br i1 %193, label %194, label %196, !dbg !3142

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3139
  store i8 39, ptr %195, align 1, !dbg !3139, !tbaa !1145
  br label %196, !dbg !3139

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %197, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 1, metadata !2948, metadata !DIExpression()), !dbg !2992
  br label %198, !dbg !3143

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2992
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2992
  call void @llvm.dbg.value(metadata i8 %200, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %199, metadata !2940, metadata !DIExpression()), !dbg !2992
  %201 = icmp ult i64 %199, %146, !dbg !3144
  br i1 %201, label %202, label %204, !dbg !3147

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3144
  store i8 92, ptr %203, align 1, !dbg !3144, !tbaa !1145
  br label %204, !dbg !3144

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %205, metadata !2940, metadata !DIExpression()), !dbg !2992
  br i1 %126, label %206, label %491, !dbg !3148

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3150
  %208 = icmp ult i64 %207, %171, !dbg !3151
  br i1 %208, label %209, label %480, !dbg !3152

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3153
  %211 = load i8, ptr %210, align 1, !dbg !3153, !tbaa !1145
  %212 = add i8 %211, -48, !dbg !3154
  %213 = icmp ult i8 %212, 10, !dbg !3154
  br i1 %213, label %214, label %480, !dbg !3154

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3155
  br i1 %215, label %216, label %218, !dbg !3159

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3155
  store i8 48, ptr %217, align 1, !dbg !3155, !tbaa !1145
  br label %218, !dbg !3155

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %219, metadata !2940, metadata !DIExpression()), !dbg !2992
  %220 = icmp ult i64 %219, %146, !dbg !3160
  br i1 %220, label %221, label %223, !dbg !3163

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3160
  store i8 48, ptr %222, align 1, !dbg !3160, !tbaa !1145
  br label %223, !dbg !3160

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %224, metadata !2940, metadata !DIExpression()), !dbg !2992
  br label %480, !dbg !3164

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3165

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3166

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3167

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3169

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3171
  %231 = icmp ult i64 %230, %171, !dbg !3172
  br i1 %231, label %232, label %480, !dbg !3173

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3174
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3175
  %235 = load i8, ptr %234, align 1, !dbg !3175, !tbaa !1145
  %236 = icmp eq i8 %235, 63, !dbg !3176
  br i1 %236, label %237, label %480, !dbg !3177

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3178
  %239 = load i8, ptr %238, align 1, !dbg !3178, !tbaa !1145
  %240 = sext i8 %239 to i32, !dbg !3178
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
  ], !dbg !3179

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3180

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2961, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %230, metadata !2954, metadata !DIExpression()), !dbg !3091
  %243 = icmp ult i64 %140, %146, !dbg !3182
  br i1 %243, label %244, label %246, !dbg !3185

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3182
  store i8 63, ptr %245, align 1, !dbg !3182, !tbaa !1145
  br label %246, !dbg !3182

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %247, metadata !2940, metadata !DIExpression()), !dbg !2992
  %248 = icmp ult i64 %247, %146, !dbg !3186
  br i1 %248, label %249, label %251, !dbg !3189

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3186
  store i8 34, ptr %250, align 1, !dbg !3186, !tbaa !1145
  br label %251, !dbg !3186

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %252, metadata !2940, metadata !DIExpression()), !dbg !2992
  %253 = icmp ult i64 %252, %146, !dbg !3190
  br i1 %253, label %254, label %256, !dbg !3193

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3190
  store i8 34, ptr %255, align 1, !dbg !3190, !tbaa !1145
  br label %256, !dbg !3190

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %257, metadata !2940, metadata !DIExpression()), !dbg !2992
  %258 = icmp ult i64 %257, %146, !dbg !3194
  br i1 %258, label %259, label %261, !dbg !3197

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3194
  store i8 63, ptr %260, align 1, !dbg !3194, !tbaa !1145
  br label %261, !dbg !3194

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %262, metadata !2940, metadata !DIExpression()), !dbg !2992
  br label %480, !dbg !3198

263:                                              ; preds = %170
  br label %274, !dbg !3199

264:                                              ; preds = %170
  br label %274, !dbg !3200

265:                                              ; preds = %170
  br label %272, !dbg !3201

266:                                              ; preds = %170
  br label %272, !dbg !3202

267:                                              ; preds = %170
  br label %274, !dbg !3203

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3204

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3205

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3208

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3210

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3211
  call void @llvm.dbg.label(metadata !2986), !dbg !3212
  br i1 %134, label %274, label %670, !dbg !3213

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3211
  call void @llvm.dbg.label(metadata !2988), !dbg !3215
  br i1 %125, label %535, label %491, !dbg !3216

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3217

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3218, !tbaa !1145
  %279 = icmp eq i8 %278, 0, !dbg !3220
  br i1 %279, label %280, label %480, !dbg !3221

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3222
  br i1 %281, label %282, label %480, !dbg !3224

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2960, metadata !DIExpression()), !dbg !3101
  br label %283, !dbg !3225

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3101
  call void @llvm.dbg.value(metadata i8 %284, metadata !2960, metadata !DIExpression()), !dbg !3101
  br i1 %134, label %480, label %670, !dbg !3226

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 1, metadata !2960, metadata !DIExpression()), !dbg !3101
  br i1 %133, label %286, label %480, !dbg !3228

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3229

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3232
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3234
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3234
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %292, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %291, metadata !2941, metadata !DIExpression()), !dbg !2992
  %293 = icmp ult i64 %140, %292, !dbg !3235
  br i1 %293, label %294, label %296, !dbg !3238

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3235
  store i8 39, ptr %295, align 1, !dbg !3235, !tbaa !1145
  br label %296, !dbg !3235

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %297, metadata !2940, metadata !DIExpression()), !dbg !2992
  %298 = icmp ult i64 %297, %292, !dbg !3239
  br i1 %298, label %299, label %301, !dbg !3242

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3239
  store i8 92, ptr %300, align 1, !dbg !3239, !tbaa !1145
  br label %301, !dbg !3239

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %302, metadata !2940, metadata !DIExpression()), !dbg !2992
  %303 = icmp ult i64 %302, %292, !dbg !3243
  br i1 %303, label %304, label %306, !dbg !3246

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3243
  store i8 39, ptr %305, align 1, !dbg !3243, !tbaa !1145
  br label %306, !dbg !3243

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3246
  call void @llvm.dbg.value(metadata i64 %307, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !2992
  br label %480, !dbg !3247

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3248

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2962, metadata !DIExpression()), !dbg !3249
  %310 = tail call ptr @__ctype_b_loc() #43, !dbg !3250
  %311 = load ptr, ptr %310, align 8, !dbg !3250, !tbaa !1055
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3250
  %314 = load i16, ptr %313, align 2, !dbg !3250, !tbaa !1177
  %315 = lshr i16 %314, 14, !dbg !3252
  %316 = trunc i16 %315 to i8, !dbg !3252
  %317 = and i8 %316, 1, !dbg !3252
  call void @llvm.dbg.value(metadata i8 %317, metadata !2965, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %171, metadata !2933, metadata !DIExpression()), !dbg !2992
  %318 = icmp eq i8 %317, 0, !dbg !3253
  call void @llvm.dbg.value(metadata i1 %318, metadata !2960, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3101
  br label %368, !dbg !3254

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3255
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2966, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %14, metadata !3023, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr %14, metadata !3031, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i32 0, metadata !3034, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 8, metadata !3035, metadata !DIExpression()), !dbg !3259
  store i64 0, ptr %14, align 8, !dbg !3261
  call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8 1, metadata !2965, metadata !DIExpression()), !dbg !3249
  %320 = icmp eq i64 %171, -1, !dbg !3262
  br i1 %320, label %321, label %323, !dbg !3264

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %322, metadata !2933, metadata !DIExpression()), !dbg !2992
  br label %323, !dbg !3266

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3101
  call void @llvm.dbg.value(metadata i64 %324, metadata !2933, metadata !DIExpression()), !dbg !2992
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3267
  %325 = sub i64 %324, %145, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %15, metadata !2969, metadata !DIExpression(DW_OP_deref)), !dbg !3269
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #40, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %326, metadata !2973, metadata !DIExpression()), !dbg !3269
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3271

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3249
  %328 = icmp ugt i64 %324, %145, !dbg !3272
  br i1 %328, label %331, label %329, !dbg !3274

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %324, metadata !2933, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i1 true, metadata !2960, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3101
  br label %368, !dbg !3254

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !3249
  br label %360, !dbg !3277

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2962, metadata !DIExpression()), !dbg !3249
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3279
  %335 = load i8, ptr %334, align 1, !dbg !3279, !tbaa !1145
  %336 = icmp eq i8 %335, 0, !dbg !3274
  br i1 %336, label %363, label %337, !dbg !3280

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %338, metadata !2962, metadata !DIExpression()), !dbg !3249
  %339 = add i64 %338, %145, !dbg !3282
  %340 = icmp eq i64 %338, %325, !dbg !3272
  br i1 %340, label %363, label %331, !dbg !3274, !llvm.loop !3283

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3284
  %344 = and i1 %343, %133, !dbg !3284
  call void @llvm.dbg.value(metadata i64 1, metadata !2974, metadata !DIExpression()), !dbg !3285
  br i1 %344, label %345, label %354, !dbg !3284

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2974, metadata !DIExpression()), !dbg !3285
  %347 = add i64 %346, %145, !dbg !3286
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3288
  %349 = load i8, ptr %348, align 1, !dbg !3288, !tbaa !1145
  %350 = sext i8 %349 to i32, !dbg !3288
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3289

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %352, metadata !2974, metadata !DIExpression()), !dbg !3285
  %353 = icmp eq i64 %352, %326, !dbg !3291
  br i1 %353, label %354, label %345, !dbg !3292, !llvm.loop !3293

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3295, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %355, metadata !2969, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 %355, metadata !3297, metadata !DIExpression()), !dbg !3305
  %356 = call i32 @iswprint(i32 noundef %355) #40, !dbg !3307
  %357 = icmp ne i32 %356, 0, !dbg !3308
  %358 = zext i1 %357 to i8, !dbg !3309
  call void @llvm.dbg.value(metadata i8 %358, metadata !2965, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %326, metadata !2962, metadata !DIExpression()), !dbg !3249
  br label %363, !dbg !3310

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2965, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3276
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2965, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %324, metadata !2933, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i1 %361, metadata !2960, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3101
  br label %368, !dbg !3254

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2965, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %364, metadata !2962, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %324, metadata !2933, metadata !DIExpression()), !dbg !2992
  %366 = icmp eq i8 %365, 0, !dbg !3253
  call void @llvm.dbg.value(metadata i1 %366, metadata !2960, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3101
  %367 = icmp ugt i64 %364, 1, !dbg !3311
  br i1 %367, label %374, label %368, !dbg !3254

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3312
  br i1 %373, label %374, label %480, !dbg !3312

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %379, metadata !2982, metadata !DIExpression()), !dbg !3314
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3315

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2992
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3093
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3091
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3101
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3316
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3101
  call void @llvm.dbg.value(metadata i8 %387, metadata !2961, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %386, metadata !2959, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %385, metadata !2956, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %384, metadata !2954, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %383, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %382, metadata !2940, metadata !DIExpression()), !dbg !2992
  br i1 %380, label %388, label %434, !dbg !3317

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3322

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2959, metadata !DIExpression()), !dbg !3101
  %390 = and i8 %383, 1, !dbg !3325
  %391 = icmp eq i8 %390, 0, !dbg !3325
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3325
  br i1 %392, label %393, label %409, !dbg !3325

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3327
  br i1 %394, label %395, label %397, !dbg !3331

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3327
  store i8 39, ptr %396, align 1, !dbg !3327, !tbaa !1145
  br label %397, !dbg !3327

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %398, metadata !2940, metadata !DIExpression()), !dbg !2992
  %399 = icmp ult i64 %398, %146, !dbg !3332
  br i1 %399, label %400, label %402, !dbg !3335

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3332
  store i8 36, ptr %401, align 1, !dbg !3332, !tbaa !1145
  br label %402, !dbg !3332

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %403, metadata !2940, metadata !DIExpression()), !dbg !2992
  %404 = icmp ult i64 %403, %146, !dbg !3336
  br i1 %404, label %405, label %407, !dbg !3339

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3336
  store i8 39, ptr %406, align 1, !dbg !3336, !tbaa !1145
  br label %407, !dbg !3336

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3339
  call void @llvm.dbg.value(metadata i64 %408, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 1, metadata !2948, metadata !DIExpression()), !dbg !2992
  br label %409, !dbg !3340

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2992
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2992
  call void @llvm.dbg.value(metadata i8 %411, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %410, metadata !2940, metadata !DIExpression()), !dbg !2992
  %412 = icmp ult i64 %410, %146, !dbg !3341
  br i1 %412, label %413, label %415, !dbg !3344

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3341
  store i8 92, ptr %414, align 1, !dbg !3341, !tbaa !1145
  br label %415, !dbg !3341

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %416, metadata !2940, metadata !DIExpression()), !dbg !2992
  %417 = icmp ult i64 %416, %146, !dbg !3345
  br i1 %417, label %418, label %422, !dbg !3348

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3345
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3345
  store i8 %420, ptr %421, align 1, !dbg !3345, !tbaa !1145
  br label %422, !dbg !3345

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3348
  call void @llvm.dbg.value(metadata i64 %423, metadata !2940, metadata !DIExpression()), !dbg !2992
  %424 = icmp ult i64 %423, %146, !dbg !3349
  br i1 %424, label %425, label %430, !dbg !3352

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3349
  %428 = or i8 %427, 48, !dbg !3349
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3349
  store i8 %428, ptr %429, align 1, !dbg !3349, !tbaa !1145
  br label %430, !dbg !3349

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %431, metadata !2940, metadata !DIExpression()), !dbg !2992
  %432 = and i8 %387, 7, !dbg !3353
  %433 = or i8 %432, 48, !dbg !3354
  call void @llvm.dbg.value(metadata i8 %433, metadata !2961, metadata !DIExpression()), !dbg !3101
  br label %443, !dbg !3355

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3356
  %436 = icmp eq i8 %435, 0, !dbg !3356
  br i1 %436, label %443, label %437, !dbg !3358

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3359
  br i1 %438, label %439, label %441, !dbg !3363

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3359
  store i8 92, ptr %440, align 1, !dbg !3359, !tbaa !1145
  br label %441, !dbg !3359

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %442, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2956, metadata !DIExpression()), !dbg !3101
  br label %443, !dbg !3364

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2992
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3093
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3101
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3101
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3101
  call void @llvm.dbg.value(metadata i8 %448, metadata !2961, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %447, metadata !2959, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %446, metadata !2956, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %445, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %444, metadata !2940, metadata !DIExpression()), !dbg !2992
  %449 = add i64 %384, 1, !dbg !3365
  %450 = icmp ugt i64 %379, %449, !dbg !3367
  br i1 %450, label %451, label %478, !dbg !3368

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3369
  %453 = icmp ne i8 %452, 0, !dbg !3369
  %454 = and i8 %447, 1, !dbg !3369
  %455 = icmp eq i8 %454, 0, !dbg !3369
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3369
  br i1 %456, label %457, label %468, !dbg !3369

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3372
  br i1 %458, label %459, label %461, !dbg !3376

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3372
  store i8 39, ptr %460, align 1, !dbg !3372, !tbaa !1145
  br label %461, !dbg !3372

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %462, metadata !2940, metadata !DIExpression()), !dbg !2992
  %463 = icmp ult i64 %462, %146, !dbg !3377
  br i1 %463, label %464, label %466, !dbg !3380

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3377
  store i8 39, ptr %465, align 1, !dbg !3377, !tbaa !1145
  br label %466, !dbg !3377

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %467, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !2992
  br label %468, !dbg !3381

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3382
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2992
  call void @llvm.dbg.value(metadata i8 %470, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %469, metadata !2940, metadata !DIExpression()), !dbg !2992
  %471 = icmp ult i64 %469, %146, !dbg !3383
  br i1 %471, label %472, label %474, !dbg !3386

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3383
  store i8 %448, ptr %473, align 1, !dbg !3383, !tbaa !1145
  br label %474, !dbg !3383

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3386
  call void @llvm.dbg.value(metadata i64 %475, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %449, metadata !2954, metadata !DIExpression()), !dbg !3091
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3387
  %477 = load i8, ptr %476, align 1, !dbg !3387, !tbaa !1145
  call void @llvm.dbg.value(metadata i8 %477, metadata !2961, metadata !DIExpression()), !dbg !3101
  br label %381, !dbg !3388, !llvm.loop !3389

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i8 %448, metadata !2961, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %479, metadata !2960, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %447, metadata !2959, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %446, metadata !2956, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %384, metadata !2954, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %445, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %444, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %378, metadata !2933, metadata !DIExpression()), !dbg !2992
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3392
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2992
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2997
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2992
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2992
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3091
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3101
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3101
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3101
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %489, metadata !2961, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %488, metadata !2960, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %487, metadata !2959, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %173, metadata !2956, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %486, metadata !2954, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %485, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %484, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %483, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %482, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %481, metadata !2933, metadata !DIExpression()), !dbg !2992
  br i1 %127, label %502, label %491, !dbg !3393

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
  br i1 %137, label %503, label %524, !dbg !3395

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3396

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
  %514 = lshr i8 %505, 5, !dbg !3397
  %515 = zext i8 %514 to i64, !dbg !3397
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3398
  %517 = load i32, ptr %516, align 4, !dbg !3398, !tbaa !1136
  %518 = and i8 %505, 31, !dbg !3399
  %519 = zext i8 %518 to i32, !dbg !3399
  %520 = shl nuw i32 1, %519, !dbg !3400
  %521 = and i32 %517, %520, !dbg !3400
  %522 = icmp eq i32 %521, 0, !dbg !3400
  %523 = and i1 %172, %522, !dbg !3401
  br i1 %523, label %573, label %535, !dbg !3401

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
  br i1 %172, label %573, label %535, !dbg !3402

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3392
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2992
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2997
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3001
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3093
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3403
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3101
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3101
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %543, metadata !2961, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %542, metadata !2960, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %541, metadata !2954, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %540, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %539, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %538, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %537, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %536, metadata !2933, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.label(metadata !2989), !dbg !3404
  br i1 %132, label %545, label %674, !dbg !3405

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2959, metadata !DIExpression()), !dbg !3101
  %546 = and i8 %540, 1, !dbg !3407
  %547 = icmp eq i8 %546, 0, !dbg !3407
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3407
  br i1 %548, label %549, label %565, !dbg !3407

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3409
  br i1 %550, label %551, label %553, !dbg !3413

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3409
  store i8 39, ptr %552, align 1, !dbg !3409, !tbaa !1145
  br label %553, !dbg !3409

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %554, metadata !2940, metadata !DIExpression()), !dbg !2992
  %555 = icmp ult i64 %554, %544, !dbg !3414
  br i1 %555, label %556, label %558, !dbg !3417

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3414
  store i8 36, ptr %557, align 1, !dbg !3414, !tbaa !1145
  br label %558, !dbg !3414

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %559, metadata !2940, metadata !DIExpression()), !dbg !2992
  %560 = icmp ult i64 %559, %544, !dbg !3418
  br i1 %560, label %561, label %563, !dbg !3421

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3418
  store i8 39, ptr %562, align 1, !dbg !3418, !tbaa !1145
  br label %563, !dbg !3418

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3421
  call void @llvm.dbg.value(metadata i64 %564, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 1, metadata !2948, metadata !DIExpression()), !dbg !2992
  br label %565, !dbg !3422

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3101
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2992
  call void @llvm.dbg.value(metadata i8 %567, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %566, metadata !2940, metadata !DIExpression()), !dbg !2992
  %568 = icmp ult i64 %566, %544, !dbg !3423
  br i1 %568, label %569, label %571, !dbg !3426

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3423
  store i8 92, ptr %570, align 1, !dbg !3423, !tbaa !1145
  br label %571, !dbg !3423

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3426
  call void @llvm.dbg.value(metadata i64 %544, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %543, metadata !2961, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %542, metadata !2960, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 1, metadata !2959, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %541, metadata !2954, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %567, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %539, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %538, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %572, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %536, metadata !2933, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.label(metadata !2990), !dbg !3427
  br label %600, !dbg !3428

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3392
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2992
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2997
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3001
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3093
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3403
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3101
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3101
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3431
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %582, metadata !2961, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %581, metadata !2960, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 %580, metadata !2959, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %579, metadata !2954, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %578, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %577, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %576, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %575, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %574, metadata !2933, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.label(metadata !2990), !dbg !3427
  %584 = and i8 %578, 1, !dbg !3428
  %585 = icmp ne i8 %584, 0, !dbg !3428
  %586 = and i8 %580, 1, !dbg !3428
  %587 = icmp eq i8 %586, 0, !dbg !3428
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3428
  br i1 %588, label %589, label %600, !dbg !3428

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3432
  br i1 %590, label %591, label %593, !dbg !3436

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3432
  store i8 39, ptr %592, align 1, !dbg !3432, !tbaa !1145
  br label %593, !dbg !3432

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %594, metadata !2940, metadata !DIExpression()), !dbg !2992
  %595 = icmp ult i64 %594, %583, !dbg !3437
  br i1 %595, label %596, label %598, !dbg !3440

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3437
  store i8 39, ptr %597, align 1, !dbg !3437, !tbaa !1145
  br label %598, !dbg !3437

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %599, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !2992
  br label %600, !dbg !3441

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3101
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2992
  call void @llvm.dbg.value(metadata i8 %609, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %608, metadata !2940, metadata !DIExpression()), !dbg !2992
  %610 = icmp ult i64 %608, %601, !dbg !3442
  br i1 %610, label %611, label %613, !dbg !3445

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3442
  store i8 %602, ptr %612, align 1, !dbg !3442, !tbaa !1145
  br label %613, !dbg !3442

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %614, metadata !2940, metadata !DIExpression()), !dbg !2992
  %615 = icmp eq i8 %603, 0, !dbg !3446
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3448
  call void @llvm.dbg.value(metadata i8 %616, metadata !2947, metadata !DIExpression()), !dbg !2992
  br label %617, !dbg !3449

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3392
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2992
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2997
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3001
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3002
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3093
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3403
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %624, metadata !2954, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %623, metadata !2948, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %622, metadata !2947, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %621, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %620, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %619, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %618, metadata !2933, metadata !DIExpression()), !dbg !2992
  %626 = add i64 %624, 1, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %626, metadata !2954, metadata !DIExpression()), !dbg !3091
  br label %138, !dbg !3451, !llvm.loop !3452

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2931, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %143, metadata !2947, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8 %142, metadata !2946, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %141, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %140, metadata !2940, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %139, metadata !2933, metadata !DIExpression()), !dbg !2992
  %628 = icmp eq i64 %140, 0, !dbg !3454
  %629 = and i1 %133, %628, !dbg !3456
  %630 = xor i1 %629, true, !dbg !3456
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3456
  br i1 %631, label %632, label %670, !dbg !3456

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3457
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3457
  br i1 %636, label %637, label %646, !dbg !3457

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3459
  %639 = icmp eq i8 %638, 0, !dbg !3459
  br i1 %639, label %642, label %640, !dbg !3462

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3463
  br label %694, !dbg !3464

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3465
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3467
  br i1 %645, label %28, label %646, !dbg !3467

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3468
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3470
  br i1 %649, label %650, label %665, !dbg !3470

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2942, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %140, metadata !2940, metadata !DIExpression()), !dbg !2992
  %651 = load i8, ptr %120, align 1, !dbg !3471, !tbaa !1145
  %652 = icmp eq i8 %651, 0, !dbg !3474
  br i1 %652, label %665, label %653, !dbg !3474

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2942, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %656, metadata !2940, metadata !DIExpression()), !dbg !2992
  %657 = icmp ult i64 %656, %146, !dbg !3475
  br i1 %657, label %658, label %660, !dbg !3478

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3475
  store i8 %654, ptr %659, align 1, !dbg !3475, !tbaa !1145
  br label %660, !dbg !3475

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %661, metadata !2940, metadata !DIExpression()), !dbg !2992
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3479
  call void @llvm.dbg.value(metadata ptr %662, metadata !2942, metadata !DIExpression()), !dbg !2992
  %663 = load i8, ptr %662, align 1, !dbg !3471, !tbaa !1145
  %664 = icmp eq i8 %663, 0, !dbg !3474
  br i1 %664, label %665, label %653, !dbg !3474, !llvm.loop !3480

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3074
  call void @llvm.dbg.value(metadata i64 %666, metadata !2940, metadata !DIExpression()), !dbg !2992
  %667 = icmp ult i64 %666, %146, !dbg !3482
  br i1 %667, label %668, label %694, !dbg !3484

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3485
  store i8 0, ptr %669, align 1, !dbg !3486, !tbaa !1145
  br label %694, !dbg !3485

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2991), !dbg !3487
  %672 = icmp eq i8 %124, 0, !dbg !3488
  %673 = select i1 %672, i32 2, i32 4, !dbg !3488
  br label %684, !dbg !3488

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3488
  %678 = select i1 %677, i32 2, i32 4, !dbg !3488
  br label %679, !dbg !3490

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2991), !dbg !3487
  %683 = icmp eq i32 %116, 2, !dbg !3490
  br i1 %683, label %684, label %688, !dbg !3488

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3488

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2934, metadata !DIExpression()), !dbg !2992
  %692 = and i32 %5, -3, !dbg !3491
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3492
  br label %694, !dbg !3493

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3494
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3495 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3497 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata ptr %2, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata ptr %0, metadata !3505, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3510, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata ptr null, metadata !3511, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata ptr %2, metadata !3512, metadata !DIExpression()), !dbg !3518
  %4 = icmp eq ptr %2, null, !dbg !3520
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3520
  call void @llvm.dbg.value(metadata ptr %5, metadata !3513, metadata !DIExpression()), !dbg !3518
  %6 = tail call ptr @__errno_location() #43, !dbg !3521
  %7 = load i32, ptr %6, align 4, !dbg !3521, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %7, metadata !3514, metadata !DIExpression()), !dbg !3518
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3522
  %9 = load i32, ptr %8, align 4, !dbg !3522, !tbaa !2874
  %10 = or i32 %9, 1, !dbg !3523
  call void @llvm.dbg.value(metadata i32 %10, metadata !3515, metadata !DIExpression()), !dbg !3518
  %11 = load i32, ptr %5, align 8, !dbg !3524, !tbaa !2824
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3525
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3526
  %14 = load ptr, ptr %13, align 8, !dbg !3526, !tbaa !2895
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3527
  %16 = load ptr, ptr %15, align 8, !dbg !3527, !tbaa !2898
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3528
  %18 = add i64 %17, 1, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %18, metadata !3516, metadata !DIExpression()), !dbg !3518
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3530
  call void @llvm.dbg.value(metadata ptr %19, metadata !3517, metadata !DIExpression()), !dbg !3518
  %20 = load i32, ptr %5, align 8, !dbg !3531, !tbaa !2824
  %21 = load ptr, ptr %13, align 8, !dbg !3532, !tbaa !2895
  %22 = load ptr, ptr %15, align 8, !dbg !3533, !tbaa !2898
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3534
  store i32 %7, ptr %6, align 4, !dbg !3535, !tbaa !1136
  ret ptr %19, !dbg !3536
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3506 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3505, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %1, metadata !3510, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %2, metadata !3511, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %3, metadata !3512, metadata !DIExpression()), !dbg !3537
  %5 = icmp eq ptr %3, null, !dbg !3538
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3538
  call void @llvm.dbg.value(metadata ptr %6, metadata !3513, metadata !DIExpression()), !dbg !3537
  %7 = tail call ptr @__errno_location() #43, !dbg !3539
  %8 = load i32, ptr %7, align 4, !dbg !3539, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %8, metadata !3514, metadata !DIExpression()), !dbg !3537
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3540
  %10 = load i32, ptr %9, align 4, !dbg !3540, !tbaa !2874
  %11 = icmp eq ptr %2, null, !dbg !3541
  %12 = zext i1 %11 to i32, !dbg !3541
  %13 = or i32 %10, %12, !dbg !3542
  call void @llvm.dbg.value(metadata i32 %13, metadata !3515, metadata !DIExpression()), !dbg !3537
  %14 = load i32, ptr %6, align 8, !dbg !3543, !tbaa !2824
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3544
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3545
  %17 = load ptr, ptr %16, align 8, !dbg !3545, !tbaa !2895
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3546
  %19 = load ptr, ptr %18, align 8, !dbg !3546, !tbaa !2898
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3547
  %21 = add i64 %20, 1, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %21, metadata !3516, metadata !DIExpression()), !dbg !3537
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3549
  call void @llvm.dbg.value(metadata ptr %22, metadata !3517, metadata !DIExpression()), !dbg !3537
  %23 = load i32, ptr %6, align 8, !dbg !3550, !tbaa !2824
  %24 = load ptr, ptr %16, align 8, !dbg !3551, !tbaa !2895
  %25 = load ptr, ptr %18, align 8, !dbg !3552, !tbaa !2898
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3553
  store i32 %8, ptr %7, align 4, !dbg !3554, !tbaa !1136
  br i1 %11, label %28, label %27, !dbg !3555

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3556, !tbaa !1337
  br label %28, !dbg !3558

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3559
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3560 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3565, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %1, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 1, metadata !3563, metadata !DIExpression()), !dbg !3567
  %2 = load i32, ptr @nslots, align 4, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 1, metadata !3563, metadata !DIExpression()), !dbg !3567
  %3 = icmp sgt i32 %2, 1, !dbg !3568
  br i1 %3, label %4, label %6, !dbg !3570

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3568
  br label %10, !dbg !3570

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3571
  %8 = load ptr, ptr %7, align 8, !dbg !3571, !tbaa !3573
  %9 = icmp eq ptr %8, @slot0, !dbg !3575
  br i1 %9, label %17, label %16, !dbg !3576

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3563, metadata !DIExpression()), !dbg !3567
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3577
  %13 = load ptr, ptr %12, align 8, !dbg !3577, !tbaa !3573
  tail call void @free(ptr noundef %13) #40, !dbg !3578
  %14 = add nuw nsw i64 %11, 1, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %14, metadata !3563, metadata !DIExpression()), !dbg !3567
  %15 = icmp eq i64 %14, %5, !dbg !3568
  br i1 %15, label %6, label %10, !dbg !3570, !llvm.loop !3580

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3582
  store i64 256, ptr @slotvec0, align 8, !dbg !3584, !tbaa !3585
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3586, !tbaa !3573
  br label %17, !dbg !3587

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3588
  br i1 %18, label %20, label %19, !dbg !3590

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3591
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3593, !tbaa !1055
  br label %20, !dbg !3594

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3595, !tbaa !1136
  ret void, !dbg !3596
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3597 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata ptr %1, metadata !3600, metadata !DIExpression()), !dbg !3601
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3602
  ret ptr %3, !dbg !3603
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3604 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3608, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %1, metadata !3609, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %2, metadata !3610, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %3, metadata !3611, metadata !DIExpression()), !dbg !3624
  %6 = tail call ptr @__errno_location() #43, !dbg !3625
  %7 = load i32, ptr %6, align 4, !dbg !3625, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %7, metadata !3612, metadata !DIExpression()), !dbg !3624
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3626, !tbaa !1055
  call void @llvm.dbg.value(metadata ptr %8, metadata !3613, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3614, metadata !DIExpression()), !dbg !3624
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3627
  br i1 %9, label %10, label %11, !dbg !3627

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3629
  unreachable, !dbg !3629

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3630, !tbaa !1136
  %13 = icmp sgt i32 %12, %0, !dbg !3631
  br i1 %13, label %32, label %14, !dbg !3632

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3633
  call void @llvm.dbg.value(metadata i1 %15, metadata !3615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3634
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3635
  %16 = sext i32 %12 to i64, !dbg !3636
  call void @llvm.dbg.value(metadata i64 %16, metadata !3618, metadata !DIExpression()), !dbg !3634
  store i64 %16, ptr %5, align 8, !dbg !3637, !tbaa !1337
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3638
  %18 = add nuw nsw i32 %0, 1, !dbg !3639
  %19 = sub i32 %18, %12, !dbg !3640
  %20 = sext i32 %19 to i64, !dbg !3641
  call void @llvm.dbg.value(metadata ptr %5, metadata !3618, metadata !DIExpression(DW_OP_deref)), !dbg !3634
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3642
  call void @llvm.dbg.value(metadata ptr %21, metadata !3613, metadata !DIExpression()), !dbg !3624
  store ptr %21, ptr @slotvec, align 8, !dbg !3643, !tbaa !1055
  br i1 %15, label %22, label %23, !dbg !3644

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3645, !tbaa.struct !3647
  br label %23, !dbg !3648

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3649, !tbaa !1136
  %25 = sext i32 %24 to i64, !dbg !3650
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3650
  %27 = load i64, ptr %5, align 8, !dbg !3651, !tbaa !1337
  call void @llvm.dbg.value(metadata i64 %27, metadata !3618, metadata !DIExpression()), !dbg !3634
  %28 = sub nsw i64 %27, %25, !dbg !3652
  %29 = shl i64 %28, 4, !dbg !3653
  call void @llvm.dbg.value(metadata ptr %26, metadata !3031, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i32 0, metadata !3034, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %29, metadata !3035, metadata !DIExpression()), !dbg !3654
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3656
  %30 = load i64, ptr %5, align 8, !dbg !3657, !tbaa !1337
  call void @llvm.dbg.value(metadata i64 %30, metadata !3618, metadata !DIExpression()), !dbg !3634
  %31 = trunc i64 %30 to i32, !dbg !3657
  store i32 %31, ptr @nslots, align 4, !dbg !3658, !tbaa !1136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3659
  br label %32, !dbg !3660

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3624
  call void @llvm.dbg.value(metadata ptr %33, metadata !3613, metadata !DIExpression()), !dbg !3624
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3661
  %36 = load i64, ptr %35, align 8, !dbg !3662, !tbaa !3585
  call void @llvm.dbg.value(metadata i64 %36, metadata !3619, metadata !DIExpression()), !dbg !3663
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3664
  %38 = load ptr, ptr %37, align 8, !dbg !3664, !tbaa !3573
  call void @llvm.dbg.value(metadata ptr %38, metadata !3621, metadata !DIExpression()), !dbg !3663
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3665
  %40 = load i32, ptr %39, align 4, !dbg !3665, !tbaa !2874
  %41 = or i32 %40, 1, !dbg !3666
  call void @llvm.dbg.value(metadata i32 %41, metadata !3622, metadata !DIExpression()), !dbg !3663
  %42 = load i32, ptr %3, align 8, !dbg !3667, !tbaa !2824
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3668
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3669
  %45 = load ptr, ptr %44, align 8, !dbg !3669, !tbaa !2895
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3670
  %47 = load ptr, ptr %46, align 8, !dbg !3670, !tbaa !2898
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %48, metadata !3623, metadata !DIExpression()), !dbg !3663
  %49 = icmp ugt i64 %36, %48, !dbg !3672
  br i1 %49, label %60, label %50, !dbg !3674

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3675
  call void @llvm.dbg.value(metadata i64 %51, metadata !3619, metadata !DIExpression()), !dbg !3663
  store i64 %51, ptr %35, align 8, !dbg !3677, !tbaa !3585
  %52 = icmp eq ptr %38, @slot0, !dbg !3678
  br i1 %52, label %54, label %53, !dbg !3680

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3681
  br label %54, !dbg !3681

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3682
  call void @llvm.dbg.value(metadata ptr %55, metadata !3621, metadata !DIExpression()), !dbg !3663
  store ptr %55, ptr %37, align 8, !dbg !3683, !tbaa !3573
  %56 = load i32, ptr %3, align 8, !dbg !3684, !tbaa !2824
  %57 = load ptr, ptr %44, align 8, !dbg !3685, !tbaa !2895
  %58 = load ptr, ptr %46, align 8, !dbg !3686, !tbaa !2898
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3687
  br label %60, !dbg !3688

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3663
  call void @llvm.dbg.value(metadata ptr %61, metadata !3621, metadata !DIExpression()), !dbg !3663
  store i32 %7, ptr %6, align 4, !dbg !3689, !tbaa !1136
  ret ptr %61, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3695, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata ptr %1, metadata !3696, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i64 %2, metadata !3697, metadata !DIExpression()), !dbg !3698
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3699
  ret ptr %4, !dbg !3700
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3701 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3703, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3705
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3707
  ret ptr %2, !dbg !3708
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3709 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3713, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %1, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata ptr %0, metadata !3696, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3697, metadata !DIExpression()), !dbg !3716
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3718
  ret ptr %3, !dbg !3719
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3720 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3724, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i32 %1, metadata !3725, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %2, metadata !3726, metadata !DIExpression()), !dbg !3728
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3729
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3727, metadata !DIExpression()), !dbg !3730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3731), !dbg !3734
  call void @llvm.dbg.value(metadata i32 %1, metadata !3735, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3740, metadata !DIExpression()), !dbg !3743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3743, !alias.scope !3731
  %5 = icmp eq i32 %1, 10, !dbg !3744
  br i1 %5, label %6, label %7, !dbg !3746

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3747, !noalias !3731
  unreachable, !dbg !3747

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3748, !tbaa !2824, !alias.scope !3731
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3749
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3750
  ret ptr %8, !dbg !3751
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3752 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %1, metadata !3757, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata ptr %2, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 %3, metadata !3759, metadata !DIExpression()), !dbg !3761
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3762
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3760, metadata !DIExpression()), !dbg !3763
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3764), !dbg !3767
  call void @llvm.dbg.value(metadata i32 %1, metadata !3735, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3740, metadata !DIExpression()), !dbg !3770
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3770, !alias.scope !3764
  %6 = icmp eq i32 %1, 10, !dbg !3771
  br i1 %6, label %7, label %8, !dbg !3772

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3773, !noalias !3764
  unreachable, !dbg !3773

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3774, !tbaa !2824, !alias.scope !3764
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3775
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3776
  ret ptr %9, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3778 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata ptr %1, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 0, metadata !3724, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i32 %0, metadata !3725, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %1, metadata !3726, metadata !DIExpression()), !dbg !3785
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3787
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3727, metadata !DIExpression()), !dbg !3788
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3789), !dbg !3792
  call void @llvm.dbg.value(metadata i32 %0, metadata !3735, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3740, metadata !DIExpression()), !dbg !3795
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3795, !alias.scope !3789
  %4 = icmp eq i32 %0, 10, !dbg !3796
  br i1 %4, label %5, label %6, !dbg !3797

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3798, !noalias !3789
  unreachable, !dbg !3798

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3799, !tbaa !2824, !alias.scope !3789
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3800
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3801
  ret ptr %7, !dbg !3802
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3803 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %1, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %2, metadata !3809, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 0, metadata !3756, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %1, metadata !3758, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %2, metadata !3759, metadata !DIExpression()), !dbg !3811
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3760, metadata !DIExpression()), !dbg !3814
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3815), !dbg !3818
  call void @llvm.dbg.value(metadata i32 %0, metadata !3735, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3740, metadata !DIExpression()), !dbg !3821
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3821, !alias.scope !3815
  %5 = icmp eq i32 %0, 10, !dbg !3822
  br i1 %5, label %6, label %7, !dbg !3823

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3824, !noalias !3815
  unreachable, !dbg !3824

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3825, !tbaa !2824, !alias.scope !3815
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3826
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3827
  ret ptr %8, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3829 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 %1, metadata !3834, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8 %2, metadata !3835, metadata !DIExpression()), !dbg !3837
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3838
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3836, metadata !DIExpression()), !dbg !3839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3840, !tbaa.struct !3841
  call void @llvm.dbg.value(metadata ptr %4, metadata !2841, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i8 %2, metadata !2842, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 1, metadata !2843, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i8 %2, metadata !2844, metadata !DIExpression()), !dbg !3842
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3844
  %6 = lshr i8 %2, 5, !dbg !3845
  %7 = zext i8 %6 to i64, !dbg !3845
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3846
  call void @llvm.dbg.value(metadata ptr %8, metadata !2845, metadata !DIExpression()), !dbg !3842
  %9 = and i8 %2, 31, !dbg !3847
  %10 = zext i8 %9 to i32, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %10, metadata !2847, metadata !DIExpression()), !dbg !3842
  %11 = load i32, ptr %8, align 4, !dbg !3848, !tbaa !1136
  %12 = lshr i32 %11, %10, !dbg !3849
  call void @llvm.dbg.value(metadata i32 %12, metadata !2848, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3842
  %13 = and i32 %12, 1, !dbg !3850
  %14 = xor i32 %13, 1, !dbg !3850
  %15 = shl nuw i32 %14, %10, !dbg !3851
  %16 = xor i32 %15, %11, !dbg !3852
  store i32 %16, ptr %8, align 4, !dbg !3852, !tbaa !1136
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3853
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3854
  ret ptr %17, !dbg !3855
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3856 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3860, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8 %1, metadata !3861, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 -1, metadata !3834, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8 %1, metadata !3835, metadata !DIExpression()), !dbg !3863
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3865
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3836, metadata !DIExpression()), !dbg !3866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3867, !tbaa.struct !3841
  call void @llvm.dbg.value(metadata ptr %3, metadata !2841, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8 %1, metadata !2842, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 1, metadata !2843, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8 %1, metadata !2844, metadata !DIExpression()), !dbg !3868
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3870
  %5 = lshr i8 %1, 5, !dbg !3871
  %6 = zext i8 %5 to i64, !dbg !3871
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3872
  call void @llvm.dbg.value(metadata ptr %7, metadata !2845, metadata !DIExpression()), !dbg !3868
  %8 = and i8 %1, 31, !dbg !3873
  %9 = zext i8 %8 to i32, !dbg !3873
  call void @llvm.dbg.value(metadata i32 %9, metadata !2847, metadata !DIExpression()), !dbg !3868
  %10 = load i32, ptr %7, align 4, !dbg !3874, !tbaa !1136
  %11 = lshr i32 %10, %9, !dbg !3875
  call void @llvm.dbg.value(metadata i32 %11, metadata !2848, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3868
  %12 = and i32 %11, 1, !dbg !3876
  %13 = xor i32 %12, 1, !dbg !3876
  %14 = shl nuw i32 %13, %9, !dbg !3877
  %15 = xor i32 %14, %10, !dbg !3878
  store i32 %15, ptr %7, align 4, !dbg !3878, !tbaa !1136
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3879
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3880
  ret ptr %16, !dbg !3881
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3882 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3884, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata ptr %0, metadata !3860, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8 58, metadata !3861, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 -1, metadata !3834, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i8 58, metadata !3835, metadata !DIExpression()), !dbg !3888
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3890
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3836, metadata !DIExpression()), !dbg !3891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3892, !tbaa.struct !3841
  call void @llvm.dbg.value(metadata ptr %2, metadata !2841, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 58, metadata !2842, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !2843, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 58, metadata !2844, metadata !DIExpression()), !dbg !3893
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3895
  call void @llvm.dbg.value(metadata ptr %3, metadata !2845, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 26, metadata !2847, metadata !DIExpression()), !dbg !3893
  %4 = load i32, ptr %3, align 4, !dbg !3896, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %4, metadata !2848, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3893
  %5 = or i32 %4, 67108864, !dbg !3897
  store i32 %5, ptr %3, align 4, !dbg !3897, !tbaa !1136
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3898
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3899
  ret ptr %6, !dbg !3900
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3901 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3903, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %1, metadata !3834, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i8 58, metadata !3835, metadata !DIExpression()), !dbg !3906
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3908
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3836, metadata !DIExpression()), !dbg !3909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3910, !tbaa.struct !3841
  call void @llvm.dbg.value(metadata ptr %3, metadata !2841, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i8 58, metadata !2842, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i32 1, metadata !2843, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i8 58, metadata !2844, metadata !DIExpression()), !dbg !3911
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3913
  call void @llvm.dbg.value(metadata ptr %4, metadata !2845, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i32 26, metadata !2847, metadata !DIExpression()), !dbg !3911
  %5 = load i32, ptr %4, align 4, !dbg !3914, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %5, metadata !2848, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3911
  %6 = or i32 %5, 67108864, !dbg !3915
  store i32 %6, ptr %4, align 4, !dbg !3915, !tbaa !1136
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3916
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3917
  ret ptr %7, !dbg !3918
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3919 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3740, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i32 %1, metadata !3922, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata ptr %2, metadata !3923, metadata !DIExpression()), !dbg !3927
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3928
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3924, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i32 %1, metadata !3735, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3930
  %5 = icmp eq i32 %1, 10, !dbg !3931
  br i1 %5, label %6, label %7, !dbg !3932

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3933, !noalias !3934
  unreachable, !dbg !3933

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3740, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3930
  store i32 %1, ptr %4, align 8, !dbg !3937, !tbaa.struct !3841
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3937
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3937
  call void @llvm.dbg.value(metadata ptr %4, metadata !2841, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8 58, metadata !2842, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 1, metadata !2843, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8 58, metadata !2844, metadata !DIExpression()), !dbg !3938
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3940
  call void @llvm.dbg.value(metadata ptr %9, metadata !2845, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 26, metadata !2847, metadata !DIExpression()), !dbg !3938
  %10 = load i32, ptr %9, align 4, !dbg !3941, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %10, metadata !2848, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3938
  %11 = or i32 %10, 67108864, !dbg !3942
  store i32 %11, ptr %9, align 4, !dbg !3942, !tbaa !1136
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3943
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3944
  ret ptr %12, !dbg !3945
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3946 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3950, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %1, metadata !3951, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %2, metadata !3952, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %3, metadata !3953, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 %0, metadata !3955, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %1, metadata !3960, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %2, metadata !3961, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %3, metadata !3962, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 -1, metadata !3963, metadata !DIExpression()), !dbg !3965
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3967
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3964, metadata !DIExpression()), !dbg !3968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3969, !tbaa.struct !3841
  call void @llvm.dbg.value(metadata ptr %5, metadata !2881, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %1, metadata !2882, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %2, metadata !2883, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %5, metadata !2881, metadata !DIExpression()), !dbg !3970
  store i32 10, ptr %5, align 8, !dbg !3972, !tbaa !2824
  %6 = icmp ne ptr %1, null, !dbg !3973
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3974
  br i1 %8, label %10, label %9, !dbg !3974

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3975
  unreachable, !dbg !3975

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3976
  store ptr %1, ptr %11, align 8, !dbg !3977, !tbaa !2895
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3978
  store ptr %2, ptr %12, align 8, !dbg !3979, !tbaa !2898
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3980
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3981
  ret ptr %13, !dbg !3982
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3956 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3955, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %1, metadata !3960, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %2, metadata !3961, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %3, metadata !3962, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %4, metadata !3963, metadata !DIExpression()), !dbg !3983
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3984
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3964, metadata !DIExpression()), !dbg !3985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3986, !tbaa.struct !3841
  call void @llvm.dbg.value(metadata ptr %6, metadata !2881, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %1, metadata !2882, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %2, metadata !2883, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %6, metadata !2881, metadata !DIExpression()), !dbg !3987
  store i32 10, ptr %6, align 8, !dbg !3989, !tbaa !2824
  %7 = icmp ne ptr %1, null, !dbg !3990
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3991
  br i1 %9, label %11, label %10, !dbg !3991

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3992
  unreachable, !dbg !3992

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3993
  store ptr %1, ptr %12, align 8, !dbg !3994, !tbaa !2895
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3995
  store ptr %2, ptr %13, align 8, !dbg !3996, !tbaa !2898
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3997
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3998
  ret ptr %14, !dbg !3999
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4000 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4004, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %1, metadata !4005, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %2, metadata !4006, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i32 0, metadata !3950, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %0, metadata !3951, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %1, metadata !3952, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %2, metadata !3953, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 0, metadata !3955, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata ptr %0, metadata !3960, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata ptr %1, metadata !3961, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata ptr %2, metadata !3962, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 -1, metadata !3963, metadata !DIExpression()), !dbg !4010
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4012
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3964, metadata !DIExpression()), !dbg !4013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4014, !tbaa.struct !3841
  call void @llvm.dbg.value(metadata ptr %4, metadata !2881, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %1, metadata !2883, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %4, metadata !2881, metadata !DIExpression()), !dbg !4015
  store i32 10, ptr %4, align 8, !dbg !4017, !tbaa !2824
  %5 = icmp ne ptr %0, null, !dbg !4018
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4019
  br i1 %7, label %9, label %8, !dbg !4019

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4020
  unreachable, !dbg !4020

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4021
  store ptr %0, ptr %10, align 8, !dbg !4022, !tbaa !2895
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4023
  store ptr %1, ptr %11, align 8, !dbg !4024, !tbaa !2898
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4025
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4026
  ret ptr %12, !dbg !4027
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4028 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4032, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata ptr %1, metadata !4033, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata ptr %2, metadata !4034, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 %3, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 0, metadata !3955, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %0, metadata !3960, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %1, metadata !3961, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %2, metadata !3962, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 %3, metadata !3963, metadata !DIExpression()), !dbg !4037
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4039
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3964, metadata !DIExpression()), !dbg !4040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4041, !tbaa.struct !3841
  call void @llvm.dbg.value(metadata ptr %5, metadata !2881, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata ptr %1, metadata !2883, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata ptr %5, metadata !2881, metadata !DIExpression()), !dbg !4042
  store i32 10, ptr %5, align 8, !dbg !4044, !tbaa !2824
  %6 = icmp ne ptr %0, null, !dbg !4045
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4046
  br i1 %8, label %10, label %9, !dbg !4046

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4047
  unreachable, !dbg !4047

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4048
  store ptr %0, ptr %11, align 8, !dbg !4049, !tbaa !2895
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4050
  store ptr %1, ptr %12, align 8, !dbg !4051, !tbaa !2898
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4052
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4053
  ret ptr %13, !dbg !4054
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4055 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4059, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %1, metadata !4060, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i64 %2, metadata !4061, metadata !DIExpression()), !dbg !4062
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4063
  ret ptr %4, !dbg !4064
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4065 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4069, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 0, metadata !4059, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata ptr %0, metadata !4060, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i64 %1, metadata !4061, metadata !DIExpression()), !dbg !4072
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4074
  ret ptr %3, !dbg !4075
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4080, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %1, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i32 %0, metadata !4059, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %1, metadata !4060, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 -1, metadata !4061, metadata !DIExpression()), !dbg !4083
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4085
  ret ptr %3, !dbg !4086
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4087 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i32 0, metadata !4080, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata ptr %0, metadata !4081, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i32 0, metadata !4059, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %0, metadata !4060, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 -1, metadata !4061, metadata !DIExpression()), !dbg !4095
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4097
  ret ptr %2, !dbg !4098
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4099 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata ptr %1, metadata !4139, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata ptr %2, metadata !4140, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata ptr %3, metadata !4141, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata ptr %4, metadata !4142, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 %5, metadata !4143, metadata !DIExpression()), !dbg !4144
  %7 = icmp eq ptr %1, null, !dbg !4145
  br i1 %7, label %10, label %8, !dbg !4147

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.122, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4148
  br label %12, !dbg !4148

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.123, ptr noundef %2, ptr noundef %3) #40, !dbg !4149
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.3.125, i32 noundef 5) #40, !dbg !4150
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4150
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %0), !dbg !4151
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.5.127, i32 noundef 5) #40, !dbg !4152
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.128) #40, !dbg !4152
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %0), !dbg !4153
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
  ], !dbg !4154

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.7.129, i32 noundef 5) #40, !dbg !4155
  %21 = load ptr, ptr %4, align 8, !dbg !4155, !tbaa !1055
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4155
  br label %147, !dbg !4157

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.8.130, i32 noundef 5) #40, !dbg !4158
  %25 = load ptr, ptr %4, align 8, !dbg !4158, !tbaa !1055
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4158
  %27 = load ptr, ptr %26, align 8, !dbg !4158, !tbaa !1055
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4158
  br label %147, !dbg !4159

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.9.131, i32 noundef 5) #40, !dbg !4160
  %31 = load ptr, ptr %4, align 8, !dbg !4160, !tbaa !1055
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4160
  %33 = load ptr, ptr %32, align 8, !dbg !4160, !tbaa !1055
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4160
  %35 = load ptr, ptr %34, align 8, !dbg !4160, !tbaa !1055
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4160
  br label %147, !dbg !4161

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.10.132, i32 noundef 5) #40, !dbg !4162
  %39 = load ptr, ptr %4, align 8, !dbg !4162, !tbaa !1055
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4162
  %41 = load ptr, ptr %40, align 8, !dbg !4162, !tbaa !1055
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4162
  %43 = load ptr, ptr %42, align 8, !dbg !4162, !tbaa !1055
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4162
  %45 = load ptr, ptr %44, align 8, !dbg !4162, !tbaa !1055
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4162
  br label %147, !dbg !4163

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.11.133, i32 noundef 5) #40, !dbg !4164
  %49 = load ptr, ptr %4, align 8, !dbg !4164, !tbaa !1055
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4164
  %51 = load ptr, ptr %50, align 8, !dbg !4164, !tbaa !1055
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4164
  %53 = load ptr, ptr %52, align 8, !dbg !4164, !tbaa !1055
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4164
  %55 = load ptr, ptr %54, align 8, !dbg !4164, !tbaa !1055
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4164
  %57 = load ptr, ptr %56, align 8, !dbg !4164, !tbaa !1055
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4164
  br label %147, !dbg !4165

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.12.134, i32 noundef 5) #40, !dbg !4166
  %61 = load ptr, ptr %4, align 8, !dbg !4166, !tbaa !1055
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4166
  %63 = load ptr, ptr %62, align 8, !dbg !4166, !tbaa !1055
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4166
  %65 = load ptr, ptr %64, align 8, !dbg !4166, !tbaa !1055
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4166
  %67 = load ptr, ptr %66, align 8, !dbg !4166, !tbaa !1055
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4166
  %69 = load ptr, ptr %68, align 8, !dbg !4166, !tbaa !1055
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4166
  %71 = load ptr, ptr %70, align 8, !dbg !4166, !tbaa !1055
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4166
  br label %147, !dbg !4167

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.13.135, i32 noundef 5) #40, !dbg !4168
  %75 = load ptr, ptr %4, align 8, !dbg !4168, !tbaa !1055
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4168
  %77 = load ptr, ptr %76, align 8, !dbg !4168, !tbaa !1055
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4168
  %79 = load ptr, ptr %78, align 8, !dbg !4168, !tbaa !1055
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4168
  %81 = load ptr, ptr %80, align 8, !dbg !4168, !tbaa !1055
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4168
  %83 = load ptr, ptr %82, align 8, !dbg !4168, !tbaa !1055
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4168
  %85 = load ptr, ptr %84, align 8, !dbg !4168, !tbaa !1055
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4168
  %87 = load ptr, ptr %86, align 8, !dbg !4168, !tbaa !1055
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4168
  br label %147, !dbg !4169

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.14.136, i32 noundef 5) #40, !dbg !4170
  %91 = load ptr, ptr %4, align 8, !dbg !4170, !tbaa !1055
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4170
  %93 = load ptr, ptr %92, align 8, !dbg !4170, !tbaa !1055
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4170
  %95 = load ptr, ptr %94, align 8, !dbg !4170, !tbaa !1055
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4170
  %97 = load ptr, ptr %96, align 8, !dbg !4170, !tbaa !1055
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4170
  %99 = load ptr, ptr %98, align 8, !dbg !4170, !tbaa !1055
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4170
  %101 = load ptr, ptr %100, align 8, !dbg !4170, !tbaa !1055
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4170
  %103 = load ptr, ptr %102, align 8, !dbg !4170, !tbaa !1055
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4170
  %105 = load ptr, ptr %104, align 8, !dbg !4170, !tbaa !1055
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4170
  br label %147, !dbg !4171

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.15.137, i32 noundef 5) #40, !dbg !4172
  %109 = load ptr, ptr %4, align 8, !dbg !4172, !tbaa !1055
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4172
  %111 = load ptr, ptr %110, align 8, !dbg !4172, !tbaa !1055
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4172
  %113 = load ptr, ptr %112, align 8, !dbg !4172, !tbaa !1055
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4172
  %115 = load ptr, ptr %114, align 8, !dbg !4172, !tbaa !1055
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4172
  %117 = load ptr, ptr %116, align 8, !dbg !4172, !tbaa !1055
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4172
  %119 = load ptr, ptr %118, align 8, !dbg !4172, !tbaa !1055
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4172
  %121 = load ptr, ptr %120, align 8, !dbg !4172, !tbaa !1055
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4172
  %123 = load ptr, ptr %122, align 8, !dbg !4172, !tbaa !1055
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4172
  %125 = load ptr, ptr %124, align 8, !dbg !4172, !tbaa !1055
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4172
  br label %147, !dbg !4173

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.16.138, i32 noundef 5) #40, !dbg !4174
  %129 = load ptr, ptr %4, align 8, !dbg !4174, !tbaa !1055
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4174
  %131 = load ptr, ptr %130, align 8, !dbg !4174, !tbaa !1055
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4174
  %133 = load ptr, ptr %132, align 8, !dbg !4174, !tbaa !1055
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4174
  %135 = load ptr, ptr %134, align 8, !dbg !4174, !tbaa !1055
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4174
  %137 = load ptr, ptr %136, align 8, !dbg !4174, !tbaa !1055
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4174
  %139 = load ptr, ptr %138, align 8, !dbg !4174, !tbaa !1055
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4174
  %141 = load ptr, ptr %140, align 8, !dbg !4174, !tbaa !1055
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4174
  %143 = load ptr, ptr %142, align 8, !dbg !4174, !tbaa !1055
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4174
  %145 = load ptr, ptr %144, align 8, !dbg !4174, !tbaa !1055
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4174
  br label %147, !dbg !4175

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4176
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4177 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %1, metadata !4182, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %2, metadata !4183, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %3, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %4, metadata !4185, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !4186, metadata !DIExpression()), !dbg !4187
  br label %6, !dbg !4188

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4190
  call void @llvm.dbg.value(metadata i64 %7, metadata !4186, metadata !DIExpression()), !dbg !4187
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4191
  %9 = load ptr, ptr %8, align 8, !dbg !4191, !tbaa !1055
  %10 = icmp eq ptr %9, null, !dbg !4193
  %11 = add i64 %7, 1, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %11, metadata !4186, metadata !DIExpression()), !dbg !4187
  br i1 %10, label %12, label %6, !dbg !4193, !llvm.loop !4195

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4197
  ret void, !dbg !4198
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4199 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4211, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %1, metadata !4212, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %2, metadata !4213, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %3, metadata !4214, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %4, metadata !4215, metadata !DIExpression()), !dbg !4219
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4220
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4217, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 0, metadata !4216, metadata !DIExpression()), !dbg !4219
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4216, metadata !DIExpression()), !dbg !4219
  %10 = icmp ult i32 %9, 41, !dbg !4222
  br i1 %10, label %11, label %16, !dbg !4222

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4222
  %13 = zext i32 %9 to i64, !dbg !4222
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4222
  %15 = add nuw nsw i32 %9, 8, !dbg !4222
  store i32 %15, ptr %4, align 8, !dbg !4222
  br label %19, !dbg !4222

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4222
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4222
  store ptr %18, ptr %7, align 8, !dbg !4222
  br label %19, !dbg !4222

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4222
  %22 = load ptr, ptr %21, align 8, !dbg !4222
  store ptr %22, ptr %6, align 16, !dbg !4225, !tbaa !1055
  %23 = icmp eq ptr %22, null, !dbg !4226
  br i1 %23, label %128, label %24, !dbg !4227

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4216, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 1, metadata !4216, metadata !DIExpression()), !dbg !4219
  %25 = icmp ult i32 %20, 41, !dbg !4222
  br i1 %25, label %29, label %26, !dbg !4222

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4222
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4222
  store ptr %28, ptr %7, align 8, !dbg !4222
  br label %34, !dbg !4222

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4222
  %31 = zext i32 %20 to i64, !dbg !4222
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4222
  %33 = add nuw nsw i32 %20, 8, !dbg !4222
  store i32 %33, ptr %4, align 8, !dbg !4222
  br label %34, !dbg !4222

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4222
  %37 = load ptr, ptr %36, align 8, !dbg !4222
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4228
  store ptr %37, ptr %38, align 8, !dbg !4225, !tbaa !1055
  %39 = icmp eq ptr %37, null, !dbg !4226
  br i1 %39, label %128, label %40, !dbg !4227

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4216, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 2, metadata !4216, metadata !DIExpression()), !dbg !4219
  %41 = icmp ult i32 %35, 41, !dbg !4222
  br i1 %41, label %45, label %42, !dbg !4222

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4222
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4222
  store ptr %44, ptr %7, align 8, !dbg !4222
  br label %50, !dbg !4222

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4222
  %47 = zext i32 %35 to i64, !dbg !4222
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4222
  %49 = add nuw nsw i32 %35, 8, !dbg !4222
  store i32 %49, ptr %4, align 8, !dbg !4222
  br label %50, !dbg !4222

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4222
  %53 = load ptr, ptr %52, align 8, !dbg !4222
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4228
  store ptr %53, ptr %54, align 16, !dbg !4225, !tbaa !1055
  %55 = icmp eq ptr %53, null, !dbg !4226
  br i1 %55, label %128, label %56, !dbg !4227

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4216, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 3, metadata !4216, metadata !DIExpression()), !dbg !4219
  %57 = icmp ult i32 %51, 41, !dbg !4222
  br i1 %57, label %61, label %58, !dbg !4222

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4222
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4222
  store ptr %60, ptr %7, align 8, !dbg !4222
  br label %66, !dbg !4222

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4222
  %63 = zext i32 %51 to i64, !dbg !4222
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4222
  %65 = add nuw nsw i32 %51, 8, !dbg !4222
  store i32 %65, ptr %4, align 8, !dbg !4222
  br label %66, !dbg !4222

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4222
  %69 = load ptr, ptr %68, align 8, !dbg !4222
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4228
  store ptr %69, ptr %70, align 8, !dbg !4225, !tbaa !1055
  %71 = icmp eq ptr %69, null, !dbg !4226
  br i1 %71, label %128, label %72, !dbg !4227

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4216, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 4, metadata !4216, metadata !DIExpression()), !dbg !4219
  %73 = icmp ult i32 %67, 41, !dbg !4222
  br i1 %73, label %77, label %74, !dbg !4222

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4222
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4222
  store ptr %76, ptr %7, align 8, !dbg !4222
  br label %82, !dbg !4222

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4222
  %79 = zext i32 %67 to i64, !dbg !4222
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4222
  %81 = add nuw nsw i32 %67, 8, !dbg !4222
  store i32 %81, ptr %4, align 8, !dbg !4222
  br label %82, !dbg !4222

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4222
  %85 = load ptr, ptr %84, align 8, !dbg !4222
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4228
  store ptr %85, ptr %86, align 16, !dbg !4225, !tbaa !1055
  %87 = icmp eq ptr %85, null, !dbg !4226
  br i1 %87, label %128, label %88, !dbg !4227

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4216, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 5, metadata !4216, metadata !DIExpression()), !dbg !4219
  %89 = icmp ult i32 %83, 41, !dbg !4222
  br i1 %89, label %93, label %90, !dbg !4222

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4222
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4222
  store ptr %92, ptr %7, align 8, !dbg !4222
  br label %98, !dbg !4222

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4222
  %95 = zext i32 %83 to i64, !dbg !4222
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4222
  %97 = add nuw nsw i32 %83, 8, !dbg !4222
  store i32 %97, ptr %4, align 8, !dbg !4222
  br label %98, !dbg !4222

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4222
  %100 = load ptr, ptr %99, align 8, !dbg !4222
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4228
  store ptr %100, ptr %101, align 8, !dbg !4225, !tbaa !1055
  %102 = icmp eq ptr %100, null, !dbg !4226
  br i1 %102, label %128, label %103, !dbg !4227

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4216, metadata !DIExpression()), !dbg !4219
  %104 = load ptr, ptr %7, align 8, !dbg !4222
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4222
  store ptr %105, ptr %7, align 8, !dbg !4222
  %106 = load ptr, ptr %104, align 8, !dbg !4222
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4228
  store ptr %106, ptr %107, align 16, !dbg !4225, !tbaa !1055
  %108 = icmp eq ptr %106, null, !dbg !4226
  br i1 %108, label %128, label %109, !dbg !4227

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4216, metadata !DIExpression()), !dbg !4219
  %110 = load ptr, ptr %7, align 8, !dbg !4222
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4222
  store ptr %111, ptr %7, align 8, !dbg !4222
  %112 = load ptr, ptr %110, align 8, !dbg !4222
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4228
  store ptr %112, ptr %113, align 8, !dbg !4225, !tbaa !1055
  %114 = icmp eq ptr %112, null, !dbg !4226
  br i1 %114, label %128, label %115, !dbg !4227

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4216, metadata !DIExpression()), !dbg !4219
  %116 = load ptr, ptr %7, align 8, !dbg !4222
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4222
  store ptr %117, ptr %7, align 8, !dbg !4222
  %118 = load ptr, ptr %116, align 8, !dbg !4222
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4228
  store ptr %118, ptr %119, align 16, !dbg !4225, !tbaa !1055
  %120 = icmp eq ptr %118, null, !dbg !4226
  br i1 %120, label %128, label %121, !dbg !4227

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4216, metadata !DIExpression()), !dbg !4219
  %122 = load ptr, ptr %7, align 8, !dbg !4222
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4222
  store ptr %123, ptr %7, align 8, !dbg !4222
  %124 = load ptr, ptr %122, align 8, !dbg !4222
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4228
  store ptr %124, ptr %125, align 8, !dbg !4225, !tbaa !1055
  %126 = icmp eq ptr %124, null, !dbg !4226
  %127 = select i1 %126, i64 9, i64 10, !dbg !4227
  br label %128, !dbg !4227

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4229
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4230
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4231
  ret void, !dbg !4231
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4232 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4236, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata ptr %1, metadata !4237, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata ptr %2, metadata !4238, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata ptr %3, metadata !4239, metadata !DIExpression()), !dbg !4245
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !4246
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4240, metadata !DIExpression()), !dbg !4247
  call void @llvm.va_start(ptr nonnull %5), !dbg !4248
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4249
  call void @llvm.va_end(ptr nonnull %5), !dbg !4250
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !4251
  ret void, !dbg !4251
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4252 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4253, !tbaa !1055
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %1), !dbg !4253
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.17.143, i32 noundef 5) #40, !dbg !4254
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.144) #40, !dbg !4254
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.19.145, i32 noundef 5) #40, !dbg !4255
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.146, ptr noundef nonnull @.str.21.147) #40, !dbg !4255
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.22.148, i32 noundef 5) #40, !dbg !4256
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.149) #40, !dbg !4256
  ret void, !dbg !4257
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4258 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4263, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %1, metadata !4264, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %2, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata ptr %0, metadata !4267, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %1, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %2, metadata !4271, metadata !DIExpression()), !dbg !4272
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4274
  call void @llvm.dbg.value(metadata ptr %4, metadata !4275, metadata !DIExpression()), !dbg !4280
  %5 = icmp eq ptr %4, null, !dbg !4282
  br i1 %5, label %6, label %7, !dbg !4284

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4285
  unreachable, !dbg !4285

7:                                                ; preds = %3
  ret ptr %4, !dbg !4286
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4268 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4267, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %1, metadata !4270, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %2, metadata !4271, metadata !DIExpression()), !dbg !4287
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4288
  call void @llvm.dbg.value(metadata ptr %4, metadata !4275, metadata !DIExpression()), !dbg !4289
  %5 = icmp eq ptr %4, null, !dbg !4291
  br i1 %5, label %6, label %7, !dbg !4292

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4293
  unreachable, !dbg !4293

7:                                                ; preds = %3
  ret ptr %4, !dbg !4294
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4295 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4299, metadata !DIExpression()), !dbg !4300
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4301
  call void @llvm.dbg.value(metadata ptr %2, metadata !4275, metadata !DIExpression()), !dbg !4302
  %3 = icmp eq ptr %2, null, !dbg !4304
  br i1 %3, label %4, label %5, !dbg !4305

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4306
  unreachable, !dbg !4306

5:                                                ; preds = %1
  ret ptr %2, !dbg !4307
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4308 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4309 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %0, metadata !4315, metadata !DIExpression()), !dbg !4319
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4321
  call void @llvm.dbg.value(metadata ptr %2, metadata !4275, metadata !DIExpression()), !dbg !4322
  %3 = icmp eq ptr %2, null, !dbg !4324
  br i1 %3, label %4, label %5, !dbg !4325

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4326
  unreachable, !dbg !4326

5:                                                ; preds = %1
  ret ptr %2, !dbg !4327
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4328 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4332, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %0, metadata !4299, metadata !DIExpression()), !dbg !4334
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4336
  call void @llvm.dbg.value(metadata ptr %2, metadata !4275, metadata !DIExpression()), !dbg !4337
  %3 = icmp eq ptr %2, null, !dbg !4339
  br i1 %3, label %4, label %5, !dbg !4340

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4341
  unreachable, !dbg !4341

5:                                                ; preds = %1
  ret ptr %2, !dbg !4342
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4343 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4347, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 %1, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %0, metadata !4350, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %1, metadata !4354, metadata !DIExpression()), !dbg !4355
  %3 = icmp eq i64 %1, 0, !dbg !4357
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4357
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4358
  call void @llvm.dbg.value(metadata ptr %5, metadata !4275, metadata !DIExpression()), !dbg !4359
  %6 = icmp eq ptr %5, null, !dbg !4361
  br i1 %6, label %7, label %8, !dbg !4362

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4363
  unreachable, !dbg !4363

8:                                                ; preds = %2
  ret ptr %5, !dbg !4364
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4365 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4366 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4370, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %1, metadata !4371, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata ptr %0, metadata !4373, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64 %1, metadata !4376, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata ptr %0, metadata !4350, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i64 %1, metadata !4354, metadata !DIExpression()), !dbg !4379
  %3 = icmp eq i64 %1, 0, !dbg !4381
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4381
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4382
  call void @llvm.dbg.value(metadata ptr %5, metadata !4275, metadata !DIExpression()), !dbg !4383
  %6 = icmp eq ptr %5, null, !dbg !4385
  br i1 %6, label %7, label %8, !dbg !4386

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4387
  unreachable, !dbg !4387

8:                                                ; preds = %2
  ret ptr %5, !dbg !4388
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4389 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4393, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %1, metadata !4394, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %2, metadata !4395, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata ptr %0, metadata !4397, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %1, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %2, metadata !4401, metadata !DIExpression()), !dbg !4402
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4404
  call void @llvm.dbg.value(metadata ptr %4, metadata !4275, metadata !DIExpression()), !dbg !4405
  %5 = icmp eq ptr %4, null, !dbg !4407
  br i1 %5, label %6, label %7, !dbg !4408

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4409
  unreachable, !dbg !4409

7:                                                ; preds = %3
  ret ptr %4, !dbg !4410
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4411 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4415, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %1, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata ptr null, metadata !4267, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 %0, metadata !4270, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 %1, metadata !4271, metadata !DIExpression()), !dbg !4418
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4420
  call void @llvm.dbg.value(metadata ptr %3, metadata !4275, metadata !DIExpression()), !dbg !4421
  %4 = icmp eq ptr %3, null, !dbg !4423
  br i1 %4, label %5, label %6, !dbg !4424

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4425
  unreachable, !dbg !4425

6:                                                ; preds = %2
  ret ptr %3, !dbg !4426
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4427 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4431, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %1, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata ptr null, metadata !4393, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 %0, metadata !4394, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 %1, metadata !4395, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata ptr null, metadata !4397, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 %0, metadata !4400, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 %1, metadata !4401, metadata !DIExpression()), !dbg !4436
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4438
  call void @llvm.dbg.value(metadata ptr %3, metadata !4275, metadata !DIExpression()), !dbg !4439
  %4 = icmp eq ptr %3, null, !dbg !4441
  br i1 %4, label %5, label %6, !dbg !4442

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4443
  unreachable, !dbg !4443

6:                                                ; preds = %2
  ret ptr %3, !dbg !4444
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4445 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4449, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata ptr %1, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata ptr %0, metadata !982, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata ptr %1, metadata !983, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i64 1, metadata !984, metadata !DIExpression()), !dbg !4452
  %3 = load i64, ptr %1, align 8, !dbg !4454, !tbaa !1337
  call void @llvm.dbg.value(metadata i64 %3, metadata !985, metadata !DIExpression()), !dbg !4452
  %4 = icmp eq ptr %0, null, !dbg !4455
  br i1 %4, label %5, label %8, !dbg !4457

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4458
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4461
  br label %15, !dbg !4461

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4462
  %10 = add nuw i64 %9, 1, !dbg !4462
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4462
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4462
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4462
  call void @llvm.dbg.value(metadata i64 %13, metadata !985, metadata !DIExpression()), !dbg !4452
  br i1 %12, label %14, label %15, !dbg !4465

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4466
  unreachable, !dbg !4466

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4452
  call void @llvm.dbg.value(metadata i64 %16, metadata !985, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata ptr %0, metadata !4267, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i64 %16, metadata !4270, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i64 1, metadata !4271, metadata !DIExpression()), !dbg !4467
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4469
  call void @llvm.dbg.value(metadata ptr %17, metadata !4275, metadata !DIExpression()), !dbg !4470
  %18 = icmp eq ptr %17, null, !dbg !4472
  br i1 %18, label %19, label %20, !dbg !4473

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4474
  unreachable, !dbg !4474

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !982, metadata !DIExpression()), !dbg !4452
  store i64 %16, ptr %1, align 8, !dbg !4475, !tbaa !1337
  ret ptr %17, !dbg !4476
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !977 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !982, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata ptr %1, metadata !983, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i64 %2, metadata !984, metadata !DIExpression()), !dbg !4477
  %4 = load i64, ptr %1, align 8, !dbg !4478, !tbaa !1337
  call void @llvm.dbg.value(metadata i64 %4, metadata !985, metadata !DIExpression()), !dbg !4477
  %5 = icmp eq ptr %0, null, !dbg !4479
  br i1 %5, label %6, label %13, !dbg !4480

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4481
  br i1 %7, label %8, label %20, !dbg !4482

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %9, metadata !985, metadata !DIExpression()), !dbg !4477
  %10 = icmp ugt i64 %2, 128, !dbg !4485
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4486
  call void @llvm.dbg.value(metadata i64 %12, metadata !985, metadata !DIExpression()), !dbg !4477
  br label %20, !dbg !4487

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4488
  %15 = add nuw i64 %14, 1, !dbg !4488
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4488
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4488
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4488
  call void @llvm.dbg.value(metadata i64 %18, metadata !985, metadata !DIExpression()), !dbg !4477
  br i1 %17, label %19, label %20, !dbg !4489

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4490
  unreachable, !dbg !4490

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4477
  call void @llvm.dbg.value(metadata i64 %21, metadata !985, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata ptr %0, metadata !4267, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %21, metadata !4270, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %2, metadata !4271, metadata !DIExpression()), !dbg !4491
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4493
  call void @llvm.dbg.value(metadata ptr %22, metadata !4275, metadata !DIExpression()), !dbg !4494
  %23 = icmp eq ptr %22, null, !dbg !4496
  br i1 %23, label %24, label %25, !dbg !4497

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4498
  unreachable, !dbg !4498

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !982, metadata !DIExpression()), !dbg !4477
  store i64 %21, ptr %1, align 8, !dbg !4499, !tbaa !1337
  ret ptr %22, !dbg !4500
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !989 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !994, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata ptr %1, metadata !995, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %2, metadata !996, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %3, metadata !997, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %4, metadata !998, metadata !DIExpression()), !dbg !4501
  %6 = load i64, ptr %1, align 8, !dbg !4502, !tbaa !1337
  call void @llvm.dbg.value(metadata i64 %6, metadata !999, metadata !DIExpression()), !dbg !4501
  %7 = ashr i64 %6, 1, !dbg !4503
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4503
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4503
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %10, metadata !1000, metadata !DIExpression()), !dbg !4501
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %11, metadata !1000, metadata !DIExpression()), !dbg !4501
  %12 = icmp sgt i64 %3, -1, !dbg !4506
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4508
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %15, metadata !1000, metadata !DIExpression()), !dbg !4501
  %16 = icmp slt i64 %4, 0, !dbg !4509
  br i1 %16, label %17, label %30, !dbg !4509

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4509
  br i1 %18, label %19, label %24, !dbg !4509

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4509
  %21 = udiv i64 9223372036854775807, %20, !dbg !4509
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4509
  br i1 %23, label %46, label %43, !dbg !4509

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4509
  br i1 %25, label %43, label %26, !dbg !4509

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4509
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4509
  %29 = icmp ult i64 %28, %15, !dbg !4509
  br i1 %29, label %46, label %43, !dbg !4509

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4509
  br i1 %31, label %43, label %32, !dbg !4509

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4509
  br i1 %33, label %34, label %40, !dbg !4509

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4509
  br i1 %35, label %43, label %36, !dbg !4509

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4509
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4509
  %39 = icmp ult i64 %38, %4, !dbg !4509
  br i1 %39, label %46, label %43, !dbg !4509

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4509
  br i1 %42, label %46, label %43, !dbg !4509

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1001, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4501
  %44 = mul i64 %15, %4, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %44, metadata !1001, metadata !DIExpression()), !dbg !4501
  %45 = icmp slt i64 %44, 128, !dbg !4509
  br i1 %45, label %46, label %51, !dbg !4509

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1002, metadata !DIExpression()), !dbg !4501
  %48 = sdiv i64 %47, %4, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %48, metadata !1000, metadata !DIExpression()), !dbg !4501
  %49 = srem i64 %47, %4, !dbg !4513
  %50 = sub nsw i64 %47, %49, !dbg !4514
  call void @llvm.dbg.value(metadata i64 %50, metadata !1001, metadata !DIExpression()), !dbg !4501
  br label %51, !dbg !4515

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4501
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4501
  call void @llvm.dbg.value(metadata i64 %53, metadata !1001, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %52, metadata !1000, metadata !DIExpression()), !dbg !4501
  %54 = icmp eq ptr %0, null, !dbg !4516
  br i1 %54, label %55, label %56, !dbg !4518

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4519, !tbaa !1337
  br label %56, !dbg !4520

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4521
  %58 = icmp slt i64 %57, %2, !dbg !4523
  br i1 %58, label %59, label %96, !dbg !4524

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4525
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4525
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4525
  call void @llvm.dbg.value(metadata i64 %62, metadata !1000, metadata !DIExpression()), !dbg !4501
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4526
  br i1 %65, label %95, label %66, !dbg !4526

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4527

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4527
  br i1 %68, label %69, label %74, !dbg !4527

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4527
  %71 = udiv i64 9223372036854775807, %70, !dbg !4527
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4527
  br i1 %73, label %95, label %93, !dbg !4527

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4527
  br i1 %75, label %93, label %76, !dbg !4527

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4527
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4527
  %79 = icmp ult i64 %78, %62, !dbg !4527
  br i1 %79, label %95, label %93, !dbg !4527

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4527
  br i1 %81, label %93, label %82, !dbg !4527

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4527
  br i1 %83, label %84, label %90, !dbg !4527

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4527
  br i1 %85, label %93, label %86, !dbg !4527

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4527
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4527
  %89 = icmp ult i64 %88, %4, !dbg !4527
  br i1 %89, label %95, label %93, !dbg !4527

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4527
  br i1 %92, label %95, label %93, !dbg !4527

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !1001, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4501
  %94 = mul i64 %62, %4, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %94, metadata !1001, metadata !DIExpression()), !dbg !4501
  br label %96, !dbg !4528

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #42, !dbg !4529
  unreachable, !dbg !4529

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4501
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4501
  call void @llvm.dbg.value(metadata i64 %98, metadata !1001, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %97, metadata !1000, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata ptr %0, metadata !4347, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i64 %98, metadata !4348, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata ptr %0, metadata !4350, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %98, metadata !4354, metadata !DIExpression()), !dbg !4532
  %99 = icmp eq i64 %98, 0, !dbg !4534
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4534
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #47, !dbg !4535
  call void @llvm.dbg.value(metadata ptr %101, metadata !4275, metadata !DIExpression()), !dbg !4536
  %102 = icmp eq ptr %101, null, !dbg !4538
  br i1 %102, label %103, label %104, !dbg !4539

103:                                              ; preds = %96
  tail call void @xalloc_die() #42, !dbg !4540
  unreachable, !dbg !4540

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !994, metadata !DIExpression()), !dbg !4501
  store i64 %97, ptr %1, align 8, !dbg !4541, !tbaa !1337
  ret ptr %101, !dbg !4542
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4543 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4545, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 %0, metadata !4547, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 1, metadata !4550, metadata !DIExpression()), !dbg !4551
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4553
  call void @llvm.dbg.value(metadata ptr %2, metadata !4275, metadata !DIExpression()), !dbg !4554
  %3 = icmp eq ptr %2, null, !dbg !4556
  br i1 %3, label %4, label %5, !dbg !4557

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4558
  unreachable, !dbg !4558

5:                                                ; preds = %1
  ret ptr %2, !dbg !4559
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4560 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4548 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4547, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i64 %1, metadata !4550, metadata !DIExpression()), !dbg !4561
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4562
  call void @llvm.dbg.value(metadata ptr %3, metadata !4275, metadata !DIExpression()), !dbg !4563
  %4 = icmp eq ptr %3, null, !dbg !4565
  br i1 %4, label %5, label %6, !dbg !4566

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4567
  unreachable, !dbg !4567

6:                                                ; preds = %2
  ret ptr %3, !dbg !4568
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4569 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4571, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %0, metadata !4573, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 1, metadata !4576, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 1, metadata !4582, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 1, metadata !4582, metadata !DIExpression()), !dbg !4583
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4585
  call void @llvm.dbg.value(metadata ptr %2, metadata !4275, metadata !DIExpression()), !dbg !4586
  %3 = icmp eq ptr %2, null, !dbg !4588
  br i1 %3, label %4, label %5, !dbg !4589

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4590
  unreachable, !dbg !4590

5:                                                ; preds = %1
  ret ptr %2, !dbg !4591
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4574 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4573, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %1, metadata !4576, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %1, metadata !4582, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %1, metadata !4582, metadata !DIExpression()), !dbg !4593
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4595
  call void @llvm.dbg.value(metadata ptr %3, metadata !4275, metadata !DIExpression()), !dbg !4596
  %4 = icmp eq ptr %3, null, !dbg !4598
  br i1 %4, label %5, label %6, !dbg !4599

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4600
  unreachable, !dbg !4600

6:                                                ; preds = %2
  ret ptr %3, !dbg !4601
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4602 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4606, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %1, metadata !4607, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4609
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4611
  call void @llvm.dbg.value(metadata ptr %3, metadata !4275, metadata !DIExpression()), !dbg !4612
  %4 = icmp eq ptr %3, null, !dbg !4614
  br i1 %4, label %5, label %6, !dbg !4615

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4616
  unreachable, !dbg !4616

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4617, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr %0, metadata !4620, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64 %1, metadata !4621, metadata !DIExpression()), !dbg !4622
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4624
  ret ptr %3, !dbg !4625
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4626 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4630, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %1, metadata !4631, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %1, metadata !4313, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.value(metadata i64 %1, metadata !4315, metadata !DIExpression()), !dbg !4635
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4637
  call void @llvm.dbg.value(metadata ptr %3, metadata !4275, metadata !DIExpression()), !dbg !4638
  %4 = icmp eq ptr %3, null, !dbg !4640
  br i1 %4, label %5, label %6, !dbg !4641

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4642
  unreachable, !dbg !4642

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4617, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata ptr %0, metadata !4620, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 %1, metadata !4621, metadata !DIExpression()), !dbg !4643
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4645
  ret ptr %3, !dbg !4646
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4647 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4651, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.value(metadata i64 %1, metadata !4652, metadata !DIExpression()), !dbg !4654
  %3 = add nsw i64 %1, 1, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %3, metadata !4313, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %3, metadata !4315, metadata !DIExpression()), !dbg !4658
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4660
  call void @llvm.dbg.value(metadata ptr %4, metadata !4275, metadata !DIExpression()), !dbg !4661
  %5 = icmp eq ptr %4, null, !dbg !4663
  br i1 %5, label %6, label %7, !dbg !4664

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4665
  unreachable, !dbg !4665

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4653, metadata !DIExpression()), !dbg !4654
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4666
  store i8 0, ptr %8, align 1, !dbg !4667, !tbaa !1145
  call void @llvm.dbg.value(metadata ptr %4, metadata !4617, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata ptr %0, metadata !4620, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %1, metadata !4621, metadata !DIExpression()), !dbg !4668
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4670
  ret ptr %4, !dbg !4671
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4672 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4674, metadata !DIExpression()), !dbg !4675
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4676
  %3 = add i64 %2, 1, !dbg !4677
  call void @llvm.dbg.value(metadata ptr %0, metadata !4606, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i64 %3, metadata !4607, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i64 %3, metadata !4299, metadata !DIExpression()), !dbg !4680
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4682
  call void @llvm.dbg.value(metadata ptr %4, metadata !4275, metadata !DIExpression()), !dbg !4683
  %5 = icmp eq ptr %4, null, !dbg !4685
  br i1 %5, label %6, label %7, !dbg !4686

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4687
  unreachable, !dbg !4687

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4617, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata ptr %0, metadata !4620, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i64 %3, metadata !4621, metadata !DIExpression()), !dbg !4688
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4690
  ret ptr %4, !dbg !4691
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4692 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4697, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %1, metadata !4694, metadata !DIExpression()), !dbg !4698
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #40, !dbg !4697
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #40, !dbg !4697
  %3 = icmp eq i32 %1, 0, !dbg !4697
  tail call void @llvm.assume(i1 %3), !dbg !4697
  tail call void @abort() #42, !dbg !4699
  unreachable, !dbg !4699
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4700 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4704, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i32 %1, metadata !4705, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i64 %2, metadata !4706, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i64 %3, metadata !4707, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata ptr %4, metadata !4708, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata ptr %5, metadata !4709, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i32 %6, metadata !4710, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i32 %7, metadata !4711, metadata !DIExpression()), !dbg !4721
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40, !dbg !4722
  call void @llvm.dbg.value(metadata ptr %9, metadata !4712, metadata !DIExpression(DW_OP_deref)), !dbg !4721
  %10 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #40, !dbg !4723
  call void @llvm.dbg.value(metadata i32 %10, metadata !4714, metadata !DIExpression()), !dbg !4721
  %11 = icmp eq i32 %10, 4, !dbg !4724
  br i1 %11, label %41, label %12, !dbg !4726

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4727, !tbaa !1337
  call void @llvm.dbg.value(metadata i64 %13, metadata !4712, metadata !DIExpression()), !dbg !4721
  %14 = icmp slt i64 %13, %2, !dbg !4730
  br i1 %14, label %15, label %20, !dbg !4731

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !4713, metadata !DIExpression()), !dbg !4721
  %16 = and i32 %7, 4, !dbg !4732
  %17 = icmp eq i32 %16, 0, !dbg !4734
  %18 = select i1 %17, i32 75, i32 34, !dbg !4734
  call void @llvm.dbg.value(metadata i32 %18, metadata !4716, metadata !DIExpression()), !dbg !4721
  %19 = icmp eq i32 %10, 0, !dbg !4735
  call void @llvm.dbg.value(metadata i32 undef, metadata !4714, metadata !DIExpression()), !dbg !4721
  br i1 %19, label %34, label %27, !dbg !4737

20:                                               ; preds = %12
  %21 = icmp sgt i64 %13, %3, !dbg !4738
  br i1 %21, label %22, label %27, !dbg !4740

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !4713, metadata !DIExpression()), !dbg !4721
  %23 = and i32 %7, 8, !dbg !4741
  %24 = icmp eq i32 %23, 0, !dbg !4743
  %25 = select i1 %24, i32 75, i32 34, !dbg !4743
  call void @llvm.dbg.value(metadata i32 %25, metadata !4716, metadata !DIExpression()), !dbg !4721
  %26 = icmp eq i32 %10, 0, !dbg !4744
  call void @llvm.dbg.value(metadata i32 undef, metadata !4714, metadata !DIExpression()), !dbg !4721
  br i1 %26, label %34, label %27, !dbg !4746

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !4713, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i32 %10, metadata !4714, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i32 %28, metadata !4716, metadata !DIExpression()), !dbg !4721
  %30 = icmp eq i32 %10, 1, !dbg !4747
  %31 = select i1 %30, i32 %28, i32 0, !dbg !4748
  call void @llvm.dbg.value(metadata i32 %31, metadata !4717, metadata !DIExpression()), !dbg !4721
  %32 = icmp eq i32 %10, 0, !dbg !4749
  br i1 %32, label %46, label %33, !dbg !4750

33:                                               ; preds = %27
  br i1 %30, label %34, label %41, !dbg !4751

34:                                               ; preds = %22, %15, %33
  %35 = phi i64 [ %29, %33 ], [ %3, %22 ], [ %2, %15 ]
  %36 = phi i32 [ %28, %33 ], [ %25, %22 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4712, metadata !DIExpression()), !dbg !4721
  %37 = icmp slt i64 %13, 0, !dbg !4752
  %38 = select i1 %37, i32 1, i32 2, !dbg !4753
  %39 = and i32 %38, %7, !dbg !4754
  %40 = icmp eq i32 %39, 0, !dbg !4754
  br i1 %40, label %41, label %46, !dbg !4755

41:                                               ; preds = %8, %34, %33
  %42 = phi i32 [ %36, %34 ], [ 0, %33 ], [ 0, %8 ]
  %43 = icmp eq i32 %6, 0, !dbg !4756
  %44 = select i1 %43, i32 1, i32 %6, !dbg !4756
  %45 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !4756
  call void (i32, i32, ptr, ...) @error(i32 noundef %44, i32 noundef %42, ptr noundef nonnull @.str.167, ptr noundef nonnull %5, ptr noundef %45) #40, !dbg !4756
  unreachable, !dbg !4756

46:                                               ; preds = %34, %27
  %47 = phi i32 [ %36, %34 ], [ %31, %27 ]
  %48 = phi i64 [ %35, %34 ], [ %29, %27 ]
  %49 = tail call ptr @__errno_location() #43, !dbg !4757
  store i32 %47, ptr %49, align 4, !dbg !4758, !tbaa !1136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !4759
  ret i64 %48, !dbg !4760
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4761 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4765, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %1, metadata !4766, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %2, metadata !4767, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata ptr %3, metadata !4768, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata ptr %4, metadata !4769, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 %5, metadata !4770, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata ptr %0, metadata !4704, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 10, metadata !4705, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i64 %1, metadata !4706, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i64 %2, metadata !4707, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata ptr %3, metadata !4708, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata ptr %4, metadata !4709, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 %5, metadata !4710, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 0, metadata !4711, metadata !DIExpression()), !dbg !4772
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !4774
  call void @llvm.dbg.value(metadata ptr %7, metadata !4712, metadata !DIExpression(DW_OP_deref)), !dbg !4772
  %8 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #40, !dbg !4775
  call void @llvm.dbg.value(metadata i32 %8, metadata !4714, metadata !DIExpression()), !dbg !4772
  %9 = icmp eq i32 %8, 4, !dbg !4776
  br i1 %9, label %22, label %10, !dbg !4777

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4778, !tbaa !1337
  call void @llvm.dbg.value(metadata i64 %11, metadata !4712, metadata !DIExpression()), !dbg !4772
  %12 = icmp slt i64 %11, %1, !dbg !4779
  br i1 %12, label %13, label %15, !dbg !4780

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !4713, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 75, metadata !4716, metadata !DIExpression()), !dbg !4772
  %14 = icmp eq i32 %8, 0, !dbg !4781
  call void @llvm.dbg.value(metadata i32 undef, metadata !4714, metadata !DIExpression()), !dbg !4772
  br i1 %14, label %21, label %19, !dbg !4782

15:                                               ; preds = %10
  %16 = icmp sgt i64 %11, %2, !dbg !4783
  br i1 %16, label %17, label %19, !dbg !4784

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !4713, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 75, metadata !4716, metadata !DIExpression()), !dbg !4772
  %18 = icmp eq i32 %8, 0, !dbg !4785
  call void @llvm.dbg.value(metadata i32 undef, metadata !4714, metadata !DIExpression()), !dbg !4772
  br i1 %18, label %21, label %19, !dbg !4786

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !4713, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 %8, metadata !4714, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 75, metadata !4716, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 poison, metadata !4717, metadata !DIExpression()), !dbg !4772
  switch i32 %8, label %22 [
    i32 0, label %27
    i32 1, label %21
  ], !dbg !4787

21:                                               ; preds = %19, %17, %13
  call void @llvm.dbg.value(metadata i64 %11, metadata !4712, metadata !DIExpression()), !dbg !4772
  br label %22

22:                                               ; preds = %19, %21, %6
  %23 = phi i32 [ 75, %21 ], [ 0, %6 ], [ 0, %19 ]
  %24 = icmp eq i32 %5, 0, !dbg !4788
  %25 = select i1 %24, i32 1, i32 %5, !dbg !4788
  %26 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !4788
  call void (i32, i32, ptr, ...) @error(i32 noundef %25, i32 noundef %23, ptr noundef nonnull @.str.167, ptr noundef nonnull %4, ptr noundef %26) #40, !dbg !4788
  unreachable, !dbg !4788

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4772
  %28 = tail call ptr @__errno_location() #43, !dbg !4789
  store i32 0, ptr %28, align 4, !dbg !4790, !tbaa !1136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !4791
  ret i64 %20, !dbg !4792
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4793 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4799, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %1, metadata !4800, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i32 %2, metadata !4801, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %3, metadata !4802, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %4, metadata !4803, metadata !DIExpression()), !dbg !4813
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !4814
  %7 = icmp eq ptr %1, null, !dbg !4815
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4815
  call void @llvm.dbg.value(metadata ptr %8, metadata !4805, metadata !DIExpression()), !dbg !4813
  %9 = tail call ptr @__errno_location() #43, !dbg !4816
  store i32 0, ptr %9, align 4, !dbg !4817, !tbaa !1136
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef %8, i32 noundef %2) #40, !dbg !4818
  call void @llvm.dbg.value(metadata i64 %10, metadata !4806, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i32 0, metadata !4807, metadata !DIExpression()), !dbg !4813
  %11 = load ptr, ptr %8, align 8, !dbg !4819, !tbaa !1055
  %12 = icmp eq ptr %11, %0, !dbg !4821
  br i1 %12, label %13, label %22, !dbg !4822

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4823
  br i1 %14, label %991, label %15, !dbg !4826

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4827, !tbaa !1145
  %17 = icmp eq i8 %16, 0, !dbg !4827
  br i1 %17, label %991, label %18, !dbg !4828

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !4827
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #41, !dbg !4829
  %21 = icmp eq ptr %20, null, !dbg !4829
  br i1 %21, label %991, label %29, !dbg !4830

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4831, !tbaa !1136
  switch i32 %23, label %991 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4833

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !4807, metadata !DIExpression()), !dbg !4813
  br label %25, !dbg !4834

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4813
  call void @llvm.dbg.value(metadata i32 %26, metadata !4807, metadata !DIExpression()), !dbg !4813
  %27 = icmp eq ptr %4, null, !dbg !4836
  br i1 %27, label %28, label %29, !dbg !4838

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !4806, metadata !DIExpression()), !dbg !4813
  store i64 %10, ptr %3, align 8, !dbg !4839, !tbaa !1337
  br label %991, !dbg !4841

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4842, !tbaa !1145
  %33 = sext i8 %32 to i32, !dbg !4842
  %34 = icmp eq i8 %32, 0, !dbg !4843
  br i1 %34, label %988, label %35, !dbg !4844

35:                                               ; preds = %29
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %33) #41, !dbg !4845
  %37 = icmp eq ptr %36, null, !dbg !4845
  br i1 %37, label %38, label %40, !dbg !4847

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %10, metadata !4806, metadata !DIExpression()), !dbg !4813
  store i64 %31, ptr %3, align 8, !dbg !4848, !tbaa !1337
  %39 = or i32 %30, 2, !dbg !4850
  br label %991, !dbg !4851

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !4808, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i32 1, metadata !4811, metadata !DIExpression()), !dbg !4852
  switch i32 %33, label %54 [
    i32 69, label %41
    i32 71, label %41
    i32 103, label %41
    i32 107, label %41
    i32 75, label %41
    i32 77, label %41
    i32 109, label %41
    i32 80, label %41
    i32 81, label %41
    i32 82, label %41
    i32 84, label %41
    i32 116, label %41
    i32 89, label %41
    i32 90, label %41
  ], !dbg !4853

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #41, !dbg !4854
  %43 = icmp eq ptr %42, null, !dbg !4854
  br i1 %43, label %54, label %44, !dbg !4857

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4858
  %46 = load i8, ptr %45, align 1, !dbg !4858, !tbaa !1145
  %47 = sext i8 %46 to i32, !dbg !4858
  switch i32 %47, label %54 [
    i32 105, label %48
    i32 66, label %53
    i32 68, label %53
  ], !dbg !4859

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4860
  %50 = load i8, ptr %49, align 1, !dbg !4860, !tbaa !1145
  %51 = icmp eq i8 %50, 66, !dbg !4863
  %52 = select i1 %51, i64 3, i64 1, !dbg !4864
  br label %54, !dbg !4864

53:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !4808, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i32 2, metadata !4811, metadata !DIExpression()), !dbg !4852
  br label %54, !dbg !4865

54:                                               ; preds = %48, %41, %44, %53, %40
  %55 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %53 ], [ 1024, %41 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %53 ], [ 1, %41 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4811, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i32 poison, metadata !4808, metadata !DIExpression()), !dbg !4852
  switch i32 %33, label %986 [
    i32 98, label %69
    i32 66, label %77
    i32 99, label %977
    i32 69, label %67
    i32 71, label %181
    i32 103, label %181
    i32 107, label %231
    i32 75, label %231
    i32 77, label %244
    i32 109, label %244
    i32 80, label %65
    i32 81, label %63
    i32 82, label %61
    i32 84, label %662
    i32 116, label %662
    i32 119, label %728
    i32 89, label %59
    i32 90, label %57
  ], !dbg !4866

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 7, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 6, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4885
  %58 = icmp slt i64 %31, 0, !dbg !4887
  br i1 %58, label %865, label %871, !dbg !4887

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 8, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 7, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4891
  %60 = icmp slt i64 %31, 0, !dbg !4893
  br i1 %60, label %737, label %743, !dbg !4893

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 9, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 8, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %62 = icmp slt i64 %31, 0, !dbg !4898
  br i1 %62, label %518, label %524, !dbg !4898

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 10, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 9, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %64 = icmp slt i64 %31, 0, !dbg !4903
  br i1 %64, label %358, label %364, !dbg !4903

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 5, metadata !4874, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 4, metadata !4874, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4906
  %66 = icmp slt i64 %31, 0, !dbg !4908
  br i1 %66, label %278, label %284, !dbg !4908

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 6, metadata !4874, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 5, metadata !4874, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4911
  %68 = icmp slt i64 %31, 0, !dbg !4913
  br i1 %68, label %85, label %91, !dbg !4913

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 512, metadata !4883, metadata !DIExpression()), !dbg !4914
  %70 = icmp slt i64 %31, 0, !dbg !4916
  br i1 %70, label %71, label %73, !dbg !4916

71:                                               ; preds = %69
  %72 = icmp ult i64 %31, -18014398509481984, !dbg !4916
  br i1 %72, label %977, label %75, !dbg !4916

73:                                               ; preds = %69
  %74 = icmp ugt i64 %31, 18014398509481983, !dbg !4916
  br i1 %74, label %977, label %75, !dbg !4916

75:                                               ; preds = %71, %73
  %76 = shl nsw i64 %31, 9, !dbg !4916
  call void @llvm.dbg.value(metadata i64 %76, metadata !4884, metadata !DIExpression()), !dbg !4914
  br label %977, !dbg !4917

77:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 1024, metadata !4883, metadata !DIExpression()), !dbg !4918
  %78 = icmp slt i64 %31, 0, !dbg !4920
  br i1 %78, label %79, label %81, !dbg !4920

79:                                               ; preds = %77
  %80 = icmp ult i64 %31, -9007199254740992, !dbg !4920
  br i1 %80, label %977, label %83, !dbg !4920

81:                                               ; preds = %77
  %82 = icmp ugt i64 %31, 9007199254740991, !dbg !4920
  br i1 %82, label %977, label %83, !dbg !4920

83:                                               ; preds = %79, %81
  %84 = shl nsw i64 %31, 10, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %84, metadata !4884, metadata !DIExpression()), !dbg !4918
  br label %977, !dbg !4921

85:                                               ; preds = %67
  %86 = icmp eq i64 %31, -1, !dbg !4913
  br i1 %86, label %94, label %87, !dbg !4913

87:                                               ; preds = %85
  %88 = sub i64 0, %31, !dbg !4913
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4913
  %90 = icmp ult i64 %89, %55, !dbg !4913
  br i1 %90, label %102, label %94, !dbg !4913

91:                                               ; preds = %67
  %92 = udiv i64 9223372036854775807, %55, !dbg !4913
  %93 = icmp ult i64 %92, %31, !dbg !4913
  br i1 %93, label %97, label %94, !dbg !4913

94:                                               ; preds = %85, %87, %91
  %95 = mul i64 %31, %55, !dbg !4913
  call void @llvm.dbg.value(metadata i64 %95, metadata !4884, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 4, metadata !4874, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4911
  %96 = icmp slt i64 %95, 0, !dbg !4913
  br i1 %96, label %102, label %97, !dbg !4913

97:                                               ; preds = %91, %94
  %98 = phi i32 [ 0, %94 ], [ 1, %91 ]
  %99 = phi i64 [ %95, %94 ], [ 9223372036854775807, %91 ]
  %100 = udiv i64 9223372036854775807, %55, !dbg !4913
  %101 = icmp ult i64 %100, %99, !dbg !4913
  br i1 %101, label %113, label %108, !dbg !4913

102:                                              ; preds = %87, %94
  %103 = phi i32 [ 0, %94 ], [ 1, %87 ]
  %104 = phi i64 [ %95, %94 ], [ -9223372036854775808, %87 ]
  %105 = sub i64 0, %104, !dbg !4913
  %106 = udiv i64 -9223372036854775808, %105, !dbg !4913
  %107 = icmp ult i64 %106, %55, !dbg !4913
  br i1 %107, label %118, label %108, !dbg !4913

108:                                              ; preds = %97, %102
  %109 = phi i32 [ %103, %102 ], [ %98, %97 ]
  %110 = phi i64 [ %104, %102 ], [ %99, %97 ]
  %111 = mul i64 %110, %55, !dbg !4913
  call void @llvm.dbg.value(metadata i64 %111, metadata !4884, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %109, metadata !4867, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 3, metadata !4874, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4911
  %112 = icmp slt i64 %111, 0, !dbg !4913
  br i1 %112, label %118, label %113, !dbg !4913

113:                                              ; preds = %97, %108
  %114 = phi i32 [ %109, %108 ], [ 1, %97 ]
  %115 = phi i64 [ %111, %108 ], [ 9223372036854775807, %97 ]
  %116 = udiv i64 9223372036854775807, %55, !dbg !4913
  %117 = icmp ult i64 %116, %115, !dbg !4913
  br i1 %117, label %129, label %124, !dbg !4913

118:                                              ; preds = %102, %108
  %119 = phi i32 [ %109, %108 ], [ 1, %102 ]
  %120 = phi i64 [ %111, %108 ], [ -9223372036854775808, %102 ]
  %121 = sub i64 0, %120, !dbg !4913
  %122 = udiv i64 -9223372036854775808, %121, !dbg !4913
  %123 = icmp ult i64 %122, %55, !dbg !4913
  br i1 %123, label %134, label %124, !dbg !4913

124:                                              ; preds = %113, %118
  %125 = phi i32 [ %119, %118 ], [ %114, %113 ]
  %126 = phi i64 [ %120, %118 ], [ %115, %113 ]
  %127 = mul i64 %126, %55, !dbg !4913
  call void @llvm.dbg.value(metadata i64 %127, metadata !4884, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %125, metadata !4867, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 2, metadata !4874, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4911
  %128 = icmp slt i64 %127, 0, !dbg !4913
  br i1 %128, label %134, label %129, !dbg !4913

129:                                              ; preds = %113, %124
  %130 = phi i32 [ %125, %124 ], [ 1, %113 ]
  %131 = phi i64 [ %127, %124 ], [ 9223372036854775807, %113 ]
  %132 = udiv i64 9223372036854775807, %55, !dbg !4913
  %133 = icmp ult i64 %132, %131, !dbg !4913
  br i1 %133, label %145, label %140, !dbg !4913

134:                                              ; preds = %118, %124
  %135 = phi i32 [ %125, %124 ], [ 1, %118 ]
  %136 = phi i64 [ %127, %124 ], [ -9223372036854775808, %118 ]
  %137 = sub i64 0, %136, !dbg !4913
  %138 = udiv i64 -9223372036854775808, %137, !dbg !4913
  %139 = icmp ult i64 %138, %55, !dbg !4913
  br i1 %139, label %150, label %140, !dbg !4913

140:                                              ; preds = %129, %134
  %141 = phi i32 [ %135, %134 ], [ %130, %129 ]
  %142 = phi i64 [ %136, %134 ], [ %131, %129 ]
  %143 = mul i64 %142, %55, !dbg !4913
  call void @llvm.dbg.value(metadata i64 %143, metadata !4884, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %141, metadata !4867, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4911
  %144 = icmp slt i64 %143, 0, !dbg !4913
  br i1 %144, label %150, label %145, !dbg !4913

145:                                              ; preds = %129, %140
  %146 = phi i32 [ %141, %140 ], [ 1, %129 ]
  %147 = phi i64 [ %143, %140 ], [ 9223372036854775807, %129 ]
  %148 = udiv i64 9223372036854775807, %55, !dbg !4913
  %149 = icmp ult i64 %148, %147, !dbg !4913
  br i1 %149, label %161, label %156, !dbg !4913

150:                                              ; preds = %134, %140
  %151 = phi i32 [ %141, %140 ], [ 1, %134 ]
  %152 = phi i64 [ %143, %140 ], [ -9223372036854775808, %134 ]
  %153 = sub i64 0, %152, !dbg !4913
  %154 = udiv i64 -9223372036854775808, %153, !dbg !4913
  %155 = icmp ult i64 %154, %55, !dbg !4913
  br i1 %155, label %166, label %156, !dbg !4913

156:                                              ; preds = %145, %150
  %157 = phi i32 [ %151, %150 ], [ %146, %145 ]
  %158 = phi i64 [ %152, %150 ], [ %147, %145 ]
  %159 = mul i64 %158, %55, !dbg !4913
  call void @llvm.dbg.value(metadata i64 %159, metadata !4884, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %157, metadata !4867, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4911
  %160 = icmp slt i64 %159, 0, !dbg !4913
  br i1 %160, label %166, label %161, !dbg !4913

161:                                              ; preds = %145, %156
  %162 = phi i32 [ %157, %156 ], [ 1, %145 ]
  %163 = phi i64 [ %159, %156 ], [ 9223372036854775807, %145 ]
  %164 = udiv i64 9223372036854775807, %55, !dbg !4913
  %165 = icmp ult i64 %164, %163, !dbg !4913
  br i1 %165, label %176, label %172, !dbg !4913

166:                                              ; preds = %150, %156
  %167 = phi i32 [ %157, %156 ], [ 1, %150 ]
  %168 = phi i64 [ %159, %156 ], [ -9223372036854775808, %150 ]
  %169 = sub i64 0, %168, !dbg !4913
  %170 = udiv i64 -9223372036854775808, %169, !dbg !4913
  %171 = icmp ult i64 %170, %55, !dbg !4913
  br i1 %171, label %176, label %172, !dbg !4913

172:                                              ; preds = %166, %161
  %173 = phi i32 [ %167, %166 ], [ %162, %161 ]
  %174 = phi i64 [ %168, %166 ], [ %163, %161 ]
  %175 = mul i64 %174, %55, !dbg !4913
  call void @llvm.dbg.value(metadata i64 %175, metadata !4884, metadata !DIExpression()), !dbg !4911
  br label %176, !dbg !4922

176:                                              ; preds = %172, %166, %161
  %177 = phi i32 [ %173, %172 ], [ %162, %161 ], [ %167, %166 ]
  %178 = phi i64 [ %175, %172 ], [ 9223372036854775807, %161 ], [ -9223372036854775808, %166 ], !dbg !4911
  %179 = phi i32 [ 0, %172 ], [ 1, %161 ], [ 1, %166 ], !dbg !4911
  %180 = or i32 %179, %177, !dbg !4923
  call void @llvm.dbg.value(metadata i32 %180, metadata !4867, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4909
  br label %977, !dbg !4924

181:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4872, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 poison, metadata !4873, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 2, metadata !4874, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4927
  %182 = icmp slt i64 %31, 0, !dbg !4929
  br i1 %182, label %183, label %189, !dbg !4929

183:                                              ; preds = %181
  %184 = icmp eq i64 %31, -1, !dbg !4929
  br i1 %184, label %192, label %185, !dbg !4929

185:                                              ; preds = %183
  %186 = sub i64 0, %31, !dbg !4929
  %187 = udiv i64 -9223372036854775808, %186, !dbg !4929
  %188 = icmp ult i64 %187, %55, !dbg !4929
  br i1 %188, label %200, label %192, !dbg !4929

189:                                              ; preds = %181
  %190 = udiv i64 9223372036854775807, %55, !dbg !4929
  %191 = icmp ult i64 %190, %31, !dbg !4929
  br i1 %191, label %195, label %192, !dbg !4929

192:                                              ; preds = %183, %185, %189
  %193 = mul i64 %31, %55, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %193, metadata !4884, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4927
  %194 = icmp slt i64 %193, 0, !dbg !4929
  br i1 %194, label %200, label %195, !dbg !4929

195:                                              ; preds = %189, %192
  %196 = phi i32 [ 0, %192 ], [ 1, %189 ]
  %197 = phi i64 [ %193, %192 ], [ 9223372036854775807, %189 ]
  %198 = udiv i64 9223372036854775807, %55, !dbg !4929
  %199 = icmp ult i64 %198, %197, !dbg !4929
  br i1 %199, label %211, label %206, !dbg !4929

200:                                              ; preds = %185, %192
  %201 = phi i32 [ 0, %192 ], [ 1, %185 ]
  %202 = phi i64 [ %193, %192 ], [ -9223372036854775808, %185 ]
  %203 = sub i64 0, %202, !dbg !4929
  %204 = udiv i64 -9223372036854775808, %203, !dbg !4929
  %205 = icmp ult i64 %204, %55, !dbg !4929
  br i1 %205, label %216, label %206, !dbg !4929

206:                                              ; preds = %195, %200
  %207 = phi i32 [ %201, %200 ], [ %196, %195 ]
  %208 = phi i64 [ %202, %200 ], [ %197, %195 ]
  %209 = mul i64 %208, %55, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %209, metadata !4884, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 %207, metadata !4867, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4927
  %210 = icmp slt i64 %209, 0, !dbg !4929
  br i1 %210, label %216, label %211, !dbg !4929

211:                                              ; preds = %195, %206
  %212 = phi i32 [ %207, %206 ], [ 1, %195 ]
  %213 = phi i64 [ %209, %206 ], [ 9223372036854775807, %195 ]
  %214 = udiv i64 9223372036854775807, %55, !dbg !4929
  %215 = icmp ult i64 %214, %213, !dbg !4929
  br i1 %215, label %226, label %222, !dbg !4929

216:                                              ; preds = %200, %206
  %217 = phi i32 [ %207, %206 ], [ 1, %200 ]
  %218 = phi i64 [ %209, %206 ], [ -9223372036854775808, %200 ]
  %219 = sub i64 0, %218, !dbg !4929
  %220 = udiv i64 -9223372036854775808, %219, !dbg !4929
  %221 = icmp ult i64 %220, %55, !dbg !4929
  br i1 %221, label %226, label %222, !dbg !4929

222:                                              ; preds = %216, %211
  %223 = phi i32 [ %217, %216 ], [ %212, %211 ]
  %224 = phi i64 [ %218, %216 ], [ %213, %211 ]
  %225 = mul i64 %224, %55, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %225, metadata !4884, metadata !DIExpression()), !dbg !4927
  br label %226, !dbg !4930

226:                                              ; preds = %222, %216, %211
  %227 = phi i32 [ %223, %222 ], [ %212, %211 ], [ %217, %216 ]
  %228 = phi i64 [ %225, %222 ], [ 9223372036854775807, %211 ], [ -9223372036854775808, %216 ], !dbg !4927
  %229 = phi i32 [ 0, %222 ], [ 1, %211 ], [ 1, %216 ], !dbg !4927
  %230 = or i32 %229, %227, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %230, metadata !4867, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4925
  br label %977, !dbg !4924

231:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4872, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 poison, metadata !4873, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4934
  %232 = icmp slt i64 %31, 0, !dbg !4936
  br i1 %232, label %233, label %239, !dbg !4936

233:                                              ; preds = %231
  %234 = icmp eq i64 %31, -1, !dbg !4936
  br i1 %234, label %242, label %235, !dbg !4936

235:                                              ; preds = %233
  %236 = sub i64 0, %31, !dbg !4936
  %237 = udiv i64 -9223372036854775808, %236, !dbg !4936
  %238 = icmp ult i64 %237, %55, !dbg !4936
  br i1 %238, label %977, label %242, !dbg !4936

239:                                              ; preds = %231
  %240 = udiv i64 9223372036854775807, %55, !dbg !4936
  %241 = icmp ult i64 %240, %31, !dbg !4936
  br i1 %241, label %977, label %242, !dbg !4936

242:                                              ; preds = %239, %235, %233
  %243 = mul i64 %31, %55, !dbg !4936
  call void @llvm.dbg.value(metadata i64 %243, metadata !4884, metadata !DIExpression()), !dbg !4934
  br label %977, !dbg !4937

244:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4872, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i32 poison, metadata !4873, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4940
  %245 = icmp slt i64 %31, 0, !dbg !4942
  br i1 %245, label %246, label %252, !dbg !4942

246:                                              ; preds = %244
  %247 = icmp eq i64 %31, -1, !dbg !4942
  br i1 %247, label %255, label %248, !dbg !4942

248:                                              ; preds = %246
  %249 = sub i64 0, %31, !dbg !4942
  %250 = udiv i64 -9223372036854775808, %249, !dbg !4942
  %251 = icmp ult i64 %250, %55, !dbg !4942
  br i1 %251, label %263, label %255, !dbg !4942

252:                                              ; preds = %244
  %253 = udiv i64 9223372036854775807, %55, !dbg !4942
  %254 = icmp ult i64 %253, %31, !dbg !4942
  br i1 %254, label %258, label %255, !dbg !4942

255:                                              ; preds = %246, %248, %252
  %256 = mul i64 %31, %55, !dbg !4942
  call void @llvm.dbg.value(metadata i64 %256, metadata !4884, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4940
  %257 = icmp slt i64 %256, 0, !dbg !4942
  br i1 %257, label %263, label %258, !dbg !4942

258:                                              ; preds = %252, %255
  %259 = phi i32 [ 0, %255 ], [ 1, %252 ]
  %260 = phi i64 [ %256, %255 ], [ 9223372036854775807, %252 ]
  %261 = udiv i64 9223372036854775807, %55, !dbg !4942
  %262 = icmp ult i64 %261, %260, !dbg !4942
  br i1 %262, label %273, label %269, !dbg !4942

263:                                              ; preds = %248, %255
  %264 = phi i32 [ 0, %255 ], [ 1, %248 ]
  %265 = phi i64 [ %256, %255 ], [ -9223372036854775808, %248 ]
  %266 = sub i64 0, %265, !dbg !4942
  %267 = udiv i64 -9223372036854775808, %266, !dbg !4942
  %268 = icmp ult i64 %267, %55, !dbg !4942
  br i1 %268, label %273, label %269, !dbg !4942

269:                                              ; preds = %263, %258
  %270 = phi i32 [ %264, %263 ], [ %259, %258 ]
  %271 = phi i64 [ %265, %263 ], [ %260, %258 ]
  %272 = mul i64 %271, %55, !dbg !4942
  call void @llvm.dbg.value(metadata i64 %272, metadata !4884, metadata !DIExpression()), !dbg !4940
  br label %273, !dbg !4943

273:                                              ; preds = %269, %263, %258
  %274 = phi i32 [ %270, %269 ], [ %259, %258 ], [ %264, %263 ]
  %275 = phi i64 [ %272, %269 ], [ 9223372036854775807, %258 ], [ -9223372036854775808, %263 ], !dbg !4940
  %276 = phi i32 [ 0, %269 ], [ 1, %258 ], [ 1, %263 ], !dbg !4940
  %277 = or i32 %276, %274, !dbg !4944
  call void @llvm.dbg.value(metadata i32 %277, metadata !4867, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4938
  br label %977, !dbg !4924

278:                                              ; preds = %65
  %279 = icmp eq i64 %31, -1, !dbg !4908
  br i1 %279, label %287, label %280, !dbg !4908

280:                                              ; preds = %278
  %281 = sub i64 0, %31, !dbg !4908
  %282 = udiv i64 -9223372036854775808, %281, !dbg !4908
  %283 = icmp ult i64 %282, %55, !dbg !4908
  br i1 %283, label %295, label %287, !dbg !4908

284:                                              ; preds = %65
  %285 = udiv i64 9223372036854775807, %55, !dbg !4908
  %286 = icmp ult i64 %285, %31, !dbg !4908
  br i1 %286, label %290, label %287, !dbg !4908

287:                                              ; preds = %278, %280, %284
  %288 = mul i64 %31, %55, !dbg !4908
  call void @llvm.dbg.value(metadata i64 %288, metadata !4884, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 3, metadata !4874, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4906
  %289 = icmp slt i64 %288, 0, !dbg !4908
  br i1 %289, label %295, label %290, !dbg !4908

290:                                              ; preds = %284, %287
  %291 = phi i32 [ 0, %287 ], [ 1, %284 ]
  %292 = phi i64 [ %288, %287 ], [ 9223372036854775807, %284 ]
  %293 = udiv i64 9223372036854775807, %55, !dbg !4908
  %294 = icmp ult i64 %293, %292, !dbg !4908
  br i1 %294, label %306, label %301, !dbg !4908

295:                                              ; preds = %280, %287
  %296 = phi i32 [ 0, %287 ], [ 1, %280 ]
  %297 = phi i64 [ %288, %287 ], [ -9223372036854775808, %280 ]
  %298 = sub i64 0, %297, !dbg !4908
  %299 = udiv i64 -9223372036854775808, %298, !dbg !4908
  %300 = icmp ult i64 %299, %55, !dbg !4908
  br i1 %300, label %311, label %301, !dbg !4908

301:                                              ; preds = %290, %295
  %302 = phi i32 [ %296, %295 ], [ %291, %290 ]
  %303 = phi i64 [ %297, %295 ], [ %292, %290 ]
  %304 = mul i64 %303, %55, !dbg !4908
  call void @llvm.dbg.value(metadata i64 %304, metadata !4884, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 %302, metadata !4867, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 2, metadata !4874, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4906
  %305 = icmp slt i64 %304, 0, !dbg !4908
  br i1 %305, label %311, label %306, !dbg !4908

306:                                              ; preds = %290, %301
  %307 = phi i32 [ %302, %301 ], [ 1, %290 ]
  %308 = phi i64 [ %304, %301 ], [ 9223372036854775807, %290 ]
  %309 = udiv i64 9223372036854775807, %55, !dbg !4908
  %310 = icmp ult i64 %309, %308, !dbg !4908
  br i1 %310, label %322, label %317, !dbg !4908

311:                                              ; preds = %295, %301
  %312 = phi i32 [ %302, %301 ], [ 1, %295 ]
  %313 = phi i64 [ %304, %301 ], [ -9223372036854775808, %295 ]
  %314 = sub i64 0, %313, !dbg !4908
  %315 = udiv i64 -9223372036854775808, %314, !dbg !4908
  %316 = icmp ult i64 %315, %55, !dbg !4908
  br i1 %316, label %327, label %317, !dbg !4908

317:                                              ; preds = %306, %311
  %318 = phi i32 [ %312, %311 ], [ %307, %306 ]
  %319 = phi i64 [ %313, %311 ], [ %308, %306 ]
  %320 = mul i64 %319, %55, !dbg !4908
  call void @llvm.dbg.value(metadata i64 %320, metadata !4884, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 %318, metadata !4867, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4906
  %321 = icmp slt i64 %320, 0, !dbg !4908
  br i1 %321, label %327, label %322, !dbg !4908

322:                                              ; preds = %306, %317
  %323 = phi i32 [ %318, %317 ], [ 1, %306 ]
  %324 = phi i64 [ %320, %317 ], [ 9223372036854775807, %306 ]
  %325 = udiv i64 9223372036854775807, %55, !dbg !4908
  %326 = icmp ult i64 %325, %324, !dbg !4908
  br i1 %326, label %338, label %333, !dbg !4908

327:                                              ; preds = %311, %317
  %328 = phi i32 [ %318, %317 ], [ 1, %311 ]
  %329 = phi i64 [ %320, %317 ], [ -9223372036854775808, %311 ]
  %330 = sub i64 0, %329, !dbg !4908
  %331 = udiv i64 -9223372036854775808, %330, !dbg !4908
  %332 = icmp ult i64 %331, %55, !dbg !4908
  br i1 %332, label %343, label %333, !dbg !4908

333:                                              ; preds = %322, %327
  %334 = phi i32 [ %328, %327 ], [ %323, %322 ]
  %335 = phi i64 [ %329, %327 ], [ %324, %322 ]
  %336 = mul i64 %335, %55, !dbg !4908
  call void @llvm.dbg.value(metadata i64 %336, metadata !4884, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 %334, metadata !4867, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4906
  %337 = icmp slt i64 %336, 0, !dbg !4908
  br i1 %337, label %343, label %338, !dbg !4908

338:                                              ; preds = %322, %333
  %339 = phi i32 [ %334, %333 ], [ 1, %322 ]
  %340 = phi i64 [ %336, %333 ], [ 9223372036854775807, %322 ]
  %341 = udiv i64 9223372036854775807, %55, !dbg !4908
  %342 = icmp ult i64 %341, %340, !dbg !4908
  br i1 %342, label %353, label %349, !dbg !4908

343:                                              ; preds = %327, %333
  %344 = phi i32 [ %334, %333 ], [ 1, %327 ]
  %345 = phi i64 [ %336, %333 ], [ -9223372036854775808, %327 ]
  %346 = sub i64 0, %345, !dbg !4908
  %347 = udiv i64 -9223372036854775808, %346, !dbg !4908
  %348 = icmp ult i64 %347, %55, !dbg !4908
  br i1 %348, label %353, label %349, !dbg !4908

349:                                              ; preds = %343, %338
  %350 = phi i32 [ %344, %343 ], [ %339, %338 ]
  %351 = phi i64 [ %345, %343 ], [ %340, %338 ]
  %352 = mul i64 %351, %55, !dbg !4908
  call void @llvm.dbg.value(metadata i64 %352, metadata !4884, metadata !DIExpression()), !dbg !4906
  br label %353, !dbg !4945

353:                                              ; preds = %349, %343, %338
  %354 = phi i32 [ %350, %349 ], [ %339, %338 ], [ %344, %343 ]
  %355 = phi i64 [ %352, %349 ], [ 9223372036854775807, %338 ], [ -9223372036854775808, %343 ], !dbg !4906
  %356 = phi i32 [ 0, %349 ], [ 1, %338 ], [ 1, %343 ], !dbg !4906
  %357 = or i32 %356, %354, !dbg !4946
  call void @llvm.dbg.value(metadata i32 %357, metadata !4867, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  br label %977, !dbg !4924

358:                                              ; preds = %63
  %359 = icmp eq i64 %31, -1, !dbg !4903
  br i1 %359, label %367, label %360, !dbg !4903

360:                                              ; preds = %358
  %361 = sub i64 0, %31, !dbg !4903
  %362 = udiv i64 -9223372036854775808, %361, !dbg !4903
  %363 = icmp ult i64 %362, %55, !dbg !4903
  br i1 %363, label %375, label %367, !dbg !4903

364:                                              ; preds = %63
  %365 = udiv i64 9223372036854775807, %55, !dbg !4903
  %366 = icmp ult i64 %365, %31, !dbg !4903
  br i1 %366, label %370, label %367, !dbg !4903

367:                                              ; preds = %358, %360, %364
  %368 = mul i64 %31, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %368, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 8, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %369 = icmp slt i64 %368, 0, !dbg !4903
  br i1 %369, label %375, label %370, !dbg !4903

370:                                              ; preds = %364, %367
  %371 = phi i32 [ 0, %367 ], [ 1, %364 ]
  %372 = phi i64 [ %368, %367 ], [ 9223372036854775807, %364 ]
  %373 = udiv i64 9223372036854775807, %55, !dbg !4903
  %374 = icmp ult i64 %373, %372, !dbg !4903
  br i1 %374, label %386, label %381, !dbg !4903

375:                                              ; preds = %360, %367
  %376 = phi i32 [ 0, %367 ], [ 1, %360 ]
  %377 = phi i64 [ %368, %367 ], [ -9223372036854775808, %360 ]
  %378 = sub i64 0, %377, !dbg !4903
  %379 = udiv i64 -9223372036854775808, %378, !dbg !4903
  %380 = icmp ult i64 %379, %55, !dbg !4903
  br i1 %380, label %391, label %381, !dbg !4903

381:                                              ; preds = %370, %375
  %382 = phi i32 [ %376, %375 ], [ %371, %370 ]
  %383 = phi i64 [ %377, %375 ], [ %372, %370 ]
  %384 = mul i64 %383, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %384, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %382, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 7, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %385 = icmp slt i64 %384, 0, !dbg !4903
  br i1 %385, label %391, label %386, !dbg !4903

386:                                              ; preds = %370, %381
  %387 = phi i32 [ %382, %381 ], [ 1, %370 ]
  %388 = phi i64 [ %384, %381 ], [ 9223372036854775807, %370 ]
  %389 = udiv i64 9223372036854775807, %55, !dbg !4903
  %390 = icmp ult i64 %389, %388, !dbg !4903
  br i1 %390, label %402, label %397, !dbg !4903

391:                                              ; preds = %375, %381
  %392 = phi i32 [ %382, %381 ], [ 1, %375 ]
  %393 = phi i64 [ %384, %381 ], [ -9223372036854775808, %375 ]
  %394 = sub i64 0, %393, !dbg !4903
  %395 = udiv i64 -9223372036854775808, %394, !dbg !4903
  %396 = icmp ult i64 %395, %55, !dbg !4903
  br i1 %396, label %407, label %397, !dbg !4903

397:                                              ; preds = %386, %391
  %398 = phi i32 [ %392, %391 ], [ %387, %386 ]
  %399 = phi i64 [ %393, %391 ], [ %388, %386 ]
  %400 = mul i64 %399, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %400, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %398, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 6, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %401 = icmp slt i64 %400, 0, !dbg !4903
  br i1 %401, label %407, label %402, !dbg !4903

402:                                              ; preds = %386, %397
  %403 = phi i32 [ %398, %397 ], [ 1, %386 ]
  %404 = phi i64 [ %400, %397 ], [ 9223372036854775807, %386 ]
  %405 = udiv i64 9223372036854775807, %55, !dbg !4903
  %406 = icmp ult i64 %405, %404, !dbg !4903
  br i1 %406, label %418, label %413, !dbg !4903

407:                                              ; preds = %391, %397
  %408 = phi i32 [ %398, %397 ], [ 1, %391 ]
  %409 = phi i64 [ %400, %397 ], [ -9223372036854775808, %391 ]
  %410 = sub i64 0, %409, !dbg !4903
  %411 = udiv i64 -9223372036854775808, %410, !dbg !4903
  %412 = icmp ult i64 %411, %55, !dbg !4903
  br i1 %412, label %423, label %413, !dbg !4903

413:                                              ; preds = %402, %407
  %414 = phi i32 [ %408, %407 ], [ %403, %402 ]
  %415 = phi i64 [ %409, %407 ], [ %404, %402 ]
  %416 = mul i64 %415, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %416, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %414, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 5, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %417 = icmp slt i64 %416, 0, !dbg !4903
  br i1 %417, label %423, label %418, !dbg !4903

418:                                              ; preds = %402, %413
  %419 = phi i32 [ %414, %413 ], [ 1, %402 ]
  %420 = phi i64 [ %416, %413 ], [ 9223372036854775807, %402 ]
  %421 = udiv i64 9223372036854775807, %55, !dbg !4903
  %422 = icmp ult i64 %421, %420, !dbg !4903
  br i1 %422, label %434, label %429, !dbg !4903

423:                                              ; preds = %407, %413
  %424 = phi i32 [ %414, %413 ], [ 1, %407 ]
  %425 = phi i64 [ %416, %413 ], [ -9223372036854775808, %407 ]
  %426 = sub i64 0, %425, !dbg !4903
  %427 = udiv i64 -9223372036854775808, %426, !dbg !4903
  %428 = icmp ult i64 %427, %55, !dbg !4903
  br i1 %428, label %439, label %429, !dbg !4903

429:                                              ; preds = %418, %423
  %430 = phi i32 [ %424, %423 ], [ %419, %418 ]
  %431 = phi i64 [ %425, %423 ], [ %420, %418 ]
  %432 = mul i64 %431, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %432, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %430, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 4, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %433 = icmp slt i64 %432, 0, !dbg !4903
  br i1 %433, label %439, label %434, !dbg !4903

434:                                              ; preds = %418, %429
  %435 = phi i32 [ %430, %429 ], [ 1, %418 ]
  %436 = phi i64 [ %432, %429 ], [ 9223372036854775807, %418 ]
  %437 = udiv i64 9223372036854775807, %55, !dbg !4903
  %438 = icmp ult i64 %437, %436, !dbg !4903
  br i1 %438, label %450, label %445, !dbg !4903

439:                                              ; preds = %423, %429
  %440 = phi i32 [ %430, %429 ], [ 1, %423 ]
  %441 = phi i64 [ %432, %429 ], [ -9223372036854775808, %423 ]
  %442 = sub i64 0, %441, !dbg !4903
  %443 = udiv i64 -9223372036854775808, %442, !dbg !4903
  %444 = icmp ult i64 %443, %55, !dbg !4903
  br i1 %444, label %455, label %445, !dbg !4903

445:                                              ; preds = %434, %439
  %446 = phi i32 [ %440, %439 ], [ %435, %434 ]
  %447 = phi i64 [ %441, %439 ], [ %436, %434 ]
  %448 = mul i64 %447, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %448, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %446, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 3, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %449 = icmp slt i64 %448, 0, !dbg !4903
  br i1 %449, label %455, label %450, !dbg !4903

450:                                              ; preds = %434, %445
  %451 = phi i32 [ %446, %445 ], [ 1, %434 ]
  %452 = phi i64 [ %448, %445 ], [ 9223372036854775807, %434 ]
  %453 = udiv i64 9223372036854775807, %55, !dbg !4903
  %454 = icmp ult i64 %453, %452, !dbg !4903
  br i1 %454, label %466, label %461, !dbg !4903

455:                                              ; preds = %439, %445
  %456 = phi i32 [ %446, %445 ], [ 1, %439 ]
  %457 = phi i64 [ %448, %445 ], [ -9223372036854775808, %439 ]
  %458 = sub i64 0, %457, !dbg !4903
  %459 = udiv i64 -9223372036854775808, %458, !dbg !4903
  %460 = icmp ult i64 %459, %55, !dbg !4903
  br i1 %460, label %471, label %461, !dbg !4903

461:                                              ; preds = %450, %455
  %462 = phi i32 [ %456, %455 ], [ %451, %450 ]
  %463 = phi i64 [ %457, %455 ], [ %452, %450 ]
  %464 = mul i64 %463, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %464, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %462, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 2, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %465 = icmp slt i64 %464, 0, !dbg !4903
  br i1 %465, label %471, label %466, !dbg !4903

466:                                              ; preds = %450, %461
  %467 = phi i32 [ %462, %461 ], [ 1, %450 ]
  %468 = phi i64 [ %464, %461 ], [ 9223372036854775807, %450 ]
  %469 = udiv i64 9223372036854775807, %55, !dbg !4903
  %470 = icmp ult i64 %469, %468, !dbg !4903
  br i1 %470, label %482, label %477, !dbg !4903

471:                                              ; preds = %455, %461
  %472 = phi i32 [ %462, %461 ], [ 1, %455 ]
  %473 = phi i64 [ %464, %461 ], [ -9223372036854775808, %455 ]
  %474 = sub i64 0, %473, !dbg !4903
  %475 = udiv i64 -9223372036854775808, %474, !dbg !4903
  %476 = icmp ult i64 %475, %55, !dbg !4903
  br i1 %476, label %487, label %477, !dbg !4903

477:                                              ; preds = %466, %471
  %478 = phi i32 [ %472, %471 ], [ %467, %466 ]
  %479 = phi i64 [ %473, %471 ], [ %468, %466 ]
  %480 = mul i64 %479, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %480, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %478, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %481 = icmp slt i64 %480, 0, !dbg !4903
  br i1 %481, label %487, label %482, !dbg !4903

482:                                              ; preds = %466, %477
  %483 = phi i32 [ %478, %477 ], [ 1, %466 ]
  %484 = phi i64 [ %480, %477 ], [ 9223372036854775807, %466 ]
  %485 = udiv i64 9223372036854775807, %55, !dbg !4903
  %486 = icmp ult i64 %485, %484, !dbg !4903
  br i1 %486, label %498, label %493, !dbg !4903

487:                                              ; preds = %471, %477
  %488 = phi i32 [ %478, %477 ], [ 1, %471 ]
  %489 = phi i64 [ %480, %477 ], [ -9223372036854775808, %471 ]
  %490 = sub i64 0, %489, !dbg !4903
  %491 = udiv i64 -9223372036854775808, %490, !dbg !4903
  %492 = icmp ult i64 %491, %55, !dbg !4903
  br i1 %492, label %503, label %493, !dbg !4903

493:                                              ; preds = %482, %487
  %494 = phi i32 [ %488, %487 ], [ %483, %482 ]
  %495 = phi i64 [ %489, %487 ], [ %484, %482 ]
  %496 = mul i64 %495, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %496, metadata !4884, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 %494, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4901
  %497 = icmp slt i64 %496, 0, !dbg !4903
  br i1 %497, label %503, label %498, !dbg !4903

498:                                              ; preds = %482, %493
  %499 = phi i32 [ %494, %493 ], [ 1, %482 ]
  %500 = phi i64 [ %496, %493 ], [ 9223372036854775807, %482 ]
  %501 = udiv i64 9223372036854775807, %55, !dbg !4903
  %502 = icmp ult i64 %501, %500, !dbg !4903
  br i1 %502, label %513, label %509, !dbg !4903

503:                                              ; preds = %487, %493
  %504 = phi i32 [ %494, %493 ], [ 1, %487 ]
  %505 = phi i64 [ %496, %493 ], [ -9223372036854775808, %487 ]
  %506 = sub i64 0, %505, !dbg !4903
  %507 = udiv i64 -9223372036854775808, %506, !dbg !4903
  %508 = icmp ult i64 %507, %55, !dbg !4903
  br i1 %508, label %513, label %509, !dbg !4903

509:                                              ; preds = %503, %498
  %510 = phi i32 [ %504, %503 ], [ %499, %498 ]
  %511 = phi i64 [ %505, %503 ], [ %500, %498 ]
  %512 = mul i64 %511, %55, !dbg !4903
  call void @llvm.dbg.value(metadata i64 %512, metadata !4884, metadata !DIExpression()), !dbg !4901
  br label %513, !dbg !4947

513:                                              ; preds = %509, %503, %498
  %514 = phi i32 [ %510, %509 ], [ %499, %498 ], [ %504, %503 ]
  %515 = phi i64 [ %512, %509 ], [ 9223372036854775807, %498 ], [ -9223372036854775808, %503 ], !dbg !4901
  %516 = phi i32 [ 0, %509 ], [ 1, %498 ], [ 1, %503 ], !dbg !4901
  %517 = or i32 %516, %514, !dbg !4948
  call void @llvm.dbg.value(metadata i32 %517, metadata !4867, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4899
  br label %977, !dbg !4924

518:                                              ; preds = %61
  %519 = icmp eq i64 %31, -1, !dbg !4898
  br i1 %519, label %527, label %520, !dbg !4898

520:                                              ; preds = %518
  %521 = sub i64 0, %31, !dbg !4898
  %522 = udiv i64 -9223372036854775808, %521, !dbg !4898
  %523 = icmp ult i64 %522, %55, !dbg !4898
  br i1 %523, label %535, label %527, !dbg !4898

524:                                              ; preds = %61
  %525 = udiv i64 9223372036854775807, %55, !dbg !4898
  %526 = icmp ult i64 %525, %31, !dbg !4898
  br i1 %526, label %530, label %527, !dbg !4898

527:                                              ; preds = %518, %520, %524
  %528 = mul i64 %31, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %528, metadata !4884, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 7, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %529 = icmp slt i64 %528, 0, !dbg !4898
  br i1 %529, label %535, label %530, !dbg !4898

530:                                              ; preds = %524, %527
  %531 = phi i32 [ 0, %527 ], [ 1, %524 ]
  %532 = phi i64 [ %528, %527 ], [ 9223372036854775807, %524 ]
  %533 = udiv i64 9223372036854775807, %55, !dbg !4898
  %534 = icmp ult i64 %533, %532, !dbg !4898
  br i1 %534, label %546, label %541, !dbg !4898

535:                                              ; preds = %520, %527
  %536 = phi i32 [ 0, %527 ], [ 1, %520 ]
  %537 = phi i64 [ %528, %527 ], [ -9223372036854775808, %520 ]
  %538 = sub i64 0, %537, !dbg !4898
  %539 = udiv i64 -9223372036854775808, %538, !dbg !4898
  %540 = icmp ult i64 %539, %55, !dbg !4898
  br i1 %540, label %551, label %541, !dbg !4898

541:                                              ; preds = %530, %535
  %542 = phi i32 [ %536, %535 ], [ %531, %530 ]
  %543 = phi i64 [ %537, %535 ], [ %532, %530 ]
  %544 = mul i64 %543, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %544, metadata !4884, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 %542, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 6, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %545 = icmp slt i64 %544, 0, !dbg !4898
  br i1 %545, label %551, label %546, !dbg !4898

546:                                              ; preds = %530, %541
  %547 = phi i32 [ %542, %541 ], [ 1, %530 ]
  %548 = phi i64 [ %544, %541 ], [ 9223372036854775807, %530 ]
  %549 = udiv i64 9223372036854775807, %55, !dbg !4898
  %550 = icmp ult i64 %549, %548, !dbg !4898
  br i1 %550, label %562, label %557, !dbg !4898

551:                                              ; preds = %535, %541
  %552 = phi i32 [ %542, %541 ], [ 1, %535 ]
  %553 = phi i64 [ %544, %541 ], [ -9223372036854775808, %535 ]
  %554 = sub i64 0, %553, !dbg !4898
  %555 = udiv i64 -9223372036854775808, %554, !dbg !4898
  %556 = icmp ult i64 %555, %55, !dbg !4898
  br i1 %556, label %567, label %557, !dbg !4898

557:                                              ; preds = %546, %551
  %558 = phi i32 [ %552, %551 ], [ %547, %546 ]
  %559 = phi i64 [ %553, %551 ], [ %548, %546 ]
  %560 = mul i64 %559, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %560, metadata !4884, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 %558, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 5, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %561 = icmp slt i64 %560, 0, !dbg !4898
  br i1 %561, label %567, label %562, !dbg !4898

562:                                              ; preds = %546, %557
  %563 = phi i32 [ %558, %557 ], [ 1, %546 ]
  %564 = phi i64 [ %560, %557 ], [ 9223372036854775807, %546 ]
  %565 = udiv i64 9223372036854775807, %55, !dbg !4898
  %566 = icmp ult i64 %565, %564, !dbg !4898
  br i1 %566, label %578, label %573, !dbg !4898

567:                                              ; preds = %551, %557
  %568 = phi i32 [ %558, %557 ], [ 1, %551 ]
  %569 = phi i64 [ %560, %557 ], [ -9223372036854775808, %551 ]
  %570 = sub i64 0, %569, !dbg !4898
  %571 = udiv i64 -9223372036854775808, %570, !dbg !4898
  %572 = icmp ult i64 %571, %55, !dbg !4898
  br i1 %572, label %583, label %573, !dbg !4898

573:                                              ; preds = %562, %567
  %574 = phi i32 [ %568, %567 ], [ %563, %562 ]
  %575 = phi i64 [ %569, %567 ], [ %564, %562 ]
  %576 = mul i64 %575, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %576, metadata !4884, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 %574, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 4, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %577 = icmp slt i64 %576, 0, !dbg !4898
  br i1 %577, label %583, label %578, !dbg !4898

578:                                              ; preds = %562, %573
  %579 = phi i32 [ %574, %573 ], [ 1, %562 ]
  %580 = phi i64 [ %576, %573 ], [ 9223372036854775807, %562 ]
  %581 = udiv i64 9223372036854775807, %55, !dbg !4898
  %582 = icmp ult i64 %581, %580, !dbg !4898
  br i1 %582, label %594, label %589, !dbg !4898

583:                                              ; preds = %567, %573
  %584 = phi i32 [ %574, %573 ], [ 1, %567 ]
  %585 = phi i64 [ %576, %573 ], [ -9223372036854775808, %567 ]
  %586 = sub i64 0, %585, !dbg !4898
  %587 = udiv i64 -9223372036854775808, %586, !dbg !4898
  %588 = icmp ult i64 %587, %55, !dbg !4898
  br i1 %588, label %599, label %589, !dbg !4898

589:                                              ; preds = %578, %583
  %590 = phi i32 [ %584, %583 ], [ %579, %578 ]
  %591 = phi i64 [ %585, %583 ], [ %580, %578 ]
  %592 = mul i64 %591, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %592, metadata !4884, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 %590, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 3, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %593 = icmp slt i64 %592, 0, !dbg !4898
  br i1 %593, label %599, label %594, !dbg !4898

594:                                              ; preds = %578, %589
  %595 = phi i32 [ %590, %589 ], [ 1, %578 ]
  %596 = phi i64 [ %592, %589 ], [ 9223372036854775807, %578 ]
  %597 = udiv i64 9223372036854775807, %55, !dbg !4898
  %598 = icmp ult i64 %597, %596, !dbg !4898
  br i1 %598, label %610, label %605, !dbg !4898

599:                                              ; preds = %583, %589
  %600 = phi i32 [ %590, %589 ], [ 1, %583 ]
  %601 = phi i64 [ %592, %589 ], [ -9223372036854775808, %583 ]
  %602 = sub i64 0, %601, !dbg !4898
  %603 = udiv i64 -9223372036854775808, %602, !dbg !4898
  %604 = icmp ult i64 %603, %55, !dbg !4898
  br i1 %604, label %615, label %605, !dbg !4898

605:                                              ; preds = %594, %599
  %606 = phi i32 [ %600, %599 ], [ %595, %594 ]
  %607 = phi i64 [ %601, %599 ], [ %596, %594 ]
  %608 = mul i64 %607, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %608, metadata !4884, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 %606, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 2, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %609 = icmp slt i64 %608, 0, !dbg !4898
  br i1 %609, label %615, label %610, !dbg !4898

610:                                              ; preds = %594, %605
  %611 = phi i32 [ %606, %605 ], [ 1, %594 ]
  %612 = phi i64 [ %608, %605 ], [ 9223372036854775807, %594 ]
  %613 = udiv i64 9223372036854775807, %55, !dbg !4898
  %614 = icmp ult i64 %613, %612, !dbg !4898
  br i1 %614, label %626, label %621, !dbg !4898

615:                                              ; preds = %599, %605
  %616 = phi i32 [ %606, %605 ], [ 1, %599 ]
  %617 = phi i64 [ %608, %605 ], [ -9223372036854775808, %599 ]
  %618 = sub i64 0, %617, !dbg !4898
  %619 = udiv i64 -9223372036854775808, %618, !dbg !4898
  %620 = icmp ult i64 %619, %55, !dbg !4898
  br i1 %620, label %631, label %621, !dbg !4898

621:                                              ; preds = %610, %615
  %622 = phi i32 [ %616, %615 ], [ %611, %610 ]
  %623 = phi i64 [ %617, %615 ], [ %612, %610 ]
  %624 = mul i64 %623, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %624, metadata !4884, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 %622, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %625 = icmp slt i64 %624, 0, !dbg !4898
  br i1 %625, label %631, label %626, !dbg !4898

626:                                              ; preds = %610, %621
  %627 = phi i32 [ %622, %621 ], [ 1, %610 ]
  %628 = phi i64 [ %624, %621 ], [ 9223372036854775807, %610 ]
  %629 = udiv i64 9223372036854775807, %55, !dbg !4898
  %630 = icmp ult i64 %629, %628, !dbg !4898
  br i1 %630, label %642, label %637, !dbg !4898

631:                                              ; preds = %615, %621
  %632 = phi i32 [ %622, %621 ], [ 1, %615 ]
  %633 = phi i64 [ %624, %621 ], [ -9223372036854775808, %615 ]
  %634 = sub i64 0, %633, !dbg !4898
  %635 = udiv i64 -9223372036854775808, %634, !dbg !4898
  %636 = icmp ult i64 %635, %55, !dbg !4898
  br i1 %636, label %647, label %637, !dbg !4898

637:                                              ; preds = %626, %631
  %638 = phi i32 [ %632, %631 ], [ %627, %626 ]
  %639 = phi i64 [ %633, %631 ], [ %628, %626 ]
  %640 = mul i64 %639, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %640, metadata !4884, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 %638, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4896
  %641 = icmp slt i64 %640, 0, !dbg !4898
  br i1 %641, label %647, label %642, !dbg !4898

642:                                              ; preds = %626, %637
  %643 = phi i32 [ %638, %637 ], [ 1, %626 ]
  %644 = phi i64 [ %640, %637 ], [ 9223372036854775807, %626 ]
  %645 = udiv i64 9223372036854775807, %55, !dbg !4898
  %646 = icmp ult i64 %645, %644, !dbg !4898
  br i1 %646, label %657, label %653, !dbg !4898

647:                                              ; preds = %631, %637
  %648 = phi i32 [ %638, %637 ], [ 1, %631 ]
  %649 = phi i64 [ %640, %637 ], [ -9223372036854775808, %631 ]
  %650 = sub i64 0, %649, !dbg !4898
  %651 = udiv i64 -9223372036854775808, %650, !dbg !4898
  %652 = icmp ult i64 %651, %55, !dbg !4898
  br i1 %652, label %657, label %653, !dbg !4898

653:                                              ; preds = %647, %642
  %654 = phi i32 [ %648, %647 ], [ %643, %642 ]
  %655 = phi i64 [ %649, %647 ], [ %644, %642 ]
  %656 = mul i64 %655, %55, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %656, metadata !4884, metadata !DIExpression()), !dbg !4896
  br label %657, !dbg !4949

657:                                              ; preds = %653, %647, %642
  %658 = phi i32 [ %654, %653 ], [ %643, %642 ], [ %648, %647 ]
  %659 = phi i64 [ %656, %653 ], [ 9223372036854775807, %642 ], [ -9223372036854775808, %647 ], !dbg !4896
  %660 = phi i32 [ 0, %653 ], [ 1, %642 ], [ 1, %647 ], !dbg !4896
  %661 = or i32 %660, %658, !dbg !4950
  call void @llvm.dbg.value(metadata i32 %661, metadata !4867, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4894
  br label %977, !dbg !4924

662:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4872, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i32 poison, metadata !4873, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i32 3, metadata !4874, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4953
  %663 = icmp slt i64 %31, 0, !dbg !4955
  br i1 %663, label %664, label %670, !dbg !4955

664:                                              ; preds = %662
  %665 = icmp eq i64 %31, -1, !dbg !4955
  br i1 %665, label %673, label %666, !dbg !4955

666:                                              ; preds = %664
  %667 = sub i64 0, %31, !dbg !4955
  %668 = udiv i64 -9223372036854775808, %667, !dbg !4955
  %669 = icmp ult i64 %668, %55, !dbg !4955
  br i1 %669, label %681, label %673, !dbg !4955

670:                                              ; preds = %662
  %671 = udiv i64 9223372036854775807, %55, !dbg !4955
  %672 = icmp ult i64 %671, %31, !dbg !4955
  br i1 %672, label %676, label %673, !dbg !4955

673:                                              ; preds = %664, %666, %670
  %674 = mul i64 %31, %55, !dbg !4955
  call void @llvm.dbg.value(metadata i64 %674, metadata !4884, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i32 2, metadata !4874, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4953
  %675 = icmp slt i64 %674, 0, !dbg !4955
  br i1 %675, label %681, label %676, !dbg !4955

676:                                              ; preds = %670, %673
  %677 = phi i32 [ 0, %673 ], [ 1, %670 ]
  %678 = phi i64 [ %674, %673 ], [ 9223372036854775807, %670 ]
  %679 = udiv i64 9223372036854775807, %55, !dbg !4955
  %680 = icmp ult i64 %679, %678, !dbg !4955
  br i1 %680, label %692, label %687, !dbg !4955

681:                                              ; preds = %666, %673
  %682 = phi i32 [ 0, %673 ], [ 1, %666 ]
  %683 = phi i64 [ %674, %673 ], [ -9223372036854775808, %666 ]
  %684 = sub i64 0, %683, !dbg !4955
  %685 = udiv i64 -9223372036854775808, %684, !dbg !4955
  %686 = icmp ult i64 %685, %55, !dbg !4955
  br i1 %686, label %697, label %687, !dbg !4955

687:                                              ; preds = %676, %681
  %688 = phi i32 [ %682, %681 ], [ %677, %676 ]
  %689 = phi i64 [ %683, %681 ], [ %678, %676 ]
  %690 = mul i64 %689, %55, !dbg !4955
  call void @llvm.dbg.value(metadata i64 %690, metadata !4884, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 %688, metadata !4867, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4953
  %691 = icmp slt i64 %690, 0, !dbg !4955
  br i1 %691, label %697, label %692, !dbg !4955

692:                                              ; preds = %676, %687
  %693 = phi i32 [ %688, %687 ], [ 1, %676 ]
  %694 = phi i64 [ %690, %687 ], [ 9223372036854775807, %676 ]
  %695 = udiv i64 9223372036854775807, %55, !dbg !4955
  %696 = icmp ult i64 %695, %694, !dbg !4955
  br i1 %696, label %708, label %703, !dbg !4955

697:                                              ; preds = %681, %687
  %698 = phi i32 [ %688, %687 ], [ 1, %681 ]
  %699 = phi i64 [ %690, %687 ], [ -9223372036854775808, %681 ]
  %700 = sub i64 0, %699, !dbg !4955
  %701 = udiv i64 -9223372036854775808, %700, !dbg !4955
  %702 = icmp ult i64 %701, %55, !dbg !4955
  br i1 %702, label %713, label %703, !dbg !4955

703:                                              ; preds = %692, %697
  %704 = phi i32 [ %698, %697 ], [ %693, %692 ]
  %705 = phi i64 [ %699, %697 ], [ %694, %692 ]
  %706 = mul i64 %705, %55, !dbg !4955
  call void @llvm.dbg.value(metadata i64 %706, metadata !4884, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 %704, metadata !4867, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4953
  %707 = icmp slt i64 %706, 0, !dbg !4955
  br i1 %707, label %713, label %708, !dbg !4955

708:                                              ; preds = %692, %703
  %709 = phi i32 [ %704, %703 ], [ 1, %692 ]
  %710 = phi i64 [ %706, %703 ], [ 9223372036854775807, %692 ]
  %711 = udiv i64 9223372036854775807, %55, !dbg !4955
  %712 = icmp ult i64 %711, %710, !dbg !4955
  br i1 %712, label %723, label %719, !dbg !4955

713:                                              ; preds = %697, %703
  %714 = phi i32 [ %704, %703 ], [ 1, %697 ]
  %715 = phi i64 [ %706, %703 ], [ -9223372036854775808, %697 ]
  %716 = sub i64 0, %715, !dbg !4955
  %717 = udiv i64 -9223372036854775808, %716, !dbg !4955
  %718 = icmp ult i64 %717, %55, !dbg !4955
  br i1 %718, label %723, label %719, !dbg !4955

719:                                              ; preds = %713, %708
  %720 = phi i32 [ %714, %713 ], [ %709, %708 ]
  %721 = phi i64 [ %715, %713 ], [ %710, %708 ]
  %722 = mul i64 %721, %55, !dbg !4955
  call void @llvm.dbg.value(metadata i64 %722, metadata !4884, metadata !DIExpression()), !dbg !4953
  br label %723, !dbg !4956

723:                                              ; preds = %719, %713, %708
  %724 = phi i32 [ %720, %719 ], [ %709, %708 ], [ %714, %713 ]
  %725 = phi i64 [ %722, %719 ], [ 9223372036854775807, %708 ], [ -9223372036854775808, %713 ], !dbg !4953
  %726 = phi i32 [ 0, %719 ], [ 1, %708 ], [ 1, %713 ], !dbg !4953
  %727 = or i32 %726, %724, !dbg !4957
  call void @llvm.dbg.value(metadata i32 %727, metadata !4867, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4951
  br label %977, !dbg !4924

728:                                              ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata i32 2, metadata !4883, metadata !DIExpression()), !dbg !4958
  %729 = icmp slt i64 %31, 0, !dbg !4960
  br i1 %729, label %730, label %733, !dbg !4960

730:                                              ; preds = %728
  %731 = add i64 %31, -1, !dbg !4960
  %732 = icmp ult i64 %731, -4611686018427387905, !dbg !4960
  br i1 %732, label %977, label %735, !dbg !4960

733:                                              ; preds = %728
  %734 = icmp ugt i64 %31, 4611686018427387903, !dbg !4960
  br i1 %734, label %977, label %735, !dbg !4960

735:                                              ; preds = %730, %733
  %736 = shl nsw i64 %31, 1, !dbg !4960
  call void @llvm.dbg.value(metadata i64 %736, metadata !4884, metadata !DIExpression()), !dbg !4958
  br label %977, !dbg !4961

737:                                              ; preds = %59
  %738 = icmp eq i64 %31, -1, !dbg !4893
  br i1 %738, label %746, label %739, !dbg !4893

739:                                              ; preds = %737
  %740 = sub i64 0, %31, !dbg !4893
  %741 = udiv i64 -9223372036854775808, %740, !dbg !4893
  %742 = icmp ult i64 %741, %55, !dbg !4893
  br i1 %742, label %754, label %746, !dbg !4893

743:                                              ; preds = %59
  %744 = udiv i64 9223372036854775807, %55, !dbg !4893
  %745 = icmp ult i64 %744, %31, !dbg !4893
  br i1 %745, label %749, label %746, !dbg !4893

746:                                              ; preds = %737, %739, %743
  %747 = mul i64 %31, %55, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %747, metadata !4884, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 6, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4891
  %748 = icmp slt i64 %747, 0, !dbg !4893
  br i1 %748, label %754, label %749, !dbg !4893

749:                                              ; preds = %743, %746
  %750 = phi i32 [ 0, %746 ], [ 1, %743 ]
  %751 = phi i64 [ %747, %746 ], [ 9223372036854775807, %743 ]
  %752 = udiv i64 9223372036854775807, %55, !dbg !4893
  %753 = icmp ult i64 %752, %751, !dbg !4893
  br i1 %753, label %765, label %760, !dbg !4893

754:                                              ; preds = %739, %746
  %755 = phi i32 [ 0, %746 ], [ 1, %739 ]
  %756 = phi i64 [ %747, %746 ], [ -9223372036854775808, %739 ]
  %757 = sub i64 0, %756, !dbg !4893
  %758 = udiv i64 -9223372036854775808, %757, !dbg !4893
  %759 = icmp ult i64 %758, %55, !dbg !4893
  br i1 %759, label %770, label %760, !dbg !4893

760:                                              ; preds = %749, %754
  %761 = phi i32 [ %755, %754 ], [ %750, %749 ]
  %762 = phi i64 [ %756, %754 ], [ %751, %749 ]
  %763 = mul i64 %762, %55, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %763, metadata !4884, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 %761, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 5, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4891
  %764 = icmp slt i64 %763, 0, !dbg !4893
  br i1 %764, label %770, label %765, !dbg !4893

765:                                              ; preds = %749, %760
  %766 = phi i32 [ %761, %760 ], [ 1, %749 ]
  %767 = phi i64 [ %763, %760 ], [ 9223372036854775807, %749 ]
  %768 = udiv i64 9223372036854775807, %55, !dbg !4893
  %769 = icmp ult i64 %768, %767, !dbg !4893
  br i1 %769, label %781, label %776, !dbg !4893

770:                                              ; preds = %754, %760
  %771 = phi i32 [ %761, %760 ], [ 1, %754 ]
  %772 = phi i64 [ %763, %760 ], [ -9223372036854775808, %754 ]
  %773 = sub i64 0, %772, !dbg !4893
  %774 = udiv i64 -9223372036854775808, %773, !dbg !4893
  %775 = icmp ult i64 %774, %55, !dbg !4893
  br i1 %775, label %786, label %776, !dbg !4893

776:                                              ; preds = %765, %770
  %777 = phi i32 [ %771, %770 ], [ %766, %765 ]
  %778 = phi i64 [ %772, %770 ], [ %767, %765 ]
  %779 = mul i64 %778, %55, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %779, metadata !4884, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 %777, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 4, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4891
  %780 = icmp slt i64 %779, 0, !dbg !4893
  br i1 %780, label %786, label %781, !dbg !4893

781:                                              ; preds = %765, %776
  %782 = phi i32 [ %777, %776 ], [ 1, %765 ]
  %783 = phi i64 [ %779, %776 ], [ 9223372036854775807, %765 ]
  %784 = udiv i64 9223372036854775807, %55, !dbg !4893
  %785 = icmp ult i64 %784, %783, !dbg !4893
  br i1 %785, label %797, label %792, !dbg !4893

786:                                              ; preds = %770, %776
  %787 = phi i32 [ %777, %776 ], [ 1, %770 ]
  %788 = phi i64 [ %779, %776 ], [ -9223372036854775808, %770 ]
  %789 = sub i64 0, %788, !dbg !4893
  %790 = udiv i64 -9223372036854775808, %789, !dbg !4893
  %791 = icmp ult i64 %790, %55, !dbg !4893
  br i1 %791, label %802, label %792, !dbg !4893

792:                                              ; preds = %781, %786
  %793 = phi i32 [ %787, %786 ], [ %782, %781 ]
  %794 = phi i64 [ %788, %786 ], [ %783, %781 ]
  %795 = mul i64 %794, %55, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %795, metadata !4884, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 %793, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 3, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4891
  %796 = icmp slt i64 %795, 0, !dbg !4893
  br i1 %796, label %802, label %797, !dbg !4893

797:                                              ; preds = %781, %792
  %798 = phi i32 [ %793, %792 ], [ 1, %781 ]
  %799 = phi i64 [ %795, %792 ], [ 9223372036854775807, %781 ]
  %800 = udiv i64 9223372036854775807, %55, !dbg !4893
  %801 = icmp ult i64 %800, %799, !dbg !4893
  br i1 %801, label %813, label %808, !dbg !4893

802:                                              ; preds = %786, %792
  %803 = phi i32 [ %793, %792 ], [ 1, %786 ]
  %804 = phi i64 [ %795, %792 ], [ -9223372036854775808, %786 ]
  %805 = sub i64 0, %804, !dbg !4893
  %806 = udiv i64 -9223372036854775808, %805, !dbg !4893
  %807 = icmp ult i64 %806, %55, !dbg !4893
  br i1 %807, label %818, label %808, !dbg !4893

808:                                              ; preds = %797, %802
  %809 = phi i32 [ %803, %802 ], [ %798, %797 ]
  %810 = phi i64 [ %804, %802 ], [ %799, %797 ]
  %811 = mul i64 %810, %55, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %811, metadata !4884, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 %809, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 2, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4891
  %812 = icmp slt i64 %811, 0, !dbg !4893
  br i1 %812, label %818, label %813, !dbg !4893

813:                                              ; preds = %797, %808
  %814 = phi i32 [ %809, %808 ], [ 1, %797 ]
  %815 = phi i64 [ %811, %808 ], [ 9223372036854775807, %797 ]
  %816 = udiv i64 9223372036854775807, %55, !dbg !4893
  %817 = icmp ult i64 %816, %815, !dbg !4893
  br i1 %817, label %829, label %824, !dbg !4893

818:                                              ; preds = %802, %808
  %819 = phi i32 [ %809, %808 ], [ 1, %802 ]
  %820 = phi i64 [ %811, %808 ], [ -9223372036854775808, %802 ]
  %821 = sub i64 0, %820, !dbg !4893
  %822 = udiv i64 -9223372036854775808, %821, !dbg !4893
  %823 = icmp ult i64 %822, %55, !dbg !4893
  br i1 %823, label %834, label %824, !dbg !4893

824:                                              ; preds = %813, %818
  %825 = phi i32 [ %819, %818 ], [ %814, %813 ]
  %826 = phi i64 [ %820, %818 ], [ %815, %813 ]
  %827 = mul i64 %826, %55, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %827, metadata !4884, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 %825, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4891
  %828 = icmp slt i64 %827, 0, !dbg !4893
  br i1 %828, label %834, label %829, !dbg !4893

829:                                              ; preds = %813, %824
  %830 = phi i32 [ %825, %824 ], [ 1, %813 ]
  %831 = phi i64 [ %827, %824 ], [ 9223372036854775807, %813 ]
  %832 = udiv i64 9223372036854775807, %55, !dbg !4893
  %833 = icmp ult i64 %832, %831, !dbg !4893
  br i1 %833, label %845, label %840, !dbg !4893

834:                                              ; preds = %818, %824
  %835 = phi i32 [ %825, %824 ], [ 1, %818 ]
  %836 = phi i64 [ %827, %824 ], [ -9223372036854775808, %818 ]
  %837 = sub i64 0, %836, !dbg !4893
  %838 = udiv i64 -9223372036854775808, %837, !dbg !4893
  %839 = icmp ult i64 %838, %55, !dbg !4893
  br i1 %839, label %850, label %840, !dbg !4893

840:                                              ; preds = %829, %834
  %841 = phi i32 [ %835, %834 ], [ %830, %829 ]
  %842 = phi i64 [ %836, %834 ], [ %831, %829 ]
  %843 = mul i64 %842, %55, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %843, metadata !4884, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 %841, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4891
  %844 = icmp slt i64 %843, 0, !dbg !4893
  br i1 %844, label %850, label %845, !dbg !4893

845:                                              ; preds = %829, %840
  %846 = phi i32 [ %841, %840 ], [ 1, %829 ]
  %847 = phi i64 [ %843, %840 ], [ 9223372036854775807, %829 ]
  %848 = udiv i64 9223372036854775807, %55, !dbg !4893
  %849 = icmp ult i64 %848, %847, !dbg !4893
  br i1 %849, label %860, label %856, !dbg !4893

850:                                              ; preds = %834, %840
  %851 = phi i32 [ %841, %840 ], [ 1, %834 ]
  %852 = phi i64 [ %843, %840 ], [ -9223372036854775808, %834 ]
  %853 = sub i64 0, %852, !dbg !4893
  %854 = udiv i64 -9223372036854775808, %853, !dbg !4893
  %855 = icmp ult i64 %854, %55, !dbg !4893
  br i1 %855, label %860, label %856, !dbg !4893

856:                                              ; preds = %850, %845
  %857 = phi i32 [ %851, %850 ], [ %846, %845 ]
  %858 = phi i64 [ %852, %850 ], [ %847, %845 ]
  %859 = mul i64 %858, %55, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %859, metadata !4884, metadata !DIExpression()), !dbg !4891
  br label %860, !dbg !4962

860:                                              ; preds = %856, %850, %845
  %861 = phi i32 [ %857, %856 ], [ %846, %845 ], [ %851, %850 ]
  %862 = phi i64 [ %859, %856 ], [ 9223372036854775807, %845 ], [ -9223372036854775808, %850 ], !dbg !4891
  %863 = phi i32 [ 0, %856 ], [ 1, %845 ], [ 1, %850 ], !dbg !4891
  %864 = or i32 %863, %861, !dbg !4963
  call void @llvm.dbg.value(metadata i32 %864, metadata !4867, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4889
  br label %977, !dbg !4924

865:                                              ; preds = %57
  %866 = icmp eq i64 %31, -1, !dbg !4887
  br i1 %866, label %874, label %867, !dbg !4887

867:                                              ; preds = %865
  %868 = sub i64 0, %31, !dbg !4887
  %869 = udiv i64 -9223372036854775808, %868, !dbg !4887
  %870 = icmp ult i64 %869, %55, !dbg !4887
  br i1 %870, label %882, label %874, !dbg !4887

871:                                              ; preds = %57
  %872 = udiv i64 9223372036854775807, %55, !dbg !4887
  %873 = icmp ult i64 %872, %31, !dbg !4887
  br i1 %873, label %877, label %874, !dbg !4887

874:                                              ; preds = %865, %867, %871
  %875 = mul i64 %31, %55, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %875, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 0, metadata !4867, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 5, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4885
  %876 = icmp slt i64 %875, 0, !dbg !4887
  br i1 %876, label %882, label %877, !dbg !4887

877:                                              ; preds = %871, %874
  %878 = phi i32 [ 0, %874 ], [ 1, %871 ]
  %879 = phi i64 [ %875, %874 ], [ 9223372036854775807, %871 ]
  %880 = udiv i64 9223372036854775807, %55, !dbg !4887
  %881 = icmp ult i64 %880, %879, !dbg !4887
  br i1 %881, label %893, label %888, !dbg !4887

882:                                              ; preds = %867, %874
  %883 = phi i32 [ 0, %874 ], [ 1, %867 ]
  %884 = phi i64 [ %875, %874 ], [ -9223372036854775808, %867 ]
  %885 = sub i64 0, %884, !dbg !4887
  %886 = udiv i64 -9223372036854775808, %885, !dbg !4887
  %887 = icmp ult i64 %886, %55, !dbg !4887
  br i1 %887, label %898, label %888, !dbg !4887

888:                                              ; preds = %877, %882
  %889 = phi i32 [ %883, %882 ], [ %878, %877 ]
  %890 = phi i64 [ %884, %882 ], [ %879, %877 ]
  %891 = mul i64 %890, %55, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %891, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %889, metadata !4867, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 4, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4885
  %892 = icmp slt i64 %891, 0, !dbg !4887
  br i1 %892, label %898, label %893, !dbg !4887

893:                                              ; preds = %877, %888
  %894 = phi i32 [ %889, %888 ], [ 1, %877 ]
  %895 = phi i64 [ %891, %888 ], [ 9223372036854775807, %877 ]
  %896 = udiv i64 9223372036854775807, %55, !dbg !4887
  %897 = icmp ult i64 %896, %895, !dbg !4887
  br i1 %897, label %909, label %904, !dbg !4887

898:                                              ; preds = %882, %888
  %899 = phi i32 [ %889, %888 ], [ 1, %882 ]
  %900 = phi i64 [ %891, %888 ], [ -9223372036854775808, %882 ]
  %901 = sub i64 0, %900, !dbg !4887
  %902 = udiv i64 -9223372036854775808, %901, !dbg !4887
  %903 = icmp ult i64 %902, %55, !dbg !4887
  br i1 %903, label %914, label %904, !dbg !4887

904:                                              ; preds = %893, %898
  %905 = phi i32 [ %899, %898 ], [ %894, %893 ]
  %906 = phi i64 [ %900, %898 ], [ %895, %893 ]
  %907 = mul i64 %906, %55, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %907, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %905, metadata !4867, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 3, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4885
  %908 = icmp slt i64 %907, 0, !dbg !4887
  br i1 %908, label %914, label %909, !dbg !4887

909:                                              ; preds = %893, %904
  %910 = phi i32 [ %905, %904 ], [ 1, %893 ]
  %911 = phi i64 [ %907, %904 ], [ 9223372036854775807, %893 ]
  %912 = udiv i64 9223372036854775807, %55, !dbg !4887
  %913 = icmp ult i64 %912, %911, !dbg !4887
  br i1 %913, label %925, label %920, !dbg !4887

914:                                              ; preds = %898, %904
  %915 = phi i32 [ %905, %904 ], [ 1, %898 ]
  %916 = phi i64 [ %907, %904 ], [ -9223372036854775808, %898 ]
  %917 = sub i64 0, %916, !dbg !4887
  %918 = udiv i64 -9223372036854775808, %917, !dbg !4887
  %919 = icmp ult i64 %918, %55, !dbg !4887
  br i1 %919, label %930, label %920, !dbg !4887

920:                                              ; preds = %909, %914
  %921 = phi i32 [ %915, %914 ], [ %910, %909 ]
  %922 = phi i64 [ %916, %914 ], [ %911, %909 ]
  %923 = mul i64 %922, %55, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %923, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %921, metadata !4867, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 2, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4885
  %924 = icmp slt i64 %923, 0, !dbg !4887
  br i1 %924, label %930, label %925, !dbg !4887

925:                                              ; preds = %909, %920
  %926 = phi i32 [ %921, %920 ], [ 1, %909 ]
  %927 = phi i64 [ %923, %920 ], [ 9223372036854775807, %909 ]
  %928 = udiv i64 9223372036854775807, %55, !dbg !4887
  %929 = icmp ult i64 %928, %927, !dbg !4887
  br i1 %929, label %941, label %936, !dbg !4887

930:                                              ; preds = %914, %920
  %931 = phi i32 [ %921, %920 ], [ 1, %914 ]
  %932 = phi i64 [ %923, %920 ], [ -9223372036854775808, %914 ]
  %933 = sub i64 0, %932, !dbg !4887
  %934 = udiv i64 -9223372036854775808, %933, !dbg !4887
  %935 = icmp ult i64 %934, %55, !dbg !4887
  br i1 %935, label %946, label %936, !dbg !4887

936:                                              ; preds = %925, %930
  %937 = phi i32 [ %931, %930 ], [ %926, %925 ]
  %938 = phi i64 [ %932, %930 ], [ %927, %925 ]
  %939 = mul i64 %938, %55, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %939, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %937, metadata !4867, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4885
  %940 = icmp slt i64 %939, 0, !dbg !4887
  br i1 %940, label %946, label %941, !dbg !4887

941:                                              ; preds = %925, %936
  %942 = phi i32 [ %937, %936 ], [ 1, %925 ]
  %943 = phi i64 [ %939, %936 ], [ 9223372036854775807, %925 ]
  %944 = udiv i64 9223372036854775807, %55, !dbg !4887
  %945 = icmp ult i64 %944, %943, !dbg !4887
  br i1 %945, label %957, label %952, !dbg !4887

946:                                              ; preds = %930, %936
  %947 = phi i32 [ %937, %936 ], [ 1, %930 ]
  %948 = phi i64 [ %939, %936 ], [ -9223372036854775808, %930 ]
  %949 = sub i64 0, %948, !dbg !4887
  %950 = udiv i64 -9223372036854775808, %949, !dbg !4887
  %951 = icmp ult i64 %950, %55, !dbg !4887
  br i1 %951, label %962, label %952, !dbg !4887

952:                                              ; preds = %941, %946
  %953 = phi i32 [ %947, %946 ], [ %942, %941 ]
  %954 = phi i64 [ %948, %946 ], [ %943, %941 ]
  %955 = mul i64 %954, %55, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %955, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %953, metadata !4867, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata ptr undef, metadata !4878, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 poison, metadata !4883, metadata !DIExpression()), !dbg !4885
  %956 = icmp slt i64 %955, 0, !dbg !4887
  br i1 %956, label %962, label %957, !dbg !4887

957:                                              ; preds = %941, %952
  %958 = phi i32 [ %953, %952 ], [ 1, %941 ]
  %959 = phi i64 [ %955, %952 ], [ 9223372036854775807, %941 ]
  %960 = udiv i64 9223372036854775807, %55, !dbg !4887
  %961 = icmp ult i64 %960, %959, !dbg !4887
  br i1 %961, label %972, label %968, !dbg !4887

962:                                              ; preds = %946, %952
  %963 = phi i32 [ %953, %952 ], [ 1, %946 ]
  %964 = phi i64 [ %955, %952 ], [ -9223372036854775808, %946 ]
  %965 = sub i64 0, %964, !dbg !4887
  %966 = udiv i64 -9223372036854775808, %965, !dbg !4887
  %967 = icmp ult i64 %966, %55, !dbg !4887
  br i1 %967, label %972, label %968, !dbg !4887

968:                                              ; preds = %962, %957
  %969 = phi i32 [ %963, %962 ], [ %958, %957 ]
  %970 = phi i64 [ %964, %962 ], [ %959, %957 ]
  %971 = mul i64 %970, %55, !dbg !4887
  call void @llvm.dbg.value(metadata i64 %971, metadata !4884, metadata !DIExpression()), !dbg !4885
  br label %972, !dbg !4964

972:                                              ; preds = %968, %962, %957
  %973 = phi i32 [ %969, %968 ], [ %958, %957 ], [ %963, %962 ]
  %974 = phi i64 [ %971, %968 ], [ 9223372036854775807, %957 ], [ -9223372036854775808, %962 ], !dbg !4885
  %975 = phi i32 [ 0, %968 ], [ 1, %957 ], [ 1, %962 ], !dbg !4885
  %976 = or i32 %975, %973, !dbg !4965
  call void @llvm.dbg.value(metadata i32 %976, metadata !4867, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4875
  br label %977, !dbg !4924

977:                                              ; preds = %235, %239, %242, %972, %860, %723, %657, %513, %353, %273, %226, %176, %730, %79, %71, %54, %73, %75, %81, %83, %733, %735
  %978 = phi i64 [ %31, %54 ], [ %76, %75 ], [ 9223372036854775807, %73 ], [ %84, %83 ], [ 9223372036854775807, %81 ], [ %736, %735 ], [ 9223372036854775807, %733 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %79 ], [ -9223372036854775808, %730 ], [ %178, %176 ], [ %228, %226 ], [ %275, %273 ], [ %355, %353 ], [ %515, %513 ], [ %659, %657 ], [ %725, %723 ], [ %862, %860 ], [ %974, %972 ], [ %243, %242 ], [ 9223372036854775807, %239 ], [ -9223372036854775808, %235 ], !dbg !4813
  %979 = phi i32 [ 0, %54 ], [ 0, %75 ], [ 1, %73 ], [ 0, %83 ], [ 1, %81 ], [ 0, %735 ], [ 1, %733 ], [ 1, %71 ], [ 1, %79 ], [ 1, %730 ], [ %180, %176 ], [ %230, %226 ], [ %277, %273 ], [ %357, %353 ], [ %517, %513 ], [ %661, %657 ], [ %727, %723 ], [ %864, %860 ], [ %976, %972 ], [ 0, %242 ], [ 1, %239 ], [ 1, %235 ], !dbg !4966
  call void @llvm.dbg.value(metadata i32 %979, metadata !4812, metadata !DIExpression()), !dbg !4852
  %980 = or i32 %979, %30, !dbg !4924
  call void @llvm.dbg.value(metadata i32 %980, metadata !4807, metadata !DIExpression()), !dbg !4813
  %981 = getelementptr inbounds i8, ptr %11, i64 %56, !dbg !4967
  store ptr %981, ptr %8, align 8, !dbg !4967, !tbaa !1055
  %982 = load i8, ptr %981, align 1, !dbg !4968, !tbaa !1145
  %983 = icmp eq i8 %982, 0, !dbg !4968
  %984 = or i32 %980, 2
  %985 = select i1 %983, i32 %980, i32 %984, !dbg !4970
  call void @llvm.dbg.value(metadata i32 %985, metadata !4807, metadata !DIExpression()), !dbg !4813
  br label %988

986:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64 %10, metadata !4806, metadata !DIExpression()), !dbg !4813
  store i64 %31, ptr %3, align 8, !dbg !4971, !tbaa !1337
  %987 = or i32 %30, 2, !dbg !4972
  call void @llvm.dbg.value(metadata i32 %30, metadata !4807, metadata !DIExpression()), !dbg !4813
  br label %991

988:                                              ; preds = %977, %29
  %989 = phi i64 [ %31, %29 ], [ %978, %977 ], !dbg !4973
  %990 = phi i32 [ %30, %29 ], [ %985, %977 ], !dbg !4974
  call void @llvm.dbg.value(metadata i32 %990, metadata !4807, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %989, metadata !4806, metadata !DIExpression()), !dbg !4813
  store i64 %989, ptr %3, align 8, !dbg !4975, !tbaa !1337
  br label %991, !dbg !4976

991:                                              ; preds = %986, %22, %13, %15, %18, %988, %38, %28
  %992 = phi i32 [ %990, %988 ], [ %987, %986 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4813
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40, !dbg !4977
  ret i32 %992, !dbg !4977
}

; Function Attrs: nounwind
declare !dbg !4978 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4983 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !5021, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata ptr %1, metadata !5022, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i32 0, metadata !5023, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i32 0, metadata !5024, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i8 0, metadata !5025, metadata !DIExpression()), !dbg !5045
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #40, !dbg !5046
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5026, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata ptr %1, metadata !5030, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata ptr %3, metadata !5032, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i32 0, metadata !5023, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i32 0, metadata !5024, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i8 0, metadata !5025, metadata !DIExpression()), !dbg !5045
  %4 = load i8, ptr %1, align 1, !dbg !5049, !tbaa !1145
  %5 = icmp eq i8 %4, 0, !dbg !5050
  br i1 %5, label %6, label %7, !dbg !5051

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5032, metadata !DIExpression()), !dbg !5048
  store i8 0, ptr %3, align 16, !dbg !5052, !tbaa !1145
  br label %74, !dbg !5053

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !5023, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i32 %11, metadata !5024, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata ptr %13, metadata !5030, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i8 %14, metadata !5025, metadata !DIExpression()), !dbg !5045
  %15 = sext i8 %8 to i32, !dbg !5049
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !5054

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !5023, metadata !DIExpression()), !dbg !5045
  %17 = icmp slt i64 %12, 80, !dbg !5055
  br i1 %17, label %18, label %47, !dbg !5058

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !5059
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !5032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5048
  store i8 %8, ptr %9, align 1, !dbg !5060, !tbaa !1145
  br label %47, !dbg !5061

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !5023, metadata !DIExpression()), !dbg !5045
  %21 = or i32 %11, 576, !dbg !5062
  call void @llvm.dbg.value(metadata i32 %21, metadata !5024, metadata !DIExpression()), !dbg !5045
  %22 = icmp slt i64 %12, 80, !dbg !5063
  br i1 %22, label %23, label %47, !dbg !5065

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !5066
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !5032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5048
  store i8 %8, ptr %9, align 1, !dbg !5067, !tbaa !1145
  br label %47, !dbg !5068

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !5023, metadata !DIExpression()), !dbg !5045
  %26 = or i32 %11, 1088, !dbg !5069
  call void @llvm.dbg.value(metadata i32 %26, metadata !5024, metadata !DIExpression()), !dbg !5045
  %27 = icmp slt i64 %12, 80, !dbg !5070
  br i1 %27, label %28, label %47, !dbg !5072

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !5073
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5048
  store i8 %8, ptr %9, align 1, !dbg !5074, !tbaa !1145
  br label %47, !dbg !5075

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !5024, metadata !DIExpression()), !dbg !5045
  %31 = icmp slt i64 %12, 80, !dbg !5076
  br i1 %31, label %32, label %47, !dbg !5078

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !5079
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5048
  store i8 %8, ptr %9, align 1, !dbg !5080, !tbaa !1145
  br label %47, !dbg !5081

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !5023, metadata !DIExpression()), !dbg !5045
  %35 = icmp slt i64 %12, 80, !dbg !5082
  br i1 %35, label %36, label %47, !dbg !5084

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !5085
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !5032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5048
  store i8 %8, ptr %9, align 1, !dbg !5086, !tbaa !1145
  br label %47, !dbg !5087

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !5088
  call void @llvm.dbg.value(metadata i32 %39, metadata !5024, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i8 1, metadata !5025, metadata !DIExpression()), !dbg !5045
  br label %47, !dbg !5089

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !5090
  call void @llvm.dbg.value(metadata i32 %41, metadata !5024, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i8 1, metadata !5025, metadata !DIExpression()), !dbg !5045
  br label %47, !dbg !5091

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #41, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %43, metadata !5033, metadata !DIExpression()), !dbg !5093
  %44 = sub nsw i64 80, %12, !dbg !5094
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !5096
  call void @llvm.dbg.value(metadata i64 %45, metadata !5033, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata ptr %9, metadata !5097, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata ptr %13, metadata !5100, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i64 %45, metadata !5101, metadata !DIExpression()), !dbg !5102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #40, !dbg !5104
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !5105
  call void @llvm.dbg.value(metadata ptr %46, metadata !5032, metadata !DIExpression()), !dbg !5048
  br label %56, !dbg !5106

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !5045
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !5045
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !5045
  call void @llvm.dbg.value(metadata i32 %51, metadata !5023, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i32 %50, metadata !5024, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !5032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5048
  call void @llvm.dbg.value(metadata i8 %48, metadata !5025, metadata !DIExpression()), !dbg !5045
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !5107
  call void @llvm.dbg.value(metadata ptr %52, metadata !5030, metadata !DIExpression()), !dbg !5048
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !5045
  call void @llvm.dbg.value(metadata ptr %53, metadata !5032, metadata !DIExpression()), !dbg !5048
  %54 = load i8, ptr %52, align 1, !dbg !5049, !tbaa !1145
  %55 = icmp eq i8 %54, 0, !dbg !5050
  br i1 %55, label %56, label %7, !dbg !5051, !llvm.loop !5108

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !5048
  call void @llvm.dbg.value(metadata ptr %60, metadata !5032, metadata !DIExpression()), !dbg !5048
  store i8 0, ptr %60, align 1, !dbg !5052, !tbaa !1145
  %61 = and i8 %57, 1, !dbg !5110
  %62 = icmp eq i8 %61, 0, !dbg !5110
  br i1 %62, label %74, label %63, !dbg !5053

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !5111
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #40, !dbg !5112
  call void @llvm.dbg.value(metadata i32 %65, metadata !5038, metadata !DIExpression()), !dbg !5113
  %66 = icmp slt i32 %65, 0, !dbg !5114
  br i1 %66, label %76, label %67, !dbg !5116

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #40, !dbg !5117
  call void @llvm.dbg.value(metadata ptr %68, metadata !5041, metadata !DIExpression()), !dbg !5113
  %69 = icmp eq ptr %68, null, !dbg !5118
  br i1 %69, label %70, label %76, !dbg !5119

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #43, !dbg !5120
  %72 = load i32, ptr %71, align 4, !dbg !5120, !tbaa !1136
  call void @llvm.dbg.value(metadata i32 %72, metadata !5042, metadata !DIExpression()), !dbg !5121
  %73 = tail call i32 @close(i32 noundef %65) #40, !dbg !5122
  store i32 %72, ptr %71, align 4, !dbg !5123, !tbaa !1136
  br label %76, !dbg !5124

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !5125, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata ptr %1, metadata !5128, metadata !DIExpression()), !dbg !5129
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5131
  br label %76, !dbg !5132

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !5045
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #40, !dbg !5133
  ret ptr %77, !dbg !5133
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5134 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare !dbg !5137 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5140 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5141 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5144 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5182, metadata !DIExpression()), !dbg !5187
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !5188
  call void @llvm.dbg.value(metadata i1 poison, metadata !5183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5187
  call void @llvm.dbg.value(metadata ptr %0, metadata !5189, metadata !DIExpression()), !dbg !5192
  %3 = load i32, ptr %0, align 8, !dbg !5194, !tbaa !1885
  %4 = and i32 %3, 32, !dbg !5195
  %5 = icmp eq i32 %4, 0, !dbg !5195
  call void @llvm.dbg.value(metadata i1 %5, metadata !5185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5187
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !5196
  %7 = icmp eq i32 %6, 0, !dbg !5197
  call void @llvm.dbg.value(metadata i1 %7, metadata !5186, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5187
  br i1 %5, label %8, label %18, !dbg !5198

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5200
  call void @llvm.dbg.value(metadata i1 %9, metadata !5183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5187
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5201
  %11 = xor i1 %7, true, !dbg !5201
  %12 = sext i1 %11 to i32, !dbg !5201
  br i1 %10, label %21, label %13, !dbg !5201

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !5202
  %15 = load i32, ptr %14, align 4, !dbg !5202, !tbaa !1136
  %16 = icmp ne i32 %15, 9, !dbg !5203
  %17 = sext i1 %16 to i32, !dbg !5204
  br label %21, !dbg !5204

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5205

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !5207
  store i32 0, ptr %20, align 4, !dbg !5209, !tbaa !1136
  br label %21, !dbg !5207

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5187
  ret i32 %22, !dbg !5210
}

; Function Attrs: nounwind
declare !dbg !5211 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5214 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5219, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata ptr %1, metadata !5220, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata i64 %2, metadata !5221, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata ptr %3, metadata !5222, metadata !DIExpression()), !dbg !5224
  %5 = icmp eq ptr %1, null, !dbg !5225
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5227
  %7 = select i1 %5, ptr @.str.178, ptr %1, !dbg !5227
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5227
  call void @llvm.dbg.value(metadata i64 %8, metadata !5221, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata ptr %7, metadata !5220, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata ptr %6, metadata !5219, metadata !DIExpression()), !dbg !5224
  %9 = icmp eq ptr %3, null, !dbg !5228
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5230
  call void @llvm.dbg.value(metadata ptr %10, metadata !5222, metadata !DIExpression()), !dbg !5224
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !5231
  call void @llvm.dbg.value(metadata i64 %11, metadata !5223, metadata !DIExpression()), !dbg !5224
  %12 = icmp ult i64 %11, -3, !dbg !5232
  br i1 %12, label %13, label %17, !dbg !5234

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !5235
  %15 = icmp eq i32 %14, 0, !dbg !5235
  br i1 %15, label %16, label %29, !dbg !5236

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5237, metadata !DIExpression()), !dbg !5242
  call void @llvm.dbg.value(metadata ptr %10, metadata !5244, metadata !DIExpression()), !dbg !5249
  call void @llvm.dbg.value(metadata i32 0, metadata !5247, metadata !DIExpression()), !dbg !5249
  call void @llvm.dbg.value(metadata i64 8, metadata !5248, metadata !DIExpression()), !dbg !5249
  store i64 0, ptr %10, align 1, !dbg !5251
  br label %29, !dbg !5252

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5253
  br i1 %18, label %19, label %20, !dbg !5255

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5256
  unreachable, !dbg !5256

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5257

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !5259
  br i1 %23, label %29, label %24, !dbg !5260

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5261
  br i1 %25, label %29, label %26, !dbg !5264

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5265, !tbaa !1145
  %28 = zext i8 %27 to i32, !dbg !5266
  store i32 %28, ptr %6, align 4, !dbg !5267, !tbaa !1136
  br label %29, !dbg !5268

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5224
  ret i64 %30, !dbg !5269
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5270 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5276 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5278, metadata !DIExpression()), !dbg !5282
  call void @llvm.dbg.value(metadata i64 %1, metadata !5279, metadata !DIExpression()), !dbg !5282
  call void @llvm.dbg.value(metadata i64 %2, metadata !5280, metadata !DIExpression()), !dbg !5282
  %4 = icmp eq i64 %2, 0, !dbg !5283
  br i1 %4, label %8, label %5, !dbg !5283

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5283
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5283
  br i1 %7, label %13, label %8, !dbg !5283

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5282
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5282
  %9 = mul i64 %2, %1, !dbg !5283
  call void @llvm.dbg.value(metadata i64 %9, metadata !5281, metadata !DIExpression()), !dbg !5282
  call void @llvm.dbg.value(metadata ptr %0, metadata !5285, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.value(metadata i64 %9, metadata !5288, metadata !DIExpression()), !dbg !5289
  %10 = icmp eq i64 %9, 0, !dbg !5291
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5291
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #47, !dbg !5292
  br label %15, !dbg !5293

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5281, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5282
  %14 = tail call ptr @__errno_location() #43, !dbg !5294
  store i32 12, ptr %14, align 4, !dbg !5296, !tbaa !1136
  br label %15, !dbg !5297

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5282
  ret ptr %16, !dbg !5298
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5299 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5303, metadata !DIExpression()), !dbg !5308
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5309
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5304, metadata !DIExpression()), !dbg !5310
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5311
  %4 = icmp eq i32 %3, 0, !dbg !5311
  br i1 %4, label %5, label %12, !dbg !5313

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5314, metadata !DIExpression()), !dbg !5318
  %6 = load i16, ptr %2, align 16, !dbg !5321
  %7 = icmp eq i16 %6, 67, !dbg !5321
  br i1 %7, label %11, label %8, !dbg !5322

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5314, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.value(metadata ptr @.str.1.183, metadata !5317, metadata !DIExpression()), !dbg !5323
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.183, i64 6), !dbg !5325
  %10 = icmp eq i32 %9, 0, !dbg !5326
  br i1 %10, label %11, label %12, !dbg !5327

11:                                               ; preds = %8, %5
  br label %12, !dbg !5328

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5308
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5329
  ret i1 %13, !dbg !5329
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5334, metadata !DIExpression()), !dbg !5337
  call void @llvm.dbg.value(metadata ptr %1, metadata !5335, metadata !DIExpression()), !dbg !5337
  call void @llvm.dbg.value(metadata i64 %2, metadata !5336, metadata !DIExpression()), !dbg !5337
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5338
  ret i32 %4, !dbg !5339
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5340 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5344, metadata !DIExpression()), !dbg !5345
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5346
  ret ptr %2, !dbg !5347
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5350, metadata !DIExpression()), !dbg !5352
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5353
  call void @llvm.dbg.value(metadata ptr %2, metadata !5351, metadata !DIExpression()), !dbg !5352
  ret ptr %2, !dbg !5354
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5355 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5357, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.value(metadata ptr %1, metadata !5358, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.value(metadata i64 %2, metadata !5359, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.value(metadata i32 %0, metadata !5350, metadata !DIExpression()), !dbg !5365
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5367
  call void @llvm.dbg.value(metadata ptr %4, metadata !5351, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.value(metadata ptr %4, metadata !5360, metadata !DIExpression()), !dbg !5364
  %5 = icmp eq ptr %4, null, !dbg !5368
  br i1 %5, label %6, label %9, !dbg !5369

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5370
  br i1 %7, label %19, label %8, !dbg !5373

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5374, !tbaa !1145
  br label %19, !dbg !5375

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5376
  call void @llvm.dbg.value(metadata i64 %10, metadata !5361, metadata !DIExpression()), !dbg !5377
  %11 = icmp ult i64 %10, %2, !dbg !5378
  br i1 %11, label %12, label %14, !dbg !5380

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5381
  call void @llvm.dbg.value(metadata ptr %1, metadata !5383, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata ptr %4, metadata !5386, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata i64 %13, metadata !5387, metadata !DIExpression()), !dbg !5388
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !5390
  br label %19, !dbg !5391

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5392
  br i1 %15, label %19, label %16, !dbg !5395

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5396
  call void @llvm.dbg.value(metadata ptr %1, metadata !5383, metadata !DIExpression()), !dbg !5398
  call void @llvm.dbg.value(metadata ptr %4, metadata !5386, metadata !DIExpression()), !dbg !5398
  call void @llvm.dbg.value(metadata i64 %17, metadata !5387, metadata !DIExpression()), !dbg !5398
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5400
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5401
  store i8 0, ptr %18, align 1, !dbg !5402, !tbaa !1145
  br label %19, !dbg !5403

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5404
  ret i32 %20, !dbg !5405
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
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!106, !631, !635, !650, !915, !950, !953, !955, !958, !960, !962, !964, !697, !711, !759, !967, !907, !973, !1004, !1006, !1018, !1022, !1024, !934, !1026, !1029, !1033, !1035}
!llvm.ident = !{!1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037, !1037}
!llvm.module.flags = !{!1038, !1039, !1040, !1041, !1042, !1043}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "07c189a22e7a32e0222ef52bf431f505")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!120 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!121 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !347)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!616 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!649 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !650, file: !651, line: 66, type: !694, isLocal: false, isDefinition: true)
!650 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !652, globals: !653, splitDebugInlining: false, nameTableKind: None)
!651 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!652 = !{!178, !185}
!653 = !{!654, !656, !676, !678, !680, !682, !648, !684, !686, !688, !690, !692}
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !651, line: 272, type: !400, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "old_file_name", scope: !658, file: !651, line: 304, type: !183, isLocal: true, isDefinition: true)
!658 = distinct !DISubprogram(name: "verror_at_line", scope: !651, file: !651, line: 298, type: !659, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !669)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !118, !118, !183, !110, !183, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !663)
!663 = !{!664, !666, !667, !668}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !662, file: !665, baseType: !110, size: 32)
!665 = !DIFile(filename: "lib/error.c", directory: "/src")
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !662, file: !665, baseType: !110, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !662, file: !665, baseType: !178, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !662, file: !665, baseType: !178, size: 64, offset: 128)
!669 = !{!670, !671, !672, !673, !674, !675}
!670 = !DILocalVariable(name: "status", arg: 1, scope: !658, file: !651, line: 298, type: !118)
!671 = !DILocalVariable(name: "errnum", arg: 2, scope: !658, file: !651, line: 298, type: !118)
!672 = !DILocalVariable(name: "file_name", arg: 3, scope: !658, file: !651, line: 298, type: !183)
!673 = !DILocalVariable(name: "line_number", arg: 4, scope: !658, file: !651, line: 298, type: !110)
!674 = !DILocalVariable(name: "message", arg: 5, scope: !658, file: !651, line: 298, type: !183)
!675 = !DILocalVariable(name: "args", arg: 6, scope: !658, file: !651, line: 298, type: !661)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(name: "old_line_number", scope: !658, file: !651, line: 305, type: !110, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !651, line: 338, type: !407, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !651, line: 346, type: !436, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !651, line: 346, type: !227, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "error_message_count", scope: !650, file: !651, line: 69, type: !110, isLocal: false, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !650, file: !651, line: 295, type: !118, isLocal: false, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !651, line: 208, type: !431, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !651, line: 208, type: !512, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !651, line: 214, type: !400, isLocal: true, isDefinition: true)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(name: "program_name", scope: !697, file: !698, line: 31, type: !183, isLocal: false, isDefinition: true)
!697 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, globals: !700, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!699 = !{!177}
!700 = !{!695, !701, !703}
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !698, line: 46, type: !436, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !698, line: 49, type: !407, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "utf07FF", scope: !707, file: !708, line: 46, type: !735, isLocal: true, isDefinition: true)
!707 = distinct !DISubprogram(name: "proper_name_lite", scope: !708, file: !708, line: 38, type: !709, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !713)
!708 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!709 = !DISubroutineType(types: !710)
!710 = !{!183, !183, !183}
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !712, splitDebugInlining: false, nameTableKind: None)
!712 = !{!705}
!713 = !{!714, !715, !716, !717, !722}
!714 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !707, file: !708, line: 38, type: !183)
!715 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !707, file: !708, line: 38, type: !183)
!716 = !DILocalVariable(name: "translation", scope: !707, file: !708, line: 40, type: !183)
!717 = !DILocalVariable(name: "w", scope: !707, file: !708, line: 47, type: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !719, line: 37, baseType: !720)
!719 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !308, line: 57, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !308, line: 42, baseType: !110)
!722 = !DILocalVariable(name: "mbs", scope: !707, file: !708, line: 48, type: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !724, line: 6, baseType: !725)
!724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !726, line: 21, baseType: !727)
!726 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 13, size: 64, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !727, file: !726, line: 15, baseType: !118, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !727, file: !726, line: 20, baseType: !731, size: 32, offset: 32)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !726, line: 16, size: 32, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !731, file: !726, line: 18, baseType: !110, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !731, file: !726, line: 19, baseType: !407, size: 32)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 16, elements: !228)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !738, line: 78, type: !436, isLocal: true, isDefinition: true)
!738 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !738, line: 79, type: !412, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !738, line: 80, type: !525, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !738, line: 81, type: !525, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !738, line: 82, type: !389, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !738, line: 83, type: !227, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !738, line: 84, type: !436, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !738, line: 85, type: !431, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !738, line: 86, type: !431, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !738, line: 87, type: !436, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !759, file: !738, line: 76, type: !828, isLocal: false, isDefinition: true)
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !760, retainedTypes: !766, globals: !767, splitDebugInlining: false, nameTableKind: None)
!760 = !{!147, !761, !122}
!761 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !148, line: 254, baseType: !110, size: 32, elements: !762)
!762 = !{!763, !764, !765}
!763 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!764 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!765 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!766 = !{!118, !179, !180}
!767 = !{!736, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !768, !772, !782, !784, !786, !788, !790, !792, !794, !817, !824, !826}
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !759, file: !738, line: 92, type: !770, isLocal: false, isDefinition: true)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 320, elements: !92)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !759, file: !738, line: 1040, type: !774, isLocal: false, isDefinition: true)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !738, line: 56, size: 448, elements: !775)
!775 = !{!776, !777, !778, !780, !781}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !774, file: !738, line: 59, baseType: !147, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !738, line: 62, baseType: !118, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !774, file: !738, line: 66, baseType: !779, size: 256, offset: 64)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !437)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !774, file: !738, line: 69, baseType: !183, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !774, file: !738, line: 72, baseType: !183, size: 64, offset: 384)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !759, file: !738, line: 107, type: !774, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "slot0", scope: !759, file: !738, line: 831, type: !276, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !738, line: 321, type: !227, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !738, line: 357, type: !227, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !738, line: 358, type: !227, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !738, line: 199, type: !431, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "quote", scope: !796, file: !738, line: 228, type: !815, isLocal: true, isDefinition: true)
!796 = distinct !DISubprogram(name: "gettext_quote", scope: !738, file: !738, line: 197, type: !797, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!183, !183, !147}
!799 = !{!800, !801, !802, !803, !804}
!800 = !DILocalVariable(name: "msgid", arg: 1, scope: !796, file: !738, line: 197, type: !183)
!801 = !DILocalVariable(name: "s", arg: 2, scope: !796, file: !738, line: 197, type: !147)
!802 = !DILocalVariable(name: "translation", scope: !796, file: !738, line: 199, type: !183)
!803 = !DILocalVariable(name: "w", scope: !796, file: !738, line: 229, type: !718)
!804 = !DILocalVariable(name: "mbs", scope: !796, file: !738, line: 230, type: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !724, line: 6, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !726, line: 21, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 13, size: 64, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !807, file: !726, line: 15, baseType: !118, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !807, file: !726, line: 20, baseType: !811, size: 32, offset: 32)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !726, line: 16, size: 32, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !811, file: !726, line: 18, baseType: !110, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !811, file: !726, line: 19, baseType: !407, size: 32)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !816)
!816 = !{!229, !409}
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "slotvec", scope: !759, file: !738, line: 834, type: !819, isLocal: true, isDefinition: true)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !738, line: 823, size: 128, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !820, file: !738, line: 825, baseType: !180, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !820, file: !738, line: 826, baseType: !177, size: 64, offset: 64)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "nslots", scope: !759, file: !738, line: 832, type: !118, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "slotvec0", scope: !759, file: !738, line: 833, type: !820, isLocal: true, isDefinition: true)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 704, elements: !830)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!830 = !{!831}
!831 = !DISubrange(count: 11)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !834, line: 67, type: !501, isLocal: true, isDefinition: true)
!834 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !834, line: 69, type: !431, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !834, line: 83, type: !431, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !834, line: 83, type: !407, isLocal: true, isDefinition: true)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !834, line: 85, type: !227, isLocal: true, isDefinition: true)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !834, line: 88, type: !845, isLocal: true, isDefinition: true)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 171)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !834, line: 88, type: !222, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !834, line: 105, type: !239, isLocal: true, isDefinition: true)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !834, line: 109, type: !854, isLocal: true, isDefinition: true)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 23)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !834, line: 113, type: !859, isLocal: true, isDefinition: true)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 28)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !834, line: 120, type: !211, isLocal: true, isDefinition: true)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !834, line: 127, type: !866, isLocal: true, isDefinition: true)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 36)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !834, line: 134, type: !458, isLocal: true, isDefinition: true)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !834, line: 142, type: !873, isLocal: true, isDefinition: true)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 44)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(scope: null, file: !834, line: 150, type: !878, isLocal: true, isDefinition: true)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 48)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(scope: null, file: !834, line: 159, type: !883, isLocal: true, isDefinition: true)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 52)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(scope: null, file: !834, line: 170, type: !888, isLocal: true, isDefinition: true)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 60)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !834, line: 248, type: !389, isLocal: true, isDefinition: true)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !834, line: 248, type: !101, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !834, line: 254, type: !389, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !834, line: 254, type: !232, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !834, line: 254, type: !458, isLocal: true, isDefinition: true)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !834, line: 259, type: !3, isLocal: true, isDefinition: true)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(scope: null, file: !834, line: 259, type: !199, isLocal: true, isDefinition: true)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !907, file: !908, line: 26, type: !910, isLocal: false, isDefinition: true)
!907 = distinct !DICompileUnit(language: DW_LANG_C11, file: !908, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !909, splitDebugInlining: false, nameTableKind: None)
!908 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!909 = !{!905}
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 376, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 47)
!913 = !DIGlobalVariableExpression(var: !914, expr: !DIExpression())
!914 = distinct !DIGlobalVariable(name: "exit_failure", scope: !915, file: !916, line: 24, type: !918, isLocal: false, isDefinition: true)
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !917, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!917 = !{!913}
!918 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(scope: null, file: !921, line: 34, type: !19, isLocal: true, isDefinition: true)
!921 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(scope: null, file: !921, line: 34, type: !431, isLocal: true, isDefinition: true)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !921, line: 34, type: !453, isLocal: true, isDefinition: true)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !928, line: 80, type: !431, isLocal: true, isDefinition: true)
!928 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(scope: null, file: !931, line: 108, type: !86, isLocal: true, isDefinition: true)
!931 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(name: "internal_state", scope: !934, file: !931, line: 97, type: !937, isLocal: true, isDefinition: true)
!934 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !935, globals: !936, splitDebugInlining: false, nameTableKind: None)
!935 = !{!178, !180, !185}
!936 = !{!929, !932}
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !724, line: 6, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !726, line: 21, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 13, size: 64, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !939, file: !726, line: 15, baseType: !118, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !939, file: !726, line: 20, baseType: !943, size: 32, offset: 32)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !726, line: 16, size: 32, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !943, file: !726, line: 18, baseType: !110, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !943, file: !726, line: 19, baseType: !407, size: 32)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !949, line: 35, type: !412, isLocal: true, isDefinition: true)
!949 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!950 = distinct !DICompileUnit(language: DW_LANG_C11, file: !951, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !952, splitDebugInlining: false, nameTableKind: None)
!951 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!952 = !{!161}
!953 = distinct !DICompileUnit(language: DW_LANG_C11, file: !954, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!954 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!955 = distinct !DICompileUnit(language: DW_LANG_C11, file: !956, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !957, splitDebugInlining: false, nameTableKind: None)
!956 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!957 = !{!178}
!958 = distinct !DICompileUnit(language: DW_LANG_C11, file: !959, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!959 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!960 = distinct !DICompileUnit(language: DW_LANG_C11, file: !961, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !957, splitDebugInlining: false, nameTableKind: None)
!961 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!962 = distinct !DICompileUnit(language: DW_LANG_C11, file: !963, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!963 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!964 = distinct !DICompileUnit(language: DW_LANG_C11, file: !965, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!966 = !{!261}
!967 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !968, retainedTypes: !957, globals: !972, splitDebugInlining: false, nameTableKind: None)
!968 = !{!969}
!969 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !834, line: 40, baseType: !110, size: 32, elements: !970)
!970 = !{!971}
!971 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!972 = !{!832, !835, !837, !839, !841, !843, !848, !850, !852, !857, !862, !864, !869, !871, !876, !881, !886, !891, !893, !895, !897, !899, !901, !903}
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !975, retainedTypes: !1003, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!975 = !{!976, !988}
!976 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !977, file: !974, line: 188, baseType: !110, size: 32, elements: !986)
!977 = distinct !DISubprogram(name: "x2nrealloc", scope: !974, file: !974, line: 176, type: !978, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !981)
!978 = !DISubroutineType(types: !979)
!979 = !{!178, !178, !980, !180}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!981 = !{!982, !983, !984, !985}
!982 = !DILocalVariable(name: "p", arg: 1, scope: !977, file: !974, line: 176, type: !178)
!983 = !DILocalVariable(name: "pn", arg: 2, scope: !977, file: !974, line: 176, type: !980)
!984 = !DILocalVariable(name: "s", arg: 3, scope: !977, file: !974, line: 176, type: !180)
!985 = !DILocalVariable(name: "n", scope: !977, file: !974, line: 178, type: !180)
!986 = !{!987}
!987 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!988 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !989, file: !974, line: 228, baseType: !110, size: 32, elements: !986)
!989 = distinct !DISubprogram(name: "xpalloc", scope: !974, file: !974, line: 223, type: !990, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !993)
!990 = !DISubroutineType(types: !991)
!991 = !{!178, !178, !992, !297, !299, !297}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!994 = !DILocalVariable(name: "pa", arg: 1, scope: !989, file: !974, line: 223, type: !178)
!995 = !DILocalVariable(name: "pn", arg: 2, scope: !989, file: !974, line: 223, type: !992)
!996 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !989, file: !974, line: 223, type: !297)
!997 = !DILocalVariable(name: "n_max", arg: 4, scope: !989, file: !974, line: 223, type: !299)
!998 = !DILocalVariable(name: "s", arg: 5, scope: !989, file: !974, line: 223, type: !297)
!999 = !DILocalVariable(name: "n0", scope: !989, file: !974, line: 230, type: !297)
!1000 = !DILocalVariable(name: "n", scope: !989, file: !974, line: 237, type: !297)
!1001 = !DILocalVariable(name: "nbytes", scope: !989, file: !974, line: 248, type: !297)
!1002 = !DILocalVariable(name: "adjusted_nbytes", scope: !989, file: !974, line: 252, type: !297)
!1003 = !{!177, !178, !186, !300, !182}
!1004 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1005, splitDebugInlining: false, nameTableKind: None)
!1005 = !{!919, !922, !924}
!1006 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1007, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1008, globals: !1017, splitDebugInlining: false, nameTableKind: None)
!1007 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!1008 = !{!1009, !108}
!1009 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1010, line: 30, baseType: !110, size: 32, elements: !1011)
!1010 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1011 = !{!1012, !1013, !1014, !1015, !1016}
!1012 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!1013 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!1014 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!1015 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!1016 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!1017 = !{!926}
!1018 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1019, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1020, retainedTypes: !1021, splitDebugInlining: false, nameTableKind: None)
!1019 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!1020 = !{!1009}
!1021 = !{!186, !300, !182, !305}
!1022 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1023, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !957, splitDebugInlining: false, nameTableKind: None)
!1023 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1024 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1025, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1025 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1026 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1027, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1028, splitDebugInlining: false, nameTableKind: None)
!1027 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1028 = !{!186, !182, !178}
!1029 = distinct !DICompileUnit(language: DW_LANG_C11, file: !949, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1030, splitDebugInlining: false, nameTableKind: None)
!1030 = !{!1031, !947}
!1031 = !DIGlobalVariableExpression(var: !1032, expr: !DIExpression())
!1032 = distinct !DIGlobalVariable(scope: null, file: !949, line: 35, type: !227, isLocal: true, isDefinition: true)
!1033 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1034, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1034 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1035 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1036, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !957, splitDebugInlining: false, nameTableKind: None)
!1036 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1037 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1038 = !{i32 7, !"Dwarf Version", i32 5}
!1039 = !{i32 2, !"Debug Info Version", i32 3}
!1040 = !{i32 1, !"wchar_size", i32 4}
!1041 = !{i32 8, !"PIC Level", i32 2}
!1042 = !{i32 7, !"PIE Level", i32 2}
!1043 = !{i32 7, !"uwtable", i32 2}
!1044 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 175, type: !1045, scopeLine: 176, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !118}
!1047 = !{!1048}
!1048 = !DILocalVariable(name: "status", arg: 1, scope: !1044, file: !2, line: 175, type: !118)
!1049 = !DILocation(line: 0, scope: !1044)
!1050 = !DILocation(line: 177, column: 14, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 177, column: 7)
!1052 = !DILocation(line: 177, column: 7, scope: !1044)
!1053 = !DILocation(line: 178, column: 5, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 178, column: 5)
!1055 = !{!1056, !1056, i64 0}
!1056 = !{!"any pointer", !1057, i64 0}
!1057 = !{!"omnipotent char", !1058, i64 0}
!1058 = !{!"Simple C/C++ TBAA"}
!1059 = !DILocation(line: 181, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 180, column: 5)
!1061 = !DILocation(line: 185, column: 7, scope: !1060)
!1062 = !DILocation(line: 729, column: 3, scope: !1063, inlinedAt: !1065)
!1063 = distinct !DISubprogram(name: "emit_stdin_note", scope: !117, file: !117, line: 727, type: !600, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1064)
!1064 = !{}
!1065 = distinct !DILocation(line: 189, column: 7, scope: !1060)
!1066 = !DILocation(line: 736, column: 3, scope: !1067, inlinedAt: !1068)
!1067 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !117, file: !117, line: 734, type: !600, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1064)
!1068 = distinct !DILocation(line: 190, column: 7, scope: !1060)
!1069 = !DILocation(line: 192, column: 7, scope: !1060)
!1070 = !DILocation(line: 195, column: 7, scope: !1060)
!1071 = !DILocation(line: 198, column: 7, scope: !1060)
!1072 = !DILocation(line: 201, column: 7, scope: !1060)
!1073 = !DILocation(line: 204, column: 7, scope: !1060)
!1074 = !DILocation(line: 207, column: 7, scope: !1060)
!1075 = !DILocation(line: 210, column: 7, scope: !1060)
!1076 = !DILocation(line: 213, column: 7, scope: !1060)
!1077 = !DILocation(line: 216, column: 7, scope: !1060)
!1078 = !DILocation(line: 219, column: 7, scope: !1060)
!1079 = !DILocation(line: 222, column: 7, scope: !1060)
!1080 = !DILocation(line: 225, column: 7, scope: !1060)
!1081 = !DILocation(line: 226, column: 7, scope: !1060)
!1082 = !DILocation(line: 227, column: 7, scope: !1060)
!1083 = !DILocation(line: 236, column: 7, scope: !1060)
!1084 = !DILocation(line: 246, column: 7, scope: !1060)
!1085 = !DILocalVariable(name: "program", arg: 1, scope: !1086, file: !117, line: 836, type: !183)
!1086 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 836, type: !1087, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !183}
!1089 = !{!1085, !1090, !1097, !1098, !1100, !1101}
!1090 = !DILocalVariable(name: "infomap", scope: !1086, file: !117, line: 838, type: !1091)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1092, size: 896, elements: !432)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1086, file: !117, line: 838, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1093, file: !117, line: 838, baseType: !183, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1093, file: !117, line: 838, baseType: !183, size: 64, offset: 64)
!1097 = !DILocalVariable(name: "node", scope: !1086, file: !117, line: 848, type: !183)
!1098 = !DILocalVariable(name: "map_prog", scope: !1086, file: !117, line: 849, type: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1100 = !DILocalVariable(name: "lc_messages", scope: !1086, file: !117, line: 861, type: !183)
!1101 = !DILocalVariable(name: "url_program", scope: !1086, file: !117, line: 874, type: !183)
!1102 = !DILocation(line: 0, scope: !1086, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 255, column: 7, scope: !1060)
!1104 = !DILocation(line: 857, column: 3, scope: !1086, inlinedAt: !1103)
!1105 = !DILocation(line: 861, column: 29, scope: !1086, inlinedAt: !1103)
!1106 = !DILocation(line: 862, column: 7, scope: !1107, inlinedAt: !1103)
!1107 = distinct !DILexicalBlock(scope: !1086, file: !117, line: 862, column: 7)
!1108 = !DILocation(line: 862, column: 19, scope: !1107, inlinedAt: !1103)
!1109 = !DILocation(line: 862, column: 22, scope: !1107, inlinedAt: !1103)
!1110 = !DILocation(line: 862, column: 7, scope: !1086, inlinedAt: !1103)
!1111 = !DILocation(line: 868, column: 7, scope: !1112, inlinedAt: !1103)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !117, line: 863, column: 5)
!1113 = !DILocation(line: 870, column: 5, scope: !1112, inlinedAt: !1103)
!1114 = !DILocation(line: 875, column: 3, scope: !1086, inlinedAt: !1103)
!1115 = !DILocation(line: 877, column: 3, scope: !1086, inlinedAt: !1103)
!1116 = !DILocation(line: 257, column: 3, scope: !1044)
!1117 = !DISubprogram(name: "dcgettext", scope: !1118, file: !1118, line: 51, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1118 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!177, !183, !183, !118}
!1121 = !DISubprogram(name: "__fprintf_chk", scope: !1122, file: !1122, line: 93, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!118, !1125, !118, !1126, null}
!1125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !342)
!1126 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !183)
!1127 = !DISubprogram(name: "__printf_chk", scope: !1122, file: !1122, line: 95, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!118, !118, !1126, null}
!1130 = !DISubprogram(name: "fputs_unlocked", scope: !1131, file: !1131, line: 691, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1131 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!118, !1126, !1125}
!1134 = !DILocation(line: 0, scope: !320)
!1135 = !DILocation(line: 581, column: 7, scope: !328)
!1136 = !{!1137, !1137, i64 0}
!1137 = !{!"int", !1057, i64 0}
!1138 = !DILocation(line: 581, column: 19, scope: !328)
!1139 = !DILocation(line: 581, column: 7, scope: !320)
!1140 = !DILocation(line: 585, column: 26, scope: !327)
!1141 = !DILocation(line: 0, scope: !327)
!1142 = !DILocation(line: 586, column: 23, scope: !327)
!1143 = !DILocation(line: 586, column: 28, scope: !327)
!1144 = !DILocation(line: 586, column: 32, scope: !327)
!1145 = !{!1057, !1057, i64 0}
!1146 = !DILocation(line: 586, column: 38, scope: !327)
!1147 = !DILocalVariable(name: "__s1", arg: 1, scope: !1148, file: !1149, line: 1359, type: !183)
!1148 = distinct !DISubprogram(name: "streq", scope: !1149, file: !1149, line: 1359, type: !1150, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1152)
!1149 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!186, !183, !183}
!1152 = !{!1147, !1153}
!1153 = !DILocalVariable(name: "__s2", arg: 2, scope: !1148, file: !1149, line: 1359, type: !183)
!1154 = !DILocation(line: 0, scope: !1148, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 586, column: 41, scope: !327)
!1156 = !DILocation(line: 1361, column: 11, scope: !1148, inlinedAt: !1155)
!1157 = !DILocation(line: 1361, column: 10, scope: !1148, inlinedAt: !1155)
!1158 = !DILocation(line: 586, column: 19, scope: !327)
!1159 = !DILocation(line: 587, column: 5, scope: !327)
!1160 = !DILocation(line: 588, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !320, file: !117, line: 588, column: 7)
!1162 = !DILocation(line: 588, column: 7, scope: !320)
!1163 = !DILocation(line: 590, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !117, line: 589, column: 5)
!1165 = !DILocation(line: 591, column: 7, scope: !1164)
!1166 = !DILocation(line: 595, column: 37, scope: !320)
!1167 = !DILocation(line: 595, column: 35, scope: !320)
!1168 = !DILocation(line: 596, column: 29, scope: !320)
!1169 = !DILocation(line: 597, column: 8, scope: !335)
!1170 = !DILocation(line: 597, column: 7, scope: !320)
!1171 = !DILocation(line: 604, column: 24, scope: !334)
!1172 = !DILocation(line: 604, column: 12, scope: !335)
!1173 = !DILocation(line: 0, scope: !333)
!1174 = !DILocation(line: 610, column: 16, scope: !333)
!1175 = !DILocation(line: 610, column: 7, scope: !333)
!1176 = !DILocation(line: 611, column: 21, scope: !333)
!1177 = !{!1178, !1178, i64 0}
!1178 = !{!"short", !1057, i64 0}
!1179 = !DILocation(line: 611, column: 19, scope: !333)
!1180 = !DILocation(line: 611, column: 16, scope: !333)
!1181 = !DILocation(line: 610, column: 30, scope: !333)
!1182 = distinct !{!1182, !1175, !1176, !1183}
!1183 = !{!"llvm.loop.mustprogress"}
!1184 = !DILocation(line: 612, column: 18, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !333, file: !117, line: 612, column: 11)
!1186 = !DILocation(line: 612, column: 11, scope: !333)
!1187 = !DILocation(line: 618, column: 5, scope: !333)
!1188 = !DILocation(line: 620, column: 23, scope: !320)
!1189 = !DILocation(line: 625, column: 39, scope: !320)
!1190 = !DILocation(line: 626, column: 3, scope: !320)
!1191 = !DILocation(line: 626, column: 10, scope: !320)
!1192 = !DILocation(line: 626, column: 21, scope: !320)
!1193 = !DILocation(line: 628, column: 44, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !117, line: 628, column: 11)
!1195 = distinct !DILexicalBlock(scope: !320, file: !117, line: 627, column: 5)
!1196 = !DILocation(line: 628, column: 32, scope: !1194)
!1197 = !DILocation(line: 628, column: 49, scope: !1194)
!1198 = !DILocation(line: 628, column: 11, scope: !1195)
!1199 = !DILocation(line: 630, column: 11, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !117, line: 630, column: 11)
!1201 = !DILocation(line: 630, column: 11, scope: !1195)
!1202 = !DILocation(line: 632, column: 26, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !117, line: 632, column: 15)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !117, line: 631, column: 9)
!1205 = !DILocation(line: 632, column: 34, scope: !1203)
!1206 = !DILocation(line: 632, column: 37, scope: !1203)
!1207 = !DILocation(line: 632, column: 15, scope: !1204)
!1208 = !DILocation(line: 636, column: 16, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !117, line: 636, column: 15)
!1210 = !DILocation(line: 636, column: 29, scope: !1209)
!1211 = !DILocation(line: 640, column: 16, scope: !1195)
!1212 = distinct !{!1212, !1190, !1213, !1183}
!1213 = !DILocation(line: 641, column: 5, scope: !320)
!1214 = !DILocation(line: 644, column: 3, scope: !320)
!1215 = !DILocation(line: 0, scope: !1148, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 648, column: 31, scope: !320)
!1217 = !DILocation(line: 0, scope: !1148, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 649, column: 31, scope: !320)
!1219 = !DILocation(line: 0, scope: !1148, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 650, column: 31, scope: !320)
!1221 = !DILocation(line: 0, scope: !1148, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 651, column: 31, scope: !320)
!1223 = !DILocation(line: 0, scope: !1148, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 652, column: 31, scope: !320)
!1225 = !DILocation(line: 0, scope: !1148, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 653, column: 31, scope: !320)
!1227 = !DILocation(line: 0, scope: !1148, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 654, column: 31, scope: !320)
!1229 = !DILocation(line: 0, scope: !1148, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 655, column: 31, scope: !320)
!1231 = !DILocation(line: 0, scope: !1148, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 656, column: 31, scope: !320)
!1233 = !DILocation(line: 0, scope: !1148, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 657, column: 31, scope: !320)
!1235 = !DILocation(line: 663, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !320, file: !117, line: 663, column: 7)
!1237 = !DILocation(line: 664, column: 7, scope: !1236)
!1238 = !DILocation(line: 664, column: 10, scope: !1236)
!1239 = !DILocation(line: 663, column: 7, scope: !320)
!1240 = !DILocation(line: 669, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 665, column: 5)
!1242 = !DILocation(line: 671, column: 5, scope: !1241)
!1243 = !DILocation(line: 676, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 673, column: 5)
!1245 = !DILocation(line: 679, column: 3, scope: !320)
!1246 = !DILocation(line: 683, column: 3, scope: !320)
!1247 = !DILocation(line: 686, column: 3, scope: !320)
!1248 = !DILocation(line: 688, column: 3, scope: !320)
!1249 = !DILocation(line: 691, column: 3, scope: !320)
!1250 = !DILocation(line: 695, column: 3, scope: !320)
!1251 = !DILocation(line: 696, column: 1, scope: !320)
!1252 = !DISubprogram(name: "setlocale", scope: !1253, file: !1253, line: 122, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1253 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!177, !118, !183}
!1256 = !DISubprogram(name: "strncmp", scope: !1257, file: !1257, line: 159, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1257 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!118, !183, !183, !180}
!1260 = !DISubprogram(name: "exit", scope: !1261, file: !1261, line: 624, type: !1045, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1261 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1262 = !DISubprogram(name: "getenv", scope: !1261, file: !1261, line: 641, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!177, !183}
!1265 = !DISubprogram(name: "strcmp", scope: !1257, file: !1257, line: 156, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!118, !183, !183}
!1268 = !DISubprogram(name: "strspn", scope: !1257, file: !1257, line: 297, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!182, !183, !183}
!1271 = !DISubprogram(name: "strchr", scope: !1257, file: !1257, line: 246, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!177, !183, !118}
!1274 = !DISubprogram(name: "__ctype_b_loc", scope: !123, file: !123, line: 79, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1280 = !DISubprogram(name: "strcspn", scope: !1257, file: !1257, line: 293, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1281 = !DISubprogram(name: "fwrite_unlocked", scope: !1131, file: !1131, line: 704, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!180, !1284, !180, !180, !1125}
!1284 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1287 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 498, type: !1288, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1291)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!118, !118, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1302, !1303}
!1292 = !DILocalVariable(name: "argc", arg: 1, scope: !1287, file: !2, line: 498, type: !118)
!1293 = !DILocalVariable(name: "argv", arg: 2, scope: !1287, file: !2, line: 498, type: !1290)
!1294 = !DILocalVariable(name: "c", scope: !1287, file: !2, line: 500, type: !118)
!1295 = !DILocalVariable(name: "len", scope: !1287, file: !2, line: 501, type: !180)
!1296 = !DILocalVariable(name: "ok", scope: !1287, file: !2, line: 502, type: !186)
!1297 = !DILocalVariable(name: "p", scope: !1298, file: !2, line: 585, type: !183)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 584, column: 13)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 583, column: 15)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 517, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 515, column: 5)
!1302 = !DILocalVariable(name: "lim", scope: !1298, file: !2, line: 586, type: !183)
!1303 = !DILocalVariable(name: "n_chars", scope: !1298, file: !2, line: 587, type: !118)
!1304 = !DILocation(line: 0, scope: !1287)
!1305 = !DILocation(line: 505, column: 21, scope: !1287)
!1306 = !DILocation(line: 505, column: 3, scope: !1287)
!1307 = !DILocation(line: 506, column: 3, scope: !1287)
!1308 = !DILocation(line: 507, column: 3, scope: !1287)
!1309 = !DILocation(line: 508, column: 3, scope: !1287)
!1310 = !DILocation(line: 510, column: 3, scope: !1287)
!1311 = !DILocation(line: 512, column: 3, scope: !1287)
!1312 = !DILocation(line: 512, column: 15, scope: !1287)
!1313 = distinct !{!1313, !1311, !1314, !1183}
!1314 = !DILocation(line: 609, column: 5, scope: !1287)
!1315 = !DILocation(line: 519, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 519, column: 15)
!1317 = !DILocation(line: 519, column: 15, scope: !1300)
!1318 = !DILocation(line: 521, column: 15, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 520, column: 13)
!1320 = !DILocation(line: 524, column: 13, scope: !1319)
!1321 = !DILocation(line: 527, column: 17, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 527, column: 15)
!1323 = !DILocation(line: 527, column: 15, scope: !1300)
!1324 = !DILocation(line: 529, column: 15, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 528, column: 13)
!1326 = !DILocation(line: 532, column: 13, scope: !1325)
!1327 = !DILocation(line: 535, column: 17, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 535, column: 15)
!1329 = !DILocation(line: 535, column: 15, scope: !1300)
!1330 = !DILocation(line: 537, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 536, column: 13)
!1332 = !DILocation(line: 540, column: 13, scope: !1331)
!1333 = !DILocation(line: 543, column: 46, scope: !1300)
!1334 = !DILocation(line: 544, column: 46, scope: !1300)
!1335 = !DILocation(line: 543, column: 34, scope: !1300)
!1336 = !DILocation(line: 543, column: 32, scope: !1300)
!1337 = !{!1338, !1338, i64 0}
!1338 = !{!"long", !1057, i64 0}
!1339 = !DILocation(line: 546, column: 11, scope: !1300)
!1340 = !DILocation(line: 548, column: 35, scope: !1300)
!1341 = !DILocation(line: 549, column: 35, scope: !1300)
!1342 = !DILocation(line: 548, column: 23, scope: !1300)
!1343 = !DILocation(line: 548, column: 21, scope: !1300)
!1344 = !DILocation(line: 550, column: 11, scope: !1300)
!1345 = !DILocation(line: 552, column: 25, scope: !1300)
!1346 = !DILocation(line: 553, column: 11, scope: !1300)
!1347 = !DILocation(line: 555, column: 36, scope: !1300)
!1348 = !DILocation(line: 556, column: 36, scope: !1300)
!1349 = !DILocation(line: 555, column: 24, scope: !1300)
!1350 = !DILocation(line: 555, column: 22, scope: !1300)
!1351 = !DILocation(line: 558, column: 11, scope: !1300)
!1352 = !DILocation(line: 560, column: 27, scope: !1300)
!1353 = !DILocation(line: 560, column: 25, scope: !1300)
!1354 = !DILocation(line: 561, column: 11, scope: !1300)
!1355 = !DILocation(line: 563, column: 38, scope: !1300)
!1356 = !DILocation(line: 564, column: 38, scope: !1300)
!1357 = !DILocation(line: 563, column: 26, scope: !1300)
!1358 = !DILocation(line: 563, column: 24, scope: !1300)
!1359 = !DILocation(line: 566, column: 11, scope: !1300)
!1360 = !DILocation(line: 568, column: 22, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 568, column: 15)
!1362 = !DILocation(line: 0, scope: !1148, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 568, column: 15, scope: !1361)
!1364 = !DILocation(line: 1361, column: 11, scope: !1148, inlinedAt: !1363)
!1365 = !DILocation(line: 1361, column: 10, scope: !1148, inlinedAt: !1363)
!1366 = !DILocation(line: 568, column: 15, scope: !1300)
!1367 = !DILocation(line: 569, column: 27, scope: !1361)
!1368 = !DILocation(line: 569, column: 13, scope: !1361)
!1369 = !DILocation(line: 0, scope: !1148, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 570, column: 20, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 570, column: 20)
!1372 = !DILocation(line: 1361, column: 11, scope: !1148, inlinedAt: !1370)
!1373 = !DILocation(line: 1361, column: 10, scope: !1148, inlinedAt: !1370)
!1374 = !DILocation(line: 570, column: 20, scope: !1361)
!1375 = !DILocation(line: 571, column: 27, scope: !1371)
!1376 = !DILocation(line: 571, column: 13, scope: !1371)
!1377 = !DILocation(line: 0, scope: !1148, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 572, column: 20, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 572, column: 20)
!1380 = !DILocation(line: 1361, column: 11, scope: !1148, inlinedAt: !1378)
!1381 = !DILocation(line: 1361, column: 10, scope: !1148, inlinedAt: !1378)
!1382 = !DILocation(line: 572, column: 20, scope: !1371)
!1383 = !DILocation(line: 573, column: 27, scope: !1379)
!1384 = !DILocation(line: 573, column: 13, scope: !1379)
!1385 = !DILocation(line: 576, column: 15, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 575, column: 13)
!1387 = !DILocation(line: 582, column: 25, scope: !1300)
!1388 = !DILocation(line: 582, column: 17, scope: !1300)
!1389 = !DILocation(line: 583, column: 19, scope: !1299)
!1390 = !DILocation(line: 583, column: 17, scope: !1299)
!1391 = !DILocation(line: 583, column: 15, scope: !1300)
!1392 = !DILocation(line: 585, column: 31, scope: !1298)
!1393 = !DILocation(line: 0, scope: !1298)
!1394 = !DILocation(line: 588, column: 24, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 588, column: 15)
!1396 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 588, column: 15)
!1397 = !DILocation(line: 588, column: 15, scope: !1396)
!1398 = !DILocation(line: 586, column: 35, scope: !1298)
!1399 = !DILocalVariable(name: "p", arg: 1, scope: !1400, file: !138, line: 230, type: !183)
!1400 = distinct !DISubprogram(name: "mcel_scan", scope: !138, file: !138, line: 230, type: !1401, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1409)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1403, !183, !183}
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !138, line: 143, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 138, size: 64, elements: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !1404, file: !138, line: 140, baseType: !718, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1404, file: !138, line: 141, baseType: !185, size: 8, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1404, file: !138, line: 142, baseType: !185, size: 8, offset: 40)
!1409 = !{!1399, !1410, !1411, !1412, !1423, !1424}
!1410 = !DILocalVariable(name: "lim", arg: 2, scope: !1400, file: !138, line: 230, type: !183)
!1411 = !DILocalVariable(name: "c", scope: !1400, file: !138, line: 235, type: !4)
!1412 = !DILocalVariable(name: "mbs", scope: !1400, file: !138, line: 244, type: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !724, line: 6, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !726, line: 21, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 13, size: 64, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1415, file: !726, line: 15, baseType: !118, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1415, file: !726, line: 20, baseType: !1419, size: 32, offset: 32)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !726, line: 16, size: 32, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1419, file: !726, line: 18, baseType: !110, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1419, file: !726, line: 19, baseType: !407, size: 32)
!1423 = !DILocalVariable(name: "ch", scope: !1400, file: !138, line: 267, type: !718)
!1424 = !DILocalVariable(name: "len", scope: !1400, file: !138, line: 268, type: !180)
!1425 = !DILocation(line: 0, scope: !1400, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 589, column: 24, scope: !1395)
!1427 = !DILocation(line: 235, column: 12, scope: !1400, inlinedAt: !1426)
!1428 = !DILocalVariable(name: "c", arg: 1, scope: !1429, file: !138, line: 215, type: !4)
!1429 = distinct !DISubprogram(name: "mcel_isbasic", scope: !138, file: !138, line: 215, type: !1430, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!186, !4}
!1432 = !{!1428}
!1433 = !DILocation(line: 0, scope: !1429, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 236, column: 7, scope: !1435, inlinedAt: !1426)
!1435 = distinct !DILexicalBlock(scope: !1400, file: !138, line: 236, column: 7)
!1436 = !DILocation(line: 217, column: 10, scope: !1429, inlinedAt: !1434)
!1437 = !DILocation(line: 236, column: 7, scope: !1400, inlinedAt: !1426)
!1438 = !DILocation(line: 244, column: 3, scope: !1400, inlinedAt: !1426)
!1439 = !DILocation(line: 244, column: 13, scope: !1400, inlinedAt: !1426)
!1440 = !DILocation(line: 244, column: 30, scope: !1400, inlinedAt: !1426)
!1441 = !{!1442, !1137, i64 0}
!1442 = !{!"", !1137, i64 0, !1057, i64 4}
!1443 = !DILocation(line: 267, column: 3, scope: !1400, inlinedAt: !1426)
!1444 = !DILocation(line: 268, column: 16, scope: !1400, inlinedAt: !1426)
!1445 = !DILocation(line: 274, column: 7, scope: !1446, inlinedAt: !1426)
!1446 = distinct !DILexicalBlock(scope: !1400, file: !138, line: 274, column: 7)
!1447 = !DILocation(line: 274, column: 7, scope: !1400, inlinedAt: !1426)
!1448 = !{!"branch_weights", i32 1, i32 2000}
!1449 = !DILocation(line: 280, column: 1, scope: !1400, inlinedAt: !1426)
!1450 = !DILocation(line: 589, column: 21, scope: !1395)
!1451 = !DILocation(line: 268, column: 38, scope: !1400, inlinedAt: !1426)
!1452 = !DILocation(line: 590, column: 19, scope: !1298)
!1453 = !DILocation(line: 591, column: 34, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 590, column: 19)
!1455 = !DILocation(line: 591, column: 47, scope: !1454)
!1456 = !DILocalVariable(name: "__dest", arg: 1, scope: !1457, file: !1458, line: 42, type: !1461)
!1457 = distinct !DISubprogram(name: "mempcpy", scope: !1458, file: !1458, line: 42, type: !1459, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1462)
!1458 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!178, !1461, !1284, !180}
!1461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1462 = !{!1456, !1463, !1464}
!1463 = !DILocalVariable(name: "__src", arg: 2, scope: !1457, file: !1458, line: 42, type: !1284)
!1464 = !DILocalVariable(name: "__len", arg: 3, scope: !1457, file: !1458, line: 42, type: !180)
!1465 = !DILocation(line: 0, scope: !1457, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 591, column: 25, scope: !1454)
!1467 = !DILocation(line: 45, column: 10, scope: !1457, inlinedAt: !1466)
!1468 = !DILocalVariable(name: "__dest", arg: 1, scope: !1469, file: !1458, line: 26, type: !1461)
!1469 = distinct !DISubprogram(name: "memcpy", scope: !1458, file: !1458, line: 26, type: !1459, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1470)
!1470 = !{!1468, !1471, !1472}
!1471 = !DILocalVariable(name: "__src", arg: 2, scope: !1469, file: !1458, line: 26, type: !1284)
!1472 = !DILocalVariable(name: "__len", arg: 3, scope: !1469, file: !1458, line: 26, type: !180)
!1473 = !DILocation(line: 0, scope: !1469, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 591, column: 17, scope: !1454)
!1475 = !DILocation(line: 29, column: 10, scope: !1469, inlinedAt: !1474)
!1476 = !DILocation(line: 591, column: 17, scope: !1454)
!1477 = !DILocation(line: 593, column: 31, scope: !1454)
!1478 = !DILocation(line: 593, column: 29, scope: !1454)
!1479 = !DILocation(line: 597, column: 23, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 597, column: 19)
!1481 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 596, column: 13)
!1482 = !DILocation(line: 0, scope: !1480)
!1483 = !DILocation(line: 597, column: 19, scope: !1481)
!1484 = !DILocation(line: 598, column: 32, scope: !1480)
!1485 = !DILocation(line: 598, column: 18, scope: !1480)
!1486 = !DILocation(line: 598, column: 30, scope: !1480)
!1487 = !DILocation(line: 598, column: 17, scope: !1480)
!1488 = !DILocation(line: 600, column: 29, scope: !1480)
!1489 = !DILocation(line: 603, column: 9, scope: !1300)
!1490 = !DILocation(line: 604, column: 9, scope: !1300)
!1491 = !DILocation(line: 611, column: 8, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 611, column: 7)
!1493 = !DILocation(line: 611, column: 7, scope: !1287)
!1494 = !DILocation(line: 612, column: 5, scope: !1492)
!1495 = !DILocation(line: 615, column: 35, scope: !1287)
!1496 = !DILocation(line: 615, column: 27, scope: !1287)
!1497 = !DILocation(line: 615, column: 19, scope: !1287)
!1498 = !DILocation(line: 617, column: 24, scope: !1287)
!1499 = !DILocation(line: 617, column: 18, scope: !1287)
!1500 = !DILocation(line: 618, column: 40, scope: !1287)
!1501 = !DILocation(line: 618, column: 16, scope: !1287)
!1502 = !DILocation(line: 618, column: 14, scope: !1287)
!1503 = !DILocation(line: 619, column: 39, scope: !1287)
!1504 = !DILocalVariable(name: "__dest", arg: 1, scope: !1505, file: !1458, line: 84, type: !1508)
!1505 = distinct !DISubprogram(name: "stpcpy", scope: !1458, file: !1458, line: 84, type: !1506, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1509)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!177, !1508, !1126}
!1508 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!1509 = !{!1504, !1510}
!1510 = !DILocalVariable(name: "__src", arg: 2, scope: !1505, file: !1458, line: 84, type: !1126)
!1511 = !DILocation(line: 0, scope: !1505, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 619, column: 19, scope: !1287)
!1513 = !DILocation(line: 86, column: 10, scope: !1505, inlinedAt: !1512)
!1514 = !DILocation(line: 0, scope: !1505, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 619, column: 11, scope: !1287)
!1516 = !DILocation(line: 86, column: 10, scope: !1505, inlinedAt: !1515)
!1517 = !DILocation(line: 0, scope: !1505, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 619, column: 3, scope: !1287)
!1519 = !DILocation(line: 86, column: 10, scope: !1505, inlinedAt: !1518)
!1520 = !DILocation(line: 621, column: 22, scope: !1287)
!1521 = !DILocation(line: 621, column: 16, scope: !1287)
!1522 = !DILocation(line: 622, column: 14, scope: !1287)
!1523 = !DILocation(line: 622, column: 25, scope: !1287)
!1524 = !DILocation(line: 622, column: 12, scope: !1287)
!1525 = !DILocation(line: 624, column: 18, scope: !1287)
!1526 = !DILocation(line: 625, column: 25, scope: !1287)
!1527 = !DILocation(line: 625, column: 14, scope: !1287)
!1528 = !DILocation(line: 628, column: 3, scope: !1287)
!1529 = !DILocation(line: 631, column: 17, scope: !1287)
!1530 = !DILocation(line: 631, column: 9, scope: !1287)
!1531 = !DILocation(line: 632, column: 32, scope: !1287)
!1532 = !DILocation(line: 632, column: 45, scope: !1287)
!1533 = !DILocation(line: 632, column: 51, scope: !1287)
!1534 = !DILocation(line: 632, column: 23, scope: !1287)
!1535 = !DILocation(line: 632, column: 21, scope: !1287)
!1536 = !DILocation(line: 633, column: 35, scope: !1287)
!1537 = !DILocation(line: 633, column: 48, scope: !1287)
!1538 = !DILocalVariable(name: "__dest", arg: 1, scope: !1539, file: !1458, line: 57, type: !178)
!1539 = distinct !DISubprogram(name: "memset", scope: !1458, file: !1458, line: 57, type: !1540, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!178, !178, !118, !180}
!1542 = !{!1538, !1543, !1544}
!1543 = !DILocalVariable(name: "__ch", arg: 2, scope: !1539, file: !1458, line: 57, type: !118)
!1544 = !DILocalVariable(name: "__len", arg: 3, scope: !1539, file: !1458, line: 57, type: !180)
!1545 = !DILocation(line: 0, scope: !1539, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 633, column: 3, scope: !1287)
!1547 = !DILocation(line: 59, column: 10, scope: !1539, inlinedAt: !1546)
!1548 = !DILocation(line: 634, column: 3, scope: !1287)
!1549 = !DILocation(line: 634, column: 41, scope: !1287)
!1550 = !DILocation(line: 636, column: 13, scope: !1287)
!1551 = !DILocation(line: 636, column: 11, scope: !1287)
!1552 = !DILocation(line: 637, column: 18, scope: !1287)
!1553 = !DILocation(line: 637, column: 16, scope: !1287)
!1554 = !DILocation(line: 638, column: 17, scope: !1287)
!1555 = !DILocation(line: 642, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 642, column: 7)
!1557 = !DILocation(line: 642, column: 14, scope: !1556)
!1558 = !DILocation(line: 642, column: 7, scope: !1287)
!1559 = !DILocation(line: 645, column: 19, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 645, column: 5)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 645, column: 5)
!1562 = !DILocation(line: 645, column: 5, scope: !1561)
!1563 = !DILocation(line: 643, column: 10, scope: !1556)
!1564 = !DILocation(line: 643, column: 8, scope: !1556)
!1565 = !DILocation(line: 643, column: 5, scope: !1556)
!1566 = !DILocation(line: 646, column: 22, scope: !1560)
!1567 = !DILocation(line: 646, column: 13, scope: !1560)
!1568 = !DILocation(line: 646, column: 10, scope: !1560)
!1569 = !DILocation(line: 645, column: 33, scope: !1560)
!1570 = distinct !{!1570, !1562, !1571, !1183}
!1571 = !DILocation(line: 646, column: 34, scope: !1561)
!1572 = !DILocation(line: 648, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 648, column: 7)
!1574 = !DILocation(line: 648, column: 23, scope: !1573)
!1575 = !DILocation(line: 648, column: 34, scope: !1573)
!1576 = !DILocation(line: 648, column: 26, scope: !1573)
!1577 = !DILocation(line: 648, column: 41, scope: !1573)
!1578 = !DILocation(line: 648, column: 7, scope: !1287)
!1579 = !DILocation(line: 649, column: 5, scope: !1573)
!1580 = !DILocation(line: 651, column: 10, scope: !1287)
!1581 = !DILocation(line: 651, column: 3, scope: !1287)
!1582 = !DISubprogram(name: "bindtextdomain", scope: !1118, file: !1118, line: 86, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!177, !183, !183}
!1585 = !DISubprogram(name: "textdomain", scope: !1118, file: !1118, line: 82, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1586 = !DISubprogram(name: "atexit", scope: !1261, file: !1261, line: 602, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!118, !694}
!1589 = !DISubprogram(name: "getopt_long", scope: !616, file: !616, line: 66, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!118, !118, !1592, !183, !1594, !621}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!1595 = distinct !DISubprogram(name: "build_type_arg", scope: !2, file: !2, line: 264, type: !1596, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1599)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!186, !1598, !592, !177}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1599 = !{!1600, !1601, !1602, !1603, !1604}
!1600 = !DILocalVariable(name: "typep", arg: 1, scope: !1595, file: !2, line: 264, type: !1598)
!1601 = !DILocalVariable(name: "regexp", arg: 2, scope: !1595, file: !2, line: 265, type: !592)
!1602 = !DILocalVariable(name: "fastmap", arg: 3, scope: !1595, file: !2, line: 265, type: !177)
!1603 = !DILocalVariable(name: "errmsg", scope: !1595, file: !2, line: 267, type: !183)
!1604 = !DILocalVariable(name: "rval", scope: !1595, file: !2, line: 268, type: !186)
!1605 = !DILocation(line: 0, scope: !1595)
!1606 = !DILocation(line: 270, column: 12, scope: !1595)
!1607 = !DILocation(line: 270, column: 11, scope: !1595)
!1608 = !DILocation(line: 270, column: 3, scope: !1595)
!1609 = !DILocation(line: 275, column: 14, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 271, column: 5)
!1611 = !DILocation(line: 276, column: 7, scope: !1610)
!1612 = !DILocation(line: 278, column: 22, scope: !1610)
!1613 = !DILocation(line: 278, column: 14, scope: !1610)
!1614 = !DILocation(line: 281, column: 15, scope: !1610)
!1615 = !DILocation(line: 280, column: 25, scope: !1610)
!1616 = !DILocation(line: 281, column: 23, scope: !1610)
!1617 = !{!1618, !1056, i64 32}
!1618 = !{!"re_pattern_buffer", !1056, i64 0, !1338, i64 8, !1338, i64 16, !1338, i64 24, !1056, i64 32, !1056, i64 40, !1338, i64 48, !1137, i64 56, !1137, i64 56, !1137, i64 56, !1137, i64 56, !1137, i64 56, !1137, i64 56, !1137, i64 56}
!1619 = !DILocation(line: 282, column: 15, scope: !1610)
!1620 = !DILocation(line: 282, column: 25, scope: !1610)
!1621 = !{!1618, !1056, i64 40}
!1622 = !DILocation(line: 283, column: 25, scope: !1610)
!1623 = !DILocation(line: 285, column: 36, scope: !1610)
!1624 = !DILocation(line: 285, column: 44, scope: !1610)
!1625 = !DILocation(line: 285, column: 16, scope: !1610)
!1626 = !DILocation(line: 286, column: 11, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 286, column: 11)
!1628 = !DILocation(line: 286, column: 11, scope: !1610)
!1629 = !DILocation(line: 287, column: 9, scope: !1627)
!1630 = !DILocation(line: 293, column: 3, scope: !1595)
!1631 = !DISubprogram(name: "strlen", scope: !1257, file: !1257, line: 407, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!182, !183}
!1634 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1261, file: !1261, line: 98, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!180}
!1637 = !DISubprogram(name: "mbrtoc32", scope: !719, file: !719, line: 57, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!180, !1640, !1126, !180, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1644 = distinct !DISubprogram(name: "nl_file", scope: !2, file: !2, line: 458, type: !1645, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!186, !183}
!1647 = !{!1648, !1649, !1650}
!1648 = !DILocalVariable(name: "file", arg: 1, scope: !1644, file: !2, line: 458, type: !183)
!1649 = !DILocalVariable(name: "stream", scope: !1644, file: !2, line: 460, type: !342)
!1650 = !DILocalVariable(name: "err", scope: !1644, file: !2, line: 482, type: !118)
!1651 = !DILocation(line: 0, scope: !1644)
!1652 = !DILocation(line: 0, scope: !1148, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 462, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 462, column: 7)
!1655 = !DILocation(line: 1361, column: 11, scope: !1148, inlinedAt: !1653)
!1656 = !DILocation(line: 1361, column: 10, scope: !1148, inlinedAt: !1653)
!1657 = !DILocation(line: 462, column: 7, scope: !1644)
!1658 = !DILocation(line: 464, column: 23, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 463, column: 5)
!1660 = !DILocation(line: 465, column: 16, scope: !1659)
!1661 = !DILocation(line: 467, column: 5, scope: !1659)
!1662 = !DILocation(line: 470, column: 16, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 469, column: 5)
!1664 = !DILocation(line: 471, column: 18, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 471, column: 11)
!1666 = !DILocation(line: 471, column: 11, scope: !1663)
!1667 = !DILocation(line: 473, column: 11, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 472, column: 9)
!1669 = !DILocation(line: 474, column: 11, scope: !1668)
!1670 = !DILocation(line: 0, scope: !1654)
!1671 = !DILocation(line: 478, column: 3, scope: !1644)
!1672 = !DILocalVariable(name: "fp", arg: 1, scope: !1673, file: !2, line: 429, type: !342)
!1673 = distinct !DISubprogram(name: "process_file", scope: !2, file: !2, line: 429, type: !1674, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !342}
!1676 = !{!1672}
!1677 = !DILocation(line: 0, scope: !1673, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 480, column: 3, scope: !1644)
!1679 = !DILocation(line: 431, column: 3, scope: !1673, inlinedAt: !1678)
!1680 = !DILocation(line: 431, column: 10, scope: !1673, inlinedAt: !1678)
!1681 = !DILocation(line: 409, column: 25, scope: !1682, inlinedAt: !1687)
!1682 = distinct !DISubprogram(name: "check_section", scope: !2, file: !2, line: 407, type: !1683, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!170}
!1685 = !{!1686}
!1686 = !DILocalVariable(name: "len", scope: !1682, file: !2, line: 409, type: !180)
!1687 = distinct !DILocation(line: 433, column: 15, scope: !1688, inlinedAt: !1678)
!1688 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 432, column: 5)
!1689 = !{!1690, !1338, i64 8}
!1690 = !{!"linebuffer", !1338, i64 0, !1338, i64 8, !1056, i64 16}
!1691 = !DILocation(line: 409, column: 32, scope: !1682, inlinedAt: !1687)
!1692 = !DILocation(line: 0, scope: !1682, inlinedAt: !1687)
!1693 = !DILocation(line: 411, column: 13, scope: !1694, inlinedAt: !1687)
!1694 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 411, column: 7)
!1695 = !DILocation(line: 411, column: 11, scope: !1694, inlinedAt: !1687)
!1696 = !DILocation(line: 411, column: 29, scope: !1694, inlinedAt: !1687)
!1697 = !DILocation(line: 412, column: 27, scope: !1694, inlinedAt: !1687)
!1698 = !{!1690, !1056, i64 16}
!1699 = !DILocation(line: 412, column: 35, scope: !1694, inlinedAt: !1687)
!1700 = !DILocalVariable(name: "__s1", arg: 1, scope: !1701, file: !1149, line: 974, type: !1285)
!1701 = distinct !DISubprogram(name: "memeq", scope: !1149, file: !1149, line: 974, type: !1702, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!186, !1285, !1285, !180}
!1704 = !{!1700, !1705, !1706}
!1705 = !DILocalVariable(name: "__s2", arg: 2, scope: !1701, file: !1149, line: 974, type: !1285)
!1706 = !DILocalVariable(name: "__n", arg: 3, scope: !1701, file: !1149, line: 974, type: !180)
!1707 = !DILocation(line: 0, scope: !1701, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 412, column: 11, scope: !1694, inlinedAt: !1687)
!1709 = !DILocation(line: 976, column: 11, scope: !1701, inlinedAt: !1708)
!1710 = !DILocation(line: 976, column: 10, scope: !1701, inlinedAt: !1708)
!1711 = !DILocation(line: 411, column: 7, scope: !1682, inlinedAt: !1687)
!1712 = !DILocation(line: 414, column: 14, scope: !1713, inlinedAt: !1687)
!1713 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 414, column: 7)
!1714 = !DILocation(line: 414, column: 11, scope: !1713, inlinedAt: !1687)
!1715 = !DILocation(line: 415, column: 7, scope: !1713, inlinedAt: !1687)
!1716 = !DILocation(line: 415, column: 34, scope: !1713, inlinedAt: !1687)
!1717 = !DILocation(line: 0, scope: !1701, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 415, column: 10, scope: !1713, inlinedAt: !1687)
!1719 = !DILocation(line: 976, column: 11, scope: !1701, inlinedAt: !1718)
!1720 = !DILocation(line: 976, column: 10, scope: !1701, inlinedAt: !1718)
!1721 = !DILocation(line: 414, column: 7, scope: !1682, inlinedAt: !1687)
!1722 = !DILocation(line: 417, column: 14, scope: !1723, inlinedAt: !1687)
!1723 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 417, column: 7)
!1724 = !DILocation(line: 417, column: 11, scope: !1723, inlinedAt: !1687)
!1725 = !DILocation(line: 418, column: 7, scope: !1723, inlinedAt: !1687)
!1726 = !DILocation(line: 418, column: 34, scope: !1723, inlinedAt: !1687)
!1727 = !DILocation(line: 0, scope: !1701, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 418, column: 10, scope: !1723, inlinedAt: !1687)
!1729 = !DILocation(line: 976, column: 11, scope: !1701, inlinedAt: !1728)
!1730 = !DILocation(line: 976, column: 10, scope: !1701, inlinedAt: !1728)
!1731 = !DILocation(line: 417, column: 7, scope: !1682, inlinedAt: !1687)
!1732 = !DILocation(line: 420, column: 11, scope: !1733, inlinedAt: !1687)
!1733 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 420, column: 7)
!1734 = !DILocation(line: 421, column: 7, scope: !1733, inlinedAt: !1687)
!1735 = !DILocation(line: 421, column: 34, scope: !1733, inlinedAt: !1687)
!1736 = !DILocation(line: 0, scope: !1701, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 421, column: 10, scope: !1733, inlinedAt: !1687)
!1738 = !DILocation(line: 976, column: 11, scope: !1701, inlinedAt: !1737)
!1739 = !DILocation(line: 976, column: 10, scope: !1701, inlinedAt: !1737)
!1740 = !DILocation(line: 420, column: 7, scope: !1682, inlinedAt: !1687)
!1741 = !DILocation(line: 325, column: 18, scope: !1742, inlinedAt: !1743)
!1742 = distinct !DISubprogram(name: "proc_header", scope: !2, file: !2, line: 323, type: !600, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1064)
!1743 = distinct !DILocation(line: 436, column: 11, scope: !1744, inlinedAt: !1678)
!1744 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 434, column: 9)
!1745 = !DILocation(line: 325, column: 16, scope: !1742, inlinedAt: !1743)
!1746 = !DILocation(line: 326, column: 17, scope: !1742, inlinedAt: !1743)
!1747 = !DILocation(line: 313, column: 7, scope: !1748, inlinedAt: !1750)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 313, column: 7)
!1749 = distinct !DISubprogram(name: "reset_lineno", scope: !2, file: !2, line: 311, type: !600, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1064)
!1750 = distinct !DILocation(line: 327, column: 3, scope: !1742, inlinedAt: !1743)
!1751 = !DILocation(line: 313, column: 7, scope: !1749, inlinedAt: !1750)
!1752 = !DILocation(line: 315, column: 17, scope: !1753, inlinedAt: !1750)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 314, column: 5)
!1754 = !DILocation(line: 315, column: 15, scope: !1753, inlinedAt: !1750)
!1755 = !DILocation(line: 316, column: 24, scope: !1753, inlinedAt: !1750)
!1756 = !DILocation(line: 317, column: 5, scope: !1753, inlinedAt: !1750)
!1757 = !DILocalVariable(name: "__c", arg: 1, scope: !1758, file: !1759, line: 108, type: !118)
!1758 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1759, file: !1759, line: 108, type: !1760, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1762)
!1759 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!118, !118}
!1762 = !{!1757}
!1763 = !DILocation(line: 0, scope: !1758, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 328, column: 3, scope: !1742, inlinedAt: !1743)
!1765 = !DILocation(line: 110, column: 10, scope: !1758, inlinedAt: !1764)
!1766 = !{!1767, !1056, i64 40}
!1767 = !{!"_IO_FILE", !1137, i64 0, !1056, i64 8, !1056, i64 16, !1056, i64 24, !1056, i64 32, !1056, i64 40, !1056, i64 48, !1056, i64 56, !1056, i64 64, !1056, i64 72, !1056, i64 80, !1056, i64 88, !1056, i64 96, !1056, i64 104, !1137, i64 112, !1137, i64 116, !1338, i64 120, !1178, i64 128, !1057, i64 130, !1057, i64 131, !1056, i64 136, !1338, i64 144, !1056, i64 152, !1056, i64 160, !1056, i64 168, !1056, i64 176, !1338, i64 184, !1137, i64 192, !1057, i64 196}
!1768 = !{!1767, !1056, i64 48}
!1769 = !{!"branch_weights", i32 2000, i32 1}
!1770 = !DILocation(line: 336, column: 18, scope: !1771, inlinedAt: !1772)
!1771 = distinct !DISubprogram(name: "proc_body", scope: !2, file: !2, line: 334, type: !600, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1064)
!1772 = distinct !DILocation(line: 439, column: 11, scope: !1744, inlinedAt: !1678)
!1773 = !DILocation(line: 336, column: 16, scope: !1771, inlinedAt: !1772)
!1774 = !DILocation(line: 337, column: 17, scope: !1771, inlinedAt: !1772)
!1775 = !DILocation(line: 313, column: 7, scope: !1748, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 338, column: 3, scope: !1771, inlinedAt: !1772)
!1777 = !DILocation(line: 313, column: 7, scope: !1749, inlinedAt: !1776)
!1778 = !DILocation(line: 315, column: 17, scope: !1753, inlinedAt: !1776)
!1779 = !DILocation(line: 315, column: 15, scope: !1753, inlinedAt: !1776)
!1780 = !DILocation(line: 316, column: 24, scope: !1753, inlinedAt: !1776)
!1781 = !DILocation(line: 317, column: 5, scope: !1753, inlinedAt: !1776)
!1782 = !DILocation(line: 0, scope: !1758, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 339, column: 3, scope: !1771, inlinedAt: !1772)
!1784 = !DILocation(line: 110, column: 10, scope: !1758, inlinedAt: !1783)
!1785 = !DILocation(line: 347, column: 18, scope: !1786, inlinedAt: !1787)
!1786 = distinct !DISubprogram(name: "proc_footer", scope: !2, file: !2, line: 345, type: !600, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1064)
!1787 = distinct !DILocation(line: 442, column: 11, scope: !1744, inlinedAt: !1678)
!1788 = !DILocation(line: 347, column: 16, scope: !1786, inlinedAt: !1787)
!1789 = !DILocation(line: 348, column: 17, scope: !1786, inlinedAt: !1787)
!1790 = !DILocation(line: 313, column: 7, scope: !1748, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 349, column: 3, scope: !1786, inlinedAt: !1787)
!1792 = !DILocation(line: 313, column: 7, scope: !1749, inlinedAt: !1791)
!1793 = !DILocation(line: 315, column: 17, scope: !1753, inlinedAt: !1791)
!1794 = !DILocation(line: 315, column: 15, scope: !1753, inlinedAt: !1791)
!1795 = !DILocation(line: 316, column: 24, scope: !1753, inlinedAt: !1791)
!1796 = !DILocation(line: 317, column: 5, scope: !1753, inlinedAt: !1791)
!1797 = !DILocation(line: 0, scope: !1758, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 350, column: 3, scope: !1786, inlinedAt: !1787)
!1799 = !DILocation(line: 110, column: 10, scope: !1758, inlinedAt: !1798)
!1800 = !DILocation(line: 360, column: 12, scope: !599, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 445, column: 11, scope: !1744, inlinedAt: !1678)
!1802 = !DILocation(line: 360, column: 11, scope: !599, inlinedAt: !1801)
!1803 = !DILocation(line: 360, column: 3, scope: !599, inlinedAt: !1801)
!1804 = !DILocation(line: 363, column: 11, scope: !1805, inlinedAt: !1801)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 363, column: 11)
!1806 = distinct !DILexicalBlock(scope: !599, file: !2, line: 361, column: 5)
!1807 = !DILocation(line: 363, column: 22, scope: !1805, inlinedAt: !1801)
!1808 = !DILocation(line: 363, column: 11, scope: !1806, inlinedAt: !1801)
!1809 = !DILocation(line: 365, column: 17, scope: !1810, inlinedAt: !1801)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 365, column: 15)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 364, column: 9)
!1812 = !DILocation(line: 365, column: 35, scope: !1810, inlinedAt: !1801)
!1813 = !DILocation(line: 365, column: 38, scope: !1810, inlinedAt: !1801)
!1814 = !DILocation(line: 365, column: 52, scope: !1810, inlinedAt: !1801)
!1815 = !DILocation(line: 365, column: 15, scope: !1811, inlinedAt: !1801)
!1816 = !DILocation(line: 301, column: 7, scope: !1817, inlinedAt: !1819)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 301, column: 7)
!1818 = distinct !DISubprogram(name: "print_lineno", scope: !2, file: !2, line: 299, type: !600, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1064)
!1819 = distinct !DILocation(line: 367, column: 15, scope: !1820, inlinedAt: !1801)
!1820 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 366, column: 13)
!1821 = !DILocation(line: 301, column: 7, scope: !1818, inlinedAt: !1819)
!1822 = !DILocation(line: 302, column: 5, scope: !1817, inlinedAt: !1819)
!1823 = !DILocation(line: 304, column: 3, scope: !1818, inlinedAt: !1819)
!1824 = !DILocation(line: 306, column: 7, scope: !1825, inlinedAt: !1819)
!1825 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 306, column: 7)
!1826 = !DILocation(line: 306, column: 7, scope: !1818, inlinedAt: !1819)
!1827 = !DILocation(line: 307, column: 22, scope: !1825, inlinedAt: !1819)
!1828 = !DILocation(line: 307, column: 5, scope: !1825, inlinedAt: !1819)
!1829 = !DILocation(line: 368, column: 27, scope: !1820, inlinedAt: !1801)
!1830 = !DILocation(line: 369, column: 13, scope: !1820, inlinedAt: !1801)
!1831 = !DILocation(line: 371, column: 13, scope: !1810, inlinedAt: !1801)
!1832 = !DILocation(line: 301, column: 7, scope: !1817, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 374, column: 9, scope: !1805, inlinedAt: !1801)
!1834 = !DILocation(line: 301, column: 7, scope: !1818, inlinedAt: !1833)
!1835 = !DILocation(line: 302, column: 5, scope: !1817, inlinedAt: !1833)
!1836 = !DILocation(line: 304, column: 3, scope: !1818, inlinedAt: !1833)
!1837 = !DILocation(line: 306, column: 7, scope: !1825, inlinedAt: !1833)
!1838 = !DILocation(line: 306, column: 7, scope: !1818, inlinedAt: !1833)
!1839 = !DILocation(line: 307, column: 22, scope: !1825, inlinedAt: !1833)
!1840 = !DILocation(line: 307, column: 5, scope: !1825, inlinedAt: !1833)
!1841 = !DILocation(line: 377, column: 13, scope: !1842, inlinedAt: !1801)
!1842 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 377, column: 11)
!1843 = !DILocation(line: 377, column: 11, scope: !1806, inlinedAt: !1801)
!1844 = !DILocation(line: 301, column: 7, scope: !1817, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 378, column: 9, scope: !1842, inlinedAt: !1801)
!1846 = !DILocation(line: 301, column: 7, scope: !1818, inlinedAt: !1845)
!1847 = !DILocation(line: 302, column: 5, scope: !1817, inlinedAt: !1845)
!1848 = !DILocation(line: 304, column: 3, scope: !1818, inlinedAt: !1845)
!1849 = !DILocation(line: 306, column: 7, scope: !1825, inlinedAt: !1845)
!1850 = !DILocation(line: 306, column: 7, scope: !1818, inlinedAt: !1845)
!1851 = !DILocation(line: 307, column: 22, scope: !1825, inlinedAt: !1845)
!1852 = !DILocation(line: 307, column: 5, scope: !1825, inlinedAt: !1845)
!1853 = !DILocation(line: 380, column: 9, scope: !1842, inlinedAt: !1801)
!1854 = !DILocation(line: 383, column: 7, scope: !1806, inlinedAt: !1801)
!1855 = !DILocation(line: 384, column: 7, scope: !1806, inlinedAt: !1801)
!1856 = !DILocation(line: 386, column: 26, scope: !1806, inlinedAt: !1801)
!1857 = !DILocation(line: 386, column: 50, scope: !1806, inlinedAt: !1801)
!1858 = !DILocation(line: 386, column: 58, scope: !1806, inlinedAt: !1801)
!1859 = !DILocation(line: 386, column: 15, scope: !1806, inlinedAt: !1801)
!1860 = !DILocation(line: 386, column: 7, scope: !1806, inlinedAt: !1801)
!1861 = !DILocation(line: 390, column: 11, scope: !1862, inlinedAt: !1801)
!1862 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 388, column: 9)
!1863 = !DILocation(line: 393, column: 11, scope: !1862, inlinedAt: !1801)
!1864 = !DILocation(line: 394, column: 11, scope: !1862, inlinedAt: !1801)
!1865 = !DILocation(line: 301, column: 7, scope: !1817, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 397, column: 11, scope: !1862, inlinedAt: !1801)
!1867 = !DILocation(line: 301, column: 7, scope: !1818, inlinedAt: !1866)
!1868 = !DILocation(line: 302, column: 5, scope: !1817, inlinedAt: !1866)
!1869 = !DILocation(line: 304, column: 3, scope: !1818, inlinedAt: !1866)
!1870 = !DILocation(line: 306, column: 7, scope: !1825, inlinedAt: !1866)
!1871 = !DILocation(line: 306, column: 7, scope: !1818, inlinedAt: !1866)
!1872 = !DILocation(line: 307, column: 22, scope: !1825, inlinedAt: !1866)
!1873 = !DILocation(line: 307, column: 5, scope: !1825, inlinedAt: !1866)
!1874 = !DILocation(line: 401, column: 3, scope: !599, inlinedAt: !1801)
!1875 = !DILocation(line: 449, column: 11, scope: !1876, inlinedAt: !1678)
!1876 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 449, column: 11)
!1877 = !DILocalVariable(name: "__stream", arg: 1, scope: !1878, file: !1759, line: 135, type: !342)
!1878 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1759, file: !1759, line: 135, type: !1879, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!118, !342}
!1881 = !{!1877}
!1882 = !DILocation(line: 0, scope: !1878, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 449, column: 11, scope: !1876, inlinedAt: !1678)
!1884 = !DILocation(line: 137, column: 10, scope: !1878, inlinedAt: !1883)
!1885 = !{!1767, !1137, i64 0}
!1886 = !DILocation(line: 449, column: 11, scope: !1688, inlinedAt: !1678)
!1887 = distinct !{!1887, !1679, !1888, !1183}
!1888 = !DILocation(line: 451, column: 5, scope: !1673, inlinedAt: !1678)
!1889 = !DILocation(line: 948, column: 21, scope: !1890, inlinedAt: !1893)
!1890 = distinct !DISubprogram(name: "write_error", scope: !117, file: !117, line: 946, type: !600, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1891)
!1891 = !{!1892}
!1892 = !DILocalVariable(name: "saved_errno", scope: !1890, file: !117, line: 948, type: !118)
!1893 = distinct !DILocation(line: 450, column: 9, scope: !1876, inlinedAt: !1678)
!1894 = !DILocation(line: 0, scope: !1890, inlinedAt: !1893)
!1895 = !DILocation(line: 949, column: 3, scope: !1890, inlinedAt: !1893)
!1896 = !DILocation(line: 950, column: 11, scope: !1890, inlinedAt: !1893)
!1897 = !DILocation(line: 950, column: 3, scope: !1890, inlinedAt: !1893)
!1898 = !DILocation(line: 951, column: 3, scope: !1890, inlinedAt: !1893)
!1899 = !DILocation(line: 952, column: 3, scope: !1890, inlinedAt: !1893)
!1900 = !DILocation(line: 482, column: 13, scope: !1644)
!1901 = !DILocation(line: 0, scope: !1878, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 483, column: 8, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 483, column: 7)
!1904 = !DILocation(line: 137, column: 10, scope: !1878, inlinedAt: !1902)
!1905 = !DILocation(line: 483, column: 8, scope: !1903)
!1906 = !DILocation(line: 483, column: 7, scope: !1644)
!1907 = !DILocation(line: 0, scope: !1148, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 485, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 485, column: 7)
!1910 = !DILocation(line: 1361, column: 11, scope: !1148, inlinedAt: !1908)
!1911 = !DILocation(line: 1361, column: 10, scope: !1148, inlinedAt: !1908)
!1912 = !DILocation(line: 485, column: 7, scope: !1644)
!1913 = !DILocation(line: 486, column: 5, scope: !1909)
!1914 = !DILocation(line: 487, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 487, column: 12)
!1916 = !DILocation(line: 487, column: 28, scope: !1915)
!1917 = !DILocation(line: 487, column: 33, scope: !1915)
!1918 = !DILocation(line: 488, column: 11, scope: !1915)
!1919 = !DILocation(line: 488, column: 5, scope: !1915)
!1920 = !DILocation(line: 489, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 489, column: 7)
!1922 = !DILocation(line: 489, column: 7, scope: !1644)
!1923 = !DILocation(line: 495, column: 1, scope: !1644)
!1924 = !DISubprogram(name: "__errno_location", scope: !1925, file: !1925, line: 37, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1925 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!621}
!1928 = !DISubprogram(name: "__overflow", scope: !1131, file: !1131, line: 886, type: !1929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!118, !342, !118}
!1931 = !DISubprogram(name: "re_search", scope: !249, file: !249, line: 564, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1934, !592, !183, !1934, !1934, !1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !249, line: 490, baseType: !118)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !249, line: 497, size: 192, elements: !1937)
!1937 = !{!1938, !1940, !1942}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !1936, file: !249, line: 499, baseType: !1939, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !249, line: 55, baseType: !110)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1936, file: !249, line: 500, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1936, file: !249, line: 501, baseType: !1941, size: 64, offset: 128)
!1943 = !DISubprogram(name: "fflush_unlocked", scope: !1131, file: !1131, line: 239, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1944 = !DISubprogram(name: "clearerr_unlocked", scope: !1131, file: !1131, line: 794, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1945 = !DISubprogram(name: "re_compile_pattern", scope: !249, file: !249, line: 548, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!183, !183, !180, !592}
!1948 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !636, file: !636, line: 50, type: !1087, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !635, retainedNodes: !1949)
!1949 = !{!1950}
!1950 = !DILocalVariable(name: "file", arg: 1, scope: !1948, file: !636, line: 50, type: !183)
!1951 = !DILocation(line: 0, scope: !1948)
!1952 = !DILocation(line: 52, column: 13, scope: !1948)
!1953 = !DILocation(line: 53, column: 1, scope: !1948)
!1954 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !636, file: !636, line: 87, type: !1955, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !635, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !186}
!1957 = !{!1958}
!1958 = !DILocalVariable(name: "ignore", arg: 1, scope: !1954, file: !636, line: 87, type: !186)
!1959 = !DILocation(line: 0, scope: !1954)
!1960 = !DILocation(line: 89, column: 16, scope: !1954)
!1961 = !{!1962, !1962, i64 0}
!1962 = !{!"_Bool", !1057, i64 0}
!1963 = !DILocation(line: 90, column: 1, scope: !1954)
!1964 = distinct !DISubprogram(name: "close_stdout", scope: !636, file: !636, line: 116, type: !600, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !635, retainedNodes: !1965)
!1965 = !{!1966}
!1966 = !DILocalVariable(name: "write_error", scope: !1967, file: !636, line: 121, type: !183)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !636, line: 120, column: 5)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !636, line: 118, column: 7)
!1969 = !DILocation(line: 118, column: 21, scope: !1968)
!1970 = !DILocation(line: 118, column: 7, scope: !1968)
!1971 = !DILocation(line: 118, column: 29, scope: !1968)
!1972 = !DILocation(line: 119, column: 7, scope: !1968)
!1973 = !DILocation(line: 119, column: 12, scope: !1968)
!1974 = !{i8 0, i8 2}
!1975 = !DILocation(line: 119, column: 25, scope: !1968)
!1976 = !DILocation(line: 119, column: 28, scope: !1968)
!1977 = !DILocation(line: 119, column: 34, scope: !1968)
!1978 = !DILocation(line: 118, column: 7, scope: !1964)
!1979 = !DILocation(line: 121, column: 33, scope: !1967)
!1980 = !DILocation(line: 0, scope: !1967)
!1981 = !DILocation(line: 122, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1967, file: !636, line: 122, column: 11)
!1983 = !DILocation(line: 0, scope: !1982)
!1984 = !DILocation(line: 122, column: 11, scope: !1967)
!1985 = !DILocation(line: 123, column: 9, scope: !1982)
!1986 = !DILocation(line: 126, column: 9, scope: !1982)
!1987 = !DILocation(line: 128, column: 14, scope: !1967)
!1988 = !DILocation(line: 128, column: 7, scope: !1967)
!1989 = !DILocation(line: 133, column: 42, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1964, file: !636, line: 133, column: 7)
!1991 = !DILocation(line: 133, column: 28, scope: !1990)
!1992 = !DILocation(line: 133, column: 50, scope: !1990)
!1993 = !DILocation(line: 133, column: 7, scope: !1964)
!1994 = !DILocation(line: 134, column: 12, scope: !1990)
!1995 = !DILocation(line: 134, column: 5, scope: !1990)
!1996 = !DILocation(line: 135, column: 1, scope: !1964)
!1997 = !DISubprogram(name: "_exit", scope: !1998, file: !1998, line: 624, type: !1045, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!1998 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1999 = distinct !DISubprogram(name: "verror", scope: !651, file: !651, line: 251, type: !2000, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !118, !118, !183, !661}
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DILocalVariable(name: "status", arg: 1, scope: !1999, file: !651, line: 251, type: !118)
!2004 = !DILocalVariable(name: "errnum", arg: 2, scope: !1999, file: !651, line: 251, type: !118)
!2005 = !DILocalVariable(name: "message", arg: 3, scope: !1999, file: !651, line: 251, type: !183)
!2006 = !DILocalVariable(name: "args", arg: 4, scope: !1999, file: !651, line: 251, type: !661)
!2007 = !DILocation(line: 0, scope: !1999)
!2008 = !DILocation(line: 261, column: 3, scope: !1999)
!2009 = !DILocation(line: 265, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1999, file: !651, line: 265, column: 7)
!2011 = !DILocation(line: 265, column: 7, scope: !1999)
!2012 = !DILocation(line: 266, column: 5, scope: !2010)
!2013 = !DILocation(line: 272, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !651, line: 268, column: 5)
!2015 = !DILocation(line: 276, column: 3, scope: !1999)
!2016 = !DILocation(line: 282, column: 1, scope: !1999)
!2017 = distinct !DISubprogram(name: "flush_stdout", scope: !651, file: !651, line: 163, type: !600, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "stdout_fd", scope: !2017, file: !651, line: 166, type: !118)
!2020 = !DILocation(line: 0, scope: !2017)
!2021 = !DILocalVariable(name: "fd", arg: 1, scope: !2022, file: !651, line: 145, type: !118)
!2022 = distinct !DISubprogram(name: "is_open", scope: !651, file: !651, line: 145, type: !1760, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2023)
!2023 = !{!2021}
!2024 = !DILocation(line: 0, scope: !2022, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 182, column: 25, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2017, file: !651, line: 182, column: 7)
!2027 = !DILocation(line: 157, column: 15, scope: !2022, inlinedAt: !2025)
!2028 = !DILocation(line: 157, column: 12, scope: !2022, inlinedAt: !2025)
!2029 = !DILocation(line: 182, column: 7, scope: !2017)
!2030 = !DILocation(line: 184, column: 5, scope: !2026)
!2031 = !DILocation(line: 185, column: 1, scope: !2017)
!2032 = distinct !DISubprogram(name: "error_tail", scope: !651, file: !651, line: 219, type: !2000, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2033)
!2033 = !{!2034, !2035, !2036, !2037}
!2034 = !DILocalVariable(name: "status", arg: 1, scope: !2032, file: !651, line: 219, type: !118)
!2035 = !DILocalVariable(name: "errnum", arg: 2, scope: !2032, file: !651, line: 219, type: !118)
!2036 = !DILocalVariable(name: "message", arg: 3, scope: !2032, file: !651, line: 219, type: !183)
!2037 = !DILocalVariable(name: "args", arg: 4, scope: !2032, file: !651, line: 219, type: !661)
!2038 = !DILocation(line: 0, scope: !2032)
!2039 = !DILocation(line: 229, column: 13, scope: !2032)
!2040 = !DILocalVariable(name: "__stream", arg: 1, scope: !2041, file: !1122, line: 132, type: !2044)
!2041 = distinct !DISubprogram(name: "vfprintf", scope: !1122, file: !1122, line: 132, type: !2042, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2079)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!118, !2044, !1126, !661}
!2044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2048)
!2048 = !{!2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2047, file: !346, line: 51, baseType: !118, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2047, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2047, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2047, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2047, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2047, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2047, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2047, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2047, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2047, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2047, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2047, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2047, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2047, file: !346, line: 70, baseType: !2063, size: 64, offset: 832)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2047, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2047, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2047, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2047, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2047, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2047, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2047, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2047, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2047, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2047, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2047, file: !346, line: 93, baseType: !2063, size: 64, offset: 1344)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2047, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2047, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2047, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2047, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2079 = !{!2040, !2080, !2081}
!2080 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2041, file: !1122, line: 133, type: !1126)
!2081 = !DILocalVariable(name: "__ap", arg: 3, scope: !2041, file: !1122, line: 133, type: !661)
!2082 = !DILocation(line: 0, scope: !2041, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 229, column: 3, scope: !2032)
!2084 = !DILocation(line: 135, column: 10, scope: !2041, inlinedAt: !2083)
!2085 = !DILocation(line: 232, column: 3, scope: !2032)
!2086 = !DILocation(line: 233, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2032, file: !651, line: 233, column: 7)
!2088 = !DILocation(line: 233, column: 7, scope: !2032)
!2089 = !DILocalVariable(name: "errnum", arg: 1, scope: !2090, file: !651, line: 188, type: !118)
!2090 = distinct !DISubprogram(name: "print_errno_message", scope: !651, file: !651, line: 188, type: !1045, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2091)
!2091 = !{!2089, !2092, !2093}
!2092 = !DILocalVariable(name: "s", scope: !2090, file: !651, line: 190, type: !183)
!2093 = !DILocalVariable(name: "errbuf", scope: !2090, file: !651, line: 193, type: !2094)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2095)
!2095 = !{!2096}
!2096 = !DISubrange(count: 1024)
!2097 = !DILocation(line: 0, scope: !2090, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 234, column: 5, scope: !2087)
!2099 = !DILocation(line: 193, column: 3, scope: !2090, inlinedAt: !2098)
!2100 = !DILocation(line: 193, column: 8, scope: !2090, inlinedAt: !2098)
!2101 = !DILocation(line: 195, column: 7, scope: !2090, inlinedAt: !2098)
!2102 = !DILocation(line: 207, column: 9, scope: !2103, inlinedAt: !2098)
!2103 = distinct !DILexicalBlock(scope: !2090, file: !651, line: 207, column: 7)
!2104 = !DILocation(line: 207, column: 7, scope: !2090, inlinedAt: !2098)
!2105 = !DILocation(line: 208, column: 9, scope: !2103, inlinedAt: !2098)
!2106 = !DILocation(line: 208, column: 5, scope: !2103, inlinedAt: !2098)
!2107 = !DILocation(line: 214, column: 3, scope: !2090, inlinedAt: !2098)
!2108 = !DILocation(line: 216, column: 1, scope: !2090, inlinedAt: !2098)
!2109 = !DILocation(line: 234, column: 5, scope: !2087)
!2110 = !DILocation(line: 238, column: 3, scope: !2032)
!2111 = !DILocalVariable(name: "__c", arg: 1, scope: !2112, file: !1759, line: 101, type: !118)
!2112 = distinct !DISubprogram(name: "putc_unlocked", scope: !1759, file: !1759, line: 101, type: !2113, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!118, !118, !2045}
!2115 = !{!2111, !2116}
!2116 = !DILocalVariable(name: "__stream", arg: 2, scope: !2112, file: !1759, line: 101, type: !2045)
!2117 = !DILocation(line: 0, scope: !2112, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 238, column: 3, scope: !2032)
!2119 = !DILocation(line: 103, column: 10, scope: !2112, inlinedAt: !2118)
!2120 = !DILocation(line: 240, column: 3, scope: !2032)
!2121 = !DILocation(line: 241, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2032, file: !651, line: 241, column: 7)
!2123 = !DILocation(line: 241, column: 7, scope: !2032)
!2124 = !DILocation(line: 242, column: 5, scope: !2122)
!2125 = !DILocation(line: 243, column: 1, scope: !2032)
!2126 = !DISubprogram(name: "__vfprintf_chk", scope: !1122, file: !1122, line: 96, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!118, !2044, !118, !1126, !661}
!2129 = !DISubprogram(name: "strerror_r", scope: !1257, file: !1257, line: 444, type: !2130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!177, !118, !177, !180}
!2132 = !DISubprogram(name: "fcntl", scope: !2133, file: !2133, line: 149, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2133 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!118, !118, !118, null}
!2136 = distinct !DISubprogram(name: "error", scope: !651, file: !651, line: 285, type: !2137, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !118, !118, !183, null}
!2139 = !{!2140, !2141, !2142, !2143}
!2140 = !DILocalVariable(name: "status", arg: 1, scope: !2136, file: !651, line: 285, type: !118)
!2141 = !DILocalVariable(name: "errnum", arg: 2, scope: !2136, file: !651, line: 285, type: !118)
!2142 = !DILocalVariable(name: "message", arg: 3, scope: !2136, file: !651, line: 285, type: !183)
!2143 = !DILocalVariable(name: "ap", scope: !2136, file: !651, line: 287, type: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1131, line: 52, baseType: !2145)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2146, line: 14, baseType: !2147)
!2146 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !665, baseType: !2148)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 192, elements: !87)
!2149 = !DILocation(line: 0, scope: !2136)
!2150 = !DILocation(line: 287, column: 3, scope: !2136)
!2151 = !DILocation(line: 287, column: 11, scope: !2136)
!2152 = !DILocation(line: 288, column: 3, scope: !2136)
!2153 = !DILocation(line: 289, column: 3, scope: !2136)
!2154 = !DILocation(line: 290, column: 3, scope: !2136)
!2155 = !DILocation(line: 291, column: 1, scope: !2136)
!2156 = !DILocation(line: 0, scope: !658)
!2157 = !DILocation(line: 302, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !658, file: !651, line: 302, column: 7)
!2159 = !DILocation(line: 302, column: 7, scope: !658)
!2160 = !DILocation(line: 307, column: 11, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !651, line: 307, column: 11)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !651, line: 303, column: 5)
!2163 = !DILocation(line: 307, column: 27, scope: !2161)
!2164 = !DILocation(line: 308, column: 11, scope: !2161)
!2165 = !DILocation(line: 308, column: 28, scope: !2161)
!2166 = !DILocation(line: 308, column: 25, scope: !2161)
!2167 = !DILocation(line: 309, column: 15, scope: !2161)
!2168 = !DILocation(line: 309, column: 33, scope: !2161)
!2169 = !DILocation(line: 310, column: 19, scope: !2161)
!2170 = !DILocation(line: 311, column: 22, scope: !2161)
!2171 = !DILocation(line: 311, column: 56, scope: !2161)
!2172 = !DILocation(line: 307, column: 11, scope: !2162)
!2173 = !DILocation(line: 316, column: 21, scope: !2162)
!2174 = !DILocation(line: 317, column: 23, scope: !2162)
!2175 = !DILocation(line: 318, column: 5, scope: !2162)
!2176 = !DILocation(line: 327, column: 3, scope: !658)
!2177 = !DILocation(line: 331, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !658, file: !651, line: 331, column: 7)
!2179 = !DILocation(line: 331, column: 7, scope: !658)
!2180 = !DILocation(line: 332, column: 5, scope: !2178)
!2181 = !DILocation(line: 338, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !651, line: 334, column: 5)
!2183 = !DILocation(line: 346, column: 3, scope: !658)
!2184 = !DILocation(line: 350, column: 3, scope: !658)
!2185 = !DILocation(line: 356, column: 1, scope: !658)
!2186 = distinct !DISubprogram(name: "error_at_line", scope: !651, file: !651, line: 359, type: !2187, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !118, !118, !183, !110, !183, null}
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195}
!2190 = !DILocalVariable(name: "status", arg: 1, scope: !2186, file: !651, line: 359, type: !118)
!2191 = !DILocalVariable(name: "errnum", arg: 2, scope: !2186, file: !651, line: 359, type: !118)
!2192 = !DILocalVariable(name: "file_name", arg: 3, scope: !2186, file: !651, line: 359, type: !183)
!2193 = !DILocalVariable(name: "line_number", arg: 4, scope: !2186, file: !651, line: 360, type: !110)
!2194 = !DILocalVariable(name: "message", arg: 5, scope: !2186, file: !651, line: 360, type: !183)
!2195 = !DILocalVariable(name: "ap", scope: !2186, file: !651, line: 362, type: !2144)
!2196 = !DILocation(line: 0, scope: !2186)
!2197 = !DILocation(line: 362, column: 3, scope: !2186)
!2198 = !DILocation(line: 362, column: 11, scope: !2186)
!2199 = !DILocation(line: 363, column: 3, scope: !2186)
!2200 = !DILocation(line: 364, column: 3, scope: !2186)
!2201 = !DILocation(line: 366, column: 3, scope: !2186)
!2202 = !DILocation(line: 367, column: 1, scope: !2186)
!2203 = distinct !DISubprogram(name: "fdadvise", scope: !951, file: !951, line: 25, type: !2204, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !2208)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !118, !2206, !2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1131, line: 63, baseType: !368)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !162, line: 51, baseType: !161)
!2208 = !{!2209, !2210, !2211, !2212}
!2209 = !DILocalVariable(name: "fd", arg: 1, scope: !2203, file: !951, line: 25, type: !118)
!2210 = !DILocalVariable(name: "offset", arg: 2, scope: !2203, file: !951, line: 25, type: !2206)
!2211 = !DILocalVariable(name: "len", arg: 3, scope: !2203, file: !951, line: 25, type: !2206)
!2212 = !DILocalVariable(name: "advice", arg: 4, scope: !2203, file: !951, line: 25, type: !2207)
!2213 = !DILocation(line: 0, scope: !2203)
!2214 = !DILocation(line: 28, column: 3, scope: !2203)
!2215 = !DILocation(line: 30, column: 1, scope: !2203)
!2216 = !DISubprogram(name: "posix_fadvise", scope: !2133, file: !2133, line: 273, type: !2217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!118, !118, !2206, !2206, !118}
!2219 = distinct !DISubprogram(name: "fadvise", scope: !951, file: !951, line: 33, type: !2220, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !2256)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !2222, !2207}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2224, file: !346, line: 51, baseType: !118, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2224, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2224, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2224, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2224, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2224, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2224, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2224, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2224, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2224, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2224, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2224, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2224, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2224, file: !346, line: 70, baseType: !2240, size: 64, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2224, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2224, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2224, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2224, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2224, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2224, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2224, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2224, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2224, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2224, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2224, file: !346, line: 93, baseType: !2240, size: 64, offset: 1344)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2224, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2224, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2224, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2224, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2256 = !{!2257, !2258}
!2257 = !DILocalVariable(name: "fp", arg: 1, scope: !2219, file: !951, line: 33, type: !2222)
!2258 = !DILocalVariable(name: "advice", arg: 2, scope: !2219, file: !951, line: 33, type: !2207)
!2259 = !DILocation(line: 0, scope: !2219)
!2260 = !DILocation(line: 35, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2219, file: !951, line: 35, column: 7)
!2262 = !DILocation(line: 35, column: 7, scope: !2219)
!2263 = !DILocation(line: 36, column: 15, scope: !2261)
!2264 = !DILocation(line: 0, scope: !2203, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 36, column: 5, scope: !2261)
!2266 = !DILocation(line: 28, column: 3, scope: !2203, inlinedAt: !2265)
!2267 = !DILocation(line: 36, column: 5, scope: !2261)
!2268 = !DILocation(line: 37, column: 1, scope: !2219)
!2269 = !DISubprogram(name: "fileno", scope: !1131, file: !1131, line: 809, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!118, !2222}
!2272 = distinct !DISubprogram(name: "rpl_fclose", scope: !954, file: !954, line: 58, type: !2273, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !2309)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!118, !2275}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2277, file: !346, line: 51, baseType: !118, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2277, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2277, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2277, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2277, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2277, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2277, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2277, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2277, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2277, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2277, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2277, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2277, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2277, file: !346, line: 70, baseType: !2293, size: 64, offset: 832)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2277, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2277, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2277, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2277, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2277, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2277, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2277, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2277, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2277, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2277, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2277, file: !346, line: 93, baseType: !2293, size: 64, offset: 1344)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2277, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2277, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2277, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2277, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2309 = !{!2310, !2311, !2312, !2313}
!2310 = !DILocalVariable(name: "fp", arg: 1, scope: !2272, file: !954, line: 58, type: !2275)
!2311 = !DILocalVariable(name: "saved_errno", scope: !2272, file: !954, line: 60, type: !118)
!2312 = !DILocalVariable(name: "fd", scope: !2272, file: !954, line: 63, type: !118)
!2313 = !DILocalVariable(name: "result", scope: !2272, file: !954, line: 74, type: !118)
!2314 = !DILocation(line: 0, scope: !2272)
!2315 = !DILocation(line: 63, column: 12, scope: !2272)
!2316 = !DILocation(line: 64, column: 10, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2272, file: !954, line: 64, column: 7)
!2318 = !DILocation(line: 64, column: 7, scope: !2272)
!2319 = !DILocation(line: 65, column: 12, scope: !2317)
!2320 = !DILocation(line: 65, column: 5, scope: !2317)
!2321 = !DILocation(line: 70, column: 9, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2272, file: !954, line: 70, column: 7)
!2323 = !DILocation(line: 70, column: 23, scope: !2322)
!2324 = !DILocation(line: 70, column: 33, scope: !2322)
!2325 = !DILocation(line: 70, column: 26, scope: !2322)
!2326 = !DILocation(line: 70, column: 59, scope: !2322)
!2327 = !DILocation(line: 71, column: 7, scope: !2322)
!2328 = !DILocation(line: 71, column: 10, scope: !2322)
!2329 = !DILocation(line: 70, column: 7, scope: !2272)
!2330 = !DILocation(line: 100, column: 12, scope: !2272)
!2331 = !DILocation(line: 105, column: 7, scope: !2272)
!2332 = !DILocation(line: 72, column: 19, scope: !2322)
!2333 = !DILocation(line: 105, column: 19, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2272, file: !954, line: 105, column: 7)
!2335 = !DILocation(line: 107, column: 13, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2334, file: !954, line: 106, column: 5)
!2337 = !DILocation(line: 109, column: 5, scope: !2336)
!2338 = !DILocation(line: 112, column: 1, scope: !2272)
!2339 = !DISubprogram(name: "fclose", scope: !1131, file: !1131, line: 178, type: !2273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2340 = !DISubprogram(name: "__freading", scope: !2341, file: !2341, line: 51, type: !2273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2341 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2342 = !DISubprogram(name: "lseek", scope: !1998, file: !1998, line: 339, type: !2343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!368, !118, !368, !118}
!2345 = distinct !DISubprogram(name: "rpl_fflush", scope: !956, file: !956, line: 130, type: !2346, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !2382)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!118, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2350)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2351)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2350, file: !346, line: 51, baseType: !118, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2350, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2350, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2350, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2350, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2350, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2350, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2350, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2350, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2350, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2350, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2350, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2350, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2350, file: !346, line: 70, baseType: !2366, size: 64, offset: 832)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2350, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2350, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2350, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2350, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2350, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2350, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2350, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2350, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2350, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2350, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2350, file: !346, line: 93, baseType: !2366, size: 64, offset: 1344)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2350, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2350, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2350, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2350, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2382 = !{!2383}
!2383 = !DILocalVariable(name: "stream", arg: 1, scope: !2345, file: !956, line: 130, type: !2348)
!2384 = !DILocation(line: 0, scope: !2345)
!2385 = !DILocation(line: 151, column: 14, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2345, file: !956, line: 151, column: 7)
!2387 = !DILocation(line: 151, column: 22, scope: !2386)
!2388 = !DILocation(line: 151, column: 27, scope: !2386)
!2389 = !DILocation(line: 151, column: 7, scope: !2345)
!2390 = !DILocation(line: 152, column: 12, scope: !2386)
!2391 = !DILocation(line: 152, column: 5, scope: !2386)
!2392 = !DILocalVariable(name: "fp", arg: 1, scope: !2393, file: !956, line: 42, type: !2348)
!2393 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !956, file: !956, line: 42, type: !2394, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2348}
!2396 = !{!2392}
!2397 = !DILocation(line: 0, scope: !2393, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 157, column: 3, scope: !2345)
!2399 = !DILocation(line: 44, column: 12, scope: !2400, inlinedAt: !2398)
!2400 = distinct !DILexicalBlock(scope: !2393, file: !956, line: 44, column: 7)
!2401 = !DILocation(line: 44, column: 19, scope: !2400, inlinedAt: !2398)
!2402 = !DILocation(line: 44, column: 7, scope: !2393, inlinedAt: !2398)
!2403 = !DILocation(line: 46, column: 5, scope: !2400, inlinedAt: !2398)
!2404 = !DILocation(line: 159, column: 10, scope: !2345)
!2405 = !DILocation(line: 159, column: 3, scope: !2345)
!2406 = !DILocation(line: 236, column: 1, scope: !2345)
!2407 = !DISubprogram(name: "fflush", scope: !1131, file: !1131, line: 230, type: !2346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2408 = distinct !DISubprogram(name: "fpurge", scope: !959, file: !959, line: 32, type: !2409, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !958, retainedNodes: !2445)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!118, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2413)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2413, file: !346, line: 51, baseType: !118, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2413, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2413, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2413, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2413, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2413, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2413, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2413, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2413, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2413, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2413, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2413, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2413, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2413, file: !346, line: 70, baseType: !2429, size: 64, offset: 832)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2413, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2413, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2413, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2413, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2413, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2413, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2413, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2413, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2413, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2413, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2413, file: !346, line: 93, baseType: !2429, size: 64, offset: 1344)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2413, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2413, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2413, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2413, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2445 = !{!2446}
!2446 = !DILocalVariable(name: "fp", arg: 1, scope: !2408, file: !959, line: 32, type: !2411)
!2447 = !DILocation(line: 0, scope: !2408)
!2448 = !DILocation(line: 36, column: 3, scope: !2408)
!2449 = !DILocation(line: 38, column: 3, scope: !2408)
!2450 = !DISubprogram(name: "__fpurge", scope: !2341, file: !2341, line: 72, type: !2451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !2411}
!2453 = distinct !DISubprogram(name: "rpl_fseeko", scope: !961, file: !961, line: 28, type: !2454, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !2490)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!118, !2456, !2206, !118}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2459)
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2458, file: !346, line: 51, baseType: !118, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2458, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2458, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2458, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2458, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2458, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2458, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2458, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2458, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2458, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2458, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2458, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2458, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2458, file: !346, line: 70, baseType: !2474, size: 64, offset: 832)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2458, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2458, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2458, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2458, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2458, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2458, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2458, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2458, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2458, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2458, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2458, file: !346, line: 93, baseType: !2474, size: 64, offset: 1344)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2458, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2458, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2458, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2458, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2490 = !{!2491, !2492, !2493, !2494}
!2491 = !DILocalVariable(name: "fp", arg: 1, scope: !2453, file: !961, line: 28, type: !2456)
!2492 = !DILocalVariable(name: "offset", arg: 2, scope: !2453, file: !961, line: 28, type: !2206)
!2493 = !DILocalVariable(name: "whence", arg: 3, scope: !2453, file: !961, line: 28, type: !118)
!2494 = !DILocalVariable(name: "pos", scope: !2495, file: !961, line: 123, type: !2206)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !961, line: 119, column: 5)
!2496 = distinct !DILexicalBlock(scope: !2453, file: !961, line: 55, column: 7)
!2497 = !DILocation(line: 0, scope: !2453)
!2498 = !DILocation(line: 55, column: 12, scope: !2496)
!2499 = !{!1767, !1056, i64 16}
!2500 = !DILocation(line: 55, column: 33, scope: !2496)
!2501 = !{!1767, !1056, i64 8}
!2502 = !DILocation(line: 55, column: 25, scope: !2496)
!2503 = !DILocation(line: 56, column: 7, scope: !2496)
!2504 = !DILocation(line: 56, column: 15, scope: !2496)
!2505 = !DILocation(line: 56, column: 37, scope: !2496)
!2506 = !{!1767, !1056, i64 32}
!2507 = !DILocation(line: 56, column: 29, scope: !2496)
!2508 = !DILocation(line: 57, column: 7, scope: !2496)
!2509 = !DILocation(line: 57, column: 15, scope: !2496)
!2510 = !{!1767, !1056, i64 72}
!2511 = !DILocation(line: 57, column: 29, scope: !2496)
!2512 = !DILocation(line: 55, column: 7, scope: !2453)
!2513 = !DILocation(line: 123, column: 26, scope: !2495)
!2514 = !DILocation(line: 123, column: 19, scope: !2495)
!2515 = !DILocation(line: 0, scope: !2495)
!2516 = !DILocation(line: 124, column: 15, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2495, file: !961, line: 124, column: 11)
!2518 = !DILocation(line: 124, column: 11, scope: !2495)
!2519 = !DILocation(line: 135, column: 19, scope: !2495)
!2520 = !DILocation(line: 136, column: 12, scope: !2495)
!2521 = !DILocation(line: 136, column: 20, scope: !2495)
!2522 = !{!1767, !1338, i64 144}
!2523 = !DILocation(line: 167, column: 7, scope: !2495)
!2524 = !DILocation(line: 169, column: 10, scope: !2453)
!2525 = !DILocation(line: 169, column: 3, scope: !2453)
!2526 = !DILocation(line: 170, column: 1, scope: !2453)
!2527 = !DISubprogram(name: "fseeko", scope: !1131, file: !1131, line: 736, type: !2528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!118, !2456, !368, !118}
!2530 = distinct !DISubprogram(name: "getprogname", scope: !963, file: !963, line: 54, type: !2531, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !1064)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!183}
!2533 = !DILocation(line: 58, column: 10, scope: !2530)
!2534 = !DILocation(line: 58, column: 3, scope: !2530)
!2535 = distinct !DISubprogram(name: "initbuffer", scope: !965, file: !965, line: 37, type: !2536, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2544)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !294, line: 32, size: 192, elements: !2540)
!2540 = !{!2541, !2542, !2543}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2539, file: !294, line: 34, baseType: !297, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2539, file: !294, line: 35, baseType: !297, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2539, file: !294, line: 36, baseType: !177, size: 64, offset: 128)
!2544 = !{!2545}
!2545 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2535, file: !965, line: 37, type: !2538)
!2546 = !DILocation(line: 0, scope: !2535)
!2547 = !DILocalVariable(name: "__dest", arg: 1, scope: !2548, file: !1458, line: 57, type: !178)
!2548 = distinct !DISubprogram(name: "memset", scope: !1458, file: !1458, line: 57, type: !1540, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2549)
!2549 = !{!2547, !2550, !2551}
!2550 = !DILocalVariable(name: "__ch", arg: 2, scope: !2548, file: !1458, line: 57, type: !118)
!2551 = !DILocalVariable(name: "__len", arg: 3, scope: !2548, file: !1458, line: 57, type: !180)
!2552 = !DILocation(line: 0, scope: !2548, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 39, column: 3, scope: !2535)
!2554 = !DILocation(line: 59, column: 10, scope: !2548, inlinedAt: !2553)
!2555 = !DILocation(line: 40, column: 1, scope: !2535)
!2556 = distinct !DISubprogram(name: "readlinebuffer", scope: !965, file: !965, line: 43, type: !2557, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2593)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!2538, !2538, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2561, file: !346, line: 51, baseType: !118, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2561, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2561, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2561, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2561, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2561, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2561, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2561, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2561, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2561, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2561, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2561, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2561, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2561, file: !346, line: 70, baseType: !2577, size: 64, offset: 832)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2561, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2561, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2561, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2561, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2561, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2561, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2561, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2561, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2561, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2561, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2561, file: !346, line: 93, baseType: !2577, size: 64, offset: 1344)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2561, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2561, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2561, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2561, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2556, file: !965, line: 43, type: !2538)
!2595 = !DILocalVariable(name: "stream", arg: 2, scope: !2556, file: !965, line: 43, type: !2559)
!2596 = !DILocation(line: 0, scope: !2556)
!2597 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2598, file: !965, line: 59, type: !2538)
!2598 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !965, file: !965, line: 59, type: !2599, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!2538, !2538, !2559, !4}
!2601 = !{!2597, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2602 = !DILocalVariable(name: "stream", arg: 2, scope: !2598, file: !965, line: 59, type: !2559)
!2603 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2598, file: !965, line: 60, type: !4)
!2604 = !DILocalVariable(name: "buffer", scope: !2598, file: !965, line: 65, type: !177)
!2605 = !DILocalVariable(name: "p", scope: !2598, file: !965, line: 66, type: !177)
!2606 = !DILocalVariable(name: "end", scope: !2598, file: !965, line: 67, type: !177)
!2607 = !DILocalVariable(name: "c", scope: !2598, file: !965, line: 68, type: !118)
!2608 = !DILocalVariable(name: "oldsize", scope: !2609, file: !965, line: 83, type: !297)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !965, line: 82, column: 9)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !965, line: 81, column: 11)
!2611 = distinct !DILexicalBlock(scope: !2598, file: !965, line: 71, column: 5)
!2612 = !DILocation(line: 0, scope: !2598, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 45, column: 10, scope: !2556)
!2614 = !DILocalVariable(name: "__stream", arg: 1, scope: !2615, file: !1759, line: 128, type: !2559)
!2615 = distinct !DISubprogram(name: "feof_unlocked", scope: !1759, file: !1759, line: 128, type: !2616, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!118, !2559}
!2618 = !{!2614}
!2619 = !DILocation(line: 0, scope: !2615, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 62, column: 7, scope: !2621, inlinedAt: !2613)
!2621 = distinct !DILexicalBlock(scope: !2598, file: !965, line: 62, column: 7)
!2622 = !DILocation(line: 130, column: 10, scope: !2615, inlinedAt: !2620)
!2623 = !DILocation(line: 62, column: 7, scope: !2621, inlinedAt: !2613)
!2624 = !DILocation(line: 62, column: 7, scope: !2598, inlinedAt: !2613)
!2625 = !DILocation(line: 65, column: 30, scope: !2598, inlinedAt: !2613)
!2626 = !DILocation(line: 67, column: 36, scope: !2598, inlinedAt: !2613)
!2627 = !{!1690, !1338, i64 0}
!2628 = !DILocation(line: 67, column: 22, scope: !2598, inlinedAt: !2613)
!2629 = !DILocation(line: 70, column: 3, scope: !2598, inlinedAt: !2613)
!2630 = !DILocalVariable(name: "__fp", arg: 1, scope: !2631, file: !1759, line: 66, type: !2559)
!2631 = distinct !DISubprogram(name: "getc_unlocked", scope: !1759, file: !1759, line: 66, type: !2616, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2632)
!2632 = !{!2630}
!2633 = !DILocation(line: 0, scope: !2631, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 72, column: 11, scope: !2611, inlinedAt: !2613)
!2635 = !DILocation(line: 68, column: 10, scope: !2631, inlinedAt: !2634)
!2636 = !DILocation(line: 73, column: 11, scope: !2611, inlinedAt: !2613)
!2637 = !DILocation(line: 73, column: 13, scope: !2638, inlinedAt: !2613)
!2638 = distinct !DILexicalBlock(scope: !2611, file: !965, line: 73, column: 11)
!2639 = !DILocation(line: 75, column: 17, scope: !2640, inlinedAt: !2613)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !965, line: 75, column: 15)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !965, line: 74, column: 9)
!2642 = !DILocation(line: 75, column: 27, scope: !2640, inlinedAt: !2613)
!2643 = !DILocalVariable(name: "__stream", arg: 1, scope: !2644, file: !1759, line: 135, type: !2559)
!2644 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1759, file: !1759, line: 135, type: !2616, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2645)
!2645 = !{!2643}
!2646 = !DILocation(line: 0, scope: !2644, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 75, column: 30, scope: !2640, inlinedAt: !2613)
!2648 = !DILocation(line: 137, column: 10, scope: !2644, inlinedAt: !2647)
!2649 = !DILocation(line: 75, column: 30, scope: !2640, inlinedAt: !2613)
!2650 = !DILocation(line: 75, column: 15, scope: !2641, inlinedAt: !2613)
!2651 = !DILocation(line: 77, column: 15, scope: !2652, inlinedAt: !2613)
!2652 = distinct !DILexicalBlock(scope: !2641, file: !965, line: 77, column: 15)
!2653 = !DILocation(line: 77, column: 21, scope: !2652, inlinedAt: !2613)
!2654 = !DILocation(line: 77, column: 15, scope: !2641, inlinedAt: !2613)
!2655 = !DILocation(line: 0, scope: !2611, inlinedAt: !2613)
!2656 = !DILocation(line: 81, column: 13, scope: !2610, inlinedAt: !2613)
!2657 = !DILocation(line: 81, column: 11, scope: !2611, inlinedAt: !2613)
!2658 = !DILocation(line: 83, column: 39, scope: !2609, inlinedAt: !2613)
!2659 = !DILocation(line: 0, scope: !2609, inlinedAt: !2613)
!2660 = !DILocation(line: 84, column: 20, scope: !2609, inlinedAt: !2613)
!2661 = !DILocation(line: 85, column: 22, scope: !2609, inlinedAt: !2613)
!2662 = !DILocation(line: 86, column: 30, scope: !2609, inlinedAt: !2613)
!2663 = !DILocation(line: 87, column: 38, scope: !2609, inlinedAt: !2613)
!2664 = !DILocation(line: 87, column: 24, scope: !2609, inlinedAt: !2613)
!2665 = !DILocation(line: 88, column: 9, scope: !2609, inlinedAt: !2613)
!2666 = !DILocation(line: 89, column: 14, scope: !2611, inlinedAt: !2613)
!2667 = !DILocation(line: 89, column: 9, scope: !2611, inlinedAt: !2613)
!2668 = !DILocation(line: 89, column: 12, scope: !2611, inlinedAt: !2613)
!2669 = !DILocation(line: 91, column: 12, scope: !2598, inlinedAt: !2613)
!2670 = !DILocation(line: 90, column: 5, scope: !2611, inlinedAt: !2613)
!2671 = distinct !{!2671, !2629, !2672, !1183}
!2672 = !DILocation(line: 91, column: 24, scope: !2598, inlinedAt: !2613)
!2673 = !DILocation(line: 93, column: 26, scope: !2598, inlinedAt: !2613)
!2674 = !DILocation(line: 93, column: 15, scope: !2598, inlinedAt: !2613)
!2675 = !DILocation(line: 93, column: 22, scope: !2598, inlinedAt: !2613)
!2676 = !DILocation(line: 94, column: 3, scope: !2598, inlinedAt: !2613)
!2677 = !DILocation(line: 45, column: 3, scope: !2556)
!2678 = !DISubprogram(name: "__uflow", scope: !1131, file: !1131, line: 885, type: !2616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2679 = !DILocation(line: 0, scope: !2598)
!2680 = !DILocation(line: 0, scope: !2615, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 62, column: 7, scope: !2621)
!2682 = !DILocation(line: 130, column: 10, scope: !2615, inlinedAt: !2681)
!2683 = !DILocation(line: 62, column: 7, scope: !2621)
!2684 = !DILocation(line: 62, column: 7, scope: !2598)
!2685 = !DILocation(line: 65, column: 30, scope: !2598)
!2686 = !DILocation(line: 67, column: 36, scope: !2598)
!2687 = !DILocation(line: 67, column: 22, scope: !2598)
!2688 = !DILocation(line: 70, column: 3, scope: !2598)
!2689 = !DILocation(line: 0, scope: !2631, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 72, column: 11, scope: !2611)
!2691 = !DILocation(line: 68, column: 10, scope: !2631, inlinedAt: !2690)
!2692 = !DILocation(line: 73, column: 11, scope: !2611)
!2693 = !DILocation(line: 73, column: 13, scope: !2638)
!2694 = !DILocation(line: 75, column: 17, scope: !2640)
!2695 = !DILocation(line: 75, column: 27, scope: !2640)
!2696 = !DILocation(line: 0, scope: !2644, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 75, column: 30, scope: !2640)
!2698 = !DILocation(line: 137, column: 10, scope: !2644, inlinedAt: !2697)
!2699 = !DILocation(line: 75, column: 30, scope: !2640)
!2700 = !DILocation(line: 75, column: 15, scope: !2641)
!2701 = !DILocation(line: 77, column: 15, scope: !2652)
!2702 = !DILocation(line: 77, column: 21, scope: !2652)
!2703 = !DILocation(line: 77, column: 15, scope: !2641)
!2704 = !DILocation(line: 0, scope: !2611)
!2705 = !DILocation(line: 81, column: 13, scope: !2610)
!2706 = !DILocation(line: 81, column: 11, scope: !2611)
!2707 = !DILocation(line: 83, column: 39, scope: !2609)
!2708 = !DILocation(line: 0, scope: !2609)
!2709 = !DILocation(line: 84, column: 20, scope: !2609)
!2710 = !DILocation(line: 85, column: 22, scope: !2609)
!2711 = !DILocation(line: 86, column: 30, scope: !2609)
!2712 = !DILocation(line: 87, column: 38, scope: !2609)
!2713 = !DILocation(line: 87, column: 24, scope: !2609)
!2714 = !DILocation(line: 88, column: 9, scope: !2609)
!2715 = !DILocation(line: 89, column: 14, scope: !2611)
!2716 = !DILocation(line: 89, column: 9, scope: !2611)
!2717 = !DILocation(line: 89, column: 12, scope: !2611)
!2718 = !DILocation(line: 91, column: 12, scope: !2598)
!2719 = !DILocation(line: 90, column: 5, scope: !2611)
!2720 = distinct !{!2720, !2688, !2721, !1183}
!2721 = !DILocation(line: 91, column: 24, scope: !2598)
!2722 = !DILocation(line: 93, column: 26, scope: !2598)
!2723 = !DILocation(line: 93, column: 15, scope: !2598)
!2724 = !DILocation(line: 93, column: 22, scope: !2598)
!2725 = !DILocation(line: 94, column: 3, scope: !2598)
!2726 = !DILocation(line: 95, column: 1, scope: !2598)
!2727 = distinct !DISubprogram(name: "freebuffer", scope: !965, file: !965, line: 100, type: !2536, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2728)
!2728 = !{!2729}
!2729 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2727, file: !965, line: 100, type: !2538)
!2730 = !DILocation(line: 0, scope: !2727)
!2731 = !DILocation(line: 102, column: 21, scope: !2727)
!2732 = !DILocation(line: 102, column: 3, scope: !2727)
!2733 = !DILocation(line: 103, column: 1, scope: !2727)
!2734 = !DISubprogram(name: "free", scope: !1149, file: !1149, line: 752, type: !2735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{null, !178}
!2737 = distinct !DISubprogram(name: "set_program_name", scope: !698, file: !698, line: 37, type: !1087, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2738)
!2738 = !{!2739, !2740, !2741}
!2739 = !DILocalVariable(name: "argv0", arg: 1, scope: !2737, file: !698, line: 37, type: !183)
!2740 = !DILocalVariable(name: "slash", scope: !2737, file: !698, line: 44, type: !183)
!2741 = !DILocalVariable(name: "base", scope: !2737, file: !698, line: 45, type: !183)
!2742 = !DILocation(line: 0, scope: !2737)
!2743 = !DILocation(line: 44, column: 23, scope: !2737)
!2744 = !DILocation(line: 45, column: 22, scope: !2737)
!2745 = !DILocation(line: 46, column: 17, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2737, file: !698, line: 46, column: 7)
!2747 = !DILocation(line: 46, column: 9, scope: !2746)
!2748 = !DILocation(line: 46, column: 25, scope: !2746)
!2749 = !DILocation(line: 46, column: 40, scope: !2746)
!2750 = !DILocalVariable(name: "__s1", arg: 1, scope: !2751, file: !1149, line: 974, type: !1285)
!2751 = distinct !DISubprogram(name: "memeq", scope: !1149, file: !1149, line: 974, type: !1702, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2752)
!2752 = !{!2750, !2753, !2754}
!2753 = !DILocalVariable(name: "__s2", arg: 2, scope: !2751, file: !1149, line: 974, type: !1285)
!2754 = !DILocalVariable(name: "__n", arg: 3, scope: !2751, file: !1149, line: 974, type: !180)
!2755 = !DILocation(line: 0, scope: !2751, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 46, column: 28, scope: !2746)
!2757 = !DILocation(line: 976, column: 11, scope: !2751, inlinedAt: !2756)
!2758 = !DILocation(line: 976, column: 10, scope: !2751, inlinedAt: !2756)
!2759 = !DILocation(line: 46, column: 7, scope: !2737)
!2760 = !DILocation(line: 49, column: 11, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !698, line: 49, column: 11)
!2762 = distinct !DILexicalBlock(scope: !2746, file: !698, line: 47, column: 5)
!2763 = !DILocation(line: 49, column: 36, scope: !2761)
!2764 = !DILocation(line: 49, column: 11, scope: !2762)
!2765 = !DILocation(line: 65, column: 16, scope: !2737)
!2766 = !DILocation(line: 71, column: 27, scope: !2737)
!2767 = !DILocation(line: 74, column: 33, scope: !2737)
!2768 = !DILocation(line: 76, column: 1, scope: !2737)
!2769 = !DISubprogram(name: "strrchr", scope: !1257, file: !1257, line: 273, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2770 = !DILocation(line: 0, scope: !707)
!2771 = !DILocation(line: 40, column: 29, scope: !707)
!2772 = !DILocation(line: 41, column: 19, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !707, file: !708, line: 41, column: 7)
!2774 = !DILocation(line: 41, column: 7, scope: !707)
!2775 = !DILocation(line: 47, column: 3, scope: !707)
!2776 = !DILocation(line: 48, column: 3, scope: !707)
!2777 = !DILocation(line: 48, column: 13, scope: !707)
!2778 = !DILocalVariable(name: "ps", arg: 1, scope: !2779, file: !2780, line: 1135, type: !2783)
!2779 = distinct !DISubprogram(name: "mbszero", scope: !2780, file: !2780, line: 1135, type: !2781, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2784)
!2780 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!2784 = !{!2778}
!2785 = !DILocation(line: 0, scope: !2779, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 48, column: 18, scope: !707)
!2787 = !DILocalVariable(name: "__dest", arg: 1, scope: !2788, file: !1458, line: 57, type: !178)
!2788 = distinct !DISubprogram(name: "memset", scope: !1458, file: !1458, line: 57, type: !1540, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2789)
!2789 = !{!2787, !2790, !2791}
!2790 = !DILocalVariable(name: "__ch", arg: 2, scope: !2788, file: !1458, line: 57, type: !118)
!2791 = !DILocalVariable(name: "__len", arg: 3, scope: !2788, file: !1458, line: 57, type: !180)
!2792 = !DILocation(line: 0, scope: !2788, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1137, column: 3, scope: !2779, inlinedAt: !2786)
!2794 = !DILocation(line: 59, column: 10, scope: !2788, inlinedAt: !2793)
!2795 = !DILocation(line: 49, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !707, file: !708, line: 49, column: 7)
!2797 = !DILocation(line: 49, column: 39, scope: !2796)
!2798 = !DILocation(line: 49, column: 44, scope: !2796)
!2799 = !DILocation(line: 54, column: 1, scope: !707)
!2800 = distinct !DISubprogram(name: "clone_quoting_options", scope: !738, file: !738, line: 113, type: !2801, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2804)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!2803, !2803}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2804 = !{!2805, !2806, !2807}
!2805 = !DILocalVariable(name: "o", arg: 1, scope: !2800, file: !738, line: 113, type: !2803)
!2806 = !DILocalVariable(name: "saved_errno", scope: !2800, file: !738, line: 115, type: !118)
!2807 = !DILocalVariable(name: "p", scope: !2800, file: !738, line: 116, type: !2803)
!2808 = !DILocation(line: 0, scope: !2800)
!2809 = !DILocation(line: 115, column: 21, scope: !2800)
!2810 = !DILocation(line: 116, column: 40, scope: !2800)
!2811 = !DILocation(line: 116, column: 31, scope: !2800)
!2812 = !DILocation(line: 118, column: 9, scope: !2800)
!2813 = !DILocation(line: 119, column: 3, scope: !2800)
!2814 = distinct !DISubprogram(name: "get_quoting_style", scope: !738, file: !738, line: 124, type: !2815, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2819)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!147, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "o", arg: 1, scope: !2814, file: !738, line: 124, type: !2817)
!2821 = !DILocation(line: 0, scope: !2814)
!2822 = !DILocation(line: 126, column: 11, scope: !2814)
!2823 = !DILocation(line: 126, column: 46, scope: !2814)
!2824 = !{!2825, !1057, i64 0}
!2825 = !{!"quoting_options", !1057, i64 0, !1137, i64 4, !1057, i64 8, !1056, i64 40, !1056, i64 48}
!2826 = !DILocation(line: 126, column: 3, scope: !2814)
!2827 = distinct !DISubprogram(name: "set_quoting_style", scope: !738, file: !738, line: 132, type: !2828, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{null, !2803, !147}
!2830 = !{!2831, !2832}
!2831 = !DILocalVariable(name: "o", arg: 1, scope: !2827, file: !738, line: 132, type: !2803)
!2832 = !DILocalVariable(name: "s", arg: 2, scope: !2827, file: !738, line: 132, type: !147)
!2833 = !DILocation(line: 0, scope: !2827)
!2834 = !DILocation(line: 134, column: 4, scope: !2827)
!2835 = !DILocation(line: 134, column: 45, scope: !2827)
!2836 = !DILocation(line: 135, column: 1, scope: !2827)
!2837 = distinct !DISubprogram(name: "set_char_quoting", scope: !738, file: !738, line: 143, type: !2838, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!118, !2803, !4, !118}
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2847, !2848}
!2841 = !DILocalVariable(name: "o", arg: 1, scope: !2837, file: !738, line: 143, type: !2803)
!2842 = !DILocalVariable(name: "c", arg: 2, scope: !2837, file: !738, line: 143, type: !4)
!2843 = !DILocalVariable(name: "i", arg: 3, scope: !2837, file: !738, line: 143, type: !118)
!2844 = !DILocalVariable(name: "uc", scope: !2837, file: !738, line: 145, type: !185)
!2845 = !DILocalVariable(name: "p", scope: !2837, file: !738, line: 146, type: !2846)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2847 = !DILocalVariable(name: "shift", scope: !2837, file: !738, line: 148, type: !118)
!2848 = !DILocalVariable(name: "r", scope: !2837, file: !738, line: 149, type: !110)
!2849 = !DILocation(line: 0, scope: !2837)
!2850 = !DILocation(line: 147, column: 6, scope: !2837)
!2851 = !DILocation(line: 147, column: 41, scope: !2837)
!2852 = !DILocation(line: 147, column: 62, scope: !2837)
!2853 = !DILocation(line: 147, column: 57, scope: !2837)
!2854 = !DILocation(line: 148, column: 15, scope: !2837)
!2855 = !DILocation(line: 149, column: 21, scope: !2837)
!2856 = !DILocation(line: 149, column: 24, scope: !2837)
!2857 = !DILocation(line: 149, column: 34, scope: !2837)
!2858 = !DILocation(line: 150, column: 19, scope: !2837)
!2859 = !DILocation(line: 150, column: 24, scope: !2837)
!2860 = !DILocation(line: 150, column: 6, scope: !2837)
!2861 = !DILocation(line: 151, column: 3, scope: !2837)
!2862 = distinct !DISubprogram(name: "set_quoting_flags", scope: !738, file: !738, line: 159, type: !2863, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!118, !2803, !118}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "o", arg: 1, scope: !2862, file: !738, line: 159, type: !2803)
!2867 = !DILocalVariable(name: "i", arg: 2, scope: !2862, file: !738, line: 159, type: !118)
!2868 = !DILocalVariable(name: "r", scope: !2862, file: !738, line: 163, type: !118)
!2869 = !DILocation(line: 0, scope: !2862)
!2870 = !DILocation(line: 161, column: 8, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2862, file: !738, line: 161, column: 7)
!2872 = !DILocation(line: 161, column: 7, scope: !2862)
!2873 = !DILocation(line: 163, column: 14, scope: !2862)
!2874 = !{!2825, !1137, i64 4}
!2875 = !DILocation(line: 164, column: 12, scope: !2862)
!2876 = !DILocation(line: 165, column: 3, scope: !2862)
!2877 = distinct !DISubprogram(name: "set_custom_quoting", scope: !738, file: !738, line: 169, type: !2878, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2803, !183, !183}
!2880 = !{!2881, !2882, !2883}
!2881 = !DILocalVariable(name: "o", arg: 1, scope: !2877, file: !738, line: 169, type: !2803)
!2882 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2877, file: !738, line: 170, type: !183)
!2883 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2877, file: !738, line: 170, type: !183)
!2884 = !DILocation(line: 0, scope: !2877)
!2885 = !DILocation(line: 172, column: 8, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2877, file: !738, line: 172, column: 7)
!2887 = !DILocation(line: 172, column: 7, scope: !2877)
!2888 = !DILocation(line: 174, column: 12, scope: !2877)
!2889 = !DILocation(line: 175, column: 8, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2877, file: !738, line: 175, column: 7)
!2891 = !DILocation(line: 175, column: 19, scope: !2890)
!2892 = !DILocation(line: 176, column: 5, scope: !2890)
!2893 = !DILocation(line: 177, column: 6, scope: !2877)
!2894 = !DILocation(line: 177, column: 17, scope: !2877)
!2895 = !{!2825, !1056, i64 40}
!2896 = !DILocation(line: 178, column: 6, scope: !2877)
!2897 = !DILocation(line: 178, column: 18, scope: !2877)
!2898 = !{!2825, !1056, i64 48}
!2899 = !DILocation(line: 179, column: 1, scope: !2877)
!2900 = !DISubprogram(name: "abort", scope: !1261, file: !1261, line: 598, type: !600, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!2901 = distinct !DISubprogram(name: "quotearg_buffer", scope: !738, file: !738, line: 774, type: !2902, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!180, !177, !180, !183, !180, !2817}
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2905 = !DILocalVariable(name: "buffer", arg: 1, scope: !2901, file: !738, line: 774, type: !177)
!2906 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2901, file: !738, line: 774, type: !180)
!2907 = !DILocalVariable(name: "arg", arg: 3, scope: !2901, file: !738, line: 775, type: !183)
!2908 = !DILocalVariable(name: "argsize", arg: 4, scope: !2901, file: !738, line: 775, type: !180)
!2909 = !DILocalVariable(name: "o", arg: 5, scope: !2901, file: !738, line: 776, type: !2817)
!2910 = !DILocalVariable(name: "p", scope: !2901, file: !738, line: 778, type: !2817)
!2911 = !DILocalVariable(name: "saved_errno", scope: !2901, file: !738, line: 779, type: !118)
!2912 = !DILocalVariable(name: "r", scope: !2901, file: !738, line: 780, type: !180)
!2913 = !DILocation(line: 0, scope: !2901)
!2914 = !DILocation(line: 778, column: 37, scope: !2901)
!2915 = !DILocation(line: 779, column: 21, scope: !2901)
!2916 = !DILocation(line: 781, column: 43, scope: !2901)
!2917 = !DILocation(line: 781, column: 53, scope: !2901)
!2918 = !DILocation(line: 781, column: 63, scope: !2901)
!2919 = !DILocation(line: 782, column: 43, scope: !2901)
!2920 = !DILocation(line: 782, column: 58, scope: !2901)
!2921 = !DILocation(line: 780, column: 14, scope: !2901)
!2922 = !DILocation(line: 783, column: 9, scope: !2901)
!2923 = !DILocation(line: 784, column: 3, scope: !2901)
!2924 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !738, file: !738, line: 251, type: !2925, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2929)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!180, !177, !180, !183, !180, !147, !118, !2927, !183, !183}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2954, !2956, !2959, !2960, !2961, !2962, !2965, !2966, !2969, !2973, !2974, !2982, !2985, !2986, !2988, !2989, !2990, !2991}
!2930 = !DILocalVariable(name: "buffer", arg: 1, scope: !2924, file: !738, line: 251, type: !177)
!2931 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2924, file: !738, line: 251, type: !180)
!2932 = !DILocalVariable(name: "arg", arg: 3, scope: !2924, file: !738, line: 252, type: !183)
!2933 = !DILocalVariable(name: "argsize", arg: 4, scope: !2924, file: !738, line: 252, type: !180)
!2934 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2924, file: !738, line: 253, type: !147)
!2935 = !DILocalVariable(name: "flags", arg: 6, scope: !2924, file: !738, line: 253, type: !118)
!2936 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2924, file: !738, line: 254, type: !2927)
!2937 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2924, file: !738, line: 255, type: !183)
!2938 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2924, file: !738, line: 256, type: !183)
!2939 = !DILocalVariable(name: "unibyte_locale", scope: !2924, file: !738, line: 258, type: !186)
!2940 = !DILocalVariable(name: "len", scope: !2924, file: !738, line: 260, type: !180)
!2941 = !DILocalVariable(name: "orig_buffersize", scope: !2924, file: !738, line: 261, type: !180)
!2942 = !DILocalVariable(name: "quote_string", scope: !2924, file: !738, line: 262, type: !183)
!2943 = !DILocalVariable(name: "quote_string_len", scope: !2924, file: !738, line: 263, type: !180)
!2944 = !DILocalVariable(name: "backslash_escapes", scope: !2924, file: !738, line: 264, type: !186)
!2945 = !DILocalVariable(name: "elide_outer_quotes", scope: !2924, file: !738, line: 265, type: !186)
!2946 = !DILocalVariable(name: "encountered_single_quote", scope: !2924, file: !738, line: 266, type: !186)
!2947 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2924, file: !738, line: 267, type: !186)
!2948 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2924, file: !738, line: 309, type: !186)
!2949 = !DILocalVariable(name: "lq", scope: !2950, file: !738, line: 361, type: !183)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !738, line: 361, column: 11)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !738, line: 360, column: 13)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !738, line: 333, column: 7)
!2953 = distinct !DILexicalBlock(scope: !2924, file: !738, line: 312, column: 5)
!2954 = !DILocalVariable(name: "i", scope: !2955, file: !738, line: 395, type: !180)
!2955 = distinct !DILexicalBlock(scope: !2924, file: !738, line: 395, column: 3)
!2956 = !DILocalVariable(name: "is_right_quote", scope: !2957, file: !738, line: 397, type: !186)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !738, line: 396, column: 5)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !738, line: 395, column: 3)
!2959 = !DILocalVariable(name: "escaping", scope: !2957, file: !738, line: 398, type: !186)
!2960 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2957, file: !738, line: 399, type: !186)
!2961 = !DILocalVariable(name: "c", scope: !2957, file: !738, line: 417, type: !185)
!2962 = !DILocalVariable(name: "m", scope: !2963, file: !738, line: 598, type: !180)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 596, column: 11)
!2964 = distinct !DILexicalBlock(scope: !2957, file: !738, line: 419, column: 9)
!2965 = !DILocalVariable(name: "printable", scope: !2963, file: !738, line: 600, type: !186)
!2966 = !DILocalVariable(name: "mbs", scope: !2967, file: !738, line: 609, type: !805)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !738, line: 608, column: 15)
!2968 = distinct !DILexicalBlock(scope: !2963, file: !738, line: 602, column: 17)
!2969 = !DILocalVariable(name: "w", scope: !2970, file: !738, line: 618, type: !718)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !738, line: 617, column: 19)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !738, line: 616, column: 17)
!2972 = distinct !DILexicalBlock(scope: !2967, file: !738, line: 616, column: 17)
!2973 = !DILocalVariable(name: "bytes", scope: !2970, file: !738, line: 619, type: !180)
!2974 = !DILocalVariable(name: "j", scope: !2975, file: !738, line: 648, type: !180)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !738, line: 648, column: 29)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 647, column: 27)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !738, line: 645, column: 29)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !738, line: 636, column: 23)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !738, line: 628, column: 30)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !738, line: 623, column: 30)
!2981 = distinct !DILexicalBlock(scope: !2970, file: !738, line: 621, column: 25)
!2982 = !DILocalVariable(name: "ilim", scope: !2983, file: !738, line: 674, type: !180)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !738, line: 671, column: 15)
!2984 = distinct !DILexicalBlock(scope: !2963, file: !738, line: 670, column: 17)
!2985 = !DILabel(scope: !2924, name: "process_input", file: !738, line: 308)
!2986 = !DILabel(scope: !2987, name: "c_and_shell_escape", file: !738, line: 502)
!2987 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 478, column: 9)
!2988 = !DILabel(scope: !2987, name: "c_escape", file: !738, line: 507)
!2989 = !DILabel(scope: !2957, name: "store_escape", file: !738, line: 709)
!2990 = !DILabel(scope: !2957, name: "store_c", file: !738, line: 712)
!2991 = !DILabel(scope: !2924, name: "force_outer_quoting_style", file: !738, line: 753)
!2992 = !DILocation(line: 0, scope: !2924)
!2993 = !DILocation(line: 258, column: 25, scope: !2924)
!2994 = !DILocation(line: 258, column: 36, scope: !2924)
!2995 = !DILocation(line: 265, column: 8, scope: !2924)
!2996 = !DILocation(line: 267, column: 3, scope: !2924)
!2997 = !DILocation(line: 261, column: 10, scope: !2924)
!2998 = !DILocation(line: 262, column: 15, scope: !2924)
!2999 = !DILocation(line: 263, column: 10, scope: !2924)
!3000 = !DILocation(line: 264, column: 8, scope: !2924)
!3001 = !DILocation(line: 266, column: 8, scope: !2924)
!3002 = !DILocation(line: 267, column: 8, scope: !2924)
!3003 = !DILocation(line: 308, column: 2, scope: !2924)
!3004 = !DILocation(line: 311, column: 3, scope: !2924)
!3005 = !DILocation(line: 318, column: 11, scope: !2953)
!3006 = !DILocation(line: 318, column: 12, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2953, file: !738, line: 318, column: 11)
!3008 = !DILocation(line: 319, column: 9, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !738, line: 319, column: 9)
!3010 = distinct !DILexicalBlock(scope: !3007, file: !738, line: 319, column: 9)
!3011 = !DILocation(line: 319, column: 9, scope: !3010)
!3012 = !DILocation(line: 0, scope: !796, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 357, column: 26, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !738, line: 335, column: 11)
!3015 = distinct !DILexicalBlock(scope: !2952, file: !738, line: 334, column: 13)
!3016 = !DILocation(line: 199, column: 29, scope: !796, inlinedAt: !3013)
!3017 = !DILocation(line: 201, column: 19, scope: !3018, inlinedAt: !3013)
!3018 = distinct !DILexicalBlock(scope: !796, file: !738, line: 201, column: 7)
!3019 = !DILocation(line: 201, column: 7, scope: !796, inlinedAt: !3013)
!3020 = !DILocation(line: 229, column: 3, scope: !796, inlinedAt: !3013)
!3021 = !DILocation(line: 230, column: 3, scope: !796, inlinedAt: !3013)
!3022 = !DILocation(line: 230, column: 13, scope: !796, inlinedAt: !3013)
!3023 = !DILocalVariable(name: "ps", arg: 1, scope: !3024, file: !2780, line: 1135, type: !3027)
!3024 = distinct !DISubprogram(name: "mbszero", scope: !2780, file: !2780, line: 1135, type: !3025, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3028)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !3027}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!3028 = !{!3023}
!3029 = !DILocation(line: 0, scope: !3024, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 230, column: 18, scope: !796, inlinedAt: !3013)
!3031 = !DILocalVariable(name: "__dest", arg: 1, scope: !3032, file: !1458, line: 57, type: !178)
!3032 = distinct !DISubprogram(name: "memset", scope: !1458, file: !1458, line: 57, type: !1540, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3033)
!3033 = !{!3031, !3034, !3035}
!3034 = !DILocalVariable(name: "__ch", arg: 2, scope: !3032, file: !1458, line: 57, type: !118)
!3035 = !DILocalVariable(name: "__len", arg: 3, scope: !3032, file: !1458, line: 57, type: !180)
!3036 = !DILocation(line: 0, scope: !3032, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 1137, column: 3, scope: !3024, inlinedAt: !3030)
!3038 = !DILocation(line: 59, column: 10, scope: !3032, inlinedAt: !3037)
!3039 = !DILocation(line: 231, column: 7, scope: !3040, inlinedAt: !3013)
!3040 = distinct !DILexicalBlock(scope: !796, file: !738, line: 231, column: 7)
!3041 = !DILocation(line: 231, column: 40, scope: !3040, inlinedAt: !3013)
!3042 = !DILocation(line: 231, column: 45, scope: !3040, inlinedAt: !3013)
!3043 = !DILocation(line: 235, column: 1, scope: !796, inlinedAt: !3013)
!3044 = !DILocation(line: 0, scope: !796, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 358, column: 27, scope: !3014)
!3046 = !DILocation(line: 199, column: 29, scope: !796, inlinedAt: !3045)
!3047 = !DILocation(line: 201, column: 19, scope: !3018, inlinedAt: !3045)
!3048 = !DILocation(line: 201, column: 7, scope: !796, inlinedAt: !3045)
!3049 = !DILocation(line: 229, column: 3, scope: !796, inlinedAt: !3045)
!3050 = !DILocation(line: 230, column: 3, scope: !796, inlinedAt: !3045)
!3051 = !DILocation(line: 230, column: 13, scope: !796, inlinedAt: !3045)
!3052 = !DILocation(line: 0, scope: !3024, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 230, column: 18, scope: !796, inlinedAt: !3045)
!3054 = !DILocation(line: 0, scope: !3032, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 1137, column: 3, scope: !3024, inlinedAt: !3053)
!3056 = !DILocation(line: 59, column: 10, scope: !3032, inlinedAt: !3055)
!3057 = !DILocation(line: 231, column: 7, scope: !3040, inlinedAt: !3045)
!3058 = !DILocation(line: 231, column: 40, scope: !3040, inlinedAt: !3045)
!3059 = !DILocation(line: 231, column: 45, scope: !3040, inlinedAt: !3045)
!3060 = !DILocation(line: 235, column: 1, scope: !796, inlinedAt: !3045)
!3061 = !DILocation(line: 360, column: 14, scope: !2951)
!3062 = !DILocation(line: 360, column: 13, scope: !2952)
!3063 = !DILocation(line: 0, scope: !2950)
!3064 = !DILocation(line: 361, column: 45, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2950, file: !738, line: 361, column: 11)
!3066 = !DILocation(line: 361, column: 11, scope: !2950)
!3067 = !DILocation(line: 362, column: 13, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !738, line: 362, column: 13)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !738, line: 362, column: 13)
!3070 = !DILocation(line: 362, column: 13, scope: !3069)
!3071 = !DILocation(line: 361, column: 52, scope: !3065)
!3072 = distinct !{!3072, !3066, !3073, !1183}
!3073 = !DILocation(line: 362, column: 13, scope: !2950)
!3074 = !DILocation(line: 260, column: 10, scope: !2924)
!3075 = !DILocation(line: 365, column: 28, scope: !2952)
!3076 = !DILocation(line: 367, column: 7, scope: !2953)
!3077 = !DILocation(line: 370, column: 7, scope: !2953)
!3078 = !DILocation(line: 373, column: 7, scope: !2953)
!3079 = !DILocation(line: 376, column: 12, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2953, file: !738, line: 376, column: 11)
!3081 = !DILocation(line: 376, column: 11, scope: !2953)
!3082 = !DILocation(line: 381, column: 12, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2953, file: !738, line: 381, column: 11)
!3084 = !DILocation(line: 381, column: 11, scope: !2953)
!3085 = !DILocation(line: 382, column: 9, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !738, line: 382, column: 9)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !738, line: 382, column: 9)
!3088 = !DILocation(line: 382, column: 9, scope: !3087)
!3089 = !DILocation(line: 389, column: 7, scope: !2953)
!3090 = !DILocation(line: 392, column: 7, scope: !2953)
!3091 = !DILocation(line: 0, scope: !2955)
!3092 = !DILocation(line: 395, column: 8, scope: !2955)
!3093 = !DILocation(line: 309, column: 8, scope: !2924)
!3094 = !DILocation(line: 395, scope: !2955)
!3095 = !DILocation(line: 395, column: 34, scope: !2958)
!3096 = !DILocation(line: 395, column: 26, scope: !2958)
!3097 = !DILocation(line: 395, column: 48, scope: !2958)
!3098 = !DILocation(line: 395, column: 55, scope: !2958)
!3099 = !DILocation(line: 395, column: 3, scope: !2955)
!3100 = !DILocation(line: 395, column: 67, scope: !2958)
!3101 = !DILocation(line: 0, scope: !2957)
!3102 = !DILocation(line: 402, column: 11, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !2957, file: !738, line: 401, column: 11)
!3104 = !DILocation(line: 404, column: 17, scope: !3103)
!3105 = !DILocation(line: 405, column: 39, scope: !3103)
!3106 = !DILocation(line: 409, column: 32, scope: !3103)
!3107 = !DILocation(line: 405, column: 19, scope: !3103)
!3108 = !DILocation(line: 405, column: 15, scope: !3103)
!3109 = !DILocation(line: 410, column: 11, scope: !3103)
!3110 = !DILocation(line: 410, column: 25, scope: !3103)
!3111 = !DILocalVariable(name: "__s1", arg: 1, scope: !3112, file: !1149, line: 974, type: !1285)
!3112 = distinct !DISubprogram(name: "memeq", scope: !1149, file: !1149, line: 974, type: !1702, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3113)
!3113 = !{!3111, !3114, !3115}
!3114 = !DILocalVariable(name: "__s2", arg: 2, scope: !3112, file: !1149, line: 974, type: !1285)
!3115 = !DILocalVariable(name: "__n", arg: 3, scope: !3112, file: !1149, line: 974, type: !180)
!3116 = !DILocation(line: 0, scope: !3112, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 410, column: 14, scope: !3103)
!3118 = !DILocation(line: 976, column: 11, scope: !3112, inlinedAt: !3117)
!3119 = !DILocation(line: 976, column: 10, scope: !3112, inlinedAt: !3117)
!3120 = !DILocation(line: 401, column: 11, scope: !2957)
!3121 = !DILocation(line: 417, column: 25, scope: !2957)
!3122 = !DILocation(line: 418, column: 7, scope: !2957)
!3123 = !DILocation(line: 421, column: 15, scope: !2964)
!3124 = !DILocation(line: 423, column: 15, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !738, line: 423, column: 15)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !738, line: 422, column: 13)
!3127 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 421, column: 15)
!3128 = !DILocation(line: 423, column: 15, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !738, line: 423, column: 15)
!3130 = !DILocation(line: 423, column: 15, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !738, line: 423, column: 15)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !738, line: 423, column: 15)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !738, line: 423, column: 15)
!3134 = !DILocation(line: 423, column: 15, scope: !3132)
!3135 = !DILocation(line: 423, column: 15, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !738, line: 423, column: 15)
!3137 = distinct !DILexicalBlock(scope: !3133, file: !738, line: 423, column: 15)
!3138 = !DILocation(line: 423, column: 15, scope: !3137)
!3139 = !DILocation(line: 423, column: 15, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !738, line: 423, column: 15)
!3141 = distinct !DILexicalBlock(scope: !3133, file: !738, line: 423, column: 15)
!3142 = !DILocation(line: 423, column: 15, scope: !3141)
!3143 = !DILocation(line: 423, column: 15, scope: !3133)
!3144 = !DILocation(line: 423, column: 15, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !738, line: 423, column: 15)
!3146 = distinct !DILexicalBlock(scope: !3125, file: !738, line: 423, column: 15)
!3147 = !DILocation(line: 423, column: 15, scope: !3146)
!3148 = !DILocation(line: 431, column: 19, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3126, file: !738, line: 430, column: 19)
!3150 = !DILocation(line: 431, column: 24, scope: !3149)
!3151 = !DILocation(line: 431, column: 28, scope: !3149)
!3152 = !DILocation(line: 431, column: 38, scope: !3149)
!3153 = !DILocation(line: 431, column: 48, scope: !3149)
!3154 = !DILocation(line: 431, column: 59, scope: !3149)
!3155 = !DILocation(line: 433, column: 19, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !738, line: 433, column: 19)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !738, line: 433, column: 19)
!3158 = distinct !DILexicalBlock(scope: !3149, file: !738, line: 432, column: 17)
!3159 = !DILocation(line: 433, column: 19, scope: !3157)
!3160 = !DILocation(line: 434, column: 19, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !738, line: 434, column: 19)
!3162 = distinct !DILexicalBlock(scope: !3158, file: !738, line: 434, column: 19)
!3163 = !DILocation(line: 434, column: 19, scope: !3162)
!3164 = !DILocation(line: 435, column: 17, scope: !3158)
!3165 = !DILocation(line: 442, column: 20, scope: !3127)
!3166 = !DILocation(line: 447, column: 11, scope: !2964)
!3167 = !DILocation(line: 450, column: 19, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 448, column: 13)
!3169 = !DILocation(line: 456, column: 19, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3168, file: !738, line: 455, column: 19)
!3171 = !DILocation(line: 456, column: 24, scope: !3170)
!3172 = !DILocation(line: 456, column: 28, scope: !3170)
!3173 = !DILocation(line: 456, column: 38, scope: !3170)
!3174 = !DILocation(line: 456, column: 47, scope: !3170)
!3175 = !DILocation(line: 456, column: 41, scope: !3170)
!3176 = !DILocation(line: 456, column: 52, scope: !3170)
!3177 = !DILocation(line: 455, column: 19, scope: !3168)
!3178 = !DILocation(line: 457, column: 25, scope: !3170)
!3179 = !DILocation(line: 457, column: 17, scope: !3170)
!3180 = !DILocation(line: 464, column: 25, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3170, file: !738, line: 458, column: 19)
!3182 = !DILocation(line: 468, column: 21, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !738, line: 468, column: 21)
!3184 = distinct !DILexicalBlock(scope: !3181, file: !738, line: 468, column: 21)
!3185 = !DILocation(line: 468, column: 21, scope: !3184)
!3186 = !DILocation(line: 469, column: 21, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !738, line: 469, column: 21)
!3188 = distinct !DILexicalBlock(scope: !3181, file: !738, line: 469, column: 21)
!3189 = !DILocation(line: 469, column: 21, scope: !3188)
!3190 = !DILocation(line: 470, column: 21, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !738, line: 470, column: 21)
!3192 = distinct !DILexicalBlock(scope: !3181, file: !738, line: 470, column: 21)
!3193 = !DILocation(line: 470, column: 21, scope: !3192)
!3194 = !DILocation(line: 471, column: 21, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !738, line: 471, column: 21)
!3196 = distinct !DILexicalBlock(scope: !3181, file: !738, line: 471, column: 21)
!3197 = !DILocation(line: 471, column: 21, scope: !3196)
!3198 = !DILocation(line: 472, column: 21, scope: !3181)
!3199 = !DILocation(line: 482, column: 33, scope: !2987)
!3200 = !DILocation(line: 483, column: 33, scope: !2987)
!3201 = !DILocation(line: 485, column: 33, scope: !2987)
!3202 = !DILocation(line: 486, column: 33, scope: !2987)
!3203 = !DILocation(line: 487, column: 33, scope: !2987)
!3204 = !DILocation(line: 490, column: 17, scope: !2987)
!3205 = !DILocation(line: 492, column: 21, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !738, line: 491, column: 15)
!3207 = distinct !DILexicalBlock(scope: !2987, file: !738, line: 490, column: 17)
!3208 = !DILocation(line: 499, column: 35, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !2987, file: !738, line: 499, column: 17)
!3210 = !DILocation(line: 499, column: 57, scope: !3209)
!3211 = !DILocation(line: 0, scope: !2987)
!3212 = !DILocation(line: 502, column: 11, scope: !2987)
!3213 = !DILocation(line: 504, column: 17, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !2987, file: !738, line: 503, column: 17)
!3215 = !DILocation(line: 507, column: 11, scope: !2987)
!3216 = !DILocation(line: 508, column: 17, scope: !2987)
!3217 = !DILocation(line: 517, column: 15, scope: !2964)
!3218 = !DILocation(line: 517, column: 40, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 517, column: 15)
!3220 = !DILocation(line: 517, column: 47, scope: !3219)
!3221 = !DILocation(line: 517, column: 18, scope: !3219)
!3222 = !DILocation(line: 521, column: 17, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 521, column: 15)
!3224 = !DILocation(line: 521, column: 15, scope: !2964)
!3225 = !DILocation(line: 525, column: 11, scope: !2964)
!3226 = !DILocation(line: 537, column: 15, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 536, column: 15)
!3228 = !DILocation(line: 544, column: 15, scope: !2964)
!3229 = !DILocation(line: 546, column: 19, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !738, line: 545, column: 13)
!3231 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 544, column: 15)
!3232 = !DILocation(line: 549, column: 19, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !738, line: 549, column: 19)
!3234 = !DILocation(line: 549, column: 30, scope: !3233)
!3235 = !DILocation(line: 558, column: 15, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !738, line: 558, column: 15)
!3237 = distinct !DILexicalBlock(scope: !3230, file: !738, line: 558, column: 15)
!3238 = !DILocation(line: 558, column: 15, scope: !3237)
!3239 = !DILocation(line: 559, column: 15, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !738, line: 559, column: 15)
!3241 = distinct !DILexicalBlock(scope: !3230, file: !738, line: 559, column: 15)
!3242 = !DILocation(line: 559, column: 15, scope: !3241)
!3243 = !DILocation(line: 560, column: 15, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !738, line: 560, column: 15)
!3245 = distinct !DILexicalBlock(scope: !3230, file: !738, line: 560, column: 15)
!3246 = !DILocation(line: 560, column: 15, scope: !3245)
!3247 = !DILocation(line: 562, column: 13, scope: !3230)
!3248 = !DILocation(line: 602, column: 17, scope: !2963)
!3249 = !DILocation(line: 0, scope: !2963)
!3250 = !DILocation(line: 605, column: 29, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !2968, file: !738, line: 603, column: 15)
!3252 = !DILocation(line: 605, column: 27, scope: !3251)
!3253 = !DILocation(line: 668, column: 40, scope: !2963)
!3254 = !DILocation(line: 670, column: 23, scope: !2984)
!3255 = !DILocation(line: 609, column: 17, scope: !2967)
!3256 = !DILocation(line: 609, column: 27, scope: !2967)
!3257 = !DILocation(line: 0, scope: !3024, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 609, column: 32, scope: !2967)
!3259 = !DILocation(line: 0, scope: !3032, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1137, column: 3, scope: !3024, inlinedAt: !3258)
!3261 = !DILocation(line: 59, column: 10, scope: !3032, inlinedAt: !3260)
!3262 = !DILocation(line: 613, column: 29, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !2967, file: !738, line: 613, column: 21)
!3264 = !DILocation(line: 613, column: 21, scope: !2967)
!3265 = !DILocation(line: 614, column: 29, scope: !3263)
!3266 = !DILocation(line: 614, column: 19, scope: !3263)
!3267 = !DILocation(line: 618, column: 21, scope: !2970)
!3268 = !DILocation(line: 620, column: 54, scope: !2970)
!3269 = !DILocation(line: 0, scope: !2970)
!3270 = !DILocation(line: 619, column: 36, scope: !2970)
!3271 = !DILocation(line: 621, column: 25, scope: !2970)
!3272 = !DILocation(line: 631, column: 38, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !2979, file: !738, line: 629, column: 23)
!3274 = !DILocation(line: 631, column: 48, scope: !3273)
!3275 = !DILocation(line: 665, column: 19, scope: !2971)
!3276 = !DILocation(line: 666, column: 15, scope: !2968)
!3277 = !DILocation(line: 626, column: 25, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !2980, file: !738, line: 624, column: 23)
!3279 = !DILocation(line: 631, column: 51, scope: !3273)
!3280 = !DILocation(line: 631, column: 25, scope: !3273)
!3281 = !DILocation(line: 632, column: 28, scope: !3273)
!3282 = !DILocation(line: 631, column: 34, scope: !3273)
!3283 = distinct !{!3283, !3280, !3281, !1183}
!3284 = !DILocation(line: 646, column: 29, scope: !2977)
!3285 = !DILocation(line: 0, scope: !2975)
!3286 = !DILocation(line: 649, column: 49, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !2975, file: !738, line: 648, column: 29)
!3288 = !DILocation(line: 649, column: 39, scope: !3287)
!3289 = !DILocation(line: 649, column: 31, scope: !3287)
!3290 = !DILocation(line: 648, column: 60, scope: !3287)
!3291 = !DILocation(line: 648, column: 50, scope: !3287)
!3292 = !DILocation(line: 648, column: 29, scope: !2975)
!3293 = distinct !{!3293, !3292, !3294, !1183}
!3294 = !DILocation(line: 654, column: 33, scope: !2975)
!3295 = !DILocation(line: 657, column: 43, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !2978, file: !738, line: 657, column: 29)
!3297 = !DILocalVariable(name: "wc", arg: 1, scope: !3298, file: !3299, line: 865, type: !3302)
!3298 = distinct !DISubprogram(name: "c32isprint", scope: !3299, file: !3299, line: 865, type: !3300, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3304)
!3299 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!118, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3303, line: 20, baseType: !110)
!3303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3304 = !{!3297}
!3305 = !DILocation(line: 0, scope: !3298, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 657, column: 31, scope: !3296)
!3307 = !DILocation(line: 871, column: 10, scope: !3298, inlinedAt: !3306)
!3308 = !DILocation(line: 657, column: 31, scope: !3296)
!3309 = !DILocation(line: 657, column: 29, scope: !2978)
!3310 = !DILocation(line: 664, column: 23, scope: !2970)
!3311 = !DILocation(line: 670, column: 19, scope: !2984)
!3312 = !DILocation(line: 670, column: 45, scope: !2984)
!3313 = !DILocation(line: 674, column: 33, scope: !2983)
!3314 = !DILocation(line: 0, scope: !2983)
!3315 = !DILocation(line: 676, column: 17, scope: !2983)
!3316 = !DILocation(line: 398, column: 12, scope: !2957)
!3317 = !DILocation(line: 678, column: 43, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !738, line: 678, column: 25)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !738, line: 677, column: 19)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !738, line: 676, column: 17)
!3321 = distinct !DILexicalBlock(scope: !2983, file: !738, line: 676, column: 17)
!3322 = !DILocation(line: 680, column: 25, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !738, line: 680, column: 25)
!3324 = distinct !DILexicalBlock(scope: !3318, file: !738, line: 679, column: 23)
!3325 = !DILocation(line: 680, column: 25, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !738, line: 680, column: 25)
!3327 = !DILocation(line: 680, column: 25, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !738, line: 680, column: 25)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !738, line: 680, column: 25)
!3330 = distinct !DILexicalBlock(scope: !3326, file: !738, line: 680, column: 25)
!3331 = !DILocation(line: 680, column: 25, scope: !3329)
!3332 = !DILocation(line: 680, column: 25, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !738, line: 680, column: 25)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !738, line: 680, column: 25)
!3335 = !DILocation(line: 680, column: 25, scope: !3334)
!3336 = !DILocation(line: 680, column: 25, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !738, line: 680, column: 25)
!3338 = distinct !DILexicalBlock(scope: !3330, file: !738, line: 680, column: 25)
!3339 = !DILocation(line: 680, column: 25, scope: !3338)
!3340 = !DILocation(line: 680, column: 25, scope: !3330)
!3341 = !DILocation(line: 680, column: 25, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !738, line: 680, column: 25)
!3343 = distinct !DILexicalBlock(scope: !3323, file: !738, line: 680, column: 25)
!3344 = !DILocation(line: 680, column: 25, scope: !3343)
!3345 = !DILocation(line: 681, column: 25, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !738, line: 681, column: 25)
!3347 = distinct !DILexicalBlock(scope: !3324, file: !738, line: 681, column: 25)
!3348 = !DILocation(line: 681, column: 25, scope: !3347)
!3349 = !DILocation(line: 682, column: 25, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !738, line: 682, column: 25)
!3351 = distinct !DILexicalBlock(scope: !3324, file: !738, line: 682, column: 25)
!3352 = !DILocation(line: 682, column: 25, scope: !3351)
!3353 = !DILocation(line: 683, column: 38, scope: !3324)
!3354 = !DILocation(line: 683, column: 33, scope: !3324)
!3355 = !DILocation(line: 684, column: 23, scope: !3324)
!3356 = !DILocation(line: 685, column: 30, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3318, file: !738, line: 685, column: 30)
!3358 = !DILocation(line: 685, column: 30, scope: !3318)
!3359 = !DILocation(line: 687, column: 25, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !738, line: 687, column: 25)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !738, line: 687, column: 25)
!3362 = distinct !DILexicalBlock(scope: !3357, file: !738, line: 686, column: 23)
!3363 = !DILocation(line: 687, column: 25, scope: !3361)
!3364 = !DILocation(line: 689, column: 23, scope: !3362)
!3365 = !DILocation(line: 690, column: 35, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3319, file: !738, line: 690, column: 25)
!3367 = !DILocation(line: 690, column: 30, scope: !3366)
!3368 = !DILocation(line: 690, column: 25, scope: !3319)
!3369 = !DILocation(line: 692, column: 21, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !738, line: 692, column: 21)
!3371 = distinct !DILexicalBlock(scope: !3319, file: !738, line: 692, column: 21)
!3372 = !DILocation(line: 692, column: 21, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !738, line: 692, column: 21)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !738, line: 692, column: 21)
!3375 = distinct !DILexicalBlock(scope: !3370, file: !738, line: 692, column: 21)
!3376 = !DILocation(line: 692, column: 21, scope: !3374)
!3377 = !DILocation(line: 692, column: 21, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !738, line: 692, column: 21)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !738, line: 692, column: 21)
!3380 = !DILocation(line: 692, column: 21, scope: !3379)
!3381 = !DILocation(line: 692, column: 21, scope: !3375)
!3382 = !DILocation(line: 0, scope: !3319)
!3383 = !DILocation(line: 693, column: 21, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !738, line: 693, column: 21)
!3385 = distinct !DILexicalBlock(scope: !3319, file: !738, line: 693, column: 21)
!3386 = !DILocation(line: 693, column: 21, scope: !3385)
!3387 = !DILocation(line: 694, column: 25, scope: !3319)
!3388 = !DILocation(line: 676, column: 17, scope: !3320)
!3389 = distinct !{!3389, !3390, !3391}
!3390 = !DILocation(line: 676, column: 17, scope: !3321)
!3391 = !DILocation(line: 695, column: 19, scope: !3321)
!3392 = !DILocation(line: 409, column: 30, scope: !3103)
!3393 = !DILocation(line: 702, column: 34, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !2957, file: !738, line: 702, column: 11)
!3395 = !DILocation(line: 704, column: 14, scope: !3394)
!3396 = !DILocation(line: 705, column: 14, scope: !3394)
!3397 = !DILocation(line: 705, column: 35, scope: !3394)
!3398 = !DILocation(line: 705, column: 17, scope: !3394)
!3399 = !DILocation(line: 705, column: 47, scope: !3394)
!3400 = !DILocation(line: 705, column: 65, scope: !3394)
!3401 = !DILocation(line: 706, column: 11, scope: !3394)
!3402 = !DILocation(line: 702, column: 11, scope: !2957)
!3403 = !DILocation(line: 395, column: 15, scope: !2955)
!3404 = !DILocation(line: 709, column: 5, scope: !2957)
!3405 = !DILocation(line: 710, column: 7, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !2957, file: !738, line: 710, column: 7)
!3407 = !DILocation(line: 710, column: 7, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3406, file: !738, line: 710, column: 7)
!3409 = !DILocation(line: 710, column: 7, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !738, line: 710, column: 7)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !738, line: 710, column: 7)
!3412 = distinct !DILexicalBlock(scope: !3408, file: !738, line: 710, column: 7)
!3413 = !DILocation(line: 710, column: 7, scope: !3411)
!3414 = !DILocation(line: 710, column: 7, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !738, line: 710, column: 7)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !738, line: 710, column: 7)
!3417 = !DILocation(line: 710, column: 7, scope: !3416)
!3418 = !DILocation(line: 710, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !738, line: 710, column: 7)
!3420 = distinct !DILexicalBlock(scope: !3412, file: !738, line: 710, column: 7)
!3421 = !DILocation(line: 710, column: 7, scope: !3420)
!3422 = !DILocation(line: 710, column: 7, scope: !3412)
!3423 = !DILocation(line: 710, column: 7, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !738, line: 710, column: 7)
!3425 = distinct !DILexicalBlock(scope: !3406, file: !738, line: 710, column: 7)
!3426 = !DILocation(line: 710, column: 7, scope: !3425)
!3427 = !DILocation(line: 712, column: 5, scope: !2957)
!3428 = !DILocation(line: 713, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !738, line: 713, column: 7)
!3430 = distinct !DILexicalBlock(scope: !2957, file: !738, line: 713, column: 7)
!3431 = !DILocation(line: 417, column: 21, scope: !2957)
!3432 = !DILocation(line: 713, column: 7, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !738, line: 713, column: 7)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !738, line: 713, column: 7)
!3435 = distinct !DILexicalBlock(scope: !3429, file: !738, line: 713, column: 7)
!3436 = !DILocation(line: 713, column: 7, scope: !3434)
!3437 = !DILocation(line: 713, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !738, line: 713, column: 7)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !738, line: 713, column: 7)
!3440 = !DILocation(line: 713, column: 7, scope: !3439)
!3441 = !DILocation(line: 713, column: 7, scope: !3435)
!3442 = !DILocation(line: 714, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !738, line: 714, column: 7)
!3444 = distinct !DILexicalBlock(scope: !2957, file: !738, line: 714, column: 7)
!3445 = !DILocation(line: 714, column: 7, scope: !3444)
!3446 = !DILocation(line: 716, column: 13, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !2957, file: !738, line: 716, column: 11)
!3448 = !DILocation(line: 716, column: 11, scope: !2957)
!3449 = !DILocation(line: 718, column: 5, scope: !2958)
!3450 = !DILocation(line: 395, column: 82, scope: !2958)
!3451 = !DILocation(line: 395, column: 3, scope: !2958)
!3452 = distinct !{!3452, !3099, !3453, !1183}
!3453 = !DILocation(line: 718, column: 5, scope: !2955)
!3454 = !DILocation(line: 720, column: 11, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !2924, file: !738, line: 720, column: 7)
!3456 = !DILocation(line: 720, column: 16, scope: !3455)
!3457 = !DILocation(line: 728, column: 51, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !2924, file: !738, line: 728, column: 7)
!3459 = !DILocation(line: 731, column: 11, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !738, line: 731, column: 11)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !738, line: 730, column: 5)
!3462 = !DILocation(line: 731, column: 11, scope: !3461)
!3463 = !DILocation(line: 732, column: 16, scope: !3460)
!3464 = !DILocation(line: 732, column: 9, scope: !3460)
!3465 = !DILocation(line: 736, column: 18, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3460, file: !738, line: 736, column: 16)
!3467 = !DILocation(line: 736, column: 29, scope: !3466)
!3468 = !DILocation(line: 745, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !2924, file: !738, line: 745, column: 7)
!3470 = !DILocation(line: 745, column: 20, scope: !3469)
!3471 = !DILocation(line: 746, column: 12, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !738, line: 746, column: 5)
!3473 = distinct !DILexicalBlock(scope: !3469, file: !738, line: 746, column: 5)
!3474 = !DILocation(line: 746, column: 5, scope: !3473)
!3475 = !DILocation(line: 747, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !738, line: 747, column: 7)
!3477 = distinct !DILexicalBlock(scope: !3472, file: !738, line: 747, column: 7)
!3478 = !DILocation(line: 747, column: 7, scope: !3477)
!3479 = !DILocation(line: 746, column: 39, scope: !3472)
!3480 = distinct !{!3480, !3474, !3481, !1183}
!3481 = !DILocation(line: 747, column: 7, scope: !3473)
!3482 = !DILocation(line: 749, column: 11, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !2924, file: !738, line: 749, column: 7)
!3484 = !DILocation(line: 749, column: 7, scope: !2924)
!3485 = !DILocation(line: 750, column: 5, scope: !3483)
!3486 = !DILocation(line: 750, column: 17, scope: !3483)
!3487 = !DILocation(line: 753, column: 2, scope: !2924)
!3488 = !DILocation(line: 756, column: 51, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !2924, file: !738, line: 756, column: 7)
!3490 = !DILocation(line: 756, column: 21, scope: !3489)
!3491 = !DILocation(line: 760, column: 42, scope: !2924)
!3492 = !DILocation(line: 758, column: 10, scope: !2924)
!3493 = !DILocation(line: 758, column: 3, scope: !2924)
!3494 = !DILocation(line: 762, column: 1, scope: !2924)
!3495 = !DISubprogram(name: "iswprint", scope: !3496, file: !3496, line: 120, type: !3300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!3496 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3497 = distinct !DISubprogram(name: "quotearg_alloc", scope: !738, file: !738, line: 788, type: !3498, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!177, !183, !180, !2817}
!3500 = !{!3501, !3502, !3503}
!3501 = !DILocalVariable(name: "arg", arg: 1, scope: !3497, file: !738, line: 788, type: !183)
!3502 = !DILocalVariable(name: "argsize", arg: 2, scope: !3497, file: !738, line: 788, type: !180)
!3503 = !DILocalVariable(name: "o", arg: 3, scope: !3497, file: !738, line: 789, type: !2817)
!3504 = !DILocation(line: 0, scope: !3497)
!3505 = !DILocalVariable(name: "arg", arg: 1, scope: !3506, file: !738, line: 801, type: !183)
!3506 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !738, file: !738, line: 801, type: !3507, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!177, !183, !180, !980, !2817}
!3509 = !{!3505, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517}
!3510 = !DILocalVariable(name: "argsize", arg: 2, scope: !3506, file: !738, line: 801, type: !180)
!3511 = !DILocalVariable(name: "size", arg: 3, scope: !3506, file: !738, line: 801, type: !980)
!3512 = !DILocalVariable(name: "o", arg: 4, scope: !3506, file: !738, line: 802, type: !2817)
!3513 = !DILocalVariable(name: "p", scope: !3506, file: !738, line: 804, type: !2817)
!3514 = !DILocalVariable(name: "saved_errno", scope: !3506, file: !738, line: 805, type: !118)
!3515 = !DILocalVariable(name: "flags", scope: !3506, file: !738, line: 807, type: !118)
!3516 = !DILocalVariable(name: "bufsize", scope: !3506, file: !738, line: 808, type: !180)
!3517 = !DILocalVariable(name: "buf", scope: !3506, file: !738, line: 812, type: !177)
!3518 = !DILocation(line: 0, scope: !3506, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 791, column: 10, scope: !3497)
!3520 = !DILocation(line: 804, column: 37, scope: !3506, inlinedAt: !3519)
!3521 = !DILocation(line: 805, column: 21, scope: !3506, inlinedAt: !3519)
!3522 = !DILocation(line: 807, column: 18, scope: !3506, inlinedAt: !3519)
!3523 = !DILocation(line: 807, column: 24, scope: !3506, inlinedAt: !3519)
!3524 = !DILocation(line: 808, column: 72, scope: !3506, inlinedAt: !3519)
!3525 = !DILocation(line: 809, column: 56, scope: !3506, inlinedAt: !3519)
!3526 = !DILocation(line: 810, column: 49, scope: !3506, inlinedAt: !3519)
!3527 = !DILocation(line: 811, column: 49, scope: !3506, inlinedAt: !3519)
!3528 = !DILocation(line: 808, column: 20, scope: !3506, inlinedAt: !3519)
!3529 = !DILocation(line: 811, column: 62, scope: !3506, inlinedAt: !3519)
!3530 = !DILocation(line: 812, column: 15, scope: !3506, inlinedAt: !3519)
!3531 = !DILocation(line: 813, column: 60, scope: !3506, inlinedAt: !3519)
!3532 = !DILocation(line: 815, column: 32, scope: !3506, inlinedAt: !3519)
!3533 = !DILocation(line: 815, column: 47, scope: !3506, inlinedAt: !3519)
!3534 = !DILocation(line: 813, column: 3, scope: !3506, inlinedAt: !3519)
!3535 = !DILocation(line: 816, column: 9, scope: !3506, inlinedAt: !3519)
!3536 = !DILocation(line: 791, column: 3, scope: !3497)
!3537 = !DILocation(line: 0, scope: !3506)
!3538 = !DILocation(line: 804, column: 37, scope: !3506)
!3539 = !DILocation(line: 805, column: 21, scope: !3506)
!3540 = !DILocation(line: 807, column: 18, scope: !3506)
!3541 = !DILocation(line: 807, column: 27, scope: !3506)
!3542 = !DILocation(line: 807, column: 24, scope: !3506)
!3543 = !DILocation(line: 808, column: 72, scope: !3506)
!3544 = !DILocation(line: 809, column: 56, scope: !3506)
!3545 = !DILocation(line: 810, column: 49, scope: !3506)
!3546 = !DILocation(line: 811, column: 49, scope: !3506)
!3547 = !DILocation(line: 808, column: 20, scope: !3506)
!3548 = !DILocation(line: 811, column: 62, scope: !3506)
!3549 = !DILocation(line: 812, column: 15, scope: !3506)
!3550 = !DILocation(line: 813, column: 60, scope: !3506)
!3551 = !DILocation(line: 815, column: 32, scope: !3506)
!3552 = !DILocation(line: 815, column: 47, scope: !3506)
!3553 = !DILocation(line: 813, column: 3, scope: !3506)
!3554 = !DILocation(line: 816, column: 9, scope: !3506)
!3555 = !DILocation(line: 817, column: 7, scope: !3506)
!3556 = !DILocation(line: 818, column: 11, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3506, file: !738, line: 817, column: 7)
!3558 = !DILocation(line: 818, column: 5, scope: !3557)
!3559 = !DILocation(line: 819, column: 3, scope: !3506)
!3560 = distinct !DISubprogram(name: "quotearg_free", scope: !738, file: !738, line: 837, type: !600, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3561)
!3561 = !{!3562, !3563}
!3562 = !DILocalVariable(name: "sv", scope: !3560, file: !738, line: 839, type: !819)
!3563 = !DILocalVariable(name: "i", scope: !3564, file: !738, line: 840, type: !118)
!3564 = distinct !DILexicalBlock(scope: !3560, file: !738, line: 840, column: 3)
!3565 = !DILocation(line: 839, column: 24, scope: !3560)
!3566 = !DILocation(line: 0, scope: !3560)
!3567 = !DILocation(line: 0, scope: !3564)
!3568 = !DILocation(line: 840, column: 21, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3564, file: !738, line: 840, column: 3)
!3570 = !DILocation(line: 840, column: 3, scope: !3564)
!3571 = !DILocation(line: 842, column: 13, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3560, file: !738, line: 842, column: 7)
!3573 = !{!3574, !1056, i64 8}
!3574 = !{!"slotvec", !1338, i64 0, !1056, i64 8}
!3575 = !DILocation(line: 842, column: 17, scope: !3572)
!3576 = !DILocation(line: 842, column: 7, scope: !3560)
!3577 = !DILocation(line: 841, column: 17, scope: !3569)
!3578 = !DILocation(line: 841, column: 5, scope: !3569)
!3579 = !DILocation(line: 840, column: 32, scope: !3569)
!3580 = distinct !{!3580, !3570, !3581, !1183}
!3581 = !DILocation(line: 841, column: 20, scope: !3564)
!3582 = !DILocation(line: 844, column: 7, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3572, file: !738, line: 843, column: 5)
!3584 = !DILocation(line: 845, column: 21, scope: !3583)
!3585 = !{!3574, !1338, i64 0}
!3586 = !DILocation(line: 846, column: 20, scope: !3583)
!3587 = !DILocation(line: 847, column: 5, scope: !3583)
!3588 = !DILocation(line: 848, column: 10, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3560, file: !738, line: 848, column: 7)
!3590 = !DILocation(line: 848, column: 7, scope: !3560)
!3591 = !DILocation(line: 850, column: 7, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !738, line: 849, column: 5)
!3593 = !DILocation(line: 851, column: 15, scope: !3592)
!3594 = !DILocation(line: 852, column: 5, scope: !3592)
!3595 = !DILocation(line: 853, column: 10, scope: !3560)
!3596 = !DILocation(line: 854, column: 1, scope: !3560)
!3597 = distinct !DISubprogram(name: "quotearg_n", scope: !738, file: !738, line: 919, type: !1254, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3598)
!3598 = !{!3599, !3600}
!3599 = !DILocalVariable(name: "n", arg: 1, scope: !3597, file: !738, line: 919, type: !118)
!3600 = !DILocalVariable(name: "arg", arg: 2, scope: !3597, file: !738, line: 919, type: !183)
!3601 = !DILocation(line: 0, scope: !3597)
!3602 = !DILocation(line: 921, column: 10, scope: !3597)
!3603 = !DILocation(line: 921, column: 3, scope: !3597)
!3604 = distinct !DISubprogram(name: "quotearg_n_options", scope: !738, file: !738, line: 866, type: !3605, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!177, !118, !183, !180, !2817}
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3618, !3619, !3621, !3622, !3623}
!3608 = !DILocalVariable(name: "n", arg: 1, scope: !3604, file: !738, line: 866, type: !118)
!3609 = !DILocalVariable(name: "arg", arg: 2, scope: !3604, file: !738, line: 866, type: !183)
!3610 = !DILocalVariable(name: "argsize", arg: 3, scope: !3604, file: !738, line: 866, type: !180)
!3611 = !DILocalVariable(name: "options", arg: 4, scope: !3604, file: !738, line: 867, type: !2817)
!3612 = !DILocalVariable(name: "saved_errno", scope: !3604, file: !738, line: 869, type: !118)
!3613 = !DILocalVariable(name: "sv", scope: !3604, file: !738, line: 871, type: !819)
!3614 = !DILocalVariable(name: "nslots_max", scope: !3604, file: !738, line: 873, type: !118)
!3615 = !DILocalVariable(name: "preallocated", scope: !3616, file: !738, line: 879, type: !186)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !738, line: 878, column: 5)
!3617 = distinct !DILexicalBlock(scope: !3604, file: !738, line: 877, column: 7)
!3618 = !DILocalVariable(name: "new_nslots", scope: !3616, file: !738, line: 880, type: !297)
!3619 = !DILocalVariable(name: "size", scope: !3620, file: !738, line: 891, type: !180)
!3620 = distinct !DILexicalBlock(scope: !3604, file: !738, line: 890, column: 3)
!3621 = !DILocalVariable(name: "val", scope: !3620, file: !738, line: 892, type: !177)
!3622 = !DILocalVariable(name: "flags", scope: !3620, file: !738, line: 894, type: !118)
!3623 = !DILocalVariable(name: "qsize", scope: !3620, file: !738, line: 895, type: !180)
!3624 = !DILocation(line: 0, scope: !3604)
!3625 = !DILocation(line: 869, column: 21, scope: !3604)
!3626 = !DILocation(line: 871, column: 24, scope: !3604)
!3627 = !DILocation(line: 874, column: 17, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3604, file: !738, line: 874, column: 7)
!3629 = !DILocation(line: 875, column: 5, scope: !3628)
!3630 = !DILocation(line: 877, column: 7, scope: !3617)
!3631 = !DILocation(line: 877, column: 14, scope: !3617)
!3632 = !DILocation(line: 877, column: 7, scope: !3604)
!3633 = !DILocation(line: 879, column: 31, scope: !3616)
!3634 = !DILocation(line: 0, scope: !3616)
!3635 = !DILocation(line: 880, column: 7, scope: !3616)
!3636 = !DILocation(line: 880, column: 26, scope: !3616)
!3637 = !DILocation(line: 880, column: 13, scope: !3616)
!3638 = !DILocation(line: 882, column: 31, scope: !3616)
!3639 = !DILocation(line: 883, column: 33, scope: !3616)
!3640 = !DILocation(line: 883, column: 42, scope: !3616)
!3641 = !DILocation(line: 883, column: 31, scope: !3616)
!3642 = !DILocation(line: 882, column: 22, scope: !3616)
!3643 = !DILocation(line: 882, column: 15, scope: !3616)
!3644 = !DILocation(line: 884, column: 11, scope: !3616)
!3645 = !DILocation(line: 885, column: 15, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3616, file: !738, line: 884, column: 11)
!3647 = !{i64 0, i64 8, !1337, i64 8, i64 8, !1055}
!3648 = !DILocation(line: 885, column: 9, scope: !3646)
!3649 = !DILocation(line: 886, column: 20, scope: !3616)
!3650 = !DILocation(line: 886, column: 18, scope: !3616)
!3651 = !DILocation(line: 886, column: 32, scope: !3616)
!3652 = !DILocation(line: 886, column: 43, scope: !3616)
!3653 = !DILocation(line: 886, column: 53, scope: !3616)
!3654 = !DILocation(line: 0, scope: !3032, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 886, column: 7, scope: !3616)
!3656 = !DILocation(line: 59, column: 10, scope: !3032, inlinedAt: !3655)
!3657 = !DILocation(line: 887, column: 16, scope: !3616)
!3658 = !DILocation(line: 887, column: 14, scope: !3616)
!3659 = !DILocation(line: 888, column: 5, scope: !3617)
!3660 = !DILocation(line: 888, column: 5, scope: !3616)
!3661 = !DILocation(line: 891, column: 19, scope: !3620)
!3662 = !DILocation(line: 891, column: 25, scope: !3620)
!3663 = !DILocation(line: 0, scope: !3620)
!3664 = !DILocation(line: 892, column: 23, scope: !3620)
!3665 = !DILocation(line: 894, column: 26, scope: !3620)
!3666 = !DILocation(line: 894, column: 32, scope: !3620)
!3667 = !DILocation(line: 896, column: 55, scope: !3620)
!3668 = !DILocation(line: 897, column: 55, scope: !3620)
!3669 = !DILocation(line: 898, column: 55, scope: !3620)
!3670 = !DILocation(line: 899, column: 55, scope: !3620)
!3671 = !DILocation(line: 895, column: 20, scope: !3620)
!3672 = !DILocation(line: 901, column: 14, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3620, file: !738, line: 901, column: 9)
!3674 = !DILocation(line: 901, column: 9, scope: !3620)
!3675 = !DILocation(line: 903, column: 35, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3673, file: !738, line: 902, column: 7)
!3677 = !DILocation(line: 903, column: 20, scope: !3676)
!3678 = !DILocation(line: 904, column: 17, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3676, file: !738, line: 904, column: 13)
!3680 = !DILocation(line: 904, column: 13, scope: !3676)
!3681 = !DILocation(line: 905, column: 11, scope: !3679)
!3682 = !DILocation(line: 906, column: 27, scope: !3676)
!3683 = !DILocation(line: 906, column: 19, scope: !3676)
!3684 = !DILocation(line: 907, column: 69, scope: !3676)
!3685 = !DILocation(line: 909, column: 44, scope: !3676)
!3686 = !DILocation(line: 910, column: 44, scope: !3676)
!3687 = !DILocation(line: 907, column: 9, scope: !3676)
!3688 = !DILocation(line: 911, column: 7, scope: !3676)
!3689 = !DILocation(line: 913, column: 11, scope: !3620)
!3690 = !DILocation(line: 914, column: 5, scope: !3620)
!3691 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !738, file: !738, line: 925, type: !3692, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!177, !118, !183, !180}
!3694 = !{!3695, !3696, !3697}
!3695 = !DILocalVariable(name: "n", arg: 1, scope: !3691, file: !738, line: 925, type: !118)
!3696 = !DILocalVariable(name: "arg", arg: 2, scope: !3691, file: !738, line: 925, type: !183)
!3697 = !DILocalVariable(name: "argsize", arg: 3, scope: !3691, file: !738, line: 925, type: !180)
!3698 = !DILocation(line: 0, scope: !3691)
!3699 = !DILocation(line: 927, column: 10, scope: !3691)
!3700 = !DILocation(line: 927, column: 3, scope: !3691)
!3701 = distinct !DISubprogram(name: "quotearg", scope: !738, file: !738, line: 931, type: !1263, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3702)
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "arg", arg: 1, scope: !3701, file: !738, line: 931, type: !183)
!3704 = !DILocation(line: 0, scope: !3701)
!3705 = !DILocation(line: 0, scope: !3597, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 933, column: 10, scope: !3701)
!3707 = !DILocation(line: 921, column: 10, scope: !3597, inlinedAt: !3706)
!3708 = !DILocation(line: 933, column: 3, scope: !3701)
!3709 = distinct !DISubprogram(name: "quotearg_mem", scope: !738, file: !738, line: 937, type: !3710, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!177, !183, !180}
!3712 = !{!3713, !3714}
!3713 = !DILocalVariable(name: "arg", arg: 1, scope: !3709, file: !738, line: 937, type: !183)
!3714 = !DILocalVariable(name: "argsize", arg: 2, scope: !3709, file: !738, line: 937, type: !180)
!3715 = !DILocation(line: 0, scope: !3709)
!3716 = !DILocation(line: 0, scope: !3691, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 939, column: 10, scope: !3709)
!3718 = !DILocation(line: 927, column: 10, scope: !3691, inlinedAt: !3717)
!3719 = !DILocation(line: 939, column: 3, scope: !3709)
!3720 = distinct !DISubprogram(name: "quotearg_n_style", scope: !738, file: !738, line: 943, type: !3721, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!177, !118, !147, !183}
!3723 = !{!3724, !3725, !3726, !3727}
!3724 = !DILocalVariable(name: "n", arg: 1, scope: !3720, file: !738, line: 943, type: !118)
!3725 = !DILocalVariable(name: "s", arg: 2, scope: !3720, file: !738, line: 943, type: !147)
!3726 = !DILocalVariable(name: "arg", arg: 3, scope: !3720, file: !738, line: 943, type: !183)
!3727 = !DILocalVariable(name: "o", scope: !3720, file: !738, line: 945, type: !2818)
!3728 = !DILocation(line: 0, scope: !3720)
!3729 = !DILocation(line: 945, column: 3, scope: !3720)
!3730 = !DILocation(line: 945, column: 32, scope: !3720)
!3731 = !{!3732}
!3732 = distinct !{!3732, !3733, !"quoting_options_from_style: argument 0"}
!3733 = distinct !{!3733, !"quoting_options_from_style"}
!3734 = !DILocation(line: 945, column: 36, scope: !3720)
!3735 = !DILocalVariable(name: "style", arg: 1, scope: !3736, file: !738, line: 183, type: !147)
!3736 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !738, file: !738, line: 183, type: !3737, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!774, !147}
!3739 = !{!3735, !3740}
!3740 = !DILocalVariable(name: "o", scope: !3736, file: !738, line: 185, type: !774)
!3741 = !DILocation(line: 0, scope: !3736, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 945, column: 36, scope: !3720)
!3743 = !DILocation(line: 185, column: 26, scope: !3736, inlinedAt: !3742)
!3744 = !DILocation(line: 186, column: 13, scope: !3745, inlinedAt: !3742)
!3745 = distinct !DILexicalBlock(scope: !3736, file: !738, line: 186, column: 7)
!3746 = !DILocation(line: 186, column: 7, scope: !3736, inlinedAt: !3742)
!3747 = !DILocation(line: 187, column: 5, scope: !3745, inlinedAt: !3742)
!3748 = !DILocation(line: 188, column: 11, scope: !3736, inlinedAt: !3742)
!3749 = !DILocation(line: 946, column: 10, scope: !3720)
!3750 = !DILocation(line: 947, column: 1, scope: !3720)
!3751 = !DILocation(line: 946, column: 3, scope: !3720)
!3752 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !738, file: !738, line: 950, type: !3753, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!177, !118, !147, !183, !180}
!3755 = !{!3756, !3757, !3758, !3759, !3760}
!3756 = !DILocalVariable(name: "n", arg: 1, scope: !3752, file: !738, line: 950, type: !118)
!3757 = !DILocalVariable(name: "s", arg: 2, scope: !3752, file: !738, line: 950, type: !147)
!3758 = !DILocalVariable(name: "arg", arg: 3, scope: !3752, file: !738, line: 951, type: !183)
!3759 = !DILocalVariable(name: "argsize", arg: 4, scope: !3752, file: !738, line: 951, type: !180)
!3760 = !DILocalVariable(name: "o", scope: !3752, file: !738, line: 953, type: !2818)
!3761 = !DILocation(line: 0, scope: !3752)
!3762 = !DILocation(line: 953, column: 3, scope: !3752)
!3763 = !DILocation(line: 953, column: 32, scope: !3752)
!3764 = !{!3765}
!3765 = distinct !{!3765, !3766, !"quoting_options_from_style: argument 0"}
!3766 = distinct !{!3766, !"quoting_options_from_style"}
!3767 = !DILocation(line: 953, column: 36, scope: !3752)
!3768 = !DILocation(line: 0, scope: !3736, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 953, column: 36, scope: !3752)
!3770 = !DILocation(line: 185, column: 26, scope: !3736, inlinedAt: !3769)
!3771 = !DILocation(line: 186, column: 13, scope: !3745, inlinedAt: !3769)
!3772 = !DILocation(line: 186, column: 7, scope: !3736, inlinedAt: !3769)
!3773 = !DILocation(line: 187, column: 5, scope: !3745, inlinedAt: !3769)
!3774 = !DILocation(line: 188, column: 11, scope: !3736, inlinedAt: !3769)
!3775 = !DILocation(line: 954, column: 10, scope: !3752)
!3776 = !DILocation(line: 955, column: 1, scope: !3752)
!3777 = !DILocation(line: 954, column: 3, scope: !3752)
!3778 = distinct !DISubprogram(name: "quotearg_style", scope: !738, file: !738, line: 958, type: !3779, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!177, !147, !183}
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "s", arg: 1, scope: !3778, file: !738, line: 958, type: !147)
!3783 = !DILocalVariable(name: "arg", arg: 2, scope: !3778, file: !738, line: 958, type: !183)
!3784 = !DILocation(line: 0, scope: !3778)
!3785 = !DILocation(line: 0, scope: !3720, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 960, column: 10, scope: !3778)
!3787 = !DILocation(line: 945, column: 3, scope: !3720, inlinedAt: !3786)
!3788 = !DILocation(line: 945, column: 32, scope: !3720, inlinedAt: !3786)
!3789 = !{!3790}
!3790 = distinct !{!3790, !3791, !"quoting_options_from_style: argument 0"}
!3791 = distinct !{!3791, !"quoting_options_from_style"}
!3792 = !DILocation(line: 945, column: 36, scope: !3720, inlinedAt: !3786)
!3793 = !DILocation(line: 0, scope: !3736, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 945, column: 36, scope: !3720, inlinedAt: !3786)
!3795 = !DILocation(line: 185, column: 26, scope: !3736, inlinedAt: !3794)
!3796 = !DILocation(line: 186, column: 13, scope: !3745, inlinedAt: !3794)
!3797 = !DILocation(line: 186, column: 7, scope: !3736, inlinedAt: !3794)
!3798 = !DILocation(line: 187, column: 5, scope: !3745, inlinedAt: !3794)
!3799 = !DILocation(line: 188, column: 11, scope: !3736, inlinedAt: !3794)
!3800 = !DILocation(line: 946, column: 10, scope: !3720, inlinedAt: !3786)
!3801 = !DILocation(line: 947, column: 1, scope: !3720, inlinedAt: !3786)
!3802 = !DILocation(line: 960, column: 3, scope: !3778)
!3803 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !738, file: !738, line: 964, type: !3804, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!177, !147, !183, !180}
!3806 = !{!3807, !3808, !3809}
!3807 = !DILocalVariable(name: "s", arg: 1, scope: !3803, file: !738, line: 964, type: !147)
!3808 = !DILocalVariable(name: "arg", arg: 2, scope: !3803, file: !738, line: 964, type: !183)
!3809 = !DILocalVariable(name: "argsize", arg: 3, scope: !3803, file: !738, line: 964, type: !180)
!3810 = !DILocation(line: 0, scope: !3803)
!3811 = !DILocation(line: 0, scope: !3752, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 966, column: 10, scope: !3803)
!3813 = !DILocation(line: 953, column: 3, scope: !3752, inlinedAt: !3812)
!3814 = !DILocation(line: 953, column: 32, scope: !3752, inlinedAt: !3812)
!3815 = !{!3816}
!3816 = distinct !{!3816, !3817, !"quoting_options_from_style: argument 0"}
!3817 = distinct !{!3817, !"quoting_options_from_style"}
!3818 = !DILocation(line: 953, column: 36, scope: !3752, inlinedAt: !3812)
!3819 = !DILocation(line: 0, scope: !3736, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 953, column: 36, scope: !3752, inlinedAt: !3812)
!3821 = !DILocation(line: 185, column: 26, scope: !3736, inlinedAt: !3820)
!3822 = !DILocation(line: 186, column: 13, scope: !3745, inlinedAt: !3820)
!3823 = !DILocation(line: 186, column: 7, scope: !3736, inlinedAt: !3820)
!3824 = !DILocation(line: 187, column: 5, scope: !3745, inlinedAt: !3820)
!3825 = !DILocation(line: 188, column: 11, scope: !3736, inlinedAt: !3820)
!3826 = !DILocation(line: 954, column: 10, scope: !3752, inlinedAt: !3812)
!3827 = !DILocation(line: 955, column: 1, scope: !3752, inlinedAt: !3812)
!3828 = !DILocation(line: 966, column: 3, scope: !3803)
!3829 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !738, file: !738, line: 970, type: !3830, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!177, !183, !180, !4}
!3832 = !{!3833, !3834, !3835, !3836}
!3833 = !DILocalVariable(name: "arg", arg: 1, scope: !3829, file: !738, line: 970, type: !183)
!3834 = !DILocalVariable(name: "argsize", arg: 2, scope: !3829, file: !738, line: 970, type: !180)
!3835 = !DILocalVariable(name: "ch", arg: 3, scope: !3829, file: !738, line: 970, type: !4)
!3836 = !DILocalVariable(name: "options", scope: !3829, file: !738, line: 972, type: !774)
!3837 = !DILocation(line: 0, scope: !3829)
!3838 = !DILocation(line: 972, column: 3, scope: !3829)
!3839 = !DILocation(line: 972, column: 26, scope: !3829)
!3840 = !DILocation(line: 973, column: 13, scope: !3829)
!3841 = !{i64 0, i64 4, !1145, i64 4, i64 4, !1136, i64 8, i64 32, !1145, i64 40, i64 8, !1055, i64 48, i64 8, !1055}
!3842 = !DILocation(line: 0, scope: !2837, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 974, column: 3, scope: !3829)
!3844 = !DILocation(line: 147, column: 41, scope: !2837, inlinedAt: !3843)
!3845 = !DILocation(line: 147, column: 62, scope: !2837, inlinedAt: !3843)
!3846 = !DILocation(line: 147, column: 57, scope: !2837, inlinedAt: !3843)
!3847 = !DILocation(line: 148, column: 15, scope: !2837, inlinedAt: !3843)
!3848 = !DILocation(line: 149, column: 21, scope: !2837, inlinedAt: !3843)
!3849 = !DILocation(line: 149, column: 24, scope: !2837, inlinedAt: !3843)
!3850 = !DILocation(line: 150, column: 19, scope: !2837, inlinedAt: !3843)
!3851 = !DILocation(line: 150, column: 24, scope: !2837, inlinedAt: !3843)
!3852 = !DILocation(line: 150, column: 6, scope: !2837, inlinedAt: !3843)
!3853 = !DILocation(line: 975, column: 10, scope: !3829)
!3854 = !DILocation(line: 976, column: 1, scope: !3829)
!3855 = !DILocation(line: 975, column: 3, scope: !3829)
!3856 = distinct !DISubprogram(name: "quotearg_char", scope: !738, file: !738, line: 979, type: !3857, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!177, !183, !4}
!3859 = !{!3860, !3861}
!3860 = !DILocalVariable(name: "arg", arg: 1, scope: !3856, file: !738, line: 979, type: !183)
!3861 = !DILocalVariable(name: "ch", arg: 2, scope: !3856, file: !738, line: 979, type: !4)
!3862 = !DILocation(line: 0, scope: !3856)
!3863 = !DILocation(line: 0, scope: !3829, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 981, column: 10, scope: !3856)
!3865 = !DILocation(line: 972, column: 3, scope: !3829, inlinedAt: !3864)
!3866 = !DILocation(line: 972, column: 26, scope: !3829, inlinedAt: !3864)
!3867 = !DILocation(line: 973, column: 13, scope: !3829, inlinedAt: !3864)
!3868 = !DILocation(line: 0, scope: !2837, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 974, column: 3, scope: !3829, inlinedAt: !3864)
!3870 = !DILocation(line: 147, column: 41, scope: !2837, inlinedAt: !3869)
!3871 = !DILocation(line: 147, column: 62, scope: !2837, inlinedAt: !3869)
!3872 = !DILocation(line: 147, column: 57, scope: !2837, inlinedAt: !3869)
!3873 = !DILocation(line: 148, column: 15, scope: !2837, inlinedAt: !3869)
!3874 = !DILocation(line: 149, column: 21, scope: !2837, inlinedAt: !3869)
!3875 = !DILocation(line: 149, column: 24, scope: !2837, inlinedAt: !3869)
!3876 = !DILocation(line: 150, column: 19, scope: !2837, inlinedAt: !3869)
!3877 = !DILocation(line: 150, column: 24, scope: !2837, inlinedAt: !3869)
!3878 = !DILocation(line: 150, column: 6, scope: !2837, inlinedAt: !3869)
!3879 = !DILocation(line: 975, column: 10, scope: !3829, inlinedAt: !3864)
!3880 = !DILocation(line: 976, column: 1, scope: !3829, inlinedAt: !3864)
!3881 = !DILocation(line: 981, column: 3, scope: !3856)
!3882 = distinct !DISubprogram(name: "quotearg_colon", scope: !738, file: !738, line: 985, type: !1263, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3883)
!3883 = !{!3884}
!3884 = !DILocalVariable(name: "arg", arg: 1, scope: !3882, file: !738, line: 985, type: !183)
!3885 = !DILocation(line: 0, scope: !3882)
!3886 = !DILocation(line: 0, scope: !3856, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 987, column: 10, scope: !3882)
!3888 = !DILocation(line: 0, scope: !3829, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 981, column: 10, scope: !3856, inlinedAt: !3887)
!3890 = !DILocation(line: 972, column: 3, scope: !3829, inlinedAt: !3889)
!3891 = !DILocation(line: 972, column: 26, scope: !3829, inlinedAt: !3889)
!3892 = !DILocation(line: 973, column: 13, scope: !3829, inlinedAt: !3889)
!3893 = !DILocation(line: 0, scope: !2837, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 974, column: 3, scope: !3829, inlinedAt: !3889)
!3895 = !DILocation(line: 147, column: 57, scope: !2837, inlinedAt: !3894)
!3896 = !DILocation(line: 149, column: 21, scope: !2837, inlinedAt: !3894)
!3897 = !DILocation(line: 150, column: 6, scope: !2837, inlinedAt: !3894)
!3898 = !DILocation(line: 975, column: 10, scope: !3829, inlinedAt: !3889)
!3899 = !DILocation(line: 976, column: 1, scope: !3829, inlinedAt: !3889)
!3900 = !DILocation(line: 987, column: 3, scope: !3882)
!3901 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !738, file: !738, line: 991, type: !3710, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3902)
!3902 = !{!3903, !3904}
!3903 = !DILocalVariable(name: "arg", arg: 1, scope: !3901, file: !738, line: 991, type: !183)
!3904 = !DILocalVariable(name: "argsize", arg: 2, scope: !3901, file: !738, line: 991, type: !180)
!3905 = !DILocation(line: 0, scope: !3901)
!3906 = !DILocation(line: 0, scope: !3829, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 993, column: 10, scope: !3901)
!3908 = !DILocation(line: 972, column: 3, scope: !3829, inlinedAt: !3907)
!3909 = !DILocation(line: 972, column: 26, scope: !3829, inlinedAt: !3907)
!3910 = !DILocation(line: 973, column: 13, scope: !3829, inlinedAt: !3907)
!3911 = !DILocation(line: 0, scope: !2837, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 974, column: 3, scope: !3829, inlinedAt: !3907)
!3913 = !DILocation(line: 147, column: 57, scope: !2837, inlinedAt: !3912)
!3914 = !DILocation(line: 149, column: 21, scope: !2837, inlinedAt: !3912)
!3915 = !DILocation(line: 150, column: 6, scope: !2837, inlinedAt: !3912)
!3916 = !DILocation(line: 975, column: 10, scope: !3829, inlinedAt: !3907)
!3917 = !DILocation(line: 976, column: 1, scope: !3829, inlinedAt: !3907)
!3918 = !DILocation(line: 993, column: 3, scope: !3901)
!3919 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !738, file: !738, line: 997, type: !3721, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3920)
!3920 = !{!3921, !3922, !3923, !3924}
!3921 = !DILocalVariable(name: "n", arg: 1, scope: !3919, file: !738, line: 997, type: !118)
!3922 = !DILocalVariable(name: "s", arg: 2, scope: !3919, file: !738, line: 997, type: !147)
!3923 = !DILocalVariable(name: "arg", arg: 3, scope: !3919, file: !738, line: 997, type: !183)
!3924 = !DILocalVariable(name: "options", scope: !3919, file: !738, line: 999, type: !774)
!3925 = !DILocation(line: 185, column: 26, scope: !3736, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 1000, column: 13, scope: !3919)
!3927 = !DILocation(line: 0, scope: !3919)
!3928 = !DILocation(line: 999, column: 3, scope: !3919)
!3929 = !DILocation(line: 999, column: 26, scope: !3919)
!3930 = !DILocation(line: 0, scope: !3736, inlinedAt: !3926)
!3931 = !DILocation(line: 186, column: 13, scope: !3745, inlinedAt: !3926)
!3932 = !DILocation(line: 186, column: 7, scope: !3736, inlinedAt: !3926)
!3933 = !DILocation(line: 187, column: 5, scope: !3745, inlinedAt: !3926)
!3934 = !{!3935}
!3935 = distinct !{!3935, !3936, !"quoting_options_from_style: argument 0"}
!3936 = distinct !{!3936, !"quoting_options_from_style"}
!3937 = !DILocation(line: 1000, column: 13, scope: !3919)
!3938 = !DILocation(line: 0, scope: !2837, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 1001, column: 3, scope: !3919)
!3940 = !DILocation(line: 147, column: 57, scope: !2837, inlinedAt: !3939)
!3941 = !DILocation(line: 149, column: 21, scope: !2837, inlinedAt: !3939)
!3942 = !DILocation(line: 150, column: 6, scope: !2837, inlinedAt: !3939)
!3943 = !DILocation(line: 1002, column: 10, scope: !3919)
!3944 = !DILocation(line: 1003, column: 1, scope: !3919)
!3945 = !DILocation(line: 1002, column: 3, scope: !3919)
!3946 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !738, file: !738, line: 1006, type: !3947, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!177, !118, !183, !183, !183}
!3949 = !{!3950, !3951, !3952, !3953}
!3950 = !DILocalVariable(name: "n", arg: 1, scope: !3946, file: !738, line: 1006, type: !118)
!3951 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3946, file: !738, line: 1006, type: !183)
!3952 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3946, file: !738, line: 1007, type: !183)
!3953 = !DILocalVariable(name: "arg", arg: 4, scope: !3946, file: !738, line: 1007, type: !183)
!3954 = !DILocation(line: 0, scope: !3946)
!3955 = !DILocalVariable(name: "n", arg: 1, scope: !3956, file: !738, line: 1014, type: !118)
!3956 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !738, file: !738, line: 1014, type: !3957, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!177, !118, !183, !183, !183, !180}
!3959 = !{!3955, !3960, !3961, !3962, !3963, !3964}
!3960 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3956, file: !738, line: 1014, type: !183)
!3961 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3956, file: !738, line: 1015, type: !183)
!3962 = !DILocalVariable(name: "arg", arg: 4, scope: !3956, file: !738, line: 1016, type: !183)
!3963 = !DILocalVariable(name: "argsize", arg: 5, scope: !3956, file: !738, line: 1016, type: !180)
!3964 = !DILocalVariable(name: "o", scope: !3956, file: !738, line: 1018, type: !774)
!3965 = !DILocation(line: 0, scope: !3956, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 1009, column: 10, scope: !3946)
!3967 = !DILocation(line: 1018, column: 3, scope: !3956, inlinedAt: !3966)
!3968 = !DILocation(line: 1018, column: 26, scope: !3956, inlinedAt: !3966)
!3969 = !DILocation(line: 1018, column: 30, scope: !3956, inlinedAt: !3966)
!3970 = !DILocation(line: 0, scope: !2877, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 1019, column: 3, scope: !3956, inlinedAt: !3966)
!3972 = !DILocation(line: 174, column: 12, scope: !2877, inlinedAt: !3971)
!3973 = !DILocation(line: 175, column: 8, scope: !2890, inlinedAt: !3971)
!3974 = !DILocation(line: 175, column: 19, scope: !2890, inlinedAt: !3971)
!3975 = !DILocation(line: 176, column: 5, scope: !2890, inlinedAt: !3971)
!3976 = !DILocation(line: 177, column: 6, scope: !2877, inlinedAt: !3971)
!3977 = !DILocation(line: 177, column: 17, scope: !2877, inlinedAt: !3971)
!3978 = !DILocation(line: 178, column: 6, scope: !2877, inlinedAt: !3971)
!3979 = !DILocation(line: 178, column: 18, scope: !2877, inlinedAt: !3971)
!3980 = !DILocation(line: 1020, column: 10, scope: !3956, inlinedAt: !3966)
!3981 = !DILocation(line: 1021, column: 1, scope: !3956, inlinedAt: !3966)
!3982 = !DILocation(line: 1009, column: 3, scope: !3946)
!3983 = !DILocation(line: 0, scope: !3956)
!3984 = !DILocation(line: 1018, column: 3, scope: !3956)
!3985 = !DILocation(line: 1018, column: 26, scope: !3956)
!3986 = !DILocation(line: 1018, column: 30, scope: !3956)
!3987 = !DILocation(line: 0, scope: !2877, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 1019, column: 3, scope: !3956)
!3989 = !DILocation(line: 174, column: 12, scope: !2877, inlinedAt: !3988)
!3990 = !DILocation(line: 175, column: 8, scope: !2890, inlinedAt: !3988)
!3991 = !DILocation(line: 175, column: 19, scope: !2890, inlinedAt: !3988)
!3992 = !DILocation(line: 176, column: 5, scope: !2890, inlinedAt: !3988)
!3993 = !DILocation(line: 177, column: 6, scope: !2877, inlinedAt: !3988)
!3994 = !DILocation(line: 177, column: 17, scope: !2877, inlinedAt: !3988)
!3995 = !DILocation(line: 178, column: 6, scope: !2877, inlinedAt: !3988)
!3996 = !DILocation(line: 178, column: 18, scope: !2877, inlinedAt: !3988)
!3997 = !DILocation(line: 1020, column: 10, scope: !3956)
!3998 = !DILocation(line: 1021, column: 1, scope: !3956)
!3999 = !DILocation(line: 1020, column: 3, scope: !3956)
!4000 = distinct !DISubprogram(name: "quotearg_custom", scope: !738, file: !738, line: 1024, type: !4001, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4003)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!177, !183, !183, !183}
!4003 = !{!4004, !4005, !4006}
!4004 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4000, file: !738, line: 1024, type: !183)
!4005 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4000, file: !738, line: 1024, type: !183)
!4006 = !DILocalVariable(name: "arg", arg: 3, scope: !4000, file: !738, line: 1025, type: !183)
!4007 = !DILocation(line: 0, scope: !4000)
!4008 = !DILocation(line: 0, scope: !3946, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 1027, column: 10, scope: !4000)
!4010 = !DILocation(line: 0, scope: !3956, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 1009, column: 10, scope: !3946, inlinedAt: !4009)
!4012 = !DILocation(line: 1018, column: 3, scope: !3956, inlinedAt: !4011)
!4013 = !DILocation(line: 1018, column: 26, scope: !3956, inlinedAt: !4011)
!4014 = !DILocation(line: 1018, column: 30, scope: !3956, inlinedAt: !4011)
!4015 = !DILocation(line: 0, scope: !2877, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 1019, column: 3, scope: !3956, inlinedAt: !4011)
!4017 = !DILocation(line: 174, column: 12, scope: !2877, inlinedAt: !4016)
!4018 = !DILocation(line: 175, column: 8, scope: !2890, inlinedAt: !4016)
!4019 = !DILocation(line: 175, column: 19, scope: !2890, inlinedAt: !4016)
!4020 = !DILocation(line: 176, column: 5, scope: !2890, inlinedAt: !4016)
!4021 = !DILocation(line: 177, column: 6, scope: !2877, inlinedAt: !4016)
!4022 = !DILocation(line: 177, column: 17, scope: !2877, inlinedAt: !4016)
!4023 = !DILocation(line: 178, column: 6, scope: !2877, inlinedAt: !4016)
!4024 = !DILocation(line: 178, column: 18, scope: !2877, inlinedAt: !4016)
!4025 = !DILocation(line: 1020, column: 10, scope: !3956, inlinedAt: !4011)
!4026 = !DILocation(line: 1021, column: 1, scope: !3956, inlinedAt: !4011)
!4027 = !DILocation(line: 1027, column: 3, scope: !4000)
!4028 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !738, file: !738, line: 1031, type: !4029, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!177, !183, !183, !183, !180}
!4031 = !{!4032, !4033, !4034, !4035}
!4032 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4028, file: !738, line: 1031, type: !183)
!4033 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4028, file: !738, line: 1031, type: !183)
!4034 = !DILocalVariable(name: "arg", arg: 3, scope: !4028, file: !738, line: 1032, type: !183)
!4035 = !DILocalVariable(name: "argsize", arg: 4, scope: !4028, file: !738, line: 1032, type: !180)
!4036 = !DILocation(line: 0, scope: !4028)
!4037 = !DILocation(line: 0, scope: !3956, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 1034, column: 10, scope: !4028)
!4039 = !DILocation(line: 1018, column: 3, scope: !3956, inlinedAt: !4038)
!4040 = !DILocation(line: 1018, column: 26, scope: !3956, inlinedAt: !4038)
!4041 = !DILocation(line: 1018, column: 30, scope: !3956, inlinedAt: !4038)
!4042 = !DILocation(line: 0, scope: !2877, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 1019, column: 3, scope: !3956, inlinedAt: !4038)
!4044 = !DILocation(line: 174, column: 12, scope: !2877, inlinedAt: !4043)
!4045 = !DILocation(line: 175, column: 8, scope: !2890, inlinedAt: !4043)
!4046 = !DILocation(line: 175, column: 19, scope: !2890, inlinedAt: !4043)
!4047 = !DILocation(line: 176, column: 5, scope: !2890, inlinedAt: !4043)
!4048 = !DILocation(line: 177, column: 6, scope: !2877, inlinedAt: !4043)
!4049 = !DILocation(line: 177, column: 17, scope: !2877, inlinedAt: !4043)
!4050 = !DILocation(line: 178, column: 6, scope: !2877, inlinedAt: !4043)
!4051 = !DILocation(line: 178, column: 18, scope: !2877, inlinedAt: !4043)
!4052 = !DILocation(line: 1020, column: 10, scope: !3956, inlinedAt: !4038)
!4053 = !DILocation(line: 1021, column: 1, scope: !3956, inlinedAt: !4038)
!4054 = !DILocation(line: 1034, column: 3, scope: !4028)
!4055 = distinct !DISubprogram(name: "quote_n_mem", scope: !738, file: !738, line: 1049, type: !4056, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!183, !118, !183, !180}
!4058 = !{!4059, !4060, !4061}
!4059 = !DILocalVariable(name: "n", arg: 1, scope: !4055, file: !738, line: 1049, type: !118)
!4060 = !DILocalVariable(name: "arg", arg: 2, scope: !4055, file: !738, line: 1049, type: !183)
!4061 = !DILocalVariable(name: "argsize", arg: 3, scope: !4055, file: !738, line: 1049, type: !180)
!4062 = !DILocation(line: 0, scope: !4055)
!4063 = !DILocation(line: 1051, column: 10, scope: !4055)
!4064 = !DILocation(line: 1051, column: 3, scope: !4055)
!4065 = distinct !DISubprogram(name: "quote_mem", scope: !738, file: !738, line: 1055, type: !4066, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!183, !183, !180}
!4068 = !{!4069, !4070}
!4069 = !DILocalVariable(name: "arg", arg: 1, scope: !4065, file: !738, line: 1055, type: !183)
!4070 = !DILocalVariable(name: "argsize", arg: 2, scope: !4065, file: !738, line: 1055, type: !180)
!4071 = !DILocation(line: 0, scope: !4065)
!4072 = !DILocation(line: 0, scope: !4055, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 1057, column: 10, scope: !4065)
!4074 = !DILocation(line: 1051, column: 10, scope: !4055, inlinedAt: !4073)
!4075 = !DILocation(line: 1057, column: 3, scope: !4065)
!4076 = distinct !DISubprogram(name: "quote_n", scope: !738, file: !738, line: 1061, type: !4077, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!183, !118, !183}
!4079 = !{!4080, !4081}
!4080 = !DILocalVariable(name: "n", arg: 1, scope: !4076, file: !738, line: 1061, type: !118)
!4081 = !DILocalVariable(name: "arg", arg: 2, scope: !4076, file: !738, line: 1061, type: !183)
!4082 = !DILocation(line: 0, scope: !4076)
!4083 = !DILocation(line: 0, scope: !4055, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 1063, column: 10, scope: !4076)
!4085 = !DILocation(line: 1051, column: 10, scope: !4055, inlinedAt: !4084)
!4086 = !DILocation(line: 1063, column: 3, scope: !4076)
!4087 = distinct !DISubprogram(name: "quote", scope: !738, file: !738, line: 1067, type: !4088, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4090)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!183, !183}
!4090 = !{!4091}
!4091 = !DILocalVariable(name: "arg", arg: 1, scope: !4087, file: !738, line: 1067, type: !183)
!4092 = !DILocation(line: 0, scope: !4087)
!4093 = !DILocation(line: 0, scope: !4076, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 1069, column: 10, scope: !4087)
!4095 = !DILocation(line: 0, scope: !4055, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 1063, column: 10, scope: !4076, inlinedAt: !4094)
!4097 = !DILocation(line: 1051, column: 10, scope: !4055, inlinedAt: !4096)
!4098 = !DILocation(line: 1069, column: 3, scope: !4087)
!4099 = distinct !DISubprogram(name: "version_etc_arn", scope: !834, file: !834, line: 61, type: !4100, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !4137)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !4102, !183, !183, !183, !4136, !180}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !4104)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !4105)
!4105 = !{!4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4104, file: !346, line: 51, baseType: !118, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4104, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4104, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4104, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4104, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4104, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4104, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4104, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4104, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4104, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4104, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4104, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4104, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4104, file: !346, line: 70, baseType: !4120, size: 64, offset: 832)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4104, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4104, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4104, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4104, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4104, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4104, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4104, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4104, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4104, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4104, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4104, file: !346, line: 93, baseType: !4120, size: 64, offset: 1344)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4104, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4104, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4104, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4104, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143}
!4138 = !DILocalVariable(name: "stream", arg: 1, scope: !4099, file: !834, line: 61, type: !4102)
!4139 = !DILocalVariable(name: "command_name", arg: 2, scope: !4099, file: !834, line: 62, type: !183)
!4140 = !DILocalVariable(name: "package", arg: 3, scope: !4099, file: !834, line: 62, type: !183)
!4141 = !DILocalVariable(name: "version", arg: 4, scope: !4099, file: !834, line: 63, type: !183)
!4142 = !DILocalVariable(name: "authors", arg: 5, scope: !4099, file: !834, line: 64, type: !4136)
!4143 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4099, file: !834, line: 64, type: !180)
!4144 = !DILocation(line: 0, scope: !4099)
!4145 = !DILocation(line: 66, column: 7, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4099, file: !834, line: 66, column: 7)
!4147 = !DILocation(line: 66, column: 7, scope: !4099)
!4148 = !DILocation(line: 67, column: 5, scope: !4146)
!4149 = !DILocation(line: 69, column: 5, scope: !4146)
!4150 = !DILocation(line: 83, column: 3, scope: !4099)
!4151 = !DILocation(line: 85, column: 3, scope: !4099)
!4152 = !DILocation(line: 88, column: 3, scope: !4099)
!4153 = !DILocation(line: 95, column: 3, scope: !4099)
!4154 = !DILocation(line: 97, column: 3, scope: !4099)
!4155 = !DILocation(line: 105, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4099, file: !834, line: 98, column: 5)
!4157 = !DILocation(line: 106, column: 7, scope: !4156)
!4158 = !DILocation(line: 109, column: 7, scope: !4156)
!4159 = !DILocation(line: 110, column: 7, scope: !4156)
!4160 = !DILocation(line: 113, column: 7, scope: !4156)
!4161 = !DILocation(line: 115, column: 7, scope: !4156)
!4162 = !DILocation(line: 120, column: 7, scope: !4156)
!4163 = !DILocation(line: 122, column: 7, scope: !4156)
!4164 = !DILocation(line: 127, column: 7, scope: !4156)
!4165 = !DILocation(line: 129, column: 7, scope: !4156)
!4166 = !DILocation(line: 134, column: 7, scope: !4156)
!4167 = !DILocation(line: 137, column: 7, scope: !4156)
!4168 = !DILocation(line: 142, column: 7, scope: !4156)
!4169 = !DILocation(line: 145, column: 7, scope: !4156)
!4170 = !DILocation(line: 150, column: 7, scope: !4156)
!4171 = !DILocation(line: 154, column: 7, scope: !4156)
!4172 = !DILocation(line: 159, column: 7, scope: !4156)
!4173 = !DILocation(line: 163, column: 7, scope: !4156)
!4174 = !DILocation(line: 170, column: 7, scope: !4156)
!4175 = !DILocation(line: 174, column: 7, scope: !4156)
!4176 = !DILocation(line: 176, column: 1, scope: !4099)
!4177 = distinct !DISubprogram(name: "version_etc_ar", scope: !834, file: !834, line: 183, type: !4178, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{null, !4102, !183, !183, !183, !4136}
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186}
!4181 = !DILocalVariable(name: "stream", arg: 1, scope: !4177, file: !834, line: 183, type: !4102)
!4182 = !DILocalVariable(name: "command_name", arg: 2, scope: !4177, file: !834, line: 184, type: !183)
!4183 = !DILocalVariable(name: "package", arg: 3, scope: !4177, file: !834, line: 184, type: !183)
!4184 = !DILocalVariable(name: "version", arg: 4, scope: !4177, file: !834, line: 185, type: !183)
!4185 = !DILocalVariable(name: "authors", arg: 5, scope: !4177, file: !834, line: 185, type: !4136)
!4186 = !DILocalVariable(name: "n_authors", scope: !4177, file: !834, line: 187, type: !180)
!4187 = !DILocation(line: 0, scope: !4177)
!4188 = !DILocation(line: 189, column: 8, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4177, file: !834, line: 189, column: 3)
!4190 = !DILocation(line: 189, scope: !4189)
!4191 = !DILocation(line: 189, column: 23, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4189, file: !834, line: 189, column: 3)
!4193 = !DILocation(line: 189, column: 3, scope: !4189)
!4194 = !DILocation(line: 189, column: 52, scope: !4192)
!4195 = distinct !{!4195, !4193, !4196, !1183}
!4196 = !DILocation(line: 190, column: 5, scope: !4189)
!4197 = !DILocation(line: 191, column: 3, scope: !4177)
!4198 = !DILocation(line: 192, column: 1, scope: !4177)
!4199 = distinct !DISubprogram(name: "version_etc_va", scope: !834, file: !834, line: 199, type: !4200, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !4210)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4102, !183, !183, !183, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4204)
!4204 = !{!4205, !4207, !4208, !4209}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4203, file: !4206, line: 192, baseType: !110, size: 32)
!4206 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4203, file: !4206, line: 192, baseType: !110, size: 32, offset: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4203, file: !4206, line: 192, baseType: !178, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4203, file: !4206, line: 192, baseType: !178, size: 64, offset: 128)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4217}
!4211 = !DILocalVariable(name: "stream", arg: 1, scope: !4199, file: !834, line: 199, type: !4102)
!4212 = !DILocalVariable(name: "command_name", arg: 2, scope: !4199, file: !834, line: 200, type: !183)
!4213 = !DILocalVariable(name: "package", arg: 3, scope: !4199, file: !834, line: 200, type: !183)
!4214 = !DILocalVariable(name: "version", arg: 4, scope: !4199, file: !834, line: 201, type: !183)
!4215 = !DILocalVariable(name: "authors", arg: 5, scope: !4199, file: !834, line: 201, type: !4202)
!4216 = !DILocalVariable(name: "n_authors", scope: !4199, file: !834, line: 203, type: !180)
!4217 = !DILocalVariable(name: "authtab", scope: !4199, file: !834, line: 204, type: !4218)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 640, elements: !92)
!4219 = !DILocation(line: 0, scope: !4199)
!4220 = !DILocation(line: 204, column: 3, scope: !4199)
!4221 = !DILocation(line: 204, column: 15, scope: !4199)
!4222 = !DILocation(line: 208, column: 35, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !834, line: 206, column: 3)
!4224 = distinct !DILexicalBlock(scope: !4199, file: !834, line: 206, column: 3)
!4225 = !DILocation(line: 208, column: 33, scope: !4223)
!4226 = !DILocation(line: 208, column: 67, scope: !4223)
!4227 = !DILocation(line: 206, column: 3, scope: !4224)
!4228 = !DILocation(line: 208, column: 14, scope: !4223)
!4229 = !DILocation(line: 0, scope: !4224)
!4230 = !DILocation(line: 211, column: 3, scope: !4199)
!4231 = !DILocation(line: 213, column: 1, scope: !4199)
!4232 = distinct !DISubprogram(name: "version_etc", scope: !834, file: !834, line: 230, type: !4233, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4102, !183, !183, !183, null}
!4235 = !{!4236, !4237, !4238, !4239, !4240}
!4236 = !DILocalVariable(name: "stream", arg: 1, scope: !4232, file: !834, line: 230, type: !4102)
!4237 = !DILocalVariable(name: "command_name", arg: 2, scope: !4232, file: !834, line: 231, type: !183)
!4238 = !DILocalVariable(name: "package", arg: 3, scope: !4232, file: !834, line: 231, type: !183)
!4239 = !DILocalVariable(name: "version", arg: 4, scope: !4232, file: !834, line: 232, type: !183)
!4240 = !DILocalVariable(name: "authors", scope: !4232, file: !834, line: 234, type: !4241)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1131, line: 52, baseType: !4242)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2146, line: 14, baseType: !4243)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4206, baseType: !4244)
!4244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4203, size: 192, elements: !87)
!4245 = !DILocation(line: 0, scope: !4232)
!4246 = !DILocation(line: 234, column: 3, scope: !4232)
!4247 = !DILocation(line: 234, column: 11, scope: !4232)
!4248 = !DILocation(line: 235, column: 3, scope: !4232)
!4249 = !DILocation(line: 236, column: 3, scope: !4232)
!4250 = !DILocation(line: 237, column: 3, scope: !4232)
!4251 = !DILocation(line: 238, column: 1, scope: !4232)
!4252 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !834, file: !834, line: 241, type: !600, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !1064)
!4253 = !DILocation(line: 243, column: 3, scope: !4252)
!4254 = !DILocation(line: 248, column: 3, scope: !4252)
!4255 = !DILocation(line: 254, column: 3, scope: !4252)
!4256 = !DILocation(line: 259, column: 3, scope: !4252)
!4257 = !DILocation(line: 261, column: 1, scope: !4252)
!4258 = distinct !DISubprogram(name: "xnrealloc", scope: !4259, file: !4259, line: 147, type: !4260, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4262)
!4259 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!178, !178, !180, !180}
!4262 = !{!4263, !4264, !4265}
!4263 = !DILocalVariable(name: "p", arg: 1, scope: !4258, file: !4259, line: 147, type: !178)
!4264 = !DILocalVariable(name: "n", arg: 2, scope: !4258, file: !4259, line: 147, type: !180)
!4265 = !DILocalVariable(name: "s", arg: 3, scope: !4258, file: !4259, line: 147, type: !180)
!4266 = !DILocation(line: 0, scope: !4258)
!4267 = !DILocalVariable(name: "p", arg: 1, scope: !4268, file: !974, line: 83, type: !178)
!4268 = distinct !DISubprogram(name: "xreallocarray", scope: !974, file: !974, line: 83, type: !4260, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4269)
!4269 = !{!4267, !4270, !4271}
!4270 = !DILocalVariable(name: "n", arg: 2, scope: !4268, file: !974, line: 83, type: !180)
!4271 = !DILocalVariable(name: "s", arg: 3, scope: !4268, file: !974, line: 83, type: !180)
!4272 = !DILocation(line: 0, scope: !4268, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 149, column: 10, scope: !4258)
!4274 = !DILocation(line: 85, column: 25, scope: !4268, inlinedAt: !4273)
!4275 = !DILocalVariable(name: "p", arg: 1, scope: !4276, file: !974, line: 37, type: !178)
!4276 = distinct !DISubprogram(name: "check_nonnull", scope: !974, file: !974, line: 37, type: !4277, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!178, !178}
!4279 = !{!4275}
!4280 = !DILocation(line: 0, scope: !4276, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 85, column: 10, scope: !4268, inlinedAt: !4273)
!4282 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4281)
!4283 = distinct !DILexicalBlock(scope: !4276, file: !974, line: 39, column: 7)
!4284 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4281)
!4285 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4281)
!4286 = !DILocation(line: 149, column: 3, scope: !4258)
!4287 = !DILocation(line: 0, scope: !4268)
!4288 = !DILocation(line: 85, column: 25, scope: !4268)
!4289 = !DILocation(line: 0, scope: !4276, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 85, column: 10, scope: !4268)
!4291 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4290)
!4292 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4290)
!4293 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4290)
!4294 = !DILocation(line: 85, column: 3, scope: !4268)
!4295 = distinct !DISubprogram(name: "xmalloc", scope: !974, file: !974, line: 47, type: !4296, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!178, !180}
!4298 = !{!4299}
!4299 = !DILocalVariable(name: "s", arg: 1, scope: !4295, file: !974, line: 47, type: !180)
!4300 = !DILocation(line: 0, scope: !4295)
!4301 = !DILocation(line: 49, column: 25, scope: !4295)
!4302 = !DILocation(line: 0, scope: !4276, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 49, column: 10, scope: !4295)
!4304 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4303)
!4305 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4303)
!4306 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4303)
!4307 = !DILocation(line: 49, column: 3, scope: !4295)
!4308 = !DISubprogram(name: "malloc", scope: !1261, file: !1261, line: 540, type: !4296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!4309 = distinct !DISubprogram(name: "ximalloc", scope: !974, file: !974, line: 53, type: !4310, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4312)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!178, !297}
!4312 = !{!4313}
!4313 = !DILocalVariable(name: "s", arg: 1, scope: !4309, file: !974, line: 53, type: !297)
!4314 = !DILocation(line: 0, scope: !4309)
!4315 = !DILocalVariable(name: "s", arg: 1, scope: !4316, file: !4317, line: 55, type: !297)
!4316 = distinct !DISubprogram(name: "imalloc", scope: !4317, file: !4317, line: 55, type: !4310, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4318)
!4317 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4318 = !{!4315}
!4319 = !DILocation(line: 0, scope: !4316, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 55, column: 25, scope: !4309)
!4321 = !DILocation(line: 57, column: 26, scope: !4316, inlinedAt: !4320)
!4322 = !DILocation(line: 0, scope: !4276, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 55, column: 10, scope: !4309)
!4324 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4323)
!4325 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4323)
!4326 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4323)
!4327 = !DILocation(line: 55, column: 3, scope: !4309)
!4328 = distinct !DISubprogram(name: "xcharalloc", scope: !974, file: !974, line: 59, type: !4329, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!177, !180}
!4331 = !{!4332}
!4332 = !DILocalVariable(name: "n", arg: 1, scope: !4328, file: !974, line: 59, type: !180)
!4333 = !DILocation(line: 0, scope: !4328)
!4334 = !DILocation(line: 0, scope: !4295, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 61, column: 10, scope: !4328)
!4336 = !DILocation(line: 49, column: 25, scope: !4295, inlinedAt: !4335)
!4337 = !DILocation(line: 0, scope: !4276, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 49, column: 10, scope: !4295, inlinedAt: !4335)
!4339 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4338)
!4340 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4338)
!4341 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4338)
!4342 = !DILocation(line: 61, column: 3, scope: !4328)
!4343 = distinct !DISubprogram(name: "xrealloc", scope: !974, file: !974, line: 68, type: !4344, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4346)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!178, !178, !180}
!4346 = !{!4347, !4348}
!4347 = !DILocalVariable(name: "p", arg: 1, scope: !4343, file: !974, line: 68, type: !178)
!4348 = !DILocalVariable(name: "s", arg: 2, scope: !4343, file: !974, line: 68, type: !180)
!4349 = !DILocation(line: 0, scope: !4343)
!4350 = !DILocalVariable(name: "ptr", arg: 1, scope: !4351, file: !4352, line: 2057, type: !178)
!4351 = distinct !DISubprogram(name: "rpl_realloc", scope: !4352, file: !4352, line: 2057, type: !4344, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4353)
!4352 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4353 = !{!4350, !4354}
!4354 = !DILocalVariable(name: "size", arg: 2, scope: !4351, file: !4352, line: 2057, type: !180)
!4355 = !DILocation(line: 0, scope: !4351, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 70, column: 25, scope: !4343)
!4357 = !DILocation(line: 2059, column: 24, scope: !4351, inlinedAt: !4356)
!4358 = !DILocation(line: 2059, column: 10, scope: !4351, inlinedAt: !4356)
!4359 = !DILocation(line: 0, scope: !4276, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 70, column: 10, scope: !4343)
!4361 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4360)
!4362 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4360)
!4363 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4360)
!4364 = !DILocation(line: 70, column: 3, scope: !4343)
!4365 = !DISubprogram(name: "realloc", scope: !1261, file: !1261, line: 551, type: !4344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!4366 = distinct !DISubprogram(name: "xirealloc", scope: !974, file: !974, line: 74, type: !4367, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4369)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!178, !178, !297}
!4369 = !{!4370, !4371}
!4370 = !DILocalVariable(name: "p", arg: 1, scope: !4366, file: !974, line: 74, type: !178)
!4371 = !DILocalVariable(name: "s", arg: 2, scope: !4366, file: !974, line: 74, type: !297)
!4372 = !DILocation(line: 0, scope: !4366)
!4373 = !DILocalVariable(name: "p", arg: 1, scope: !4374, file: !4317, line: 66, type: !178)
!4374 = distinct !DISubprogram(name: "irealloc", scope: !4317, file: !4317, line: 66, type: !4367, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4375)
!4375 = !{!4373, !4376}
!4376 = !DILocalVariable(name: "s", arg: 2, scope: !4374, file: !4317, line: 66, type: !297)
!4377 = !DILocation(line: 0, scope: !4374, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 76, column: 25, scope: !4366)
!4379 = !DILocation(line: 0, scope: !4351, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 68, column: 26, scope: !4374, inlinedAt: !4378)
!4381 = !DILocation(line: 2059, column: 24, scope: !4351, inlinedAt: !4380)
!4382 = !DILocation(line: 2059, column: 10, scope: !4351, inlinedAt: !4380)
!4383 = !DILocation(line: 0, scope: !4276, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 76, column: 10, scope: !4366)
!4385 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4384)
!4386 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4384)
!4387 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4384)
!4388 = !DILocation(line: 76, column: 3, scope: !4366)
!4389 = distinct !DISubprogram(name: "xireallocarray", scope: !974, file: !974, line: 89, type: !4390, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!178, !178, !297, !297}
!4392 = !{!4393, !4394, !4395}
!4393 = !DILocalVariable(name: "p", arg: 1, scope: !4389, file: !974, line: 89, type: !178)
!4394 = !DILocalVariable(name: "n", arg: 2, scope: !4389, file: !974, line: 89, type: !297)
!4395 = !DILocalVariable(name: "s", arg: 3, scope: !4389, file: !974, line: 89, type: !297)
!4396 = !DILocation(line: 0, scope: !4389)
!4397 = !DILocalVariable(name: "p", arg: 1, scope: !4398, file: !4317, line: 98, type: !178)
!4398 = distinct !DISubprogram(name: "ireallocarray", scope: !4317, file: !4317, line: 98, type: !4390, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4399)
!4399 = !{!4397, !4400, !4401}
!4400 = !DILocalVariable(name: "n", arg: 2, scope: !4398, file: !4317, line: 98, type: !297)
!4401 = !DILocalVariable(name: "s", arg: 3, scope: !4398, file: !4317, line: 98, type: !297)
!4402 = !DILocation(line: 0, scope: !4398, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 91, column: 25, scope: !4389)
!4404 = !DILocation(line: 101, column: 13, scope: !4398, inlinedAt: !4403)
!4405 = !DILocation(line: 0, scope: !4276, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 91, column: 10, scope: !4389)
!4407 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4406)
!4408 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4406)
!4409 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4406)
!4410 = !DILocation(line: 91, column: 3, scope: !4389)
!4411 = distinct !DISubprogram(name: "xnmalloc", scope: !974, file: !974, line: 98, type: !4412, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4414)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!178, !180, !180}
!4414 = !{!4415, !4416}
!4415 = !DILocalVariable(name: "n", arg: 1, scope: !4411, file: !974, line: 98, type: !180)
!4416 = !DILocalVariable(name: "s", arg: 2, scope: !4411, file: !974, line: 98, type: !180)
!4417 = !DILocation(line: 0, scope: !4411)
!4418 = !DILocation(line: 0, scope: !4268, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 100, column: 10, scope: !4411)
!4420 = !DILocation(line: 85, column: 25, scope: !4268, inlinedAt: !4419)
!4421 = !DILocation(line: 0, scope: !4276, inlinedAt: !4422)
!4422 = distinct !DILocation(line: 85, column: 10, scope: !4268, inlinedAt: !4419)
!4423 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4422)
!4424 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4422)
!4425 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4422)
!4426 = !DILocation(line: 100, column: 3, scope: !4411)
!4427 = distinct !DISubprogram(name: "xinmalloc", scope: !974, file: !974, line: 104, type: !4428, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4430)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!178, !297, !297}
!4430 = !{!4431, !4432}
!4431 = !DILocalVariable(name: "n", arg: 1, scope: !4427, file: !974, line: 104, type: !297)
!4432 = !DILocalVariable(name: "s", arg: 2, scope: !4427, file: !974, line: 104, type: !297)
!4433 = !DILocation(line: 0, scope: !4427)
!4434 = !DILocation(line: 0, scope: !4389, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 106, column: 10, scope: !4427)
!4436 = !DILocation(line: 0, scope: !4398, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 91, column: 25, scope: !4389, inlinedAt: !4435)
!4438 = !DILocation(line: 101, column: 13, scope: !4398, inlinedAt: !4437)
!4439 = !DILocation(line: 0, scope: !4276, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 91, column: 10, scope: !4389, inlinedAt: !4435)
!4441 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4440)
!4442 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4440)
!4443 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4440)
!4444 = !DILocation(line: 106, column: 3, scope: !4427)
!4445 = distinct !DISubprogram(name: "x2realloc", scope: !974, file: !974, line: 116, type: !4446, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4448)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!178, !178, !980}
!4448 = !{!4449, !4450}
!4449 = !DILocalVariable(name: "p", arg: 1, scope: !4445, file: !974, line: 116, type: !178)
!4450 = !DILocalVariable(name: "ps", arg: 2, scope: !4445, file: !974, line: 116, type: !980)
!4451 = !DILocation(line: 0, scope: !4445)
!4452 = !DILocation(line: 0, scope: !977, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 118, column: 10, scope: !4445)
!4454 = !DILocation(line: 178, column: 14, scope: !977, inlinedAt: !4453)
!4455 = !DILocation(line: 180, column: 9, scope: !4456, inlinedAt: !4453)
!4456 = distinct !DILexicalBlock(scope: !977, file: !974, line: 180, column: 7)
!4457 = !DILocation(line: 180, column: 7, scope: !977, inlinedAt: !4453)
!4458 = !DILocation(line: 182, column: 13, scope: !4459, inlinedAt: !4453)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !974, line: 182, column: 11)
!4460 = distinct !DILexicalBlock(scope: !4456, file: !974, line: 181, column: 5)
!4461 = !DILocation(line: 182, column: 11, scope: !4460, inlinedAt: !4453)
!4462 = !DILocation(line: 197, column: 11, scope: !4463, inlinedAt: !4453)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !974, line: 197, column: 11)
!4464 = distinct !DILexicalBlock(scope: !4456, file: !974, line: 195, column: 5)
!4465 = !DILocation(line: 197, column: 11, scope: !4464, inlinedAt: !4453)
!4466 = !DILocation(line: 198, column: 9, scope: !4463, inlinedAt: !4453)
!4467 = !DILocation(line: 0, scope: !4268, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 201, column: 7, scope: !977, inlinedAt: !4453)
!4469 = !DILocation(line: 85, column: 25, scope: !4268, inlinedAt: !4468)
!4470 = !DILocation(line: 0, scope: !4276, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 85, column: 10, scope: !4268, inlinedAt: !4468)
!4472 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4471)
!4473 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4471)
!4474 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4471)
!4475 = !DILocation(line: 202, column: 7, scope: !977, inlinedAt: !4453)
!4476 = !DILocation(line: 118, column: 3, scope: !4445)
!4477 = !DILocation(line: 0, scope: !977)
!4478 = !DILocation(line: 178, column: 14, scope: !977)
!4479 = !DILocation(line: 180, column: 9, scope: !4456)
!4480 = !DILocation(line: 180, column: 7, scope: !977)
!4481 = !DILocation(line: 182, column: 13, scope: !4459)
!4482 = !DILocation(line: 182, column: 11, scope: !4460)
!4483 = !DILocation(line: 190, column: 30, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4459, file: !974, line: 183, column: 9)
!4485 = !DILocation(line: 191, column: 16, scope: !4484)
!4486 = !DILocation(line: 191, column: 13, scope: !4484)
!4487 = !DILocation(line: 192, column: 9, scope: !4484)
!4488 = !DILocation(line: 197, column: 11, scope: !4463)
!4489 = !DILocation(line: 197, column: 11, scope: !4464)
!4490 = !DILocation(line: 198, column: 9, scope: !4463)
!4491 = !DILocation(line: 0, scope: !4268, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 201, column: 7, scope: !977)
!4493 = !DILocation(line: 85, column: 25, scope: !4268, inlinedAt: !4492)
!4494 = !DILocation(line: 0, scope: !4276, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 85, column: 10, scope: !4268, inlinedAt: !4492)
!4496 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4495)
!4497 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4495)
!4498 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4495)
!4499 = !DILocation(line: 202, column: 7, scope: !977)
!4500 = !DILocation(line: 203, column: 3, scope: !977)
!4501 = !DILocation(line: 0, scope: !989)
!4502 = !DILocation(line: 230, column: 14, scope: !989)
!4503 = !DILocation(line: 238, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !989, file: !974, line: 238, column: 7)
!4505 = !DILocation(line: 238, column: 7, scope: !989)
!4506 = !DILocation(line: 240, column: 9, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !989, file: !974, line: 240, column: 7)
!4508 = !DILocation(line: 240, column: 18, scope: !4507)
!4509 = !DILocation(line: 253, column: 8, scope: !989)
!4510 = !DILocation(line: 258, column: 27, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !974, line: 257, column: 5)
!4512 = distinct !DILexicalBlock(scope: !989, file: !974, line: 256, column: 7)
!4513 = !DILocation(line: 259, column: 50, scope: !4511)
!4514 = !DILocation(line: 259, column: 32, scope: !4511)
!4515 = !DILocation(line: 260, column: 5, scope: !4511)
!4516 = !DILocation(line: 262, column: 9, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !989, file: !974, line: 262, column: 7)
!4518 = !DILocation(line: 262, column: 7, scope: !989)
!4519 = !DILocation(line: 263, column: 9, scope: !4517)
!4520 = !DILocation(line: 263, column: 5, scope: !4517)
!4521 = !DILocation(line: 264, column: 9, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !989, file: !974, line: 264, column: 7)
!4523 = !DILocation(line: 264, column: 14, scope: !4522)
!4524 = !DILocation(line: 265, column: 7, scope: !4522)
!4525 = !DILocation(line: 265, column: 11, scope: !4522)
!4526 = !DILocation(line: 266, column: 11, scope: !4522)
!4527 = !DILocation(line: 267, column: 14, scope: !4522)
!4528 = !DILocation(line: 264, column: 7, scope: !989)
!4529 = !DILocation(line: 268, column: 5, scope: !4522)
!4530 = !DILocation(line: 0, scope: !4343, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 269, column: 8, scope: !989)
!4532 = !DILocation(line: 0, scope: !4351, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 70, column: 25, scope: !4343, inlinedAt: !4531)
!4534 = !DILocation(line: 2059, column: 24, scope: !4351, inlinedAt: !4533)
!4535 = !DILocation(line: 2059, column: 10, scope: !4351, inlinedAt: !4533)
!4536 = !DILocation(line: 0, scope: !4276, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 70, column: 10, scope: !4343, inlinedAt: !4531)
!4538 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4537)
!4539 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4537)
!4540 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4537)
!4541 = !DILocation(line: 270, column: 7, scope: !989)
!4542 = !DILocation(line: 271, column: 3, scope: !989)
!4543 = distinct !DISubprogram(name: "xzalloc", scope: !974, file: !974, line: 279, type: !4296, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4544)
!4544 = !{!4545}
!4545 = !DILocalVariable(name: "s", arg: 1, scope: !4543, file: !974, line: 279, type: !180)
!4546 = !DILocation(line: 0, scope: !4543)
!4547 = !DILocalVariable(name: "n", arg: 1, scope: !4548, file: !974, line: 294, type: !180)
!4548 = distinct !DISubprogram(name: "xcalloc", scope: !974, file: !974, line: 294, type: !4412, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4549)
!4549 = !{!4547, !4550}
!4550 = !DILocalVariable(name: "s", arg: 2, scope: !4548, file: !974, line: 294, type: !180)
!4551 = !DILocation(line: 0, scope: !4548, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 281, column: 10, scope: !4543)
!4553 = !DILocation(line: 296, column: 25, scope: !4548, inlinedAt: !4552)
!4554 = !DILocation(line: 0, scope: !4276, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 296, column: 10, scope: !4548, inlinedAt: !4552)
!4556 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4555)
!4557 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4555)
!4558 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4555)
!4559 = !DILocation(line: 281, column: 3, scope: !4543)
!4560 = !DISubprogram(name: "calloc", scope: !1261, file: !1261, line: 543, type: !4412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!4561 = !DILocation(line: 0, scope: !4548)
!4562 = !DILocation(line: 296, column: 25, scope: !4548)
!4563 = !DILocation(line: 0, scope: !4276, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 296, column: 10, scope: !4548)
!4565 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4564)
!4566 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4564)
!4567 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4564)
!4568 = !DILocation(line: 296, column: 3, scope: !4548)
!4569 = distinct !DISubprogram(name: "xizalloc", scope: !974, file: !974, line: 285, type: !4310, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4570)
!4570 = !{!4571}
!4571 = !DILocalVariable(name: "s", arg: 1, scope: !4569, file: !974, line: 285, type: !297)
!4572 = !DILocation(line: 0, scope: !4569)
!4573 = !DILocalVariable(name: "n", arg: 1, scope: !4574, file: !974, line: 300, type: !297)
!4574 = distinct !DISubprogram(name: "xicalloc", scope: !974, file: !974, line: 300, type: !4428, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4575)
!4575 = !{!4573, !4576}
!4576 = !DILocalVariable(name: "s", arg: 2, scope: !4574, file: !974, line: 300, type: !297)
!4577 = !DILocation(line: 0, scope: !4574, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 287, column: 10, scope: !4569)
!4579 = !DILocalVariable(name: "n", arg: 1, scope: !4580, file: !4317, line: 77, type: !297)
!4580 = distinct !DISubprogram(name: "icalloc", scope: !4317, file: !4317, line: 77, type: !4428, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4581)
!4581 = !{!4579, !4582}
!4582 = !DILocalVariable(name: "s", arg: 2, scope: !4580, file: !4317, line: 77, type: !297)
!4583 = !DILocation(line: 0, scope: !4580, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 302, column: 25, scope: !4574, inlinedAt: !4578)
!4585 = !DILocation(line: 91, column: 10, scope: !4580, inlinedAt: !4584)
!4586 = !DILocation(line: 0, scope: !4276, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 302, column: 10, scope: !4574, inlinedAt: !4578)
!4588 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4587)
!4589 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4587)
!4590 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4587)
!4591 = !DILocation(line: 287, column: 3, scope: !4569)
!4592 = !DILocation(line: 0, scope: !4574)
!4593 = !DILocation(line: 0, scope: !4580, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 302, column: 25, scope: !4574)
!4595 = !DILocation(line: 91, column: 10, scope: !4580, inlinedAt: !4594)
!4596 = !DILocation(line: 0, scope: !4276, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 302, column: 10, scope: !4574)
!4598 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4597)
!4599 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4597)
!4600 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4597)
!4601 = !DILocation(line: 302, column: 3, scope: !4574)
!4602 = distinct !DISubprogram(name: "xmemdup", scope: !974, file: !974, line: 310, type: !4603, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4605)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!178, !1285, !180}
!4605 = !{!4606, !4607}
!4606 = !DILocalVariable(name: "p", arg: 1, scope: !4602, file: !974, line: 310, type: !1285)
!4607 = !DILocalVariable(name: "s", arg: 2, scope: !4602, file: !974, line: 310, type: !180)
!4608 = !DILocation(line: 0, scope: !4602)
!4609 = !DILocation(line: 0, scope: !4295, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 312, column: 18, scope: !4602)
!4611 = !DILocation(line: 49, column: 25, scope: !4295, inlinedAt: !4610)
!4612 = !DILocation(line: 0, scope: !4276, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 49, column: 10, scope: !4295, inlinedAt: !4610)
!4614 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4613)
!4615 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4613)
!4616 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4613)
!4617 = !DILocalVariable(name: "__dest", arg: 1, scope: !4618, file: !1458, line: 26, type: !1461)
!4618 = distinct !DISubprogram(name: "memcpy", scope: !1458, file: !1458, line: 26, type: !1459, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4619)
!4619 = !{!4617, !4620, !4621}
!4620 = !DILocalVariable(name: "__src", arg: 2, scope: !4618, file: !1458, line: 26, type: !1284)
!4621 = !DILocalVariable(name: "__len", arg: 3, scope: !4618, file: !1458, line: 26, type: !180)
!4622 = !DILocation(line: 0, scope: !4618, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 312, column: 10, scope: !4602)
!4624 = !DILocation(line: 29, column: 10, scope: !4618, inlinedAt: !4623)
!4625 = !DILocation(line: 312, column: 3, scope: !4602)
!4626 = distinct !DISubprogram(name: "ximemdup", scope: !974, file: !974, line: 316, type: !4627, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4629)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!178, !1285, !297}
!4629 = !{!4630, !4631}
!4630 = !DILocalVariable(name: "p", arg: 1, scope: !4626, file: !974, line: 316, type: !1285)
!4631 = !DILocalVariable(name: "s", arg: 2, scope: !4626, file: !974, line: 316, type: !297)
!4632 = !DILocation(line: 0, scope: !4626)
!4633 = !DILocation(line: 0, scope: !4309, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 318, column: 18, scope: !4626)
!4635 = !DILocation(line: 0, scope: !4316, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 55, column: 25, scope: !4309, inlinedAt: !4634)
!4637 = !DILocation(line: 57, column: 26, scope: !4316, inlinedAt: !4636)
!4638 = !DILocation(line: 0, scope: !4276, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 55, column: 10, scope: !4309, inlinedAt: !4634)
!4640 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4639)
!4641 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4639)
!4642 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4639)
!4643 = !DILocation(line: 0, scope: !4618, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 318, column: 10, scope: !4626)
!4645 = !DILocation(line: 29, column: 10, scope: !4618, inlinedAt: !4644)
!4646 = !DILocation(line: 318, column: 3, scope: !4626)
!4647 = distinct !DISubprogram(name: "ximemdup0", scope: !974, file: !974, line: 325, type: !4648, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!177, !1285, !297}
!4650 = !{!4651, !4652, !4653}
!4651 = !DILocalVariable(name: "p", arg: 1, scope: !4647, file: !974, line: 325, type: !1285)
!4652 = !DILocalVariable(name: "s", arg: 2, scope: !4647, file: !974, line: 325, type: !297)
!4653 = !DILocalVariable(name: "result", scope: !4647, file: !974, line: 327, type: !177)
!4654 = !DILocation(line: 0, scope: !4647)
!4655 = !DILocation(line: 327, column: 30, scope: !4647)
!4656 = !DILocation(line: 0, scope: !4309, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 327, column: 18, scope: !4647)
!4658 = !DILocation(line: 0, scope: !4316, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 55, column: 25, scope: !4309, inlinedAt: !4657)
!4660 = !DILocation(line: 57, column: 26, scope: !4316, inlinedAt: !4659)
!4661 = !DILocation(line: 0, scope: !4276, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 55, column: 10, scope: !4309, inlinedAt: !4657)
!4663 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4662)
!4664 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4662)
!4665 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4662)
!4666 = !DILocation(line: 328, column: 3, scope: !4647)
!4667 = !DILocation(line: 328, column: 13, scope: !4647)
!4668 = !DILocation(line: 0, scope: !4618, inlinedAt: !4669)
!4669 = distinct !DILocation(line: 329, column: 10, scope: !4647)
!4670 = !DILocation(line: 29, column: 10, scope: !4618, inlinedAt: !4669)
!4671 = !DILocation(line: 329, column: 3, scope: !4647)
!4672 = distinct !DISubprogram(name: "xstrdup", scope: !974, file: !974, line: 335, type: !1263, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4673)
!4673 = !{!4674}
!4674 = !DILocalVariable(name: "string", arg: 1, scope: !4672, file: !974, line: 335, type: !183)
!4675 = !DILocation(line: 0, scope: !4672)
!4676 = !DILocation(line: 337, column: 27, scope: !4672)
!4677 = !DILocation(line: 337, column: 43, scope: !4672)
!4678 = !DILocation(line: 0, scope: !4602, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 337, column: 10, scope: !4672)
!4680 = !DILocation(line: 0, scope: !4295, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 312, column: 18, scope: !4602, inlinedAt: !4679)
!4682 = !DILocation(line: 49, column: 25, scope: !4295, inlinedAt: !4681)
!4683 = !DILocation(line: 0, scope: !4276, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 49, column: 10, scope: !4295, inlinedAt: !4681)
!4685 = !DILocation(line: 39, column: 8, scope: !4283, inlinedAt: !4684)
!4686 = !DILocation(line: 39, column: 7, scope: !4276, inlinedAt: !4684)
!4687 = !DILocation(line: 40, column: 5, scope: !4283, inlinedAt: !4684)
!4688 = !DILocation(line: 0, scope: !4618, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 312, column: 10, scope: !4602, inlinedAt: !4679)
!4690 = !DILocation(line: 29, column: 10, scope: !4618, inlinedAt: !4689)
!4691 = !DILocation(line: 337, column: 3, scope: !4672)
!4692 = distinct !DISubprogram(name: "xalloc_die", scope: !921, file: !921, line: 32, type: !600, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4693)
!4693 = !{!4694}
!4694 = !DILocalVariable(name: "__errstatus", scope: !4695, file: !921, line: 34, type: !4696)
!4695 = distinct !DILexicalBlock(scope: !4692, file: !921, line: 34, column: 3)
!4696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!4697 = !DILocation(line: 34, column: 3, scope: !4695)
!4698 = !DILocation(line: 0, scope: !4695)
!4699 = !DILocation(line: 40, column: 3, scope: !4692)
!4700 = distinct !DISubprogram(name: "xnumtoimax", scope: !928, file: !928, line: 42, type: !4701, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4703)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!305, !183, !118, !305, !305, !183, !183, !118, !118}
!4703 = !{!4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4716, !4717, !4718}
!4704 = !DILocalVariable(name: "n_str", arg: 1, scope: !4700, file: !928, line: 42, type: !183)
!4705 = !DILocalVariable(name: "base", arg: 2, scope: !4700, file: !928, line: 42, type: !118)
!4706 = !DILocalVariable(name: "min", arg: 3, scope: !4700, file: !928, line: 42, type: !305)
!4707 = !DILocalVariable(name: "max", arg: 4, scope: !4700, file: !928, line: 42, type: !305)
!4708 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4700, file: !928, line: 43, type: !183)
!4709 = !DILocalVariable(name: "err", arg: 6, scope: !4700, file: !928, line: 43, type: !183)
!4710 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4700, file: !928, line: 43, type: !118)
!4711 = !DILocalVariable(name: "flags", arg: 8, scope: !4700, file: !928, line: 44, type: !118)
!4712 = !DILocalVariable(name: "tnum", scope: !4700, file: !928, line: 46, type: !305)
!4713 = !DILocalVariable(name: "r", scope: !4700, file: !928, line: 46, type: !305)
!4714 = !DILocalVariable(name: "s_err", scope: !4700, file: !928, line: 47, type: !4715)
!4715 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1010, line: 43, baseType: !1009)
!4716 = !DILocalVariable(name: "overflow_errno", scope: !4700, file: !928, line: 50, type: !118)
!4717 = !DILocalVariable(name: "e", scope: !4700, file: !928, line: 75, type: !118)
!4718 = !DILocalVariable(name: "__errstatus", scope: !4719, file: !928, line: 80, type: !4696)
!4719 = distinct !DILexicalBlock(scope: !4720, file: !928, line: 80, column: 5)
!4720 = distinct !DILexicalBlock(scope: !4700, file: !928, line: 77, column: 7)
!4721 = !DILocation(line: 0, scope: !4700)
!4722 = !DILocation(line: 46, column: 3, scope: !4700)
!4723 = !DILocation(line: 47, column: 24, scope: !4700)
!4724 = !DILocation(line: 52, column: 13, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4700, file: !928, line: 52, column: 7)
!4726 = !DILocation(line: 52, column: 7, scope: !4700)
!4727 = !DILocation(line: 54, column: 11, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !928, line: 54, column: 11)
!4729 = distinct !DILexicalBlock(scope: !4725, file: !928, line: 53, column: 5)
!4730 = !DILocation(line: 54, column: 16, scope: !4728)
!4731 = !DILocation(line: 54, column: 11, scope: !4729)
!4732 = !DILocation(line: 57, column: 34, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4728, file: !928, line: 55, column: 9)
!4734 = !DILocation(line: 57, column: 28, scope: !4733)
!4735 = !DILocation(line: 58, column: 21, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4733, file: !928, line: 58, column: 15)
!4737 = !DILocation(line: 0, scope: !4733)
!4738 = !DILocation(line: 61, column: 20, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4728, file: !928, line: 61, column: 16)
!4740 = !DILocation(line: 61, column: 16, scope: !4728)
!4741 = !DILocation(line: 64, column: 34, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4739, file: !928, line: 62, column: 9)
!4743 = !DILocation(line: 64, column: 28, scope: !4742)
!4744 = !DILocation(line: 65, column: 21, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !928, line: 65, column: 15)
!4746 = !DILocation(line: 0, scope: !4742)
!4747 = !DILocation(line: 75, column: 17, scope: !4700)
!4748 = !DILocation(line: 75, column: 11, scope: !4700)
!4749 = !DILocation(line: 77, column: 16, scope: !4720)
!4750 = !DILocation(line: 78, column: 10, scope: !4720)
!4751 = !DILocation(line: 79, column: 14, scope: !4720)
!4752 = !DILocation(line: 79, column: 31, scope: !4720)
!4753 = !DILocation(line: 79, column: 26, scope: !4720)
!4754 = !DILocation(line: 79, column: 23, scope: !4720)
!4755 = !DILocation(line: 77, column: 7, scope: !4700)
!4756 = !DILocation(line: 80, column: 5, scope: !4720)
!4757 = !DILocation(line: 82, column: 3, scope: !4700)
!4758 = !DILocation(line: 82, column: 9, scope: !4700)
!4759 = !DILocation(line: 84, column: 1, scope: !4700)
!4760 = !DILocation(line: 83, column: 3, scope: !4700)
!4761 = distinct !DISubprogram(name: "xdectoimax", scope: !928, file: !928, line: 92, type: !4762, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4764)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!305, !183, !305, !305, !183, !183, !118}
!4764 = !{!4765, !4766, !4767, !4768, !4769, !4770}
!4765 = !DILocalVariable(name: "n_str", arg: 1, scope: !4761, file: !928, line: 92, type: !183)
!4766 = !DILocalVariable(name: "min", arg: 2, scope: !4761, file: !928, line: 92, type: !305)
!4767 = !DILocalVariable(name: "max", arg: 3, scope: !4761, file: !928, line: 92, type: !305)
!4768 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4761, file: !928, line: 93, type: !183)
!4769 = !DILocalVariable(name: "err", arg: 5, scope: !4761, file: !928, line: 93, type: !183)
!4770 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4761, file: !928, line: 93, type: !118)
!4771 = !DILocation(line: 0, scope: !4761)
!4772 = !DILocation(line: 0, scope: !4700, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 95, column: 10, scope: !4761)
!4774 = !DILocation(line: 46, column: 3, scope: !4700, inlinedAt: !4773)
!4775 = !DILocation(line: 47, column: 24, scope: !4700, inlinedAt: !4773)
!4776 = !DILocation(line: 52, column: 13, scope: !4725, inlinedAt: !4773)
!4777 = !DILocation(line: 52, column: 7, scope: !4700, inlinedAt: !4773)
!4778 = !DILocation(line: 54, column: 11, scope: !4728, inlinedAt: !4773)
!4779 = !DILocation(line: 54, column: 16, scope: !4728, inlinedAt: !4773)
!4780 = !DILocation(line: 54, column: 11, scope: !4729, inlinedAt: !4773)
!4781 = !DILocation(line: 58, column: 21, scope: !4736, inlinedAt: !4773)
!4782 = !DILocation(line: 0, scope: !4733, inlinedAt: !4773)
!4783 = !DILocation(line: 61, column: 20, scope: !4739, inlinedAt: !4773)
!4784 = !DILocation(line: 61, column: 16, scope: !4728, inlinedAt: !4773)
!4785 = !DILocation(line: 65, column: 21, scope: !4745, inlinedAt: !4773)
!4786 = !DILocation(line: 0, scope: !4742, inlinedAt: !4773)
!4787 = !DILocation(line: 78, column: 10, scope: !4720, inlinedAt: !4773)
!4788 = !DILocation(line: 80, column: 5, scope: !4720, inlinedAt: !4773)
!4789 = !DILocation(line: 82, column: 3, scope: !4700, inlinedAt: !4773)
!4790 = !DILocation(line: 82, column: 9, scope: !4700, inlinedAt: !4773)
!4791 = !DILocation(line: 84, column: 1, scope: !4700, inlinedAt: !4773)
!4792 = !DILocation(line: 95, column: 3, scope: !4761)
!4793 = distinct !DISubprogram(name: "xstrtoimax", scope: !4794, file: !4794, line: 71, type: !4795, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !4798)
!4794 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!4715, !183, !1290, !118, !4797, !183}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4798 = !{!4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4811, !4812}
!4799 = !DILocalVariable(name: "nptr", arg: 1, scope: !4793, file: !4794, line: 71, type: !183)
!4800 = !DILocalVariable(name: "endptr", arg: 2, scope: !4793, file: !4794, line: 71, type: !1290)
!4801 = !DILocalVariable(name: "base", arg: 3, scope: !4793, file: !4794, line: 71, type: !118)
!4802 = !DILocalVariable(name: "val", arg: 4, scope: !4793, file: !4794, line: 72, type: !4797)
!4803 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4793, file: !4794, line: 72, type: !183)
!4804 = !DILocalVariable(name: "t_ptr", scope: !4793, file: !4794, line: 74, type: !177)
!4805 = !DILocalVariable(name: "p", scope: !4793, file: !4794, line: 75, type: !1290)
!4806 = !DILocalVariable(name: "tmp", scope: !4793, file: !4794, line: 91, type: !305)
!4807 = !DILocalVariable(name: "err", scope: !4793, file: !4794, line: 92, type: !4715)
!4808 = !DILocalVariable(name: "xbase", scope: !4809, file: !4794, line: 126, type: !118)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !4794, line: 119, column: 5)
!4810 = distinct !DILexicalBlock(scope: !4793, file: !4794, line: 118, column: 7)
!4811 = !DILocalVariable(name: "suffixes", scope: !4809, file: !4794, line: 127, type: !118)
!4812 = !DILocalVariable(name: "overflow", scope: !4809, file: !4794, line: 156, type: !4715)
!4813 = !DILocation(line: 0, scope: !4793)
!4814 = !DILocation(line: 74, column: 3, scope: !4793)
!4815 = !DILocation(line: 75, column: 14, scope: !4793)
!4816 = !DILocation(line: 90, column: 3, scope: !4793)
!4817 = !DILocation(line: 90, column: 9, scope: !4793)
!4818 = !DILocation(line: 91, column: 20, scope: !4793)
!4819 = !DILocation(line: 94, column: 7, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4793, file: !4794, line: 94, column: 7)
!4821 = !DILocation(line: 94, column: 10, scope: !4820)
!4822 = !DILocation(line: 94, column: 7, scope: !4793)
!4823 = !DILocation(line: 98, column: 14, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !4794, line: 98, column: 11)
!4825 = distinct !DILexicalBlock(scope: !4820, file: !4794, line: 95, column: 5)
!4826 = !DILocation(line: 98, column: 29, scope: !4824)
!4827 = !DILocation(line: 98, column: 32, scope: !4824)
!4828 = !DILocation(line: 98, column: 38, scope: !4824)
!4829 = !DILocation(line: 98, column: 41, scope: !4824)
!4830 = !DILocation(line: 98, column: 11, scope: !4825)
!4831 = !DILocation(line: 102, column: 12, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4820, file: !4794, line: 102, column: 12)
!4833 = !DILocation(line: 102, column: 12, scope: !4820)
!4834 = !DILocation(line: 107, column: 5, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4832, file: !4794, line: 103, column: 5)
!4836 = !DILocation(line: 112, column: 8, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4793, file: !4794, line: 112, column: 7)
!4838 = !DILocation(line: 112, column: 7, scope: !4793)
!4839 = !DILocation(line: 114, column: 12, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4837, file: !4794, line: 113, column: 5)
!4841 = !DILocation(line: 115, column: 7, scope: !4840)
!4842 = !DILocation(line: 118, column: 7, scope: !4810)
!4843 = !DILocation(line: 118, column: 11, scope: !4810)
!4844 = !DILocation(line: 118, column: 7, scope: !4793)
!4845 = !DILocation(line: 120, column: 12, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4809, file: !4794, line: 120, column: 11)
!4847 = !DILocation(line: 120, column: 11, scope: !4809)
!4848 = !DILocation(line: 122, column: 16, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4846, file: !4794, line: 121, column: 9)
!4850 = !DILocation(line: 123, column: 22, scope: !4849)
!4851 = !DILocation(line: 123, column: 11, scope: !4849)
!4852 = !DILocation(line: 0, scope: !4809)
!4853 = !DILocation(line: 128, column: 7, scope: !4809)
!4854 = !DILocation(line: 140, column: 15, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4856, file: !4794, line: 140, column: 15)
!4856 = distinct !DILexicalBlock(scope: !4809, file: !4794, line: 129, column: 9)
!4857 = !DILocation(line: 140, column: 15, scope: !4856)
!4858 = !DILocation(line: 141, column: 21, scope: !4855)
!4859 = !DILocation(line: 141, column: 13, scope: !4855)
!4860 = !DILocation(line: 144, column: 21, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !4794, line: 144, column: 21)
!4862 = distinct !DILexicalBlock(scope: !4855, file: !4794, line: 142, column: 15)
!4863 = !DILocation(line: 144, column: 29, scope: !4861)
!4864 = !DILocation(line: 144, column: 21, scope: !4862)
!4865 = !DILocation(line: 152, column: 17, scope: !4862)
!4866 = !DILocation(line: 157, column: 7, scope: !4809)
!4867 = !DILocalVariable(name: "err", scope: !4868, file: !4794, line: 64, type: !4715)
!4868 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4794, file: !4794, line: 62, type: !4869, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !4871)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!4715, !4797, !118, !118}
!4871 = !{!4872, !4873, !4874, !4867}
!4872 = !DILocalVariable(name: "x", arg: 1, scope: !4868, file: !4794, line: 62, type: !4797)
!4873 = !DILocalVariable(name: "base", arg: 2, scope: !4868, file: !4794, line: 62, type: !118)
!4874 = !DILocalVariable(name: "power", arg: 3, scope: !4868, file: !4794, line: 62, type: !118)
!4875 = !DILocation(line: 0, scope: !4868, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 219, column: 22, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4809, file: !4794, line: 158, column: 9)
!4878 = !DILocalVariable(name: "x", arg: 1, scope: !4879, file: !4794, line: 47, type: !4797)
!4879 = distinct !DISubprogram(name: "bkm_scale", scope: !4794, file: !4794, line: 47, type: !4880, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !4882)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!4715, !4797, !118}
!4882 = !{!4878, !4883, !4884}
!4883 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4879, file: !4794, line: 47, type: !118)
!4884 = !DILocalVariable(name: "scaled", scope: !4879, file: !4794, line: 49, type: !305)
!4885 = !DILocation(line: 0, scope: !4879, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4876)
!4887 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4886)
!4888 = distinct !DILexicalBlock(scope: !4879, file: !4794, line: 50, column: 7)
!4889 = !DILocation(line: 0, scope: !4868, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 215, column: 22, scope: !4877)
!4891 = !DILocation(line: 0, scope: !4879, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4890)
!4893 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4892)
!4894 = !DILocation(line: 0, scope: !4868, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 202, column: 22, scope: !4877)
!4896 = !DILocation(line: 0, scope: !4879, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4895)
!4898 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4897)
!4899 = !DILocation(line: 0, scope: !4868, inlinedAt: !4900)
!4900 = distinct !DILocation(line: 198, column: 22, scope: !4877)
!4901 = !DILocation(line: 0, scope: !4879, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4900)
!4903 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4902)
!4904 = !DILocation(line: 0, scope: !4868, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 194, column: 22, scope: !4877)
!4906 = !DILocation(line: 0, scope: !4879, inlinedAt: !4907)
!4907 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4905)
!4908 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4907)
!4909 = !DILocation(line: 0, scope: !4868, inlinedAt: !4910)
!4910 = distinct !DILocation(line: 175, column: 22, scope: !4877)
!4911 = !DILocation(line: 0, scope: !4879, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4910)
!4913 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4912)
!4914 = !DILocation(line: 0, scope: !4879, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 160, column: 22, scope: !4877)
!4916 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4915)
!4917 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4915)
!4918 = !DILocation(line: 0, scope: !4879, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 167, column: 22, scope: !4877)
!4920 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4919)
!4921 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4919)
!4922 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4912)
!4923 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4910)
!4924 = !DILocation(line: 227, column: 11, scope: !4809)
!4925 = !DILocation(line: 0, scope: !4868, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 180, column: 22, scope: !4877)
!4927 = !DILocation(line: 0, scope: !4879, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4926)
!4929 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4928)
!4930 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4928)
!4931 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4926)
!4932 = !DILocation(line: 0, scope: !4868, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 185, column: 22, scope: !4877)
!4934 = !DILocation(line: 0, scope: !4879, inlinedAt: !4935)
!4935 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4933)
!4936 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4935)
!4937 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4935)
!4938 = !DILocation(line: 0, scope: !4868, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 190, column: 22, scope: !4877)
!4940 = !DILocation(line: 0, scope: !4879, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4939)
!4942 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4941)
!4943 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4941)
!4944 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4939)
!4945 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4907)
!4946 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4905)
!4947 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4902)
!4948 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4900)
!4949 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4897)
!4950 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4895)
!4951 = !DILocation(line: 0, scope: !4868, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 207, column: 22, scope: !4877)
!4953 = !DILocation(line: 0, scope: !4879, inlinedAt: !4954)
!4954 = distinct !DILocation(line: 66, column: 12, scope: !4868, inlinedAt: !4952)
!4955 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4954)
!4956 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4954)
!4957 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4952)
!4958 = !DILocation(line: 0, scope: !4879, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 211, column: 22, scope: !4877)
!4960 = !DILocation(line: 50, column: 7, scope: !4888, inlinedAt: !4959)
!4961 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4959)
!4962 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4892)
!4963 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4890)
!4964 = !DILocation(line: 50, column: 7, scope: !4879, inlinedAt: !4886)
!4965 = !DILocation(line: 66, column: 9, scope: !4868, inlinedAt: !4876)
!4966 = !DILocation(line: 0, scope: !4877)
!4967 = !DILocation(line: 228, column: 10, scope: !4809)
!4968 = !DILocation(line: 229, column: 11, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4809, file: !4794, line: 229, column: 11)
!4970 = !DILocation(line: 229, column: 11, scope: !4809)
!4971 = !DILocation(line: 223, column: 16, scope: !4877)
!4972 = !DILocation(line: 224, column: 22, scope: !4877)
!4973 = !DILocation(line: 100, column: 11, scope: !4825)
!4974 = !DILocation(line: 92, column: 16, scope: !4793)
!4975 = !DILocation(line: 233, column: 8, scope: !4793)
!4976 = !DILocation(line: 234, column: 3, scope: !4793)
!4977 = !DILocation(line: 235, column: 1, scope: !4793)
!4978 = !DISubprogram(name: "strtoimax", scope: !4979, file: !4979, line: 297, type: !4980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!4979 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!305, !1126, !4982, !118}
!4982 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1290)
!4983 = distinct !DISubprogram(name: "rpl_fopen", scope: !1023, file: !1023, line: 46, type: !4984, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !5020)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!4986, !183, !183}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !4988)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !4989)
!4989 = !{!4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4988, file: !346, line: 51, baseType: !118, size: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4988, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4988, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4988, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4988, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4988, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4988, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4988, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4988, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4988, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4988, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4988, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4988, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4988, file: !346, line: 70, baseType: !5004, size: 64, offset: 832)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4988, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4988, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4988, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4988, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4988, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4988, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4988, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4988, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4988, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4988, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4988, file: !346, line: 93, baseType: !5004, size: 64, offset: 1344)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4988, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4988, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4988, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4988, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!5020 = !{!5021, !5022, !5023, !5024, !5025, !5026, !5030, !5032, !5033, !5038, !5041, !5042}
!5021 = !DILocalVariable(name: "filename", arg: 1, scope: !4983, file: !1023, line: 46, type: !183)
!5022 = !DILocalVariable(name: "mode", arg: 2, scope: !4983, file: !1023, line: 46, type: !183)
!5023 = !DILocalVariable(name: "open_direction", scope: !4983, file: !1023, line: 54, type: !118)
!5024 = !DILocalVariable(name: "open_flags", scope: !4983, file: !1023, line: 55, type: !118)
!5025 = !DILocalVariable(name: "open_flags_gnu", scope: !4983, file: !1023, line: 57, type: !186)
!5026 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4983, file: !1023, line: 59, type: !5027)
!5027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5028)
!5028 = !{!5029}
!5029 = !DISubrange(count: 81)
!5030 = !DILocalVariable(name: "p", scope: !5031, file: !1023, line: 62, type: !183)
!5031 = distinct !DILexicalBlock(scope: !4983, file: !1023, line: 61, column: 3)
!5032 = !DILocalVariable(name: "q", scope: !5031, file: !1023, line: 64, type: !177)
!5033 = !DILocalVariable(name: "len", scope: !5034, file: !1023, line: 128, type: !180)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !1023, line: 127, column: 9)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !1023, line: 68, column: 7)
!5036 = distinct !DILexicalBlock(scope: !5037, file: !1023, line: 67, column: 5)
!5037 = distinct !DILexicalBlock(scope: !5031, file: !1023, line: 67, column: 5)
!5038 = !DILocalVariable(name: "fd", scope: !5039, file: !1023, line: 199, type: !118)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !1023, line: 198, column: 5)
!5040 = distinct !DILexicalBlock(scope: !4983, file: !1023, line: 197, column: 7)
!5041 = !DILocalVariable(name: "fp", scope: !5039, file: !1023, line: 204, type: !4986)
!5042 = !DILocalVariable(name: "saved_errno", scope: !5043, file: !1023, line: 207, type: !118)
!5043 = distinct !DILexicalBlock(scope: !5044, file: !1023, line: 206, column: 9)
!5044 = distinct !DILexicalBlock(scope: !5039, file: !1023, line: 205, column: 11)
!5045 = !DILocation(line: 0, scope: !4983)
!5046 = !DILocation(line: 59, column: 3, scope: !4983)
!5047 = !DILocation(line: 59, column: 8, scope: !4983)
!5048 = !DILocation(line: 0, scope: !5031)
!5049 = !DILocation(line: 67, column: 12, scope: !5036)
!5050 = !DILocation(line: 67, column: 15, scope: !5036)
!5051 = !DILocation(line: 67, column: 5, scope: !5037)
!5052 = !DILocation(line: 138, column: 8, scope: !5031)
!5053 = !DILocation(line: 197, column: 7, scope: !4983)
!5054 = !DILocation(line: 69, column: 9, scope: !5035)
!5055 = !DILocation(line: 74, column: 19, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5057, file: !1023, line: 74, column: 17)
!5057 = distinct !DILexicalBlock(scope: !5035, file: !1023, line: 70, column: 11)
!5058 = !DILocation(line: 74, column: 17, scope: !5057)
!5059 = !DILocation(line: 75, column: 17, scope: !5056)
!5060 = !DILocation(line: 75, column: 20, scope: !5056)
!5061 = !DILocation(line: 75, column: 15, scope: !5056)
!5062 = !DILocation(line: 80, column: 24, scope: !5057)
!5063 = !DILocation(line: 82, column: 19, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5057, file: !1023, line: 82, column: 17)
!5065 = !DILocation(line: 82, column: 17, scope: !5057)
!5066 = !DILocation(line: 83, column: 17, scope: !5064)
!5067 = !DILocation(line: 83, column: 20, scope: !5064)
!5068 = !DILocation(line: 83, column: 15, scope: !5064)
!5069 = !DILocation(line: 88, column: 24, scope: !5057)
!5070 = !DILocation(line: 90, column: 19, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5057, file: !1023, line: 90, column: 17)
!5072 = !DILocation(line: 90, column: 17, scope: !5057)
!5073 = !DILocation(line: 91, column: 17, scope: !5071)
!5074 = !DILocation(line: 91, column: 20, scope: !5071)
!5075 = !DILocation(line: 91, column: 15, scope: !5071)
!5076 = !DILocation(line: 100, column: 19, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5057, file: !1023, line: 100, column: 17)
!5078 = !DILocation(line: 100, column: 17, scope: !5057)
!5079 = !DILocation(line: 101, column: 17, scope: !5077)
!5080 = !DILocation(line: 101, column: 20, scope: !5077)
!5081 = !DILocation(line: 101, column: 15, scope: !5077)
!5082 = !DILocation(line: 107, column: 19, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5057, file: !1023, line: 107, column: 17)
!5084 = !DILocation(line: 107, column: 17, scope: !5057)
!5085 = !DILocation(line: 108, column: 17, scope: !5083)
!5086 = !DILocation(line: 108, column: 20, scope: !5083)
!5087 = !DILocation(line: 108, column: 15, scope: !5083)
!5088 = !DILocation(line: 113, column: 24, scope: !5057)
!5089 = !DILocation(line: 115, column: 13, scope: !5057)
!5090 = !DILocation(line: 117, column: 24, scope: !5057)
!5091 = !DILocation(line: 119, column: 13, scope: !5057)
!5092 = !DILocation(line: 128, column: 24, scope: !5034)
!5093 = !DILocation(line: 0, scope: !5034)
!5094 = !DILocation(line: 129, column: 48, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5034, file: !1023, line: 129, column: 15)
!5096 = !DILocation(line: 129, column: 15, scope: !5034)
!5097 = !DILocalVariable(name: "__dest", arg: 1, scope: !5098, file: !1458, line: 26, type: !1461)
!5098 = distinct !DISubprogram(name: "memcpy", scope: !1458, file: !1458, line: 26, type: !1459, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !5099)
!5099 = !{!5097, !5100, !5101}
!5100 = !DILocalVariable(name: "__src", arg: 2, scope: !5098, file: !1458, line: 26, type: !1284)
!5101 = !DILocalVariable(name: "__len", arg: 3, scope: !5098, file: !1458, line: 26, type: !180)
!5102 = !DILocation(line: 0, scope: !5098, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 131, column: 11, scope: !5034)
!5104 = !DILocation(line: 29, column: 10, scope: !5098, inlinedAt: !5103)
!5105 = !DILocation(line: 132, column: 13, scope: !5034)
!5106 = !DILocation(line: 135, column: 9, scope: !5035)
!5107 = !DILocation(line: 67, column: 25, scope: !5036)
!5108 = distinct !{!5108, !5051, !5109, !1183}
!5109 = !DILocation(line: 136, column: 7, scope: !5037)
!5110 = !DILocation(line: 197, column: 7, scope: !5040)
!5111 = !DILocation(line: 199, column: 47, scope: !5039)
!5112 = !DILocation(line: 199, column: 16, scope: !5039)
!5113 = !DILocation(line: 0, scope: !5039)
!5114 = !DILocation(line: 201, column: 14, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5039, file: !1023, line: 201, column: 11)
!5116 = !DILocation(line: 201, column: 11, scope: !5039)
!5117 = !DILocation(line: 204, column: 18, scope: !5039)
!5118 = !DILocation(line: 205, column: 14, scope: !5044)
!5119 = !DILocation(line: 205, column: 11, scope: !5039)
!5120 = !DILocation(line: 207, column: 29, scope: !5043)
!5121 = !DILocation(line: 0, scope: !5043)
!5122 = !DILocation(line: 208, column: 11, scope: !5043)
!5123 = !DILocation(line: 209, column: 17, scope: !5043)
!5124 = !DILocation(line: 210, column: 9, scope: !5043)
!5125 = !DILocalVariable(name: "filename", arg: 1, scope: !5126, file: !1023, line: 30, type: !183)
!5126 = distinct !DISubprogram(name: "orig_fopen", scope: !1023, file: !1023, line: 30, type: !4984, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !5127)
!5127 = !{!5125, !5128}
!5128 = !DILocalVariable(name: "mode", arg: 2, scope: !5126, file: !1023, line: 30, type: !183)
!5129 = !DILocation(line: 0, scope: !5126, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 219, column: 10, scope: !4983)
!5131 = !DILocation(line: 32, column: 10, scope: !5126, inlinedAt: !5130)
!5132 = !DILocation(line: 219, column: 3, scope: !4983)
!5133 = !DILocation(line: 220, column: 1, scope: !4983)
!5134 = !DISubprogram(name: "open", scope: !2133, file: !2133, line: 181, type: !5135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!118, !183, !118, null}
!5137 = !DISubprogram(name: "fdopen", scope: !1131, file: !1131, line: 293, type: !5138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!4986, !118, !183}
!5140 = !DISubprogram(name: "close", scope: !1998, file: !1998, line: 358, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!5141 = !DISubprogram(name: "fopen", scope: !1131, file: !1131, line: 258, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!4986, !1126, !1126}
!5144 = distinct !DISubprogram(name: "close_stream", scope: !1025, file: !1025, line: 55, type: !5145, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !5181)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!118, !5147}
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !344, line: 7, baseType: !5149)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !346, line: 49, size: 1728, elements: !5150)
!5150 = !{!5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5149, file: !346, line: 51, baseType: !118, size: 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5149, file: !346, line: 54, baseType: !177, size: 64, offset: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5149, file: !346, line: 55, baseType: !177, size: 64, offset: 128)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5149, file: !346, line: 56, baseType: !177, size: 64, offset: 192)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5149, file: !346, line: 57, baseType: !177, size: 64, offset: 256)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5149, file: !346, line: 58, baseType: !177, size: 64, offset: 320)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5149, file: !346, line: 59, baseType: !177, size: 64, offset: 384)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5149, file: !346, line: 60, baseType: !177, size: 64, offset: 448)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5149, file: !346, line: 61, baseType: !177, size: 64, offset: 512)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5149, file: !346, line: 64, baseType: !177, size: 64, offset: 576)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5149, file: !346, line: 65, baseType: !177, size: 64, offset: 640)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5149, file: !346, line: 66, baseType: !177, size: 64, offset: 704)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5149, file: !346, line: 68, baseType: !361, size: 64, offset: 768)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5149, file: !346, line: 70, baseType: !5165, size: 64, offset: 832)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5149, file: !346, line: 72, baseType: !118, size: 32, offset: 896)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5149, file: !346, line: 73, baseType: !118, size: 32, offset: 928)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5149, file: !346, line: 74, baseType: !368, size: 64, offset: 960)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5149, file: !346, line: 77, baseType: !179, size: 16, offset: 1024)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5149, file: !346, line: 78, baseType: !371, size: 8, offset: 1040)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5149, file: !346, line: 79, baseType: !86, size: 8, offset: 1048)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5149, file: !346, line: 81, baseType: !374, size: 64, offset: 1088)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5149, file: !346, line: 89, baseType: !377, size: 64, offset: 1152)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5149, file: !346, line: 91, baseType: !379, size: 64, offset: 1216)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5149, file: !346, line: 92, baseType: !382, size: 64, offset: 1280)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5149, file: !346, line: 93, baseType: !5165, size: 64, offset: 1344)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5149, file: !346, line: 94, baseType: !178, size: 64, offset: 1408)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5149, file: !346, line: 95, baseType: !180, size: 64, offset: 1472)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5149, file: !346, line: 96, baseType: !118, size: 32, offset: 1536)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5149, file: !346, line: 98, baseType: !389, size: 160, offset: 1568)
!5181 = !{!5182, !5183, !5185, !5186}
!5182 = !DILocalVariable(name: "stream", arg: 1, scope: !5144, file: !1025, line: 55, type: !5147)
!5183 = !DILocalVariable(name: "some_pending", scope: !5144, file: !1025, line: 57, type: !5184)
!5184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!5185 = !DILocalVariable(name: "prev_fail", scope: !5144, file: !1025, line: 58, type: !5184)
!5186 = !DILocalVariable(name: "fclose_fail", scope: !5144, file: !1025, line: 59, type: !5184)
!5187 = !DILocation(line: 0, scope: !5144)
!5188 = !DILocation(line: 57, column: 30, scope: !5144)
!5189 = !DILocalVariable(name: "__stream", arg: 1, scope: !5190, file: !1759, line: 135, type: !5147)
!5190 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1759, file: !1759, line: 135, type: !5145, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !5191)
!5191 = !{!5189}
!5192 = !DILocation(line: 0, scope: !5190, inlinedAt: !5193)
!5193 = distinct !DILocation(line: 58, column: 27, scope: !5144)
!5194 = !DILocation(line: 137, column: 10, scope: !5190, inlinedAt: !5193)
!5195 = !DILocation(line: 58, column: 43, scope: !5144)
!5196 = !DILocation(line: 59, column: 29, scope: !5144)
!5197 = !DILocation(line: 59, column: 45, scope: !5144)
!5198 = !DILocation(line: 69, column: 17, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5144, file: !1025, line: 69, column: 7)
!5200 = !DILocation(line: 57, column: 50, scope: !5144)
!5201 = !DILocation(line: 69, column: 33, scope: !5199)
!5202 = !DILocation(line: 69, column: 53, scope: !5199)
!5203 = !DILocation(line: 69, column: 59, scope: !5199)
!5204 = !DILocation(line: 69, column: 7, scope: !5144)
!5205 = !DILocation(line: 71, column: 11, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5199, file: !1025, line: 70, column: 5)
!5207 = !DILocation(line: 72, column: 9, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5206, file: !1025, line: 71, column: 11)
!5209 = !DILocation(line: 72, column: 15, scope: !5208)
!5210 = !DILocation(line: 77, column: 1, scope: !5144)
!5211 = !DISubprogram(name: "__fpending", scope: !2341, file: !2341, line: 75, type: !5212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!180, !5147}
!5214 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !931, file: !931, line: 100, type: !5215, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5218)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!180, !1641, !183, !180, !5217}
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!5218 = !{!5219, !5220, !5221, !5222, !5223}
!5219 = !DILocalVariable(name: "pwc", arg: 1, scope: !5214, file: !931, line: 100, type: !1641)
!5220 = !DILocalVariable(name: "s", arg: 2, scope: !5214, file: !931, line: 100, type: !183)
!5221 = !DILocalVariable(name: "n", arg: 3, scope: !5214, file: !931, line: 100, type: !180)
!5222 = !DILocalVariable(name: "ps", arg: 4, scope: !5214, file: !931, line: 100, type: !5217)
!5223 = !DILocalVariable(name: "ret", scope: !5214, file: !931, line: 130, type: !180)
!5224 = !DILocation(line: 0, scope: !5214)
!5225 = !DILocation(line: 105, column: 9, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5214, file: !931, line: 105, column: 7)
!5227 = !DILocation(line: 105, column: 7, scope: !5214)
!5228 = !DILocation(line: 117, column: 10, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5214, file: !931, line: 117, column: 7)
!5230 = !DILocation(line: 117, column: 7, scope: !5214)
!5231 = !DILocation(line: 130, column: 16, scope: !5214)
!5232 = !DILocation(line: 135, column: 11, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5214, file: !931, line: 135, column: 7)
!5234 = !DILocation(line: 135, column: 25, scope: !5233)
!5235 = !DILocation(line: 135, column: 30, scope: !5233)
!5236 = !DILocation(line: 135, column: 7, scope: !5214)
!5237 = !DILocalVariable(name: "ps", arg: 1, scope: !5238, file: !2780, line: 1135, type: !5217)
!5238 = distinct !DISubprogram(name: "mbszero", scope: !2780, file: !2780, line: 1135, type: !5239, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{null, !5217}
!5241 = !{!5237}
!5242 = !DILocation(line: 0, scope: !5238, inlinedAt: !5243)
!5243 = distinct !DILocation(line: 137, column: 5, scope: !5233)
!5244 = !DILocalVariable(name: "__dest", arg: 1, scope: !5245, file: !1458, line: 57, type: !178)
!5245 = distinct !DISubprogram(name: "memset", scope: !1458, file: !1458, line: 57, type: !1540, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5246)
!5246 = !{!5244, !5247, !5248}
!5247 = !DILocalVariable(name: "__ch", arg: 2, scope: !5245, file: !1458, line: 57, type: !118)
!5248 = !DILocalVariable(name: "__len", arg: 3, scope: !5245, file: !1458, line: 57, type: !180)
!5249 = !DILocation(line: 0, scope: !5245, inlinedAt: !5250)
!5250 = distinct !DILocation(line: 1137, column: 3, scope: !5238, inlinedAt: !5243)
!5251 = !DILocation(line: 59, column: 10, scope: !5245, inlinedAt: !5250)
!5252 = !DILocation(line: 137, column: 5, scope: !5233)
!5253 = !DILocation(line: 138, column: 11, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5214, file: !931, line: 138, column: 7)
!5255 = !DILocation(line: 138, column: 7, scope: !5214)
!5256 = !DILocation(line: 139, column: 5, scope: !5254)
!5257 = !DILocation(line: 143, column: 26, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5214, file: !931, line: 143, column: 7)
!5259 = !DILocation(line: 143, column: 41, scope: !5258)
!5260 = !DILocation(line: 143, column: 7, scope: !5214)
!5261 = !DILocation(line: 145, column: 15, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !931, line: 145, column: 11)
!5263 = distinct !DILexicalBlock(scope: !5258, file: !931, line: 144, column: 5)
!5264 = !DILocation(line: 145, column: 11, scope: !5263)
!5265 = !DILocation(line: 146, column: 32, scope: !5262)
!5266 = !DILocation(line: 146, column: 16, scope: !5262)
!5267 = !DILocation(line: 146, column: 14, scope: !5262)
!5268 = !DILocation(line: 146, column: 9, scope: !5262)
!5269 = !DILocation(line: 286, column: 1, scope: !5214)
!5270 = !DISubprogram(name: "mbsinit", scope: !5271, file: !5271, line: 293, type: !5272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1064)
!5271 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!118, !5274}
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!5276 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1027, file: !1027, line: 27, type: !4260, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !5277)
!5277 = !{!5278, !5279, !5280, !5281}
!5278 = !DILocalVariable(name: "ptr", arg: 1, scope: !5276, file: !1027, line: 27, type: !178)
!5279 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5276, file: !1027, line: 27, type: !180)
!5280 = !DILocalVariable(name: "size", arg: 3, scope: !5276, file: !1027, line: 27, type: !180)
!5281 = !DILocalVariable(name: "nbytes", scope: !5276, file: !1027, line: 29, type: !180)
!5282 = !DILocation(line: 0, scope: !5276)
!5283 = !DILocation(line: 30, column: 7, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5276, file: !1027, line: 30, column: 7)
!5285 = !DILocalVariable(name: "ptr", arg: 1, scope: !5286, file: !4352, line: 2057, type: !178)
!5286 = distinct !DISubprogram(name: "rpl_realloc", scope: !4352, file: !4352, line: 2057, type: !4344, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !5287)
!5287 = !{!5285, !5288}
!5288 = !DILocalVariable(name: "size", arg: 2, scope: !5286, file: !4352, line: 2057, type: !180)
!5289 = !DILocation(line: 0, scope: !5286, inlinedAt: !5290)
!5290 = distinct !DILocation(line: 37, column: 10, scope: !5276)
!5291 = !DILocation(line: 2059, column: 24, scope: !5286, inlinedAt: !5290)
!5292 = !DILocation(line: 2059, column: 10, scope: !5286, inlinedAt: !5290)
!5293 = !DILocation(line: 37, column: 3, scope: !5276)
!5294 = !DILocation(line: 32, column: 7, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5284, file: !1027, line: 31, column: 5)
!5296 = !DILocation(line: 32, column: 13, scope: !5295)
!5297 = !DILocation(line: 33, column: 7, scope: !5295)
!5298 = !DILocation(line: 38, column: 1, scope: !5276)
!5299 = distinct !DISubprogram(name: "hard_locale", scope: !949, file: !949, line: 28, type: !5300, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !5302)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!186, !118}
!5302 = !{!5303, !5304}
!5303 = !DILocalVariable(name: "category", arg: 1, scope: !5299, file: !949, line: 28, type: !118)
!5304 = !DILocalVariable(name: "locale", scope: !5299, file: !949, line: 30, type: !5305)
!5305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5306)
!5306 = !{!5307}
!5307 = !DISubrange(count: 257)
!5308 = !DILocation(line: 0, scope: !5299)
!5309 = !DILocation(line: 30, column: 3, scope: !5299)
!5310 = !DILocation(line: 30, column: 8, scope: !5299)
!5311 = !DILocation(line: 32, column: 7, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5299, file: !949, line: 32, column: 7)
!5313 = !DILocation(line: 32, column: 7, scope: !5299)
!5314 = !DILocalVariable(name: "__s1", arg: 1, scope: !5315, file: !1149, line: 1359, type: !183)
!5315 = distinct !DISubprogram(name: "streq", scope: !1149, file: !1149, line: 1359, type: !1150, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !5316)
!5316 = !{!5314, !5317}
!5317 = !DILocalVariable(name: "__s2", arg: 2, scope: !5315, file: !1149, line: 1359, type: !183)
!5318 = !DILocation(line: 0, scope: !5315, inlinedAt: !5319)
!5319 = distinct !DILocation(line: 35, column: 9, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5299, file: !949, line: 35, column: 7)
!5321 = !DILocation(line: 1361, column: 11, scope: !5315, inlinedAt: !5319)
!5322 = !DILocation(line: 35, column: 29, scope: !5320)
!5323 = !DILocation(line: 0, scope: !5315, inlinedAt: !5324)
!5324 = distinct !DILocation(line: 35, column: 32, scope: !5320)
!5325 = !DILocation(line: 1361, column: 11, scope: !5315, inlinedAt: !5324)
!5326 = !DILocation(line: 1361, column: 10, scope: !5315, inlinedAt: !5324)
!5327 = !DILocation(line: 35, column: 7, scope: !5299)
!5328 = !DILocation(line: 46, column: 3, scope: !5299)
!5329 = !DILocation(line: 47, column: 1, scope: !5299)
!5330 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1034, file: !1034, line: 154, type: !5331, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!118, !118, !177, !180}
!5333 = !{!5334, !5335, !5336}
!5334 = !DILocalVariable(name: "category", arg: 1, scope: !5330, file: !1034, line: 154, type: !118)
!5335 = !DILocalVariable(name: "buf", arg: 2, scope: !5330, file: !1034, line: 154, type: !177)
!5336 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5330, file: !1034, line: 154, type: !180)
!5337 = !DILocation(line: 0, scope: !5330)
!5338 = !DILocation(line: 159, column: 10, scope: !5330)
!5339 = !DILocation(line: 159, column: 3, scope: !5330)
!5340 = distinct !DISubprogram(name: "setlocale_null", scope: !1034, file: !1034, line: 186, type: !5341, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !5343)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!183, !118}
!5343 = !{!5344}
!5344 = !DILocalVariable(name: "category", arg: 1, scope: !5340, file: !1034, line: 186, type: !118)
!5345 = !DILocation(line: 0, scope: !5340)
!5346 = !DILocation(line: 189, column: 10, scope: !5340)
!5347 = !DILocation(line: 189, column: 3, scope: !5340)
!5348 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1036, file: !1036, line: 35, type: !5341, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !5349)
!5349 = !{!5350, !5351}
!5350 = !DILocalVariable(name: "category", arg: 1, scope: !5348, file: !1036, line: 35, type: !118)
!5351 = !DILocalVariable(name: "result", scope: !5348, file: !1036, line: 37, type: !183)
!5352 = !DILocation(line: 0, scope: !5348)
!5353 = !DILocation(line: 37, column: 24, scope: !5348)
!5354 = !DILocation(line: 62, column: 3, scope: !5348)
!5355 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1036, file: !1036, line: 66, type: !5331, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !5356)
!5356 = !{!5357, !5358, !5359, !5360, !5361}
!5357 = !DILocalVariable(name: "category", arg: 1, scope: !5355, file: !1036, line: 66, type: !118)
!5358 = !DILocalVariable(name: "buf", arg: 2, scope: !5355, file: !1036, line: 66, type: !177)
!5359 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5355, file: !1036, line: 66, type: !180)
!5360 = !DILocalVariable(name: "result", scope: !5355, file: !1036, line: 111, type: !183)
!5361 = !DILocalVariable(name: "length", scope: !5362, file: !1036, line: 125, type: !180)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !1036, line: 124, column: 5)
!5363 = distinct !DILexicalBlock(scope: !5355, file: !1036, line: 113, column: 7)
!5364 = !DILocation(line: 0, scope: !5355)
!5365 = !DILocation(line: 0, scope: !5348, inlinedAt: !5366)
!5366 = distinct !DILocation(line: 111, column: 24, scope: !5355)
!5367 = !DILocation(line: 37, column: 24, scope: !5348, inlinedAt: !5366)
!5368 = !DILocation(line: 113, column: 14, scope: !5363)
!5369 = !DILocation(line: 113, column: 7, scope: !5355)
!5370 = !DILocation(line: 116, column: 19, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !1036, line: 116, column: 11)
!5372 = distinct !DILexicalBlock(scope: !5363, file: !1036, line: 114, column: 5)
!5373 = !DILocation(line: 116, column: 11, scope: !5372)
!5374 = !DILocation(line: 120, column: 16, scope: !5371)
!5375 = !DILocation(line: 120, column: 9, scope: !5371)
!5376 = !DILocation(line: 125, column: 23, scope: !5362)
!5377 = !DILocation(line: 0, scope: !5362)
!5378 = !DILocation(line: 126, column: 18, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5362, file: !1036, line: 126, column: 11)
!5380 = !DILocation(line: 126, column: 11, scope: !5362)
!5381 = !DILocation(line: 128, column: 39, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5379, file: !1036, line: 127, column: 9)
!5383 = !DILocalVariable(name: "__dest", arg: 1, scope: !5384, file: !1458, line: 26, type: !1461)
!5384 = distinct !DISubprogram(name: "memcpy", scope: !1458, file: !1458, line: 26, type: !1459, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !5385)
!5385 = !{!5383, !5386, !5387}
!5386 = !DILocalVariable(name: "__src", arg: 2, scope: !5384, file: !1458, line: 26, type: !1284)
!5387 = !DILocalVariable(name: "__len", arg: 3, scope: !5384, file: !1458, line: 26, type: !180)
!5388 = !DILocation(line: 0, scope: !5384, inlinedAt: !5389)
!5389 = distinct !DILocation(line: 128, column: 11, scope: !5382)
!5390 = !DILocation(line: 29, column: 10, scope: !5384, inlinedAt: !5389)
!5391 = !DILocation(line: 129, column: 11, scope: !5382)
!5392 = !DILocation(line: 133, column: 23, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5394, file: !1036, line: 133, column: 15)
!5394 = distinct !DILexicalBlock(scope: !5379, file: !1036, line: 132, column: 9)
!5395 = !DILocation(line: 133, column: 15, scope: !5394)
!5396 = !DILocation(line: 138, column: 44, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5393, file: !1036, line: 134, column: 13)
!5398 = !DILocation(line: 0, scope: !5384, inlinedAt: !5399)
!5399 = distinct !DILocation(line: 138, column: 15, scope: !5397)
!5400 = !DILocation(line: 29, column: 10, scope: !5384, inlinedAt: !5399)
!5401 = !DILocation(line: 139, column: 15, scope: !5397)
!5402 = !DILocation(line: 139, column: 32, scope: !5397)
!5403 = !DILocation(line: 140, column: 13, scope: !5397)
!5404 = !DILocation(line: 0, scope: !5363)
!5405 = !DILocation(line: 145, column: 1, scope: !5355)
