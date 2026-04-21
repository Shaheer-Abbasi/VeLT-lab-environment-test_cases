; ModuleID = 'src/nl.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@header_type = internal global ptr @.str.91, align 8, !dbg !544
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !269
@header_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !278
@.str.24 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1, !dbg !187
@optarg = external local_unnamed_addr global ptr, align 8
@body_type = internal global ptr @.str.92, align 8, !dbg !548
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !245
@body_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !273
@.str.25 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1, !dbg !192
@footer_type = internal global ptr @.str.91, align 8, !dbg !550
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !271
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !280
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid footer numbering style: %s\00", align 1, !dbg !194
@.str.27 = private unnamed_addr constant [29 x i8] c"invalid starting line number\00", align 1, !dbg !196
@starting_line_number = internal unnamed_addr global i64 1, align 8, !dbg !552
@.str.28 = private unnamed_addr constant [30 x i8] c"invalid line number increment\00", align 1, !dbg !201
@page_incr = internal unnamed_addr global i64 1, align 8, !dbg !554
@reset_numbers = internal unnamed_addr global i1 false, align 1, !dbg !624
@.str.29 = private unnamed_addr constant [35 x i8] c"invalid line number of blank lines\00", align 1, !dbg !206
@blank_join = internal unnamed_addr global i64 1, align 8, !dbg !558
@separator_str = internal unnamed_addr global ptr @.str.93, align 8, !dbg !562
@.str.30 = private unnamed_addr constant [32 x i8] c"invalid line number field width\00", align 1, !dbg !208
@lineno_width = internal unnamed_addr global i32 6, align 4, !dbg !564
@.str.31 = private unnamed_addr constant [3 x i8] c"ln\00", align 1, !dbg !213
@FORMAT_LEFT = internal constant [8 x i8] c"%-*jd%s\00", align 1, !dbg !566
@lineno_format = internal unnamed_addr global ptr @FORMAT_RIGHT_NOLZ, align 8, !dbg !569
@.str.32 = private unnamed_addr constant [3 x i8] c"rn\00", align 1, !dbg !215
@FORMAT_RIGHT_NOLZ = internal constant [7 x i8] c"%*jd%s\00", align 1, !dbg !571
@.str.33 = private unnamed_addr constant [3 x i8] c"rz\00", align 1, !dbg !217
@FORMAT_RIGHT_LZ = internal constant [8 x i8] c"%0*jd%s\00", align 1, !dbg !574
@.str.34 = private unnamed_addr constant [34 x i8] c"invalid line numbering format: %s\00", align 1, !dbg !219
@section_del = internal unnamed_addr global ptr @DEFAULT_SECTION_DELIMITERS, align 8, !dbg !576
@.str.36 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !229
@.str.37 = private unnamed_addr constant [14 x i8] c"Scott Bartram\00", align 1, !dbg !234
@.str.38 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !236
@section_del_len = internal unnamed_addr global i64 0, align 8, !dbg !282
@header_del_len = internal unnamed_addr global i64 0, align 8, !dbg !284
@header_del = internal unnamed_addr global ptr null, align 8, !dbg !583
@body_del_len = internal unnamed_addr global i64 0, align 8, !dbg !286
@body_del = internal unnamed_addr global ptr null, align 8, !dbg !585
@footer_del_len = internal unnamed_addr global i64 0, align 8, !dbg !288
@footer_del = internal unnamed_addr global ptr null, align 8, !dbg !587
@line_buf = internal global %struct.linebuffer zeroinitializer, align 8, !dbg !290
@print_no_line_fmt = internal unnamed_addr global ptr null, align 8, !dbg !589
@line_no = internal unnamed_addr global i64 0, align 8, !dbg !303
@current_type = internal unnamed_addr global ptr null, align 8, !dbg !243
@current_regex = internal unnamed_addr global ptr null, align 8, !dbg !591
@optind = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !241
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !625
@stdin = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !312
@.str.41 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !317
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !319
@.str.42 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !399
@.str.43 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !404
@.str.44 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !406
@.str.45 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !411
@.str.59 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !448
@.str.60 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !450
@.str.61 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !452
@.str.62 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !457
@.str.63 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !462
@.str.64 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !467
@.str.65 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !472
@.str.66 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !474
@.str.67 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !476
@.str.68 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !478
@.str.72 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !486
@.str.73 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !488
@.str.74 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !490
@.str.75 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !495
@.str.76 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !500
@.str.77 = private unnamed_addr constant [17 x i8] c"header-numbering\00", align 1, !dbg !505
@.str.78 = private unnamed_addr constant [15 x i8] c"body-numbering\00", align 1, !dbg !507
@.str.79 = private unnamed_addr constant [17 x i8] c"footer-numbering\00", align 1, !dbg !509
@.str.80 = private unnamed_addr constant [21 x i8] c"starting-line-number\00", align 1, !dbg !511
@.str.81 = private unnamed_addr constant [15 x i8] c"line-increment\00", align 1, !dbg !516
@.str.82 = private unnamed_addr constant [12 x i8] c"no-renumber\00", align 1, !dbg !518
@.str.83 = private unnamed_addr constant [17 x i8] c"join-blank-lines\00", align 1, !dbg !520
@.str.84 = private unnamed_addr constant [17 x i8] c"number-separator\00", align 1, !dbg !522
@.str.85 = private unnamed_addr constant [13 x i8] c"number-width\00", align 1, !dbg !524
@.str.86 = private unnamed_addr constant [14 x i8] c"number-format\00", align 1, !dbg !529
@.str.87 = private unnamed_addr constant [18 x i8] c"section-delimiter\00", align 1, !dbg !531
@.str.88 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !536
@.str.89 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !538
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.90 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !540
@.str.91 = private unnamed_addr constant [2 x i8] c"n\00", align 1, !dbg !542
@.str.92 = private unnamed_addr constant [2 x i8] c"t\00", align 1, !dbg !546
@.str.93 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !560
@DEFAULT_SECTION_DELIMITERS = internal global [9 x i8] c"\\:\00\00\00\00\00\00\00", align 1, !dbg !578
@.str.94 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !594
@line_no_overflow = internal unnamed_addr global i1 false, align 1, !dbg !626
@proc_text.blank_lines = internal unnamed_addr global i64 0, align 8, !dbg !598
@.str.95 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1, !dbg !608
@.str.96 = private unnamed_addr constant [21 x i8] c"line number overflow\00", align 1, !dbg !610
@.str.97 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !612
@.str.35 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !627
@Version = dso_local local_unnamed_addr global ptr @.str.35, align 8, !dbg !630
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !634
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !647
@.str.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !639
@.str.1.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !641
@.str.2.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !643
@.str.3.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !645
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !649
@stderr = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !655
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !686
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !657
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !770
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !784
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !819
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !826
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !786
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !828
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !774
@.str.10.114 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !788
@.str.11.112 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !790
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !792
@.str.13.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !794
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !796
@.str.122 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !834
@.str.1.123 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !837
@.str.2.124 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !839
@.str.3.125 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !841
@.str.4.126 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !843
@.str.5.127 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !845
@.str.6.128 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !850
@.str.7.129 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !852
@.str.8.130 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !854
@.str.9.131 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !859
@.str.10.132 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !864
@.str.11.133 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !866
@.str.12.134 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !871
@.str.13.135 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !873
@.str.14.136 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !878
@.str.15.137 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !883
@.str.16.138 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !888
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.143 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !893
@.str.18.144 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !895
@.str.19.145 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !897
@.str.20.146 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !899
@.str.21.147 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !901
@.str.22.148 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !903
@.str.23.149 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !905
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !907
@exit_failure = dso_local global i32 1, align 4, !dbg !915
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !921
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !924
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !926
@.str.167 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !928
@.str.178 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !931
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !934
@.str.1.183 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !949

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1054 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1058, metadata !DIExpression()), !dbg !1059
  %2 = icmp eq i32 %0, 0, !dbg !1060
  br i1 %2, label %8, label %3, !dbg !1062

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1063, !tbaa !1065
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !1063
  %6 = load ptr, ptr @program_name, align 8, !dbg !1063, !tbaa !1065
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !1063
  br label %57, !dbg !1063

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !1069
  %10 = load ptr, ptr @program_name, align 8, !dbg !1069, !tbaa !1065
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !1069
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !1071
  %13 = load ptr, ptr @stdout, align 8, !dbg !1071, !tbaa !1065
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1071
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #41, !dbg !1072
  %16 = load ptr, ptr @stdout, align 8, !dbg !1072, !tbaa !1065
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1072
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #41, !dbg !1075
  %19 = load ptr, ptr @stdout, align 8, !dbg !1075, !tbaa !1065
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1075
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !1078
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1078
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !1079
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1079
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !1080
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1080
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !1081
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1081
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !1082
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1082
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !1083
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1083
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !1084
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1084
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !1085
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1085
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !1086
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1086
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !1087
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1087
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !1088
  tail call fastcc void @oputs_(ptr noundef %31), !dbg !1088
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !1089
  tail call fastcc void @oputs_(ptr noundef %32), !dbg !1089
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !1090
  tail call fastcc void @oputs_(ptr noundef %33), !dbg !1090
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #41, !dbg !1091
  %35 = load ptr, ptr @stdout, align 8, !dbg !1091, !tbaa !1065
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1091
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #41, !dbg !1092
  %38 = load ptr, ptr @stdout, align 8, !dbg !1092, !tbaa !1065
  %39 = tail call i32 @fputs_unlocked(ptr noundef %37, ptr noundef %38), !dbg !1092
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #41, !dbg !1093
  %41 = load ptr, ptr @stdout, align 8, !dbg !1093, !tbaa !1065
  %42 = tail call i32 @fputs_unlocked(ptr noundef %40, ptr noundef %41), !dbg !1093
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1094, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata !1113, metadata !1107, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata ptr poison, metadata !1106, metadata !DIExpression()), !dbg !1111
  tail call void @emit_bug_reporting_address() #41, !dbg !1114
  %43 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !1115
  call void @llvm.dbg.value(metadata ptr %43, metadata !1109, metadata !DIExpression()), !dbg !1111
  %44 = icmp eq ptr %43, null, !dbg !1116
  br i1 %44, label %52, label %45, !dbg !1118

45:                                               ; preds = %8
  %46 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(4) @.str.72, i64 noundef 3) #42, !dbg !1119
  %47 = icmp eq i32 %46, 0, !dbg !1119
  br i1 %47, label %52, label %48, !dbg !1120

48:                                               ; preds = %45
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #41, !dbg !1121
  %50 = load ptr, ptr @stdout, align 8, !dbg !1121, !tbaa !1065
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !1121
  br label %52, !dbg !1123

52:                                               ; preds = %8, %45, %48
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1106, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1110, metadata !DIExpression()), !dbg !1111
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #41, !dbg !1124
  %54 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %53, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3) #41, !dbg !1124
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #41, !dbg !1125
  %56 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.76) #41, !dbg !1125
  br label %57

57:                                               ; preds = %52, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1126
  unreachable, !dbg !1126
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1127 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1131 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1137 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1140 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !321 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !325, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !326, metadata !DIExpression()), !dbg !1144
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1145, !tbaa !1146
  %3 = icmp eq i32 %2, -1, !dbg !1148
  br i1 %3, label %4, label %16, !dbg !1149

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.42) #41, !dbg !1150
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !327, metadata !DIExpression()), !dbg !1151
  %6 = icmp eq ptr %5, null, !dbg !1152
  br i1 %6, label %14, label %7, !dbg !1153

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1154, !tbaa !1155
  %9 = icmp eq i8 %8, 0, !dbg !1154
  br i1 %9, label %14, label %10, !dbg !1156

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1157, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !1163, metadata !DIExpression()), !dbg !1164
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.43) #42, !dbg !1166
  %12 = icmp eq i32 %11, 0, !dbg !1167
  %13 = zext i1 %12 to i32, !dbg !1156
  br label %14, !dbg !1156

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1168, !tbaa !1146
  br label %16, !dbg !1169

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1170
  %18 = icmp eq i32 %17, 0, !dbg !1170
  br i1 %18, label %22, label %19, !dbg !1172

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1173, !tbaa !1065
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1173
  br label %124, !dbg !1175

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !330, metadata !DIExpression()), !dbg !1144
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.44) #42, !dbg !1176
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1177
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !331, metadata !DIExpression()), !dbg !1144
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1178
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !332, metadata !DIExpression()), !dbg !1144
  %26 = icmp eq ptr %25, null, !dbg !1179
  br i1 %26, label %54, label %27, !dbg !1180

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1181
  br i1 %28, label %54, label %29, !dbg !1182

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !333, metadata !DIExpression()), !dbg !1183
  tail call void @llvm.dbg.value(metadata i64 0, metadata !337, metadata !DIExpression()), !dbg !1183
  %30 = icmp ult ptr %24, %25, !dbg !1184
  br i1 %30, label %31, label %54, !dbg !1185

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1144
  %33 = load ptr, ptr %32, align 8, !tbaa !1065
  br label %34, !dbg !1185

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !333, metadata !DIExpression()), !dbg !1183
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !337, metadata !DIExpression()), !dbg !1183
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1186
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !333, metadata !DIExpression()), !dbg !1183
  %38 = load i8, ptr %35, align 1, !dbg !1186, !tbaa !1155
  %39 = sext i8 %38 to i64, !dbg !1186
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1186
  %41 = load i16, ptr %40, align 2, !dbg !1186, !tbaa !1187
  %42 = freeze i16 %41, !dbg !1189
  %43 = lshr i16 %42, 13, !dbg !1189
  %44 = and i16 %43, 1, !dbg !1189
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1190
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !337, metadata !DIExpression()), !dbg !1183
  %47 = icmp ult ptr %37, %25, !dbg !1184
  %48 = icmp ult i64 %46, 2, !dbg !1191
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1191
  br i1 %49, label %34, label %50, !dbg !1185, !llvm.loop !1192

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1194
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1196
  %53 = zext i1 %51 to i8, !dbg !1196
  br label %54, !dbg !1196

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1144
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1144
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !330, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !332, metadata !DIExpression()), !dbg !1144
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.45) #42, !dbg !1197
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !338, metadata !DIExpression()), !dbg !1144
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !339, metadata !DIExpression()), !dbg !1144
  br label %59, !dbg !1199

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1144
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1144
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !330, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !339, metadata !DIExpression()), !dbg !1144
  %62 = load i8, ptr %60, align 1, !dbg !1200, !tbaa !1155
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1201

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1202
  %65 = load i8, ptr %64, align 1, !dbg !1205, !tbaa !1155
  %66 = icmp eq i8 %65, 45, !dbg !1206
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1207
  br label %68, !dbg !1207

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1144
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !330, metadata !DIExpression()), !dbg !1144
  %70 = tail call ptr @__ctype_b_loc() #44, !dbg !1208
  %71 = load ptr, ptr %70, align 8, !dbg !1208, !tbaa !1065
  %72 = sext i8 %62 to i64, !dbg !1208
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1208
  %74 = load i16, ptr %73, align 2, !dbg !1208, !tbaa !1187
  %75 = and i16 %74, 8192, !dbg !1208
  %76 = icmp eq i16 %75, 0, !dbg !1208
  br i1 %76, label %92, label %77, !dbg !1210

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1211
  br i1 %78, label %94, label %79, !dbg !1214

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1215
  %81 = load i8, ptr %80, align 1, !dbg !1215, !tbaa !1155
  %82 = sext i8 %81 to i64, !dbg !1215
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1215
  %84 = load i16, ptr %83, align 2, !dbg !1215, !tbaa !1187
  %85 = and i16 %84, 8192, !dbg !1215
  %86 = icmp eq i16 %85, 0, !dbg !1215
  br i1 %86, label %87, label %94, !dbg !1216

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1217
  %89 = icmp ne i8 %88, 0, !dbg !1217
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1219
  br i1 %91, label %92, label %94, !dbg !1219

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1220
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !339, metadata !DIExpression()), !dbg !1144
  br label %59, !dbg !1199, !llvm.loop !1221

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1223
  %96 = load ptr, ptr @stdout, align 8, !dbg !1223, !tbaa !1065
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1223
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1157, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata !1113, metadata !1163, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !394, metadata !DIExpression()), !dbg !1144
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.59, i64 noundef 6) #42, !dbg !1244
  %99 = icmp eq i32 %98, 0, !dbg !1244
  br i1 %99, label %103, label %100, !dbg !1246

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.60, i64 noundef 9) #42, !dbg !1247
  %102 = icmp eq i32 %101, 0, !dbg !1247
  br i1 %102, label %103, label %106, !dbg !1248

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1249
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #41, !dbg !1249
  br label %109, !dbg !1251

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1252
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #41, !dbg !1252
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1254, !tbaa !1065
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.65, ptr noundef %110), !dbg !1254
  %112 = load ptr, ptr @stdout, align 8, !dbg !1255, !tbaa !1065
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.66, ptr noundef %112), !dbg !1255
  %114 = ptrtoint ptr %60 to i64, !dbg !1256
  %115 = sub i64 %114, %95, !dbg !1256
  %116 = load ptr, ptr @stdout, align 8, !dbg !1256, !tbaa !1065
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1256
  %118 = load ptr, ptr @stdout, align 8, !dbg !1257, !tbaa !1065
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %118), !dbg !1257
  %120 = load ptr, ptr @stdout, align 8, !dbg !1258, !tbaa !1065
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.68, ptr noundef %120), !dbg !1258
  %122 = load ptr, ptr @stdout, align 8, !dbg !1259, !tbaa !1065
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1259
  br label %124, !dbg !1260

124:                                              ; preds = %109, %19
  ret void, !dbg !1260
}

; Function Attrs: nounwind
declare !dbg !1261 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1265 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1269 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1271 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1274 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1277 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1280 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1283 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1289 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1290 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1296 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1313
  %4 = alloca i32, align 4, !DIAssignID !1314
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1301, metadata !DIExpression()), !dbg !1315
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1302, metadata !DIExpression()), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1305, metadata !DIExpression()), !dbg !1315
  %5 = load ptr, ptr %1, align 8, !dbg !1316, !tbaa !1065
  tail call void @set_program_name(ptr noundef %5) #41, !dbg !1317
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.20) #41, !dbg !1318
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #41, !dbg !1319
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.21) #41, !dbg !1320
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1321
  br label %10, !dbg !1322

10:                                               ; preds = %13, %2
  %11 = phi i8 [ 1, %2 ], [ %14, %13 ], !dbg !1315
  tail call void @llvm.dbg.value(metadata i8 %11, metadata !1305, metadata !DIExpression()), !dbg !1315
  %12 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @longopts, ptr noundef null) #41, !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1303, metadata !DIExpression()), !dbg !1315
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
    i32 -130, label %112
    i32 -131, label %113
  ], !dbg !1322

13:                                               ; preds = %10, %99, %103, %111, %108, %57, %65, %66, %61, %27, %29, %21, %23, %15, %17, %48, %46, %42, %41, %37, %33
  %14 = phi i8 [ %11, %108 ], [ %11, %111 ], [ %11, %57 ], [ %11, %61 ], [ %11, %65 ], [ 0, %66 ], [ %11, %48 ], [ %11, %46 ], [ %11, %42 ], [ %11, %41 ], [ %11, %37 ], [ %11, %33 ], [ %11, %27 ], [ 0, %29 ], [ %11, %21 ], [ 0, %23 ], [ %11, %15 ], [ 0, %17 ], [ %11, %103 ], [ %11, %99 ], [ 0, %10 ]
  br label %10, !dbg !1315, !llvm.loop !1324

15:                                               ; preds = %10
  %16 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @header_type, ptr noundef nonnull @header_regex, ptr noundef nonnull @header_fastmap), !dbg !1326
  br i1 %16, label %13, label %17, !dbg !1328

17:                                               ; preds = %15
  %18 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #41, !dbg !1329
  %19 = load ptr, ptr @optarg, align 8, !dbg !1329, !tbaa !1065
  %20 = call ptr @quote(ptr noundef %19) #41, !dbg !1329
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %20) #41, !dbg !1329
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression()), !dbg !1315
  br label %13, !dbg !1331

21:                                               ; preds = %10
  %22 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @body_type, ptr noundef nonnull @body_regex, ptr noundef nonnull @body_fastmap), !dbg !1332
  br i1 %22, label %13, label %23, !dbg !1334

23:                                               ; preds = %21
  %24 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #41, !dbg !1335
  %25 = load ptr, ptr @optarg, align 8, !dbg !1335, !tbaa !1065
  %26 = call ptr @quote(ptr noundef %25) #41, !dbg !1335
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %24, ptr noundef %26) #41, !dbg !1335
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression()), !dbg !1315
  br label %13, !dbg !1337

27:                                               ; preds = %10
  %28 = call fastcc zeroext i1 @build_type_arg(ptr noundef nonnull @footer_type, ptr noundef nonnull @footer_regex, ptr noundef nonnull @footer_fastmap), !dbg !1338
  br i1 %28, label %13, label %29, !dbg !1340

29:                                               ; preds = %27
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #41, !dbg !1341
  %31 = load ptr, ptr @optarg, align 8, !dbg !1341, !tbaa !1065
  %32 = call ptr @quote(ptr noundef %31) #41, !dbg !1341
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30, ptr noundef %32) #41, !dbg !1341
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression()), !dbg !1315
  br label %13, !dbg !1343

33:                                               ; preds = %10
  %34 = load ptr, ptr @optarg, align 8, !dbg !1344, !tbaa !1065
  %35 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #41, !dbg !1345
  %36 = call i64 @xdectoimax(ptr noundef %34, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %35, i32 noundef 0) #41, !dbg !1346
  store i64 %36, ptr @starting_line_number, align 8, !dbg !1347, !tbaa !1348
  br label %13, !dbg !1350

37:                                               ; preds = %10
  %38 = load ptr, ptr @optarg, align 8, !dbg !1351, !tbaa !1065
  %39 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #41, !dbg !1352
  %40 = call i64 @xdectoimax(ptr noundef %38, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %39, i32 noundef 0) #41, !dbg !1353
  store i64 %40, ptr @page_incr, align 8, !dbg !1354, !tbaa !1348
  br label %13, !dbg !1355

41:                                               ; preds = %10
  store i1 true, ptr @reset_numbers, align 1, !dbg !1356
  br label %13, !dbg !1357

42:                                               ; preds = %10
  %43 = load ptr, ptr @optarg, align 8, !dbg !1358, !tbaa !1065
  %44 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #41, !dbg !1359
  %45 = call i64 @xnumtoimax(ptr noundef %43, i32 noundef 10, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.20, ptr noundef %44, i32 noundef 0, i32 noundef 6) #41, !dbg !1360
  store i64 %45, ptr @blank_join, align 8, !dbg !1361, !tbaa !1348
  br label %13, !dbg !1362

46:                                               ; preds = %10
  %47 = load ptr, ptr @optarg, align 8, !dbg !1363, !tbaa !1065
  store ptr %47, ptr @separator_str, align 8, !dbg !1364, !tbaa !1065
  br label %13, !dbg !1365

48:                                               ; preds = %10
  %49 = load ptr, ptr @optarg, align 8, !dbg !1366, !tbaa !1065
  %50 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #41, !dbg !1367
  %51 = call i64 @xnumtoimax(ptr noundef %49, i32 noundef 10, i64 noundef 1, i64 noundef 2147483647, ptr noundef nonnull @.str.20, ptr noundef %50, i32 noundef 0, i32 noundef 4) #41, !dbg !1368
  %52 = trunc i64 %51 to i32, !dbg !1368
  store i32 %52, ptr @lineno_width, align 4, !dbg !1369, !tbaa !1146
  br label %13, !dbg !1370

53:                                               ; preds = %10
  %54 = load ptr, ptr @optarg, align 8, !dbg !1371, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %54, metadata !1157, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !1163, metadata !DIExpression()), !dbg !1373
  %55 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.31) #42, !dbg !1375
  %56 = icmp eq i32 %55, 0, !dbg !1376
  br i1 %56, label %57, label %58, !dbg !1377

57:                                               ; preds = %53
  store ptr @FORMAT_LEFT, ptr @lineno_format, align 8, !dbg !1378, !tbaa !1065
  br label %13, !dbg !1379

58:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr %54, metadata !1157, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata ptr @.str.32, metadata !1163, metadata !DIExpression()), !dbg !1380
  %59 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.32) #42, !dbg !1383
  %60 = icmp eq i32 %59, 0, !dbg !1384
  br i1 %60, label %61, label %62, !dbg !1385

61:                                               ; preds = %58
  store ptr @FORMAT_RIGHT_NOLZ, ptr @lineno_format, align 8, !dbg !1386, !tbaa !1065
  br label %13, !dbg !1387

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr %54, metadata !1157, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !1163, metadata !DIExpression()), !dbg !1388
  %63 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.33) #42, !dbg !1391
  %64 = icmp eq i32 %63, 0, !dbg !1392
  br i1 %64, label %65, label %66, !dbg !1393

65:                                               ; preds = %62
  store ptr @FORMAT_RIGHT_LZ, ptr @lineno_format, align 8, !dbg !1394, !tbaa !1065
  br label %13, !dbg !1395

66:                                               ; preds = %62
  %67 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #41, !dbg !1396
  %68 = load ptr, ptr @optarg, align 8, !dbg !1396, !tbaa !1065
  %69 = call ptr @quote(ptr noundef %68) #41, !dbg !1396
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %69) #41, !dbg !1396
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression()), !dbg !1315
  br label %13

70:                                               ; preds = %10
  %71 = load ptr, ptr @optarg, align 8, !dbg !1398, !tbaa !1065
  %72 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %71) #42, !dbg !1399
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !1304, metadata !DIExpression()), !dbg !1315
  %73 = call i64 @__ctype_get_mb_cur_max() #41, !dbg !1400
  %74 = icmp ugt i64 %73, 1, !dbg !1401
  br i1 %74, label %75, label %105, !dbg !1402

75:                                               ; preds = %70
  %76 = load ptr, ptr @optarg, align 8, !dbg !1403, !tbaa !1065
  tail call void @llvm.dbg.value(metadata ptr %76, metadata !1306, metadata !DIExpression()), !dbg !1404
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1311, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1312, metadata !DIExpression()), !dbg !1404
  tail call void @llvm.dbg.value(metadata ptr %76, metadata !1306, metadata !DIExpression()), !dbg !1404
  %77 = icmp sgt i64 %72, 0, !dbg !1405
  br i1 %77, label %78, label %103, !dbg !1408

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %76, i64 %72, !dbg !1409
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !1311, metadata !DIExpression()), !dbg !1404
  %80 = ptrtoint ptr %79 to i64
  tail call void @llvm.dbg.value(metadata ptr %76, metadata !1306, metadata !DIExpression()), !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1312, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1410, metadata !DIExpression(), metadata !1313, metadata ptr %3, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1424, metadata !DIExpression(), metadata !1314, metadata ptr %4, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata ptr %76, metadata !1421, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1436
  %81 = load i8, ptr %76, align 1, !dbg !1438, !tbaa !1155
  call void @llvm.dbg.value(metadata i8 %81, metadata !1423, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 %81, metadata !1439, metadata !DIExpression()), !dbg !1444
  %82 = icmp sgt i8 %81, -1, !dbg !1447
  br i1 %82, label %87, label %83, !dbg !1448

83:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !1449
  store i32 0, ptr %3, align 4, !dbg !1450, !tbaa !1451, !DIAssignID !1453
  call void @llvm.dbg.assign(metadata i32 0, metadata !1410, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1453, metadata ptr %3, metadata !DIExpression()), !dbg !1436
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #41, !dbg !1454
  %84 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %76, i64 noundef %72, ptr noundef nonnull %3) #41, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %84, metadata !1425, metadata !DIExpression()), !dbg !1436
  %85 = icmp slt i64 %84, 0, !dbg !1456
  %86 = select i1 %85, i64 1, i64 %84, !dbg !1458, !prof !1459
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #41, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !1460
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i64 [ %86, %83 ], [ 1, %78 ], !dbg !1436
  %89 = getelementptr inbounds i8, ptr %76, i64 %88, !dbg !1461
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !1306, metadata !DIExpression()), !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1312, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1404
  %90 = icmp slt i64 %88, %72, !dbg !1405
  br i1 %90, label %91, label %99, !dbg !1408

91:                                               ; preds = %87
  %92 = ptrtoint ptr %89 to i64
  %93 = sub i64 %80, %92
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !1306, metadata !DIExpression()), !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1312, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1410, metadata !DIExpression(), metadata !1313, metadata ptr %3, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1424, metadata !DIExpression(), metadata !1314, metadata ptr %4, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata ptr %89, metadata !1421, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %72), metadata !1422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1436
  %94 = load i8, ptr %89, align 1, !dbg !1438, !tbaa !1155
  call void @llvm.dbg.value(metadata i8 %94, metadata !1423, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 %94, metadata !1439, metadata !DIExpression()), !dbg !1444
  %95 = icmp sgt i8 %94, -1, !dbg !1447
  br i1 %95, label %98, label %96, !dbg !1448

96:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !1449
  store i32 0, ptr %3, align 4, !dbg !1450, !tbaa !1451, !DIAssignID !1453
  call void @llvm.dbg.assign(metadata i32 0, metadata !1410, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1453, metadata ptr %3, metadata !DIExpression()), !dbg !1436
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #41, !dbg !1454
  %97 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %89, i64 noundef %93, ptr noundef nonnull %3) #41, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %97, metadata !1425, metadata !DIExpression()), !dbg !1436
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #41, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !1460
  br label %98

98:                                               ; preds = %91, %96
  br i1 %90, label %103, label %99, !dbg !1462

99:                                               ; preds = %87, %98
  %100 = load ptr, ptr @section_del, align 8, !dbg !1463, !tbaa !1065
  %101 = load ptr, ptr @optarg, align 8, !dbg !1465, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %100, metadata !1466, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata ptr %101, metadata !1473, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i64 %72, metadata !1474, metadata !DIExpression()), !dbg !1475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %100, ptr noundef nonnull align 1 %101, i64 noundef %72, i1 noundef false) #41, !dbg !1477
  %102 = getelementptr inbounds i8, ptr %100, i64 %72, !dbg !1477
  call void @llvm.dbg.value(metadata ptr %102, metadata !1478, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata !1113, metadata !1481, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 2, metadata !1482, metadata !DIExpression()), !dbg !1483
  store i16 58, ptr %102, align 1, !dbg !1485
  br label %13, !dbg !1486

103:                                              ; preds = %75, %98
  %104 = load ptr, ptr @optarg, align 8, !dbg !1487, !tbaa !1065
  store ptr %104, ptr @section_del, align 8, !dbg !1488, !tbaa !1065
  br label %13

105:                                              ; preds = %70
  %106 = icmp eq i64 %72, 1, !dbg !1489
  %107 = load ptr, ptr @optarg, align 8, !dbg !1492, !tbaa !1065
  br i1 %106, label %108, label %111, !dbg !1493

108:                                              ; preds = %105
  %109 = load i8, ptr %107, align 1, !dbg !1494, !tbaa !1155
  %110 = load ptr, ptr @section_del, align 8, !dbg !1495, !tbaa !1065
  store i8 %109, ptr %110, align 1, !dbg !1496, !tbaa !1155
  br label %13, !dbg !1497

111:                                              ; preds = %105
  store ptr %107, ptr @section_del, align 8, !dbg !1498, !tbaa !1065
  br label %13

112:                                              ; preds = %10
  call void @usage(i32 noundef 0) #45, !dbg !1499
  unreachable, !dbg !1499

113:                                              ; preds = %10
  %114 = load ptr, ptr @stdout, align 8, !dbg !1500, !tbaa !1065
  %115 = load ptr, ptr @Version, align 8, !dbg !1500, !tbaa !1065
  %116 = call ptr @proper_name_lite(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37) #41, !dbg !1500
  %117 = call ptr @proper_name_lite(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #41, !dbg !1500
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %114, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, ptr noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef null) #41, !dbg !1500
  call void @exit(i32 noundef 0) #43, !dbg !1500
  unreachable, !dbg !1500

118:                                              ; preds = %10
  %119 = icmp eq i8 %11, 0, !dbg !1501
  br i1 %119, label %120, label %121, !dbg !1503

120:                                              ; preds = %118
  call void @usage(i32 noundef 1) #45, !dbg !1504
  unreachable, !dbg !1504

121:                                              ; preds = %118
  %122 = load ptr, ptr @section_del, align 8, !dbg !1505, !tbaa !1065
  %123 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %122) #42, !dbg !1506
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1304, metadata !DIExpression()), !dbg !1315
  store i64 %123, ptr @section_del_len, align 8, !dbg !1507, !tbaa !1348
  %124 = mul i64 %123, 3, !dbg !1508
  store i64 %124, ptr @header_del_len, align 8, !dbg !1509, !tbaa !1348
  %125 = add i64 %124, 1, !dbg !1510
  %126 = call noalias nonnull ptr @xmalloc(i64 noundef %125) #46, !dbg !1511
  store ptr %126, ptr @header_del, align 8, !dbg !1512, !tbaa !1065
  %127 = load ptr, ptr @section_del, align 8, !dbg !1513, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %126, metadata !1514, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %127, metadata !1520, metadata !DIExpression()), !dbg !1521
  %128 = call ptr @stpcpy(ptr nonnull %126, ptr %127), !dbg !1523
  call void @llvm.dbg.value(metadata ptr %128, metadata !1514, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %127, metadata !1520, metadata !DIExpression()), !dbg !1524
  %129 = call ptr @stpcpy(ptr %128, ptr %127), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %129, metadata !1514, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %127, metadata !1520, metadata !DIExpression()), !dbg !1527
  %130 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %129, ptr noundef nonnull dereferenceable(1) %127), !dbg !1529
  %131 = shl i64 %123, 1, !dbg !1530
  store i64 %131, ptr @body_del_len, align 8, !dbg !1531, !tbaa !1348
  %132 = load ptr, ptr @header_del, align 8, !dbg !1532, !tbaa !1065
  %133 = getelementptr inbounds i8, ptr %132, i64 %123, !dbg !1533
  store ptr %133, ptr @body_del, align 8, !dbg !1534, !tbaa !1065
  store i64 %123, ptr @footer_del_len, align 8, !dbg !1535, !tbaa !1348
  %134 = getelementptr inbounds i8, ptr %133, i64 %123, !dbg !1536
  store ptr %134, ptr @footer_del, align 8, !dbg !1537, !tbaa !1065
  call void @initbuffer(ptr noundef nonnull @line_buf) #41, !dbg !1538
  %135 = load ptr, ptr @separator_str, align 8, !dbg !1539, !tbaa !1065
  %136 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %135) #42, !dbg !1540
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !1304, metadata !DIExpression()), !dbg !1315
  %137 = load i32, ptr @lineno_width, align 4, !dbg !1541, !tbaa !1146
  %138 = sext i32 %137 to i64, !dbg !1541
  %139 = add i64 %136, 1, !dbg !1542
  %140 = add i64 %139, %138, !dbg !1543
  %141 = call noalias nonnull ptr @xmalloc(i64 noundef %140) #46, !dbg !1544
  store ptr %141, ptr @print_no_line_fmt, align 8, !dbg !1545, !tbaa !1065
  %142 = load i32, ptr @lineno_width, align 4, !dbg !1546, !tbaa !1146
  %143 = sext i32 %142 to i64, !dbg !1546
  %144 = add i64 %136, %143, !dbg !1547
  call void @llvm.dbg.value(metadata ptr %141, metadata !1548, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i32 32, metadata !1553, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %144, metadata !1554, metadata !DIExpression()), !dbg !1555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %141, i8 noundef 32, i64 noundef %144, i1 noundef false) #41, !dbg !1557
  %145 = getelementptr i8, ptr %141, i64 %136, !dbg !1558
  %146 = getelementptr i8, ptr %145, i64 %143, !dbg !1558
  store i8 0, ptr %146, align 1, !dbg !1559, !tbaa !1155
  %147 = load i64, ptr @starting_line_number, align 8, !dbg !1560, !tbaa !1348
  store i64 %147, ptr @line_no, align 8, !dbg !1561, !tbaa !1348
  %148 = load ptr, ptr @body_type, align 8, !dbg !1562, !tbaa !1065
  store ptr %148, ptr @current_type, align 8, !dbg !1563, !tbaa !1065
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1564, !tbaa !1065
  %149 = load i32, ptr @optind, align 4, !dbg !1565, !tbaa !1146
  %150 = icmp eq i32 %149, %0, !dbg !1567
  br i1 %150, label %153, label %151, !dbg !1568

151:                                              ; preds = %121
  tail call void @llvm.dbg.value(metadata i8 %11, metadata !1305, metadata !DIExpression()), !dbg !1315
  %152 = icmp slt i32 %149, %0, !dbg !1569
  br i1 %152, label %156, label %170, !dbg !1572

153:                                              ; preds = %121
  %154 = call fastcc zeroext i1 @nl_file(ptr noundef nonnull @.str.39), !dbg !1573
  %155 = zext i1 %154 to i8, !dbg !1574
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1305, metadata !DIExpression()), !dbg !1315
  br label %170, !dbg !1575

156:                                              ; preds = %151, %156
  %157 = phi i32 [ %168, %156 ], [ %149, %151 ]
  %158 = phi i8 [ %166, %156 ], [ %11, %151 ]
  tail call void @llvm.dbg.value(metadata i8 %158, metadata !1305, metadata !DIExpression()), !dbg !1315
  %159 = sext i32 %157 to i64, !dbg !1576
  %160 = getelementptr inbounds ptr, ptr %1, i64 %159, !dbg !1576
  %161 = load ptr, ptr %160, align 8, !dbg !1576, !tbaa !1065
  %162 = call fastcc zeroext i1 @nl_file(ptr noundef %161), !dbg !1577
  %163 = and i8 %158, 1, !dbg !1578
  %164 = icmp ne i8 %163, 0, !dbg !1578
  %165 = select i1 %162, i1 %164, i1 false, !dbg !1578
  %166 = zext i1 %165 to i8, !dbg !1578
  tail call void @llvm.dbg.value(metadata i8 %166, metadata !1305, metadata !DIExpression()), !dbg !1315
  %167 = load i32, ptr @optind, align 4, !dbg !1579, !tbaa !1146
  %168 = add nsw i32 %167, 1, !dbg !1579
  store i32 %168, ptr @optind, align 4, !dbg !1579, !tbaa !1146
  %169 = icmp slt i32 %168, %0, !dbg !1569
  br i1 %169, label %156, label %170, !dbg !1572, !llvm.loop !1580

170:                                              ; preds = %156, %151, %153
  %171 = phi i8 [ %155, %153 ], [ %11, %151 ], [ %166, %156 ], !dbg !1315
  tail call void @llvm.dbg.value(metadata i8 %171, metadata !1305, metadata !DIExpression()), !dbg !1315
  %172 = load i1, ptr @have_read_stdin, align 1, !dbg !1582
  br i1 %172, label %173, label %180, !dbg !1584

173:                                              ; preds = %170
  %174 = load ptr, ptr @stdin, align 8, !dbg !1585, !tbaa !1065
  %175 = call i32 @rpl_fclose(ptr noundef %174) #41, !dbg !1586
  %176 = icmp eq i32 %175, -1, !dbg !1587
  br i1 %176, label %177, label %180, !dbg !1588

177:                                              ; preds = %173
  %178 = tail call ptr @__errno_location() #44, !dbg !1589
  %179 = load i32, ptr %178, align 4, !dbg !1589, !tbaa !1146
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %179, ptr noundef nonnull @.str.39) #41, !dbg !1589
  unreachable, !dbg !1589

180:                                              ; preds = %173, %170
  %181 = and i8 %171, 1, !dbg !1590
  %182 = xor i8 %181, 1, !dbg !1590
  %183 = zext nneg i8 %182 to i32, !dbg !1590
  ret i32 %183, !dbg !1591
}

; Function Attrs: nounwind
declare !dbg !1592 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1595 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1596 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1599 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @build_type_arg(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !dbg !1605 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1615
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1611, metadata !DIExpression()), !dbg !1615
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1612, metadata !DIExpression()), !dbg !1615
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1615
  %4 = load ptr, ptr @optarg, align 8, !dbg !1616, !tbaa !1065
  %5 = load i8, ptr %4, align 1, !dbg !1617, !tbaa !1155
  switch i8 %5, label %16 [
    i8 97, label %6
    i8 116, label %6
    i8 110, label %6
    i8 112, label %7
  ], !dbg !1618

6:                                                ; preds = %3, %3, %3
  store ptr %4, ptr %0, align 8, !dbg !1619, !tbaa !1065
  br label %16, !dbg !1621

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1622
  store ptr %8, ptr @optarg, align 8, !dbg !1622, !tbaa !1065
  store ptr %4, ptr %0, align 8, !dbg !1623, !tbaa !1065
  %9 = getelementptr inbounds %struct.re_pattern_buffer, ptr %1, i64 0, i32 4, !dbg !1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !1625
  store ptr %2, ptr %9, align 8, !dbg !1626, !tbaa !1627
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %1, i64 0, i32 5, !dbg !1629
  store ptr null, ptr %10, align 8, !dbg !1630, !tbaa !1631
  store i64 710, ptr @re_syntax_options, align 8, !dbg !1632, !tbaa !1348
  %11 = load ptr, ptr @optarg, align 8, !dbg !1633, !tbaa !1065
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #42, !dbg !1634
  %13 = tail call ptr @re_compile_pattern(ptr noundef %11, i64 noundef %12, ptr noundef nonnull %1) #41, !dbg !1635
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !1613, metadata !DIExpression()), !dbg !1615
  %14 = icmp eq ptr %13, null, !dbg !1636
  br i1 %14, label %16, label %15, !dbg !1638

15:                                               ; preds = %7
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull %13) #41, !dbg !1639
  unreachable, !dbg !1639

16:                                               ; preds = %3, %7, %6
  %17 = phi i1 [ true, %7 ], [ true, %6 ], [ false, %3 ], !dbg !1615
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1615
  ret i1 %17, !dbg !1640
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1641 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1644 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1647 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

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
define internal fastcc noundef zeroext i1 @nl_file(ptr noundef %0) unnamed_addr #10 !dbg !1654 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1658, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata ptr %0, metadata !1157, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !1163, metadata !DIExpression()), !dbg !1662
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.39) #42, !dbg !1665
  %3 = icmp eq i32 %2, 0, !dbg !1666
  br i1 %3, label %4, label %6, !dbg !1667

4:                                                ; preds = %1
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1668
  %5 = load ptr, ptr @stdin, align 8, !dbg !1670, !tbaa !1065, !nonnull !1113, !noundef !1113
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1659, metadata !DIExpression()), !dbg !1661
  br label %12, !dbg !1671

6:                                                ; preds = %1
  %7 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.94) #41, !dbg !1672
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1659, metadata !DIExpression()), !dbg !1661
  %8 = icmp eq ptr %7, null, !dbg !1674
  br i1 %8, label %9, label %12, !dbg !1676

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #44, !dbg !1677
  %11 = load i32, ptr %10, align 4, !dbg !1677, !tbaa !1146
  br label %241, !dbg !1679

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %5, %4 ], [ %7, %6 ], !dbg !1680
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !1659, metadata !DIExpression()), !dbg !1661
  tail call void @fadvise(ptr noundef nonnull %13, i32 noundef 2) #41, !dbg !1681
  call void @llvm.dbg.value(metadata ptr %13, metadata !1682, metadata !DIExpression()), !dbg !1687
  br label %14, !dbg !1689

14:                                               ; preds = %208, %12
  %15 = tail call ptr @readlinebuffer(ptr noundef nonnull @line_buf, ptr noundef nonnull %13) #41, !dbg !1690
  %16 = icmp eq ptr %15, null, !dbg !1689
  br i1 %16, label %221, label %17, !dbg !1689

17:                                               ; preds = %14
  %18 = load i64, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 1), align 8, !dbg !1691, !tbaa !1699
  %19 = add nsw i64 %18, -1, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %19, metadata !1696, metadata !DIExpression()), !dbg !1702
  %20 = load i64, ptr @section_del_len, align 8, !dbg !1703, !tbaa !1348
  %21 = icmp ult i64 %19, %20, !dbg !1705
  %22 = load i64, ptr @footer_del_len, align 8
  %23 = icmp ult i64 %22, %20
  %24 = select i1 %21, i1 true, i1 %23, !dbg !1706
  br i1 %24, label %98, label %25, !dbg !1706

25:                                               ; preds = %17
  %26 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1707, !tbaa !1708
  %27 = load ptr, ptr @section_del, align 8, !dbg !1709, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %26, metadata !1710, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %27, metadata !1715, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %20, metadata !1716, metadata !DIExpression()), !dbg !1717
  %28 = tail call i32 @bcmp(ptr %26, ptr %27, i64 %20), !dbg !1719
  %29 = icmp eq i32 %28, 0, !dbg !1720
  br i1 %29, label %30, label %98, !dbg !1721

30:                                               ; preds = %25
  %31 = load i64, ptr @header_del_len, align 8, !dbg !1722, !tbaa !1348
  %32 = icmp eq i64 %19, %31, !dbg !1724
  br i1 %32, label %33, label %37, !dbg !1725

33:                                               ; preds = %30
  %34 = load ptr, ptr @header_del, align 8, !dbg !1726, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %26, metadata !1710, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata ptr %34, metadata !1715, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i64 %31, metadata !1716, metadata !DIExpression()), !dbg !1727
  %35 = tail call i32 @bcmp(ptr %26, ptr %34, i64 %19), !dbg !1729
  %36 = icmp eq i32 %35, 0, !dbg !1730
  br i1 %36, label %50, label %37, !dbg !1731

37:                                               ; preds = %33, %30
  %38 = load i64, ptr @body_del_len, align 8, !dbg !1732, !tbaa !1348
  %39 = icmp eq i64 %19, %38, !dbg !1734
  br i1 %39, label %40, label %44, !dbg !1735

40:                                               ; preds = %37
  %41 = load ptr, ptr @body_del, align 8, !dbg !1736, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %26, metadata !1710, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %41, metadata !1715, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i64 %38, metadata !1716, metadata !DIExpression()), !dbg !1737
  %42 = tail call i32 @bcmp(ptr %26, ptr %41, i64 %19), !dbg !1739
  %43 = icmp eq i32 %42, 0, !dbg !1740
  br i1 %43, label %66, label %44, !dbg !1741

44:                                               ; preds = %40, %37
  %45 = icmp eq i64 %19, %22, !dbg !1742
  br i1 %45, label %46, label %98, !dbg !1744

46:                                               ; preds = %44
  %47 = load ptr, ptr @footer_del, align 8, !dbg !1745, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %26, metadata !1710, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata ptr %47, metadata !1715, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %22, metadata !1716, metadata !DIExpression()), !dbg !1746
  %48 = tail call i32 @bcmp(ptr %26, ptr %47, i64 %19), !dbg !1748
  %49 = icmp eq i32 %48, 0, !dbg !1749
  br i1 %49, label %82, label %98, !dbg !1750

50:                                               ; preds = %33
  %51 = load ptr, ptr @header_type, align 8, !dbg !1751, !tbaa !1065
  store ptr %51, ptr @current_type, align 8, !dbg !1755, !tbaa !1065
  store ptr @header_regex, ptr @current_regex, align 8, !dbg !1756, !tbaa !1065
  %52 = load i1, ptr @reset_numbers, align 1, !dbg !1757
  br i1 %52, label %55, label %53, !dbg !1761

53:                                               ; preds = %50
  %54 = load i64, ptr @starting_line_number, align 8, !dbg !1762, !tbaa !1348
  store i64 %54, ptr @line_no, align 8, !dbg !1764, !tbaa !1348
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1765
  br label %55, !dbg !1766

55:                                               ; preds = %53, %50
  call void @llvm.dbg.value(metadata i32 10, metadata !1767, metadata !DIExpression()), !dbg !1773
  %56 = load ptr, ptr @stdout, align 8, !dbg !1775, !tbaa !1065
  %57 = getelementptr inbounds %struct._IO_FILE, ptr %56, i64 0, i32 5, !dbg !1775
  %58 = load ptr, ptr %57, align 8, !dbg !1775, !tbaa !1776
  %59 = getelementptr inbounds %struct._IO_FILE, ptr %56, i64 0, i32 6, !dbg !1775
  %60 = load ptr, ptr %59, align 8, !dbg !1775, !tbaa !1778
  %61 = icmp ult ptr %58, %60, !dbg !1775
  br i1 %61, label %64, label %62, !dbg !1775, !prof !1779

62:                                               ; preds = %55
  %63 = tail call i32 @__overflow(ptr noundef nonnull %56, i32 noundef 10) #41, !dbg !1775
  br label %208, !dbg !1775

64:                                               ; preds = %55
  %65 = getelementptr inbounds i8, ptr %58, i64 1, !dbg !1775
  store ptr %65, ptr %57, align 8, !dbg !1775, !tbaa !1776
  store i8 10, ptr %58, align 1, !dbg !1775, !tbaa !1155
  br label %208, !dbg !1775

66:                                               ; preds = %40
  %67 = load ptr, ptr @body_type, align 8, !dbg !1780, !tbaa !1065
  store ptr %67, ptr @current_type, align 8, !dbg !1783, !tbaa !1065
  store ptr @body_regex, ptr @current_regex, align 8, !dbg !1784, !tbaa !1065
  %68 = load i1, ptr @reset_numbers, align 1, !dbg !1785
  br i1 %68, label %71, label %69, !dbg !1787

69:                                               ; preds = %66
  %70 = load i64, ptr @starting_line_number, align 8, !dbg !1788, !tbaa !1348
  store i64 %70, ptr @line_no, align 8, !dbg !1789, !tbaa !1348
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1790
  br label %71, !dbg !1791

71:                                               ; preds = %69, %66
  call void @llvm.dbg.value(metadata i32 10, metadata !1767, metadata !DIExpression()), !dbg !1792
  %72 = load ptr, ptr @stdout, align 8, !dbg !1794, !tbaa !1065
  %73 = getelementptr inbounds %struct._IO_FILE, ptr %72, i64 0, i32 5, !dbg !1794
  %74 = load ptr, ptr %73, align 8, !dbg !1794, !tbaa !1776
  %75 = getelementptr inbounds %struct._IO_FILE, ptr %72, i64 0, i32 6, !dbg !1794
  %76 = load ptr, ptr %75, align 8, !dbg !1794, !tbaa !1778
  %77 = icmp ult ptr %74, %76, !dbg !1794
  br i1 %77, label %80, label %78, !dbg !1794, !prof !1779

78:                                               ; preds = %71
  %79 = tail call i32 @__overflow(ptr noundef nonnull %72, i32 noundef 10) #41, !dbg !1794
  br label %208, !dbg !1794

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !1794
  store ptr %81, ptr %73, align 8, !dbg !1794, !tbaa !1776
  store i8 10, ptr %74, align 1, !dbg !1794, !tbaa !1155
  br label %208, !dbg !1794

82:                                               ; preds = %46
  %83 = load ptr, ptr @footer_type, align 8, !dbg !1795, !tbaa !1065
  store ptr %83, ptr @current_type, align 8, !dbg !1798, !tbaa !1065
  store ptr @footer_regex, ptr @current_regex, align 8, !dbg !1799, !tbaa !1065
  %84 = load i1, ptr @reset_numbers, align 1, !dbg !1800
  br i1 %84, label %87, label %85, !dbg !1802

85:                                               ; preds = %82
  %86 = load i64, ptr @starting_line_number, align 8, !dbg !1803, !tbaa !1348
  store i64 %86, ptr @line_no, align 8, !dbg !1804, !tbaa !1348
  store i1 false, ptr @line_no_overflow, align 1, !dbg !1805
  br label %87, !dbg !1806

87:                                               ; preds = %85, %82
  call void @llvm.dbg.value(metadata i32 10, metadata !1767, metadata !DIExpression()), !dbg !1807
  %88 = load ptr, ptr @stdout, align 8, !dbg !1809, !tbaa !1065
  %89 = getelementptr inbounds %struct._IO_FILE, ptr %88, i64 0, i32 5, !dbg !1809
  %90 = load ptr, ptr %89, align 8, !dbg !1809, !tbaa !1776
  %91 = getelementptr inbounds %struct._IO_FILE, ptr %88, i64 0, i32 6, !dbg !1809
  %92 = load ptr, ptr %91, align 8, !dbg !1809, !tbaa !1778
  %93 = icmp ult ptr %90, %92, !dbg !1809
  br i1 %93, label %96, label %94, !dbg !1809, !prof !1779

94:                                               ; preds = %87
  %95 = tail call i32 @__overflow(ptr noundef nonnull %88, i32 noundef 10) #41, !dbg !1809
  br label %208, !dbg !1809

96:                                               ; preds = %87
  %97 = getelementptr inbounds i8, ptr %90, i64 1, !dbg !1809
  store ptr %97, ptr %89, align 8, !dbg !1809, !tbaa !1776
  store i8 10, ptr %90, align 1, !dbg !1809, !tbaa !1155
  br label %208, !dbg !1809

98:                                               ; preds = %46, %44, %25, %17
  %99 = load ptr, ptr @current_type, align 8, !dbg !1810, !tbaa !1065
  %100 = load i8, ptr %99, align 1, !dbg !1812, !tbaa !1155
  switch i8 %100, label %203 [
    i8 97, label %101
    i8 116, label %147
    i8 110, label %169
    i8 112, label %173
  ], !dbg !1813

101:                                              ; preds = %98
  %102 = load i64, ptr @blank_join, align 8, !dbg !1814, !tbaa !1348
  %103 = icmp sgt i64 %102, 1, !dbg !1817
  br i1 %103, label %104, label %131, !dbg !1818

104:                                              ; preds = %101
  %105 = icmp sgt i64 %18, 1, !dbg !1819
  br i1 %105, label %110, label %106, !dbg !1822

106:                                              ; preds = %104
  %107 = load i64, ptr @proc_text.blank_lines, align 8, !dbg !1823, !tbaa !1348
  %108 = add nsw i64 %107, 1, !dbg !1823
  store i64 %108, ptr @proc_text.blank_lines, align 8, !dbg !1823, !tbaa !1348
  %109 = icmp eq i64 %108, %102, !dbg !1824
  br i1 %109, label %110, label %127, !dbg !1825

110:                                              ; preds = %106, %104
  %111 = load i1, ptr @line_no_overflow, align 1, !dbg !1826
  br i1 %111, label %112, label %114, !dbg !1831

112:                                              ; preds = %110
  %113 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #41, !dbg !1832
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %113) #41, !dbg !1832
  unreachable, !dbg !1832

114:                                              ; preds = %110
  %115 = load ptr, ptr @lineno_format, align 8, !dbg !1833, !tbaa !1065
  %116 = load i32, ptr @lineno_width, align 4, !dbg !1833, !tbaa !1146
  %117 = load i64, ptr @line_no, align 8, !dbg !1833, !tbaa !1348
  %118 = load ptr, ptr @separator_str, align 8, !dbg !1833, !tbaa !1065
  %119 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %115, i32 noundef %116, i64 noundef %117, ptr noundef %118) #41, !dbg !1833
  %120 = load i64, ptr @line_no, align 8, !dbg !1834, !tbaa !1348
  %121 = load i64, ptr @page_incr, align 8, !dbg !1834, !tbaa !1348
  %122 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %120, i64 %121), !dbg !1834
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !1834
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !1834
  store i64 %124, ptr @line_no, align 8, !dbg !1834
  br i1 %123, label %125, label %126, !dbg !1836

125:                                              ; preds = %114
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1837
  br label %126, !dbg !1838

126:                                              ; preds = %125, %114
  store i64 0, ptr @proc_text.blank_lines, align 8, !dbg !1839, !tbaa !1348
  br label %203, !dbg !1840

127:                                              ; preds = %106
  %128 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1841, !tbaa !1065
  %129 = load ptr, ptr @stdout, align 8, !dbg !1841, !tbaa !1065
  %130 = tail call i32 @fputs_unlocked(ptr noundef %128, ptr noundef %129), !dbg !1841
  br label %203

131:                                              ; preds = %101
  %132 = load i1, ptr @line_no_overflow, align 1, !dbg !1842
  br i1 %132, label %133, label %135, !dbg !1844

133:                                              ; preds = %131
  %134 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #41, !dbg !1845
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %134) #41, !dbg !1845
  unreachable, !dbg !1845

135:                                              ; preds = %131
  %136 = load ptr, ptr @lineno_format, align 8, !dbg !1846, !tbaa !1065
  %137 = load i32, ptr @lineno_width, align 4, !dbg !1846, !tbaa !1146
  %138 = load i64, ptr @line_no, align 8, !dbg !1846, !tbaa !1348
  %139 = load ptr, ptr @separator_str, align 8, !dbg !1846, !tbaa !1065
  %140 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %136, i32 noundef %137, i64 noundef %138, ptr noundef %139) #41, !dbg !1846
  %141 = load i64, ptr @line_no, align 8, !dbg !1847, !tbaa !1348
  %142 = load i64, ptr @page_incr, align 8, !dbg !1847, !tbaa !1348
  %143 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %141, i64 %142), !dbg !1847
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !1847
  %145 = extractvalue { i64, i1 } %143, 0, !dbg !1847
  store i64 %145, ptr @line_no, align 8, !dbg !1847
  br i1 %144, label %146, label %203, !dbg !1848

146:                                              ; preds = %135
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1849
  br label %203, !dbg !1850

147:                                              ; preds = %98
  %148 = icmp sgt i64 %18, 1, !dbg !1851
  br i1 %148, label %149, label %165, !dbg !1853

149:                                              ; preds = %147
  %150 = load i1, ptr @line_no_overflow, align 1, !dbg !1854
  br i1 %150, label %151, label %153, !dbg !1856

151:                                              ; preds = %149
  %152 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #41, !dbg !1857
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %152) #41, !dbg !1857
  unreachable, !dbg !1857

153:                                              ; preds = %149
  %154 = load ptr, ptr @lineno_format, align 8, !dbg !1858, !tbaa !1065
  %155 = load i32, ptr @lineno_width, align 4, !dbg !1858, !tbaa !1146
  %156 = load i64, ptr @line_no, align 8, !dbg !1858, !tbaa !1348
  %157 = load ptr, ptr @separator_str, align 8, !dbg !1858, !tbaa !1065
  %158 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %154, i32 noundef %155, i64 noundef %156, ptr noundef %157) #41, !dbg !1858
  %159 = load i64, ptr @line_no, align 8, !dbg !1859, !tbaa !1348
  %160 = load i64, ptr @page_incr, align 8, !dbg !1859, !tbaa !1348
  %161 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %160), !dbg !1859
  %162 = extractvalue { i64, i1 } %161, 1, !dbg !1859
  %163 = extractvalue { i64, i1 } %161, 0, !dbg !1859
  store i64 %163, ptr @line_no, align 8, !dbg !1859
  br i1 %162, label %164, label %203, !dbg !1860

164:                                              ; preds = %153
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1861
  br label %203, !dbg !1862

165:                                              ; preds = %147
  %166 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1863, !tbaa !1065
  %167 = load ptr, ptr @stdout, align 8, !dbg !1863, !tbaa !1065
  %168 = tail call i32 @fputs_unlocked(ptr noundef %166, ptr noundef %167), !dbg !1863
  br label %203

169:                                              ; preds = %98
  %170 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1864, !tbaa !1065
  %171 = load ptr, ptr @stdout, align 8, !dbg !1864, !tbaa !1065
  %172 = tail call i32 @fputs_unlocked(ptr noundef %170, ptr noundef %171), !dbg !1864
  br label %203, !dbg !1865

173:                                              ; preds = %98
  %174 = load ptr, ptr @current_regex, align 8, !dbg !1866, !tbaa !1065
  %175 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1867, !tbaa !1708
  %176 = trunc i64 %18 to i32, !dbg !1868
  %177 = add i32 %176, -1, !dbg !1868
  %178 = tail call i32 @re_search(ptr noundef %174, ptr noundef %175, i32 noundef %177, i32 noundef 0, i32 noundef %177, ptr noundef null) #41, !dbg !1869
  switch i32 %178, label %187 [
    i32 -2, label %179
    i32 -1, label %183
  ], !dbg !1870

179:                                              ; preds = %173
  %180 = tail call ptr @__errno_location() #44, !dbg !1871
  %181 = load i32, ptr %180, align 4, !dbg !1871, !tbaa !1146
  %182 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #41, !dbg !1871
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %181, ptr noundef %182) #41, !dbg !1871
  unreachable, !dbg !1871

183:                                              ; preds = %173
  %184 = load ptr, ptr @print_no_line_fmt, align 8, !dbg !1873, !tbaa !1065
  %185 = load ptr, ptr @stdout, align 8, !dbg !1873, !tbaa !1065
  %186 = tail call i32 @fputs_unlocked(ptr noundef %184, ptr noundef %185), !dbg !1873
  br label %203, !dbg !1874

187:                                              ; preds = %173
  %188 = load i1, ptr @line_no_overflow, align 1, !dbg !1875
  br i1 %188, label %189, label %191, !dbg !1877

189:                                              ; preds = %187
  %190 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #41, !dbg !1878
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %190) #41, !dbg !1878
  unreachable, !dbg !1878

191:                                              ; preds = %187
  %192 = load ptr, ptr @lineno_format, align 8, !dbg !1879, !tbaa !1065
  %193 = load i32, ptr @lineno_width, align 4, !dbg !1879, !tbaa !1146
  %194 = load i64, ptr @line_no, align 8, !dbg !1879, !tbaa !1348
  %195 = load ptr, ptr @separator_str, align 8, !dbg !1879, !tbaa !1065
  %196 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %192, i32 noundef %193, i64 noundef %194, ptr noundef %195) #41, !dbg !1879
  %197 = load i64, ptr @line_no, align 8, !dbg !1880, !tbaa !1348
  %198 = load i64, ptr @page_incr, align 8, !dbg !1880, !tbaa !1348
  %199 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %197, i64 %198), !dbg !1880
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !1880
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !1880
  store i64 %201, ptr @line_no, align 8, !dbg !1880
  br i1 %200, label %202, label %203, !dbg !1881

202:                                              ; preds = %191
  store i1 true, ptr @line_no_overflow, align 1, !dbg !1882
  br label %203, !dbg !1883

203:                                              ; preds = %202, %191, %183, %169, %165, %164, %153, %146, %135, %127, %126, %98
  %204 = load i64, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 1), align 8, !dbg !1884
  %205 = load ptr, ptr getelementptr inbounds (%struct.linebuffer, ptr @line_buf, i64 0, i32 2), align 8, !dbg !1884, !tbaa !1708
  %206 = load ptr, ptr @stdout, align 8, !dbg !1884, !tbaa !1065
  %207 = tail call i64 @fwrite_unlocked(ptr noundef %205, i64 noundef 1, i64 noundef %204, ptr noundef %206), !dbg !1884
  br label %208, !dbg !1884

208:                                              ; preds = %203, %96, %94, %80, %78, %64, %62
  %209 = load ptr, ptr @stdout, align 8, !dbg !1885, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %209, metadata !1887, metadata !DIExpression()), !dbg !1892
  %210 = load i32, ptr %209, align 8, !dbg !1894, !tbaa !1895
  %211 = and i32 %210, 32, !dbg !1885
  %212 = icmp eq i32 %211, 0, !dbg !1885
  br i1 %212, label %14, label %213, !dbg !1896, !llvm.loop !1897

213:                                              ; preds = %208
  %214 = tail call ptr @__errno_location() #44, !dbg !1899
  %215 = load i32, ptr %214, align 4, !dbg !1899, !tbaa !1146
  call void @llvm.dbg.value(metadata i32 %215, metadata !1902, metadata !DIExpression()), !dbg !1904
  %216 = tail call i32 @fflush_unlocked(ptr noundef nonnull %209) #41, !dbg !1905
  %217 = load ptr, ptr @stdout, align 8, !dbg !1906, !tbaa !1065
  %218 = tail call i32 @fpurge(ptr noundef %217) #41, !dbg !1907
  %219 = load ptr, ptr @stdout, align 8, !dbg !1908, !tbaa !1065
  tail call void @clearerr_unlocked(ptr noundef %219) #41, !dbg !1908
  %220 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #41, !dbg !1909
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %215, ptr noundef %220) #41, !dbg !1909
  unreachable, !dbg !1909

221:                                              ; preds = %14
  %222 = tail call ptr @__errno_location() #44, !dbg !1910
  %223 = load i32, ptr %222, align 4, !dbg !1910, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %223, metadata !1660, metadata !DIExpression()), !dbg !1661
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !1887, metadata !DIExpression()), !dbg !1911
  %224 = load i32, ptr %13, align 8, !dbg !1914, !tbaa !1895
  %225 = and i32 %224, 32, !dbg !1915
  %226 = icmp eq i32 %225, 0, !dbg !1915
  %227 = select i1 %226, i32 0, i32 %223, !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 %227, metadata !1660, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata ptr %0, metadata !1157, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !1163, metadata !DIExpression()), !dbg !1917
  %228 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.39) #42, !dbg !1920
  %229 = icmp eq i32 %228, 0, !dbg !1921
  br i1 %229, label %230, label %231, !dbg !1922

230:                                              ; preds = %221
  tail call void @clearerr_unlocked(ptr noundef nonnull %13) #41, !dbg !1923
  br label %238, !dbg !1923

231:                                              ; preds = %221
  %232 = tail call i32 @rpl_fclose(ptr noundef nonnull %13) #41, !dbg !1924
  %233 = icmp eq i32 %232, 0, !dbg !1926
  %234 = icmp ne i32 %227, 0
  %235 = select i1 %233, i1 true, i1 %234, !dbg !1927
  br i1 %235, label %238, label %236, !dbg !1927

236:                                              ; preds = %231
  %237 = load i32, ptr %222, align 4, !dbg !1928, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %237, metadata !1660, metadata !DIExpression()), !dbg !1661
  br label %238, !dbg !1929

238:                                              ; preds = %231, %236, %230
  %239 = phi i32 [ %227, %230 ], [ %227, %231 ], [ %237, %236 ], !dbg !1661
  tail call void @llvm.dbg.value(metadata i32 %239, metadata !1660, metadata !DIExpression()), !dbg !1661
  %240 = icmp eq i32 %239, 0, !dbg !1930
  br i1 %240, label %244, label %241, !dbg !1932

241:                                              ; preds = %238, %9
  %242 = phi i32 [ %11, %9 ], [ %239, %238 ]
  %243 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #41, !dbg !1661
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %242, ptr noundef nonnull @.str.90, ptr noundef %243) #41, !dbg !1661
  br label %244, !dbg !1933

244:                                              ; preds = %241, %238
  %245 = phi i1 [ true, %238 ], [ false, %241 ], !dbg !1661
  ret i1 %245, !dbg !1933
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1934 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

declare !dbg !1938 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

declare !dbg !1941 i32 @re_search(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1953 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1954 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1955 ptr @re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1958 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1960, metadata !DIExpression()), !dbg !1961
  store ptr %0, ptr @file_name, align 8, !dbg !1962, !tbaa !1065
  ret void, !dbg !1963
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1964 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1968, metadata !DIExpression()), !dbg !1969
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1970, !tbaa !1971
  ret void, !dbg !1973
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1974 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1979, !tbaa !1065
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !1980
  %3 = icmp eq i32 %2, 0, !dbg !1981
  br i1 %3, label %22, label %4, !dbg !1982

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1983, !tbaa !1971, !range !1984, !noundef !1113
  %6 = icmp eq i8 %5, 0, !dbg !1983
  br i1 %6, label %11, label %7, !dbg !1985

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !1986
  %9 = load i32, ptr %8, align 4, !dbg !1986, !tbaa !1146
  %10 = icmp eq i32 %9, 32, !dbg !1987
  br i1 %10, label %22, label %11, !dbg !1988

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1.47, i32 noundef 5) #41, !dbg !1989
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1976, metadata !DIExpression()), !dbg !1990
  %13 = load ptr, ptr @file_name, align 8, !dbg !1991, !tbaa !1065
  %14 = icmp eq ptr %13, null, !dbg !1991
  %15 = tail call ptr @__errno_location() #44, !dbg !1993
  %16 = load i32, ptr %15, align 4, !dbg !1993, !tbaa !1146
  br i1 %14, label %19, label %17, !dbg !1994

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !1995
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.48, ptr noundef %18, ptr noundef %12) #41, !dbg !1995
  br label %20, !dbg !1995

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.49, ptr noundef %12) #41, !dbg !1996
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1997, !tbaa !1146
  tail call void @_exit(i32 noundef %21) #43, !dbg !1998
  unreachable, !dbg !1998

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1999, !tbaa !1065
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !2001
  %25 = icmp eq i32 %24, 0, !dbg !2002
  br i1 %25, label %28, label %26, !dbg !2003

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2004, !tbaa !1146
  tail call void @_exit(i32 noundef %27) #43, !dbg !2005
  unreachable, !dbg !2005

28:                                               ; preds = %22
  ret void, !dbg !2006
}

; Function Attrs: noreturn
declare !dbg !2007 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2009 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2013, metadata !DIExpression()), !dbg !2017
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2014, metadata !DIExpression()), !dbg !2017
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2015, metadata !DIExpression()), !dbg !2017
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2016, metadata !DIExpression()), !dbg !2017
  tail call fastcc void @flush_stdout(), !dbg !2018
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2019, !tbaa !1065
  %6 = icmp eq ptr %5, null, !dbg !2019
  br i1 %6, label %8, label %7, !dbg !2021

7:                                                ; preds = %4
  tail call void %5() #41, !dbg !2022
  br label %12, !dbg !2022

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2023, !tbaa !1065
  %10 = tail call ptr @getprogname() #42, !dbg !2023
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef %10) #41, !dbg !2023
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2025
  ret void, !dbg !2026
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2027 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2029, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 1, metadata !2031, metadata !DIExpression()), !dbg !2034
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2037
  %2 = icmp slt i32 %1, 0, !dbg !2038
  br i1 %2, label %6, label %3, !dbg !2039

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2040, !tbaa !1065
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2040
  br label %6, !dbg !2040

6:                                                ; preds = %3, %0
  ret void, !dbg !2041
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2042 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2048
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2044, metadata !DIExpression()), !dbg !2049
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2045, metadata !DIExpression()), !dbg !2049
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2046, metadata !DIExpression()), !dbg !2049
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2047, metadata !DIExpression()), !dbg !2049
  %6 = load ptr, ptr @stderr, align 8, !dbg !2050, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr %6, metadata !2051, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr %2, metadata !2091, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr %3, metadata !2092, metadata !DIExpression()), !dbg !2093
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #41, !dbg !2095
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2096, !tbaa !1146
  %9 = add i32 %8, 1, !dbg !2096
  store i32 %9, ptr @error_message_count, align 4, !dbg !2096, !tbaa !1146
  %10 = icmp eq i32 %1, 0, !dbg !2097
  br i1 %10, label %20, label %11, !dbg !2099

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2100, metadata !DIExpression(), metadata !2048, metadata ptr %5, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i32 %1, metadata !2103, metadata !DIExpression()), !dbg !2108
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2110
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2111
  call void @llvm.dbg.value(metadata ptr %12, metadata !2104, metadata !DIExpression()), !dbg !2108
  %13 = icmp eq ptr %12, null, !dbg !2112
  br i1 %13, label %14, label %16, !dbg !2114

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.51, ptr noundef nonnull @.str.5.52, i32 noundef 5) #41, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %15, metadata !2104, metadata !DIExpression()), !dbg !2108
  br label %16, !dbg !2116

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2108
  call void @llvm.dbg.value(metadata ptr %17, metadata !2104, metadata !DIExpression()), !dbg !2108
  %18 = load ptr, ptr @stderr, align 8, !dbg !2117, !tbaa !1065
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.53, ptr noundef %17) #41, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2118
  br label %20, !dbg !2119

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2120, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 10, metadata !2121, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata ptr %21, metadata !2126, metadata !DIExpression()), !dbg !2127
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2129
  %23 = load ptr, ptr %22, align 8, !dbg !2129, !tbaa !1776
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2129
  %25 = load ptr, ptr %24, align 8, !dbg !2129, !tbaa !1778
  %26 = icmp ult ptr %23, %25, !dbg !2129
  br i1 %26, label %29, label %27, !dbg !2129, !prof !1779

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #41, !dbg !2129
  br label %31, !dbg !2129

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2129
  store ptr %30, ptr %22, align 8, !dbg !2129, !tbaa !1776
  store i8 10, ptr %23, align 1, !dbg !2129, !tbaa !1155
  br label %31, !dbg !2129

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2130, !tbaa !1065
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #41, !dbg !2130
  %34 = icmp eq i32 %0, 0, !dbg !2131
  br i1 %34, label %36, label %35, !dbg !2133

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #43, !dbg !2134
  unreachable, !dbg !2134

36:                                               ; preds = %31
  ret void, !dbg !2135
}

declare !dbg !2136 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2139 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2142 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2146 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2153, metadata !DIExpression(), metadata !2159, metadata ptr %4, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2150, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2151, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2152, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #41, !dbg !2161
  call void @llvm.va_start(ptr nonnull %4), !dbg !2162
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #47, !dbg !2163
  call void @llvm.va_end(ptr nonnull %4), !dbg !2164
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41, !dbg !2165
  ret void, !dbg !2165
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !659 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !670, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !671, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !673, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !674, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !675, metadata !DIExpression()), !dbg !2166
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2167, !tbaa !1146
  %8 = icmp eq i32 %7, 0, !dbg !2167
  br i1 %8, label %23, label %9, !dbg !2169

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2170, !tbaa !1146
  %11 = icmp eq i32 %10, %3, !dbg !2173
  br i1 %11, label %12, label %22, !dbg !2174

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2175, !tbaa !1065
  %14 = icmp eq ptr %13, %2, !dbg !2176
  br i1 %14, label %36, label %15, !dbg !2177

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2178
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2179
  br i1 %18, label %19, label %22, !dbg !2179

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2180
  %21 = icmp eq i32 %20, 0, !dbg !2181
  br i1 %21, label %36, label %22, !dbg !2182

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2183, !tbaa !1065
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2184, !tbaa !1146
  br label %23, !dbg !2185

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2186
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2187, !tbaa !1065
  %25 = icmp eq ptr %24, null, !dbg !2187
  br i1 %25, label %27, label %26, !dbg !2189

26:                                               ; preds = %23
  tail call void %24() #41, !dbg !2190
  br label %31, !dbg !2190

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2191, !tbaa !1065
  %29 = tail call ptr @getprogname() #42, !dbg !2191
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.56, ptr noundef %29) #41, !dbg !2191
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2193, !tbaa !1065
  %33 = icmp eq ptr %2, null, !dbg !2193
  %34 = select i1 %33, ptr @.str.3.57, ptr @.str.2.58, !dbg !2193
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #41, !dbg !2193
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2194
  br label %36, !dbg !2195

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2195
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2196 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2206
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2205, metadata !DIExpression(), metadata !2206, metadata ptr %6, metadata !DIExpression()), !dbg !2207
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2200, metadata !DIExpression()), !dbg !2207
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2201, metadata !DIExpression()), !dbg !2207
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2202, metadata !DIExpression()), !dbg !2207
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2203, metadata !DIExpression()), !dbg !2207
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #41, !dbg !2208
  call void @llvm.va_start(ptr nonnull %6), !dbg !2209
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #47, !dbg !2210
  call void @llvm.va_end(ptr nonnull %6), !dbg !2211
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #41, !dbg !2212
  ret void, !dbg !2212
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2213 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2219, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2220, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2221, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2222, metadata !DIExpression()), !dbg !2223
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !2224
  ret void, !dbg !2225
}

; Function Attrs: nounwind
declare !dbg !2226 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2229 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2267, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2268, metadata !DIExpression()), !dbg !2269
  %3 = icmp eq ptr %0, null, !dbg !2270
  br i1 %3, label %7, label %4, !dbg !2272

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2273
  call void @llvm.dbg.value(metadata i32 %5, metadata !2219, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 0, metadata !2220, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 0, metadata !2221, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %1, metadata !2222, metadata !DIExpression()), !dbg !2274
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !2276
  br label %7, !dbg !2277

7:                                                ; preds = %4, %2
  ret void, !dbg !2278
}

; Function Attrs: nofree nounwind
declare !dbg !2279 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2282 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2320, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2321, metadata !DIExpression()), !dbg !2324
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2322, metadata !DIExpression()), !dbg !2324
  %3 = icmp slt i32 %2, 0, !dbg !2326
  br i1 %3, label %4, label %6, !dbg !2328

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2329
  br label %24, !dbg !2330

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !2331
  %8 = icmp eq i32 %7, 0, !dbg !2331
  br i1 %8, label %13, label %9, !dbg !2333

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2334
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !2335
  %12 = icmp eq i64 %11, -1, !dbg !2336
  br i1 %12, label %16, label %13, !dbg !2337

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !2338
  %15 = icmp eq i32 %14, 0, !dbg !2338
  br i1 %15, label %16, label %18, !dbg !2339

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2321, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2323, metadata !DIExpression()), !dbg !2324
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2340
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2323, metadata !DIExpression()), !dbg !2324
  br label %24, !dbg !2341

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !2342
  %20 = load i32, ptr %19, align 4, !dbg !2342, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2321, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2323, metadata !DIExpression()), !dbg !2324
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2340
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2323, metadata !DIExpression()), !dbg !2324
  %22 = icmp eq i32 %20, 0, !dbg !2343
  br i1 %22, label %24, label %23, !dbg !2341

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2345, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2323, metadata !DIExpression()), !dbg !2324
  br label %24, !dbg !2347

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2324
  ret i32 %25, !dbg !2348
}

; Function Attrs: nofree nounwind
declare !dbg !2349 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2350 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2352 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2355 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2393, metadata !DIExpression()), !dbg !2394
  %2 = icmp eq ptr %0, null, !dbg !2395
  br i1 %2, label %6, label %3, !dbg !2397

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !2398
  %5 = icmp eq i32 %4, 0, !dbg !2398
  br i1 %5, label %6, label %8, !dbg !2399

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2400
  br label %16, !dbg !2401

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2402, metadata !DIExpression()), !dbg !2407
  %9 = load i32, ptr %0, align 8, !dbg !2409, !tbaa !1895
  %10 = and i32 %9, 256, !dbg !2411
  %11 = icmp eq i32 %10, 0, !dbg !2411
  br i1 %11, label %14, label %12, !dbg !2412

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !2413
  br label %14, !dbg !2413

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2414
  br label %16, !dbg !2415

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2394
  ret i32 %17, !dbg !2416
}

; Function Attrs: nofree nounwind
declare !dbg !2417 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2418 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2457
  tail call void @__fpurge(ptr noundef nonnull %0) #41, !dbg !2458
  ret i32 0, !dbg !2459
}

; Function Attrs: nounwind
declare !dbg !2460 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2463 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2501, metadata !DIExpression()), !dbg !2507
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2502, metadata !DIExpression()), !dbg !2507
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2503, metadata !DIExpression()), !dbg !2507
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2508
  %5 = load ptr, ptr %4, align 8, !dbg !2508, !tbaa !2509
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2510
  %7 = load ptr, ptr %6, align 8, !dbg !2510, !tbaa !2511
  %8 = icmp eq ptr %5, %7, !dbg !2512
  br i1 %8, label %9, label %27, !dbg !2513

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2514
  %11 = load ptr, ptr %10, align 8, !dbg !2514, !tbaa !1776
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2515
  %13 = load ptr, ptr %12, align 8, !dbg !2515, !tbaa !2516
  %14 = icmp eq ptr %11, %13, !dbg !2517
  br i1 %14, label %15, label %27, !dbg !2518

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2519
  %17 = load ptr, ptr %16, align 8, !dbg !2519, !tbaa !2520
  %18 = icmp eq ptr %17, null, !dbg !2521
  br i1 %18, label %19, label %27, !dbg !2522

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2523
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2504, metadata !DIExpression()), !dbg !2525
  %22 = icmp eq i64 %21, -1, !dbg !2526
  br i1 %22, label %29, label %23, !dbg !2528

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2529, !tbaa !1895
  %25 = and i32 %24, -17, !dbg !2529
  store i32 %25, ptr %0, align 8, !dbg !2529, !tbaa !1895
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2530
  store i64 %21, ptr %26, align 8, !dbg !2531, !tbaa !2532
  br label %29, !dbg !2533

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2534
  br label %29, !dbg !2535

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2507
  ret i32 %30, !dbg !2536
}

; Function Attrs: nofree nounwind
declare !dbg !2537 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2540 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2543, !tbaa !1065
  ret ptr %1, !dbg !2544
}

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @initbuffer(ptr noundef %0) local_unnamed_addr #21 !dbg !2545 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2556, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %0, metadata !2558, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 0, metadata !2561, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 24, metadata !2562, metadata !DIExpression()), !dbg !2563
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef 24, i1 noundef false) #41, !dbg !2565
  ret void, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @readlinebuffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2567 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2605, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2606, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %0, metadata !2608, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %1, metadata !2613, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8 10, metadata !2614, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %1, metadata !2625, metadata !DIExpression()), !dbg !2630
  %3 = load i32, ptr %1, align 8, !dbg !2633, !tbaa !1895
  %4 = and i32 %3, 16, !dbg !2634
  %5 = icmp eq i32 %4, 0, !dbg !2634
  br i1 %5, label %6, label %60, !dbg !2635

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2636
  %8 = load ptr, ptr %7, align 8, !dbg !2636, !tbaa !1708
  call void @llvm.dbg.value(metadata ptr %8, metadata !2615, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %8, metadata !2616, metadata !DIExpression()), !dbg !2623
  %9 = load i64, ptr %0, align 8, !dbg !2637, !tbaa !2638
  %10 = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !2639
  call void @llvm.dbg.value(metadata ptr %10, metadata !2617, metadata !DIExpression()), !dbg !2623
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  br label %13, !dbg !2640

13:                                               ; preds = %46, %6
  %14 = phi ptr [ %8, %6 ], [ %47, %46 ], !dbg !2623
  %15 = phi ptr [ %8, %6 ], [ %51, %46 ], !dbg !2623
  %16 = phi ptr [ %10, %6 ], [ %49, %46 ], !dbg !2623
  call void @llvm.dbg.value(metadata ptr %16, metadata !2617, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %15, metadata !2616, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %14, metadata !2615, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %1, metadata !2641, metadata !DIExpression()), !dbg !2644
  %17 = load ptr, ptr %11, align 8, !dbg !2646, !tbaa !2511
  %18 = load ptr, ptr %12, align 8, !dbg !2646, !tbaa !2509
  %19 = icmp ult ptr %17, %18, !dbg !2646
  br i1 %19, label %20, label %24, !dbg !2646, !prof !1779

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !2646
  store ptr %21, ptr %11, align 8, !dbg !2646, !tbaa !2511
  %22 = load i8, ptr %17, align 1, !dbg !2646, !tbaa !1155
  %23 = zext i8 %22 to i32, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %23, metadata !2618, metadata !DIExpression()), !dbg !2623
  br label %37, !dbg !2647

24:                                               ; preds = %13
  %25 = tail call i32 @__uflow(ptr noundef nonnull %1) #41, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %25, metadata !2618, metadata !DIExpression()), !dbg !2623
  %26 = icmp eq i32 %25, -1, !dbg !2648
  br i1 %26, label %27, label %37, !dbg !2647

27:                                               ; preds = %24
  %28 = icmp eq ptr %15, %14, !dbg !2650
  br i1 %28, label %60, label %29, !dbg !2653

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %1, metadata !2654, metadata !DIExpression()), !dbg !2657
  %30 = load i32, ptr %1, align 8, !dbg !2659, !tbaa !1895
  %31 = and i32 %30, 32, !dbg !2660
  %32 = icmp eq i32 %31, 0, !dbg !2660
  br i1 %32, label %33, label %60, !dbg !2661

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !2662
  %35 = load i8, ptr %34, align 1, !dbg !2662, !tbaa !1155
  %36 = icmp eq i8 %35, 10, !dbg !2664
  br i1 %36, label %53, label %37, !dbg !2665

37:                                               ; preds = %33, %24, %20
  %38 = phi i32 [ %25, %24 ], [ %23, %20 ], [ 10, %33 ], !dbg !2666
  call void @llvm.dbg.value(metadata i32 %38, metadata !2618, metadata !DIExpression()), !dbg !2623
  %39 = icmp eq ptr %15, %16, !dbg !2667
  br i1 %39, label %40, label %46, !dbg !2668

40:                                               ; preds = %37
  %41 = load i64, ptr %0, align 8, !dbg !2669, !tbaa !2638
  call void @llvm.dbg.value(metadata i64 %41, metadata !2619, metadata !DIExpression()), !dbg !2670
  %42 = tail call nonnull ptr @xpalloc(ptr noundef %14, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #41, !dbg !2671
  call void @llvm.dbg.value(metadata ptr %42, metadata !2615, metadata !DIExpression()), !dbg !2623
  %43 = getelementptr inbounds i8, ptr %42, i64 %41, !dbg !2672
  call void @llvm.dbg.value(metadata ptr %43, metadata !2616, metadata !DIExpression()), !dbg !2623
  store ptr %42, ptr %7, align 8, !dbg !2673, !tbaa !1708
  %44 = load i64, ptr %0, align 8, !dbg !2674, !tbaa !2638
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2675
  call void @llvm.dbg.value(metadata ptr %45, metadata !2617, metadata !DIExpression()), !dbg !2623
  br label %46, !dbg !2676

46:                                               ; preds = %40, %37
  %47 = phi ptr [ %42, %40 ], [ %14, %37 ], !dbg !2623
  %48 = phi ptr [ %43, %40 ], [ %15, %37 ], !dbg !2623
  %49 = phi ptr [ %45, %40 ], [ %16, %37 ], !dbg !2623
  call void @llvm.dbg.value(metadata ptr %49, metadata !2617, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %48, metadata !2616, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %47, metadata !2615, metadata !DIExpression()), !dbg !2623
  %50 = trunc i32 %38 to i8, !dbg !2677
  %51 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !2678
  call void @llvm.dbg.value(metadata ptr %51, metadata !2616, metadata !DIExpression()), !dbg !2623
  store i8 %50, ptr %48, align 1, !dbg !2679, !tbaa !1155
  %52 = icmp eq i32 %38, 10, !dbg !2680
  br i1 %52, label %53, label %13, !dbg !2681, !llvm.loop !2682

53:                                               ; preds = %46, %33
  %54 = phi ptr [ %14, %33 ], [ %47, %46 ], !dbg !2623
  %55 = phi ptr [ %15, %33 ], [ %51, %46 ], !dbg !2623
  call void @llvm.dbg.value(metadata ptr %55, metadata !2616, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %54, metadata !2615, metadata !DIExpression()), !dbg !2623
  %56 = ptrtoint ptr %55 to i64, !dbg !2684
  %57 = ptrtoint ptr %54 to i64, !dbg !2684
  %58 = sub i64 %56, %57, !dbg !2684
  %59 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2685
  store i64 %58, ptr %59, align 8, !dbg !2686, !tbaa !1699
  br label %60, !dbg !2687

60:                                               ; preds = %27, %29, %2, %53
  %61 = phi ptr [ null, %2 ], [ %0, %53 ], [ null, %29 ], [ null, %27 ], !dbg !2623
  ret ptr %61, !dbg !2688
}

declare !dbg !2689 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @readlinebuffer_delim(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2609 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2608, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2613, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2614, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2625, metadata !DIExpression()), !dbg !2691
  %4 = load i32, ptr %1, align 8, !dbg !2693, !tbaa !1895
  %5 = and i32 %4, 16, !dbg !2694
  %6 = icmp eq i32 %5, 0, !dbg !2694
  br i1 %6, label %7, label %62, !dbg !2695

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2696
  %9 = load ptr, ptr %8, align 8, !dbg !2696, !tbaa !1708
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2615, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2616, metadata !DIExpression()), !dbg !2690
  %10 = load i64, ptr %0, align 8, !dbg !2697, !tbaa !2638
  %11 = getelementptr inbounds i8, ptr %9, i64 %10, !dbg !2698
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !2617, metadata !DIExpression()), !dbg !2690
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %14 = sext i8 %2 to i32
  br label %15, !dbg !2699

15:                                               ; preds = %48, %7
  %16 = phi ptr [ %9, %7 ], [ %49, %48 ], !dbg !2690
  %17 = phi ptr [ %9, %7 ], [ %53, %48 ], !dbg !2690
  %18 = phi ptr [ %11, %7 ], [ %51, %48 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2617, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !2616, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2615, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %1, metadata !2641, metadata !DIExpression()), !dbg !2700
  %19 = load ptr, ptr %12, align 8, !dbg !2702, !tbaa !2511
  %20 = load ptr, ptr %13, align 8, !dbg !2702, !tbaa !2509
  %21 = icmp ult ptr %19, %20, !dbg !2702
  br i1 %21, label %22, label %26, !dbg !2702, !prof !1779

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !2702
  store ptr %23, ptr %12, align 8, !dbg !2702, !tbaa !2511
  %24 = load i8, ptr %19, align 1, !dbg !2702, !tbaa !1155
  %25 = zext i8 %24 to i32, !dbg !2702
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !2618, metadata !DIExpression()), !dbg !2690
  br label %39, !dbg !2703

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(ptr noundef nonnull %1) #41, !dbg !2702
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2618, metadata !DIExpression()), !dbg !2690
  %28 = icmp eq i32 %27, -1, !dbg !2704
  br i1 %28, label %29, label %39, !dbg !2703

29:                                               ; preds = %26
  %30 = icmp eq ptr %17, %16, !dbg !2705
  br i1 %30, label %62, label %31, !dbg !2706

31:                                               ; preds = %29
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2654, metadata !DIExpression()), !dbg !2707
  %32 = load i32, ptr %1, align 8, !dbg !2709, !tbaa !1895
  %33 = and i32 %32, 32, !dbg !2710
  %34 = icmp eq i32 %33, 0, !dbg !2710
  br i1 %34, label %35, label %62, !dbg !2711

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !2712
  %37 = load i8, ptr %36, align 1, !dbg !2712, !tbaa !1155
  %38 = icmp eq i8 %37, %2, !dbg !2713
  br i1 %38, label %55, label %39, !dbg !2714

39:                                               ; preds = %35, %22, %26
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ %14, %35 ], !dbg !2715
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !2618, metadata !DIExpression()), !dbg !2690
  %41 = icmp eq ptr %17, %18, !dbg !2716
  br i1 %41, label %42, label %48, !dbg !2717

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8, !dbg !2718, !tbaa !2638
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !2619, metadata !DIExpression()), !dbg !2719
  %44 = tail call nonnull ptr @xpalloc(ptr noundef %16, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #41, !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !2615, metadata !DIExpression()), !dbg !2690
  %45 = getelementptr inbounds i8, ptr %44, i64 %43, !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %45, metadata !2616, metadata !DIExpression()), !dbg !2690
  store ptr %44, ptr %8, align 8, !dbg !2722, !tbaa !1708
  %46 = load i64, ptr %0, align 8, !dbg !2723, !tbaa !2638
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !2724
  tail call void @llvm.dbg.value(metadata ptr %47, metadata !2617, metadata !DIExpression()), !dbg !2690
  br label %48, !dbg !2725

48:                                               ; preds = %42, %39
  %49 = phi ptr [ %44, %42 ], [ %16, %39 ], !dbg !2690
  %50 = phi ptr [ %45, %42 ], [ %17, %39 ], !dbg !2690
  %51 = phi ptr [ %47, %42 ], [ %18, %39 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !2617, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !2616, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2615, metadata !DIExpression()), !dbg !2690
  %52 = trunc i32 %40 to i8, !dbg !2726
  %53 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2727
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !2616, metadata !DIExpression()), !dbg !2690
  store i8 %52, ptr %50, align 1, !dbg !2728, !tbaa !1155
  %54 = icmp eq i32 %40, %14, !dbg !2729
  br i1 %54, label %55, label %15, !dbg !2730, !llvm.loop !2731

55:                                               ; preds = %35, %48
  %56 = phi ptr [ %16, %35 ], [ %49, %48 ], !dbg !2690
  %57 = phi ptr [ %17, %35 ], [ %53, %48 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !2616, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !2615, metadata !DIExpression()), !dbg !2690
  %58 = ptrtoint ptr %57 to i64, !dbg !2733
  %59 = ptrtoint ptr %56 to i64, !dbg !2733
  %60 = sub i64 %58, %59, !dbg !2733
  %61 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2734
  store i64 %60, ptr %61, align 8, !dbg !2735, !tbaa !1699
  br label %62, !dbg !2736

62:                                               ; preds = %31, %29, %55, %3
  %63 = phi ptr [ null, %3 ], [ %0, %55 ], [ null, %29 ], [ null, %31 ], !dbg !2690
  ret ptr %63, !dbg !2737
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @freebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !dbg !2738 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2740, metadata !DIExpression()), !dbg !2741
  %2 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2742
  %3 = load ptr, ptr %2, align 8, !dbg !2742, !tbaa !1708
  tail call void @free(ptr noundef %3) #41, !dbg !2743
  ret void, !dbg !2744
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2745 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2748 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2750, metadata !DIExpression()), !dbg !2753
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2754
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2751, metadata !DIExpression()), !dbg !2753
  %3 = icmp eq ptr %2, null, !dbg !2755
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2755
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2752, metadata !DIExpression()), !dbg !2753
  %6 = ptrtoint ptr %5 to i64, !dbg !2756
  %7 = ptrtoint ptr %0 to i64, !dbg !2756
  %8 = sub i64 %6, %7, !dbg !2756
  %9 = icmp sgt i64 %8, 6, !dbg !2758
  br i1 %9, label %10, label %19, !dbg !2759

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2760
  call void @llvm.dbg.value(metadata ptr %11, metadata !2761, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 7, metadata !2765, metadata !DIExpression()), !dbg !2766
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.98, i64 7), !dbg !2768
  %13 = icmp eq i32 %12, 0, !dbg !2769
  br i1 %13, label %14, label %19, !dbg !2770

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2750, metadata !DIExpression()), !dbg !2753
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.99, i64 noundef 3) #42, !dbg !2771
  %16 = icmp eq i32 %15, 0, !dbg !2774
  %17 = select i1 %16, i64 3, i64 0, !dbg !2775
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2775
  br label %19, !dbg !2775

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2753
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2752, metadata !DIExpression()), !dbg !2753
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2750, metadata !DIExpression()), !dbg !2753
  store ptr %20, ptr @program_name, align 8, !dbg !2776, !tbaa !1065
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2777, !tbaa !1065
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2778, !tbaa !1065
  ret void, !dbg !2779
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2780 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !707 {
  %3 = alloca i32, align 4, !DIAssignID !2781
  call void @llvm.dbg.assign(metadata i1 undef, metadata !717, metadata !DIExpression(), metadata !2781, metadata ptr %3, metadata !DIExpression()), !dbg !2782
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !722, metadata !DIExpression(), metadata !2783, metadata ptr %4, metadata !DIExpression()), !dbg !2782
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !714, metadata !DIExpression()), !dbg !2782
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !715, metadata !DIExpression()), !dbg !2782
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2784
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !716, metadata !DIExpression()), !dbg !2782
  %6 = icmp eq ptr %5, %0, !dbg !2785
  br i1 %6, label %7, label %14, !dbg !2787

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2788
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2789
  call void @llvm.dbg.value(metadata ptr %4, metadata !2790, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata ptr %4, metadata !2799, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i32 0, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 8, metadata !2803, metadata !DIExpression()), !dbg !2804
  store i64 0, ptr %4, align 8, !dbg !2806
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2807
  %9 = icmp eq i64 %8, 2, !dbg !2809
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2810
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2811
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2811
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2782
  ret ptr %15, !dbg !2811
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2812 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2817, metadata !DIExpression()), !dbg !2820
  %2 = tail call ptr @__errno_location() #44, !dbg !2821
  %3 = load i32, ptr %2, align 4, !dbg !2821, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2818, metadata !DIExpression()), !dbg !2820
  %4 = icmp eq ptr %0, null, !dbg !2822
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2822
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #48, !dbg !2823
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2819, metadata !DIExpression()), !dbg !2820
  store i32 %3, ptr %2, align 4, !dbg !2824, !tbaa !1146
  ret ptr %6, !dbg !2825
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2826 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2832, metadata !DIExpression()), !dbg !2833
  %2 = icmp eq ptr %0, null, !dbg !2834
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2834
  %4 = load i32, ptr %3, align 8, !dbg !2835, !tbaa !2836
  ret i32 %4, !dbg !2838
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2839 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2844, metadata !DIExpression()), !dbg !2845
  %3 = icmp eq ptr %0, null, !dbg !2846
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2846
  store i32 %1, ptr %4, align 8, !dbg !2847, !tbaa !2836
  ret void, !dbg !2848
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2849 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2853, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2854, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2855, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2856, metadata !DIExpression()), !dbg !2861
  %4 = icmp eq ptr %0, null, !dbg !2862
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2862
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2863
  %7 = lshr i8 %1, 5, !dbg !2864
  %8 = zext nneg i8 %7 to i64, !dbg !2864
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2865
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2857, metadata !DIExpression()), !dbg !2861
  %10 = and i8 %1, 31, !dbg !2866
  %11 = zext nneg i8 %10 to i32, !dbg !2866
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2859, metadata !DIExpression()), !dbg !2861
  %12 = load i32, ptr %9, align 4, !dbg !2867, !tbaa !1146
  %13 = lshr i32 %12, %11, !dbg !2868
  %14 = and i32 %13, 1, !dbg !2869
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2860, metadata !DIExpression()), !dbg !2861
  %15 = xor i32 %13, %2, !dbg !2870
  %16 = and i32 %15, 1, !dbg !2870
  %17 = shl nuw i32 %16, %11, !dbg !2871
  %18 = xor i32 %17, %12, !dbg !2872
  store i32 %18, ptr %9, align 4, !dbg !2872, !tbaa !1146
  ret i32 %14, !dbg !2873
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2874 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2879, metadata !DIExpression()), !dbg !2881
  %3 = icmp eq ptr %0, null, !dbg !2882
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2884
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2878, metadata !DIExpression()), !dbg !2881
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2885
  %6 = load i32, ptr %5, align 4, !dbg !2885, !tbaa !2886
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2880, metadata !DIExpression()), !dbg !2881
  store i32 %1, ptr %5, align 4, !dbg !2887, !tbaa !2886
  ret i32 %6, !dbg !2888
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2889 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2894, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2895, metadata !DIExpression()), !dbg !2896
  %4 = icmp eq ptr %0, null, !dbg !2897
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2893, metadata !DIExpression()), !dbg !2896
  store i32 10, ptr %5, align 8, !dbg !2900, !tbaa !2836
  %6 = icmp ne ptr %1, null, !dbg !2901
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2903
  br i1 %8, label %10, label %9, !dbg !2903

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !2904
  unreachable, !dbg !2904

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2905
  store ptr %1, ptr %11, align 8, !dbg !2906, !tbaa !2907
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2908
  store ptr %2, ptr %12, align 8, !dbg !2909, !tbaa !2910
  ret void, !dbg !2911
}

; Function Attrs: noreturn nounwind
declare !dbg !2912 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2913 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2917, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2918, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2919, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2920, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !2925
  %6 = icmp eq ptr %4, null, !dbg !2926
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2922, metadata !DIExpression()), !dbg !2925
  %8 = tail call ptr @__errno_location() #44, !dbg !2927
  %9 = load i32, ptr %8, align 4, !dbg !2927, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2923, metadata !DIExpression()), !dbg !2925
  %10 = load i32, ptr %7, align 8, !dbg !2928, !tbaa !2836
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2929
  %12 = load i32, ptr %11, align 4, !dbg !2929, !tbaa !2886
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2930
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2931
  %15 = load ptr, ptr %14, align 8, !dbg !2931, !tbaa !2907
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2932
  %17 = load ptr, ptr %16, align 8, !dbg !2932, !tbaa !2910
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2924, metadata !DIExpression()), !dbg !2925
  store i32 %9, ptr %8, align 4, !dbg !2934, !tbaa !1146
  ret i64 %18, !dbg !2935
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2936 {
  %10 = alloca i32, align 4, !DIAssignID !3004
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3005
  %12 = alloca i32, align 4, !DIAssignID !3006
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3007
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3008
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2982, metadata !DIExpression(), metadata !3008, metadata ptr %14, metadata !DIExpression()), !dbg !3009
  %15 = alloca i32, align 4, !DIAssignID !3010
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2985, metadata !DIExpression(), metadata !3010, metadata ptr %15, metadata !DIExpression()), !dbg !3011
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2942, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2944, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2945, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2946, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2947, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2948, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2949, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2950, metadata !DIExpression()), !dbg !3012
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !3013
  %17 = icmp eq i64 %16, 1, !dbg !3014
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2951, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2954, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2955, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2956, metadata !DIExpression()), !dbg !3012
  %18 = trunc i32 %5 to i8, !dbg !3015
  %19 = lshr i8 %18, 1, !dbg !3015
  %20 = and i8 %19, 1, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2957, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2959, metadata !DIExpression()), !dbg !3012
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3016

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !3017
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !3018
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !3019
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !3020
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !3012
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !3021
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !3022
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2959, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2957, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2956, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2955, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2954, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2945, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2950, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2949, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2946, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.label(metadata !2960), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2961, metadata !DIExpression()), !dbg !3012
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
  ], !dbg !3024

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2957, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2946, metadata !DIExpression()), !dbg !3012
  br label %114, !dbg !3025

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2957, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2946, metadata !DIExpression()), !dbg !3012
  %43 = and i8 %37, 1, !dbg !3026
  %44 = icmp eq i8 %43, 0, !dbg !3026
  br i1 %44, label %45, label %114, !dbg !3025

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3028
  br i1 %46, label %114, label %47, !dbg !3031

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3028, !tbaa !1155
  br label %114, !dbg !3028

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !805, metadata !DIExpression(), metadata !3006, metadata ptr %12, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.assign(metadata i1 undef, metadata !806, metadata !DIExpression(), metadata !3007, metadata ptr %13, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr @.str.11.112, metadata !802, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 %29, metadata !803, metadata !DIExpression()), !dbg !3032
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.113, ptr noundef nonnull @.str.11.112, i32 noundef 5) #41, !dbg !3036
  call void @llvm.dbg.value(metadata ptr %49, metadata !804, metadata !DIExpression()), !dbg !3032
  %50 = icmp eq ptr %49, @.str.11.112, !dbg !3037
  br i1 %50, label %51, label %60, !dbg !3039

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !3040
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !3041
  call void @llvm.dbg.value(metadata ptr %13, metadata !3042, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata ptr %13, metadata !3050, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 8, metadata !3054, metadata !DIExpression()), !dbg !3055
  store i64 0, ptr %13, align 8, !dbg !3057
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !3058
  %53 = icmp eq i64 %52, 3, !dbg !3060
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3061
  %57 = icmp eq i32 %29, 9, !dbg !3061
  %58 = select i1 %57, ptr @.str.10.114, ptr @.str.12.115, !dbg !3061
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !3062
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !3062
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3032
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2949, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.assign(metadata i1 undef, metadata !805, metadata !DIExpression(), metadata !3004, metadata ptr %10, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.assign(metadata i1 undef, metadata !806, metadata !DIExpression(), metadata !3005, metadata ptr %11, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr @.str.12.115, metadata !802, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i32 %29, metadata !803, metadata !DIExpression()), !dbg !3063
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.113, ptr noundef nonnull @.str.12.115, i32 noundef 5) #41, !dbg !3065
  call void @llvm.dbg.value(metadata ptr %62, metadata !804, metadata !DIExpression()), !dbg !3063
  %63 = icmp eq ptr %62, @.str.12.115, !dbg !3066
  br i1 %63, label %64, label %73, !dbg !3067

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !3068
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !3069
  call void @llvm.dbg.value(metadata ptr %11, metadata !3042, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr %11, metadata !3050, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 8, metadata !3054, metadata !DIExpression()), !dbg !3072
  store i64 0, ptr %11, align 8, !dbg !3074
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !3075
  %66 = icmp eq i64 %65, 3, !dbg !3076
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3077
  %70 = icmp eq i32 %29, 9, !dbg !3077
  %71 = select i1 %70, ptr @.str.10.114, ptr @.str.12.115, !dbg !3077
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3077
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !3078
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2950, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2949, metadata !DIExpression()), !dbg !3012
  %76 = and i8 %37, 1, !dbg !3079
  %77 = icmp eq i8 %76, 0, !dbg !3079
  br i1 %77, label %78, label %93, !dbg !3080

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2962, metadata !DIExpression()), !dbg !3081
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2952, metadata !DIExpression()), !dbg !3012
  %79 = load i8, ptr %74, align 1, !dbg !3082, !tbaa !1155
  %80 = icmp eq i8 %79, 0, !dbg !3084
  br i1 %80, label %93, label %81, !dbg !3084

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2962, metadata !DIExpression()), !dbg !3081
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2952, metadata !DIExpression()), !dbg !3012
  %85 = icmp ult i64 %84, %40, !dbg !3085
  br i1 %85, label %86, label %88, !dbg !3088

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3085
  store i8 %82, ptr %87, align 1, !dbg !3085, !tbaa !1155
  br label %88, !dbg !3085

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2952, metadata !DIExpression()), !dbg !3012
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3089
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2962, metadata !DIExpression()), !dbg !3081
  %91 = load i8, ptr %90, align 1, !dbg !3082, !tbaa !1155
  %92 = icmp eq i8 %91, 0, !dbg !3084
  br i1 %92, label %93, label %81, !dbg !3084, !llvm.loop !3090

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2956, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2954, metadata !DIExpression()), !dbg !3012
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #42, !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2955, metadata !DIExpression()), !dbg !3012
  br label %114, !dbg !3094

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2956, metadata !DIExpression()), !dbg !3012
  br label %98, !dbg !3095

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2956, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2957, metadata !DIExpression()), !dbg !3012
  br label %98, !dbg !3096

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !3020
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2957, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2956, metadata !DIExpression()), !dbg !3012
  %101 = and i8 %100, 1, !dbg !3097
  %102 = icmp eq i8 %101, 0, !dbg !3097
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3099
  br label %104, !dbg !3099

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !3012
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2957, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2956, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2946, metadata !DIExpression()), !dbg !3012
  %107 = and i8 %106, 1, !dbg !3100
  %108 = icmp eq i8 %107, 0, !dbg !3100
  br i1 %108, label %109, label %114, !dbg !3102

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3103
  br i1 %110, label %114, label %111, !dbg !3106

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3103, !tbaa !1155
  br label %114, !dbg !3103

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2957, metadata !DIExpression()), !dbg !3012
  br label %114, !dbg !3107

113:                                              ; preds = %28
  call void @abort() #43, !dbg !3108
  unreachable, !dbg !3108

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3092
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.114, %45 ], [ @.str.10.114, %47 ], [ @.str.10.114, %42 ], [ %34, %28 ], [ @.str.12.115, %109 ], [ @.str.12.115, %111 ], [ @.str.12.115, %104 ], [ @.str.10.114, %41 ], !dbg !3012
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !3012
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !3012
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2957, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2956, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2955, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2954, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2950, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2949, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2946, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2967, metadata !DIExpression()), !dbg !3109
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
  br label %138, !dbg !3110

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3092
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !3017
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !3021
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !3022
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3111
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3112
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2959, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2945, metadata !DIExpression()), !dbg !3012
  %147 = icmp eq i64 %139, -1, !dbg !3113
  br i1 %147, label %148, label %152, !dbg !3114

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3115
  %150 = load i8, ptr %149, align 1, !dbg !3115, !tbaa !1155
  %151 = icmp eq i8 %150, 0, !dbg !3116
  br i1 %151, label %612, label %154, !dbg !3117

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3118
  br i1 %153, label %612, label %154, !dbg !3117

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2969, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2972, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2973, metadata !DIExpression()), !dbg !3119
  br i1 %128, label %155, label %170, !dbg !3120

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3122
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3123
  br i1 %157, label %158, label %160, !dbg !3123

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2945, metadata !DIExpression()), !dbg !3012
  br label %160, !dbg !3125

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2945, metadata !DIExpression()), !dbg !3012
  %162 = icmp ugt i64 %156, %161, !dbg !3126
  br i1 %162, label %170, label %163, !dbg !3127

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3128
  call void @llvm.dbg.value(metadata ptr %164, metadata !3129, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %119, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %120, metadata !3133, metadata !DIExpression()), !dbg !3134
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3136
  %166 = icmp ne i32 %165, 0, !dbg !3137
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3138
  %168 = xor i1 %166, true, !dbg !3138
  %169 = zext i1 %168 to i8, !dbg !3138
  br i1 %167, label %170, label %666, !dbg !3138

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3119
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2969, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2945, metadata !DIExpression()), !dbg !3012
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3139
  %175 = load i8, ptr %174, align 1, !dbg !3139, !tbaa !1155
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2974, metadata !DIExpression()), !dbg !3119
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
  ], !dbg !3140

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3141

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3142

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2972, metadata !DIExpression()), !dbg !3119
  %179 = and i8 %144, 1, !dbg !3146
  %180 = icmp eq i8 %179, 0, !dbg !3146
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3146
  br i1 %181, label %182, label %198, !dbg !3146

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3148
  br i1 %183, label %184, label %186, !dbg !3152

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3148
  store i8 39, ptr %185, align 1, !dbg !3148, !tbaa !1155
  br label %186, !dbg !3148

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3152
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2952, metadata !DIExpression()), !dbg !3012
  %188 = icmp ult i64 %187, %146, !dbg !3153
  br i1 %188, label %189, label %191, !dbg !3156

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3153
  store i8 36, ptr %190, align 1, !dbg !3153, !tbaa !1155
  br label %191, !dbg !3153

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2952, metadata !DIExpression()), !dbg !3012
  %193 = icmp ult i64 %192, %146, !dbg !3157
  br i1 %193, label %194, label %196, !dbg !3160

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3157
  store i8 39, ptr %195, align 1, !dbg !3157, !tbaa !1155
  br label %196, !dbg !3157

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2961, metadata !DIExpression()), !dbg !3012
  br label %198, !dbg !3161

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3012
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2952, metadata !DIExpression()), !dbg !3012
  %201 = icmp ult i64 %199, %146, !dbg !3162
  br i1 %201, label %202, label %204, !dbg !3165

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3162
  store i8 92, ptr %203, align 1, !dbg !3162, !tbaa !1155
  br label %204, !dbg !3162

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2952, metadata !DIExpression()), !dbg !3012
  br i1 %125, label %206, label %476, !dbg !3166

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3168
  %208 = icmp ult i64 %207, %171, !dbg !3169
  br i1 %208, label %209, label %465, !dbg !3170

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3171
  %211 = load i8, ptr %210, align 1, !dbg !3171, !tbaa !1155
  %212 = add i8 %211, -48, !dbg !3172
  %213 = icmp ult i8 %212, 10, !dbg !3172
  br i1 %213, label %214, label %465, !dbg !3172

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3173
  br i1 %215, label %216, label %218, !dbg !3177

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3173
  store i8 48, ptr %217, align 1, !dbg !3173, !tbaa !1155
  br label %218, !dbg !3173

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2952, metadata !DIExpression()), !dbg !3012
  %220 = icmp ult i64 %219, %146, !dbg !3178
  br i1 %220, label %221, label %223, !dbg !3181

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3178
  store i8 48, ptr %222, align 1, !dbg !3178, !tbaa !1155
  br label %223, !dbg !3178

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2952, metadata !DIExpression()), !dbg !3012
  br label %465, !dbg !3182

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3183

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3184

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3185

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3187

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3189
  %231 = icmp ult i64 %230, %171, !dbg !3190
  br i1 %231, label %232, label %465, !dbg !3191

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3192
  %234 = load i8, ptr %233, align 1, !dbg !3192, !tbaa !1155
  %235 = icmp eq i8 %234, 63, !dbg !3193
  br i1 %235, label %236, label %465, !dbg !3194

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3195
  %238 = load i8, ptr %237, align 1, !dbg !3195, !tbaa !1155
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
  ], !dbg !3196

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3197

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2967, metadata !DIExpression()), !dbg !3109
  %241 = icmp ult i64 %140, %146, !dbg !3199
  br i1 %241, label %242, label %244, !dbg !3202

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3199
  store i8 63, ptr %243, align 1, !dbg !3199, !tbaa !1155
  br label %244, !dbg !3199

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2952, metadata !DIExpression()), !dbg !3012
  %246 = icmp ult i64 %245, %146, !dbg !3203
  br i1 %246, label %247, label %249, !dbg !3206

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3203
  store i8 34, ptr %248, align 1, !dbg !3203, !tbaa !1155
  br label %249, !dbg !3203

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2952, metadata !DIExpression()), !dbg !3012
  %251 = icmp ult i64 %250, %146, !dbg !3207
  br i1 %251, label %252, label %254, !dbg !3210

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3207
  store i8 34, ptr %253, align 1, !dbg !3207, !tbaa !1155
  br label %254, !dbg !3207

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2952, metadata !DIExpression()), !dbg !3012
  %256 = icmp ult i64 %255, %146, !dbg !3211
  br i1 %256, label %257, label %259, !dbg !3214

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3211
  store i8 63, ptr %258, align 1, !dbg !3211, !tbaa !1155
  br label %259, !dbg !3211

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2952, metadata !DIExpression()), !dbg !3012
  br label %465, !dbg !3215

261:                                              ; preds = %170
  br label %272, !dbg !3216

262:                                              ; preds = %170
  br label %272, !dbg !3217

263:                                              ; preds = %170
  br label %270, !dbg !3218

264:                                              ; preds = %170
  br label %270, !dbg !3219

265:                                              ; preds = %170
  br label %272, !dbg !3220

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3221

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3222

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3225

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3227

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3228
  call void @llvm.dbg.label(metadata !2975), !dbg !3229
  br i1 %133, label %272, label %655, !dbg !3230

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3228
  call void @llvm.dbg.label(metadata !2978), !dbg !3232
  br i1 %124, label %520, label %476, !dbg !3233

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3234

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3235, !tbaa !1155
  %277 = icmp eq i8 %276, 0, !dbg !3237
  br i1 %277, label %278, label %465, !dbg !3238

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3239
  br i1 %279, label %280, label %465, !dbg !3241

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2973, metadata !DIExpression()), !dbg !3119
  br label %281, !dbg !3242

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2973, metadata !DIExpression()), !dbg !3119
  br i1 %133, label %465, label %655, !dbg !3243

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2973, metadata !DIExpression()), !dbg !3119
  br i1 %132, label %284, label %465, !dbg !3245

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3246

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3249
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3251
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3251
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2953, metadata !DIExpression()), !dbg !3012
  %291 = icmp ult i64 %140, %290, !dbg !3252
  br i1 %291, label %292, label %294, !dbg !3255

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3252
  store i8 39, ptr %293, align 1, !dbg !3252, !tbaa !1155
  br label %294, !dbg !3252

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2952, metadata !DIExpression()), !dbg !3012
  %296 = icmp ult i64 %295, %290, !dbg !3256
  br i1 %296, label %297, label %299, !dbg !3259

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3256
  store i8 92, ptr %298, align 1, !dbg !3256, !tbaa !1155
  br label %299, !dbg !3256

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2952, metadata !DIExpression()), !dbg !3012
  %301 = icmp ult i64 %300, %290, !dbg !3260
  br i1 %301, label %302, label %304, !dbg !3263

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3260
  store i8 39, ptr %303, align 1, !dbg !3260, !tbaa !1155
  br label %304, !dbg !3260

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2961, metadata !DIExpression()), !dbg !3012
  br label %465, !dbg !3264

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3265

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2979, metadata !DIExpression()), !dbg !3266
  %308 = tail call ptr @__ctype_b_loc() #44, !dbg !3267
  %309 = load ptr, ptr %308, align 8, !dbg !3267, !tbaa !1065
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3267
  %312 = load i16, ptr %311, align 2, !dbg !3267, !tbaa !1187
  %313 = and i16 %312, 16384, !dbg !3269
  %314 = icmp ne i16 %313, 0, !dbg !3269
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2981, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3266
  br label %355, !dbg !3270

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3271
  call void @llvm.dbg.value(metadata ptr %14, metadata !3042, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %14, metadata !3050, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 8, metadata !3054, metadata !DIExpression()), !dbg !3274
  store i64 0, ptr %14, align 8, !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2979, metadata !DIExpression()), !dbg !3266
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2981, metadata !DIExpression()), !dbg !3266
  %316 = icmp eq i64 %171, -1, !dbg !3277
  br i1 %316, label %317, label %319, !dbg !3279

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2945, metadata !DIExpression()), !dbg !3012
  br label %319, !dbg !3281

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2945, metadata !DIExpression()), !dbg !3012
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3282
  %321 = sub i64 %320, %145, !dbg !3283
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #41, !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2989, metadata !DIExpression()), !dbg !3011
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3285

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2979, metadata !DIExpression()), !dbg !3266
  %324 = icmp ult i64 %145, %320, !dbg !3286
  br i1 %324, label %326, label %351, !dbg !3288

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2981, metadata !DIExpression()), !dbg !3266
  br label %351, !dbg !3289

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2979, metadata !DIExpression()), !dbg !3266
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3291
  %330 = load i8, ptr %329, align 1, !dbg !3291, !tbaa !1155
  %331 = icmp eq i8 %330, 0, !dbg !3288
  br i1 %331, label %351, label %332, !dbg !3292

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2979, metadata !DIExpression()), !dbg !3266
  %334 = add i64 %333, %145, !dbg !3294
  %335 = icmp eq i64 %333, %321, !dbg !3286
  br i1 %335, label %351, label %326, !dbg !3288, !llvm.loop !3295

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2990, metadata !DIExpression()), !dbg !3296
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3297
  %339 = and i1 %338, %132, !dbg !3297
  br i1 %339, label %340, label %347, !dbg !3297

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2990, metadata !DIExpression()), !dbg !3296
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3298
  %343 = load i8, ptr %342, align 1, !dbg !3298, !tbaa !1155
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3300

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2990, metadata !DIExpression()), !dbg !3296
  %346 = icmp eq i64 %345, %322, !dbg !3302
  br i1 %346, label %347, label %340, !dbg !3303, !llvm.loop !3304

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3306, !tbaa !1146
  call void @llvm.dbg.value(metadata i32 %348, metadata !3308, metadata !DIExpression()), !dbg !3316
  %349 = call i32 @iswprint(i32 noundef %348) #41, !dbg !3318
  %350 = icmp ne i32 %349, 0, !dbg !3319
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2979, metadata !DIExpression()), !dbg !3266
  br label %351, !dbg !3320

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2979, metadata !DIExpression()), !dbg !3266
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3321
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3322
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2979, metadata !DIExpression()), !dbg !3266
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3321
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3322
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3119
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3323
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2981, metadata !DIExpression()), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2979, metadata !DIExpression()), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2945, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2973, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3119
  %359 = icmp ult i64 %357, 2, !dbg !3324
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3325
  br i1 %361, label %461, label %362, !dbg !3325

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2998, metadata !DIExpression()), !dbg !3327
  br label %364, !dbg !3328

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !3012
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3111
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3109
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3119
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3329
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2972, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2969, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2952, metadata !DIExpression()), !dbg !3012
  br i1 %360, label %417, label %371, !dbg !3330

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3335

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2972, metadata !DIExpression()), !dbg !3119
  %373 = and i8 %366, 1, !dbg !3338
  %374 = icmp eq i8 %373, 0, !dbg !3338
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3338
  br i1 %375, label %376, label %392, !dbg !3338

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3340
  br i1 %377, label %378, label %380, !dbg !3344

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3340
  store i8 39, ptr %379, align 1, !dbg !3340, !tbaa !1155
  br label %380, !dbg !3340

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2952, metadata !DIExpression()), !dbg !3012
  %382 = icmp ult i64 %381, %146, !dbg !3345
  br i1 %382, label %383, label %385, !dbg !3348

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3345
  store i8 36, ptr %384, align 1, !dbg !3345, !tbaa !1155
  br label %385, !dbg !3345

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2952, metadata !DIExpression()), !dbg !3012
  %387 = icmp ult i64 %386, %146, !dbg !3349
  br i1 %387, label %388, label %390, !dbg !3352

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3349
  store i8 39, ptr %389, align 1, !dbg !3349, !tbaa !1155
  br label %390, !dbg !3349

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2961, metadata !DIExpression()), !dbg !3012
  br label %392, !dbg !3353

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !3012
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2952, metadata !DIExpression()), !dbg !3012
  %395 = icmp ult i64 %393, %146, !dbg !3354
  br i1 %395, label %396, label %398, !dbg !3357

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3354
  store i8 92, ptr %397, align 1, !dbg !3354, !tbaa !1155
  br label %398, !dbg !3354

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2952, metadata !DIExpression()), !dbg !3012
  %400 = icmp ult i64 %399, %146, !dbg !3358
  br i1 %400, label %401, label %405, !dbg !3361

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3358
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3358
  store i8 %403, ptr %404, align 1, !dbg !3358, !tbaa !1155
  br label %405, !dbg !3358

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2952, metadata !DIExpression()), !dbg !3012
  %407 = icmp ult i64 %406, %146, !dbg !3362
  br i1 %407, label %408, label %413, !dbg !3365

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3362
  %411 = or disjoint i8 %410, 48, !dbg !3362
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3362
  store i8 %411, ptr %412, align 1, !dbg !3362, !tbaa !1155
  br label %413, !dbg !3362

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3365
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2952, metadata !DIExpression()), !dbg !3012
  %415 = and i8 %370, 7, !dbg !3366
  %416 = or disjoint i8 %415, 48, !dbg !3367
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2974, metadata !DIExpression()), !dbg !3119
  br label %426, !dbg !3368

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3369
  %419 = icmp eq i8 %418, 0, !dbg !3369
  br i1 %419, label %426, label %420, !dbg !3371

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3372
  br i1 %421, label %422, label %424, !dbg !3376

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3372
  store i8 92, ptr %423, align 1, !dbg !3372, !tbaa !1155
  br label %424, !dbg !3372

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2969, metadata !DIExpression()), !dbg !3119
  br label %426, !dbg !3377

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !3012
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3111
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3119
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3119
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2972, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2969, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2952, metadata !DIExpression()), !dbg !3012
  %432 = add i64 %367, 1, !dbg !3378
  %433 = icmp ugt i64 %363, %432, !dbg !3380
  br i1 %433, label %434, label %463, !dbg !3381

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3382
  %436 = icmp ne i8 %435, 0, !dbg !3382
  %437 = and i8 %430, 1, !dbg !3382
  %438 = icmp eq i8 %437, 0, !dbg !3382
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3382
  br i1 %439, label %440, label %451, !dbg !3382

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3385
  br i1 %441, label %442, label %444, !dbg !3389

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3385
  store i8 39, ptr %443, align 1, !dbg !3385, !tbaa !1155
  br label %444, !dbg !3385

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3389
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2952, metadata !DIExpression()), !dbg !3012
  %446 = icmp ult i64 %445, %146, !dbg !3390
  br i1 %446, label %447, label %449, !dbg !3393

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3390
  store i8 39, ptr %448, align 1, !dbg !3390, !tbaa !1155
  br label %449, !dbg !3390

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2961, metadata !DIExpression()), !dbg !3012
  br label %451, !dbg !3394

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3395
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2952, metadata !DIExpression()), !dbg !3012
  %454 = icmp ult i64 %452, %146, !dbg !3396
  br i1 %454, label %455, label %457, !dbg !3399

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3396
  store i8 %431, ptr %456, align 1, !dbg !3396, !tbaa !1155
  br label %457, !dbg !3396

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2967, metadata !DIExpression()), !dbg !3109
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3400
  %460 = load i8, ptr %459, align 1, !dbg !3400, !tbaa !1155
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2974, metadata !DIExpression()), !dbg !3119
  br label %364, !dbg !3401, !llvm.loop !3402

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2973, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2972, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2969, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2945, metadata !DIExpression()), !dbg !3012
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2973, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2972, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2969, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2945, metadata !DIExpression()), !dbg !3012
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3405
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !3012
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !3017
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !3012
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !3012
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3109
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3119
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3119
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3119
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2973, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2972, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2969, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2945, metadata !DIExpression()), !dbg !3012
  br i1 %126, label %487, label %476, !dbg !3406

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
  br i1 %137, label %488, label %509, !dbg !3408

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3409

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
  %499 = lshr i8 %490, 5, !dbg !3410
  %500 = zext nneg i8 %499 to i64, !dbg !3410
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3411
  %502 = load i32, ptr %501, align 4, !dbg !3411, !tbaa !1146
  %503 = and i8 %490, 31, !dbg !3412
  %504 = zext nneg i8 %503 to i32, !dbg !3412
  %505 = shl nuw i32 1, %504, !dbg !3413
  %506 = and i32 %502, %505, !dbg !3413
  %507 = icmp eq i32 %506, 0, !dbg !3413
  %508 = and i1 %172, %507, !dbg !3414
  br i1 %508, label %558, label %520, !dbg !3414

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
  br i1 %172, label %558, label %520, !dbg !3415

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3405
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !3012
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !3017
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !3021
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3111
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3416
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3119
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3119
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2973, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2945, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.label(metadata !3001), !dbg !3417
  br i1 %131, label %530, label %659, !dbg !3418

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2972, metadata !DIExpression()), !dbg !3119
  %531 = and i8 %525, 1, !dbg !3420
  %532 = icmp eq i8 %531, 0, !dbg !3420
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3420
  br i1 %533, label %534, label %550, !dbg !3420

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3422
  br i1 %535, label %536, label %538, !dbg !3426

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3422
  store i8 39, ptr %537, align 1, !dbg !3422, !tbaa !1155
  br label %538, !dbg !3422

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2952, metadata !DIExpression()), !dbg !3012
  %540 = icmp ult i64 %539, %529, !dbg !3427
  br i1 %540, label %541, label %543, !dbg !3430

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3427
  store i8 36, ptr %542, align 1, !dbg !3427, !tbaa !1155
  br label %543, !dbg !3427

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2952, metadata !DIExpression()), !dbg !3012
  %545 = icmp ult i64 %544, %529, !dbg !3431
  br i1 %545, label %546, label %548, !dbg !3434

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3431
  store i8 39, ptr %547, align 1, !dbg !3431, !tbaa !1155
  br label %548, !dbg !3431

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2961, metadata !DIExpression()), !dbg !3012
  br label %550, !dbg !3435

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3119
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2952, metadata !DIExpression()), !dbg !3012
  %553 = icmp ult i64 %551, %529, !dbg !3436
  br i1 %553, label %554, label %556, !dbg !3439

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3436
  store i8 92, ptr %555, align 1, !dbg !3436, !tbaa !1155
  br label %556, !dbg !3436

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2973, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2972, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2945, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.label(metadata !3002), !dbg !3440
  br label %585, !dbg !3441

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3405
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !3012
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !3017
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !3021
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3111
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3416
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3119
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3119
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3444
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2974, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2973, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2972, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2945, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.label(metadata !3002), !dbg !3440
  %569 = and i8 %563, 1, !dbg !3441
  %570 = icmp ne i8 %569, 0, !dbg !3441
  %571 = and i8 %565, 1, !dbg !3441
  %572 = icmp eq i8 %571, 0, !dbg !3441
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3441
  br i1 %573, label %574, label %585, !dbg !3441

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3445
  br i1 %575, label %576, label %578, !dbg !3449

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3445
  store i8 39, ptr %577, align 1, !dbg !3445, !tbaa !1155
  br label %578, !dbg !3445

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2952, metadata !DIExpression()), !dbg !3012
  %580 = icmp ult i64 %579, %568, !dbg !3450
  br i1 %580, label %581, label %583, !dbg !3453

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3450
  store i8 39, ptr %582, align 1, !dbg !3450, !tbaa !1155
  br label %583, !dbg !3450

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3453
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2961, metadata !DIExpression()), !dbg !3012
  br label %585, !dbg !3454

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3119
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2952, metadata !DIExpression()), !dbg !3012
  %595 = icmp ult i64 %593, %586, !dbg !3455
  br i1 %595, label %596, label %598, !dbg !3458

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3455
  store i8 %587, ptr %597, align 1, !dbg !3455, !tbaa !1155
  br label %598, !dbg !3455

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2952, metadata !DIExpression()), !dbg !3012
  %600 = icmp eq i8 %588, 0, !dbg !3459
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3461
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2959, metadata !DIExpression()), !dbg !3012
  br label %602, !dbg !3462

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3405
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !3012
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !3017
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !3021
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !3022
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3111
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3416
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2967, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2961, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2959, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2945, metadata !DIExpression()), !dbg !3012
  %611 = add i64 %609, 1, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2967, metadata !DIExpression()), !dbg !3109
  br label %138, !dbg !3464, !llvm.loop !3465

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2943, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2959, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2958, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2953, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2952, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2945, metadata !DIExpression()), !dbg !3012
  %613 = icmp eq i64 %140, 0, !dbg !3467
  %614 = and i1 %132, %613, !dbg !3469
  %615 = xor i1 %614, true, !dbg !3469
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3469
  br i1 %616, label %617, label %655, !dbg !3469

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3470
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3470
  br i1 %621, label %622, label %631, !dbg !3470

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3472
  %624 = icmp eq i8 %623, 0, !dbg !3472
  br i1 %624, label %627, label %625, !dbg !3475

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3476
  br label %672, !dbg !3477

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3478
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3480
  br i1 %630, label %28, label %631, !dbg !3480

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3481
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3483
  br i1 %634, label %635, label %650, !dbg !3483

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2954, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2952, metadata !DIExpression()), !dbg !3012
  %636 = load i8, ptr %119, align 1, !dbg !3484, !tbaa !1155
  %637 = icmp eq i8 %636, 0, !dbg !3487
  br i1 %637, label %650, label %638, !dbg !3487

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2954, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2952, metadata !DIExpression()), !dbg !3012
  %642 = icmp ult i64 %641, %146, !dbg !3488
  br i1 %642, label %643, label %645, !dbg !3491

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3488
  store i8 %639, ptr %644, align 1, !dbg !3488, !tbaa !1155
  br label %645, !dbg !3488

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2952, metadata !DIExpression()), !dbg !3012
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3492
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2954, metadata !DIExpression()), !dbg !3012
  %648 = load i8, ptr %647, align 1, !dbg !3484, !tbaa !1155
  %649 = icmp eq i8 %648, 0, !dbg !3487
  br i1 %649, label %650, label %638, !dbg !3487, !llvm.loop !3493

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2952, metadata !DIExpression()), !dbg !3012
  %652 = icmp ult i64 %651, %146, !dbg !3495
  br i1 %652, label %653, label %672, !dbg !3497

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3498
  store i8 0, ptr %654, align 1, !dbg !3499, !tbaa !1155
  br label %672, !dbg !3498

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !3003), !dbg !3500
  %657 = icmp eq i8 %123, 0, !dbg !3501
  %658 = select i1 %657, i32 2, i32 4, !dbg !3501
  br label %666, !dbg !3501

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !3003), !dbg !3500
  %662 = icmp eq i32 %115, 2, !dbg !3503
  %663 = icmp eq i8 %123, 0, !dbg !3501
  %664 = select i1 %663, i32 2, i32 4, !dbg !3501
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3501
  br label %666, !dbg !3501

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2946, metadata !DIExpression()), !dbg !3012
  %670 = and i32 %5, -3, !dbg !3504
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3505
  br label %672, !dbg !3506

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3507
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3508 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3510 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3515, metadata !DIExpression()), !dbg !3517
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3516, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %1, metadata !3523, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata ptr null, metadata !3524, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata ptr %2, metadata !3525, metadata !DIExpression()), !dbg !3531
  %4 = icmp eq ptr %2, null, !dbg !3533
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3533
  call void @llvm.dbg.value(metadata ptr %5, metadata !3526, metadata !DIExpression()), !dbg !3531
  %6 = tail call ptr @__errno_location() #44, !dbg !3534
  %7 = load i32, ptr %6, align 4, !dbg !3534, !tbaa !1146
  call void @llvm.dbg.value(metadata i32 %7, metadata !3527, metadata !DIExpression()), !dbg !3531
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3535
  %9 = load i32, ptr %8, align 4, !dbg !3535, !tbaa !2886
  %10 = or i32 %9, 1, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %10, metadata !3528, metadata !DIExpression()), !dbg !3531
  %11 = load i32, ptr %5, align 8, !dbg !3537, !tbaa !2836
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3538
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3539
  %14 = load ptr, ptr %13, align 8, !dbg !3539, !tbaa !2907
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3540
  %16 = load ptr, ptr %15, align 8, !dbg !3540, !tbaa !2910
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3541
  %18 = add i64 %17, 1, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %18, metadata !3529, metadata !DIExpression()), !dbg !3531
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !3543
  call void @llvm.dbg.value(metadata ptr %19, metadata !3530, metadata !DIExpression()), !dbg !3531
  %20 = load i32, ptr %5, align 8, !dbg !3544, !tbaa !2836
  %21 = load ptr, ptr %13, align 8, !dbg !3545, !tbaa !2907
  %22 = load ptr, ptr %15, align 8, !dbg !3546, !tbaa !2910
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3547
  store i32 %7, ptr %6, align 4, !dbg !3548, !tbaa !1146
  ret ptr %19, !dbg !3549
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3519 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3550
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3523, metadata !DIExpression()), !dbg !3550
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3524, metadata !DIExpression()), !dbg !3550
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3525, metadata !DIExpression()), !dbg !3550
  %5 = icmp eq ptr %3, null, !dbg !3551
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3551
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3526, metadata !DIExpression()), !dbg !3550
  %7 = tail call ptr @__errno_location() #44, !dbg !3552
  %8 = load i32, ptr %7, align 4, !dbg !3552, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3527, metadata !DIExpression()), !dbg !3550
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3553
  %10 = load i32, ptr %9, align 4, !dbg !3553, !tbaa !2886
  %11 = icmp eq ptr %2, null, !dbg !3554
  %12 = zext i1 %11 to i32, !dbg !3554
  %13 = or i32 %10, %12, !dbg !3555
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3528, metadata !DIExpression()), !dbg !3550
  %14 = load i32, ptr %6, align 8, !dbg !3556, !tbaa !2836
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3557
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3558
  %17 = load ptr, ptr %16, align 8, !dbg !3558, !tbaa !2907
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3559
  %19 = load ptr, ptr %18, align 8, !dbg !3559, !tbaa !2910
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3560
  %21 = add i64 %20, 1, !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3529, metadata !DIExpression()), !dbg !3550
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !3562
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3530, metadata !DIExpression()), !dbg !3550
  %23 = load i32, ptr %6, align 8, !dbg !3563, !tbaa !2836
  %24 = load ptr, ptr %16, align 8, !dbg !3564, !tbaa !2907
  %25 = load ptr, ptr %18, align 8, !dbg !3565, !tbaa !2910
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3566
  store i32 %8, ptr %7, align 4, !dbg !3567, !tbaa !1146
  br i1 %11, label %28, label %27, !dbg !3568

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3569, !tbaa !1348
  br label %28, !dbg !3571

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3572
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3573 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3578, !tbaa !1065
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3575, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3576, metadata !DIExpression()), !dbg !3580
  %2 = load i32, ptr @nslots, align 4, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3576, metadata !DIExpression()), !dbg !3580
  %3 = icmp sgt i32 %2, 1, !dbg !3581
  br i1 %3, label %4, label %6, !dbg !3583

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3581
  br label %10, !dbg !3583

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3584
  %8 = load ptr, ptr %7, align 8, !dbg !3584, !tbaa !3586
  %9 = icmp eq ptr %8, @slot0, !dbg !3588
  br i1 %9, label %17, label %16, !dbg !3589

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3576, metadata !DIExpression()), !dbg !3580
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3590
  %13 = load ptr, ptr %12, align 8, !dbg !3590, !tbaa !3586
  tail call void @free(ptr noundef %13) #41, !dbg !3591
  %14 = add nuw nsw i64 %11, 1, !dbg !3592
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3576, metadata !DIExpression()), !dbg !3580
  %15 = icmp eq i64 %14, %5, !dbg !3581
  br i1 %15, label %6, label %10, !dbg !3583, !llvm.loop !3593

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3595
  store i64 256, ptr @slotvec0, align 8, !dbg !3597, !tbaa !3598
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3599, !tbaa !3586
  br label %17, !dbg !3600

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3601
  br i1 %18, label %20, label %19, !dbg !3603

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3604
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3606, !tbaa !1065
  br label %20, !dbg !3607

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3608, !tbaa !1146
  ret void, !dbg !3609
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3610 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3612, metadata !DIExpression()), !dbg !3614
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3613, metadata !DIExpression()), !dbg !3614
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3615
  ret ptr %3, !dbg !3616
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3617 {
  %5 = alloca i64, align 8, !DIAssignID !3637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3637, metadata ptr %5, metadata !DIExpression()), !dbg !3638
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3621, metadata !DIExpression()), !dbg !3639
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3622, metadata !DIExpression()), !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3623, metadata !DIExpression()), !dbg !3639
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3624, metadata !DIExpression()), !dbg !3639
  %6 = tail call ptr @__errno_location() #44, !dbg !3640
  %7 = load i32, ptr %6, align 4, !dbg !3640, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3625, metadata !DIExpression()), !dbg !3639
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3641, !tbaa !1065
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3626, metadata !DIExpression()), !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3627, metadata !DIExpression()), !dbg !3639
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3642
  br i1 %9, label %10, label %11, !dbg !3642

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3644
  unreachable, !dbg !3644

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3645, !tbaa !1146
  %13 = icmp sgt i32 %12, %0, !dbg !3646
  br i1 %13, label %32, label %14, !dbg !3647

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3648
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3628, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3638
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3649
  %16 = sext i32 %12 to i64, !dbg !3650
  store i64 %16, ptr %5, align 8, !dbg !3651, !tbaa !1348, !DIAssignID !3652
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3631, metadata !DIExpression(), metadata !3652, metadata ptr %5, metadata !DIExpression()), !dbg !3638
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3653
  %18 = add nuw nsw i32 %0, 1, !dbg !3654
  %19 = sub i32 %18, %12, !dbg !3655
  %20 = sext i32 %19 to i64, !dbg !3656
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3657
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3626, metadata !DIExpression()), !dbg !3639
  store ptr %21, ptr @slotvec, align 8, !dbg !3658, !tbaa !1065
  br i1 %15, label %22, label %23, !dbg !3659

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3660, !tbaa.struct !3662
  br label %23, !dbg !3663

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3664, !tbaa !1146
  %25 = sext i32 %24 to i64, !dbg !3665
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3665
  %27 = load i64, ptr %5, align 8, !dbg !3666, !tbaa !1348
  %28 = sub nsw i64 %27, %25, !dbg !3667
  %29 = shl i64 %28, 4, !dbg !3668
  call void @llvm.dbg.value(metadata ptr %26, metadata !3050, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 %29, metadata !3054, metadata !DIExpression()), !dbg !3669
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3671
  %30 = load i64, ptr %5, align 8, !dbg !3672, !tbaa !1348
  %31 = trunc i64 %30 to i32, !dbg !3672
  store i32 %31, ptr @nslots, align 4, !dbg !3673, !tbaa !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3674
  br label %32, !dbg !3675

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3639
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3626, metadata !DIExpression()), !dbg !3639
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3676
  %36 = load i64, ptr %35, align 8, !dbg !3677, !tbaa !3598
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3632, metadata !DIExpression()), !dbg !3678
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3679
  %38 = load ptr, ptr %37, align 8, !dbg !3679, !tbaa !3586
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3634, metadata !DIExpression()), !dbg !3678
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3680
  %40 = load i32, ptr %39, align 4, !dbg !3680, !tbaa !2886
  %41 = or i32 %40, 1, !dbg !3681
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3635, metadata !DIExpression()), !dbg !3678
  %42 = load i32, ptr %3, align 8, !dbg !3682, !tbaa !2836
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3683
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3684
  %45 = load ptr, ptr %44, align 8, !dbg !3684, !tbaa !2907
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3685
  %47 = load ptr, ptr %46, align 8, !dbg !3685, !tbaa !2910
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3686
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3636, metadata !DIExpression()), !dbg !3678
  %49 = icmp ugt i64 %36, %48, !dbg !3687
  br i1 %49, label %60, label %50, !dbg !3689

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3632, metadata !DIExpression()), !dbg !3678
  store i64 %51, ptr %35, align 8, !dbg !3692, !tbaa !3598
  %52 = icmp eq ptr %38, @slot0, !dbg !3693
  br i1 %52, label %54, label %53, !dbg !3695

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3696
  br label %54, !dbg !3696

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3634, metadata !DIExpression()), !dbg !3678
  store ptr %55, ptr %37, align 8, !dbg !3698, !tbaa !3586
  %56 = load i32, ptr %3, align 8, !dbg !3699, !tbaa !2836
  %57 = load ptr, ptr %44, align 8, !dbg !3700, !tbaa !2907
  %58 = load ptr, ptr %46, align 8, !dbg !3701, !tbaa !2910
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3702
  br label %60, !dbg !3703

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3678
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3634, metadata !DIExpression()), !dbg !3678
  store i32 %7, ptr %6, align 4, !dbg !3704, !tbaa !1146
  ret ptr %61, !dbg !3705
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3706 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3710, metadata !DIExpression()), !dbg !3713
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3711, metadata !DIExpression()), !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3712, metadata !DIExpression()), !dbg !3713
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3714
  ret ptr %4, !dbg !3715
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3716 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 0, metadata !3612, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %0, metadata !3613, metadata !DIExpression()), !dbg !3720
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3722
  ret ptr %2, !dbg !3723
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3724 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3728, metadata !DIExpression()), !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 0, metadata !3710, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %0, metadata !3711, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i64 %1, metadata !3712, metadata !DIExpression()), !dbg !3731
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3733
  ret ptr %3, !dbg !3734
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3735 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3743
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3742, metadata !DIExpression(), metadata !3743, metadata ptr %4, metadata !DIExpression()), !dbg !3744
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3739, metadata !DIExpression()), !dbg !3744
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3740, metadata !DIExpression()), !dbg !3744
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3741, metadata !DIExpression()), !dbg !3744
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3746), !dbg !3749
  call void @llvm.dbg.value(metadata i32 %1, metadata !3750, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3755, metadata !DIExpression()), !dbg !3758
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3758, !alias.scope !3746, !DIAssignID !3759
  call void @llvm.dbg.assign(metadata i8 0, metadata !3742, metadata !DIExpression(), metadata !3759, metadata ptr %4, metadata !DIExpression()), !dbg !3744
  %5 = icmp eq i32 %1, 10, !dbg !3760
  br i1 %5, label %6, label %7, !dbg !3762

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3763, !noalias !3746
  unreachable, !dbg !3763

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3764, !tbaa !2836, !alias.scope !3746, !DIAssignID !3765
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3765, metadata ptr %4, metadata !DIExpression()), !dbg !3744
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3766
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3767
  ret ptr %8, !dbg !3768
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3769 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3778
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3778, metadata ptr %5, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3774, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3775, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3776, metadata !DIExpression()), !dbg !3779
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3780
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3781), !dbg !3784
  call void @llvm.dbg.value(metadata i32 %1, metadata !3750, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3755, metadata !DIExpression()), !dbg !3787
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3787, !alias.scope !3781, !DIAssignID !3788
  call void @llvm.dbg.assign(metadata i8 0, metadata !3777, metadata !DIExpression(), metadata !3788, metadata ptr %5, metadata !DIExpression()), !dbg !3779
  %6 = icmp eq i32 %1, 10, !dbg !3789
  br i1 %6, label %7, label %8, !dbg !3790

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3791, !noalias !3781
  unreachable, !dbg !3791

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3792, !tbaa !2836, !alias.scope !3781, !DIAssignID !3793
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3777, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3793, metadata ptr %5, metadata !DIExpression()), !dbg !3779
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3794
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3795
  ret ptr %9, !dbg !3796
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3797 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3803
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3801, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3802, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3742, metadata !DIExpression(), metadata !3803, metadata ptr %3, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !3739, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata ptr %1, metadata !3741, metadata !DIExpression()), !dbg !3805
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3808), !dbg !3811
  call void @llvm.dbg.value(metadata i32 %0, metadata !3750, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3755, metadata !DIExpression()), !dbg !3814
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3814, !alias.scope !3808, !DIAssignID !3815
  call void @llvm.dbg.assign(metadata i8 0, metadata !3742, metadata !DIExpression(), metadata !3815, metadata ptr %3, metadata !DIExpression()), !dbg !3805
  %4 = icmp eq i32 %0, 10, !dbg !3816
  br i1 %4, label %5, label %6, !dbg !3817

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3818, !noalias !3808
  unreachable, !dbg !3818

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3819, !tbaa !2836, !alias.scope !3808, !DIAssignID !3820
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3820, metadata ptr %3, metadata !DIExpression()), !dbg !3805
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3821
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3822
  ret ptr %7, !dbg !3823
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3824 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3831
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3828, metadata !DIExpression()), !dbg !3832
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3829, metadata !DIExpression()), !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3830, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3831, metadata ptr %4, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 0, metadata !3773, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %1, metadata !3775, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %2, metadata !3776, metadata !DIExpression()), !dbg !3833
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3836), !dbg !3839
  call void @llvm.dbg.value(metadata i32 %0, metadata !3750, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3755, metadata !DIExpression()), !dbg !3842
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3842, !alias.scope !3836, !DIAssignID !3843
  call void @llvm.dbg.assign(metadata i8 0, metadata !3777, metadata !DIExpression(), metadata !3843, metadata ptr %4, metadata !DIExpression()), !dbg !3833
  %5 = icmp eq i32 %0, 10, !dbg !3844
  br i1 %5, label %6, label %7, !dbg !3845

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3846, !noalias !3836
  unreachable, !dbg !3846

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3847, !tbaa !2836, !alias.scope !3836, !DIAssignID !3848
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3777, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3848, metadata ptr %4, metadata !DIExpression()), !dbg !3833
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3849
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3850
  ret ptr %8, !dbg !3851
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3852 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3860
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3860, metadata ptr %4, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3856, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3863, !tbaa.struct !3864, !DIAssignID !3865
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3865, metadata ptr %4, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2853, metadata !DIExpression()), !dbg !3866
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2854, metadata !DIExpression()), !dbg !3866
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2855, metadata !DIExpression()), !dbg !3866
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2856, metadata !DIExpression()), !dbg !3866
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3868
  %6 = lshr i8 %2, 5, !dbg !3869
  %7 = zext nneg i8 %6 to i64, !dbg !3869
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3870
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2857, metadata !DIExpression()), !dbg !3866
  %9 = and i8 %2, 31, !dbg !3871
  %10 = zext nneg i8 %9 to i32, !dbg !3871
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2859, metadata !DIExpression()), !dbg !3866
  %11 = load i32, ptr %8, align 4, !dbg !3872, !tbaa !1146
  %12 = lshr i32 %11, %10, !dbg !3873
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2860, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3866
  %13 = and i32 %12, 1, !dbg !3874
  %14 = xor i32 %13, 1, !dbg !3874
  %15 = shl nuw i32 %14, %10, !dbg !3875
  %16 = xor i32 %15, %11, !dbg !3876
  store i32 %16, ptr %8, align 4, !dbg !3876, !tbaa !1146
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3877
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3878
  ret ptr %17, !dbg !3879
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3880 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3886
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3884, metadata !DIExpression()), !dbg !3887
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3885, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3886, metadata ptr %3, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %0, metadata !3856, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 -1, metadata !3857, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i8 %1, metadata !3858, metadata !DIExpression()), !dbg !3888
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3891, !tbaa.struct !3864, !DIAssignID !3892
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3892, metadata ptr %3, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %3, metadata !2853, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 %1, metadata !2854, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !2855, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 %1, metadata !2856, metadata !DIExpression()), !dbg !3893
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3895
  %5 = lshr i8 %1, 5, !dbg !3896
  %6 = zext nneg i8 %5 to i64, !dbg !3896
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3897
  call void @llvm.dbg.value(metadata ptr %7, metadata !2857, metadata !DIExpression()), !dbg !3893
  %8 = and i8 %1, 31, !dbg !3898
  %9 = zext nneg i8 %8 to i32, !dbg !3898
  call void @llvm.dbg.value(metadata i32 %9, metadata !2859, metadata !DIExpression()), !dbg !3893
  %10 = load i32, ptr %7, align 4, !dbg !3899, !tbaa !1146
  %11 = lshr i32 %10, %9, !dbg !3900
  call void @llvm.dbg.value(metadata i32 %11, metadata !2860, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3893
  %12 = and i32 %11, 1, !dbg !3901
  %13 = xor i32 %12, 1, !dbg !3901
  %14 = shl nuw i32 %13, %9, !dbg !3902
  %15 = xor i32 %14, %10, !dbg !3903
  store i32 %15, ptr %7, align 4, !dbg !3903, !tbaa !1146
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3904
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3905
  ret ptr %16, !dbg !3906
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3907 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3910
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %0, metadata !3884, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i8 58, metadata !3885, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3910, metadata ptr %2, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %0, metadata !3856, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 -1, metadata !3857, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8 58, metadata !3858, metadata !DIExpression()), !dbg !3914
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3917, !tbaa.struct !3864, !DIAssignID !3918
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3918, metadata ptr %2, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %2, metadata !2853, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i8 58, metadata !2854, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 1, metadata !2855, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i8 58, metadata !2856, metadata !DIExpression()), !dbg !3919
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3921
  call void @llvm.dbg.value(metadata ptr %3, metadata !2857, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 26, metadata !2859, metadata !DIExpression()), !dbg !3919
  %4 = load i32, ptr %3, align 4, !dbg !3922, !tbaa !1146
  call void @llvm.dbg.value(metadata i32 %4, metadata !2860, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3919
  %5 = or i32 %4, 67108864, !dbg !3923
  store i32 %5, ptr %3, align 4, !dbg !3923, !tbaa !1146
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3924
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3925
  ret ptr %6, !dbg !3926
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3927 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3931
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3929, metadata !DIExpression()), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3930, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3931, metadata ptr %3, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %0, metadata !3856, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 %1, metadata !3857, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i8 58, metadata !3858, metadata !DIExpression()), !dbg !3933
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3936, !tbaa.struct !3864, !DIAssignID !3937
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3859, metadata !DIExpression(), metadata !3937, metadata ptr %3, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %3, metadata !2853, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8 58, metadata !2854, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 1, metadata !2855, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8 58, metadata !2856, metadata !DIExpression()), !dbg !3938
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3940
  call void @llvm.dbg.value(metadata ptr %4, metadata !2857, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32 26, metadata !2859, metadata !DIExpression()), !dbg !3938
  %5 = load i32, ptr %4, align 4, !dbg !3941, !tbaa !1146
  call void @llvm.dbg.value(metadata i32 %5, metadata !2860, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3938
  %6 = or i32 %5, 67108864, !dbg !3942
  store i32 %6, ptr %4, align 4, !dbg !3942, !tbaa !1146
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3943
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3944
  ret ptr %7, !dbg !3945
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3946 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3952
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3951, metadata !DIExpression(), metadata !3952, metadata ptr %4, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3755, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3954
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3948, metadata !DIExpression()), !dbg !3953
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3949, metadata !DIExpression()), !dbg !3953
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !3953
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3956
  call void @llvm.dbg.value(metadata i32 %1, metadata !3750, metadata !DIExpression()), !dbg !3957
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3755, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3957
  %5 = icmp eq i32 %1, 10, !dbg !3958
  br i1 %5, label %6, label %7, !dbg !3959

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3960, !noalias !3961
  unreachable, !dbg !3960

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3755, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3957
  store i32 %1, ptr %4, align 8, !dbg !3964, !tbaa.struct !3864, !DIAssignID !3965
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3964
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3964
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3951, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3965, metadata ptr %4, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3951, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3966, metadata ptr %8, metadata !DIExpression()), !dbg !3953
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2853, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2854, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2855, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2856, metadata !DIExpression()), !dbg !3967
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3969
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2857, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2859, metadata !DIExpression()), !dbg !3967
  %10 = load i32, ptr %9, align 4, !dbg !3970, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2860, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3967
  %11 = or i32 %10, 67108864, !dbg !3971
  store i32 %11, ptr %9, align 4, !dbg !3971, !tbaa !1146, !DIAssignID !3972
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3951, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3972, metadata ptr %9, metadata !DIExpression()), !dbg !3953
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3973
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3974
  ret ptr %12, !dbg !3975
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3976 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3984
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3980, metadata !DIExpression()), !dbg !3985
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3981, metadata !DIExpression()), !dbg !3985
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3982, metadata !DIExpression()), !dbg !3985
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3983, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(), metadata !3984, metadata ptr %5, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i32 %0, metadata !3991, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %1, metadata !3992, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %2, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 -1, metadata !3995, metadata !DIExpression()), !dbg !3996
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3999, !tbaa.struct !3864, !DIAssignID !4000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(), metadata !4000, metadata ptr %5, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4001, metadata ptr undef, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata ptr %5, metadata !2893, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %1, metadata !2894, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %2, metadata !2895, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %5, metadata !2893, metadata !DIExpression()), !dbg !4002
  store i32 10, ptr %5, align 8, !dbg !4004, !tbaa !2836, !DIAssignID !4005
  call void @llvm.dbg.assign(metadata i32 10, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4005, metadata ptr %5, metadata !DIExpression()), !dbg !3996
  %6 = icmp ne ptr %1, null, !dbg !4006
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4007
  br i1 %8, label %10, label %9, !dbg !4007

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4008
  unreachable, !dbg !4008

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4009
  store ptr %1, ptr %11, align 8, !dbg !4010, !tbaa !2907, !DIAssignID !4011
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4011, metadata ptr %11, metadata !DIExpression()), !dbg !3996
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4012
  store ptr %2, ptr %12, align 8, !dbg !4013, !tbaa !2910, !DIAssignID !4014
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4014, metadata ptr %12, metadata !DIExpression()), !dbg !3996
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4015
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4016
  ret ptr %13, !dbg !4017
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3987 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4018
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(), metadata !4018, metadata ptr %6, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3991, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3992, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3993, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3995, metadata !DIExpression()), !dbg !4019
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !4020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4021, !tbaa.struct !3864, !DIAssignID !4022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(), metadata !4022, metadata ptr %6, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4023, metadata ptr undef, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %6, metadata !2893, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %1, metadata !2894, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %2, metadata !2895, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %6, metadata !2893, metadata !DIExpression()), !dbg !4024
  store i32 10, ptr %6, align 8, !dbg !4026, !tbaa !2836, !DIAssignID !4027
  call void @llvm.dbg.assign(metadata i32 10, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4027, metadata ptr %6, metadata !DIExpression()), !dbg !4019
  %7 = icmp ne ptr %1, null, !dbg !4028
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4029
  br i1 %9, label %11, label %10, !dbg !4029

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !4030
  unreachable, !dbg !4030

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4031
  store ptr %1, ptr %12, align 8, !dbg !4032, !tbaa !2907, !DIAssignID !4033
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4033, metadata ptr %12, metadata !DIExpression()), !dbg !4019
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4034
  store ptr %2, ptr %13, align 8, !dbg !4035, !tbaa !2910, !DIAssignID !4036
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4036, metadata ptr %13, metadata !DIExpression()), !dbg !4019
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4037
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !4038
  ret ptr %14, !dbg !4039
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4040 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4047
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4044, metadata !DIExpression()), !dbg !4048
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4045, metadata !DIExpression()), !dbg !4048
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4046, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 0, metadata !3980, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %0, metadata !3981, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !3982, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %2, metadata !3983, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(), metadata !4047, metadata ptr %4, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i32 0, metadata !3991, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %0, metadata !3992, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %1, metadata !3993, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 -1, metadata !3995, metadata !DIExpression()), !dbg !4051
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4054, !tbaa.struct !3864, !DIAssignID !4055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(), metadata !4055, metadata ptr %4, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4056, metadata ptr undef, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %4, metadata !2893, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %0, metadata !2894, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %1, metadata !2895, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %4, metadata !2893, metadata !DIExpression()), !dbg !4057
  store i32 10, ptr %4, align 8, !dbg !4059, !tbaa !2836, !DIAssignID !4060
  call void @llvm.dbg.assign(metadata i32 10, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4060, metadata ptr %4, metadata !DIExpression()), !dbg !4051
  %5 = icmp ne ptr %0, null, !dbg !4061
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4062
  br i1 %7, label %9, label %8, !dbg !4062

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4063
  unreachable, !dbg !4063

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4064
  store ptr %0, ptr %10, align 8, !dbg !4065, !tbaa !2907, !DIAssignID !4066
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4066, metadata ptr %10, metadata !DIExpression()), !dbg !4051
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4067
  store ptr %1, ptr %11, align 8, !dbg !4068, !tbaa !2910, !DIAssignID !4069
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4069, metadata ptr %11, metadata !DIExpression()), !dbg !4051
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4070
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4071
  ret ptr %12, !dbg !4072
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4073 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4081
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4077, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4078, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4079, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4080, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(), metadata !4081, metadata ptr %5, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 0, metadata !3991, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %0, metadata !3992, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %1, metadata !3993, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %3, metadata !3995, metadata !DIExpression()), !dbg !4083
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4086, !tbaa.struct !3864, !DIAssignID !4087
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(), metadata !4087, metadata ptr %5, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4088, metadata ptr undef, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %5, metadata !2893, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %0, metadata !2894, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %1, metadata !2895, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %5, metadata !2893, metadata !DIExpression()), !dbg !4089
  store i32 10, ptr %5, align 8, !dbg !4091, !tbaa !2836, !DIAssignID !4092
  call void @llvm.dbg.assign(metadata i32 10, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4092, metadata ptr %5, metadata !DIExpression()), !dbg !4083
  %6 = icmp ne ptr %0, null, !dbg !4093
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4094
  br i1 %8, label %10, label %9, !dbg !4094

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4095
  unreachable, !dbg !4095

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4096
  store ptr %0, ptr %11, align 8, !dbg !4097, !tbaa !2907, !DIAssignID !4098
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4098, metadata ptr %11, metadata !DIExpression()), !dbg !4083
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4099
  store ptr %1, ptr %12, align 8, !dbg !4100, !tbaa !2910, !DIAssignID !4101
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3986, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4101, metadata ptr %12, metadata !DIExpression()), !dbg !4083
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4102
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4103
  ret ptr %13, !dbg !4104
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4105 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4109, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4110, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4111, metadata !DIExpression()), !dbg !4112
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4113
  ret ptr %4, !dbg !4114
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4115 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4119, metadata !DIExpression()), !dbg !4121
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4120, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i32 0, metadata !4109, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i64 %1, metadata !4111, metadata !DIExpression()), !dbg !4122
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4124
  ret ptr %3, !dbg !4125
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4126 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4130, metadata !DIExpression()), !dbg !4132
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4131, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 %0, metadata !4109, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %1, metadata !4110, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 -1, metadata !4111, metadata !DIExpression()), !dbg !4133
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4135
  ret ptr %3, !dbg !4136
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4137 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i32 0, metadata !4130, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %0, metadata !4131, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i32 0, metadata !4109, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 -1, metadata !4111, metadata !DIExpression()), !dbg !4145
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4147
  ret ptr %2, !dbg !4148
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4149 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4188, metadata !DIExpression()), !dbg !4194
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4189, metadata !DIExpression()), !dbg !4194
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4190, metadata !DIExpression()), !dbg !4194
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4191, metadata !DIExpression()), !dbg !4194
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4192, metadata !DIExpression()), !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4193, metadata !DIExpression()), !dbg !4194
  %7 = icmp eq ptr %1, null, !dbg !4195
  br i1 %7, label %10, label %8, !dbg !4197

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.122, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4198
  br label %12, !dbg !4198

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.123, ptr noundef %2, ptr noundef %3) #41, !dbg !4199
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.3.125, i32 noundef 5) #41, !dbg !4200
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4200
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %0), !dbg !4201
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.5.127, i32 noundef 5) #41, !dbg !4202
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.128) #41, !dbg !4202
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %0), !dbg !4203
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
  ], !dbg !4204

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.7.129, i32 noundef 5) #41, !dbg !4205
  %21 = load ptr, ptr %4, align 8, !dbg !4205, !tbaa !1065
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4205
  br label %147, !dbg !4207

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.8.130, i32 noundef 5) #41, !dbg !4208
  %25 = load ptr, ptr %4, align 8, !dbg !4208, !tbaa !1065
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4208
  %27 = load ptr, ptr %26, align 8, !dbg !4208, !tbaa !1065
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4208
  br label %147, !dbg !4209

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.9.131, i32 noundef 5) #41, !dbg !4210
  %31 = load ptr, ptr %4, align 8, !dbg !4210, !tbaa !1065
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4210
  %33 = load ptr, ptr %32, align 8, !dbg !4210, !tbaa !1065
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4210
  %35 = load ptr, ptr %34, align 8, !dbg !4210, !tbaa !1065
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4210
  br label %147, !dbg !4211

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.10.132, i32 noundef 5) #41, !dbg !4212
  %39 = load ptr, ptr %4, align 8, !dbg !4212, !tbaa !1065
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4212
  %41 = load ptr, ptr %40, align 8, !dbg !4212, !tbaa !1065
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4212
  %43 = load ptr, ptr %42, align 8, !dbg !4212, !tbaa !1065
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4212
  %45 = load ptr, ptr %44, align 8, !dbg !4212, !tbaa !1065
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4212
  br label %147, !dbg !4213

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.11.133, i32 noundef 5) #41, !dbg !4214
  %49 = load ptr, ptr %4, align 8, !dbg !4214, !tbaa !1065
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4214
  %51 = load ptr, ptr %50, align 8, !dbg !4214, !tbaa !1065
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4214
  %53 = load ptr, ptr %52, align 8, !dbg !4214, !tbaa !1065
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4214
  %55 = load ptr, ptr %54, align 8, !dbg !4214, !tbaa !1065
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4214
  %57 = load ptr, ptr %56, align 8, !dbg !4214, !tbaa !1065
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4214
  br label %147, !dbg !4215

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.12.134, i32 noundef 5) #41, !dbg !4216
  %61 = load ptr, ptr %4, align 8, !dbg !4216, !tbaa !1065
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4216
  %63 = load ptr, ptr %62, align 8, !dbg !4216, !tbaa !1065
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4216
  %65 = load ptr, ptr %64, align 8, !dbg !4216, !tbaa !1065
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4216
  %67 = load ptr, ptr %66, align 8, !dbg !4216, !tbaa !1065
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4216
  %69 = load ptr, ptr %68, align 8, !dbg !4216, !tbaa !1065
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4216
  %71 = load ptr, ptr %70, align 8, !dbg !4216, !tbaa !1065
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4216
  br label %147, !dbg !4217

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.13.135, i32 noundef 5) #41, !dbg !4218
  %75 = load ptr, ptr %4, align 8, !dbg !4218, !tbaa !1065
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4218
  %77 = load ptr, ptr %76, align 8, !dbg !4218, !tbaa !1065
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4218
  %79 = load ptr, ptr %78, align 8, !dbg !4218, !tbaa !1065
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4218
  %81 = load ptr, ptr %80, align 8, !dbg !4218, !tbaa !1065
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4218
  %83 = load ptr, ptr %82, align 8, !dbg !4218, !tbaa !1065
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4218
  %85 = load ptr, ptr %84, align 8, !dbg !4218, !tbaa !1065
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4218
  %87 = load ptr, ptr %86, align 8, !dbg !4218, !tbaa !1065
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4218
  br label %147, !dbg !4219

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.14.136, i32 noundef 5) #41, !dbg !4220
  %91 = load ptr, ptr %4, align 8, !dbg !4220, !tbaa !1065
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4220
  %93 = load ptr, ptr %92, align 8, !dbg !4220, !tbaa !1065
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4220
  %95 = load ptr, ptr %94, align 8, !dbg !4220, !tbaa !1065
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4220
  %97 = load ptr, ptr %96, align 8, !dbg !4220, !tbaa !1065
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4220
  %99 = load ptr, ptr %98, align 8, !dbg !4220, !tbaa !1065
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4220
  %101 = load ptr, ptr %100, align 8, !dbg !4220, !tbaa !1065
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4220
  %103 = load ptr, ptr %102, align 8, !dbg !4220, !tbaa !1065
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4220
  %105 = load ptr, ptr %104, align 8, !dbg !4220, !tbaa !1065
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4220
  br label %147, !dbg !4221

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.15.137, i32 noundef 5) #41, !dbg !4222
  %109 = load ptr, ptr %4, align 8, !dbg !4222, !tbaa !1065
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4222
  %111 = load ptr, ptr %110, align 8, !dbg !4222, !tbaa !1065
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4222
  %113 = load ptr, ptr %112, align 8, !dbg !4222, !tbaa !1065
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4222
  %115 = load ptr, ptr %114, align 8, !dbg !4222, !tbaa !1065
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4222
  %117 = load ptr, ptr %116, align 8, !dbg !4222, !tbaa !1065
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4222
  %119 = load ptr, ptr %118, align 8, !dbg !4222, !tbaa !1065
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4222
  %121 = load ptr, ptr %120, align 8, !dbg !4222, !tbaa !1065
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4222
  %123 = load ptr, ptr %122, align 8, !dbg !4222, !tbaa !1065
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4222
  %125 = load ptr, ptr %124, align 8, !dbg !4222, !tbaa !1065
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4222
  br label %147, !dbg !4223

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.16.138, i32 noundef 5) #41, !dbg !4224
  %129 = load ptr, ptr %4, align 8, !dbg !4224, !tbaa !1065
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4224
  %131 = load ptr, ptr %130, align 8, !dbg !4224, !tbaa !1065
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4224
  %133 = load ptr, ptr %132, align 8, !dbg !4224, !tbaa !1065
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4224
  %135 = load ptr, ptr %134, align 8, !dbg !4224, !tbaa !1065
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4224
  %137 = load ptr, ptr %136, align 8, !dbg !4224, !tbaa !1065
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4224
  %139 = load ptr, ptr %138, align 8, !dbg !4224, !tbaa !1065
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4224
  %141 = load ptr, ptr %140, align 8, !dbg !4224, !tbaa !1065
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4224
  %143 = load ptr, ptr %142, align 8, !dbg !4224, !tbaa !1065
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4224
  %145 = load ptr, ptr %144, align 8, !dbg !4224, !tbaa !1065
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4224
  br label %147, !dbg !4225

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4226
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4227 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4231, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4232, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4233, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4234, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4235, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4236, metadata !DIExpression()), !dbg !4237
  br label %6, !dbg !4238

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4240
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4236, metadata !DIExpression()), !dbg !4237
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4241
  %9 = load ptr, ptr %8, align 8, !dbg !4241, !tbaa !1065
  %10 = icmp eq ptr %9, null, !dbg !4243
  %11 = add i64 %7, 1, !dbg !4244
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4236, metadata !DIExpression()), !dbg !4237
  br i1 %10, label %12, label %6, !dbg !4243, !llvm.loop !4245

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4247
  ret void, !dbg !4248
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4249 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4268
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4266, metadata !DIExpression(), metadata !4268, metadata ptr %6, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4261, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4262, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4263, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4264, metadata !DIExpression()), !dbg !4269
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4270
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4265, metadata !DIExpression()), !dbg !4269
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4265, metadata !DIExpression()), !dbg !4269
  %10 = icmp ult i32 %9, 41, !dbg !4271
  br i1 %10, label %11, label %16, !dbg !4271

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4271
  %13 = zext nneg i32 %9 to i64, !dbg !4271
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4271
  %15 = add nuw nsw i32 %9, 8, !dbg !4271
  store i32 %15, ptr %4, align 8, !dbg !4271
  br label %19, !dbg !4271

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4271
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4271
  store ptr %18, ptr %7, align 8, !dbg !4271
  br label %19, !dbg !4271

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4271
  %22 = load ptr, ptr %21, align 8, !dbg !4271
  store ptr %22, ptr %6, align 16, !dbg !4274, !tbaa !1065
  %23 = icmp eq ptr %22, null, !dbg !4275
  br i1 %23, label %128, label %24, !dbg !4276

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4265, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4265, metadata !DIExpression()), !dbg !4269
  %25 = icmp ult i32 %20, 41, !dbg !4271
  br i1 %25, label %29, label %26, !dbg !4271

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4271
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4271
  store ptr %28, ptr %7, align 8, !dbg !4271
  br label %34, !dbg !4271

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4271
  %31 = zext nneg i32 %20 to i64, !dbg !4271
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4271
  %33 = add nuw nsw i32 %20, 8, !dbg !4271
  store i32 %33, ptr %4, align 8, !dbg !4271
  br label %34, !dbg !4271

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4271
  %37 = load ptr, ptr %36, align 8, !dbg !4271
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4277
  store ptr %37, ptr %38, align 8, !dbg !4274, !tbaa !1065
  %39 = icmp eq ptr %37, null, !dbg !4275
  br i1 %39, label %128, label %40, !dbg !4276

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4265, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4265, metadata !DIExpression()), !dbg !4269
  %41 = icmp ult i32 %35, 41, !dbg !4271
  br i1 %41, label %45, label %42, !dbg !4271

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4271
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4271
  store ptr %44, ptr %7, align 8, !dbg !4271
  br label %50, !dbg !4271

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4271
  %47 = zext nneg i32 %35 to i64, !dbg !4271
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4271
  %49 = add nuw nsw i32 %35, 8, !dbg !4271
  store i32 %49, ptr %4, align 8, !dbg !4271
  br label %50, !dbg !4271

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4271
  %53 = load ptr, ptr %52, align 8, !dbg !4271
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4277
  store ptr %53, ptr %54, align 16, !dbg !4274, !tbaa !1065
  %55 = icmp eq ptr %53, null, !dbg !4275
  br i1 %55, label %128, label %56, !dbg !4276

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4265, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4265, metadata !DIExpression()), !dbg !4269
  %57 = icmp ult i32 %51, 41, !dbg !4271
  br i1 %57, label %61, label %58, !dbg !4271

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4271
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4271
  store ptr %60, ptr %7, align 8, !dbg !4271
  br label %66, !dbg !4271

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4271
  %63 = zext nneg i32 %51 to i64, !dbg !4271
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4271
  %65 = add nuw nsw i32 %51, 8, !dbg !4271
  store i32 %65, ptr %4, align 8, !dbg !4271
  br label %66, !dbg !4271

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4271
  %69 = load ptr, ptr %68, align 8, !dbg !4271
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4277
  store ptr %69, ptr %70, align 8, !dbg !4274, !tbaa !1065
  %71 = icmp eq ptr %69, null, !dbg !4275
  br i1 %71, label %128, label %72, !dbg !4276

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4265, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4265, metadata !DIExpression()), !dbg !4269
  %73 = icmp ult i32 %67, 41, !dbg !4271
  br i1 %73, label %77, label %74, !dbg !4271

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4271
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4271
  store ptr %76, ptr %7, align 8, !dbg !4271
  br label %82, !dbg !4271

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4271
  %79 = zext nneg i32 %67 to i64, !dbg !4271
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4271
  %81 = add nuw nsw i32 %67, 8, !dbg !4271
  store i32 %81, ptr %4, align 8, !dbg !4271
  br label %82, !dbg !4271

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4271
  %85 = load ptr, ptr %84, align 8, !dbg !4271
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4277
  store ptr %85, ptr %86, align 16, !dbg !4274, !tbaa !1065
  %87 = icmp eq ptr %85, null, !dbg !4275
  br i1 %87, label %128, label %88, !dbg !4276

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4265, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4265, metadata !DIExpression()), !dbg !4269
  %89 = icmp ult i32 %83, 41, !dbg !4271
  br i1 %89, label %93, label %90, !dbg !4271

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4271
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4271
  store ptr %92, ptr %7, align 8, !dbg !4271
  br label %98, !dbg !4271

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4271
  %95 = zext nneg i32 %83 to i64, !dbg !4271
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4271
  %97 = add nuw nsw i32 %83, 8, !dbg !4271
  store i32 %97, ptr %4, align 8, !dbg !4271
  br label %98, !dbg !4271

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4271
  %100 = load ptr, ptr %99, align 8, !dbg !4271
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4277
  store ptr %100, ptr %101, align 8, !dbg !4274, !tbaa !1065
  %102 = icmp eq ptr %100, null, !dbg !4275
  br i1 %102, label %128, label %103, !dbg !4276

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4265, metadata !DIExpression()), !dbg !4269
  %104 = load ptr, ptr %7, align 8, !dbg !4271
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4271
  store ptr %105, ptr %7, align 8, !dbg !4271
  %106 = load ptr, ptr %104, align 8, !dbg !4271
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4277
  store ptr %106, ptr %107, align 16, !dbg !4274, !tbaa !1065
  %108 = icmp eq ptr %106, null, !dbg !4275
  br i1 %108, label %128, label %109, !dbg !4276

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4265, metadata !DIExpression()), !dbg !4269
  %110 = load ptr, ptr %7, align 8, !dbg !4271
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4271
  store ptr %111, ptr %7, align 8, !dbg !4271
  %112 = load ptr, ptr %110, align 8, !dbg !4271
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4277
  store ptr %112, ptr %113, align 8, !dbg !4274, !tbaa !1065
  %114 = icmp eq ptr %112, null, !dbg !4275
  br i1 %114, label %128, label %115, !dbg !4276

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4265, metadata !DIExpression()), !dbg !4269
  %116 = load ptr, ptr %7, align 8, !dbg !4271
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4271
  store ptr %117, ptr %7, align 8, !dbg !4271
  %118 = load ptr, ptr %116, align 8, !dbg !4271
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4277
  store ptr %118, ptr %119, align 16, !dbg !4274, !tbaa !1065
  %120 = icmp eq ptr %118, null, !dbg !4275
  br i1 %120, label %128, label %121, !dbg !4276

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4265, metadata !DIExpression()), !dbg !4269
  %122 = load ptr, ptr %7, align 8, !dbg !4271
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4271
  store ptr %123, ptr %7, align 8, !dbg !4271
  %124 = load ptr, ptr %122, align 8, !dbg !4271
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4277
  store ptr %124, ptr %125, align 8, !dbg !4274, !tbaa !1065
  %126 = icmp eq ptr %124, null, !dbg !4275
  %127 = select i1 %126, i64 9, i64 10, !dbg !4276
  br label %128, !dbg !4276

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4278
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4279
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4280
  ret void, !dbg !4280
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4281 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4294
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4289, metadata !DIExpression(), metadata !4294, metadata ptr %5, metadata !DIExpression()), !dbg !4295
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4285, metadata !DIExpression()), !dbg !4295
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4286, metadata !DIExpression()), !dbg !4295
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4287, metadata !DIExpression()), !dbg !4295
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4288, metadata !DIExpression()), !dbg !4295
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #41, !dbg !4296
  call void @llvm.va_start(ptr nonnull %5), !dbg !4297
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4298
  call void @llvm.va_end(ptr nonnull %5), !dbg !4299
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #41, !dbg !4300
  ret void, !dbg !4300
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4301 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4302, !tbaa !1065
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.126, ptr noundef %1), !dbg !4302
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.17.143, i32 noundef 5) #41, !dbg !4303
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.144) #41, !dbg !4303
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.19.145, i32 noundef 5) #41, !dbg !4304
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.146, ptr noundef nonnull @.str.21.147) #41, !dbg !4304
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.124, ptr noundef nonnull @.str.22.148, i32 noundef 5) #41, !dbg !4305
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.149) #41, !dbg !4305
  ret void, !dbg !4306
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4307 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4312, metadata !DIExpression()), !dbg !4315
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4313, metadata !DIExpression()), !dbg !4315
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4314, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %1, metadata !4319, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %2, metadata !4320, metadata !DIExpression()), !dbg !4321
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4323
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4329
  %5 = icmp eq ptr %4, null, !dbg !4331
  br i1 %5, label %6, label %7, !dbg !4333

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4334
  unreachable, !dbg !4334

7:                                                ; preds = %3
  ret ptr %4, !dbg !4335
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4317 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4319, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4320, metadata !DIExpression()), !dbg !4336
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4337
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4338
  %5 = icmp eq ptr %4, null, !dbg !4340
  br i1 %5, label %6, label %7, !dbg !4341

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4342
  unreachable, !dbg !4342

7:                                                ; preds = %3
  ret ptr %4, !dbg !4343
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4344 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4348, metadata !DIExpression()), !dbg !4349
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4350
  call void @llvm.dbg.value(metadata ptr %2, metadata !4324, metadata !DIExpression()), !dbg !4351
  %3 = icmp eq ptr %2, null, !dbg !4353
  br i1 %3, label %4, label %5, !dbg !4354

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4355
  unreachable, !dbg !4355

5:                                                ; preds = %1
  ret ptr %2, !dbg !4356
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4357 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4358 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4362, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %0, metadata !4364, metadata !DIExpression()), !dbg !4368
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4370
  call void @llvm.dbg.value(metadata ptr %2, metadata !4324, metadata !DIExpression()), !dbg !4371
  %3 = icmp eq ptr %2, null, !dbg !4373
  br i1 %3, label %4, label %5, !dbg !4374

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4375
  unreachable, !dbg !4375

5:                                                ; preds = %1
  ret ptr %2, !dbg !4376
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4377 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4381, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %0, metadata !4348, metadata !DIExpression()), !dbg !4383
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4385
  call void @llvm.dbg.value(metadata ptr %2, metadata !4324, metadata !DIExpression()), !dbg !4386
  %3 = icmp eq ptr %2, null, !dbg !4388
  br i1 %3, label %4, label %5, !dbg !4389

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4390
  unreachable, !dbg !4390

5:                                                ; preds = %1
  ret ptr %2, !dbg !4391
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4392 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4396, metadata !DIExpression()), !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4397, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata ptr %0, metadata !4399, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %1, metadata !4403, metadata !DIExpression()), !dbg !4404
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4406
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4407
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4408
  %5 = icmp eq ptr %4, null, !dbg !4410
  br i1 %5, label %6, label %7, !dbg !4411

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4412
  unreachable, !dbg !4412

7:                                                ; preds = %2
  ret ptr %4, !dbg !4413
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4414 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4415 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4419, metadata !DIExpression()), !dbg !4421
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4420, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata ptr %0, metadata !4422, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %1, metadata !4425, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata ptr %0, metadata !4399, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %1, metadata !4403, metadata !DIExpression()), !dbg !4428
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4430
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4431
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4432
  %5 = icmp eq ptr %4, null, !dbg !4434
  br i1 %5, label %6, label %7, !dbg !4435

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4436
  unreachable, !dbg !4436

7:                                                ; preds = %2
  ret ptr %4, !dbg !4437
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4438 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4444, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata ptr %0, metadata !4446, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i64 %1, metadata !4449, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i64 %2, metadata !4450, metadata !DIExpression()), !dbg !4451
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4453
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4454
  %5 = icmp eq ptr %4, null, !dbg !4456
  br i1 %5, label %6, label %7, !dbg !4457

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4458
  unreachable, !dbg !4458

7:                                                ; preds = %3
  ret ptr %4, !dbg !4459
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4460 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4464, metadata !DIExpression()), !dbg !4466
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata ptr null, metadata !4316, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i64 %0, metadata !4319, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i64 %1, metadata !4320, metadata !DIExpression()), !dbg !4467
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4469
  call void @llvm.dbg.value(metadata ptr %3, metadata !4324, metadata !DIExpression()), !dbg !4470
  %4 = icmp eq ptr %3, null, !dbg !4472
  br i1 %4, label %5, label %6, !dbg !4473

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4474
  unreachable, !dbg !4474

6:                                                ; preds = %2
  ret ptr %3, !dbg !4475
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4476 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4480, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr null, metadata !4442, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i64 %0, metadata !4443, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i64 %1, metadata !4444, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr null, metadata !4446, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i64 %0, metadata !4449, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i64 %1, metadata !4450, metadata !DIExpression()), !dbg !4485
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4487
  call void @llvm.dbg.value(metadata ptr %3, metadata !4324, metadata !DIExpression()), !dbg !4488
  %4 = icmp eq ptr %3, null, !dbg !4490
  br i1 %4, label %5, label %6, !dbg !4491

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4492
  unreachable, !dbg !4492

6:                                                ; preds = %2
  ret ptr %3, !dbg !4493
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4494 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4498, metadata !DIExpression()), !dbg !4500
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4499, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr %0, metadata !986, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata ptr %1, metadata !987, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 1, metadata !988, metadata !DIExpression()), !dbg !4501
  %3 = load i64, ptr %1, align 8, !dbg !4503, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %3, metadata !989, metadata !DIExpression()), !dbg !4501
  %4 = icmp eq ptr %0, null, !dbg !4504
  br i1 %4, label %5, label %8, !dbg !4506

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4507
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4510
  br label %15, !dbg !4510

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4511
  %10 = add nuw i64 %9, 1, !dbg !4511
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4511
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4511
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4511
  call void @llvm.dbg.value(metadata i64 %13, metadata !989, metadata !DIExpression()), !dbg !4501
  br i1 %12, label %14, label %15, !dbg !4514

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4515
  unreachable, !dbg !4515

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4501
  call void @llvm.dbg.value(metadata i64 %16, metadata !989, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i64 %16, metadata !4319, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i64 1, metadata !4320, metadata !DIExpression()), !dbg !4516
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4518
  call void @llvm.dbg.value(metadata ptr %17, metadata !4324, metadata !DIExpression()), !dbg !4519
  %18 = icmp eq ptr %17, null, !dbg !4521
  br i1 %18, label %19, label %20, !dbg !4522

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4523
  unreachable, !dbg !4523

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !986, metadata !DIExpression()), !dbg !4501
  store i64 %16, ptr %1, align 8, !dbg !4524, !tbaa !1348
  ret ptr %17, !dbg !4525
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !981 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !986, metadata !DIExpression()), !dbg !4526
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !987, metadata !DIExpression()), !dbg !4526
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !988, metadata !DIExpression()), !dbg !4526
  %4 = load i64, ptr %1, align 8, !dbg !4527, !tbaa !1348
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !989, metadata !DIExpression()), !dbg !4526
  %5 = icmp eq ptr %0, null, !dbg !4528
  br i1 %5, label %6, label %13, !dbg !4529

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4530
  br i1 %7, label %8, label %20, !dbg !4531

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4532
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !989, metadata !DIExpression()), !dbg !4526
  %10 = icmp ugt i64 %2, 128, !dbg !4534
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4535
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !989, metadata !DIExpression()), !dbg !4526
  br label %20, !dbg !4536

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4537
  %15 = add nuw i64 %14, 1, !dbg !4537
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4537
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4537
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4537
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !989, metadata !DIExpression()), !dbg !4526
  br i1 %17, label %19, label %20, !dbg !4538

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4539
  unreachable, !dbg !4539

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4526
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !989, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr %0, metadata !4316, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i64 %21, metadata !4319, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i64 %2, metadata !4320, metadata !DIExpression()), !dbg !4540
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4542
  call void @llvm.dbg.value(metadata ptr %22, metadata !4324, metadata !DIExpression()), !dbg !4543
  %23 = icmp eq ptr %22, null, !dbg !4545
  br i1 %23, label %24, label %25, !dbg !4546

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4547
  unreachable, !dbg !4547

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !986, metadata !DIExpression()), !dbg !4526
  store i64 %21, ptr %1, align 8, !dbg !4548, !tbaa !1348
  ret ptr %22, !dbg !4549
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !993 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1000, metadata !DIExpression()), !dbg !4550
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1001, metadata !DIExpression()), !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1002, metadata !DIExpression()), !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1003, metadata !DIExpression()), !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1004, metadata !DIExpression()), !dbg !4550
  %6 = load i64, ptr %1, align 8, !dbg !4551, !tbaa !1348
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1005, metadata !DIExpression()), !dbg !4550
  %7 = ashr i64 %6, 1, !dbg !4552
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4552
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4552
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4552
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1006, metadata !DIExpression()), !dbg !4550
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4554
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1006, metadata !DIExpression()), !dbg !4550
  %12 = icmp sgt i64 %3, -1, !dbg !4555
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4557
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4557
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1006, metadata !DIExpression()), !dbg !4550
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4558
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4558
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4558
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1007, metadata !DIExpression()), !dbg !4550
  %18 = icmp slt i64 %17, 128, !dbg !4558
  %19 = select i1 %18, i64 128, i64 0, !dbg !4558
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4558
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1008, metadata !DIExpression()), !dbg !4550
  %21 = icmp eq i64 %20, 0, !dbg !4559
  br i1 %21, label %26, label %22, !dbg !4561

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4562
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1006, metadata !DIExpression()), !dbg !4550
  %24 = srem i64 %20, %4, !dbg !4564
  %25 = sub nsw i64 %20, %24, !dbg !4565
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1007, metadata !DIExpression()), !dbg !4550
  br label %26, !dbg !4566

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4550
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !1007, metadata !DIExpression()), !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1006, metadata !DIExpression()), !dbg !4550
  %29 = icmp eq ptr %0, null, !dbg !4567
  br i1 %29, label %30, label %31, !dbg !4569

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4570, !tbaa !1348
  br label %31, !dbg !4571

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4572
  %33 = icmp slt i64 %32, %2, !dbg !4574
  br i1 %33, label %34, label %46, !dbg !4575

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4576
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4576
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4576
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1006, metadata !DIExpression()), !dbg !4550
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4577
  br i1 %40, label %45, label %41, !dbg !4577

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4578
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4578
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4578
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !1007, metadata !DIExpression()), !dbg !4550
  br i1 %43, label %45, label %46, !dbg !4579

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #43, !dbg !4580
  unreachable, !dbg !4580

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4550
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1007, metadata !DIExpression()), !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1006, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata ptr %0, metadata !4396, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 %48, metadata !4397, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %0, metadata !4399, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %48, metadata !4403, metadata !DIExpression()), !dbg !4583
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4585
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #48, !dbg !4586
  call void @llvm.dbg.value(metadata ptr %50, metadata !4324, metadata !DIExpression()), !dbg !4587
  %51 = icmp eq ptr %50, null, !dbg !4589
  br i1 %51, label %52, label %53, !dbg !4590

52:                                               ; preds = %46
  tail call void @xalloc_die() #43, !dbg !4591
  unreachable, !dbg !4591

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1000, metadata !DIExpression()), !dbg !4550
  store i64 %47, ptr %1, align 8, !dbg !4592, !tbaa !1348
  ret ptr %50, !dbg !4593
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4594 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4596, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 %0, metadata !4598, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 1, metadata !4601, metadata !DIExpression()), !dbg !4602
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4604
  call void @llvm.dbg.value(metadata ptr %2, metadata !4324, metadata !DIExpression()), !dbg !4605
  %3 = icmp eq ptr %2, null, !dbg !4607
  br i1 %3, label %4, label %5, !dbg !4608

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4609
  unreachable, !dbg !4609

5:                                                ; preds = %1
  ret ptr %2, !dbg !4610
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4611 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4599 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4598, metadata !DIExpression()), !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4601, metadata !DIExpression()), !dbg !4612
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4613
  call void @llvm.dbg.value(metadata ptr %3, metadata !4324, metadata !DIExpression()), !dbg !4614
  %4 = icmp eq ptr %3, null, !dbg !4616
  br i1 %4, label %5, label %6, !dbg !4617

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4618
  unreachable, !dbg !4618

6:                                                ; preds = %2
  ret ptr %3, !dbg !4619
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4620 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4622, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 %0, metadata !4624, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 1, metadata !4627, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %0, metadata !4630, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i64 1, metadata !4633, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i64 %0, metadata !4630, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i64 1, metadata !4633, metadata !DIExpression()), !dbg !4634
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4636
  call void @llvm.dbg.value(metadata ptr %2, metadata !4324, metadata !DIExpression()), !dbg !4637
  %3 = icmp eq ptr %2, null, !dbg !4639
  br i1 %3, label %4, label %5, !dbg !4640

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4641
  unreachable, !dbg !4641

5:                                                ; preds = %1
  ret ptr %2, !dbg !4642
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4625 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4624, metadata !DIExpression()), !dbg !4643
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4627, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 %0, metadata !4630, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64 %1, metadata !4633, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64 %0, metadata !4630, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64 %1, metadata !4633, metadata !DIExpression()), !dbg !4644
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4646
  call void @llvm.dbg.value(metadata ptr %3, metadata !4324, metadata !DIExpression()), !dbg !4647
  %4 = icmp eq ptr %3, null, !dbg !4649
  br i1 %4, label %5, label %6, !dbg !4650

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4651
  unreachable, !dbg !4651

6:                                                ; preds = %2
  ret ptr %3, !dbg !4652
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4653 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4657, metadata !DIExpression()), !dbg !4659
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %1, metadata !4348, metadata !DIExpression()), !dbg !4660
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4662
  call void @llvm.dbg.value(metadata ptr %3, metadata !4324, metadata !DIExpression()), !dbg !4663
  %4 = icmp eq ptr %3, null, !dbg !4665
  br i1 %4, label %5, label %6, !dbg !4666

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4667
  unreachable, !dbg !4667

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4668, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4673
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4675
  ret ptr %3, !dbg !4676
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4681, metadata !DIExpression()), !dbg !4683
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4682, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata i64 %1, metadata !4362, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i64 %1, metadata !4364, metadata !DIExpression()), !dbg !4686
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4688
  call void @llvm.dbg.value(metadata ptr %3, metadata !4324, metadata !DIExpression()), !dbg !4689
  %4 = icmp eq ptr %3, null, !dbg !4691
  br i1 %4, label %5, label %6, !dbg !4692

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4693
  unreachable, !dbg !4693

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4668, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4694
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4696
  ret ptr %3, !dbg !4697
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4698 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4702, metadata !DIExpression()), !dbg !4705
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4703, metadata !DIExpression()), !dbg !4705
  %3 = add nsw i64 %1, 1, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %3, metadata !4362, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 %3, metadata !4364, metadata !DIExpression()), !dbg !4709
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4711
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4712
  %5 = icmp eq ptr %4, null, !dbg !4714
  br i1 %5, label %6, label %7, !dbg !4715

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4716
  unreachable, !dbg !4716

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4704, metadata !DIExpression()), !dbg !4705
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4717
  store i8 0, ptr %8, align 1, !dbg !4718, !tbaa !1155
  call void @llvm.dbg.value(metadata ptr %4, metadata !4668, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4719
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4721
  ret ptr %4, !dbg !4722
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4723 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4725, metadata !DIExpression()), !dbg !4726
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4727
  %3 = add i64 %2, 1, !dbg !4728
  call void @llvm.dbg.value(metadata ptr %0, metadata !4657, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %3, metadata !4658, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %3, metadata !4348, metadata !DIExpression()), !dbg !4731
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4733
  call void @llvm.dbg.value(metadata ptr %4, metadata !4324, metadata !DIExpression()), !dbg !4734
  %5 = icmp eq ptr %4, null, !dbg !4736
  br i1 %5, label %6, label %7, !dbg !4737

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4738
  unreachable, !dbg !4738

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4668, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %3, metadata !4672, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4741
  ret ptr %4, !dbg !4742
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4743 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4748, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4745, metadata !DIExpression()), !dbg !4749
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #41, !dbg !4748
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #41, !dbg !4748
  %3 = icmp eq i32 %1, 0, !dbg !4748
  tail call void @llvm.assume(i1 %3), !dbg !4748
  tail call void @abort() #43, !dbg !4750
  unreachable, !dbg !4750
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4751 {
  %9 = alloca i64, align 8, !DIAssignID !4772
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4763, metadata !DIExpression(), metadata !4772, metadata ptr %9, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4755, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4756, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4757, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4758, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4759, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !4760, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !4761, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4762, metadata !DIExpression()), !dbg !4773
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #41, !dbg !4774
  %10 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #41, !dbg !4775
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4765, metadata !DIExpression()), !dbg !4773
  %11 = icmp eq i32 %10, 4, !dbg !4776
  br i1 %11, label %36, label %12, !dbg !4778

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4779, !tbaa !1348
  %14 = icmp slt i64 %13, %2, !dbg !4782
  br i1 %14, label %17, label %15, !dbg !4783

15:                                               ; preds = %12
  %16 = icmp sgt i64 %13, %3, !dbg !4784
  br i1 %16, label %17, label %24, !dbg !4786

17:                                               ; preds = %15, %12
  %18 = phi i32 [ 4, %12 ], [ 8, %15 ]
  %19 = phi i64 [ %2, %12 ], [ %3, %15 ]
  %20 = and i32 %18, %7, !dbg !4787
  %21 = icmp eq i32 %20, 0, !dbg !4787
  %22 = select i1 %21, i32 75, i32 34, !dbg !4787
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !4764, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4765, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4767, metadata !DIExpression()), !dbg !4773
  %23 = icmp ult i32 %10, 2, !dbg !4788
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !4768, metadata !DIExpression()), !dbg !4773
  br i1 %23, label %29, label %36, !dbg !4789

24:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !4764, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4765, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.dbg.value(metadata i32 75, metadata !4767, metadata !DIExpression()), !dbg !4773
  %25 = icmp eq i32 %10, 1, !dbg !4788
  %26 = select i1 %25, i32 75, i32 0, !dbg !4790
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4768, metadata !DIExpression()), !dbg !4773
  %27 = icmp eq i32 %10, 0, !dbg !4791
  br i1 %27, label %40, label %28, !dbg !4792

28:                                               ; preds = %24
  br i1 %25, label %29, label %36, !dbg !4789

29:                                               ; preds = %17, %28
  %30 = phi i64 [ %19, %17 ], [ %13, %28 ]
  %31 = phi i32 [ %22, %17 ], [ 75, %28 ]
  %32 = icmp slt i64 %13, 0, !dbg !4793
  %33 = select i1 %32, i32 1, i32 2, !dbg !4794
  %34 = and i32 %33, %7, !dbg !4795
  %35 = icmp eq i32 %34, 0, !dbg !4795
  br i1 %35, label %36, label %40, !dbg !4796

36:                                               ; preds = %8, %17, %29, %28
  %37 = phi i32 [ 0, %17 ], [ %31, %29 ], [ 0, %28 ], [ 0, %8 ]
  %38 = call i32 @llvm.umax.i32(i32 %6, i32 1), !dbg !4797
  %39 = call ptr @quote(ptr noundef nonnull %0) #41, !dbg !4797
  call void (i32, i32, ptr, ...) @error(i32 noundef %38, i32 noundef %37, ptr noundef nonnull @.str.167, ptr noundef nonnull %5, ptr noundef %39) #41, !dbg !4797
  unreachable, !dbg !4797

40:                                               ; preds = %29, %24
  %41 = phi i32 [ %31, %29 ], [ %26, %24 ]
  %42 = phi i64 [ %30, %29 ], [ %13, %24 ]
  %43 = tail call ptr @__errno_location() #44, !dbg !4798
  store i32 %41, ptr %43, align 4, !dbg !4799, !tbaa !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #41, !dbg !4800
  ret i64 %42, !dbg !4801
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4802 {
  %7 = alloca i64, align 8, !DIAssignID !4812
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4806, metadata !DIExpression()), !dbg !4813
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4807, metadata !DIExpression()), !dbg !4813
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4808, metadata !DIExpression()), !dbg !4813
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4809, metadata !DIExpression()), !dbg !4813
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4810, metadata !DIExpression()), !dbg !4813
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4811, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4763, metadata !DIExpression(), metadata !4812, metadata ptr %7, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %0, metadata !4755, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 10, metadata !4756, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %1, metadata !4757, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %2, metadata !4758, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %3, metadata !4759, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %4, metadata !4760, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %5, metadata !4761, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 0, metadata !4762, metadata !DIExpression()), !dbg !4814
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #41, !dbg !4816
  %8 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #41, !dbg !4817
  call void @llvm.dbg.value(metadata i32 %8, metadata !4765, metadata !DIExpression()), !dbg !4814
  %9 = icmp eq i32 %8, 4, !dbg !4818
  br i1 %9, label %19, label %10, !dbg !4819

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4820, !tbaa !1348
  %12 = icmp slt i64 %11, %1, !dbg !4821
  %13 = icmp sgt i64 %11, %2
  %14 = or i1 %12, %13, !dbg !4822
  br i1 %14, label %15, label %17, !dbg !4822

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 poison, metadata !4764, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 poison, metadata !4765, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 75, metadata !4767, metadata !DIExpression()), !dbg !4814
  %16 = icmp ult i32 %8, 2, !dbg !4823
  call void @llvm.dbg.value(metadata i32 undef, metadata !4768, metadata !DIExpression()), !dbg !4814
  br i1 %16, label %18, label %19, !dbg !4824

17:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !4764, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 %8, metadata !4765, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 75, metadata !4767, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i32 undef, metadata !4768, metadata !DIExpression()), !dbg !4814
  switch i32 %8, label %19 [
    i32 0, label %23
    i32 1, label %18
  ], !dbg !4825

18:                                               ; preds = %17, %15
  br label %19

19:                                               ; preds = %17, %18, %15, %6
  %20 = phi i32 [ 0, %15 ], [ 75, %18 ], [ 0, %6 ], [ 0, %17 ]
  %21 = call i32 @llvm.umax.i32(i32 %5, i32 1), !dbg !4826
  %22 = call ptr @quote(ptr noundef nonnull %0) #41, !dbg !4826
  call void (i32, i32, ptr, ...) @error(i32 noundef %21, i32 noundef %20, ptr noundef nonnull @.str.167, ptr noundef nonnull %4, ptr noundef %22) #41, !dbg !4826
  unreachable, !dbg !4826

23:                                               ; preds = %17
  %24 = tail call ptr @__errno_location() #44, !dbg !4827
  store i32 0, ptr %24, align 4, !dbg !4828, !tbaa !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #41, !dbg !4829
  ret i64 %11, !dbg !4830
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4831 {
  %6 = alloca ptr, align 8, !DIAssignID !4852
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4843, metadata !DIExpression(), metadata !4852, metadata ptr %6, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4838, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4839, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4840, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4841, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4842, metadata !DIExpression()), !dbg !4853
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #41, !dbg !4854
  %7 = icmp eq ptr %1, null, !dbg !4855
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4855
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4844, metadata !DIExpression()), !dbg !4853
  %9 = tail call ptr @__errno_location() #44, !dbg !4856
  store i32 0, ptr %9, align 4, !dbg !4857, !tbaa !1146
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #41, !dbg !4858
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4845, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4846, metadata !DIExpression()), !dbg !4853
  %11 = load ptr, ptr %8, align 8, !dbg !4859, !tbaa !1065
  %12 = icmp eq ptr %11, %0, !dbg !4861
  br i1 %12, label %13, label %22, !dbg !4862

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4863
  br i1 %14, label %490, label %15, !dbg !4866

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4867, !tbaa !1155
  %17 = icmp eq i8 %16, 0, !dbg !4867
  br i1 %17, label %490, label %18, !dbg !4868

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !4867
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #42, !dbg !4869
  %21 = icmp eq ptr %20, null, !dbg !4869
  br i1 %21, label %490, label %29, !dbg !4870

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4871, !tbaa !1146
  switch i32 %23, label %490 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4873

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4846, metadata !DIExpression()), !dbg !4853
  br label %25, !dbg !4874

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4853
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4845, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4846, metadata !DIExpression()), !dbg !4853
  %27 = icmp eq ptr %4, null, !dbg !4876
  br i1 %27, label %28, label %29, !dbg !4878

28:                                               ; preds = %25
  store i64 %10, ptr %3, align 8, !dbg !4879, !tbaa !1348
  br label %490, !dbg !4881

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4882, !tbaa !1155
  %33 = icmp eq i8 %32, 0, !dbg !4883
  br i1 %33, label %487, label %34, !dbg !4884

34:                                               ; preds = %29
  %35 = sext i8 %32 to i32, !dbg !4882
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #42, !dbg !4885
  %37 = icmp eq ptr %36, null, !dbg !4885
  br i1 %37, label %38, label %40, !dbg !4887

38:                                               ; preds = %34
  store i64 %31, ptr %3, align 8, !dbg !4888, !tbaa !1348
  %39 = or disjoint i32 %30, 2, !dbg !4890
  br label %490, !dbg !4891

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4847, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4850, metadata !DIExpression()), !dbg !4892
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
  ], !dbg !4893

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #42, !dbg !4894
  %43 = icmp eq ptr %42, null, !dbg !4894
  br i1 %43, label %53, label %44, !dbg !4897

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4898
  %46 = load i8, ptr %45, align 1, !dbg !4898, !tbaa !1155
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !4899

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4900
  %49 = load i8, ptr %48, align 1, !dbg !4900, !tbaa !1155
  %50 = icmp eq i8 %49, 66, !dbg !4903
  %51 = select i1 %50, i64 3, i64 1, !dbg !4904
  br label %53, !dbg !4904

52:                                               ; preds = %44, %44
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4847, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4850, metadata !DIExpression()), !dbg !4892
  br label %53, !dbg !4905

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ], !dbg !4892
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ], !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !4850, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !4847, metadata !DIExpression()), !dbg !4892
  switch i8 %32, label %485 [
    i8 98, label %377
    i8 66, label %385
    i8 99, label %476
    i8 69, label %334
    i8 71, label %393
    i8 103, label %393
    i8 107, label %415
    i8 75, label %415
    i8 77, label %423
    i8 109, label %423
    i8 80, label %298
    i8 81, label %227
    i8 82, label %163
    i8 84, label %438
    i8 116, label %438
    i8 119, label %467
    i8 89, label %106
    i8 90, label %56
  ], !dbg !4906

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4925
  %57 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4927
  %58 = extractvalue { i64, i1 } %57, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4925
  %59 = extractvalue { i64, i1 } %57, 0, !dbg !4929
  %60 = icmp slt i64 %31, 0, !dbg !4929
  %61 = select i1 %60, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4929
  %62 = select i1 %58, i64 %61, i64 %59, !dbg !4929
  call void @llvm.dbg.value(metadata i1 %58, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i1 %58, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4925
  %63 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 %54), !dbg !4927
  %64 = extractvalue { i64, i1 } %63, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4925
  %65 = extractvalue { i64, i1 } %63, 0, !dbg !4929
  %66 = icmp slt i64 %62, 0, !dbg !4929
  %67 = select i1 %66, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4929
  %68 = select i1 %64, i64 %67, i64 %65, !dbg !4929
  %69 = or i1 %58, %64, !dbg !4930
  call void @llvm.dbg.value(metadata i1 %69, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i1 %69, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4925
  %70 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %68, i64 %54), !dbg !4927
  %71 = extractvalue { i64, i1 } %70, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4925
  %72 = extractvalue { i64, i1 } %70, 0, !dbg !4929
  %73 = icmp slt i64 %68, 0, !dbg !4929
  %74 = select i1 %73, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4929
  %75 = select i1 %71, i64 %74, i64 %72, !dbg !4929
  %76 = or i1 %69, %71, !dbg !4930
  call void @llvm.dbg.value(metadata i1 %76, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i1 %76, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4925
  %77 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %75, i64 %54), !dbg !4927
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4925
  %79 = extractvalue { i64, i1 } %77, 0, !dbg !4929
  %80 = icmp slt i64 %75, 0, !dbg !4929
  %81 = select i1 %80, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4929
  %82 = select i1 %78, i64 %81, i64 %79, !dbg !4929
  %83 = or i1 %76, %78, !dbg !4930
  call void @llvm.dbg.value(metadata i1 %83, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i1 %83, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4925
  %84 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 %54), !dbg !4927
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4925
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !4929
  %87 = icmp slt i64 %82, 0, !dbg !4929
  %88 = select i1 %87, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4929
  %89 = select i1 %85, i64 %88, i64 %86, !dbg !4929
  %90 = or i1 %83, %85, !dbg !4930
  call void @llvm.dbg.value(metadata i1 %90, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i1 %90, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4925
  %91 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %89, i64 %54), !dbg !4927
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4925
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4929
  %94 = icmp slt i64 %89, 0, !dbg !4929
  %95 = select i1 %94, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4929
  %96 = select i1 %92, i64 %95, i64 %93, !dbg !4929
  %97 = or i1 %90, %92, !dbg !4930
  call void @llvm.dbg.value(metadata i1 %97, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i1 %97, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4915
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4925
  %98 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 %54), !dbg !4927
  %99 = extractvalue { i64, i1 } %98, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4925
  %100 = extractvalue { i64, i1 } %98, 0, !dbg !4929
  %101 = icmp slt i64 %96, 0, !dbg !4929
  %102 = select i1 %101, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4929
  %103 = select i1 %99, i64 %102, i64 %100, !dbg !4929
  %104 = or i1 %97, %99, !dbg !4930
  %105 = zext i1 %104 to i32, !dbg !4930
  call void @llvm.dbg.value(metadata i32 %105, metadata !4907, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4915
  br label %476, !dbg !4931

106:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 8, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4934
  %107 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4936
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4934
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !4937
  %110 = icmp slt i64 %31, 0, !dbg !4937
  %111 = select i1 %110, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %112 = select i1 %108, i64 %111, i64 %109, !dbg !4937
  call void @llvm.dbg.value(metadata i1 %108, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %108, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4934
  %113 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %112, i64 %54), !dbg !4936
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4934
  %115 = extractvalue { i64, i1 } %113, 0, !dbg !4937
  %116 = icmp slt i64 %112, 0, !dbg !4937
  %117 = select i1 %116, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %118 = select i1 %114, i64 %117, i64 %115, !dbg !4937
  %119 = or i1 %108, %114, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %119, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %119, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4934
  %120 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %118, i64 %54), !dbg !4936
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4934
  %122 = extractvalue { i64, i1 } %120, 0, !dbg !4937
  %123 = icmp slt i64 %118, 0, !dbg !4937
  %124 = select i1 %123, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %125 = select i1 %121, i64 %124, i64 %122, !dbg !4937
  %126 = or i1 %119, %121, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %126, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %126, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4934
  %127 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %125, i64 %54), !dbg !4936
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4934
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4937
  %130 = icmp slt i64 %125, 0, !dbg !4937
  %131 = select i1 %130, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %132 = select i1 %128, i64 %131, i64 %129, !dbg !4937
  %133 = or i1 %126, %128, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %133, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %133, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4934
  %134 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %132, i64 %54), !dbg !4936
  %135 = extractvalue { i64, i1 } %134, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4934
  %136 = extractvalue { i64, i1 } %134, 0, !dbg !4937
  %137 = icmp slt i64 %132, 0, !dbg !4937
  %138 = select i1 %137, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %139 = select i1 %135, i64 %138, i64 %136, !dbg !4937
  %140 = or i1 %133, %135, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %140, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %140, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4934
  %141 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %139, i64 %54), !dbg !4936
  %142 = extractvalue { i64, i1 } %141, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4934
  %143 = extractvalue { i64, i1 } %141, 0, !dbg !4937
  %144 = icmp slt i64 %139, 0, !dbg !4937
  %145 = select i1 %144, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %146 = select i1 %142, i64 %145, i64 %143, !dbg !4937
  %147 = or i1 %140, %142, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %147, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %147, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4934
  %148 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %146, i64 %54), !dbg !4936
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4934
  %150 = extractvalue { i64, i1 } %148, 0, !dbg !4937
  %151 = icmp slt i64 %146, 0, !dbg !4937
  %152 = select i1 %151, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %153 = select i1 %149, i64 %152, i64 %150, !dbg !4937
  %154 = or i1 %147, %149, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %154, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %154, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4934
  %155 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %153, i64 %54), !dbg !4936
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4934
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !4937
  %158 = icmp slt i64 %153, 0, !dbg !4937
  %159 = select i1 %158, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %160 = select i1 %156, i64 %159, i64 %157, !dbg !4937
  %161 = or i1 %154, %156, !dbg !4938
  %162 = zext i1 %161 to i32, !dbg !4938
  call void @llvm.dbg.value(metadata i32 %162, metadata !4907, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  br label %476, !dbg !4931

163:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 9, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 8, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %164 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4943
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %166 = extractvalue { i64, i1 } %164, 0, !dbg !4944
  %167 = icmp slt i64 %31, 0, !dbg !4944
  %168 = select i1 %167, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %169 = select i1 %165, i64 %168, i64 %166, !dbg !4944
  call void @llvm.dbg.value(metadata i1 %165, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 8, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i1 %165, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 8, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %170 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %54), !dbg !4943
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %172 = extractvalue { i64, i1 } %170, 0, !dbg !4944
  %173 = icmp slt i64 %169, 0, !dbg !4944
  %174 = select i1 %173, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %175 = select i1 %171, i64 %174, i64 %172, !dbg !4944
  %176 = or i1 %165, %171, !dbg !4945
  call void @llvm.dbg.value(metadata i1 %176, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i1 %176, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %177 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %175, i64 %54), !dbg !4943
  %178 = extractvalue { i64, i1 } %177, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %179 = extractvalue { i64, i1 } %177, 0, !dbg !4944
  %180 = icmp slt i64 %175, 0, !dbg !4944
  %181 = select i1 %180, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %182 = select i1 %178, i64 %181, i64 %179, !dbg !4944
  %183 = or i1 %176, %178, !dbg !4945
  call void @llvm.dbg.value(metadata i1 %183, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i1 %183, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %184 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %182, i64 %54), !dbg !4943
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %186 = extractvalue { i64, i1 } %184, 0, !dbg !4944
  %187 = icmp slt i64 %182, 0, !dbg !4944
  %188 = select i1 %187, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %189 = select i1 %185, i64 %188, i64 %186, !dbg !4944
  %190 = or i1 %183, %185, !dbg !4945
  call void @llvm.dbg.value(metadata i1 %190, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i1 %190, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %191 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %189, i64 %54), !dbg !4943
  %192 = extractvalue { i64, i1 } %191, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %193 = extractvalue { i64, i1 } %191, 0, !dbg !4944
  %194 = icmp slt i64 %189, 0, !dbg !4944
  %195 = select i1 %194, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %196 = select i1 %192, i64 %195, i64 %193, !dbg !4944
  %197 = or i1 %190, %192, !dbg !4945
  call void @llvm.dbg.value(metadata i1 %197, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i1 %197, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %198 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %196, i64 %54), !dbg !4943
  %199 = extractvalue { i64, i1 } %198, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %200 = extractvalue { i64, i1 } %198, 0, !dbg !4944
  %201 = icmp slt i64 %196, 0, !dbg !4944
  %202 = select i1 %201, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %203 = select i1 %199, i64 %202, i64 %200, !dbg !4944
  %204 = or i1 %197, %199, !dbg !4945
  call void @llvm.dbg.value(metadata i1 %204, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i1 %204, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %205 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %203, i64 %54), !dbg !4943
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %207 = extractvalue { i64, i1 } %205, 0, !dbg !4944
  %208 = icmp slt i64 %203, 0, !dbg !4944
  %209 = select i1 %208, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %210 = select i1 %206, i64 %209, i64 %207, !dbg !4944
  %211 = or i1 %204, %206, !dbg !4945
  call void @llvm.dbg.value(metadata i1 %211, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i1 %211, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %212 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %210, i64 %54), !dbg !4943
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !4944
  %215 = icmp slt i64 %210, 0, !dbg !4944
  %216 = select i1 %215, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %217 = select i1 %213, i64 %216, i64 %214, !dbg !4944
  %218 = or i1 %211, %213, !dbg !4945
  call void @llvm.dbg.value(metadata i1 %218, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i1 %218, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4939
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4941
  %219 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %217, i64 %54), !dbg !4943
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4941
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4944
  %222 = icmp slt i64 %217, 0, !dbg !4944
  %223 = select i1 %222, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4944
  %224 = select i1 %220, i64 %223, i64 %221, !dbg !4944
  %225 = or i1 %218, %220, !dbg !4945
  %226 = zext i1 %225 to i32, !dbg !4945
  call void @llvm.dbg.value(metadata i32 %226, metadata !4907, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4939
  br label %476, !dbg !4931

227:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 10, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 9, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %228 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4950
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %230 = extractvalue { i64, i1 } %228, 0, !dbg !4951
  %231 = icmp slt i64 %31, 0, !dbg !4951
  %232 = select i1 %231, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %233 = select i1 %229, i64 %232, i64 %230, !dbg !4951
  call void @llvm.dbg.value(metadata i1 %229, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 9, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %229, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 9, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 8, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %234 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %54), !dbg !4950
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4951
  %237 = icmp slt i64 %233, 0, !dbg !4951
  %238 = select i1 %237, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %239 = select i1 %235, i64 %238, i64 %236, !dbg !4951
  %240 = or i1 %229, %235, !dbg !4952
  call void @llvm.dbg.value(metadata i1 %240, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 8, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %240, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 8, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %241 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %239, i64 %54), !dbg !4950
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %243 = extractvalue { i64, i1 } %241, 0, !dbg !4951
  %244 = icmp slt i64 %239, 0, !dbg !4951
  %245 = select i1 %244, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %246 = select i1 %242, i64 %245, i64 %243, !dbg !4951
  %247 = or i1 %240, %242, !dbg !4952
  call void @llvm.dbg.value(metadata i1 %247, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %247, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 7, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %248 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %54), !dbg !4950
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %250 = extractvalue { i64, i1 } %248, 0, !dbg !4951
  %251 = icmp slt i64 %246, 0, !dbg !4951
  %252 = select i1 %251, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %253 = select i1 %249, i64 %252, i64 %250, !dbg !4951
  %254 = or i1 %247, %249, !dbg !4952
  call void @llvm.dbg.value(metadata i1 %254, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %254, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %255 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %253, i64 %54), !dbg !4950
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4951
  %258 = icmp slt i64 %253, 0, !dbg !4951
  %259 = select i1 %258, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %260 = select i1 %256, i64 %259, i64 %257, !dbg !4951
  %261 = or i1 %254, %256, !dbg !4952
  call void @llvm.dbg.value(metadata i1 %261, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %261, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %262 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %260, i64 %54), !dbg !4950
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %264 = extractvalue { i64, i1 } %262, 0, !dbg !4951
  %265 = icmp slt i64 %260, 0, !dbg !4951
  %266 = select i1 %265, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %267 = select i1 %263, i64 %266, i64 %264, !dbg !4951
  %268 = or i1 %261, %263, !dbg !4952
  call void @llvm.dbg.value(metadata i1 %268, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %268, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %269 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %267, i64 %54), !dbg !4950
  %270 = extractvalue { i64, i1 } %269, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %271 = extractvalue { i64, i1 } %269, 0, !dbg !4951
  %272 = icmp slt i64 %267, 0, !dbg !4951
  %273 = select i1 %272, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %274 = select i1 %270, i64 %273, i64 %271, !dbg !4951
  %275 = or i1 %268, %270, !dbg !4952
  call void @llvm.dbg.value(metadata i1 %275, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %275, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %276 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %274, i64 %54), !dbg !4950
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4951
  %279 = icmp slt i64 %274, 0, !dbg !4951
  %280 = select i1 %279, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %281 = select i1 %277, i64 %280, i64 %278, !dbg !4951
  %282 = or i1 %275, %277, !dbg !4952
  call void @llvm.dbg.value(metadata i1 %282, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %282, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %283 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %54), !dbg !4950
  %284 = extractvalue { i64, i1 } %283, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %285 = extractvalue { i64, i1 } %283, 0, !dbg !4951
  %286 = icmp slt i64 %281, 0, !dbg !4951
  %287 = select i1 %286, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %288 = select i1 %284, i64 %287, i64 %285, !dbg !4951
  %289 = or i1 %282, %284, !dbg !4952
  call void @llvm.dbg.value(metadata i1 %289, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i1 %289, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4946
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4948
  %290 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %288, i64 %54), !dbg !4950
  %291 = extractvalue { i64, i1 } %290, 1, !dbg !4950
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4948
  %292 = extractvalue { i64, i1 } %290, 0, !dbg !4951
  %293 = icmp slt i64 %288, 0, !dbg !4951
  %294 = select i1 %293, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4951
  %295 = select i1 %291, i64 %294, i64 %292, !dbg !4951
  %296 = or i1 %289, %291, !dbg !4952
  %297 = zext i1 %296 to i32, !dbg !4952
  call void @llvm.dbg.value(metadata i32 %297, metadata !4907, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4946
  br label %476, !dbg !4931

298:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4955
  %299 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4957
  %300 = extractvalue { i64, i1 } %299, 1, !dbg !4957
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4955
  %301 = extractvalue { i64, i1 } %299, 0, !dbg !4958
  %302 = icmp slt i64 %31, 0, !dbg !4958
  %303 = select i1 %302, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4958
  %304 = select i1 %300, i64 %303, i64 %301, !dbg !4958
  call void @llvm.dbg.value(metadata i1 %300, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i1 %300, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4955
  %305 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %304, i64 %54), !dbg !4957
  %306 = extractvalue { i64, i1 } %305, 1, !dbg !4957
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4955
  %307 = extractvalue { i64, i1 } %305, 0, !dbg !4958
  %308 = icmp slt i64 %304, 0, !dbg !4958
  %309 = select i1 %308, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4958
  %310 = select i1 %306, i64 %309, i64 %307, !dbg !4958
  %311 = or i1 %300, %306, !dbg !4959
  call void @llvm.dbg.value(metadata i1 %311, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i1 %311, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4955
  %312 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %54), !dbg !4957
  %313 = extractvalue { i64, i1 } %312, 1, !dbg !4957
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4955
  %314 = extractvalue { i64, i1 } %312, 0, !dbg !4958
  %315 = icmp slt i64 %310, 0, !dbg !4958
  %316 = select i1 %315, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4958
  %317 = select i1 %313, i64 %316, i64 %314, !dbg !4958
  %318 = or i1 %311, %313, !dbg !4959
  call void @llvm.dbg.value(metadata i1 %318, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i1 %318, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4955
  %319 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %317, i64 %54), !dbg !4957
  %320 = extractvalue { i64, i1 } %319, 1, !dbg !4957
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4955
  %321 = extractvalue { i64, i1 } %319, 0, !dbg !4958
  %322 = icmp slt i64 %317, 0, !dbg !4958
  %323 = select i1 %322, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4958
  %324 = select i1 %320, i64 %323, i64 %321, !dbg !4958
  %325 = or i1 %318, %320, !dbg !4959
  call void @llvm.dbg.value(metadata i1 %325, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i1 %325, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4953
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4955
  %326 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %324, i64 %54), !dbg !4957
  %327 = extractvalue { i64, i1 } %326, 1, !dbg !4957
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4955
  %328 = extractvalue { i64, i1 } %326, 0, !dbg !4958
  %329 = icmp slt i64 %324, 0, !dbg !4958
  %330 = select i1 %329, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4958
  %331 = select i1 %327, i64 %330, i64 %328, !dbg !4958
  %332 = or i1 %325, %327, !dbg !4959
  %333 = zext i1 %332 to i32, !dbg !4959
  call void @llvm.dbg.value(metadata i32 %333, metadata !4907, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4953
  br label %476, !dbg !4931

334:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 6, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4962
  %335 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4964
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4964
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4962
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4965
  %338 = icmp slt i64 %31, 0, !dbg !4965
  %339 = select i1 %338, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4965
  %340 = select i1 %336, i64 %339, i64 %337, !dbg !4965
  call void @llvm.dbg.value(metadata i1 %336, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i1 %336, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 5, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4962
  %341 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %340, i64 %54), !dbg !4964
  %342 = extractvalue { i64, i1 } %341, 1, !dbg !4964
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4962
  %343 = extractvalue { i64, i1 } %341, 0, !dbg !4965
  %344 = icmp slt i64 %340, 0, !dbg !4965
  %345 = select i1 %344, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4965
  %346 = select i1 %342, i64 %345, i64 %343, !dbg !4965
  %347 = or i1 %336, %342, !dbg !4966
  call void @llvm.dbg.value(metadata i1 %347, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i1 %347, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4962
  %348 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %346, i64 %54), !dbg !4964
  %349 = extractvalue { i64, i1 } %348, 1, !dbg !4964
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4962
  %350 = extractvalue { i64, i1 } %348, 0, !dbg !4965
  %351 = icmp slt i64 %346, 0, !dbg !4965
  %352 = select i1 %351, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4965
  %353 = select i1 %349, i64 %352, i64 %350, !dbg !4965
  %354 = or i1 %347, %349, !dbg !4966
  call void @llvm.dbg.value(metadata i1 %354, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i1 %354, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4962
  %355 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %353, i64 %54), !dbg !4964
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4964
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4962
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4965
  %358 = icmp slt i64 %353, 0, !dbg !4965
  %359 = select i1 %358, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4965
  %360 = select i1 %356, i64 %359, i64 %357, !dbg !4965
  %361 = or i1 %354, %356, !dbg !4966
  call void @llvm.dbg.value(metadata i1 %361, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i1 %361, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4962
  %362 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %360, i64 %54), !dbg !4964
  %363 = extractvalue { i64, i1 } %362, 1, !dbg !4964
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4962
  %364 = extractvalue { i64, i1 } %362, 0, !dbg !4965
  %365 = icmp slt i64 %360, 0, !dbg !4965
  %366 = select i1 %365, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4965
  %367 = select i1 %363, i64 %366, i64 %364, !dbg !4965
  %368 = or i1 %361, %363, !dbg !4966
  call void @llvm.dbg.value(metadata i1 %368, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i1 %368, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4960
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4962
  %369 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %367, i64 %54), !dbg !4964
  %370 = extractvalue { i64, i1 } %369, 1, !dbg !4964
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4962
  %371 = extractvalue { i64, i1 } %369, 0, !dbg !4965
  %372 = icmp slt i64 %367, 0, !dbg !4965
  %373 = select i1 %372, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4965
  %374 = select i1 %370, i64 %373, i64 %371, !dbg !4965
  %375 = or i1 %368, %370, !dbg !4966
  %376 = zext i1 %375 to i32, !dbg !4966
  call void @llvm.dbg.value(metadata i32 %376, metadata !4907, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4960
  br label %476, !dbg !4931

377:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i32 512, metadata !4923, metadata !DIExpression()), !dbg !4967
  %378 = add i64 %31, -18014398509481984, !dbg !4969
  %379 = icmp ult i64 %378, -36028797018963968, !dbg !4969
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4967
  %380 = shl i64 %31, 9, !dbg !4970
  %381 = icmp slt i64 %31, 0, !dbg !4970
  %382 = select i1 %381, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4970
  %383 = select i1 %379, i64 %382, i64 %380, !dbg !4970
  %384 = zext i1 %379 to i32, !dbg !4970
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !4845, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !4851, metadata !DIExpression()), !dbg !4892
  br label %476, !dbg !4971

385:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata i32 1024, metadata !4923, metadata !DIExpression()), !dbg !4972
  %386 = add i64 %31, -9007199254740992, !dbg !4974
  %387 = icmp ult i64 %386, -18014398509481984, !dbg !4974
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4972
  %388 = shl i64 %31, 10, !dbg !4975
  %389 = icmp slt i64 %31, 0, !dbg !4975
  %390 = select i1 %389, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4975
  %391 = select i1 %387, i64 %390, i64 %388, !dbg !4975
  %392 = zext i1 %387 to i32, !dbg !4975
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !4845, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 %392, metadata !4851, metadata !DIExpression()), !dbg !4892
  br label %476, !dbg !4976

393:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4912, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 %54, metadata !4913, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4977
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4979
  %394 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4981
  %395 = extractvalue { i64, i1 } %394, 1, !dbg !4981
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4979
  %396 = extractvalue { i64, i1 } %394, 0, !dbg !4982
  %397 = icmp slt i64 %31, 0, !dbg !4982
  %398 = select i1 %397, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4982
  %399 = select i1 %395, i64 %398, i64 %396, !dbg !4982
  call void @llvm.dbg.value(metadata i1 %395, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4977
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4977
  call void @llvm.dbg.value(metadata i1 %395, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4977
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4979
  %400 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %399, i64 %54), !dbg !4981
  %401 = extractvalue { i64, i1 } %400, 1, !dbg !4981
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4979
  %402 = extractvalue { i64, i1 } %400, 0, !dbg !4982
  %403 = icmp slt i64 %399, 0, !dbg !4982
  %404 = select i1 %403, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4982
  %405 = select i1 %401, i64 %404, i64 %402, !dbg !4982
  %406 = or i1 %395, %401, !dbg !4983
  call void @llvm.dbg.value(metadata i1 %406, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4977
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4977
  call void @llvm.dbg.value(metadata i1 %406, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4977
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4979
  %407 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %405, i64 %54), !dbg !4981
  %408 = extractvalue { i64, i1 } %407, 1, !dbg !4981
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4979
  %409 = extractvalue { i64, i1 } %407, 0, !dbg !4982
  %410 = icmp slt i64 %405, 0, !dbg !4982
  %411 = select i1 %410, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4982
  %412 = select i1 %408, i64 %411, i64 %409, !dbg !4982
  %413 = or i1 %406, %408, !dbg !4983
  %414 = zext i1 %413 to i32, !dbg !4983
  call void @llvm.dbg.value(metadata i32 %414, metadata !4907, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4977
  br label %476, !dbg !4931

415:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4912, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i64 %54, metadata !4913, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4984
  %416 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4986
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !4986
  %418 = icmp slt i64 %31, 0, !dbg !4988
  %419 = select i1 %418, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4988
  %420 = extractvalue { i64, i1 } %416, 0, !dbg !4988
  %421 = select i1 %417, i64 %419, i64 %420, !dbg !4988
  %422 = zext i1 %417 to i32, !dbg !4988
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4989
  br label %476, !dbg !4931

423:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4912, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i64 %54, metadata !4913, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4990
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4992
  %424 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4994
  %425 = extractvalue { i64, i1 } %424, 1, !dbg !4994
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4992
  %426 = extractvalue { i64, i1 } %424, 0, !dbg !4995
  %427 = icmp slt i64 %31, 0, !dbg !4995
  %428 = select i1 %427, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4995
  %429 = select i1 %425, i64 %428, i64 %426, !dbg !4995
  call void @llvm.dbg.value(metadata i1 %425, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4990
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4990
  call void @llvm.dbg.value(metadata i1 %425, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4990
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4992
  %430 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %429, i64 %54), !dbg !4994
  %431 = extractvalue { i64, i1 } %430, 1, !dbg !4994
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4992
  %432 = extractvalue { i64, i1 } %430, 0, !dbg !4995
  %433 = icmp slt i64 %429, 0, !dbg !4995
  %434 = select i1 %433, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4995
  %435 = select i1 %431, i64 %434, i64 %432, !dbg !4995
  %436 = or i1 %425, %431, !dbg !4996
  %437 = zext i1 %436 to i32, !dbg !4996
  call void @llvm.dbg.value(metadata i32 %437, metadata !4907, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4990
  br label %476, !dbg !4931

438:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4912, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i64 %54, metadata !4913, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i32 4, metadata !4914, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4999
  %439 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !5001
  %440 = extractvalue { i64, i1 } %439, 1, !dbg !5001
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4999
  %441 = extractvalue { i64, i1 } %439, 0, !dbg !5002
  %442 = icmp slt i64 %31, 0, !dbg !5002
  %443 = select i1 %442, i64 -9223372036854775808, i64 9223372036854775807, !dbg !5002
  %444 = select i1 %440, i64 %443, i64 %441, !dbg !5002
  call void @llvm.dbg.value(metadata i1 %440, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i1 %440, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i32 3, metadata !4914, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4999
  %445 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %444, i64 %54), !dbg !5001
  %446 = extractvalue { i64, i1 } %445, 1, !dbg !5001
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4999
  %447 = extractvalue { i64, i1 } %445, 0, !dbg !5002
  %448 = icmp slt i64 %444, 0, !dbg !5002
  %449 = select i1 %448, i64 -9223372036854775808, i64 9223372036854775807, !dbg !5002
  %450 = select i1 %446, i64 %449, i64 %447, !dbg !5002
  %451 = or i1 %440, %446, !dbg !5003
  call void @llvm.dbg.value(metadata i1 %451, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i1 %451, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i32 2, metadata !4914, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4999
  %452 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %450, i64 %54), !dbg !5001
  %453 = extractvalue { i64, i1 } %452, 1, !dbg !5001
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4999
  %454 = extractvalue { i64, i1 } %452, 0, !dbg !5002
  %455 = icmp slt i64 %450, 0, !dbg !5002
  %456 = select i1 %455, i64 -9223372036854775808, i64 9223372036854775807, !dbg !5002
  %457 = select i1 %453, i64 %456, i64 %454, !dbg !5002
  %458 = or i1 %451, %453, !dbg !5003
  call void @llvm.dbg.value(metadata i1 %458, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i1 %458, metadata !4907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4997
  call void @llvm.dbg.value(metadata i32 1, metadata !4914, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.value(metadata i64 %54, metadata !4923, metadata !DIExpression()), !dbg !4999
  %459 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %457, i64 %54), !dbg !5001
  %460 = extractvalue { i64, i1 } %459, 1, !dbg !5001
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !4999
  %461 = extractvalue { i64, i1 } %459, 0, !dbg !5002
  %462 = icmp slt i64 %457, 0, !dbg !5002
  %463 = select i1 %462, i64 -9223372036854775808, i64 9223372036854775807, !dbg !5002
  %464 = select i1 %460, i64 %463, i64 %461, !dbg !5002
  %465 = or i1 %458, %460, !dbg !5003
  %466 = zext i1 %465 to i32, !dbg !5003
  call void @llvm.dbg.value(metadata i32 %466, metadata !4907, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i32 0, metadata !4914, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4997
  br label %476, !dbg !4931

467:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4918, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.value(metadata i32 2, metadata !4923, metadata !DIExpression()), !dbg !5004
  %468 = add i64 %31, 4611686018427387904, !dbg !5006
  %469 = icmp slt i64 %468, 0, !dbg !5006
  call void @llvm.dbg.value(metadata i64 poison, metadata !4924, metadata !DIExpression()), !dbg !5004
  %470 = shl i64 %31, 1, !dbg !5007
  %471 = icmp slt i64 %31, 0, !dbg !5007
  %472 = select i1 %471, i64 -9223372036854775808, i64 9223372036854775807, !dbg !5007
  %473 = select i1 %469, i64 %472, i64 %470, !dbg !5007
  %474 = lshr i64 %468, 63, !dbg !5007
  %475 = trunc i64 %474 to i32, !dbg !5007
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !4845, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 %475, metadata !4851, metadata !DIExpression()), !dbg !4892
  br label %476, !dbg !5008

476:                                              ; preds = %56, %106, %438, %163, %227, %298, %423, %415, %393, %334, %377, %385, %467, %53
  %477 = phi i64 [ %473, %467 ], [ %31, %53 ], [ %391, %385 ], [ %383, %377 ], [ %374, %334 ], [ %412, %393 ], [ %421, %415 ], [ %435, %423 ], [ %331, %298 ], [ %295, %227 ], [ %224, %163 ], [ %464, %438 ], [ %160, %106 ], [ %103, %56 ], !dbg !4853
  %478 = phi i32 [ %475, %467 ], [ 0, %53 ], [ %392, %385 ], [ %384, %377 ], [ %376, %334 ], [ %414, %393 ], [ %422, %415 ], [ %437, %423 ], [ %333, %298 ], [ %297, %227 ], [ %226, %163 ], [ %466, %438 ], [ %162, %106 ], [ %105, %56 ], !dbg !5009
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !4845, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !4851, metadata !DIExpression()), !dbg !4892
  %479 = or i32 %478, %30, !dbg !4931
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !4846, metadata !DIExpression()), !dbg !4853
  %480 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !5010
  store ptr %480, ptr %8, align 8, !dbg !5010, !tbaa !1065
  %481 = load i8, ptr %480, align 1, !dbg !5011, !tbaa !1155
  %482 = icmp eq i8 %481, 0, !dbg !5011
  %483 = or disjoint i32 %479, 2
  %484 = select i1 %482, i32 %479, i32 %483, !dbg !5013
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !4846, metadata !DIExpression()), !dbg !4853
  br label %487

485:                                              ; preds = %53
  store i64 %31, ptr %3, align 8, !dbg !5014, !tbaa !1348
  %486 = or disjoint i32 %30, 2, !dbg !5015
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !4845, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !4846, metadata !DIExpression()), !dbg !4853
  br label %490

487:                                              ; preds = %476, %29
  %488 = phi i64 [ %31, %29 ], [ %477, %476 ], !dbg !5016
  %489 = phi i32 [ %30, %29 ], [ %484, %476 ], !dbg !5017
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !4845, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !4846, metadata !DIExpression()), !dbg !4853
  store i64 %488, ptr %3, align 8, !dbg !5018, !tbaa !1348
  br label %490, !dbg !5019

490:                                              ; preds = %485, %22, %13, %15, %18, %487, %38, %28
  %491 = phi i32 [ %489, %487 ], [ %486, %485 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4853
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #41, !dbg !5020
  ret i32 %491, !dbg !5020
}

; Function Attrs: nounwind
declare !dbg !5021 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !5026 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !5088
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5069, metadata !DIExpression(), metadata !5088, metadata ptr %3, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5064, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5065, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5066, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5067, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata i8 0, metadata !5068, metadata !DIExpression()), !dbg !5089
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #41, !dbg !5090
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5073, metadata !DIExpression()), !dbg !5091
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5075, metadata !DIExpression()), !dbg !5091
  br label %4, !dbg !5092

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !5089
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !5091
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !5089
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !5093
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !5094
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !5066, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !5067, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5075, metadata !DIExpression()), !dbg !5091
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5073, metadata !DIExpression()), !dbg !5091
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !5068, metadata !DIExpression()), !dbg !5089
  %11 = load i8, ptr %6, align 1, !dbg !5094, !tbaa !1155
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !5095

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5066, metadata !DIExpression()), !dbg !5089
  %13 = icmp slt i64 %7, 80, !dbg !5096
  br i1 %13, label %14, label %43, !dbg !5099

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !5100
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !5075, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5091
  store i8 114, ptr %10, align 1, !dbg !5101, !tbaa !1155
  br label %43, !dbg !5102

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !5066, metadata !DIExpression()), !dbg !5089
  %17 = or i32 %8, 576, !dbg !5103
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !5067, metadata !DIExpression()), !dbg !5089
  %18 = icmp slt i64 %7, 80, !dbg !5104
  br i1 %18, label %19, label %43, !dbg !5106

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !5107
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !5075, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5091
  store i8 119, ptr %10, align 1, !dbg !5108, !tbaa !1155
  br label %43, !dbg !5109

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !5066, metadata !DIExpression()), !dbg !5089
  %22 = or i32 %8, 1088, !dbg !5110
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !5067, metadata !DIExpression()), !dbg !5089
  %23 = icmp slt i64 %7, 80, !dbg !5111
  br i1 %23, label %24, label %43, !dbg !5113

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5114
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !5075, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5091
  store i8 97, ptr %10, align 1, !dbg !5115, !tbaa !1155
  br label %43, !dbg !5116

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !5067, metadata !DIExpression()), !dbg !5089
  %27 = icmp slt i64 %7, 80, !dbg !5117
  br i1 %27, label %28, label %43, !dbg !5119

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5120
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5075, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5091
  store i8 98, ptr %10, align 1, !dbg !5121, !tbaa !1155
  br label %43, !dbg !5122

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !5066, metadata !DIExpression()), !dbg !5089
  %31 = icmp slt i64 %7, 80, !dbg !5123
  br i1 %31, label %32, label %43, !dbg !5125

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5126
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5075, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5091
  store i8 43, ptr %10, align 1, !dbg !5127, !tbaa !1155
  br label %43, !dbg !5128

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5129
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !5067, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata i8 1, metadata !5068, metadata !DIExpression()), !dbg !5089
  br label %43, !dbg !5130

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5131
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !5067, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata i8 1, metadata !5068, metadata !DIExpression()), !dbg !5089
  br label %43, !dbg !5132

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #42, !dbg !5133
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !5076, metadata !DIExpression()), !dbg !5134
  %40 = sub nsw i64 80, %7, !dbg !5135
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5137
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !5076, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.value(metadata ptr %10, metadata !5138, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata ptr %6, metadata !5141, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata i64 %41, metadata !5142, metadata !DIExpression()), !dbg !5143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #41, !dbg !5145
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !5075, metadata !DIExpression()), !dbg !5091
  br label %49, !dbg !5147

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !5089
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !5089
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !5089
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !5066, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !5067, metadata !DIExpression()), !dbg !5089
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !5075, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5091
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !5068, metadata !DIExpression()), !dbg !5089
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5148
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !5073, metadata !DIExpression()), !dbg !5091
  br label %4, !dbg !5149, !llvm.loop !5150

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !5091
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !5075, metadata !DIExpression()), !dbg !5091
  store i8 0, ptr %50, align 1, !dbg !5152, !tbaa !1155
  %51 = and i8 %5, 1, !dbg !5153
  %52 = icmp eq i8 %51, 0, !dbg !5153
  br i1 %52, label %64, label %53, !dbg !5154

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !5155
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #41, !dbg !5156
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !5081, metadata !DIExpression()), !dbg !5157
  %56 = icmp slt i32 %55, 0, !dbg !5158
  br i1 %56, label %66, label %57, !dbg !5160

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #41, !dbg !5161
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !5084, metadata !DIExpression()), !dbg !5157
  %59 = icmp eq ptr %58, null, !dbg !5162
  br i1 %59, label %60, label %66, !dbg !5163

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #44, !dbg !5164
  %62 = load i32, ptr %61, align 4, !dbg !5164, !tbaa !1146
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !5085, metadata !DIExpression()), !dbg !5165
  %63 = tail call i32 @close(i32 noundef %55) #41, !dbg !5166
  store i32 %62, ptr %61, align 4, !dbg !5167, !tbaa !1146
  br label %66, !dbg !5168

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5169, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.value(metadata ptr %1, metadata !5172, metadata !DIExpression()), !dbg !5173
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5175
  br label %66, !dbg !5176

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !5089
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #41, !dbg !5177
  ret ptr %67, !dbg !5177
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5178 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #38

; Function Attrs: nofree nounwind
declare !dbg !5181 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5184 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5185 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5188 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5226, metadata !DIExpression()), !dbg !5231
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !5232
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5227, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5231
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5233, metadata !DIExpression()), !dbg !5236
  %3 = load i32, ptr %0, align 8, !dbg !5238, !tbaa !1895
  %4 = and i32 %3, 32, !dbg !5239
  %5 = icmp eq i32 %4, 0, !dbg !5239
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5229, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5231
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !5240
  %7 = icmp eq i32 %6, 0, !dbg !5241
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5231
  br i1 %5, label %8, label %18, !dbg !5242

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5244
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5227, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5231
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5245
  %11 = xor i1 %7, true, !dbg !5245
  %12 = sext i1 %11 to i32, !dbg !5245
  br i1 %10, label %21, label %13, !dbg !5245

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !5246
  %15 = load i32, ptr %14, align 4, !dbg !5246, !tbaa !1146
  %16 = icmp ne i32 %15, 9, !dbg !5247
  %17 = sext i1 %16 to i32, !dbg !5248
  br label %21, !dbg !5248

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5249

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !5251
  store i32 0, ptr %20, align 4, !dbg !5253, !tbaa !1146
  br label %21, !dbg !5251

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5231
  ret i32 %22, !dbg !5254
}

; Function Attrs: nounwind
declare !dbg !5255 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5258 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5263, metadata !DIExpression()), !dbg !5268
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5264, metadata !DIExpression()), !dbg !5268
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5265, metadata !DIExpression()), !dbg !5268
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5266, metadata !DIExpression()), !dbg !5268
  %5 = icmp eq ptr %1, null, !dbg !5269
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5271
  %7 = select i1 %5, ptr @.str.178, ptr %1, !dbg !5271
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5271
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5265, metadata !DIExpression()), !dbg !5268
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5264, metadata !DIExpression()), !dbg !5268
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5263, metadata !DIExpression()), !dbg !5268
  %9 = icmp eq ptr %3, null, !dbg !5272
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5274
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5266, metadata !DIExpression()), !dbg !5268
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !5275
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5267, metadata !DIExpression()), !dbg !5268
  %12 = icmp ult i64 %11, -3, !dbg !5276
  br i1 %12, label %13, label %17, !dbg !5278

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !5279
  %15 = icmp eq i32 %14, 0, !dbg !5279
  br i1 %15, label %16, label %29, !dbg !5280

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5281, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.value(metadata ptr %10, metadata !5288, metadata !DIExpression()), !dbg !5293
  call void @llvm.dbg.value(metadata i32 0, metadata !5291, metadata !DIExpression()), !dbg !5293
  call void @llvm.dbg.value(metadata i64 8, metadata !5292, metadata !DIExpression()), !dbg !5293
  store i64 0, ptr %10, align 1, !dbg !5295
  br label %29, !dbg !5296

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5297
  br i1 %18, label %19, label %20, !dbg !5299

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !5300
  unreachable, !dbg !5300

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5301

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #41, !dbg !5303
  br i1 %23, label %29, label %24, !dbg !5304

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5305
  br i1 %25, label %29, label %26, !dbg !5308

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5309, !tbaa !1155
  %28 = zext i8 %27 to i32, !dbg !5310
  store i32 %28, ptr %6, align 4, !dbg !5311, !tbaa !1146
  br label %29, !dbg !5312

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5268
  ret i64 %30, !dbg !5313
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5314 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5320 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5322, metadata !DIExpression()), !dbg !5326
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5323, metadata !DIExpression()), !dbg !5326
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5324, metadata !DIExpression()), !dbg !5326
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5327
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5327
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5325, metadata !DIExpression()), !dbg !5326
  br i1 %5, label %6, label %8, !dbg !5329

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !5330
  store i32 12, ptr %7, align 4, !dbg !5332, !tbaa !1146
  br label %12, !dbg !5333

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5327
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5325, metadata !DIExpression()), !dbg !5326
  call void @llvm.dbg.value(metadata ptr %0, metadata !5334, metadata !DIExpression()), !dbg !5338
  call void @llvm.dbg.value(metadata i64 %9, metadata !5337, metadata !DIExpression()), !dbg !5338
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5340
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #48, !dbg !5341
  br label %12, !dbg !5342

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5326
  ret ptr %13, !dbg !5343
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5344 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5353
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5349, metadata !DIExpression(), metadata !5353, metadata ptr %2, metadata !DIExpression()), !dbg !5354
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5348, metadata !DIExpression()), !dbg !5354
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !5355
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !5356
  %4 = icmp eq i32 %3, 0, !dbg !5356
  br i1 %4, label %5, label %12, !dbg !5358

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5359, metadata !DIExpression()), !dbg !5363
  call void @llvm.dbg.value(metadata !1113, metadata !5362, metadata !DIExpression()), !dbg !5363
  %6 = load i16, ptr %2, align 16, !dbg !5366
  %7 = icmp eq i16 %6, 67, !dbg !5366
  br i1 %7, label %11, label %8, !dbg !5367

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5359, metadata !DIExpression()), !dbg !5368
  call void @llvm.dbg.value(metadata ptr @.str.1.183, metadata !5362, metadata !DIExpression()), !dbg !5368
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.183, i64 6), !dbg !5370
  %10 = icmp eq i32 %9, 0, !dbg !5371
  br i1 %10, label %11, label %12, !dbg !5372

11:                                               ; preds = %8, %5
  br label %12, !dbg !5373

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5354
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !5374
  ret i1 %13, !dbg !5374
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5375 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5379, metadata !DIExpression()), !dbg !5382
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5380, metadata !DIExpression()), !dbg !5382
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5381, metadata !DIExpression()), !dbg !5382
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !5383
  ret i32 %4, !dbg !5384
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5385 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5389, metadata !DIExpression()), !dbg !5390
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !5391
  ret ptr %2, !dbg !5392
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5393 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5395, metadata !DIExpression()), !dbg !5397
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5398
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5396, metadata !DIExpression()), !dbg !5397
  ret ptr %2, !dbg !5399
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5400 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5402, metadata !DIExpression()), !dbg !5409
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5403, metadata !DIExpression()), !dbg !5409
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5404, metadata !DIExpression()), !dbg !5409
  call void @llvm.dbg.value(metadata i32 %0, metadata !5395, metadata !DIExpression()), !dbg !5410
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5412
  call void @llvm.dbg.value(metadata ptr %4, metadata !5396, metadata !DIExpression()), !dbg !5410
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5405, metadata !DIExpression()), !dbg !5409
  %5 = icmp eq ptr %4, null, !dbg !5413
  br i1 %5, label %6, label %9, !dbg !5414

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5415
  br i1 %7, label %19, label %8, !dbg !5418

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5419, !tbaa !1155
  br label %19, !dbg !5420

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !5421
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5406, metadata !DIExpression()), !dbg !5422
  %11 = icmp ult i64 %10, %2, !dbg !5423
  br i1 %11, label %12, label %14, !dbg !5425

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5426
  call void @llvm.dbg.value(metadata ptr %1, metadata !5428, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.value(metadata ptr %4, metadata !5431, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.value(metadata i64 %13, metadata !5432, metadata !DIExpression()), !dbg !5433
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !5435
  br label %19, !dbg !5436

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5437
  br i1 %15, label %19, label %16, !dbg !5440

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5441
  call void @llvm.dbg.value(metadata ptr %1, metadata !5428, metadata !DIExpression()), !dbg !5443
  call void @llvm.dbg.value(metadata ptr %4, metadata !5431, metadata !DIExpression()), !dbg !5443
  call void @llvm.dbg.value(metadata i64 %17, metadata !5432, metadata !DIExpression()), !dbg !5443
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5445
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5446
  store i8 0, ptr %18, align 1, !dbg !5447, !tbaa !1155
  br label %19, !dbg !5448

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5449
  ret i32 %20, !dbg !5450
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
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(1) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!106, !632, !636, !651, !917, !952, !957, !959, !962, !964, !966, !968, !697, !711, !759, !971, !909, !977, !1010, !1012, !1026, !1032, !1034, !936, !1036, !1038, !1042, !1044}
!llvm.ident = !{!1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046, !1046}
!llvm.module.flags = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053}

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
!105 = distinct !DIGlobalVariable(name: "longopts", scope: !106, file: !2, line: 154, type: !614, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/nl.o -MD -MP -MF src/.deps/nl.Tpo -c src/nl.c -o src/.nl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !176, globals: !186, splitDebugInlining: false, nameTableKind: None)
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
!176 = !{!177, !178, !118, !179, !180, !183, !185}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 18, baseType: !182)
!181 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!185 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !{!0, !7, !12, !17, !22, !27, !29, !34, !36, !38, !43, !48, !50, !52, !57, !62, !67, !69, !74, !79, !84, !89, !94, !99, !187, !192, !194, !196, !201, !206, !208, !213, !215, !217, !219, !224, !229, !234, !236, !241, !243, !245, !269, !271, !273, !278, !280, !282, !284, !286, !288, !290, !303, !309, !312, !317, !319, !399, !404, !406, !411, !416, !418, !420, !422, !424, !426, !428, !430, !435, !440, !442, !444, !446, !448, !450, !452, !457, !462, !467, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !495, !500, !505, !507, !509, !511, !516, !518, !520, !522, !524, !529, !531, !536, !538, !104, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !569, !571, !574, !576, !578, !583, !585, !587, !589, !591, !594, !596, !598, !608, !610, !612}
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 35)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 529, type: !9, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !189, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 29)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 30)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 556, type: !189, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 32)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !19, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !19, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !19, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 34)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 591, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 14)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !231, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 16)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 643, type: !226, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "current_type", scope: !106, file: !2, line: 75, type: !183, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "body_regex", scope: !106, file: !2, line: 78, type: !247, isLocal: true, isDefinition: true)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !248, line: 413, size: 512, elements: !249)
!248 = !DIFile(filename: "./lib/regex.h", directory: "/src", checksumkind: CSK_MD5, checksum: "fbbb1db427db36bb03cde72fd2b4622e")
!249 = !{!250, !253, !255, !256, !258, !259, !261, !262, !263, !264, !265, !266, !267, !268}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !247, file: !248, line: 417, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !248, line: 417, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !247, file: !248, line: 420, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !248, line: 56, baseType: !182)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !247, file: !248, line: 423, baseType: !254, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !247, file: !248, line: 426, baseType: !257, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !248, line: 71, baseType: !182)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !247, file: !248, line: 431, baseType: !177, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !247, file: !248, line: 437, baseType: !260, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !247, file: !248, line: 440, baseType: !180, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !247, file: !248, line: 446, baseType: !110, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !247, file: !248, line: 457, baseType: !110, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !247, file: !248, line: 461, baseType: !110, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !247, file: !248, line: 465, baseType: !110, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !247, file: !248, line: 469, baseType: !110, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !247, file: !248, line: 472, baseType: !110, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !247, file: !248, line: 475, baseType: !110, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "header_regex", scope: !106, file: !2, line: 81, type: !247, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "footer_regex", scope: !106, file: !2, line: 84, type: !247, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "body_fastmap", scope: !106, file: !2, line: 87, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 256)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "header_fastmap", scope: !106, file: !2, line: 88, type: !275, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "footer_fastmap", scope: !106, file: !2, line: 89, type: !275, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "section_del_len", scope: !106, file: !2, line: 101, type: !180, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "header_del_len", scope: !106, file: !2, line: 107, type: !180, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "body_del_len", scope: !106, file: !2, line: 113, type: !180, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "footer_del_len", scope: !106, file: !2, line: 119, type: !180, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "line_buf", scope: !106, file: !2, line: 122, type: !292, isLocal: true, isDefinition: true)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !293, line: 32, size: 192, elements: !294)
!293 = !DIFile(filename: "./lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!294 = !{!295, !301, !302}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !292, file: !293, line: 34, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !297, line: 130, baseType: !298)
!297 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !299, line: 18, baseType: !300)
!299 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!300 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !292, file: !293, line: 35, baseType: !296, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !292, file: !293, line: 36, baseType: !177, size: 64, offset: 128)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "line_no", scope: !106, file: !2, line: 146, type: !305, isLocal: true, isDefinition: true)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !306, line: 101, baseType: !307)
!306 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !308, line: 72, baseType: !300)
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !106, file: !2, line: 152, type: !311, isLocal: true, isDefinition: true)
!311 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !117, line: 729, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 56)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !117, line: 736, type: !45, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !321, file: !117, line: 575, type: !118, isLocal: true, isDefinition: true)
!321 = distinct !DISubprogram(name: "oputs_", scope: !117, file: !117, line: 573, type: !322, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !324)
!322 = !DISubroutineType(cc: DW_CC_nocall, types: !323)
!323 = !{null, !183, !183}
!324 = !{!325, !326, !327, !330, !331, !332, !333, !337, !338, !339, !340, !342, !393, !394, !395, !397, !398}
!325 = !DILocalVariable(name: "program", arg: 1, scope: !321, file: !117, line: 573, type: !183)
!326 = !DILocalVariable(name: "option", arg: 2, scope: !321, file: !117, line: 573, type: !183)
!327 = !DILocalVariable(name: "term", scope: !328, file: !117, line: 585, type: !183)
!328 = distinct !DILexicalBlock(scope: !329, file: !117, line: 582, column: 5)
!329 = distinct !DILexicalBlock(scope: !321, file: !117, line: 581, column: 7)
!330 = !DILocalVariable(name: "double_space", scope: !321, file: !117, line: 594, type: !311)
!331 = !DILocalVariable(name: "first_word", scope: !321, file: !117, line: 595, type: !183)
!332 = !DILocalVariable(name: "option_text", scope: !321, file: !117, line: 596, type: !183)
!333 = !DILocalVariable(name: "s", scope: !334, file: !117, line: 608, type: !183)
!334 = distinct !DILexicalBlock(scope: !335, file: !117, line: 605, column: 5)
!335 = distinct !DILexicalBlock(scope: !336, file: !117, line: 604, column: 12)
!336 = distinct !DILexicalBlock(scope: !321, file: !117, line: 597, column: 7)
!337 = !DILocalVariable(name: "spaces", scope: !334, file: !117, line: 609, type: !180)
!338 = !DILocalVariable(name: "anchor_len", scope: !321, file: !117, line: 620, type: !180)
!339 = !DILocalVariable(name: "desc_text", scope: !321, file: !117, line: 625, type: !183)
!340 = !DILocalVariable(name: "__ptr", scope: !341, file: !117, line: 644, type: !183)
!341 = distinct !DILexicalBlock(scope: !321, file: !117, line: 644, column: 3)
!342 = !DILocalVariable(name: "__stream", scope: !341, file: !117, line: 644, type: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !346)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !348)
!347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !364, !366, !367, !368, !370, !371, !373, !374, !377, !379, !382, !385, !386, !387, !388, !389}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !346, file: !347, line: 51, baseType: !118, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !346, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !346, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !346, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !346, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !346, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !346, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !346, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !346, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !346, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !346, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !346, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !346, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !347, line: 36, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !346, file: !347, line: 70, baseType: !365, size: 64, offset: 832)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !346, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !346, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !346, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !308, line: 152, baseType: !300)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !346, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !346, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!372 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !346, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !346, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !347, line: 43, baseType: null)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !346, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !308, line: 153, baseType: !300)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !346, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !347, line: 37, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !346, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !347, line: 38, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !346, file: !347, line: 93, baseType: !365, size: 64, offset: 1344)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !346, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !346, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !346, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !346, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 20)
!393 = !DILocalVariable(name: "__cnt", scope: !341, file: !117, line: 644, type: !180)
!394 = !DILocalVariable(name: "url_program", scope: !321, file: !117, line: 648, type: !183)
!395 = !DILocalVariable(name: "__ptr", scope: !396, file: !117, line: 686, type: !183)
!396 = distinct !DILexicalBlock(scope: !321, file: !117, line: 686, column: 3)
!397 = !DILocalVariable(name: "__stream", scope: !396, file: !117, line: 686, type: !343)
!398 = !DILocalVariable(name: "__cnt", scope: !396, file: !117, line: 686, type: !180)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !117, line: 585, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 5)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !117, line: 586, type: !401, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !117, line: 595, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 4)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !117, line: 620, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 6)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !117, line: 648, type: !226, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !117, line: 648, type: !401, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !117, line: 649, type: !408, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !117, line: 649, type: !19, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !117, line: 650, type: !401, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !117, line: 651, type: !413, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !117, line: 651, type: !413, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !117, line: 652, type: !432, isLocal: true, isDefinition: true)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 7)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !117, line: 653, type: !437, isLocal: true, isDefinition: true)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 8)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !117, line: 654, type: !91, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !117, line: 655, type: !91, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !117, line: 656, type: !91, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !117, line: 657, type: !91, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !117, line: 663, type: !432, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !117, line: 664, type: !91, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !454, isLocal: true, isDefinition: true)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 17)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !117, line: 669, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 40)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 15)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !117, line: 676, type: !469, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 61)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !117, line: 679, type: !19, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !117, line: 683, type: !401, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !117, line: 688, type: !401, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !117, line: 691, type: !437, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !117, line: 839, type: !238, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !117, line: 840, type: !101, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !117, line: 841, type: !464, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !117, line: 862, type: !408, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !117, line: 868, type: !59, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !117, line: 875, type: !492, isLocal: true, isDefinition: true)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 27)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !117, line: 877, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 51)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !117, line: 877, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 12)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !454, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !464, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !454, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !513, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 21)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !464, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !502, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !454, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !454, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !526, isLocal: true, isDefinition: true)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 13)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !231, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 18)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !401, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !437, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !19, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !226, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "header_type", scope: !106, file: !2, line: 69, type: !183, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !226, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "body_type", scope: !106, file: !2, line: 66, type: !183, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "footer_type", scope: !106, file: !2, line: 72, type: !183, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "starting_line_number", scope: !106, file: !2, line: 128, type: !305, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "page_incr", scope: !106, file: !2, line: 131, type: !305, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "reset_numbers", scope: !106, file: !2, line: 134, type: !311, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "blank_join", scope: !106, file: !2, line: 137, type: !305, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !226, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "separator_str", scope: !106, file: !2, line: 95, type: !183, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "lineno_width", scope: !106, file: !2, line: 140, type: !118, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "FORMAT_LEFT", scope: !106, file: !2, line: 53, type: !568, isLocal: true, isDefinition: true)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !438)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "lineno_format", scope: !106, file: !2, line: 143, type: !183, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_NOLZ", scope: !106, file: !2, line: 47, type: !573, isLocal: true, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 56, elements: !433)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_LZ", scope: !106, file: !2, line: 50, type: !568, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "section_del", scope: !106, file: !2, line: 98, type: !177, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "DEFAULT_SECTION_DELIMITERS", scope: !106, file: !2, line: 56, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 9)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "header_del", scope: !106, file: !2, line: 104, type: !177, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "body_del", scope: !106, file: !2, line: 110, type: !177, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "footer_del", scope: !106, file: !2, line: 116, type: !177, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "print_no_line_fmt", scope: !106, file: !2, line: 125, type: !177, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "current_regex", scope: !106, file: !2, line: 92, type: !593, isLocal: true, isDefinition: true)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !226, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "line_no_overflow", scope: !106, file: !2, line: 149, type: !311, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "blank_lines", scope: !600, file: !2, line: 358, type: !305, isLocal: true, isDefinition: true)
!600 = distinct !DISubprogram(name: "proc_text", scope: !2, file: !2, line: 356, type: !601, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{null}
!603 = !{!604, !606, !607}
!604 = !DILocalVariable(name: "__ptr", scope: !605, file: !2, line: 401, type: !183)
!605 = distinct !DILexicalBlock(scope: !600, file: !2, line: 401, column: 3)
!606 = !DILocalVariable(name: "__stream", scope: !605, file: !2, line: 401, type: !343)
!607 = !DILocalVariable(name: "__cnt", scope: !605, file: !2, line: 401, type: !180)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !2, line: 390, type: !189, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !513, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !117, line: 952, type: !502, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 3584, elements: !232)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !617, line: 50, size: 256, elements: !618)
!617 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!618 = !{!619, !620, !621, !623}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !617, line: 52, baseType: !183, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !616, file: !617, line: 55, baseType: !118, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !616, file: !617, line: 56, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !616, file: !617, line: 57, baseType: !118, size: 32, offset: 192)
!624 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!625 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!626 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !629, line: 3, type: !464, isLocal: true, isDefinition: true)
!629 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "Version", scope: !632, file: !629, line: 3, type: !183, isLocal: false, isDefinition: true)
!632 = distinct !DICompileUnit(language: DW_LANG_C11, file: !629, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !633, splitDebugInlining: false, nameTableKind: None)
!633 = !{!627, !630}
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "file_name", scope: !636, file: !637, line: 45, type: !183, isLocal: true, isDefinition: true)
!636 = distinct !DICompileUnit(language: DW_LANG_C11, file: !637, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !638, splitDebugInlining: false, nameTableKind: None)
!637 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!638 = !{!639, !641, !643, !645, !634, !647}
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !637, line: 121, type: !432, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !637, line: 121, type: !502, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !637, line: 123, type: !432, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !637, line: 126, type: !19, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !636, file: !637, line: 55, type: !311, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !651, file: !652, line: 66, type: !694, isLocal: false, isDefinition: true)
!651 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, globals: !654, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!653 = !{!178, !185}
!654 = !{!655, !657, !676, !678, !680, !682, !649, !684, !686, !688, !690, !692}
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !652, line: 272, type: !401, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "old_file_name", scope: !659, file: !652, line: 304, type: !183, isLocal: true, isDefinition: true)
!659 = distinct !DISubprogram(name: "verror_at_line", scope: !652, file: !652, line: 298, type: !660, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !669)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !118, !118, !183, !110, !183, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !664)
!664 = !{!665, !666, !667, !668}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !663, file: !652, baseType: !110, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !663, file: !652, baseType: !110, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !663, file: !652, baseType: !178, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !663, file: !652, baseType: !178, size: 64, offset: 128)
!669 = !{!670, !671, !672, !673, !674, !675}
!670 = !DILocalVariable(name: "status", arg: 1, scope: !659, file: !652, line: 298, type: !118)
!671 = !DILocalVariable(name: "errnum", arg: 2, scope: !659, file: !652, line: 298, type: !118)
!672 = !DILocalVariable(name: "file_name", arg: 3, scope: !659, file: !652, line: 298, type: !183)
!673 = !DILocalVariable(name: "line_number", arg: 4, scope: !659, file: !652, line: 298, type: !110)
!674 = !DILocalVariable(name: "message", arg: 5, scope: !659, file: !652, line: 298, type: !183)
!675 = !DILocalVariable(name: "args", arg: 6, scope: !659, file: !652, line: 298, type: !662)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(name: "old_line_number", scope: !659, file: !652, line: 305, type: !110, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !652, line: 338, type: !408, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !652, line: 346, type: !437, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !652, line: 346, type: !226, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "error_message_count", scope: !651, file: !652, line: 69, type: !110, isLocal: false, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !651, file: !652, line: 295, type: !118, isLocal: false, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !652, line: 208, type: !432, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !652, line: 208, type: !513, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !652, line: 214, type: !401, isLocal: true, isDefinition: true)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(name: "program_name", scope: !697, file: !698, line: 31, type: !183, isLocal: false, isDefinition: true)
!697 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, globals: !700, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!699 = !{!178, !177}
!700 = !{!695, !701, !703}
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !698, line: 46, type: !437, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !698, line: 49, type: !408, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "utf07FF", scope: !707, file: !708, line: 46, type: !735, isLocal: true, isDefinition: true)
!707 = distinct !DISubprogram(name: "proper_name_lite", scope: !708, file: !708, line: 38, type: !709, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !713)
!708 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!709 = !DISubroutineType(types: !710)
!710 = !{!183, !183, !183}
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !712, splitDebugInlining: false, nameTableKind: None)
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
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !731, file: !726, line: 19, baseType: !408, size: 32)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 16, elements: !227)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !738, line: 78, type: !437, isLocal: true, isDefinition: true)
!738 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !738, line: 79, type: !413, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !738, line: 80, type: !526, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !738, line: 81, type: !526, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !738, line: 82, type: !390, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !738, line: 83, type: !226, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !738, line: 84, type: !437, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !738, line: 85, type: !432, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !738, line: 86, type: !432, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !738, line: 87, type: !437, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !759, file: !738, line: 76, type: !830, isLocal: false, isDefinition: true)
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !760, retainedTypes: !768, globals: !769, splitDebugInlining: false, nameTableKind: None)
!760 = !{!761, !763, !122}
!761 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !762, line: 42, baseType: !110, size: 32, elements: !149)
!762 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!763 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !762, line: 254, baseType: !110, size: 32, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!766 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!767 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!768 = !{!178, !118, !179, !180}
!769 = !{!736, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !770, !774, !784, !786, !788, !790, !792, !794, !796, !819, !826, !828}
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !759, file: !738, line: 92, type: !772, isLocal: false, isDefinition: true)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 320, elements: !92)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !759, file: !738, line: 1040, type: !776, isLocal: false, isDefinition: true)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !738, line: 56, size: 448, elements: !777)
!777 = !{!778, !779, !780, !782, !783}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !776, file: !738, line: 59, baseType: !761, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !738, line: 62, baseType: !118, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !776, file: !738, line: 66, baseType: !781, size: 256, offset: 64)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !438)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !776, file: !738, line: 69, baseType: !183, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !776, file: !738, line: 72, baseType: !183, size: 64, offset: 384)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !759, file: !738, line: 107, type: !776, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "slot0", scope: !759, file: !738, line: 831, type: !275, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !738, line: 321, type: !226, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !738, line: 357, type: !226, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !738, line: 358, type: !226, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !738, line: 199, type: !432, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "quote", scope: !798, file: !738, line: 228, type: !817, isLocal: true, isDefinition: true)
!798 = distinct !DISubprogram(name: "gettext_quote", scope: !738, file: !738, line: 197, type: !799, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{!183, !183, !761}
!801 = !{!802, !803, !804, !805, !806}
!802 = !DILocalVariable(name: "msgid", arg: 1, scope: !798, file: !738, line: 197, type: !183)
!803 = !DILocalVariable(name: "s", arg: 2, scope: !798, file: !738, line: 197, type: !761)
!804 = !DILocalVariable(name: "translation", scope: !798, file: !738, line: 199, type: !183)
!805 = !DILocalVariable(name: "w", scope: !798, file: !738, line: 229, type: !718)
!806 = !DILocalVariable(name: "mbs", scope: !798, file: !738, line: 230, type: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !724, line: 6, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !726, line: 21, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 13, size: 64, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !809, file: !726, line: 15, baseType: !118, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !809, file: !726, line: 20, baseType: !813, size: 32, offset: 32)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !809, file: !726, line: 16, size: 32, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !813, file: !726, line: 18, baseType: !110, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !813, file: !726, line: 19, baseType: !408, size: 32)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !818)
!818 = !{!228, !410}
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "slotvec", scope: !759, file: !738, line: 834, type: !821, isLocal: true, isDefinition: true)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !738, line: 823, size: 128, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !822, file: !738, line: 825, baseType: !180, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !822, file: !738, line: 826, baseType: !177, size: 64, offset: 64)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "nslots", scope: !759, file: !738, line: 832, type: !118, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "slotvec0", scope: !759, file: !738, line: 833, type: !822, isLocal: true, isDefinition: true)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 704, elements: !832)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!832 = !{!833}
!833 = !DISubrange(count: 11)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !836, line: 67, type: !502, isLocal: true, isDefinition: true)
!836 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !836, line: 69, type: !432, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !836, line: 83, type: !432, isLocal: true, isDefinition: true)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !836, line: 83, type: !408, isLocal: true, isDefinition: true)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !836, line: 85, type: !226, isLocal: true, isDefinition: true)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !836, line: 88, type: !847, isLocal: true, isDefinition: true)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 171)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !836, line: 88, type: !221, isLocal: true, isDefinition: true)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !836, line: 105, type: !238, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !836, line: 109, type: !856, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 23)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !836, line: 113, type: !861, isLocal: true, isDefinition: true)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 28)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !836, line: 120, type: !210, isLocal: true, isDefinition: true)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !836, line: 127, type: !868, isLocal: true, isDefinition: true)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: 36)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !836, line: 134, type: !459, isLocal: true, isDefinition: true)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(scope: null, file: !836, line: 142, type: !875, isLocal: true, isDefinition: true)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 44)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(scope: null, file: !836, line: 150, type: !880, isLocal: true, isDefinition: true)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !881)
!881 = !{!882}
!882 = !DISubrange(count: 48)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !836, line: 159, type: !885, isLocal: true, isDefinition: true)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 52)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(scope: null, file: !836, line: 170, type: !890, isLocal: true, isDefinition: true)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 60)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !836, line: 248, type: !390, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !836, line: 248, type: !101, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !836, line: 254, type: !390, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !836, line: 254, type: !231, isLocal: true, isDefinition: true)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !836, line: 254, type: !459, isLocal: true, isDefinition: true)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(scope: null, file: !836, line: 259, type: !3, isLocal: true, isDefinition: true)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !836, line: 259, type: !198, isLocal: true, isDefinition: true)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !909, file: !910, line: 26, type: !912, isLocal: false, isDefinition: true)
!909 = distinct !DICompileUnit(language: DW_LANG_C11, file: !910, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !911, splitDebugInlining: false, nameTableKind: None)
!910 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!911 = !{!907}
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 376, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 47)
!915 = !DIGlobalVariableExpression(var: !916, expr: !DIExpression())
!916 = distinct !DIGlobalVariable(name: "exit_failure", scope: !917, file: !918, line: 24, type: !920, isLocal: false, isDefinition: true)
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !919, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!919 = !{!915}
!920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(scope: null, file: !923, line: 34, type: !19, isLocal: true, isDefinition: true)
!923 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !923, line: 34, type: !432, isLocal: true, isDefinition: true)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !923, line: 34, type: !454, isLocal: true, isDefinition: true)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !930, line: 80, type: !432, isLocal: true, isDefinition: true)
!930 = !DIFile(filename: "lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(scope: null, file: !933, line: 108, type: !86, isLocal: true, isDefinition: true)
!933 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(name: "internal_state", scope: !936, file: !933, line: 97, type: !939, isLocal: true, isDefinition: true)
!936 = distinct !DICompileUnit(language: DW_LANG_C11, file: !933, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !937, globals: !938, splitDebugInlining: false, nameTableKind: None)
!937 = !{!178, !180, !185}
!938 = !{!931, !934}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !724, line: 6, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !726, line: 21, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 13, size: 64, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !941, file: !726, line: 15, baseType: !118, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !941, file: !726, line: 20, baseType: !945, size: 32, offset: 32)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !726, line: 16, size: 32, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !945, file: !726, line: 18, baseType: !110, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !945, file: !726, line: 19, baseType: !408, size: 32)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !951, line: 35, type: !413, isLocal: true, isDefinition: true)
!951 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!952 = distinct !DICompileUnit(language: DW_LANG_C11, file: !953, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !954, splitDebugInlining: false, nameTableKind: None)
!953 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!954 = !{!955}
!955 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !956, line: 44, baseType: !110, size: 32, elements: !163)
!956 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!959 = distinct !DICompileUnit(language: DW_LANG_C11, file: !960, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!960 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!961 = !{!178}
!962 = distinct !DICompileUnit(language: DW_LANG_C11, file: !963, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!963 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!964 = distinct !DICompileUnit(language: DW_LANG_C11, file: !965, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!966 = distinct !DICompileUnit(language: DW_LANG_C11, file: !967, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !969, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-linebuffer.o -MD -MP -MF lib/.deps/libcoreutils_a-linebuffer.Tpo -c lib/linebuffer.c -o lib/.libcoreutils_a-linebuffer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !970, splitDebugInlining: false, nameTableKind: None)
!969 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!970 = !{!260}
!971 = distinct !DICompileUnit(language: DW_LANG_C11, file: !836, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !972, retainedTypes: !961, globals: !976, splitDebugInlining: false, nameTableKind: None)
!972 = !{!973}
!973 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !836, line: 40, baseType: !110, size: 32, elements: !974)
!974 = !{!975}
!975 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!976 = !{!834, !837, !839, !841, !843, !845, !850, !852, !854, !859, !864, !866, !871, !873, !878, !883, !888, !893, !895, !897, !899, !901, !903, !905}
!977 = distinct !DICompileUnit(language: DW_LANG_C11, file: !978, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !979, retainedTypes: !1009, splitDebugInlining: false, nameTableKind: None)
!978 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!979 = !{!980, !992}
!980 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !981, file: !978, line: 188, baseType: !110, size: 32, elements: !990)
!981 = distinct !DISubprogram(name: "x2nrealloc", scope: !978, file: !978, line: 176, type: !982, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !985)
!982 = !DISubroutineType(types: !983)
!983 = !{!178, !178, !984, !180}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!985 = !{!986, !987, !988, !989}
!986 = !DILocalVariable(name: "p", arg: 1, scope: !981, file: !978, line: 176, type: !178)
!987 = !DILocalVariable(name: "pn", arg: 2, scope: !981, file: !978, line: 176, type: !984)
!988 = !DILocalVariable(name: "s", arg: 3, scope: !981, file: !978, line: 176, type: !180)
!989 = !DILocalVariable(name: "n", scope: !981, file: !978, line: 178, type: !180)
!990 = !{!991}
!991 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!992 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !993, file: !978, line: 228, baseType: !110, size: 32, elements: !990)
!993 = distinct !DISubprogram(name: "xpalloc", scope: !978, file: !978, line: 223, type: !994, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !999)
!994 = !DISubroutineType(types: !995)
!995 = !{!178, !178, !996, !997, !298, !997}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !998, line: 130, baseType: !298)
!998 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!1000 = !DILocalVariable(name: "pa", arg: 1, scope: !993, file: !978, line: 223, type: !178)
!1001 = !DILocalVariable(name: "pn", arg: 2, scope: !993, file: !978, line: 223, type: !996)
!1002 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !993, file: !978, line: 223, type: !997)
!1003 = !DILocalVariable(name: "n_max", arg: 4, scope: !993, file: !978, line: 223, type: !298)
!1004 = !DILocalVariable(name: "s", arg: 5, scope: !993, file: !978, line: 223, type: !997)
!1005 = !DILocalVariable(name: "n0", scope: !993, file: !978, line: 230, type: !997)
!1006 = !DILocalVariable(name: "n", scope: !993, file: !978, line: 237, type: !997)
!1007 = !DILocalVariable(name: "nbytes", scope: !993, file: !978, line: 248, type: !997)
!1008 = !DILocalVariable(name: "adjusted_nbytes", scope: !993, file: !978, line: 252, type: !997)
!1009 = !{!177, !178}
!1010 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1011, splitDebugInlining: false, nameTableKind: None)
!1011 = !{!921, !924, !926}
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1013, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xdectoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xdectoimax.Tpo -c lib/xdectoimax.c -o lib/.libcoreutils_a-xdectoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1014, globals: !1025, splitDebugInlining: false, nameTableKind: None)
!1013 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!1014 = !{!1015, !1023}
!1015 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1016, line: 30, baseType: !110, size: 32, elements: !1017)
!1016 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1017 = !{!1018, !1019, !1020, !1021, !1022}
!1018 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!1019 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!1020 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!1021 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!1022 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!1023 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1024, line: 24, baseType: !110, size: 32, elements: !111)
!1024 = !DIFile(filename: "lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!1025 = !{!928}
!1026 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1027, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoimax.Tpo -c lib/xstrtoimax.c -o lib/.libcoreutils_a-xstrtoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1028, retainedTypes: !1031, splitDebugInlining: false, nameTableKind: None)
!1027 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!1028 = !{!1029}
!1029 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1030, line: 30, baseType: !110, size: 32, elements: !1017)
!1030 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1031 = !{!305}
!1032 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1033, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!1033 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1034 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1035, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1036 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1037, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!1037 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1038 = distinct !DICompileUnit(language: DW_LANG_C11, file: !951, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1039, splitDebugInlining: false, nameTableKind: None)
!1039 = !{!1040, !949}
!1040 = !DIGlobalVariableExpression(var: !1041, expr: !DIExpression())
!1041 = distinct !DIGlobalVariable(scope: null, file: !951, line: 35, type: !226, isLocal: true, isDefinition: true)
!1042 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1043, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1043 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1044 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1045, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!1045 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1046 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1047 = !{i32 7, !"Dwarf Version", i32 5}
!1048 = !{i32 2, !"Debug Info Version", i32 3}
!1049 = !{i32 1, !"wchar_size", i32 4}
!1050 = !{i32 8, !"PIC Level", i32 2}
!1051 = !{i32 7, !"PIE Level", i32 2}
!1052 = !{i32 7, !"uwtable", i32 2}
!1053 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1054 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 175, type: !1055, scopeLine: 176, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !118}
!1057 = !{!1058}
!1058 = !DILocalVariable(name: "status", arg: 1, scope: !1054, file: !2, line: 175, type: !118)
!1059 = !DILocation(line: 0, scope: !1054)
!1060 = !DILocation(line: 177, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 177, column: 7)
!1062 = !DILocation(line: 177, column: 7, scope: !1054)
!1063 = !DILocation(line: 178, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 178, column: 5)
!1065 = !{!1066, !1066, i64 0}
!1066 = !{!"any pointer", !1067, i64 0}
!1067 = !{!"omnipotent char", !1068, i64 0}
!1068 = !{!"Simple C/C++ TBAA"}
!1069 = !DILocation(line: 181, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 180, column: 5)
!1071 = !DILocation(line: 185, column: 7, scope: !1070)
!1072 = !DILocation(line: 729, column: 3, scope: !1073, inlinedAt: !1074)
!1073 = distinct !DISubprogram(name: "emit_stdin_note", scope: !117, file: !117, line: 727, type: !601, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!1074 = distinct !DILocation(line: 189, column: 7, scope: !1070)
!1075 = !DILocation(line: 736, column: 3, scope: !1076, inlinedAt: !1077)
!1076 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !117, file: !117, line: 734, type: !601, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!1077 = distinct !DILocation(line: 190, column: 7, scope: !1070)
!1078 = !DILocation(line: 192, column: 7, scope: !1070)
!1079 = !DILocation(line: 195, column: 7, scope: !1070)
!1080 = !DILocation(line: 198, column: 7, scope: !1070)
!1081 = !DILocation(line: 201, column: 7, scope: !1070)
!1082 = !DILocation(line: 204, column: 7, scope: !1070)
!1083 = !DILocation(line: 207, column: 7, scope: !1070)
!1084 = !DILocation(line: 210, column: 7, scope: !1070)
!1085 = !DILocation(line: 213, column: 7, scope: !1070)
!1086 = !DILocation(line: 216, column: 7, scope: !1070)
!1087 = !DILocation(line: 219, column: 7, scope: !1070)
!1088 = !DILocation(line: 222, column: 7, scope: !1070)
!1089 = !DILocation(line: 225, column: 7, scope: !1070)
!1090 = !DILocation(line: 226, column: 7, scope: !1070)
!1091 = !DILocation(line: 227, column: 7, scope: !1070)
!1092 = !DILocation(line: 236, column: 7, scope: !1070)
!1093 = !DILocation(line: 246, column: 7, scope: !1070)
!1094 = !DILocalVariable(name: "program", arg: 1, scope: !1095, file: !117, line: 836, type: !183)
!1095 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 836, type: !1096, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !183}
!1098 = !{!1094, !1099, !1106, !1107, !1109, !1110}
!1099 = !DILocalVariable(name: "infomap", scope: !1095, file: !117, line: 838, type: !1100)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 896, elements: !433)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1095, file: !117, line: 838, size: 128, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1102, file: !117, line: 838, baseType: !183, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1102, file: !117, line: 838, baseType: !183, size: 64, offset: 64)
!1106 = !DILocalVariable(name: "node", scope: !1095, file: !117, line: 848, type: !183)
!1107 = !DILocalVariable(name: "map_prog", scope: !1095, file: !117, line: 849, type: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1109 = !DILocalVariable(name: "lc_messages", scope: !1095, file: !117, line: 861, type: !183)
!1110 = !DILocalVariable(name: "url_program", scope: !1095, file: !117, line: 874, type: !183)
!1111 = !DILocation(line: 0, scope: !1095, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 255, column: 7, scope: !1070)
!1113 = !{}
!1114 = !DILocation(line: 857, column: 3, scope: !1095, inlinedAt: !1112)
!1115 = !DILocation(line: 861, column: 29, scope: !1095, inlinedAt: !1112)
!1116 = !DILocation(line: 862, column: 7, scope: !1117, inlinedAt: !1112)
!1117 = distinct !DILexicalBlock(scope: !1095, file: !117, line: 862, column: 7)
!1118 = !DILocation(line: 862, column: 19, scope: !1117, inlinedAt: !1112)
!1119 = !DILocation(line: 862, column: 22, scope: !1117, inlinedAt: !1112)
!1120 = !DILocation(line: 862, column: 7, scope: !1095, inlinedAt: !1112)
!1121 = !DILocation(line: 868, column: 7, scope: !1122, inlinedAt: !1112)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !117, line: 863, column: 5)
!1123 = !DILocation(line: 870, column: 5, scope: !1122, inlinedAt: !1112)
!1124 = !DILocation(line: 875, column: 3, scope: !1095, inlinedAt: !1112)
!1125 = !DILocation(line: 877, column: 3, scope: !1095, inlinedAt: !1112)
!1126 = !DILocation(line: 257, column: 3, scope: !1054)
!1127 = !DISubprogram(name: "dcgettext", scope: !1128, file: !1128, line: 51, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!177, !183, !183, !118}
!1131 = !DISubprogram(name: "__fprintf_chk", scope: !1132, file: !1132, line: 93, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!118, !1135, !118, !1136, null}
!1135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !343)
!1136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !183)
!1137 = !DISubprogram(name: "__printf_chk", scope: !1132, file: !1132, line: 95, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!118, !118, !1136, null}
!1140 = !DISubprogram(name: "fputs_unlocked", scope: !1141, file: !1141, line: 691, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1141 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!118, !1136, !1135}
!1144 = !DILocation(line: 0, scope: !321)
!1145 = !DILocation(line: 581, column: 7, scope: !329)
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"int", !1067, i64 0}
!1148 = !DILocation(line: 581, column: 19, scope: !329)
!1149 = !DILocation(line: 581, column: 7, scope: !321)
!1150 = !DILocation(line: 585, column: 26, scope: !328)
!1151 = !DILocation(line: 0, scope: !328)
!1152 = !DILocation(line: 586, column: 23, scope: !328)
!1153 = !DILocation(line: 586, column: 28, scope: !328)
!1154 = !DILocation(line: 586, column: 32, scope: !328)
!1155 = !{!1067, !1067, i64 0}
!1156 = !DILocation(line: 586, column: 38, scope: !328)
!1157 = !DILocalVariable(name: "__s1", arg: 1, scope: !1158, file: !1159, line: 1359, type: !183)
!1158 = distinct !DISubprogram(name: "streq", scope: !1159, file: !1159, line: 1359, type: !1160, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1162)
!1159 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!311, !183, !183}
!1162 = !{!1157, !1163}
!1163 = !DILocalVariable(name: "__s2", arg: 2, scope: !1158, file: !1159, line: 1359, type: !183)
!1164 = !DILocation(line: 0, scope: !1158, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 586, column: 41, scope: !328)
!1166 = !DILocation(line: 1361, column: 11, scope: !1158, inlinedAt: !1165)
!1167 = !DILocation(line: 1361, column: 10, scope: !1158, inlinedAt: !1165)
!1168 = !DILocation(line: 586, column: 19, scope: !328)
!1169 = !DILocation(line: 587, column: 5, scope: !328)
!1170 = !DILocation(line: 588, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !321, file: !117, line: 588, column: 7)
!1172 = !DILocation(line: 588, column: 7, scope: !321)
!1173 = !DILocation(line: 590, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !117, line: 589, column: 5)
!1175 = !DILocation(line: 591, column: 7, scope: !1174)
!1176 = !DILocation(line: 595, column: 37, scope: !321)
!1177 = !DILocation(line: 595, column: 35, scope: !321)
!1178 = !DILocation(line: 596, column: 29, scope: !321)
!1179 = !DILocation(line: 597, column: 8, scope: !336)
!1180 = !DILocation(line: 597, column: 7, scope: !321)
!1181 = !DILocation(line: 604, column: 24, scope: !335)
!1182 = !DILocation(line: 604, column: 12, scope: !336)
!1183 = !DILocation(line: 0, scope: !334)
!1184 = !DILocation(line: 610, column: 16, scope: !334)
!1185 = !DILocation(line: 610, column: 7, scope: !334)
!1186 = !DILocation(line: 611, column: 21, scope: !334)
!1187 = !{!1188, !1188, i64 0}
!1188 = !{!"short", !1067, i64 0}
!1189 = !DILocation(line: 611, column: 19, scope: !334)
!1190 = !DILocation(line: 611, column: 16, scope: !334)
!1191 = !DILocation(line: 610, column: 30, scope: !334)
!1192 = distinct !{!1192, !1185, !1186, !1193}
!1193 = !{!"llvm.loop.mustprogress"}
!1194 = !DILocation(line: 612, column: 18, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !334, file: !117, line: 612, column: 11)
!1196 = !DILocation(line: 612, column: 11, scope: !334)
!1197 = !DILocation(line: 620, column: 23, scope: !321)
!1198 = !DILocation(line: 625, column: 39, scope: !321)
!1199 = !DILocation(line: 626, column: 3, scope: !321)
!1200 = !DILocation(line: 626, column: 10, scope: !321)
!1201 = !DILocation(line: 626, column: 21, scope: !321)
!1202 = !DILocation(line: 628, column: 44, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !117, line: 628, column: 11)
!1204 = distinct !DILexicalBlock(scope: !321, file: !117, line: 627, column: 5)
!1205 = !DILocation(line: 628, column: 32, scope: !1203)
!1206 = !DILocation(line: 628, column: 49, scope: !1203)
!1207 = !DILocation(line: 628, column: 11, scope: !1204)
!1208 = !DILocation(line: 630, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !117, line: 630, column: 11)
!1210 = !DILocation(line: 630, column: 11, scope: !1204)
!1211 = !DILocation(line: 632, column: 26, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !117, line: 632, column: 15)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !117, line: 631, column: 9)
!1214 = !DILocation(line: 632, column: 34, scope: !1212)
!1215 = !DILocation(line: 632, column: 37, scope: !1212)
!1216 = !DILocation(line: 632, column: 15, scope: !1213)
!1217 = !DILocation(line: 636, column: 16, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !117, line: 636, column: 15)
!1219 = !DILocation(line: 636, column: 29, scope: !1218)
!1220 = !DILocation(line: 640, column: 16, scope: !1204)
!1221 = distinct !{!1221, !1199, !1222, !1193}
!1222 = !DILocation(line: 641, column: 5, scope: !321)
!1223 = !DILocation(line: 644, column: 3, scope: !321)
!1224 = !DILocation(line: 0, scope: !1158, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 648, column: 31, scope: !321)
!1226 = !DILocation(line: 0, scope: !1158, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 649, column: 31, scope: !321)
!1228 = !DILocation(line: 0, scope: !1158, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 650, column: 31, scope: !321)
!1230 = !DILocation(line: 0, scope: !1158, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 651, column: 31, scope: !321)
!1232 = !DILocation(line: 0, scope: !1158, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 652, column: 31, scope: !321)
!1234 = !DILocation(line: 0, scope: !1158, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 653, column: 31, scope: !321)
!1236 = !DILocation(line: 0, scope: !1158, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 654, column: 31, scope: !321)
!1238 = !DILocation(line: 0, scope: !1158, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 655, column: 31, scope: !321)
!1240 = !DILocation(line: 0, scope: !1158, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 656, column: 31, scope: !321)
!1242 = !DILocation(line: 0, scope: !1158, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 657, column: 31, scope: !321)
!1244 = !DILocation(line: 663, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !321, file: !117, line: 663, column: 7)
!1246 = !DILocation(line: 664, column: 7, scope: !1245)
!1247 = !DILocation(line: 664, column: 10, scope: !1245)
!1248 = !DILocation(line: 663, column: 7, scope: !321)
!1249 = !DILocation(line: 669, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !117, line: 665, column: 5)
!1251 = !DILocation(line: 671, column: 5, scope: !1250)
!1252 = !DILocation(line: 676, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1245, file: !117, line: 673, column: 5)
!1254 = !DILocation(line: 679, column: 3, scope: !321)
!1255 = !DILocation(line: 683, column: 3, scope: !321)
!1256 = !DILocation(line: 686, column: 3, scope: !321)
!1257 = !DILocation(line: 688, column: 3, scope: !321)
!1258 = !DILocation(line: 691, column: 3, scope: !321)
!1259 = !DILocation(line: 695, column: 3, scope: !321)
!1260 = !DILocation(line: 696, column: 1, scope: !321)
!1261 = !DISubprogram(name: "setlocale", scope: !1262, file: !1262, line: 122, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!177, !118, !183}
!1265 = !DISubprogram(name: "strncmp", scope: !1266, file: !1266, line: 159, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1266 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!118, !183, !183, !180}
!1269 = !DISubprogram(name: "exit", scope: !1270, file: !1270, line: 624, type: !1055, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1270 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1271 = !DISubprogram(name: "getenv", scope: !1270, file: !1270, line: 641, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!177, !183}
!1274 = !DISubprogram(name: "strcmp", scope: !1266, file: !1266, line: 156, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!118, !183, !183}
!1277 = !DISubprogram(name: "strspn", scope: !1266, file: !1266, line: 297, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!182, !183, !183}
!1280 = !DISubprogram(name: "strchr", scope: !1266, file: !1266, line: 246, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!177, !183, !118}
!1283 = !DISubprogram(name: "__ctype_b_loc", scope: !123, file: !123, line: 79, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1289 = !DISubprogram(name: "strcspn", scope: !1266, file: !1266, line: 293, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1290 = !DISubprogram(name: "fwrite_unlocked", scope: !1141, file: !1141, line: 704, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!180, !1293, !180, !180, !1135}
!1293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1296 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 498, type: !1297, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1300)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!118, !118, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1311, !1312}
!1301 = !DILocalVariable(name: "argc", arg: 1, scope: !1296, file: !2, line: 498, type: !118)
!1302 = !DILocalVariable(name: "argv", arg: 2, scope: !1296, file: !2, line: 498, type: !1299)
!1303 = !DILocalVariable(name: "c", scope: !1296, file: !2, line: 500, type: !118)
!1304 = !DILocalVariable(name: "len", scope: !1296, file: !2, line: 501, type: !180)
!1305 = !DILocalVariable(name: "ok", scope: !1296, file: !2, line: 502, type: !311)
!1306 = !DILocalVariable(name: "p", scope: !1307, file: !2, line: 585, type: !183)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 584, column: 13)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 583, column: 15)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 517, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 515, column: 5)
!1311 = !DILocalVariable(name: "lim", scope: !1307, file: !2, line: 586, type: !183)
!1312 = !DILocalVariable(name: "n_chars", scope: !1307, file: !2, line: 587, type: !118)
!1313 = distinct !DIAssignID()
!1314 = distinct !DIAssignID()
!1315 = !DILocation(line: 0, scope: !1296)
!1316 = !DILocation(line: 505, column: 21, scope: !1296)
!1317 = !DILocation(line: 505, column: 3, scope: !1296)
!1318 = !DILocation(line: 506, column: 3, scope: !1296)
!1319 = !DILocation(line: 507, column: 3, scope: !1296)
!1320 = !DILocation(line: 508, column: 3, scope: !1296)
!1321 = !DILocation(line: 510, column: 3, scope: !1296)
!1322 = !DILocation(line: 512, column: 3, scope: !1296)
!1323 = !DILocation(line: 512, column: 15, scope: !1296)
!1324 = distinct !{!1324, !1322, !1325, !1193}
!1325 = !DILocation(line: 609, column: 5, scope: !1296)
!1326 = !DILocation(line: 519, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 519, column: 15)
!1328 = !DILocation(line: 519, column: 15, scope: !1309)
!1329 = !DILocation(line: 521, column: 15, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 520, column: 13)
!1331 = !DILocation(line: 524, column: 13, scope: !1330)
!1332 = !DILocation(line: 527, column: 17, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 527, column: 15)
!1334 = !DILocation(line: 527, column: 15, scope: !1309)
!1335 = !DILocation(line: 529, column: 15, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 528, column: 13)
!1337 = !DILocation(line: 532, column: 13, scope: !1336)
!1338 = !DILocation(line: 535, column: 17, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 535, column: 15)
!1340 = !DILocation(line: 535, column: 15, scope: !1309)
!1341 = !DILocation(line: 537, column: 15, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 536, column: 13)
!1343 = !DILocation(line: 540, column: 13, scope: !1342)
!1344 = !DILocation(line: 543, column: 46, scope: !1309)
!1345 = !DILocation(line: 544, column: 46, scope: !1309)
!1346 = !DILocation(line: 543, column: 34, scope: !1309)
!1347 = !DILocation(line: 543, column: 32, scope: !1309)
!1348 = !{!1349, !1349, i64 0}
!1349 = !{!"long", !1067, i64 0}
!1350 = !DILocation(line: 546, column: 11, scope: !1309)
!1351 = !DILocation(line: 548, column: 35, scope: !1309)
!1352 = !DILocation(line: 549, column: 35, scope: !1309)
!1353 = !DILocation(line: 548, column: 23, scope: !1309)
!1354 = !DILocation(line: 548, column: 21, scope: !1309)
!1355 = !DILocation(line: 550, column: 11, scope: !1309)
!1356 = !DILocation(line: 552, column: 25, scope: !1309)
!1357 = !DILocation(line: 553, column: 11, scope: !1309)
!1358 = !DILocation(line: 555, column: 36, scope: !1309)
!1359 = !DILocation(line: 556, column: 36, scope: !1309)
!1360 = !DILocation(line: 555, column: 24, scope: !1309)
!1361 = !DILocation(line: 555, column: 22, scope: !1309)
!1362 = !DILocation(line: 558, column: 11, scope: !1309)
!1363 = !DILocation(line: 560, column: 27, scope: !1309)
!1364 = !DILocation(line: 560, column: 25, scope: !1309)
!1365 = !DILocation(line: 561, column: 11, scope: !1309)
!1366 = !DILocation(line: 563, column: 38, scope: !1309)
!1367 = !DILocation(line: 564, column: 38, scope: !1309)
!1368 = !DILocation(line: 563, column: 26, scope: !1309)
!1369 = !DILocation(line: 563, column: 24, scope: !1309)
!1370 = !DILocation(line: 566, column: 11, scope: !1309)
!1371 = !DILocation(line: 568, column: 22, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 568, column: 15)
!1373 = !DILocation(line: 0, scope: !1158, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 568, column: 15, scope: !1372)
!1375 = !DILocation(line: 1361, column: 11, scope: !1158, inlinedAt: !1374)
!1376 = !DILocation(line: 1361, column: 10, scope: !1158, inlinedAt: !1374)
!1377 = !DILocation(line: 568, column: 15, scope: !1309)
!1378 = !DILocation(line: 569, column: 27, scope: !1372)
!1379 = !DILocation(line: 569, column: 13, scope: !1372)
!1380 = !DILocation(line: 0, scope: !1158, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 570, column: 20, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 570, column: 20)
!1383 = !DILocation(line: 1361, column: 11, scope: !1158, inlinedAt: !1381)
!1384 = !DILocation(line: 1361, column: 10, scope: !1158, inlinedAt: !1381)
!1385 = !DILocation(line: 570, column: 20, scope: !1372)
!1386 = !DILocation(line: 571, column: 27, scope: !1382)
!1387 = !DILocation(line: 571, column: 13, scope: !1382)
!1388 = !DILocation(line: 0, scope: !1158, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 572, column: 20, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 572, column: 20)
!1391 = !DILocation(line: 1361, column: 11, scope: !1158, inlinedAt: !1389)
!1392 = !DILocation(line: 1361, column: 10, scope: !1158, inlinedAt: !1389)
!1393 = !DILocation(line: 572, column: 20, scope: !1382)
!1394 = !DILocation(line: 573, column: 27, scope: !1390)
!1395 = !DILocation(line: 573, column: 13, scope: !1390)
!1396 = !DILocation(line: 576, column: 15, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 575, column: 13)
!1398 = !DILocation(line: 582, column: 25, scope: !1309)
!1399 = !DILocation(line: 582, column: 17, scope: !1309)
!1400 = !DILocation(line: 583, column: 19, scope: !1308)
!1401 = !DILocation(line: 583, column: 17, scope: !1308)
!1402 = !DILocation(line: 583, column: 15, scope: !1309)
!1403 = !DILocation(line: 585, column: 31, scope: !1307)
!1404 = !DILocation(line: 0, scope: !1307)
!1405 = !DILocation(line: 588, column: 24, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 588, column: 15)
!1407 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 588, column: 15)
!1408 = !DILocation(line: 588, column: 15, scope: !1407)
!1409 = !DILocation(line: 586, column: 35, scope: !1307)
!1410 = !DILocalVariable(name: "mbs", scope: !1411, file: !138, line: 244, type: !1426)
!1411 = distinct !DISubprogram(name: "mcel_scan", scope: !138, file: !138, line: 230, type: !1412, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1420)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1414, !183, !183}
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !138, line: 143, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 138, size: 64, elements: !1416)
!1416 = !{!1417, !1418, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !1415, file: !138, line: 140, baseType: !718, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1415, file: !138, line: 141, baseType: !185, size: 8, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1415, file: !138, line: 142, baseType: !185, size: 8, offset: 40)
!1420 = !{!1421, !1422, !1423, !1410, !1424, !1425}
!1421 = !DILocalVariable(name: "p", arg: 1, scope: !1411, file: !138, line: 230, type: !183)
!1422 = !DILocalVariable(name: "lim", arg: 2, scope: !1411, file: !138, line: 230, type: !183)
!1423 = !DILocalVariable(name: "c", scope: !1411, file: !138, line: 235, type: !4)
!1424 = !DILocalVariable(name: "ch", scope: !1411, file: !138, line: 267, type: !718)
!1425 = !DILocalVariable(name: "len", scope: !1411, file: !138, line: 268, type: !180)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !724, line: 6, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !726, line: 21, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 13, size: 64, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1428, file: !726, line: 15, baseType: !118, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1428, file: !726, line: 20, baseType: !1432, size: 32, offset: 32)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !726, line: 16, size: 32, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1432, file: !726, line: 18, baseType: !110, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1432, file: !726, line: 19, baseType: !408, size: 32)
!1436 = !DILocation(line: 0, scope: !1411, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 589, column: 24, scope: !1406)
!1438 = !DILocation(line: 235, column: 12, scope: !1411, inlinedAt: !1437)
!1439 = !DILocalVariable(name: "c", arg: 1, scope: !1440, file: !138, line: 215, type: !4)
!1440 = distinct !DISubprogram(name: "mcel_isbasic", scope: !138, file: !138, line: 215, type: !1441, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!311, !4}
!1443 = !{!1439}
!1444 = !DILocation(line: 0, scope: !1440, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 236, column: 7, scope: !1446, inlinedAt: !1437)
!1446 = distinct !DILexicalBlock(scope: !1411, file: !138, line: 236, column: 7)
!1447 = !DILocation(line: 217, column: 10, scope: !1440, inlinedAt: !1445)
!1448 = !DILocation(line: 236, column: 7, scope: !1411, inlinedAt: !1437)
!1449 = !DILocation(line: 244, column: 3, scope: !1411, inlinedAt: !1437)
!1450 = !DILocation(line: 244, column: 30, scope: !1411, inlinedAt: !1437)
!1451 = !{!1452, !1147, i64 0}
!1452 = !{!"", !1147, i64 0, !1067, i64 4}
!1453 = distinct !DIAssignID()
!1454 = !DILocation(line: 267, column: 3, scope: !1411, inlinedAt: !1437)
!1455 = !DILocation(line: 268, column: 16, scope: !1411, inlinedAt: !1437)
!1456 = !DILocation(line: 274, column: 7, scope: !1457, inlinedAt: !1437)
!1457 = distinct !DILexicalBlock(scope: !1411, file: !138, line: 274, column: 7)
!1458 = !DILocation(line: 274, column: 7, scope: !1411, inlinedAt: !1437)
!1459 = !{!"branch_weights", i32 1, i32 2000}
!1460 = !DILocation(line: 280, column: 1, scope: !1411, inlinedAt: !1437)
!1461 = !DILocation(line: 589, column: 21, scope: !1406)
!1462 = !DILocation(line: 590, column: 19, scope: !1307)
!1463 = !DILocation(line: 591, column: 34, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 590, column: 19)
!1465 = !DILocation(line: 591, column: 47, scope: !1464)
!1466 = !DILocalVariable(name: "__dest", arg: 1, scope: !1467, file: !1468, line: 42, type: !1471)
!1467 = distinct !DISubprogram(name: "mempcpy", scope: !1468, file: !1468, line: 42, type: !1469, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1472)
!1468 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!178, !1471, !1293, !180}
!1471 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1472 = !{!1466, !1473, !1474}
!1473 = !DILocalVariable(name: "__src", arg: 2, scope: !1467, file: !1468, line: 42, type: !1293)
!1474 = !DILocalVariable(name: "__len", arg: 3, scope: !1467, file: !1468, line: 42, type: !180)
!1475 = !DILocation(line: 0, scope: !1467, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 591, column: 25, scope: !1464)
!1477 = !DILocation(line: 45, column: 10, scope: !1467, inlinedAt: !1476)
!1478 = !DILocalVariable(name: "__dest", arg: 1, scope: !1479, file: !1468, line: 26, type: !1471)
!1479 = distinct !DISubprogram(name: "memcpy", scope: !1468, file: !1468, line: 26, type: !1469, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1480)
!1480 = !{!1478, !1481, !1482}
!1481 = !DILocalVariable(name: "__src", arg: 2, scope: !1479, file: !1468, line: 26, type: !1293)
!1482 = !DILocalVariable(name: "__len", arg: 3, scope: !1479, file: !1468, line: 26, type: !180)
!1483 = !DILocation(line: 0, scope: !1479, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 591, column: 17, scope: !1464)
!1485 = !DILocation(line: 29, column: 10, scope: !1479, inlinedAt: !1484)
!1486 = !DILocation(line: 591, column: 17, scope: !1464)
!1487 = !DILocation(line: 593, column: 31, scope: !1464)
!1488 = !DILocation(line: 593, column: 29, scope: !1464)
!1489 = !DILocation(line: 597, column: 23, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 597, column: 19)
!1491 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 596, column: 13)
!1492 = !DILocation(line: 0, scope: !1490)
!1493 = !DILocation(line: 597, column: 19, scope: !1491)
!1494 = !DILocation(line: 598, column: 32, scope: !1490)
!1495 = !DILocation(line: 598, column: 18, scope: !1490)
!1496 = !DILocation(line: 598, column: 30, scope: !1490)
!1497 = !DILocation(line: 598, column: 17, scope: !1490)
!1498 = !DILocation(line: 600, column: 29, scope: !1490)
!1499 = !DILocation(line: 603, column: 9, scope: !1309)
!1500 = !DILocation(line: 604, column: 9, scope: !1309)
!1501 = !DILocation(line: 611, column: 8, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 611, column: 7)
!1503 = !DILocation(line: 611, column: 7, scope: !1296)
!1504 = !DILocation(line: 612, column: 5, scope: !1502)
!1505 = !DILocation(line: 615, column: 35, scope: !1296)
!1506 = !DILocation(line: 615, column: 27, scope: !1296)
!1507 = !DILocation(line: 615, column: 19, scope: !1296)
!1508 = !DILocation(line: 617, column: 24, scope: !1296)
!1509 = !DILocation(line: 617, column: 18, scope: !1296)
!1510 = !DILocation(line: 618, column: 40, scope: !1296)
!1511 = !DILocation(line: 618, column: 16, scope: !1296)
!1512 = !DILocation(line: 618, column: 14, scope: !1296)
!1513 = !DILocation(line: 619, column: 39, scope: !1296)
!1514 = !DILocalVariable(name: "__dest", arg: 1, scope: !1515, file: !1468, line: 84, type: !1518)
!1515 = distinct !DISubprogram(name: "stpcpy", scope: !1468, file: !1468, line: 84, type: !1516, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1519)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!177, !1518, !1136}
!1518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!1519 = !{!1514, !1520}
!1520 = !DILocalVariable(name: "__src", arg: 2, scope: !1515, file: !1468, line: 84, type: !1136)
!1521 = !DILocation(line: 0, scope: !1515, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 619, column: 19, scope: !1296)
!1523 = !DILocation(line: 86, column: 10, scope: !1515, inlinedAt: !1522)
!1524 = !DILocation(line: 0, scope: !1515, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 619, column: 11, scope: !1296)
!1526 = !DILocation(line: 86, column: 10, scope: !1515, inlinedAt: !1525)
!1527 = !DILocation(line: 0, scope: !1515, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 619, column: 3, scope: !1296)
!1529 = !DILocation(line: 86, column: 10, scope: !1515, inlinedAt: !1528)
!1530 = !DILocation(line: 621, column: 22, scope: !1296)
!1531 = !DILocation(line: 621, column: 16, scope: !1296)
!1532 = !DILocation(line: 622, column: 14, scope: !1296)
!1533 = !DILocation(line: 622, column: 25, scope: !1296)
!1534 = !DILocation(line: 622, column: 12, scope: !1296)
!1535 = !DILocation(line: 624, column: 18, scope: !1296)
!1536 = !DILocation(line: 625, column: 25, scope: !1296)
!1537 = !DILocation(line: 625, column: 14, scope: !1296)
!1538 = !DILocation(line: 628, column: 3, scope: !1296)
!1539 = !DILocation(line: 631, column: 17, scope: !1296)
!1540 = !DILocation(line: 631, column: 9, scope: !1296)
!1541 = !DILocation(line: 632, column: 32, scope: !1296)
!1542 = !DILocation(line: 632, column: 45, scope: !1296)
!1543 = !DILocation(line: 632, column: 51, scope: !1296)
!1544 = !DILocation(line: 632, column: 23, scope: !1296)
!1545 = !DILocation(line: 632, column: 21, scope: !1296)
!1546 = !DILocation(line: 633, column: 35, scope: !1296)
!1547 = !DILocation(line: 633, column: 48, scope: !1296)
!1548 = !DILocalVariable(name: "__dest", arg: 1, scope: !1549, file: !1468, line: 57, type: !178)
!1549 = distinct !DISubprogram(name: "memset", scope: !1468, file: !1468, line: 57, type: !1550, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1552)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!178, !178, !118, !180}
!1552 = !{!1548, !1553, !1554}
!1553 = !DILocalVariable(name: "__ch", arg: 2, scope: !1549, file: !1468, line: 57, type: !118)
!1554 = !DILocalVariable(name: "__len", arg: 3, scope: !1549, file: !1468, line: 57, type: !180)
!1555 = !DILocation(line: 0, scope: !1549, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 633, column: 3, scope: !1296)
!1557 = !DILocation(line: 59, column: 10, scope: !1549, inlinedAt: !1556)
!1558 = !DILocation(line: 634, column: 3, scope: !1296)
!1559 = !DILocation(line: 634, column: 41, scope: !1296)
!1560 = !DILocation(line: 636, column: 13, scope: !1296)
!1561 = !DILocation(line: 636, column: 11, scope: !1296)
!1562 = !DILocation(line: 637, column: 18, scope: !1296)
!1563 = !DILocation(line: 637, column: 16, scope: !1296)
!1564 = !DILocation(line: 638, column: 17, scope: !1296)
!1565 = !DILocation(line: 642, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 642, column: 7)
!1567 = !DILocation(line: 642, column: 14, scope: !1566)
!1568 = !DILocation(line: 642, column: 7, scope: !1296)
!1569 = !DILocation(line: 645, column: 19, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 645, column: 5)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 645, column: 5)
!1572 = !DILocation(line: 645, column: 5, scope: !1571)
!1573 = !DILocation(line: 643, column: 10, scope: !1566)
!1574 = !DILocation(line: 643, column: 8, scope: !1566)
!1575 = !DILocation(line: 643, column: 5, scope: !1566)
!1576 = !DILocation(line: 646, column: 22, scope: !1570)
!1577 = !DILocation(line: 646, column: 13, scope: !1570)
!1578 = !DILocation(line: 646, column: 10, scope: !1570)
!1579 = !DILocation(line: 645, column: 33, scope: !1570)
!1580 = distinct !{!1580, !1572, !1581, !1193}
!1581 = !DILocation(line: 646, column: 34, scope: !1571)
!1582 = !DILocation(line: 648, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 648, column: 7)
!1584 = !DILocation(line: 648, column: 23, scope: !1583)
!1585 = !DILocation(line: 648, column: 34, scope: !1583)
!1586 = !DILocation(line: 648, column: 26, scope: !1583)
!1587 = !DILocation(line: 648, column: 41, scope: !1583)
!1588 = !DILocation(line: 648, column: 7, scope: !1296)
!1589 = !DILocation(line: 649, column: 5, scope: !1583)
!1590 = !DILocation(line: 651, column: 10, scope: !1296)
!1591 = !DILocation(line: 651, column: 3, scope: !1296)
!1592 = !DISubprogram(name: "bindtextdomain", scope: !1128, file: !1128, line: 86, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!177, !183, !183}
!1595 = !DISubprogram(name: "textdomain", scope: !1128, file: !1128, line: 82, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1596 = !DISubprogram(name: "atexit", scope: !1270, file: !1270, line: 602, type: !1597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!118, !694}
!1599 = !DISubprogram(name: "getopt_long", scope: !617, file: !617, line: 66, type: !1600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!118, !118, !1602, !183, !1604, !622}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!1605 = distinct !DISubprogram(name: "build_type_arg", scope: !2, file: !2, line: 264, type: !1606, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1609)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!311, !1608, !593, !177}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1609 = !{!1610, !1611, !1612, !1613, !1614}
!1610 = !DILocalVariable(name: "typep", arg: 1, scope: !1605, file: !2, line: 264, type: !1608)
!1611 = !DILocalVariable(name: "regexp", arg: 2, scope: !1605, file: !2, line: 265, type: !593)
!1612 = !DILocalVariable(name: "fastmap", arg: 3, scope: !1605, file: !2, line: 265, type: !177)
!1613 = !DILocalVariable(name: "errmsg", scope: !1605, file: !2, line: 267, type: !183)
!1614 = !DILocalVariable(name: "rval", scope: !1605, file: !2, line: 268, type: !311)
!1615 = !DILocation(line: 0, scope: !1605)
!1616 = !DILocation(line: 270, column: 12, scope: !1605)
!1617 = !DILocation(line: 270, column: 11, scope: !1605)
!1618 = !DILocation(line: 270, column: 3, scope: !1605)
!1619 = !DILocation(line: 275, column: 14, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 271, column: 5)
!1621 = !DILocation(line: 276, column: 7, scope: !1620)
!1622 = !DILocation(line: 278, column: 22, scope: !1620)
!1623 = !DILocation(line: 278, column: 14, scope: !1620)
!1624 = !DILocation(line: 281, column: 15, scope: !1620)
!1625 = !DILocation(line: 280, column: 25, scope: !1620)
!1626 = !DILocation(line: 281, column: 23, scope: !1620)
!1627 = !{!1628, !1066, i64 32}
!1628 = !{!"re_pattern_buffer", !1066, i64 0, !1349, i64 8, !1349, i64 16, !1349, i64 24, !1066, i64 32, !1066, i64 40, !1349, i64 48, !1147, i64 56, !1147, i64 56, !1147, i64 56, !1147, i64 56, !1147, i64 56, !1147, i64 56, !1147, i64 56}
!1629 = !DILocation(line: 282, column: 15, scope: !1620)
!1630 = !DILocation(line: 282, column: 25, scope: !1620)
!1631 = !{!1628, !1066, i64 40}
!1632 = !DILocation(line: 283, column: 25, scope: !1620)
!1633 = !DILocation(line: 285, column: 36, scope: !1620)
!1634 = !DILocation(line: 285, column: 44, scope: !1620)
!1635 = !DILocation(line: 285, column: 16, scope: !1620)
!1636 = !DILocation(line: 286, column: 11, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 286, column: 11)
!1638 = !DILocation(line: 286, column: 11, scope: !1620)
!1639 = !DILocation(line: 287, column: 9, scope: !1637)
!1640 = !DILocation(line: 293, column: 3, scope: !1605)
!1641 = !DISubprogram(name: "strlen", scope: !1266, file: !1266, line: 407, type: !1642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!182, !183}
!1644 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1270, file: !1270, line: 98, type: !1645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!180}
!1647 = !DISubprogram(name: "mbrtoc32", scope: !719, file: !719, line: 57, type: !1648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!180, !1650, !1136, !180, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1654 = distinct !DISubprogram(name: "nl_file", scope: !2, file: !2, line: 458, type: !1655, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!311, !183}
!1657 = !{!1658, !1659, !1660}
!1658 = !DILocalVariable(name: "file", arg: 1, scope: !1654, file: !2, line: 458, type: !183)
!1659 = !DILocalVariable(name: "stream", scope: !1654, file: !2, line: 460, type: !343)
!1660 = !DILocalVariable(name: "err", scope: !1654, file: !2, line: 482, type: !118)
!1661 = !DILocation(line: 0, scope: !1654)
!1662 = !DILocation(line: 0, scope: !1158, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 462, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 462, column: 7)
!1665 = !DILocation(line: 1361, column: 11, scope: !1158, inlinedAt: !1663)
!1666 = !DILocation(line: 1361, column: 10, scope: !1158, inlinedAt: !1663)
!1667 = !DILocation(line: 462, column: 7, scope: !1654)
!1668 = !DILocation(line: 464, column: 23, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 463, column: 5)
!1670 = !DILocation(line: 465, column: 16, scope: !1669)
!1671 = !DILocation(line: 467, column: 5, scope: !1669)
!1672 = !DILocation(line: 470, column: 16, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 469, column: 5)
!1674 = !DILocation(line: 471, column: 18, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 471, column: 11)
!1676 = !DILocation(line: 471, column: 11, scope: !1673)
!1677 = !DILocation(line: 473, column: 11, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 472, column: 9)
!1679 = !DILocation(line: 474, column: 11, scope: !1678)
!1680 = !DILocation(line: 0, scope: !1664)
!1681 = !DILocation(line: 478, column: 3, scope: !1654)
!1682 = !DILocalVariable(name: "fp", arg: 1, scope: !1683, file: !2, line: 429, type: !343)
!1683 = distinct !DISubprogram(name: "process_file", scope: !2, file: !2, line: 429, type: !1684, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !343}
!1686 = !{!1682}
!1687 = !DILocation(line: 0, scope: !1683, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 480, column: 3, scope: !1654)
!1689 = !DILocation(line: 431, column: 3, scope: !1683, inlinedAt: !1688)
!1690 = !DILocation(line: 431, column: 10, scope: !1683, inlinedAt: !1688)
!1691 = !DILocation(line: 409, column: 25, scope: !1692, inlinedAt: !1697)
!1692 = distinct !DISubprogram(name: "check_section", scope: !2, file: !2, line: 407, type: !1693, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!170}
!1695 = !{!1696}
!1696 = !DILocalVariable(name: "len", scope: !1692, file: !2, line: 409, type: !180)
!1697 = distinct !DILocation(line: 433, column: 15, scope: !1698, inlinedAt: !1688)
!1698 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 432, column: 5)
!1699 = !{!1700, !1349, i64 8}
!1700 = !{!"linebuffer", !1349, i64 0, !1349, i64 8, !1066, i64 16}
!1701 = !DILocation(line: 409, column: 32, scope: !1692, inlinedAt: !1697)
!1702 = !DILocation(line: 0, scope: !1692, inlinedAt: !1697)
!1703 = !DILocation(line: 411, column: 13, scope: !1704, inlinedAt: !1697)
!1704 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 411, column: 7)
!1705 = !DILocation(line: 411, column: 11, scope: !1704, inlinedAt: !1697)
!1706 = !DILocation(line: 411, column: 29, scope: !1704, inlinedAt: !1697)
!1707 = !DILocation(line: 412, column: 27, scope: !1704, inlinedAt: !1697)
!1708 = !{!1700, !1066, i64 16}
!1709 = !DILocation(line: 412, column: 35, scope: !1704, inlinedAt: !1697)
!1710 = !DILocalVariable(name: "__s1", arg: 1, scope: !1711, file: !1159, line: 974, type: !1294)
!1711 = distinct !DISubprogram(name: "memeq", scope: !1159, file: !1159, line: 974, type: !1712, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!311, !1294, !1294, !180}
!1714 = !{!1710, !1715, !1716}
!1715 = !DILocalVariable(name: "__s2", arg: 2, scope: !1711, file: !1159, line: 974, type: !1294)
!1716 = !DILocalVariable(name: "__n", arg: 3, scope: !1711, file: !1159, line: 974, type: !180)
!1717 = !DILocation(line: 0, scope: !1711, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 412, column: 11, scope: !1704, inlinedAt: !1697)
!1719 = !DILocation(line: 976, column: 11, scope: !1711, inlinedAt: !1718)
!1720 = !DILocation(line: 976, column: 10, scope: !1711, inlinedAt: !1718)
!1721 = !DILocation(line: 411, column: 7, scope: !1692, inlinedAt: !1697)
!1722 = !DILocation(line: 414, column: 14, scope: !1723, inlinedAt: !1697)
!1723 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 414, column: 7)
!1724 = !DILocation(line: 414, column: 11, scope: !1723, inlinedAt: !1697)
!1725 = !DILocation(line: 415, column: 7, scope: !1723, inlinedAt: !1697)
!1726 = !DILocation(line: 415, column: 34, scope: !1723, inlinedAt: !1697)
!1727 = !DILocation(line: 0, scope: !1711, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 415, column: 10, scope: !1723, inlinedAt: !1697)
!1729 = !DILocation(line: 976, column: 11, scope: !1711, inlinedAt: !1728)
!1730 = !DILocation(line: 976, column: 10, scope: !1711, inlinedAt: !1728)
!1731 = !DILocation(line: 414, column: 7, scope: !1692, inlinedAt: !1697)
!1732 = !DILocation(line: 417, column: 14, scope: !1733, inlinedAt: !1697)
!1733 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 417, column: 7)
!1734 = !DILocation(line: 417, column: 11, scope: !1733, inlinedAt: !1697)
!1735 = !DILocation(line: 418, column: 7, scope: !1733, inlinedAt: !1697)
!1736 = !DILocation(line: 418, column: 34, scope: !1733, inlinedAt: !1697)
!1737 = !DILocation(line: 0, scope: !1711, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 418, column: 10, scope: !1733, inlinedAt: !1697)
!1739 = !DILocation(line: 976, column: 11, scope: !1711, inlinedAt: !1738)
!1740 = !DILocation(line: 976, column: 10, scope: !1711, inlinedAt: !1738)
!1741 = !DILocation(line: 417, column: 7, scope: !1692, inlinedAt: !1697)
!1742 = !DILocation(line: 420, column: 11, scope: !1743, inlinedAt: !1697)
!1743 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 420, column: 7)
!1744 = !DILocation(line: 421, column: 7, scope: !1743, inlinedAt: !1697)
!1745 = !DILocation(line: 421, column: 34, scope: !1743, inlinedAt: !1697)
!1746 = !DILocation(line: 0, scope: !1711, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 421, column: 10, scope: !1743, inlinedAt: !1697)
!1748 = !DILocation(line: 976, column: 11, scope: !1711, inlinedAt: !1747)
!1749 = !DILocation(line: 976, column: 10, scope: !1711, inlinedAt: !1747)
!1750 = !DILocation(line: 420, column: 7, scope: !1692, inlinedAt: !1697)
!1751 = !DILocation(line: 325, column: 18, scope: !1752, inlinedAt: !1753)
!1752 = distinct !DISubprogram(name: "proc_header", scope: !2, file: !2, line: 323, type: !601, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!1753 = distinct !DILocation(line: 436, column: 11, scope: !1754, inlinedAt: !1688)
!1754 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 434, column: 9)
!1755 = !DILocation(line: 325, column: 16, scope: !1752, inlinedAt: !1753)
!1756 = !DILocation(line: 326, column: 17, scope: !1752, inlinedAt: !1753)
!1757 = !DILocation(line: 313, column: 7, scope: !1758, inlinedAt: !1760)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 313, column: 7)
!1759 = distinct !DISubprogram(name: "reset_lineno", scope: !2, file: !2, line: 311, type: !601, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!1760 = distinct !DILocation(line: 327, column: 3, scope: !1752, inlinedAt: !1753)
!1761 = !DILocation(line: 313, column: 7, scope: !1759, inlinedAt: !1760)
!1762 = !DILocation(line: 315, column: 17, scope: !1763, inlinedAt: !1760)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 314, column: 5)
!1764 = !DILocation(line: 315, column: 15, scope: !1763, inlinedAt: !1760)
!1765 = !DILocation(line: 316, column: 24, scope: !1763, inlinedAt: !1760)
!1766 = !DILocation(line: 317, column: 5, scope: !1763, inlinedAt: !1760)
!1767 = !DILocalVariable(name: "__c", arg: 1, scope: !1768, file: !1769, line: 108, type: !118)
!1768 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1769, file: !1769, line: 108, type: !1770, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1772)
!1769 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!118, !118}
!1772 = !{!1767}
!1773 = !DILocation(line: 0, scope: !1768, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 328, column: 3, scope: !1752, inlinedAt: !1753)
!1775 = !DILocation(line: 110, column: 10, scope: !1768, inlinedAt: !1774)
!1776 = !{!1777, !1066, i64 40}
!1777 = !{!"_IO_FILE", !1147, i64 0, !1066, i64 8, !1066, i64 16, !1066, i64 24, !1066, i64 32, !1066, i64 40, !1066, i64 48, !1066, i64 56, !1066, i64 64, !1066, i64 72, !1066, i64 80, !1066, i64 88, !1066, i64 96, !1066, i64 104, !1147, i64 112, !1147, i64 116, !1349, i64 120, !1188, i64 128, !1067, i64 130, !1067, i64 131, !1066, i64 136, !1349, i64 144, !1066, i64 152, !1066, i64 160, !1066, i64 168, !1066, i64 176, !1349, i64 184, !1147, i64 192, !1067, i64 196}
!1778 = !{!1777, !1066, i64 48}
!1779 = !{!"branch_weights", i32 2000, i32 1}
!1780 = !DILocation(line: 336, column: 18, scope: !1781, inlinedAt: !1782)
!1781 = distinct !DISubprogram(name: "proc_body", scope: !2, file: !2, line: 334, type: !601, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!1782 = distinct !DILocation(line: 439, column: 11, scope: !1754, inlinedAt: !1688)
!1783 = !DILocation(line: 336, column: 16, scope: !1781, inlinedAt: !1782)
!1784 = !DILocation(line: 337, column: 17, scope: !1781, inlinedAt: !1782)
!1785 = !DILocation(line: 313, column: 7, scope: !1758, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 338, column: 3, scope: !1781, inlinedAt: !1782)
!1787 = !DILocation(line: 313, column: 7, scope: !1759, inlinedAt: !1786)
!1788 = !DILocation(line: 315, column: 17, scope: !1763, inlinedAt: !1786)
!1789 = !DILocation(line: 315, column: 15, scope: !1763, inlinedAt: !1786)
!1790 = !DILocation(line: 316, column: 24, scope: !1763, inlinedAt: !1786)
!1791 = !DILocation(line: 317, column: 5, scope: !1763, inlinedAt: !1786)
!1792 = !DILocation(line: 0, scope: !1768, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 339, column: 3, scope: !1781, inlinedAt: !1782)
!1794 = !DILocation(line: 110, column: 10, scope: !1768, inlinedAt: !1793)
!1795 = !DILocation(line: 347, column: 18, scope: !1796, inlinedAt: !1797)
!1796 = distinct !DISubprogram(name: "proc_footer", scope: !2, file: !2, line: 345, type: !601, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!1797 = distinct !DILocation(line: 442, column: 11, scope: !1754, inlinedAt: !1688)
!1798 = !DILocation(line: 347, column: 16, scope: !1796, inlinedAt: !1797)
!1799 = !DILocation(line: 348, column: 17, scope: !1796, inlinedAt: !1797)
!1800 = !DILocation(line: 313, column: 7, scope: !1758, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 349, column: 3, scope: !1796, inlinedAt: !1797)
!1802 = !DILocation(line: 313, column: 7, scope: !1759, inlinedAt: !1801)
!1803 = !DILocation(line: 315, column: 17, scope: !1763, inlinedAt: !1801)
!1804 = !DILocation(line: 315, column: 15, scope: !1763, inlinedAt: !1801)
!1805 = !DILocation(line: 316, column: 24, scope: !1763, inlinedAt: !1801)
!1806 = !DILocation(line: 317, column: 5, scope: !1763, inlinedAt: !1801)
!1807 = !DILocation(line: 0, scope: !1768, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 350, column: 3, scope: !1796, inlinedAt: !1797)
!1809 = !DILocation(line: 110, column: 10, scope: !1768, inlinedAt: !1808)
!1810 = !DILocation(line: 360, column: 12, scope: !600, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 445, column: 11, scope: !1754, inlinedAt: !1688)
!1812 = !DILocation(line: 360, column: 11, scope: !600, inlinedAt: !1811)
!1813 = !DILocation(line: 360, column: 3, scope: !600, inlinedAt: !1811)
!1814 = !DILocation(line: 363, column: 11, scope: !1815, inlinedAt: !1811)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 363, column: 11)
!1816 = distinct !DILexicalBlock(scope: !600, file: !2, line: 361, column: 5)
!1817 = !DILocation(line: 363, column: 22, scope: !1815, inlinedAt: !1811)
!1818 = !DILocation(line: 363, column: 11, scope: !1816, inlinedAt: !1811)
!1819 = !DILocation(line: 365, column: 17, scope: !1820, inlinedAt: !1811)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 365, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 364, column: 9)
!1822 = !DILocation(line: 365, column: 35, scope: !1820, inlinedAt: !1811)
!1823 = !DILocation(line: 365, column: 38, scope: !1820, inlinedAt: !1811)
!1824 = !DILocation(line: 365, column: 52, scope: !1820, inlinedAt: !1811)
!1825 = !DILocation(line: 365, column: 15, scope: !1821, inlinedAt: !1811)
!1826 = !DILocation(line: 301, column: 7, scope: !1827, inlinedAt: !1829)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 301, column: 7)
!1828 = distinct !DISubprogram(name: "print_lineno", scope: !2, file: !2, line: 299, type: !601, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106)
!1829 = distinct !DILocation(line: 367, column: 15, scope: !1830, inlinedAt: !1811)
!1830 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 366, column: 13)
!1831 = !DILocation(line: 301, column: 7, scope: !1828, inlinedAt: !1829)
!1832 = !DILocation(line: 302, column: 5, scope: !1827, inlinedAt: !1829)
!1833 = !DILocation(line: 304, column: 3, scope: !1828, inlinedAt: !1829)
!1834 = !DILocation(line: 306, column: 7, scope: !1835, inlinedAt: !1829)
!1835 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 306, column: 7)
!1836 = !DILocation(line: 306, column: 7, scope: !1828, inlinedAt: !1829)
!1837 = !DILocation(line: 307, column: 22, scope: !1835, inlinedAt: !1829)
!1838 = !DILocation(line: 307, column: 5, scope: !1835, inlinedAt: !1829)
!1839 = !DILocation(line: 368, column: 27, scope: !1830, inlinedAt: !1811)
!1840 = !DILocation(line: 369, column: 13, scope: !1830, inlinedAt: !1811)
!1841 = !DILocation(line: 371, column: 13, scope: !1820, inlinedAt: !1811)
!1842 = !DILocation(line: 301, column: 7, scope: !1827, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 374, column: 9, scope: !1815, inlinedAt: !1811)
!1844 = !DILocation(line: 301, column: 7, scope: !1828, inlinedAt: !1843)
!1845 = !DILocation(line: 302, column: 5, scope: !1827, inlinedAt: !1843)
!1846 = !DILocation(line: 304, column: 3, scope: !1828, inlinedAt: !1843)
!1847 = !DILocation(line: 306, column: 7, scope: !1835, inlinedAt: !1843)
!1848 = !DILocation(line: 306, column: 7, scope: !1828, inlinedAt: !1843)
!1849 = !DILocation(line: 307, column: 22, scope: !1835, inlinedAt: !1843)
!1850 = !DILocation(line: 307, column: 5, scope: !1835, inlinedAt: !1843)
!1851 = !DILocation(line: 377, column: 13, scope: !1852, inlinedAt: !1811)
!1852 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 377, column: 11)
!1853 = !DILocation(line: 377, column: 11, scope: !1816, inlinedAt: !1811)
!1854 = !DILocation(line: 301, column: 7, scope: !1827, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 378, column: 9, scope: !1852, inlinedAt: !1811)
!1856 = !DILocation(line: 301, column: 7, scope: !1828, inlinedAt: !1855)
!1857 = !DILocation(line: 302, column: 5, scope: !1827, inlinedAt: !1855)
!1858 = !DILocation(line: 304, column: 3, scope: !1828, inlinedAt: !1855)
!1859 = !DILocation(line: 306, column: 7, scope: !1835, inlinedAt: !1855)
!1860 = !DILocation(line: 306, column: 7, scope: !1828, inlinedAt: !1855)
!1861 = !DILocation(line: 307, column: 22, scope: !1835, inlinedAt: !1855)
!1862 = !DILocation(line: 307, column: 5, scope: !1835, inlinedAt: !1855)
!1863 = !DILocation(line: 380, column: 9, scope: !1852, inlinedAt: !1811)
!1864 = !DILocation(line: 383, column: 7, scope: !1816, inlinedAt: !1811)
!1865 = !DILocation(line: 384, column: 7, scope: !1816, inlinedAt: !1811)
!1866 = !DILocation(line: 386, column: 26, scope: !1816, inlinedAt: !1811)
!1867 = !DILocation(line: 386, column: 50, scope: !1816, inlinedAt: !1811)
!1868 = !DILocation(line: 386, column: 58, scope: !1816, inlinedAt: !1811)
!1869 = !DILocation(line: 386, column: 15, scope: !1816, inlinedAt: !1811)
!1870 = !DILocation(line: 386, column: 7, scope: !1816, inlinedAt: !1811)
!1871 = !DILocation(line: 390, column: 11, scope: !1872, inlinedAt: !1811)
!1872 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 388, column: 9)
!1873 = !DILocation(line: 393, column: 11, scope: !1872, inlinedAt: !1811)
!1874 = !DILocation(line: 394, column: 11, scope: !1872, inlinedAt: !1811)
!1875 = !DILocation(line: 301, column: 7, scope: !1827, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 397, column: 11, scope: !1872, inlinedAt: !1811)
!1877 = !DILocation(line: 301, column: 7, scope: !1828, inlinedAt: !1876)
!1878 = !DILocation(line: 302, column: 5, scope: !1827, inlinedAt: !1876)
!1879 = !DILocation(line: 304, column: 3, scope: !1828, inlinedAt: !1876)
!1880 = !DILocation(line: 306, column: 7, scope: !1835, inlinedAt: !1876)
!1881 = !DILocation(line: 306, column: 7, scope: !1828, inlinedAt: !1876)
!1882 = !DILocation(line: 307, column: 22, scope: !1835, inlinedAt: !1876)
!1883 = !DILocation(line: 307, column: 5, scope: !1835, inlinedAt: !1876)
!1884 = !DILocation(line: 401, column: 3, scope: !600, inlinedAt: !1811)
!1885 = !DILocation(line: 449, column: 11, scope: !1886, inlinedAt: !1688)
!1886 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 449, column: 11)
!1887 = !DILocalVariable(name: "__stream", arg: 1, scope: !1888, file: !1769, line: 135, type: !343)
!1888 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1769, file: !1769, line: 135, type: !1889, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!118, !343}
!1891 = !{!1887}
!1892 = !DILocation(line: 0, scope: !1888, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 449, column: 11, scope: !1886, inlinedAt: !1688)
!1894 = !DILocation(line: 137, column: 10, scope: !1888, inlinedAt: !1893)
!1895 = !{!1777, !1147, i64 0}
!1896 = !DILocation(line: 449, column: 11, scope: !1698, inlinedAt: !1688)
!1897 = distinct !{!1897, !1689, !1898, !1193}
!1898 = !DILocation(line: 451, column: 5, scope: !1683, inlinedAt: !1688)
!1899 = !DILocation(line: 948, column: 21, scope: !1900, inlinedAt: !1903)
!1900 = distinct !DISubprogram(name: "write_error", scope: !117, file: !117, line: 946, type: !601, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1901)
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "saved_errno", scope: !1900, file: !117, line: 948, type: !118)
!1903 = distinct !DILocation(line: 450, column: 9, scope: !1886, inlinedAt: !1688)
!1904 = !DILocation(line: 0, scope: !1900, inlinedAt: !1903)
!1905 = !DILocation(line: 949, column: 3, scope: !1900, inlinedAt: !1903)
!1906 = !DILocation(line: 950, column: 11, scope: !1900, inlinedAt: !1903)
!1907 = !DILocation(line: 950, column: 3, scope: !1900, inlinedAt: !1903)
!1908 = !DILocation(line: 951, column: 3, scope: !1900, inlinedAt: !1903)
!1909 = !DILocation(line: 952, column: 3, scope: !1900, inlinedAt: !1903)
!1910 = !DILocation(line: 482, column: 13, scope: !1654)
!1911 = !DILocation(line: 0, scope: !1888, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 483, column: 8, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 483, column: 7)
!1914 = !DILocation(line: 137, column: 10, scope: !1888, inlinedAt: !1912)
!1915 = !DILocation(line: 483, column: 8, scope: !1913)
!1916 = !DILocation(line: 483, column: 7, scope: !1654)
!1917 = !DILocation(line: 0, scope: !1158, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 485, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 485, column: 7)
!1920 = !DILocation(line: 1361, column: 11, scope: !1158, inlinedAt: !1918)
!1921 = !DILocation(line: 1361, column: 10, scope: !1158, inlinedAt: !1918)
!1922 = !DILocation(line: 485, column: 7, scope: !1654)
!1923 = !DILocation(line: 486, column: 5, scope: !1919)
!1924 = !DILocation(line: 487, column: 12, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 487, column: 12)
!1926 = !DILocation(line: 487, column: 28, scope: !1925)
!1927 = !DILocation(line: 487, column: 33, scope: !1925)
!1928 = !DILocation(line: 488, column: 11, scope: !1925)
!1929 = !DILocation(line: 488, column: 5, scope: !1925)
!1930 = !DILocation(line: 489, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 489, column: 7)
!1932 = !DILocation(line: 489, column: 7, scope: !1654)
!1933 = !DILocation(line: 495, column: 1, scope: !1654)
!1934 = !DISubprogram(name: "__errno_location", scope: !1935, file: !1935, line: 37, type: !1936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1935 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!622}
!1938 = !DISubprogram(name: "__overflow", scope: !1141, file: !1141, line: 886, type: !1939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!118, !343, !118}
!1941 = !DISubprogram(name: "re_search", scope: !248, file: !248, line: 564, type: !1942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1944, !593, !183, !1944, !1944, !1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !248, line: 490, baseType: !118)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !248, line: 497, size: 192, elements: !1947)
!1947 = !{!1948, !1950, !1952}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !1946, file: !248, line: 499, baseType: !1949, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !248, line: 55, baseType: !110)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1946, file: !248, line: 500, baseType: !1951, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1946, file: !248, line: 501, baseType: !1951, size: 64, offset: 128)
!1953 = !DISubprogram(name: "fflush_unlocked", scope: !1141, file: !1141, line: 239, type: !1889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1954 = !DISubprogram(name: "clearerr_unlocked", scope: !1141, file: !1141, line: 794, type: !1684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1955 = !DISubprogram(name: "re_compile_pattern", scope: !248, file: !248, line: 548, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!183, !183, !180, !593}
!1958 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !637, file: !637, line: 50, type: !1096, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !1959)
!1959 = !{!1960}
!1960 = !DILocalVariable(name: "file", arg: 1, scope: !1958, file: !637, line: 50, type: !183)
!1961 = !DILocation(line: 0, scope: !1958)
!1962 = !DILocation(line: 52, column: 13, scope: !1958)
!1963 = !DILocation(line: 53, column: 1, scope: !1958)
!1964 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !637, file: !637, line: 87, type: !1965, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !311}
!1967 = !{!1968}
!1968 = !DILocalVariable(name: "ignore", arg: 1, scope: !1964, file: !637, line: 87, type: !311)
!1969 = !DILocation(line: 0, scope: !1964)
!1970 = !DILocation(line: 89, column: 16, scope: !1964)
!1971 = !{!1972, !1972, i64 0}
!1972 = !{!"_Bool", !1067, i64 0}
!1973 = !DILocation(line: 90, column: 1, scope: !1964)
!1974 = distinct !DISubprogram(name: "close_stdout", scope: !637, file: !637, line: 116, type: !601, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !1975)
!1975 = !{!1976}
!1976 = !DILocalVariable(name: "write_error", scope: !1977, file: !637, line: 121, type: !183)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !637, line: 120, column: 5)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !637, line: 118, column: 7)
!1979 = !DILocation(line: 118, column: 21, scope: !1978)
!1980 = !DILocation(line: 118, column: 7, scope: !1978)
!1981 = !DILocation(line: 118, column: 29, scope: !1978)
!1982 = !DILocation(line: 119, column: 7, scope: !1978)
!1983 = !DILocation(line: 119, column: 12, scope: !1978)
!1984 = !{i8 0, i8 2}
!1985 = !DILocation(line: 119, column: 25, scope: !1978)
!1986 = !DILocation(line: 119, column: 28, scope: !1978)
!1987 = !DILocation(line: 119, column: 34, scope: !1978)
!1988 = !DILocation(line: 118, column: 7, scope: !1974)
!1989 = !DILocation(line: 121, column: 33, scope: !1977)
!1990 = !DILocation(line: 0, scope: !1977)
!1991 = !DILocation(line: 122, column: 11, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1977, file: !637, line: 122, column: 11)
!1993 = !DILocation(line: 0, scope: !1992)
!1994 = !DILocation(line: 122, column: 11, scope: !1977)
!1995 = !DILocation(line: 123, column: 9, scope: !1992)
!1996 = !DILocation(line: 126, column: 9, scope: !1992)
!1997 = !DILocation(line: 128, column: 14, scope: !1977)
!1998 = !DILocation(line: 128, column: 7, scope: !1977)
!1999 = !DILocation(line: 133, column: 42, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1974, file: !637, line: 133, column: 7)
!2001 = !DILocation(line: 133, column: 28, scope: !2000)
!2002 = !DILocation(line: 133, column: 50, scope: !2000)
!2003 = !DILocation(line: 133, column: 7, scope: !1974)
!2004 = !DILocation(line: 134, column: 12, scope: !2000)
!2005 = !DILocation(line: 134, column: 5, scope: !2000)
!2006 = !DILocation(line: 135, column: 1, scope: !1974)
!2007 = !DISubprogram(name: "_exit", scope: !2008, file: !2008, line: 624, type: !1055, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2008 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2009 = distinct !DISubprogram(name: "verror", scope: !652, file: !652, line: 251, type: !2010, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !118, !118, !183, !662}
!2012 = !{!2013, !2014, !2015, !2016}
!2013 = !DILocalVariable(name: "status", arg: 1, scope: !2009, file: !652, line: 251, type: !118)
!2014 = !DILocalVariable(name: "errnum", arg: 2, scope: !2009, file: !652, line: 251, type: !118)
!2015 = !DILocalVariable(name: "message", arg: 3, scope: !2009, file: !652, line: 251, type: !183)
!2016 = !DILocalVariable(name: "args", arg: 4, scope: !2009, file: !652, line: 251, type: !662)
!2017 = !DILocation(line: 0, scope: !2009)
!2018 = !DILocation(line: 261, column: 3, scope: !2009)
!2019 = !DILocation(line: 265, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2009, file: !652, line: 265, column: 7)
!2021 = !DILocation(line: 265, column: 7, scope: !2009)
!2022 = !DILocation(line: 266, column: 5, scope: !2020)
!2023 = !DILocation(line: 272, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !652, line: 268, column: 5)
!2025 = !DILocation(line: 276, column: 3, scope: !2009)
!2026 = !DILocation(line: 282, column: 1, scope: !2009)
!2027 = distinct !DISubprogram(name: "flush_stdout", scope: !652, file: !652, line: 163, type: !601, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2028)
!2028 = !{!2029}
!2029 = !DILocalVariable(name: "stdout_fd", scope: !2027, file: !652, line: 166, type: !118)
!2030 = !DILocation(line: 0, scope: !2027)
!2031 = !DILocalVariable(name: "fd", arg: 1, scope: !2032, file: !652, line: 145, type: !118)
!2032 = distinct !DISubprogram(name: "is_open", scope: !652, file: !652, line: 145, type: !1770, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2033)
!2033 = !{!2031}
!2034 = !DILocation(line: 0, scope: !2032, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 182, column: 25, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2027, file: !652, line: 182, column: 7)
!2037 = !DILocation(line: 157, column: 15, scope: !2032, inlinedAt: !2035)
!2038 = !DILocation(line: 157, column: 12, scope: !2032, inlinedAt: !2035)
!2039 = !DILocation(line: 182, column: 7, scope: !2027)
!2040 = !DILocation(line: 184, column: 5, scope: !2036)
!2041 = !DILocation(line: 185, column: 1, scope: !2027)
!2042 = distinct !DISubprogram(name: "error_tail", scope: !652, file: !652, line: 219, type: !2010, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2043)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DILocalVariable(name: "status", arg: 1, scope: !2042, file: !652, line: 219, type: !118)
!2045 = !DILocalVariable(name: "errnum", arg: 2, scope: !2042, file: !652, line: 219, type: !118)
!2046 = !DILocalVariable(name: "message", arg: 3, scope: !2042, file: !652, line: 219, type: !183)
!2047 = !DILocalVariable(name: "args", arg: 4, scope: !2042, file: !652, line: 219, type: !662)
!2048 = distinct !DIAssignID()
!2049 = !DILocation(line: 0, scope: !2042)
!2050 = !DILocation(line: 229, column: 13, scope: !2042)
!2051 = !DILocalVariable(name: "__stream", arg: 1, scope: !2052, file: !1132, line: 132, type: !2055)
!2052 = distinct !DISubprogram(name: "vfprintf", scope: !1132, file: !1132, line: 132, type: !2053, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2090)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!118, !2055, !1136, !662}
!2055 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !2059)
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2058, file: !347, line: 51, baseType: !118, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2058, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2058, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2058, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2058, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2058, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2058, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2058, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2058, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2058, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2058, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2058, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2058, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2058, file: !347, line: 70, baseType: !2074, size: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2058, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2058, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2058, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2058, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2058, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2058, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2058, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2058, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2058, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2058, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2058, file: !347, line: 93, baseType: !2074, size: 64, offset: 1344)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2058, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2058, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2058, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2058, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!2090 = !{!2051, !2091, !2092}
!2091 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2052, file: !1132, line: 133, type: !1136)
!2092 = !DILocalVariable(name: "__ap", arg: 3, scope: !2052, file: !1132, line: 133, type: !662)
!2093 = !DILocation(line: 0, scope: !2052, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 229, column: 3, scope: !2042)
!2095 = !DILocation(line: 135, column: 10, scope: !2052, inlinedAt: !2094)
!2096 = !DILocation(line: 232, column: 3, scope: !2042)
!2097 = !DILocation(line: 233, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2042, file: !652, line: 233, column: 7)
!2099 = !DILocation(line: 233, column: 7, scope: !2042)
!2100 = !DILocalVariable(name: "errbuf", scope: !2101, file: !652, line: 193, type: !2105)
!2101 = distinct !DISubprogram(name: "print_errno_message", scope: !652, file: !652, line: 188, type: !1055, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2102)
!2102 = !{!2103, !2104, !2100}
!2103 = !DILocalVariable(name: "errnum", arg: 1, scope: !2101, file: !652, line: 188, type: !118)
!2104 = !DILocalVariable(name: "s", scope: !2101, file: !652, line: 190, type: !183)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 1024)
!2108 = !DILocation(line: 0, scope: !2101, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 234, column: 5, scope: !2098)
!2110 = !DILocation(line: 193, column: 3, scope: !2101, inlinedAt: !2109)
!2111 = !DILocation(line: 195, column: 7, scope: !2101, inlinedAt: !2109)
!2112 = !DILocation(line: 207, column: 9, scope: !2113, inlinedAt: !2109)
!2113 = distinct !DILexicalBlock(scope: !2101, file: !652, line: 207, column: 7)
!2114 = !DILocation(line: 207, column: 7, scope: !2101, inlinedAt: !2109)
!2115 = !DILocation(line: 208, column: 9, scope: !2113, inlinedAt: !2109)
!2116 = !DILocation(line: 208, column: 5, scope: !2113, inlinedAt: !2109)
!2117 = !DILocation(line: 214, column: 3, scope: !2101, inlinedAt: !2109)
!2118 = !DILocation(line: 216, column: 1, scope: !2101, inlinedAt: !2109)
!2119 = !DILocation(line: 234, column: 5, scope: !2098)
!2120 = !DILocation(line: 238, column: 3, scope: !2042)
!2121 = !DILocalVariable(name: "__c", arg: 1, scope: !2122, file: !1769, line: 101, type: !118)
!2122 = distinct !DISubprogram(name: "putc_unlocked", scope: !1769, file: !1769, line: 101, type: !2123, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!118, !118, !2056}
!2125 = !{!2121, !2126}
!2126 = !DILocalVariable(name: "__stream", arg: 2, scope: !2122, file: !1769, line: 101, type: !2056)
!2127 = !DILocation(line: 0, scope: !2122, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 238, column: 3, scope: !2042)
!2129 = !DILocation(line: 103, column: 10, scope: !2122, inlinedAt: !2128)
!2130 = !DILocation(line: 240, column: 3, scope: !2042)
!2131 = !DILocation(line: 241, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2042, file: !652, line: 241, column: 7)
!2133 = !DILocation(line: 241, column: 7, scope: !2042)
!2134 = !DILocation(line: 242, column: 5, scope: !2132)
!2135 = !DILocation(line: 243, column: 1, scope: !2042)
!2136 = !DISubprogram(name: "__vfprintf_chk", scope: !1132, file: !1132, line: 96, type: !2137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!118, !2055, !118, !1136, !662}
!2139 = !DISubprogram(name: "strerror_r", scope: !1266, file: !1266, line: 444, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!177, !118, !177, !180}
!2142 = !DISubprogram(name: "fcntl", scope: !2143, file: !2143, line: 149, type: !2144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2143 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!118, !118, !118, null}
!2146 = distinct !DISubprogram(name: "error", scope: !652, file: !652, line: 285, type: !2147, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !118, !118, !183, null}
!2149 = !{!2150, !2151, !2152, !2153}
!2150 = !DILocalVariable(name: "status", arg: 1, scope: !2146, file: !652, line: 285, type: !118)
!2151 = !DILocalVariable(name: "errnum", arg: 2, scope: !2146, file: !652, line: 285, type: !118)
!2152 = !DILocalVariable(name: "message", arg: 3, scope: !2146, file: !652, line: 285, type: !183)
!2153 = !DILocalVariable(name: "ap", scope: !2146, file: !652, line: 287, type: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1141, line: 52, baseType: !2155)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2156, line: 12, baseType: !2157)
!2156 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !652, baseType: !2158)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 192, elements: !87)
!2159 = distinct !DIAssignID()
!2160 = !DILocation(line: 0, scope: !2146)
!2161 = !DILocation(line: 287, column: 3, scope: !2146)
!2162 = !DILocation(line: 288, column: 3, scope: !2146)
!2163 = !DILocation(line: 289, column: 3, scope: !2146)
!2164 = !DILocation(line: 290, column: 3, scope: !2146)
!2165 = !DILocation(line: 291, column: 1, scope: !2146)
!2166 = !DILocation(line: 0, scope: !659)
!2167 = !DILocation(line: 302, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !659, file: !652, line: 302, column: 7)
!2169 = !DILocation(line: 302, column: 7, scope: !659)
!2170 = !DILocation(line: 307, column: 11, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !652, line: 307, column: 11)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !652, line: 303, column: 5)
!2173 = !DILocation(line: 307, column: 27, scope: !2171)
!2174 = !DILocation(line: 308, column: 11, scope: !2171)
!2175 = !DILocation(line: 308, column: 28, scope: !2171)
!2176 = !DILocation(line: 308, column: 25, scope: !2171)
!2177 = !DILocation(line: 309, column: 15, scope: !2171)
!2178 = !DILocation(line: 309, column: 33, scope: !2171)
!2179 = !DILocation(line: 310, column: 19, scope: !2171)
!2180 = !DILocation(line: 311, column: 22, scope: !2171)
!2181 = !DILocation(line: 311, column: 56, scope: !2171)
!2182 = !DILocation(line: 307, column: 11, scope: !2172)
!2183 = !DILocation(line: 316, column: 21, scope: !2172)
!2184 = !DILocation(line: 317, column: 23, scope: !2172)
!2185 = !DILocation(line: 318, column: 5, scope: !2172)
!2186 = !DILocation(line: 327, column: 3, scope: !659)
!2187 = !DILocation(line: 331, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !659, file: !652, line: 331, column: 7)
!2189 = !DILocation(line: 331, column: 7, scope: !659)
!2190 = !DILocation(line: 332, column: 5, scope: !2188)
!2191 = !DILocation(line: 338, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !652, line: 334, column: 5)
!2193 = !DILocation(line: 346, column: 3, scope: !659)
!2194 = !DILocation(line: 350, column: 3, scope: !659)
!2195 = !DILocation(line: 356, column: 1, scope: !659)
!2196 = distinct !DISubprogram(name: "error_at_line", scope: !652, file: !652, line: 359, type: !2197, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !118, !118, !183, !110, !183, null}
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205}
!2200 = !DILocalVariable(name: "status", arg: 1, scope: !2196, file: !652, line: 359, type: !118)
!2201 = !DILocalVariable(name: "errnum", arg: 2, scope: !2196, file: !652, line: 359, type: !118)
!2202 = !DILocalVariable(name: "file_name", arg: 3, scope: !2196, file: !652, line: 359, type: !183)
!2203 = !DILocalVariable(name: "line_number", arg: 4, scope: !2196, file: !652, line: 360, type: !110)
!2204 = !DILocalVariable(name: "message", arg: 5, scope: !2196, file: !652, line: 360, type: !183)
!2205 = !DILocalVariable(name: "ap", scope: !2196, file: !652, line: 362, type: !2154)
!2206 = distinct !DIAssignID()
!2207 = !DILocation(line: 0, scope: !2196)
!2208 = !DILocation(line: 362, column: 3, scope: !2196)
!2209 = !DILocation(line: 363, column: 3, scope: !2196)
!2210 = !DILocation(line: 364, column: 3, scope: !2196)
!2211 = !DILocation(line: 366, column: 3, scope: !2196)
!2212 = !DILocation(line: 367, column: 1, scope: !2196)
!2213 = distinct !DISubprogram(name: "fdadvise", scope: !953, file: !953, line: 25, type: !2214, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !952, retainedNodes: !2218)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !118, !2216, !2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1141, line: 63, baseType: !369)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !956, line: 51, baseType: !955)
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DILocalVariable(name: "fd", arg: 1, scope: !2213, file: !953, line: 25, type: !118)
!2220 = !DILocalVariable(name: "offset", arg: 2, scope: !2213, file: !953, line: 25, type: !2216)
!2221 = !DILocalVariable(name: "len", arg: 3, scope: !2213, file: !953, line: 25, type: !2216)
!2222 = !DILocalVariable(name: "advice", arg: 4, scope: !2213, file: !953, line: 25, type: !2217)
!2223 = !DILocation(line: 0, scope: !2213)
!2224 = !DILocation(line: 28, column: 3, scope: !2213)
!2225 = !DILocation(line: 30, column: 1, scope: !2213)
!2226 = !DISubprogram(name: "posix_fadvise", scope: !2143, file: !2143, line: 273, type: !2227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!118, !118, !2216, !2216, !118}
!2229 = distinct !DISubprogram(name: "fadvise", scope: !953, file: !953, line: 33, type: !2230, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !952, retainedNodes: !2266)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !2232, !2217}
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2234, file: !347, line: 51, baseType: !118, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2234, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2234, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2234, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2234, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2234, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2234, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2234, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2234, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2234, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2234, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2234, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2234, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2234, file: !347, line: 70, baseType: !2250, size: 64, offset: 832)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2234, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2234, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2234, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2234, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2234, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2234, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2234, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2234, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2234, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2234, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2234, file: !347, line: 93, baseType: !2250, size: 64, offset: 1344)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2234, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2234, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2234, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2234, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!2266 = !{!2267, !2268}
!2267 = !DILocalVariable(name: "fp", arg: 1, scope: !2229, file: !953, line: 33, type: !2232)
!2268 = !DILocalVariable(name: "advice", arg: 2, scope: !2229, file: !953, line: 33, type: !2217)
!2269 = !DILocation(line: 0, scope: !2229)
!2270 = !DILocation(line: 35, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2229, file: !953, line: 35, column: 7)
!2272 = !DILocation(line: 35, column: 7, scope: !2229)
!2273 = !DILocation(line: 36, column: 15, scope: !2271)
!2274 = !DILocation(line: 0, scope: !2213, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 36, column: 5, scope: !2271)
!2276 = !DILocation(line: 28, column: 3, scope: !2213, inlinedAt: !2275)
!2277 = !DILocation(line: 36, column: 5, scope: !2271)
!2278 = !DILocation(line: 37, column: 1, scope: !2229)
!2279 = !DISubprogram(name: "fileno", scope: !1141, file: !1141, line: 809, type: !2280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!118, !2232}
!2282 = distinct !DISubprogram(name: "rpl_fclose", scope: !958, file: !958, line: 58, type: !2283, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !2319)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!118, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2287, file: !347, line: 51, baseType: !118, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2287, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2287, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2287, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2287, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2287, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2287, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2287, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2287, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2287, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2287, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2287, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2287, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2287, file: !347, line: 70, baseType: !2303, size: 64, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2287, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2287, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2287, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2287, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2287, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2287, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2287, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2287, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2287, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2287, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2287, file: !347, line: 93, baseType: !2303, size: 64, offset: 1344)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2287, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2287, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2287, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2287, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DILocalVariable(name: "fp", arg: 1, scope: !2282, file: !958, line: 58, type: !2285)
!2321 = !DILocalVariable(name: "saved_errno", scope: !2282, file: !958, line: 60, type: !118)
!2322 = !DILocalVariable(name: "fd", scope: !2282, file: !958, line: 63, type: !118)
!2323 = !DILocalVariable(name: "result", scope: !2282, file: !958, line: 74, type: !118)
!2324 = !DILocation(line: 0, scope: !2282)
!2325 = !DILocation(line: 63, column: 12, scope: !2282)
!2326 = !DILocation(line: 64, column: 10, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2282, file: !958, line: 64, column: 7)
!2328 = !DILocation(line: 64, column: 7, scope: !2282)
!2329 = !DILocation(line: 65, column: 12, scope: !2327)
!2330 = !DILocation(line: 65, column: 5, scope: !2327)
!2331 = !DILocation(line: 70, column: 9, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2282, file: !958, line: 70, column: 7)
!2333 = !DILocation(line: 70, column: 23, scope: !2332)
!2334 = !DILocation(line: 70, column: 33, scope: !2332)
!2335 = !DILocation(line: 70, column: 26, scope: !2332)
!2336 = !DILocation(line: 70, column: 59, scope: !2332)
!2337 = !DILocation(line: 71, column: 7, scope: !2332)
!2338 = !DILocation(line: 71, column: 10, scope: !2332)
!2339 = !DILocation(line: 70, column: 7, scope: !2282)
!2340 = !DILocation(line: 100, column: 12, scope: !2282)
!2341 = !DILocation(line: 105, column: 7, scope: !2282)
!2342 = !DILocation(line: 72, column: 19, scope: !2332)
!2343 = !DILocation(line: 105, column: 19, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2282, file: !958, line: 105, column: 7)
!2345 = !DILocation(line: 107, column: 13, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2344, file: !958, line: 106, column: 5)
!2347 = !DILocation(line: 109, column: 5, scope: !2346)
!2348 = !DILocation(line: 112, column: 1, scope: !2282)
!2349 = !DISubprogram(name: "fclose", scope: !1141, file: !1141, line: 178, type: !2283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2350 = !DISubprogram(name: "__freading", scope: !2351, file: !2351, line: 51, type: !2283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2351 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2352 = !DISubprogram(name: "lseek", scope: !2008, file: !2008, line: 339, type: !2353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!369, !118, !369, !118}
!2355 = distinct !DISubprogram(name: "rpl_fflush", scope: !960, file: !960, line: 130, type: !2356, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !2392)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!118, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !2360)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2360, file: !347, line: 51, baseType: !118, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2360, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2360, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2360, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2360, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2360, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2360, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2360, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2360, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2360, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2360, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2360, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2360, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2360, file: !347, line: 70, baseType: !2376, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2360, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2360, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2360, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2360, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2360, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2360, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2360, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2360, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2360, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2360, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2360, file: !347, line: 93, baseType: !2376, size: 64, offset: 1344)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2360, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2360, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2360, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2360, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "stream", arg: 1, scope: !2355, file: !960, line: 130, type: !2358)
!2394 = !DILocation(line: 0, scope: !2355)
!2395 = !DILocation(line: 151, column: 14, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2355, file: !960, line: 151, column: 7)
!2397 = !DILocation(line: 151, column: 22, scope: !2396)
!2398 = !DILocation(line: 151, column: 27, scope: !2396)
!2399 = !DILocation(line: 151, column: 7, scope: !2355)
!2400 = !DILocation(line: 152, column: 12, scope: !2396)
!2401 = !DILocation(line: 152, column: 5, scope: !2396)
!2402 = !DILocalVariable(name: "fp", arg: 1, scope: !2403, file: !960, line: 42, type: !2358)
!2403 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !960, file: !960, line: 42, type: !2404, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2358}
!2406 = !{!2402}
!2407 = !DILocation(line: 0, scope: !2403, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 157, column: 3, scope: !2355)
!2409 = !DILocation(line: 44, column: 12, scope: !2410, inlinedAt: !2408)
!2410 = distinct !DILexicalBlock(scope: !2403, file: !960, line: 44, column: 7)
!2411 = !DILocation(line: 44, column: 19, scope: !2410, inlinedAt: !2408)
!2412 = !DILocation(line: 44, column: 7, scope: !2403, inlinedAt: !2408)
!2413 = !DILocation(line: 46, column: 5, scope: !2410, inlinedAt: !2408)
!2414 = !DILocation(line: 159, column: 10, scope: !2355)
!2415 = !DILocation(line: 159, column: 3, scope: !2355)
!2416 = !DILocation(line: 236, column: 1, scope: !2355)
!2417 = !DISubprogram(name: "fflush", scope: !1141, file: !1141, line: 230, type: !2356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = distinct !DISubprogram(name: "fpurge", scope: !963, file: !963, line: 32, type: !2419, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !2455)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!118, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !2423)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2423, file: !347, line: 51, baseType: !118, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2423, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2423, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2423, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2423, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2423, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2423, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2423, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2423, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2423, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2423, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2423, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2423, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2423, file: !347, line: 70, baseType: !2439, size: 64, offset: 832)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2423, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2423, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2423, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2423, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2423, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2423, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2423, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2423, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2423, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2423, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2423, file: !347, line: 93, baseType: !2439, size: 64, offset: 1344)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2423, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2423, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2423, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2423, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "fp", arg: 1, scope: !2418, file: !963, line: 32, type: !2421)
!2457 = !DILocation(line: 0, scope: !2418)
!2458 = !DILocation(line: 36, column: 3, scope: !2418)
!2459 = !DILocation(line: 38, column: 3, scope: !2418)
!2460 = !DISubprogram(name: "__fpurge", scope: !2351, file: !2351, line: 72, type: !2461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !2421}
!2463 = distinct !DISubprogram(name: "rpl_fseeko", scope: !965, file: !965, line: 28, type: !2464, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !2500)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!118, !2466, !2216, !118}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !2468)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2468, file: !347, line: 51, baseType: !118, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2468, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2468, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2468, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2468, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2468, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2468, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2468, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2468, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2468, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2468, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2468, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2468, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2468, file: !347, line: 70, baseType: !2484, size: 64, offset: 832)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2468, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2468, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2468, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2468, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2468, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2468, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2468, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2468, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2468, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2468, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2468, file: !347, line: 93, baseType: !2484, size: 64, offset: 1344)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2468, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2468, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2468, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2468, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!2500 = !{!2501, !2502, !2503, !2504}
!2501 = !DILocalVariable(name: "fp", arg: 1, scope: !2463, file: !965, line: 28, type: !2466)
!2502 = !DILocalVariable(name: "offset", arg: 2, scope: !2463, file: !965, line: 28, type: !2216)
!2503 = !DILocalVariable(name: "whence", arg: 3, scope: !2463, file: !965, line: 28, type: !118)
!2504 = !DILocalVariable(name: "pos", scope: !2505, file: !965, line: 123, type: !2216)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !965, line: 119, column: 5)
!2506 = distinct !DILexicalBlock(scope: !2463, file: !965, line: 55, column: 7)
!2507 = !DILocation(line: 0, scope: !2463)
!2508 = !DILocation(line: 55, column: 12, scope: !2506)
!2509 = !{!1777, !1066, i64 16}
!2510 = !DILocation(line: 55, column: 33, scope: !2506)
!2511 = !{!1777, !1066, i64 8}
!2512 = !DILocation(line: 55, column: 25, scope: !2506)
!2513 = !DILocation(line: 56, column: 7, scope: !2506)
!2514 = !DILocation(line: 56, column: 15, scope: !2506)
!2515 = !DILocation(line: 56, column: 37, scope: !2506)
!2516 = !{!1777, !1066, i64 32}
!2517 = !DILocation(line: 56, column: 29, scope: !2506)
!2518 = !DILocation(line: 57, column: 7, scope: !2506)
!2519 = !DILocation(line: 57, column: 15, scope: !2506)
!2520 = !{!1777, !1066, i64 72}
!2521 = !DILocation(line: 57, column: 29, scope: !2506)
!2522 = !DILocation(line: 55, column: 7, scope: !2463)
!2523 = !DILocation(line: 123, column: 26, scope: !2505)
!2524 = !DILocation(line: 123, column: 19, scope: !2505)
!2525 = !DILocation(line: 0, scope: !2505)
!2526 = !DILocation(line: 124, column: 15, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2505, file: !965, line: 124, column: 11)
!2528 = !DILocation(line: 124, column: 11, scope: !2505)
!2529 = !DILocation(line: 135, column: 19, scope: !2505)
!2530 = !DILocation(line: 136, column: 12, scope: !2505)
!2531 = !DILocation(line: 136, column: 20, scope: !2505)
!2532 = !{!1777, !1349, i64 144}
!2533 = !DILocation(line: 167, column: 7, scope: !2505)
!2534 = !DILocation(line: 169, column: 10, scope: !2463)
!2535 = !DILocation(line: 169, column: 3, scope: !2463)
!2536 = !DILocation(line: 170, column: 1, scope: !2463)
!2537 = !DISubprogram(name: "fseeko", scope: !1141, file: !1141, line: 736, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!118, !2466, !369, !118}
!2540 = distinct !DISubprogram(name: "getprogname", scope: !967, file: !967, line: 54, type: !2541, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!183}
!2543 = !DILocation(line: 58, column: 10, scope: !2540)
!2544 = !DILocation(line: 58, column: 3, scope: !2540)
!2545 = distinct !DISubprogram(name: "initbuffer", scope: !969, file: !969, line: 37, type: !2546, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !2555)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !2550, line: 32, size: 192, elements: !2551)
!2550 = !DIFile(filename: "lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!2551 = !{!2552, !2553, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2549, file: !2550, line: 34, baseType: !997, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2549, file: !2550, line: 35, baseType: !997, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2549, file: !2550, line: 36, baseType: !177, size: 64, offset: 128)
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2545, file: !969, line: 37, type: !2548)
!2557 = !DILocation(line: 0, scope: !2545)
!2558 = !DILocalVariable(name: "__dest", arg: 1, scope: !2559, file: !1468, line: 57, type: !178)
!2559 = distinct !DISubprogram(name: "memset", scope: !1468, file: !1468, line: 57, type: !1550, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !2560)
!2560 = !{!2558, !2561, !2562}
!2561 = !DILocalVariable(name: "__ch", arg: 2, scope: !2559, file: !1468, line: 57, type: !118)
!2562 = !DILocalVariable(name: "__len", arg: 3, scope: !2559, file: !1468, line: 57, type: !180)
!2563 = !DILocation(line: 0, scope: !2559, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 39, column: 3, scope: !2545)
!2565 = !DILocation(line: 59, column: 10, scope: !2559, inlinedAt: !2564)
!2566 = !DILocation(line: 40, column: 1, scope: !2545)
!2567 = distinct !DISubprogram(name: "readlinebuffer", scope: !969, file: !969, line: 43, type: !2568, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !2604)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2548, !2548, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2572, file: !347, line: 51, baseType: !118, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2572, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2572, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2572, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2572, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2572, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2572, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2572, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2572, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2572, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2572, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2572, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2572, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2572, file: !347, line: 70, baseType: !2588, size: 64, offset: 832)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2572, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2572, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2572, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2572, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2572, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2572, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2572, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2572, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2572, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2572, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2572, file: !347, line: 93, baseType: !2588, size: 64, offset: 1344)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2572, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2572, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2572, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2572, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!2604 = !{!2605, !2606}
!2605 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2567, file: !969, line: 43, type: !2548)
!2606 = !DILocalVariable(name: "stream", arg: 2, scope: !2567, file: !969, line: 43, type: !2570)
!2607 = !DILocation(line: 0, scope: !2567)
!2608 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2609, file: !969, line: 59, type: !2548)
!2609 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !969, file: !969, line: 59, type: !2610, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!2548, !2548, !2570, !4}
!2612 = !{!2608, !2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2613 = !DILocalVariable(name: "stream", arg: 2, scope: !2609, file: !969, line: 59, type: !2570)
!2614 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2609, file: !969, line: 60, type: !4)
!2615 = !DILocalVariable(name: "buffer", scope: !2609, file: !969, line: 65, type: !177)
!2616 = !DILocalVariable(name: "p", scope: !2609, file: !969, line: 66, type: !177)
!2617 = !DILocalVariable(name: "end", scope: !2609, file: !969, line: 67, type: !177)
!2618 = !DILocalVariable(name: "c", scope: !2609, file: !969, line: 68, type: !118)
!2619 = !DILocalVariable(name: "oldsize", scope: !2620, file: !969, line: 83, type: !997)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !969, line: 82, column: 9)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !969, line: 81, column: 11)
!2622 = distinct !DILexicalBlock(scope: !2609, file: !969, line: 71, column: 5)
!2623 = !DILocation(line: 0, scope: !2609, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 45, column: 10, scope: !2567)
!2625 = !DILocalVariable(name: "__stream", arg: 1, scope: !2626, file: !1769, line: 128, type: !2570)
!2626 = distinct !DISubprogram(name: "feof_unlocked", scope: !1769, file: !1769, line: 128, type: !2627, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!118, !2570}
!2629 = !{!2625}
!2630 = !DILocation(line: 0, scope: !2626, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 62, column: 7, scope: !2632, inlinedAt: !2624)
!2632 = distinct !DILexicalBlock(scope: !2609, file: !969, line: 62, column: 7)
!2633 = !DILocation(line: 130, column: 10, scope: !2626, inlinedAt: !2631)
!2634 = !DILocation(line: 62, column: 7, scope: !2632, inlinedAt: !2624)
!2635 = !DILocation(line: 62, column: 7, scope: !2609, inlinedAt: !2624)
!2636 = !DILocation(line: 65, column: 30, scope: !2609, inlinedAt: !2624)
!2637 = !DILocation(line: 67, column: 36, scope: !2609, inlinedAt: !2624)
!2638 = !{!1700, !1349, i64 0}
!2639 = !DILocation(line: 67, column: 22, scope: !2609, inlinedAt: !2624)
!2640 = !DILocation(line: 70, column: 3, scope: !2609, inlinedAt: !2624)
!2641 = !DILocalVariable(name: "__fp", arg: 1, scope: !2642, file: !1769, line: 66, type: !2570)
!2642 = distinct !DISubprogram(name: "getc_unlocked", scope: !1769, file: !1769, line: 66, type: !2627, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !2643)
!2643 = !{!2641}
!2644 = !DILocation(line: 0, scope: !2642, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 72, column: 11, scope: !2622, inlinedAt: !2624)
!2646 = !DILocation(line: 68, column: 10, scope: !2642, inlinedAt: !2645)
!2647 = !DILocation(line: 73, column: 11, scope: !2622, inlinedAt: !2624)
!2648 = !DILocation(line: 73, column: 13, scope: !2649, inlinedAt: !2624)
!2649 = distinct !DILexicalBlock(scope: !2622, file: !969, line: 73, column: 11)
!2650 = !DILocation(line: 75, column: 17, scope: !2651, inlinedAt: !2624)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !969, line: 75, column: 15)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !969, line: 74, column: 9)
!2653 = !DILocation(line: 75, column: 27, scope: !2651, inlinedAt: !2624)
!2654 = !DILocalVariable(name: "__stream", arg: 1, scope: !2655, file: !1769, line: 135, type: !2570)
!2655 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1769, file: !1769, line: 135, type: !2627, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !2656)
!2656 = !{!2654}
!2657 = !DILocation(line: 0, scope: !2655, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 75, column: 30, scope: !2651, inlinedAt: !2624)
!2659 = !DILocation(line: 137, column: 10, scope: !2655, inlinedAt: !2658)
!2660 = !DILocation(line: 75, column: 30, scope: !2651, inlinedAt: !2624)
!2661 = !DILocation(line: 75, column: 15, scope: !2652, inlinedAt: !2624)
!2662 = !DILocation(line: 77, column: 15, scope: !2663, inlinedAt: !2624)
!2663 = distinct !DILexicalBlock(scope: !2652, file: !969, line: 77, column: 15)
!2664 = !DILocation(line: 77, column: 21, scope: !2663, inlinedAt: !2624)
!2665 = !DILocation(line: 77, column: 15, scope: !2652, inlinedAt: !2624)
!2666 = !DILocation(line: 0, scope: !2622, inlinedAt: !2624)
!2667 = !DILocation(line: 81, column: 13, scope: !2621, inlinedAt: !2624)
!2668 = !DILocation(line: 81, column: 11, scope: !2622, inlinedAt: !2624)
!2669 = !DILocation(line: 83, column: 39, scope: !2620, inlinedAt: !2624)
!2670 = !DILocation(line: 0, scope: !2620, inlinedAt: !2624)
!2671 = !DILocation(line: 84, column: 20, scope: !2620, inlinedAt: !2624)
!2672 = !DILocation(line: 85, column: 22, scope: !2620, inlinedAt: !2624)
!2673 = !DILocation(line: 86, column: 30, scope: !2620, inlinedAt: !2624)
!2674 = !DILocation(line: 87, column: 38, scope: !2620, inlinedAt: !2624)
!2675 = !DILocation(line: 87, column: 24, scope: !2620, inlinedAt: !2624)
!2676 = !DILocation(line: 88, column: 9, scope: !2620, inlinedAt: !2624)
!2677 = !DILocation(line: 89, column: 14, scope: !2622, inlinedAt: !2624)
!2678 = !DILocation(line: 89, column: 9, scope: !2622, inlinedAt: !2624)
!2679 = !DILocation(line: 89, column: 12, scope: !2622, inlinedAt: !2624)
!2680 = !DILocation(line: 91, column: 12, scope: !2609, inlinedAt: !2624)
!2681 = !DILocation(line: 90, column: 5, scope: !2622, inlinedAt: !2624)
!2682 = distinct !{!2682, !2640, !2683, !1193}
!2683 = !DILocation(line: 91, column: 24, scope: !2609, inlinedAt: !2624)
!2684 = !DILocation(line: 93, column: 26, scope: !2609, inlinedAt: !2624)
!2685 = !DILocation(line: 93, column: 15, scope: !2609, inlinedAt: !2624)
!2686 = !DILocation(line: 93, column: 22, scope: !2609, inlinedAt: !2624)
!2687 = !DILocation(line: 94, column: 3, scope: !2609, inlinedAt: !2624)
!2688 = !DILocation(line: 45, column: 3, scope: !2567)
!2689 = !DISubprogram(name: "__uflow", scope: !1141, file: !1141, line: 885, type: !2627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2690 = !DILocation(line: 0, scope: !2609)
!2691 = !DILocation(line: 0, scope: !2626, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 62, column: 7, scope: !2632)
!2693 = !DILocation(line: 130, column: 10, scope: !2626, inlinedAt: !2692)
!2694 = !DILocation(line: 62, column: 7, scope: !2632)
!2695 = !DILocation(line: 62, column: 7, scope: !2609)
!2696 = !DILocation(line: 65, column: 30, scope: !2609)
!2697 = !DILocation(line: 67, column: 36, scope: !2609)
!2698 = !DILocation(line: 67, column: 22, scope: !2609)
!2699 = !DILocation(line: 70, column: 3, scope: !2609)
!2700 = !DILocation(line: 0, scope: !2642, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 72, column: 11, scope: !2622)
!2702 = !DILocation(line: 68, column: 10, scope: !2642, inlinedAt: !2701)
!2703 = !DILocation(line: 73, column: 11, scope: !2622)
!2704 = !DILocation(line: 73, column: 13, scope: !2649)
!2705 = !DILocation(line: 75, column: 17, scope: !2651)
!2706 = !DILocation(line: 75, column: 27, scope: !2651)
!2707 = !DILocation(line: 0, scope: !2655, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 75, column: 30, scope: !2651)
!2709 = !DILocation(line: 137, column: 10, scope: !2655, inlinedAt: !2708)
!2710 = !DILocation(line: 75, column: 30, scope: !2651)
!2711 = !DILocation(line: 75, column: 15, scope: !2652)
!2712 = !DILocation(line: 77, column: 15, scope: !2663)
!2713 = !DILocation(line: 77, column: 21, scope: !2663)
!2714 = !DILocation(line: 77, column: 15, scope: !2652)
!2715 = !DILocation(line: 0, scope: !2622)
!2716 = !DILocation(line: 81, column: 13, scope: !2621)
!2717 = !DILocation(line: 81, column: 11, scope: !2622)
!2718 = !DILocation(line: 83, column: 39, scope: !2620)
!2719 = !DILocation(line: 0, scope: !2620)
!2720 = !DILocation(line: 84, column: 20, scope: !2620)
!2721 = !DILocation(line: 85, column: 22, scope: !2620)
!2722 = !DILocation(line: 86, column: 30, scope: !2620)
!2723 = !DILocation(line: 87, column: 38, scope: !2620)
!2724 = !DILocation(line: 87, column: 24, scope: !2620)
!2725 = !DILocation(line: 88, column: 9, scope: !2620)
!2726 = !DILocation(line: 89, column: 14, scope: !2622)
!2727 = !DILocation(line: 89, column: 9, scope: !2622)
!2728 = !DILocation(line: 89, column: 12, scope: !2622)
!2729 = !DILocation(line: 91, column: 12, scope: !2609)
!2730 = !DILocation(line: 90, column: 5, scope: !2622)
!2731 = distinct !{!2731, !2699, !2732, !1193}
!2732 = !DILocation(line: 91, column: 24, scope: !2609)
!2733 = !DILocation(line: 93, column: 26, scope: !2609)
!2734 = !DILocation(line: 93, column: 15, scope: !2609)
!2735 = !DILocation(line: 93, column: 22, scope: !2609)
!2736 = !DILocation(line: 94, column: 3, scope: !2609)
!2737 = !DILocation(line: 95, column: 1, scope: !2609)
!2738 = distinct !DISubprogram(name: "freebuffer", scope: !969, file: !969, line: 100, type: !2546, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !2739)
!2739 = !{!2740}
!2740 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2738, file: !969, line: 100, type: !2548)
!2741 = !DILocation(line: 0, scope: !2738)
!2742 = !DILocation(line: 102, column: 21, scope: !2738)
!2743 = !DILocation(line: 102, column: 3, scope: !2738)
!2744 = !DILocation(line: 103, column: 1, scope: !2738)
!2745 = !DISubprogram(name: "free", scope: !1159, file: !1159, line: 752, type: !2746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !178}
!2748 = distinct !DISubprogram(name: "set_program_name", scope: !698, file: !698, line: 37, type: !1096, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2749)
!2749 = !{!2750, !2751, !2752}
!2750 = !DILocalVariable(name: "argv0", arg: 1, scope: !2748, file: !698, line: 37, type: !183)
!2751 = !DILocalVariable(name: "slash", scope: !2748, file: !698, line: 44, type: !183)
!2752 = !DILocalVariable(name: "base", scope: !2748, file: !698, line: 45, type: !183)
!2753 = !DILocation(line: 0, scope: !2748)
!2754 = !DILocation(line: 44, column: 23, scope: !2748)
!2755 = !DILocation(line: 45, column: 22, scope: !2748)
!2756 = !DILocation(line: 46, column: 17, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2748, file: !698, line: 46, column: 7)
!2758 = !DILocation(line: 46, column: 9, scope: !2757)
!2759 = !DILocation(line: 46, column: 25, scope: !2757)
!2760 = !DILocation(line: 46, column: 40, scope: !2757)
!2761 = !DILocalVariable(name: "__s1", arg: 1, scope: !2762, file: !1159, line: 974, type: !1294)
!2762 = distinct !DISubprogram(name: "memeq", scope: !1159, file: !1159, line: 974, type: !1712, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !2763)
!2763 = !{!2761, !2764, !2765}
!2764 = !DILocalVariable(name: "__s2", arg: 2, scope: !2762, file: !1159, line: 974, type: !1294)
!2765 = !DILocalVariable(name: "__n", arg: 3, scope: !2762, file: !1159, line: 974, type: !180)
!2766 = !DILocation(line: 0, scope: !2762, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 46, column: 28, scope: !2757)
!2768 = !DILocation(line: 976, column: 11, scope: !2762, inlinedAt: !2767)
!2769 = !DILocation(line: 976, column: 10, scope: !2762, inlinedAt: !2767)
!2770 = !DILocation(line: 46, column: 7, scope: !2748)
!2771 = !DILocation(line: 49, column: 11, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !698, line: 49, column: 11)
!2773 = distinct !DILexicalBlock(scope: !2757, file: !698, line: 47, column: 5)
!2774 = !DILocation(line: 49, column: 36, scope: !2772)
!2775 = !DILocation(line: 49, column: 11, scope: !2773)
!2776 = !DILocation(line: 65, column: 16, scope: !2748)
!2777 = !DILocation(line: 71, column: 27, scope: !2748)
!2778 = !DILocation(line: 74, column: 33, scope: !2748)
!2779 = !DILocation(line: 76, column: 1, scope: !2748)
!2780 = !DISubprogram(name: "strrchr", scope: !1266, file: !1266, line: 273, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2781 = distinct !DIAssignID()
!2782 = !DILocation(line: 0, scope: !707)
!2783 = distinct !DIAssignID()
!2784 = !DILocation(line: 40, column: 29, scope: !707)
!2785 = !DILocation(line: 41, column: 19, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !707, file: !708, line: 41, column: 7)
!2787 = !DILocation(line: 41, column: 7, scope: !707)
!2788 = !DILocation(line: 47, column: 3, scope: !707)
!2789 = !DILocation(line: 48, column: 3, scope: !707)
!2790 = !DILocalVariable(name: "ps", arg: 1, scope: !2791, file: !2792, line: 1135, type: !2795)
!2791 = distinct !DISubprogram(name: "mbszero", scope: !2792, file: !2792, line: 1135, type: !2793, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2796)
!2792 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!2796 = !{!2790}
!2797 = !DILocation(line: 0, scope: !2791, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 48, column: 18, scope: !707)
!2799 = !DILocalVariable(name: "__dest", arg: 1, scope: !2800, file: !1468, line: 57, type: !178)
!2800 = distinct !DISubprogram(name: "memset", scope: !1468, file: !1468, line: 57, type: !1550, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2801)
!2801 = !{!2799, !2802, !2803}
!2802 = !DILocalVariable(name: "__ch", arg: 2, scope: !2800, file: !1468, line: 57, type: !118)
!2803 = !DILocalVariable(name: "__len", arg: 3, scope: !2800, file: !1468, line: 57, type: !180)
!2804 = !DILocation(line: 0, scope: !2800, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 1137, column: 3, scope: !2791, inlinedAt: !2798)
!2806 = !DILocation(line: 59, column: 10, scope: !2800, inlinedAt: !2805)
!2807 = !DILocation(line: 49, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !707, file: !708, line: 49, column: 7)
!2809 = !DILocation(line: 49, column: 39, scope: !2808)
!2810 = !DILocation(line: 49, column: 44, scope: !2808)
!2811 = !DILocation(line: 54, column: 1, scope: !707)
!2812 = distinct !DISubprogram(name: "clone_quoting_options", scope: !738, file: !738, line: 113, type: !2813, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2816)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!2815, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!2816 = !{!2817, !2818, !2819}
!2817 = !DILocalVariable(name: "o", arg: 1, scope: !2812, file: !738, line: 113, type: !2815)
!2818 = !DILocalVariable(name: "saved_errno", scope: !2812, file: !738, line: 115, type: !118)
!2819 = !DILocalVariable(name: "p", scope: !2812, file: !738, line: 116, type: !2815)
!2820 = !DILocation(line: 0, scope: !2812)
!2821 = !DILocation(line: 115, column: 21, scope: !2812)
!2822 = !DILocation(line: 116, column: 40, scope: !2812)
!2823 = !DILocation(line: 116, column: 31, scope: !2812)
!2824 = !DILocation(line: 118, column: 9, scope: !2812)
!2825 = !DILocation(line: 119, column: 3, scope: !2812)
!2826 = distinct !DISubprogram(name: "get_quoting_style", scope: !738, file: !738, line: 124, type: !2827, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2831)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!761, !2829}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!2831 = !{!2832}
!2832 = !DILocalVariable(name: "o", arg: 1, scope: !2826, file: !738, line: 124, type: !2829)
!2833 = !DILocation(line: 0, scope: !2826)
!2834 = !DILocation(line: 126, column: 11, scope: !2826)
!2835 = !DILocation(line: 126, column: 46, scope: !2826)
!2836 = !{!2837, !1147, i64 0}
!2837 = !{!"quoting_options", !1147, i64 0, !1147, i64 4, !1067, i64 8, !1066, i64 40, !1066, i64 48}
!2838 = !DILocation(line: 126, column: 3, scope: !2826)
!2839 = distinct !DISubprogram(name: "set_quoting_style", scope: !738, file: !738, line: 132, type: !2840, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !2815, !761}
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "o", arg: 1, scope: !2839, file: !738, line: 132, type: !2815)
!2844 = !DILocalVariable(name: "s", arg: 2, scope: !2839, file: !738, line: 132, type: !761)
!2845 = !DILocation(line: 0, scope: !2839)
!2846 = !DILocation(line: 134, column: 4, scope: !2839)
!2847 = !DILocation(line: 134, column: 45, scope: !2839)
!2848 = !DILocation(line: 135, column: 1, scope: !2839)
!2849 = distinct !DISubprogram(name: "set_char_quoting", scope: !738, file: !738, line: 143, type: !2850, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!118, !2815, !4, !118}
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2859, !2860}
!2853 = !DILocalVariable(name: "o", arg: 1, scope: !2849, file: !738, line: 143, type: !2815)
!2854 = !DILocalVariable(name: "c", arg: 2, scope: !2849, file: !738, line: 143, type: !4)
!2855 = !DILocalVariable(name: "i", arg: 3, scope: !2849, file: !738, line: 143, type: !118)
!2856 = !DILocalVariable(name: "uc", scope: !2849, file: !738, line: 145, type: !185)
!2857 = !DILocalVariable(name: "p", scope: !2849, file: !738, line: 146, type: !2858)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2859 = !DILocalVariable(name: "shift", scope: !2849, file: !738, line: 148, type: !118)
!2860 = !DILocalVariable(name: "r", scope: !2849, file: !738, line: 149, type: !110)
!2861 = !DILocation(line: 0, scope: !2849)
!2862 = !DILocation(line: 147, column: 6, scope: !2849)
!2863 = !DILocation(line: 147, column: 41, scope: !2849)
!2864 = !DILocation(line: 147, column: 62, scope: !2849)
!2865 = !DILocation(line: 147, column: 57, scope: !2849)
!2866 = !DILocation(line: 148, column: 15, scope: !2849)
!2867 = !DILocation(line: 149, column: 21, scope: !2849)
!2868 = !DILocation(line: 149, column: 24, scope: !2849)
!2869 = !DILocation(line: 149, column: 34, scope: !2849)
!2870 = !DILocation(line: 150, column: 19, scope: !2849)
!2871 = !DILocation(line: 150, column: 24, scope: !2849)
!2872 = !DILocation(line: 150, column: 6, scope: !2849)
!2873 = !DILocation(line: 151, column: 3, scope: !2849)
!2874 = distinct !DISubprogram(name: "set_quoting_flags", scope: !738, file: !738, line: 159, type: !2875, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!118, !2815, !118}
!2877 = !{!2878, !2879, !2880}
!2878 = !DILocalVariable(name: "o", arg: 1, scope: !2874, file: !738, line: 159, type: !2815)
!2879 = !DILocalVariable(name: "i", arg: 2, scope: !2874, file: !738, line: 159, type: !118)
!2880 = !DILocalVariable(name: "r", scope: !2874, file: !738, line: 163, type: !118)
!2881 = !DILocation(line: 0, scope: !2874)
!2882 = !DILocation(line: 161, column: 8, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2874, file: !738, line: 161, column: 7)
!2884 = !DILocation(line: 161, column: 7, scope: !2874)
!2885 = !DILocation(line: 163, column: 14, scope: !2874)
!2886 = !{!2837, !1147, i64 4}
!2887 = !DILocation(line: 164, column: 12, scope: !2874)
!2888 = !DILocation(line: 165, column: 3, scope: !2874)
!2889 = distinct !DISubprogram(name: "set_custom_quoting", scope: !738, file: !738, line: 169, type: !2890, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !2815, !183, !183}
!2892 = !{!2893, !2894, !2895}
!2893 = !DILocalVariable(name: "o", arg: 1, scope: !2889, file: !738, line: 169, type: !2815)
!2894 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2889, file: !738, line: 170, type: !183)
!2895 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2889, file: !738, line: 170, type: !183)
!2896 = !DILocation(line: 0, scope: !2889)
!2897 = !DILocation(line: 172, column: 8, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2889, file: !738, line: 172, column: 7)
!2899 = !DILocation(line: 172, column: 7, scope: !2889)
!2900 = !DILocation(line: 174, column: 12, scope: !2889)
!2901 = !DILocation(line: 175, column: 8, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2889, file: !738, line: 175, column: 7)
!2903 = !DILocation(line: 175, column: 19, scope: !2902)
!2904 = !DILocation(line: 176, column: 5, scope: !2902)
!2905 = !DILocation(line: 177, column: 6, scope: !2889)
!2906 = !DILocation(line: 177, column: 17, scope: !2889)
!2907 = !{!2837, !1066, i64 40}
!2908 = !DILocation(line: 178, column: 6, scope: !2889)
!2909 = !DILocation(line: 178, column: 18, scope: !2889)
!2910 = !{!2837, !1066, i64 48}
!2911 = !DILocation(line: 179, column: 1, scope: !2889)
!2912 = !DISubprogram(name: "abort", scope: !1270, file: !1270, line: 598, type: !601, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2913 = distinct !DISubprogram(name: "quotearg_buffer", scope: !738, file: !738, line: 774, type: !2914, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!180, !177, !180, !183, !180, !2829}
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924}
!2917 = !DILocalVariable(name: "buffer", arg: 1, scope: !2913, file: !738, line: 774, type: !177)
!2918 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2913, file: !738, line: 774, type: !180)
!2919 = !DILocalVariable(name: "arg", arg: 3, scope: !2913, file: !738, line: 775, type: !183)
!2920 = !DILocalVariable(name: "argsize", arg: 4, scope: !2913, file: !738, line: 775, type: !180)
!2921 = !DILocalVariable(name: "o", arg: 5, scope: !2913, file: !738, line: 776, type: !2829)
!2922 = !DILocalVariable(name: "p", scope: !2913, file: !738, line: 778, type: !2829)
!2923 = !DILocalVariable(name: "saved_errno", scope: !2913, file: !738, line: 779, type: !118)
!2924 = !DILocalVariable(name: "r", scope: !2913, file: !738, line: 780, type: !180)
!2925 = !DILocation(line: 0, scope: !2913)
!2926 = !DILocation(line: 778, column: 37, scope: !2913)
!2927 = !DILocation(line: 779, column: 21, scope: !2913)
!2928 = !DILocation(line: 781, column: 43, scope: !2913)
!2929 = !DILocation(line: 781, column: 53, scope: !2913)
!2930 = !DILocation(line: 781, column: 63, scope: !2913)
!2931 = !DILocation(line: 782, column: 43, scope: !2913)
!2932 = !DILocation(line: 782, column: 58, scope: !2913)
!2933 = !DILocation(line: 780, column: 14, scope: !2913)
!2934 = !DILocation(line: 783, column: 9, scope: !2913)
!2935 = !DILocation(line: 784, column: 3, scope: !2913)
!2936 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !738, file: !738, line: 251, type: !2937, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2941)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!180, !177, !180, !183, !180, !761, !118, !2939, !183, !183}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2967, !2969, !2972, !2973, !2974, !2975, !2978, !2979, !2981, !2982, !2985, !2989, !2990, !2998, !3001, !3002, !3003}
!2942 = !DILocalVariable(name: "buffer", arg: 1, scope: !2936, file: !738, line: 251, type: !177)
!2943 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2936, file: !738, line: 251, type: !180)
!2944 = !DILocalVariable(name: "arg", arg: 3, scope: !2936, file: !738, line: 252, type: !183)
!2945 = !DILocalVariable(name: "argsize", arg: 4, scope: !2936, file: !738, line: 252, type: !180)
!2946 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2936, file: !738, line: 253, type: !761)
!2947 = !DILocalVariable(name: "flags", arg: 6, scope: !2936, file: !738, line: 253, type: !118)
!2948 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2936, file: !738, line: 254, type: !2939)
!2949 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2936, file: !738, line: 255, type: !183)
!2950 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2936, file: !738, line: 256, type: !183)
!2951 = !DILocalVariable(name: "unibyte_locale", scope: !2936, file: !738, line: 258, type: !311)
!2952 = !DILocalVariable(name: "len", scope: !2936, file: !738, line: 260, type: !180)
!2953 = !DILocalVariable(name: "orig_buffersize", scope: !2936, file: !738, line: 261, type: !180)
!2954 = !DILocalVariable(name: "quote_string", scope: !2936, file: !738, line: 262, type: !183)
!2955 = !DILocalVariable(name: "quote_string_len", scope: !2936, file: !738, line: 263, type: !180)
!2956 = !DILocalVariable(name: "backslash_escapes", scope: !2936, file: !738, line: 264, type: !311)
!2957 = !DILocalVariable(name: "elide_outer_quotes", scope: !2936, file: !738, line: 265, type: !311)
!2958 = !DILocalVariable(name: "encountered_single_quote", scope: !2936, file: !738, line: 266, type: !311)
!2959 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2936, file: !738, line: 267, type: !311)
!2960 = !DILabel(scope: !2936, name: "process_input", file: !738, line: 308)
!2961 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2936, file: !738, line: 309, type: !311)
!2962 = !DILocalVariable(name: "lq", scope: !2963, file: !738, line: 361, type: !183)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !738, line: 361, column: 11)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !738, line: 360, column: 13)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !738, line: 333, column: 7)
!2966 = distinct !DILexicalBlock(scope: !2936, file: !738, line: 312, column: 5)
!2967 = !DILocalVariable(name: "i", scope: !2968, file: !738, line: 395, type: !180)
!2968 = distinct !DILexicalBlock(scope: !2936, file: !738, line: 395, column: 3)
!2969 = !DILocalVariable(name: "is_right_quote", scope: !2970, file: !738, line: 397, type: !311)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !738, line: 396, column: 5)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !738, line: 395, column: 3)
!2972 = !DILocalVariable(name: "escaping", scope: !2970, file: !738, line: 398, type: !311)
!2973 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2970, file: !738, line: 399, type: !311)
!2974 = !DILocalVariable(name: "c", scope: !2970, file: !738, line: 417, type: !185)
!2975 = !DILabel(scope: !2976, name: "c_and_shell_escape", file: !738, line: 502)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 478, column: 9)
!2977 = distinct !DILexicalBlock(scope: !2970, file: !738, line: 419, column: 9)
!2978 = !DILabel(scope: !2976, name: "c_escape", file: !738, line: 507)
!2979 = !DILocalVariable(name: "m", scope: !2980, file: !738, line: 598, type: !180)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 596, column: 11)
!2981 = !DILocalVariable(name: "printable", scope: !2980, file: !738, line: 600, type: !311)
!2982 = !DILocalVariable(name: "mbs", scope: !2983, file: !738, line: 609, type: !807)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !738, line: 608, column: 15)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !738, line: 602, column: 17)
!2985 = !DILocalVariable(name: "w", scope: !2986, file: !738, line: 618, type: !718)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !738, line: 617, column: 19)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !738, line: 616, column: 17)
!2988 = distinct !DILexicalBlock(scope: !2983, file: !738, line: 616, column: 17)
!2989 = !DILocalVariable(name: "bytes", scope: !2986, file: !738, line: 619, type: !180)
!2990 = !DILocalVariable(name: "j", scope: !2991, file: !738, line: 648, type: !180)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !738, line: 648, column: 29)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !738, line: 647, column: 27)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !738, line: 645, column: 29)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !738, line: 636, column: 23)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !738, line: 628, column: 30)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !738, line: 623, column: 30)
!2997 = distinct !DILexicalBlock(scope: !2986, file: !738, line: 621, column: 25)
!2998 = !DILocalVariable(name: "ilim", scope: !2999, file: !738, line: 674, type: !180)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !738, line: 671, column: 15)
!3000 = distinct !DILexicalBlock(scope: !2980, file: !738, line: 670, column: 17)
!3001 = !DILabel(scope: !2970, name: "store_escape", file: !738, line: 709)
!3002 = !DILabel(scope: !2970, name: "store_c", file: !738, line: 712)
!3003 = !DILabel(scope: !2936, name: "force_outer_quoting_style", file: !738, line: 753)
!3004 = distinct !DIAssignID()
!3005 = distinct !DIAssignID()
!3006 = distinct !DIAssignID()
!3007 = distinct !DIAssignID()
!3008 = distinct !DIAssignID()
!3009 = !DILocation(line: 0, scope: !2983)
!3010 = distinct !DIAssignID()
!3011 = !DILocation(line: 0, scope: !2986)
!3012 = !DILocation(line: 0, scope: !2936)
!3013 = !DILocation(line: 258, column: 25, scope: !2936)
!3014 = !DILocation(line: 258, column: 36, scope: !2936)
!3015 = !DILocation(line: 265, column: 8, scope: !2936)
!3016 = !DILocation(line: 267, column: 3, scope: !2936)
!3017 = !DILocation(line: 261, column: 10, scope: !2936)
!3018 = !DILocation(line: 262, column: 15, scope: !2936)
!3019 = !DILocation(line: 263, column: 10, scope: !2936)
!3020 = !DILocation(line: 264, column: 8, scope: !2936)
!3021 = !DILocation(line: 266, column: 8, scope: !2936)
!3022 = !DILocation(line: 267, column: 8, scope: !2936)
!3023 = !DILocation(line: 308, column: 2, scope: !2936)
!3024 = !DILocation(line: 311, column: 3, scope: !2936)
!3025 = !DILocation(line: 318, column: 11, scope: !2966)
!3026 = !DILocation(line: 318, column: 12, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2966, file: !738, line: 318, column: 11)
!3028 = !DILocation(line: 319, column: 9, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !738, line: 319, column: 9)
!3030 = distinct !DILexicalBlock(scope: !3027, file: !738, line: 319, column: 9)
!3031 = !DILocation(line: 319, column: 9, scope: !3030)
!3032 = !DILocation(line: 0, scope: !798, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 357, column: 26, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !738, line: 335, column: 11)
!3035 = distinct !DILexicalBlock(scope: !2965, file: !738, line: 334, column: 13)
!3036 = !DILocation(line: 199, column: 29, scope: !798, inlinedAt: !3033)
!3037 = !DILocation(line: 201, column: 19, scope: !3038, inlinedAt: !3033)
!3038 = distinct !DILexicalBlock(scope: !798, file: !738, line: 201, column: 7)
!3039 = !DILocation(line: 201, column: 7, scope: !798, inlinedAt: !3033)
!3040 = !DILocation(line: 229, column: 3, scope: !798, inlinedAt: !3033)
!3041 = !DILocation(line: 230, column: 3, scope: !798, inlinedAt: !3033)
!3042 = !DILocalVariable(name: "ps", arg: 1, scope: !3043, file: !2792, line: 1135, type: !3046)
!3043 = distinct !DISubprogram(name: "mbszero", scope: !2792, file: !2792, line: 1135, type: !3044, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3047)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!3047 = !{!3042}
!3048 = !DILocation(line: 0, scope: !3043, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 230, column: 18, scope: !798, inlinedAt: !3033)
!3050 = !DILocalVariable(name: "__dest", arg: 1, scope: !3051, file: !1468, line: 57, type: !178)
!3051 = distinct !DISubprogram(name: "memset", scope: !1468, file: !1468, line: 57, type: !1550, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3052)
!3052 = !{!3050, !3053, !3054}
!3053 = !DILocalVariable(name: "__ch", arg: 2, scope: !3051, file: !1468, line: 57, type: !118)
!3054 = !DILocalVariable(name: "__len", arg: 3, scope: !3051, file: !1468, line: 57, type: !180)
!3055 = !DILocation(line: 0, scope: !3051, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 1137, column: 3, scope: !3043, inlinedAt: !3049)
!3057 = !DILocation(line: 59, column: 10, scope: !3051, inlinedAt: !3056)
!3058 = !DILocation(line: 231, column: 7, scope: !3059, inlinedAt: !3033)
!3059 = distinct !DILexicalBlock(scope: !798, file: !738, line: 231, column: 7)
!3060 = !DILocation(line: 231, column: 40, scope: !3059, inlinedAt: !3033)
!3061 = !DILocation(line: 231, column: 45, scope: !3059, inlinedAt: !3033)
!3062 = !DILocation(line: 235, column: 1, scope: !798, inlinedAt: !3033)
!3063 = !DILocation(line: 0, scope: !798, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 358, column: 27, scope: !3034)
!3065 = !DILocation(line: 199, column: 29, scope: !798, inlinedAt: !3064)
!3066 = !DILocation(line: 201, column: 19, scope: !3038, inlinedAt: !3064)
!3067 = !DILocation(line: 201, column: 7, scope: !798, inlinedAt: !3064)
!3068 = !DILocation(line: 229, column: 3, scope: !798, inlinedAt: !3064)
!3069 = !DILocation(line: 230, column: 3, scope: !798, inlinedAt: !3064)
!3070 = !DILocation(line: 0, scope: !3043, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 230, column: 18, scope: !798, inlinedAt: !3064)
!3072 = !DILocation(line: 0, scope: !3051, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 1137, column: 3, scope: !3043, inlinedAt: !3071)
!3074 = !DILocation(line: 59, column: 10, scope: !3051, inlinedAt: !3073)
!3075 = !DILocation(line: 231, column: 7, scope: !3059, inlinedAt: !3064)
!3076 = !DILocation(line: 231, column: 40, scope: !3059, inlinedAt: !3064)
!3077 = !DILocation(line: 231, column: 45, scope: !3059, inlinedAt: !3064)
!3078 = !DILocation(line: 235, column: 1, scope: !798, inlinedAt: !3064)
!3079 = !DILocation(line: 360, column: 14, scope: !2964)
!3080 = !DILocation(line: 360, column: 13, scope: !2965)
!3081 = !DILocation(line: 0, scope: !2963)
!3082 = !DILocation(line: 361, column: 45, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2963, file: !738, line: 361, column: 11)
!3084 = !DILocation(line: 361, column: 11, scope: !2963)
!3085 = !DILocation(line: 362, column: 13, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !738, line: 362, column: 13)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !738, line: 362, column: 13)
!3088 = !DILocation(line: 362, column: 13, scope: !3087)
!3089 = !DILocation(line: 361, column: 52, scope: !3083)
!3090 = distinct !{!3090, !3084, !3091, !1193}
!3091 = !DILocation(line: 362, column: 13, scope: !2963)
!3092 = !DILocation(line: 260, column: 10, scope: !2936)
!3093 = !DILocation(line: 365, column: 28, scope: !2965)
!3094 = !DILocation(line: 367, column: 7, scope: !2966)
!3095 = !DILocation(line: 370, column: 7, scope: !2966)
!3096 = !DILocation(line: 373, column: 7, scope: !2966)
!3097 = !DILocation(line: 376, column: 12, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2966, file: !738, line: 376, column: 11)
!3099 = !DILocation(line: 376, column: 11, scope: !2966)
!3100 = !DILocation(line: 381, column: 12, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2966, file: !738, line: 381, column: 11)
!3102 = !DILocation(line: 381, column: 11, scope: !2966)
!3103 = !DILocation(line: 382, column: 9, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !738, line: 382, column: 9)
!3105 = distinct !DILexicalBlock(scope: !3101, file: !738, line: 382, column: 9)
!3106 = !DILocation(line: 382, column: 9, scope: !3105)
!3107 = !DILocation(line: 389, column: 7, scope: !2966)
!3108 = !DILocation(line: 392, column: 7, scope: !2966)
!3109 = !DILocation(line: 0, scope: !2968)
!3110 = !DILocation(line: 395, column: 8, scope: !2968)
!3111 = !DILocation(line: 309, column: 8, scope: !2936)
!3112 = !DILocation(line: 395, scope: !2968)
!3113 = !DILocation(line: 395, column: 34, scope: !2971)
!3114 = !DILocation(line: 395, column: 26, scope: !2971)
!3115 = !DILocation(line: 395, column: 48, scope: !2971)
!3116 = !DILocation(line: 395, column: 55, scope: !2971)
!3117 = !DILocation(line: 395, column: 3, scope: !2968)
!3118 = !DILocation(line: 395, column: 67, scope: !2971)
!3119 = !DILocation(line: 0, scope: !2970)
!3120 = !DILocation(line: 402, column: 11, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !2970, file: !738, line: 401, column: 11)
!3122 = !DILocation(line: 404, column: 17, scope: !3121)
!3123 = !DILocation(line: 405, column: 39, scope: !3121)
!3124 = !DILocation(line: 409, column: 32, scope: !3121)
!3125 = !DILocation(line: 405, column: 19, scope: !3121)
!3126 = !DILocation(line: 405, column: 15, scope: !3121)
!3127 = !DILocation(line: 410, column: 11, scope: !3121)
!3128 = !DILocation(line: 410, column: 25, scope: !3121)
!3129 = !DILocalVariable(name: "__s1", arg: 1, scope: !3130, file: !1159, line: 974, type: !1294)
!3130 = distinct !DISubprogram(name: "memeq", scope: !1159, file: !1159, line: 974, type: !1712, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3131)
!3131 = !{!3129, !3132, !3133}
!3132 = !DILocalVariable(name: "__s2", arg: 2, scope: !3130, file: !1159, line: 974, type: !1294)
!3133 = !DILocalVariable(name: "__n", arg: 3, scope: !3130, file: !1159, line: 974, type: !180)
!3134 = !DILocation(line: 0, scope: !3130, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 410, column: 14, scope: !3121)
!3136 = !DILocation(line: 976, column: 11, scope: !3130, inlinedAt: !3135)
!3137 = !DILocation(line: 976, column: 10, scope: !3130, inlinedAt: !3135)
!3138 = !DILocation(line: 401, column: 11, scope: !2970)
!3139 = !DILocation(line: 417, column: 25, scope: !2970)
!3140 = !DILocation(line: 418, column: 7, scope: !2970)
!3141 = !DILocation(line: 421, column: 15, scope: !2977)
!3142 = !DILocation(line: 423, column: 15, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !738, line: 423, column: 15)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !738, line: 422, column: 13)
!3145 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 421, column: 15)
!3146 = !DILocation(line: 423, column: 15, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !738, line: 423, column: 15)
!3148 = !DILocation(line: 423, column: 15, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !738, line: 423, column: 15)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !738, line: 423, column: 15)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !738, line: 423, column: 15)
!3152 = !DILocation(line: 423, column: 15, scope: !3150)
!3153 = !DILocation(line: 423, column: 15, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !738, line: 423, column: 15)
!3155 = distinct !DILexicalBlock(scope: !3151, file: !738, line: 423, column: 15)
!3156 = !DILocation(line: 423, column: 15, scope: !3155)
!3157 = !DILocation(line: 423, column: 15, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !738, line: 423, column: 15)
!3159 = distinct !DILexicalBlock(scope: !3151, file: !738, line: 423, column: 15)
!3160 = !DILocation(line: 423, column: 15, scope: !3159)
!3161 = !DILocation(line: 423, column: 15, scope: !3151)
!3162 = !DILocation(line: 423, column: 15, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !738, line: 423, column: 15)
!3164 = distinct !DILexicalBlock(scope: !3143, file: !738, line: 423, column: 15)
!3165 = !DILocation(line: 423, column: 15, scope: !3164)
!3166 = !DILocation(line: 431, column: 19, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3144, file: !738, line: 430, column: 19)
!3168 = !DILocation(line: 431, column: 24, scope: !3167)
!3169 = !DILocation(line: 431, column: 28, scope: !3167)
!3170 = !DILocation(line: 431, column: 38, scope: !3167)
!3171 = !DILocation(line: 431, column: 48, scope: !3167)
!3172 = !DILocation(line: 431, column: 59, scope: !3167)
!3173 = !DILocation(line: 433, column: 19, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !738, line: 433, column: 19)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !738, line: 433, column: 19)
!3176 = distinct !DILexicalBlock(scope: !3167, file: !738, line: 432, column: 17)
!3177 = !DILocation(line: 433, column: 19, scope: !3175)
!3178 = !DILocation(line: 434, column: 19, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !738, line: 434, column: 19)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !738, line: 434, column: 19)
!3181 = !DILocation(line: 434, column: 19, scope: !3180)
!3182 = !DILocation(line: 435, column: 17, scope: !3176)
!3183 = !DILocation(line: 442, column: 20, scope: !3145)
!3184 = !DILocation(line: 447, column: 11, scope: !2977)
!3185 = !DILocation(line: 450, column: 19, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 448, column: 13)
!3187 = !DILocation(line: 456, column: 19, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3186, file: !738, line: 455, column: 19)
!3189 = !DILocation(line: 456, column: 24, scope: !3188)
!3190 = !DILocation(line: 456, column: 28, scope: !3188)
!3191 = !DILocation(line: 456, column: 38, scope: !3188)
!3192 = !DILocation(line: 456, column: 41, scope: !3188)
!3193 = !DILocation(line: 456, column: 52, scope: !3188)
!3194 = !DILocation(line: 455, column: 19, scope: !3186)
!3195 = !DILocation(line: 457, column: 25, scope: !3188)
!3196 = !DILocation(line: 457, column: 17, scope: !3188)
!3197 = !DILocation(line: 464, column: 25, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3188, file: !738, line: 458, column: 19)
!3199 = !DILocation(line: 468, column: 21, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !738, line: 468, column: 21)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !738, line: 468, column: 21)
!3202 = !DILocation(line: 468, column: 21, scope: !3201)
!3203 = !DILocation(line: 469, column: 21, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !738, line: 469, column: 21)
!3205 = distinct !DILexicalBlock(scope: !3198, file: !738, line: 469, column: 21)
!3206 = !DILocation(line: 469, column: 21, scope: !3205)
!3207 = !DILocation(line: 470, column: 21, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !738, line: 470, column: 21)
!3209 = distinct !DILexicalBlock(scope: !3198, file: !738, line: 470, column: 21)
!3210 = !DILocation(line: 470, column: 21, scope: !3209)
!3211 = !DILocation(line: 471, column: 21, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !738, line: 471, column: 21)
!3213 = distinct !DILexicalBlock(scope: !3198, file: !738, line: 471, column: 21)
!3214 = !DILocation(line: 471, column: 21, scope: !3213)
!3215 = !DILocation(line: 472, column: 21, scope: !3198)
!3216 = !DILocation(line: 482, column: 33, scope: !2976)
!3217 = !DILocation(line: 483, column: 33, scope: !2976)
!3218 = !DILocation(line: 485, column: 33, scope: !2976)
!3219 = !DILocation(line: 486, column: 33, scope: !2976)
!3220 = !DILocation(line: 487, column: 33, scope: !2976)
!3221 = !DILocation(line: 490, column: 17, scope: !2976)
!3222 = !DILocation(line: 492, column: 21, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !738, line: 491, column: 15)
!3224 = distinct !DILexicalBlock(scope: !2976, file: !738, line: 490, column: 17)
!3225 = !DILocation(line: 499, column: 35, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !2976, file: !738, line: 499, column: 17)
!3227 = !DILocation(line: 499, column: 57, scope: !3226)
!3228 = !DILocation(line: 0, scope: !2976)
!3229 = !DILocation(line: 502, column: 11, scope: !2976)
!3230 = !DILocation(line: 504, column: 17, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !2976, file: !738, line: 503, column: 17)
!3232 = !DILocation(line: 507, column: 11, scope: !2976)
!3233 = !DILocation(line: 508, column: 17, scope: !2976)
!3234 = !DILocation(line: 517, column: 15, scope: !2977)
!3235 = !DILocation(line: 517, column: 40, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 517, column: 15)
!3237 = !DILocation(line: 517, column: 47, scope: !3236)
!3238 = !DILocation(line: 517, column: 18, scope: !3236)
!3239 = !DILocation(line: 521, column: 17, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 521, column: 15)
!3241 = !DILocation(line: 521, column: 15, scope: !2977)
!3242 = !DILocation(line: 525, column: 11, scope: !2977)
!3243 = !DILocation(line: 537, column: 15, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 536, column: 15)
!3245 = !DILocation(line: 544, column: 15, scope: !2977)
!3246 = !DILocation(line: 546, column: 19, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !738, line: 545, column: 13)
!3248 = distinct !DILexicalBlock(scope: !2977, file: !738, line: 544, column: 15)
!3249 = !DILocation(line: 549, column: 19, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !738, line: 549, column: 19)
!3251 = !DILocation(line: 549, column: 30, scope: !3250)
!3252 = !DILocation(line: 558, column: 15, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !738, line: 558, column: 15)
!3254 = distinct !DILexicalBlock(scope: !3247, file: !738, line: 558, column: 15)
!3255 = !DILocation(line: 558, column: 15, scope: !3254)
!3256 = !DILocation(line: 559, column: 15, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !738, line: 559, column: 15)
!3258 = distinct !DILexicalBlock(scope: !3247, file: !738, line: 559, column: 15)
!3259 = !DILocation(line: 559, column: 15, scope: !3258)
!3260 = !DILocation(line: 560, column: 15, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !738, line: 560, column: 15)
!3262 = distinct !DILexicalBlock(scope: !3247, file: !738, line: 560, column: 15)
!3263 = !DILocation(line: 560, column: 15, scope: !3262)
!3264 = !DILocation(line: 562, column: 13, scope: !3247)
!3265 = !DILocation(line: 602, column: 17, scope: !2980)
!3266 = !DILocation(line: 0, scope: !2980)
!3267 = !DILocation(line: 605, column: 29, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !2984, file: !738, line: 603, column: 15)
!3269 = !DILocation(line: 605, column: 27, scope: !3268)
!3270 = !DILocation(line: 606, column: 15, scope: !3268)
!3271 = !DILocation(line: 609, column: 17, scope: !2983)
!3272 = !DILocation(line: 0, scope: !3043, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 609, column: 32, scope: !2983)
!3274 = !DILocation(line: 0, scope: !3051, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 1137, column: 3, scope: !3043, inlinedAt: !3273)
!3276 = !DILocation(line: 59, column: 10, scope: !3051, inlinedAt: !3275)
!3277 = !DILocation(line: 613, column: 29, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !2983, file: !738, line: 613, column: 21)
!3279 = !DILocation(line: 613, column: 21, scope: !2983)
!3280 = !DILocation(line: 614, column: 29, scope: !3278)
!3281 = !DILocation(line: 614, column: 19, scope: !3278)
!3282 = !DILocation(line: 618, column: 21, scope: !2986)
!3283 = !DILocation(line: 620, column: 54, scope: !2986)
!3284 = !DILocation(line: 619, column: 36, scope: !2986)
!3285 = !DILocation(line: 621, column: 25, scope: !2986)
!3286 = !DILocation(line: 631, column: 38, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !2995, file: !738, line: 629, column: 23)
!3288 = !DILocation(line: 631, column: 48, scope: !3287)
!3289 = !DILocation(line: 626, column: 25, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !2996, file: !738, line: 624, column: 23)
!3291 = !DILocation(line: 631, column: 51, scope: !3287)
!3292 = !DILocation(line: 631, column: 25, scope: !3287)
!3293 = !DILocation(line: 632, column: 28, scope: !3287)
!3294 = !DILocation(line: 631, column: 34, scope: !3287)
!3295 = distinct !{!3295, !3292, !3293, !1193}
!3296 = !DILocation(line: 0, scope: !2991)
!3297 = !DILocation(line: 646, column: 29, scope: !2993)
!3298 = !DILocation(line: 649, column: 39, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !2991, file: !738, line: 648, column: 29)
!3300 = !DILocation(line: 649, column: 31, scope: !3299)
!3301 = !DILocation(line: 648, column: 60, scope: !3299)
!3302 = !DILocation(line: 648, column: 50, scope: !3299)
!3303 = !DILocation(line: 648, column: 29, scope: !2991)
!3304 = distinct !{!3304, !3303, !3305, !1193}
!3305 = !DILocation(line: 654, column: 33, scope: !2991)
!3306 = !DILocation(line: 657, column: 43, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !2994, file: !738, line: 657, column: 29)
!3308 = !DILocalVariable(name: "wc", arg: 1, scope: !3309, file: !3310, line: 865, type: !3313)
!3309 = distinct !DISubprogram(name: "c32isprint", scope: !3310, file: !3310, line: 865, type: !3311, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3315)
!3310 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!118, !3313}
!3313 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3314, line: 20, baseType: !110)
!3314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3315 = !{!3308}
!3316 = !DILocation(line: 0, scope: !3309, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 657, column: 31, scope: !3307)
!3318 = !DILocation(line: 871, column: 10, scope: !3309, inlinedAt: !3317)
!3319 = !DILocation(line: 657, column: 31, scope: !3307)
!3320 = !DILocation(line: 664, column: 23, scope: !2986)
!3321 = !DILocation(line: 665, column: 19, scope: !2987)
!3322 = !DILocation(line: 666, column: 15, scope: !2984)
!3323 = !DILocation(line: 0, scope: !2984)
!3324 = !DILocation(line: 670, column: 19, scope: !3000)
!3325 = !DILocation(line: 670, column: 23, scope: !3000)
!3326 = !DILocation(line: 674, column: 33, scope: !2999)
!3327 = !DILocation(line: 0, scope: !2999)
!3328 = !DILocation(line: 676, column: 17, scope: !2999)
!3329 = !DILocation(line: 398, column: 12, scope: !2970)
!3330 = !DILocation(line: 678, column: 43, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !738, line: 678, column: 25)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !738, line: 677, column: 19)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !738, line: 676, column: 17)
!3334 = distinct !DILexicalBlock(scope: !2999, file: !738, line: 676, column: 17)
!3335 = !DILocation(line: 680, column: 25, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !738, line: 680, column: 25)
!3337 = distinct !DILexicalBlock(scope: !3331, file: !738, line: 679, column: 23)
!3338 = !DILocation(line: 680, column: 25, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !738, line: 680, column: 25)
!3340 = !DILocation(line: 680, column: 25, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !738, line: 680, column: 25)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !738, line: 680, column: 25)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !738, line: 680, column: 25)
!3344 = !DILocation(line: 680, column: 25, scope: !3342)
!3345 = !DILocation(line: 680, column: 25, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !738, line: 680, column: 25)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !738, line: 680, column: 25)
!3348 = !DILocation(line: 680, column: 25, scope: !3347)
!3349 = !DILocation(line: 680, column: 25, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !738, line: 680, column: 25)
!3351 = distinct !DILexicalBlock(scope: !3343, file: !738, line: 680, column: 25)
!3352 = !DILocation(line: 680, column: 25, scope: !3351)
!3353 = !DILocation(line: 680, column: 25, scope: !3343)
!3354 = !DILocation(line: 680, column: 25, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !738, line: 680, column: 25)
!3356 = distinct !DILexicalBlock(scope: !3336, file: !738, line: 680, column: 25)
!3357 = !DILocation(line: 680, column: 25, scope: !3356)
!3358 = !DILocation(line: 681, column: 25, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !738, line: 681, column: 25)
!3360 = distinct !DILexicalBlock(scope: !3337, file: !738, line: 681, column: 25)
!3361 = !DILocation(line: 681, column: 25, scope: !3360)
!3362 = !DILocation(line: 682, column: 25, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !738, line: 682, column: 25)
!3364 = distinct !DILexicalBlock(scope: !3337, file: !738, line: 682, column: 25)
!3365 = !DILocation(line: 682, column: 25, scope: !3364)
!3366 = !DILocation(line: 683, column: 38, scope: !3337)
!3367 = !DILocation(line: 683, column: 33, scope: !3337)
!3368 = !DILocation(line: 684, column: 23, scope: !3337)
!3369 = !DILocation(line: 685, column: 30, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3331, file: !738, line: 685, column: 30)
!3371 = !DILocation(line: 685, column: 30, scope: !3331)
!3372 = !DILocation(line: 687, column: 25, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !738, line: 687, column: 25)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !738, line: 687, column: 25)
!3375 = distinct !DILexicalBlock(scope: !3370, file: !738, line: 686, column: 23)
!3376 = !DILocation(line: 687, column: 25, scope: !3374)
!3377 = !DILocation(line: 689, column: 23, scope: !3375)
!3378 = !DILocation(line: 690, column: 35, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3332, file: !738, line: 690, column: 25)
!3380 = !DILocation(line: 690, column: 30, scope: !3379)
!3381 = !DILocation(line: 690, column: 25, scope: !3332)
!3382 = !DILocation(line: 692, column: 21, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !738, line: 692, column: 21)
!3384 = distinct !DILexicalBlock(scope: !3332, file: !738, line: 692, column: 21)
!3385 = !DILocation(line: 692, column: 21, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !738, line: 692, column: 21)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !738, line: 692, column: 21)
!3388 = distinct !DILexicalBlock(scope: !3383, file: !738, line: 692, column: 21)
!3389 = !DILocation(line: 692, column: 21, scope: !3387)
!3390 = !DILocation(line: 692, column: 21, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !738, line: 692, column: 21)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !738, line: 692, column: 21)
!3393 = !DILocation(line: 692, column: 21, scope: !3392)
!3394 = !DILocation(line: 692, column: 21, scope: !3388)
!3395 = !DILocation(line: 0, scope: !3332)
!3396 = !DILocation(line: 693, column: 21, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !738, line: 693, column: 21)
!3398 = distinct !DILexicalBlock(scope: !3332, file: !738, line: 693, column: 21)
!3399 = !DILocation(line: 693, column: 21, scope: !3398)
!3400 = !DILocation(line: 694, column: 25, scope: !3332)
!3401 = !DILocation(line: 676, column: 17, scope: !3333)
!3402 = distinct !{!3402, !3403, !3404}
!3403 = !DILocation(line: 676, column: 17, scope: !3334)
!3404 = !DILocation(line: 695, column: 19, scope: !3334)
!3405 = !DILocation(line: 409, column: 30, scope: !3121)
!3406 = !DILocation(line: 702, column: 34, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !2970, file: !738, line: 702, column: 11)
!3408 = !DILocation(line: 704, column: 14, scope: !3407)
!3409 = !DILocation(line: 705, column: 14, scope: !3407)
!3410 = !DILocation(line: 705, column: 35, scope: !3407)
!3411 = !DILocation(line: 705, column: 17, scope: !3407)
!3412 = !DILocation(line: 705, column: 47, scope: !3407)
!3413 = !DILocation(line: 705, column: 65, scope: !3407)
!3414 = !DILocation(line: 706, column: 11, scope: !3407)
!3415 = !DILocation(line: 702, column: 11, scope: !2970)
!3416 = !DILocation(line: 395, column: 15, scope: !2968)
!3417 = !DILocation(line: 709, column: 5, scope: !2970)
!3418 = !DILocation(line: 710, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !2970, file: !738, line: 710, column: 7)
!3420 = !DILocation(line: 710, column: 7, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3419, file: !738, line: 710, column: 7)
!3422 = !DILocation(line: 710, column: 7, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !738, line: 710, column: 7)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !738, line: 710, column: 7)
!3425 = distinct !DILexicalBlock(scope: !3421, file: !738, line: 710, column: 7)
!3426 = !DILocation(line: 710, column: 7, scope: !3424)
!3427 = !DILocation(line: 710, column: 7, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !738, line: 710, column: 7)
!3429 = distinct !DILexicalBlock(scope: !3425, file: !738, line: 710, column: 7)
!3430 = !DILocation(line: 710, column: 7, scope: !3429)
!3431 = !DILocation(line: 710, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !738, line: 710, column: 7)
!3433 = distinct !DILexicalBlock(scope: !3425, file: !738, line: 710, column: 7)
!3434 = !DILocation(line: 710, column: 7, scope: !3433)
!3435 = !DILocation(line: 710, column: 7, scope: !3425)
!3436 = !DILocation(line: 710, column: 7, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !738, line: 710, column: 7)
!3438 = distinct !DILexicalBlock(scope: !3419, file: !738, line: 710, column: 7)
!3439 = !DILocation(line: 710, column: 7, scope: !3438)
!3440 = !DILocation(line: 712, column: 5, scope: !2970)
!3441 = !DILocation(line: 713, column: 7, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !738, line: 713, column: 7)
!3443 = distinct !DILexicalBlock(scope: !2970, file: !738, line: 713, column: 7)
!3444 = !DILocation(line: 417, column: 21, scope: !2970)
!3445 = !DILocation(line: 713, column: 7, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !738, line: 713, column: 7)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !738, line: 713, column: 7)
!3448 = distinct !DILexicalBlock(scope: !3442, file: !738, line: 713, column: 7)
!3449 = !DILocation(line: 713, column: 7, scope: !3447)
!3450 = !DILocation(line: 713, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !738, line: 713, column: 7)
!3452 = distinct !DILexicalBlock(scope: !3448, file: !738, line: 713, column: 7)
!3453 = !DILocation(line: 713, column: 7, scope: !3452)
!3454 = !DILocation(line: 713, column: 7, scope: !3448)
!3455 = !DILocation(line: 714, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !738, line: 714, column: 7)
!3457 = distinct !DILexicalBlock(scope: !2970, file: !738, line: 714, column: 7)
!3458 = !DILocation(line: 714, column: 7, scope: !3457)
!3459 = !DILocation(line: 716, column: 13, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !2970, file: !738, line: 716, column: 11)
!3461 = !DILocation(line: 716, column: 11, scope: !2970)
!3462 = !DILocation(line: 718, column: 5, scope: !2971)
!3463 = !DILocation(line: 395, column: 82, scope: !2971)
!3464 = !DILocation(line: 395, column: 3, scope: !2971)
!3465 = distinct !{!3465, !3117, !3466, !1193}
!3466 = !DILocation(line: 718, column: 5, scope: !2968)
!3467 = !DILocation(line: 720, column: 11, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !2936, file: !738, line: 720, column: 7)
!3469 = !DILocation(line: 720, column: 16, scope: !3468)
!3470 = !DILocation(line: 728, column: 51, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !2936, file: !738, line: 728, column: 7)
!3472 = !DILocation(line: 731, column: 11, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !738, line: 731, column: 11)
!3474 = distinct !DILexicalBlock(scope: !3471, file: !738, line: 730, column: 5)
!3475 = !DILocation(line: 731, column: 11, scope: !3474)
!3476 = !DILocation(line: 732, column: 16, scope: !3473)
!3477 = !DILocation(line: 732, column: 9, scope: !3473)
!3478 = !DILocation(line: 736, column: 18, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3473, file: !738, line: 736, column: 16)
!3480 = !DILocation(line: 736, column: 29, scope: !3479)
!3481 = !DILocation(line: 745, column: 7, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !2936, file: !738, line: 745, column: 7)
!3483 = !DILocation(line: 745, column: 20, scope: !3482)
!3484 = !DILocation(line: 746, column: 12, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !738, line: 746, column: 5)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !738, line: 746, column: 5)
!3487 = !DILocation(line: 746, column: 5, scope: !3486)
!3488 = !DILocation(line: 747, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !738, line: 747, column: 7)
!3490 = distinct !DILexicalBlock(scope: !3485, file: !738, line: 747, column: 7)
!3491 = !DILocation(line: 747, column: 7, scope: !3490)
!3492 = !DILocation(line: 746, column: 39, scope: !3485)
!3493 = distinct !{!3493, !3487, !3494, !1193}
!3494 = !DILocation(line: 747, column: 7, scope: !3486)
!3495 = !DILocation(line: 749, column: 11, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !2936, file: !738, line: 749, column: 7)
!3497 = !DILocation(line: 749, column: 7, scope: !2936)
!3498 = !DILocation(line: 750, column: 5, scope: !3496)
!3499 = !DILocation(line: 750, column: 17, scope: !3496)
!3500 = !DILocation(line: 753, column: 2, scope: !2936)
!3501 = !DILocation(line: 756, column: 51, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !2936, file: !738, line: 756, column: 7)
!3503 = !DILocation(line: 756, column: 21, scope: !3502)
!3504 = !DILocation(line: 760, column: 42, scope: !2936)
!3505 = !DILocation(line: 758, column: 10, scope: !2936)
!3506 = !DILocation(line: 758, column: 3, scope: !2936)
!3507 = !DILocation(line: 762, column: 1, scope: !2936)
!3508 = !DISubprogram(name: "iswprint", scope: !3509, file: !3509, line: 120, type: !3311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3509 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3510 = distinct !DISubprogram(name: "quotearg_alloc", scope: !738, file: !738, line: 788, type: !3511, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!177, !183, !180, !2829}
!3513 = !{!3514, !3515, !3516}
!3514 = !DILocalVariable(name: "arg", arg: 1, scope: !3510, file: !738, line: 788, type: !183)
!3515 = !DILocalVariable(name: "argsize", arg: 2, scope: !3510, file: !738, line: 788, type: !180)
!3516 = !DILocalVariable(name: "o", arg: 3, scope: !3510, file: !738, line: 789, type: !2829)
!3517 = !DILocation(line: 0, scope: !3510)
!3518 = !DILocalVariable(name: "arg", arg: 1, scope: !3519, file: !738, line: 801, type: !183)
!3519 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !738, file: !738, line: 801, type: !3520, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!177, !183, !180, !984, !2829}
!3522 = !{!3518, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3523 = !DILocalVariable(name: "argsize", arg: 2, scope: !3519, file: !738, line: 801, type: !180)
!3524 = !DILocalVariable(name: "size", arg: 3, scope: !3519, file: !738, line: 801, type: !984)
!3525 = !DILocalVariable(name: "o", arg: 4, scope: !3519, file: !738, line: 802, type: !2829)
!3526 = !DILocalVariable(name: "p", scope: !3519, file: !738, line: 804, type: !2829)
!3527 = !DILocalVariable(name: "saved_errno", scope: !3519, file: !738, line: 805, type: !118)
!3528 = !DILocalVariable(name: "flags", scope: !3519, file: !738, line: 807, type: !118)
!3529 = !DILocalVariable(name: "bufsize", scope: !3519, file: !738, line: 808, type: !180)
!3530 = !DILocalVariable(name: "buf", scope: !3519, file: !738, line: 812, type: !177)
!3531 = !DILocation(line: 0, scope: !3519, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 791, column: 10, scope: !3510)
!3533 = !DILocation(line: 804, column: 37, scope: !3519, inlinedAt: !3532)
!3534 = !DILocation(line: 805, column: 21, scope: !3519, inlinedAt: !3532)
!3535 = !DILocation(line: 807, column: 18, scope: !3519, inlinedAt: !3532)
!3536 = !DILocation(line: 807, column: 24, scope: !3519, inlinedAt: !3532)
!3537 = !DILocation(line: 808, column: 72, scope: !3519, inlinedAt: !3532)
!3538 = !DILocation(line: 809, column: 56, scope: !3519, inlinedAt: !3532)
!3539 = !DILocation(line: 810, column: 49, scope: !3519, inlinedAt: !3532)
!3540 = !DILocation(line: 811, column: 49, scope: !3519, inlinedAt: !3532)
!3541 = !DILocation(line: 808, column: 20, scope: !3519, inlinedAt: !3532)
!3542 = !DILocation(line: 811, column: 62, scope: !3519, inlinedAt: !3532)
!3543 = !DILocation(line: 812, column: 15, scope: !3519, inlinedAt: !3532)
!3544 = !DILocation(line: 813, column: 60, scope: !3519, inlinedAt: !3532)
!3545 = !DILocation(line: 815, column: 32, scope: !3519, inlinedAt: !3532)
!3546 = !DILocation(line: 815, column: 47, scope: !3519, inlinedAt: !3532)
!3547 = !DILocation(line: 813, column: 3, scope: !3519, inlinedAt: !3532)
!3548 = !DILocation(line: 816, column: 9, scope: !3519, inlinedAt: !3532)
!3549 = !DILocation(line: 791, column: 3, scope: !3510)
!3550 = !DILocation(line: 0, scope: !3519)
!3551 = !DILocation(line: 804, column: 37, scope: !3519)
!3552 = !DILocation(line: 805, column: 21, scope: !3519)
!3553 = !DILocation(line: 807, column: 18, scope: !3519)
!3554 = !DILocation(line: 807, column: 27, scope: !3519)
!3555 = !DILocation(line: 807, column: 24, scope: !3519)
!3556 = !DILocation(line: 808, column: 72, scope: !3519)
!3557 = !DILocation(line: 809, column: 56, scope: !3519)
!3558 = !DILocation(line: 810, column: 49, scope: !3519)
!3559 = !DILocation(line: 811, column: 49, scope: !3519)
!3560 = !DILocation(line: 808, column: 20, scope: !3519)
!3561 = !DILocation(line: 811, column: 62, scope: !3519)
!3562 = !DILocation(line: 812, column: 15, scope: !3519)
!3563 = !DILocation(line: 813, column: 60, scope: !3519)
!3564 = !DILocation(line: 815, column: 32, scope: !3519)
!3565 = !DILocation(line: 815, column: 47, scope: !3519)
!3566 = !DILocation(line: 813, column: 3, scope: !3519)
!3567 = !DILocation(line: 816, column: 9, scope: !3519)
!3568 = !DILocation(line: 817, column: 7, scope: !3519)
!3569 = !DILocation(line: 818, column: 11, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3519, file: !738, line: 817, column: 7)
!3571 = !DILocation(line: 818, column: 5, scope: !3570)
!3572 = !DILocation(line: 819, column: 3, scope: !3519)
!3573 = distinct !DISubprogram(name: "quotearg_free", scope: !738, file: !738, line: 837, type: !601, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3574)
!3574 = !{!3575, !3576}
!3575 = !DILocalVariable(name: "sv", scope: !3573, file: !738, line: 839, type: !821)
!3576 = !DILocalVariable(name: "i", scope: !3577, file: !738, line: 840, type: !118)
!3577 = distinct !DILexicalBlock(scope: !3573, file: !738, line: 840, column: 3)
!3578 = !DILocation(line: 839, column: 24, scope: !3573)
!3579 = !DILocation(line: 0, scope: !3573)
!3580 = !DILocation(line: 0, scope: !3577)
!3581 = !DILocation(line: 840, column: 21, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3577, file: !738, line: 840, column: 3)
!3583 = !DILocation(line: 840, column: 3, scope: !3577)
!3584 = !DILocation(line: 842, column: 13, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3573, file: !738, line: 842, column: 7)
!3586 = !{!3587, !1066, i64 8}
!3587 = !{!"slotvec", !1349, i64 0, !1066, i64 8}
!3588 = !DILocation(line: 842, column: 17, scope: !3585)
!3589 = !DILocation(line: 842, column: 7, scope: !3573)
!3590 = !DILocation(line: 841, column: 17, scope: !3582)
!3591 = !DILocation(line: 841, column: 5, scope: !3582)
!3592 = !DILocation(line: 840, column: 32, scope: !3582)
!3593 = distinct !{!3593, !3583, !3594, !1193}
!3594 = !DILocation(line: 841, column: 20, scope: !3577)
!3595 = !DILocation(line: 844, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3585, file: !738, line: 843, column: 5)
!3597 = !DILocation(line: 845, column: 21, scope: !3596)
!3598 = !{!3587, !1349, i64 0}
!3599 = !DILocation(line: 846, column: 20, scope: !3596)
!3600 = !DILocation(line: 847, column: 5, scope: !3596)
!3601 = !DILocation(line: 848, column: 10, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3573, file: !738, line: 848, column: 7)
!3603 = !DILocation(line: 848, column: 7, scope: !3573)
!3604 = !DILocation(line: 850, column: 7, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3602, file: !738, line: 849, column: 5)
!3606 = !DILocation(line: 851, column: 15, scope: !3605)
!3607 = !DILocation(line: 852, column: 5, scope: !3605)
!3608 = !DILocation(line: 853, column: 10, scope: !3573)
!3609 = !DILocation(line: 854, column: 1, scope: !3573)
!3610 = distinct !DISubprogram(name: "quotearg_n", scope: !738, file: !738, line: 919, type: !1263, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3611)
!3611 = !{!3612, !3613}
!3612 = !DILocalVariable(name: "n", arg: 1, scope: !3610, file: !738, line: 919, type: !118)
!3613 = !DILocalVariable(name: "arg", arg: 2, scope: !3610, file: !738, line: 919, type: !183)
!3614 = !DILocation(line: 0, scope: !3610)
!3615 = !DILocation(line: 921, column: 10, scope: !3610)
!3616 = !DILocation(line: 921, column: 3, scope: !3610)
!3617 = distinct !DISubprogram(name: "quotearg_n_options", scope: !738, file: !738, line: 866, type: !3618, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!177, !118, !183, !180, !2829}
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3631, !3632, !3634, !3635, !3636}
!3621 = !DILocalVariable(name: "n", arg: 1, scope: !3617, file: !738, line: 866, type: !118)
!3622 = !DILocalVariable(name: "arg", arg: 2, scope: !3617, file: !738, line: 866, type: !183)
!3623 = !DILocalVariable(name: "argsize", arg: 3, scope: !3617, file: !738, line: 866, type: !180)
!3624 = !DILocalVariable(name: "options", arg: 4, scope: !3617, file: !738, line: 867, type: !2829)
!3625 = !DILocalVariable(name: "saved_errno", scope: !3617, file: !738, line: 869, type: !118)
!3626 = !DILocalVariable(name: "sv", scope: !3617, file: !738, line: 871, type: !821)
!3627 = !DILocalVariable(name: "nslots_max", scope: !3617, file: !738, line: 873, type: !118)
!3628 = !DILocalVariable(name: "preallocated", scope: !3629, file: !738, line: 879, type: !311)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !738, line: 878, column: 5)
!3630 = distinct !DILexicalBlock(scope: !3617, file: !738, line: 877, column: 7)
!3631 = !DILocalVariable(name: "new_nslots", scope: !3629, file: !738, line: 880, type: !997)
!3632 = !DILocalVariable(name: "size", scope: !3633, file: !738, line: 891, type: !180)
!3633 = distinct !DILexicalBlock(scope: !3617, file: !738, line: 890, column: 3)
!3634 = !DILocalVariable(name: "val", scope: !3633, file: !738, line: 892, type: !177)
!3635 = !DILocalVariable(name: "flags", scope: !3633, file: !738, line: 894, type: !118)
!3636 = !DILocalVariable(name: "qsize", scope: !3633, file: !738, line: 895, type: !180)
!3637 = distinct !DIAssignID()
!3638 = !DILocation(line: 0, scope: !3629)
!3639 = !DILocation(line: 0, scope: !3617)
!3640 = !DILocation(line: 869, column: 21, scope: !3617)
!3641 = !DILocation(line: 871, column: 24, scope: !3617)
!3642 = !DILocation(line: 874, column: 17, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3617, file: !738, line: 874, column: 7)
!3644 = !DILocation(line: 875, column: 5, scope: !3643)
!3645 = !DILocation(line: 877, column: 7, scope: !3630)
!3646 = !DILocation(line: 877, column: 14, scope: !3630)
!3647 = !DILocation(line: 877, column: 7, scope: !3617)
!3648 = !DILocation(line: 879, column: 31, scope: !3629)
!3649 = !DILocation(line: 880, column: 7, scope: !3629)
!3650 = !DILocation(line: 880, column: 26, scope: !3629)
!3651 = !DILocation(line: 880, column: 13, scope: !3629)
!3652 = distinct !DIAssignID()
!3653 = !DILocation(line: 882, column: 31, scope: !3629)
!3654 = !DILocation(line: 883, column: 33, scope: !3629)
!3655 = !DILocation(line: 883, column: 42, scope: !3629)
!3656 = !DILocation(line: 883, column: 31, scope: !3629)
!3657 = !DILocation(line: 882, column: 22, scope: !3629)
!3658 = !DILocation(line: 882, column: 15, scope: !3629)
!3659 = !DILocation(line: 884, column: 11, scope: !3629)
!3660 = !DILocation(line: 885, column: 15, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3629, file: !738, line: 884, column: 11)
!3662 = !{i64 0, i64 8, !1348, i64 8, i64 8, !1065}
!3663 = !DILocation(line: 885, column: 9, scope: !3661)
!3664 = !DILocation(line: 886, column: 20, scope: !3629)
!3665 = !DILocation(line: 886, column: 18, scope: !3629)
!3666 = !DILocation(line: 886, column: 32, scope: !3629)
!3667 = !DILocation(line: 886, column: 43, scope: !3629)
!3668 = !DILocation(line: 886, column: 53, scope: !3629)
!3669 = !DILocation(line: 0, scope: !3051, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 886, column: 7, scope: !3629)
!3671 = !DILocation(line: 59, column: 10, scope: !3051, inlinedAt: !3670)
!3672 = !DILocation(line: 887, column: 16, scope: !3629)
!3673 = !DILocation(line: 887, column: 14, scope: !3629)
!3674 = !DILocation(line: 888, column: 5, scope: !3630)
!3675 = !DILocation(line: 888, column: 5, scope: !3629)
!3676 = !DILocation(line: 891, column: 19, scope: !3633)
!3677 = !DILocation(line: 891, column: 25, scope: !3633)
!3678 = !DILocation(line: 0, scope: !3633)
!3679 = !DILocation(line: 892, column: 23, scope: !3633)
!3680 = !DILocation(line: 894, column: 26, scope: !3633)
!3681 = !DILocation(line: 894, column: 32, scope: !3633)
!3682 = !DILocation(line: 896, column: 55, scope: !3633)
!3683 = !DILocation(line: 897, column: 55, scope: !3633)
!3684 = !DILocation(line: 898, column: 55, scope: !3633)
!3685 = !DILocation(line: 899, column: 55, scope: !3633)
!3686 = !DILocation(line: 895, column: 20, scope: !3633)
!3687 = !DILocation(line: 901, column: 14, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3633, file: !738, line: 901, column: 9)
!3689 = !DILocation(line: 901, column: 9, scope: !3633)
!3690 = !DILocation(line: 903, column: 35, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3688, file: !738, line: 902, column: 7)
!3692 = !DILocation(line: 903, column: 20, scope: !3691)
!3693 = !DILocation(line: 904, column: 17, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !738, line: 904, column: 13)
!3695 = !DILocation(line: 904, column: 13, scope: !3691)
!3696 = !DILocation(line: 905, column: 11, scope: !3694)
!3697 = !DILocation(line: 906, column: 27, scope: !3691)
!3698 = !DILocation(line: 906, column: 19, scope: !3691)
!3699 = !DILocation(line: 907, column: 69, scope: !3691)
!3700 = !DILocation(line: 909, column: 44, scope: !3691)
!3701 = !DILocation(line: 910, column: 44, scope: !3691)
!3702 = !DILocation(line: 907, column: 9, scope: !3691)
!3703 = !DILocation(line: 911, column: 7, scope: !3691)
!3704 = !DILocation(line: 913, column: 11, scope: !3633)
!3705 = !DILocation(line: 914, column: 5, scope: !3633)
!3706 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !738, file: !738, line: 925, type: !3707, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!177, !118, !183, !180}
!3709 = !{!3710, !3711, !3712}
!3710 = !DILocalVariable(name: "n", arg: 1, scope: !3706, file: !738, line: 925, type: !118)
!3711 = !DILocalVariable(name: "arg", arg: 2, scope: !3706, file: !738, line: 925, type: !183)
!3712 = !DILocalVariable(name: "argsize", arg: 3, scope: !3706, file: !738, line: 925, type: !180)
!3713 = !DILocation(line: 0, scope: !3706)
!3714 = !DILocation(line: 927, column: 10, scope: !3706)
!3715 = !DILocation(line: 927, column: 3, scope: !3706)
!3716 = distinct !DISubprogram(name: "quotearg", scope: !738, file: !738, line: 931, type: !1272, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3717)
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "arg", arg: 1, scope: !3716, file: !738, line: 931, type: !183)
!3719 = !DILocation(line: 0, scope: !3716)
!3720 = !DILocation(line: 0, scope: !3610, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 933, column: 10, scope: !3716)
!3722 = !DILocation(line: 921, column: 10, scope: !3610, inlinedAt: !3721)
!3723 = !DILocation(line: 933, column: 3, scope: !3716)
!3724 = distinct !DISubprogram(name: "quotearg_mem", scope: !738, file: !738, line: 937, type: !3725, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!177, !183, !180}
!3727 = !{!3728, !3729}
!3728 = !DILocalVariable(name: "arg", arg: 1, scope: !3724, file: !738, line: 937, type: !183)
!3729 = !DILocalVariable(name: "argsize", arg: 2, scope: !3724, file: !738, line: 937, type: !180)
!3730 = !DILocation(line: 0, scope: !3724)
!3731 = !DILocation(line: 0, scope: !3706, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 939, column: 10, scope: !3724)
!3733 = !DILocation(line: 927, column: 10, scope: !3706, inlinedAt: !3732)
!3734 = !DILocation(line: 939, column: 3, scope: !3724)
!3735 = distinct !DISubprogram(name: "quotearg_n_style", scope: !738, file: !738, line: 943, type: !3736, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!177, !118, !761, !183}
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DILocalVariable(name: "n", arg: 1, scope: !3735, file: !738, line: 943, type: !118)
!3740 = !DILocalVariable(name: "s", arg: 2, scope: !3735, file: !738, line: 943, type: !761)
!3741 = !DILocalVariable(name: "arg", arg: 3, scope: !3735, file: !738, line: 943, type: !183)
!3742 = !DILocalVariable(name: "o", scope: !3735, file: !738, line: 945, type: !2830)
!3743 = distinct !DIAssignID()
!3744 = !DILocation(line: 0, scope: !3735)
!3745 = !DILocation(line: 945, column: 3, scope: !3735)
!3746 = !{!3747}
!3747 = distinct !{!3747, !3748, !"quoting_options_from_style: argument 0"}
!3748 = distinct !{!3748, !"quoting_options_from_style"}
!3749 = !DILocation(line: 945, column: 36, scope: !3735)
!3750 = !DILocalVariable(name: "style", arg: 1, scope: !3751, file: !738, line: 183, type: !761)
!3751 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !738, file: !738, line: 183, type: !3752, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!776, !761}
!3754 = !{!3750, !3755}
!3755 = !DILocalVariable(name: "o", scope: !3751, file: !738, line: 185, type: !776)
!3756 = !DILocation(line: 0, scope: !3751, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 945, column: 36, scope: !3735)
!3758 = !DILocation(line: 185, column: 26, scope: !3751, inlinedAt: !3757)
!3759 = distinct !DIAssignID()
!3760 = !DILocation(line: 186, column: 13, scope: !3761, inlinedAt: !3757)
!3761 = distinct !DILexicalBlock(scope: !3751, file: !738, line: 186, column: 7)
!3762 = !DILocation(line: 186, column: 7, scope: !3751, inlinedAt: !3757)
!3763 = !DILocation(line: 187, column: 5, scope: !3761, inlinedAt: !3757)
!3764 = !DILocation(line: 188, column: 11, scope: !3751, inlinedAt: !3757)
!3765 = distinct !DIAssignID()
!3766 = !DILocation(line: 946, column: 10, scope: !3735)
!3767 = !DILocation(line: 947, column: 1, scope: !3735)
!3768 = !DILocation(line: 946, column: 3, scope: !3735)
!3769 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !738, file: !738, line: 950, type: !3770, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!177, !118, !761, !183, !180}
!3772 = !{!3773, !3774, !3775, !3776, !3777}
!3773 = !DILocalVariable(name: "n", arg: 1, scope: !3769, file: !738, line: 950, type: !118)
!3774 = !DILocalVariable(name: "s", arg: 2, scope: !3769, file: !738, line: 950, type: !761)
!3775 = !DILocalVariable(name: "arg", arg: 3, scope: !3769, file: !738, line: 951, type: !183)
!3776 = !DILocalVariable(name: "argsize", arg: 4, scope: !3769, file: !738, line: 951, type: !180)
!3777 = !DILocalVariable(name: "o", scope: !3769, file: !738, line: 953, type: !2830)
!3778 = distinct !DIAssignID()
!3779 = !DILocation(line: 0, scope: !3769)
!3780 = !DILocation(line: 953, column: 3, scope: !3769)
!3781 = !{!3782}
!3782 = distinct !{!3782, !3783, !"quoting_options_from_style: argument 0"}
!3783 = distinct !{!3783, !"quoting_options_from_style"}
!3784 = !DILocation(line: 953, column: 36, scope: !3769)
!3785 = !DILocation(line: 0, scope: !3751, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 953, column: 36, scope: !3769)
!3787 = !DILocation(line: 185, column: 26, scope: !3751, inlinedAt: !3786)
!3788 = distinct !DIAssignID()
!3789 = !DILocation(line: 186, column: 13, scope: !3761, inlinedAt: !3786)
!3790 = !DILocation(line: 186, column: 7, scope: !3751, inlinedAt: !3786)
!3791 = !DILocation(line: 187, column: 5, scope: !3761, inlinedAt: !3786)
!3792 = !DILocation(line: 188, column: 11, scope: !3751, inlinedAt: !3786)
!3793 = distinct !DIAssignID()
!3794 = !DILocation(line: 954, column: 10, scope: !3769)
!3795 = !DILocation(line: 955, column: 1, scope: !3769)
!3796 = !DILocation(line: 954, column: 3, scope: !3769)
!3797 = distinct !DISubprogram(name: "quotearg_style", scope: !738, file: !738, line: 958, type: !3798, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3800)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!177, !761, !183}
!3800 = !{!3801, !3802}
!3801 = !DILocalVariable(name: "s", arg: 1, scope: !3797, file: !738, line: 958, type: !761)
!3802 = !DILocalVariable(name: "arg", arg: 2, scope: !3797, file: !738, line: 958, type: !183)
!3803 = distinct !DIAssignID()
!3804 = !DILocation(line: 0, scope: !3797)
!3805 = !DILocation(line: 0, scope: !3735, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 960, column: 10, scope: !3797)
!3807 = !DILocation(line: 945, column: 3, scope: !3735, inlinedAt: !3806)
!3808 = !{!3809}
!3809 = distinct !{!3809, !3810, !"quoting_options_from_style: argument 0"}
!3810 = distinct !{!3810, !"quoting_options_from_style"}
!3811 = !DILocation(line: 945, column: 36, scope: !3735, inlinedAt: !3806)
!3812 = !DILocation(line: 0, scope: !3751, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 945, column: 36, scope: !3735, inlinedAt: !3806)
!3814 = !DILocation(line: 185, column: 26, scope: !3751, inlinedAt: !3813)
!3815 = distinct !DIAssignID()
!3816 = !DILocation(line: 186, column: 13, scope: !3761, inlinedAt: !3813)
!3817 = !DILocation(line: 186, column: 7, scope: !3751, inlinedAt: !3813)
!3818 = !DILocation(line: 187, column: 5, scope: !3761, inlinedAt: !3813)
!3819 = !DILocation(line: 188, column: 11, scope: !3751, inlinedAt: !3813)
!3820 = distinct !DIAssignID()
!3821 = !DILocation(line: 946, column: 10, scope: !3735, inlinedAt: !3806)
!3822 = !DILocation(line: 947, column: 1, scope: !3735, inlinedAt: !3806)
!3823 = !DILocation(line: 960, column: 3, scope: !3797)
!3824 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !738, file: !738, line: 964, type: !3825, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!177, !761, !183, !180}
!3827 = !{!3828, !3829, !3830}
!3828 = !DILocalVariable(name: "s", arg: 1, scope: !3824, file: !738, line: 964, type: !761)
!3829 = !DILocalVariable(name: "arg", arg: 2, scope: !3824, file: !738, line: 964, type: !183)
!3830 = !DILocalVariable(name: "argsize", arg: 3, scope: !3824, file: !738, line: 964, type: !180)
!3831 = distinct !DIAssignID()
!3832 = !DILocation(line: 0, scope: !3824)
!3833 = !DILocation(line: 0, scope: !3769, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 966, column: 10, scope: !3824)
!3835 = !DILocation(line: 953, column: 3, scope: !3769, inlinedAt: !3834)
!3836 = !{!3837}
!3837 = distinct !{!3837, !3838, !"quoting_options_from_style: argument 0"}
!3838 = distinct !{!3838, !"quoting_options_from_style"}
!3839 = !DILocation(line: 953, column: 36, scope: !3769, inlinedAt: !3834)
!3840 = !DILocation(line: 0, scope: !3751, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 953, column: 36, scope: !3769, inlinedAt: !3834)
!3842 = !DILocation(line: 185, column: 26, scope: !3751, inlinedAt: !3841)
!3843 = distinct !DIAssignID()
!3844 = !DILocation(line: 186, column: 13, scope: !3761, inlinedAt: !3841)
!3845 = !DILocation(line: 186, column: 7, scope: !3751, inlinedAt: !3841)
!3846 = !DILocation(line: 187, column: 5, scope: !3761, inlinedAt: !3841)
!3847 = !DILocation(line: 188, column: 11, scope: !3751, inlinedAt: !3841)
!3848 = distinct !DIAssignID()
!3849 = !DILocation(line: 954, column: 10, scope: !3769, inlinedAt: !3834)
!3850 = !DILocation(line: 955, column: 1, scope: !3769, inlinedAt: !3834)
!3851 = !DILocation(line: 966, column: 3, scope: !3824)
!3852 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !738, file: !738, line: 970, type: !3853, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!177, !183, !180, !4}
!3855 = !{!3856, !3857, !3858, !3859}
!3856 = !DILocalVariable(name: "arg", arg: 1, scope: !3852, file: !738, line: 970, type: !183)
!3857 = !DILocalVariable(name: "argsize", arg: 2, scope: !3852, file: !738, line: 970, type: !180)
!3858 = !DILocalVariable(name: "ch", arg: 3, scope: !3852, file: !738, line: 970, type: !4)
!3859 = !DILocalVariable(name: "options", scope: !3852, file: !738, line: 972, type: !776)
!3860 = distinct !DIAssignID()
!3861 = !DILocation(line: 0, scope: !3852)
!3862 = !DILocation(line: 972, column: 3, scope: !3852)
!3863 = !DILocation(line: 973, column: 13, scope: !3852)
!3864 = !{i64 0, i64 4, !1146, i64 4, i64 4, !1146, i64 8, i64 32, !1155, i64 40, i64 8, !1065, i64 48, i64 8, !1065}
!3865 = distinct !DIAssignID()
!3866 = !DILocation(line: 0, scope: !2849, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 974, column: 3, scope: !3852)
!3868 = !DILocation(line: 147, column: 41, scope: !2849, inlinedAt: !3867)
!3869 = !DILocation(line: 147, column: 62, scope: !2849, inlinedAt: !3867)
!3870 = !DILocation(line: 147, column: 57, scope: !2849, inlinedAt: !3867)
!3871 = !DILocation(line: 148, column: 15, scope: !2849, inlinedAt: !3867)
!3872 = !DILocation(line: 149, column: 21, scope: !2849, inlinedAt: !3867)
!3873 = !DILocation(line: 149, column: 24, scope: !2849, inlinedAt: !3867)
!3874 = !DILocation(line: 150, column: 19, scope: !2849, inlinedAt: !3867)
!3875 = !DILocation(line: 150, column: 24, scope: !2849, inlinedAt: !3867)
!3876 = !DILocation(line: 150, column: 6, scope: !2849, inlinedAt: !3867)
!3877 = !DILocation(line: 975, column: 10, scope: !3852)
!3878 = !DILocation(line: 976, column: 1, scope: !3852)
!3879 = !DILocation(line: 975, column: 3, scope: !3852)
!3880 = distinct !DISubprogram(name: "quotearg_char", scope: !738, file: !738, line: 979, type: !3881, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!177, !183, !4}
!3883 = !{!3884, !3885}
!3884 = !DILocalVariable(name: "arg", arg: 1, scope: !3880, file: !738, line: 979, type: !183)
!3885 = !DILocalVariable(name: "ch", arg: 2, scope: !3880, file: !738, line: 979, type: !4)
!3886 = distinct !DIAssignID()
!3887 = !DILocation(line: 0, scope: !3880)
!3888 = !DILocation(line: 0, scope: !3852, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 981, column: 10, scope: !3880)
!3890 = !DILocation(line: 972, column: 3, scope: !3852, inlinedAt: !3889)
!3891 = !DILocation(line: 973, column: 13, scope: !3852, inlinedAt: !3889)
!3892 = distinct !DIAssignID()
!3893 = !DILocation(line: 0, scope: !2849, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 974, column: 3, scope: !3852, inlinedAt: !3889)
!3895 = !DILocation(line: 147, column: 41, scope: !2849, inlinedAt: !3894)
!3896 = !DILocation(line: 147, column: 62, scope: !2849, inlinedAt: !3894)
!3897 = !DILocation(line: 147, column: 57, scope: !2849, inlinedAt: !3894)
!3898 = !DILocation(line: 148, column: 15, scope: !2849, inlinedAt: !3894)
!3899 = !DILocation(line: 149, column: 21, scope: !2849, inlinedAt: !3894)
!3900 = !DILocation(line: 149, column: 24, scope: !2849, inlinedAt: !3894)
!3901 = !DILocation(line: 150, column: 19, scope: !2849, inlinedAt: !3894)
!3902 = !DILocation(line: 150, column: 24, scope: !2849, inlinedAt: !3894)
!3903 = !DILocation(line: 150, column: 6, scope: !2849, inlinedAt: !3894)
!3904 = !DILocation(line: 975, column: 10, scope: !3852, inlinedAt: !3889)
!3905 = !DILocation(line: 976, column: 1, scope: !3852, inlinedAt: !3889)
!3906 = !DILocation(line: 981, column: 3, scope: !3880)
!3907 = distinct !DISubprogram(name: "quotearg_colon", scope: !738, file: !738, line: 985, type: !1272, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3908)
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "arg", arg: 1, scope: !3907, file: !738, line: 985, type: !183)
!3910 = distinct !DIAssignID()
!3911 = !DILocation(line: 0, scope: !3907)
!3912 = !DILocation(line: 0, scope: !3880, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 987, column: 10, scope: !3907)
!3914 = !DILocation(line: 0, scope: !3852, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 981, column: 10, scope: !3880, inlinedAt: !3913)
!3916 = !DILocation(line: 972, column: 3, scope: !3852, inlinedAt: !3915)
!3917 = !DILocation(line: 973, column: 13, scope: !3852, inlinedAt: !3915)
!3918 = distinct !DIAssignID()
!3919 = !DILocation(line: 0, scope: !2849, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 974, column: 3, scope: !3852, inlinedAt: !3915)
!3921 = !DILocation(line: 147, column: 57, scope: !2849, inlinedAt: !3920)
!3922 = !DILocation(line: 149, column: 21, scope: !2849, inlinedAt: !3920)
!3923 = !DILocation(line: 150, column: 6, scope: !2849, inlinedAt: !3920)
!3924 = !DILocation(line: 975, column: 10, scope: !3852, inlinedAt: !3915)
!3925 = !DILocation(line: 976, column: 1, scope: !3852, inlinedAt: !3915)
!3926 = !DILocation(line: 987, column: 3, scope: !3907)
!3927 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !738, file: !738, line: 991, type: !3725, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3928)
!3928 = !{!3929, !3930}
!3929 = !DILocalVariable(name: "arg", arg: 1, scope: !3927, file: !738, line: 991, type: !183)
!3930 = !DILocalVariable(name: "argsize", arg: 2, scope: !3927, file: !738, line: 991, type: !180)
!3931 = distinct !DIAssignID()
!3932 = !DILocation(line: 0, scope: !3927)
!3933 = !DILocation(line: 0, scope: !3852, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 993, column: 10, scope: !3927)
!3935 = !DILocation(line: 972, column: 3, scope: !3852, inlinedAt: !3934)
!3936 = !DILocation(line: 973, column: 13, scope: !3852, inlinedAt: !3934)
!3937 = distinct !DIAssignID()
!3938 = !DILocation(line: 0, scope: !2849, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 974, column: 3, scope: !3852, inlinedAt: !3934)
!3940 = !DILocation(line: 147, column: 57, scope: !2849, inlinedAt: !3939)
!3941 = !DILocation(line: 149, column: 21, scope: !2849, inlinedAt: !3939)
!3942 = !DILocation(line: 150, column: 6, scope: !2849, inlinedAt: !3939)
!3943 = !DILocation(line: 975, column: 10, scope: !3852, inlinedAt: !3934)
!3944 = !DILocation(line: 976, column: 1, scope: !3852, inlinedAt: !3934)
!3945 = !DILocation(line: 993, column: 3, scope: !3927)
!3946 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !738, file: !738, line: 997, type: !3736, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3947)
!3947 = !{!3948, !3949, !3950, !3951}
!3948 = !DILocalVariable(name: "n", arg: 1, scope: !3946, file: !738, line: 997, type: !118)
!3949 = !DILocalVariable(name: "s", arg: 2, scope: !3946, file: !738, line: 997, type: !761)
!3950 = !DILocalVariable(name: "arg", arg: 3, scope: !3946, file: !738, line: 997, type: !183)
!3951 = !DILocalVariable(name: "options", scope: !3946, file: !738, line: 999, type: !776)
!3952 = distinct !DIAssignID()
!3953 = !DILocation(line: 0, scope: !3946)
!3954 = !DILocation(line: 185, column: 26, scope: !3751, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 1000, column: 13, scope: !3946)
!3956 = !DILocation(line: 999, column: 3, scope: !3946)
!3957 = !DILocation(line: 0, scope: !3751, inlinedAt: !3955)
!3958 = !DILocation(line: 186, column: 13, scope: !3761, inlinedAt: !3955)
!3959 = !DILocation(line: 186, column: 7, scope: !3751, inlinedAt: !3955)
!3960 = !DILocation(line: 187, column: 5, scope: !3761, inlinedAt: !3955)
!3961 = !{!3962}
!3962 = distinct !{!3962, !3963, !"quoting_options_from_style: argument 0"}
!3963 = distinct !{!3963, !"quoting_options_from_style"}
!3964 = !DILocation(line: 1000, column: 13, scope: !3946)
!3965 = distinct !DIAssignID()
!3966 = distinct !DIAssignID()
!3967 = !DILocation(line: 0, scope: !2849, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 1001, column: 3, scope: !3946)
!3969 = !DILocation(line: 147, column: 57, scope: !2849, inlinedAt: !3968)
!3970 = !DILocation(line: 149, column: 21, scope: !2849, inlinedAt: !3968)
!3971 = !DILocation(line: 150, column: 6, scope: !2849, inlinedAt: !3968)
!3972 = distinct !DIAssignID()
!3973 = !DILocation(line: 1002, column: 10, scope: !3946)
!3974 = !DILocation(line: 1003, column: 1, scope: !3946)
!3975 = !DILocation(line: 1002, column: 3, scope: !3946)
!3976 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !738, file: !738, line: 1006, type: !3977, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!177, !118, !183, !183, !183}
!3979 = !{!3980, !3981, !3982, !3983}
!3980 = !DILocalVariable(name: "n", arg: 1, scope: !3976, file: !738, line: 1006, type: !118)
!3981 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3976, file: !738, line: 1006, type: !183)
!3982 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3976, file: !738, line: 1007, type: !183)
!3983 = !DILocalVariable(name: "arg", arg: 4, scope: !3976, file: !738, line: 1007, type: !183)
!3984 = distinct !DIAssignID()
!3985 = !DILocation(line: 0, scope: !3976)
!3986 = !DILocalVariable(name: "o", scope: !3987, file: !738, line: 1018, type: !776)
!3987 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !738, file: !738, line: 1014, type: !3988, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!177, !118, !183, !183, !183, !180}
!3990 = !{!3991, !3992, !3993, !3994, !3995, !3986}
!3991 = !DILocalVariable(name: "n", arg: 1, scope: !3987, file: !738, line: 1014, type: !118)
!3992 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3987, file: !738, line: 1014, type: !183)
!3993 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3987, file: !738, line: 1015, type: !183)
!3994 = !DILocalVariable(name: "arg", arg: 4, scope: !3987, file: !738, line: 1016, type: !183)
!3995 = !DILocalVariable(name: "argsize", arg: 5, scope: !3987, file: !738, line: 1016, type: !180)
!3996 = !DILocation(line: 0, scope: !3987, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 1009, column: 10, scope: !3976)
!3998 = !DILocation(line: 1018, column: 3, scope: !3987, inlinedAt: !3997)
!3999 = !DILocation(line: 1018, column: 30, scope: !3987, inlinedAt: !3997)
!4000 = distinct !DIAssignID()
!4001 = distinct !DIAssignID()
!4002 = !DILocation(line: 0, scope: !2889, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 1019, column: 3, scope: !3987, inlinedAt: !3997)
!4004 = !DILocation(line: 174, column: 12, scope: !2889, inlinedAt: !4003)
!4005 = distinct !DIAssignID()
!4006 = !DILocation(line: 175, column: 8, scope: !2902, inlinedAt: !4003)
!4007 = !DILocation(line: 175, column: 19, scope: !2902, inlinedAt: !4003)
!4008 = !DILocation(line: 176, column: 5, scope: !2902, inlinedAt: !4003)
!4009 = !DILocation(line: 177, column: 6, scope: !2889, inlinedAt: !4003)
!4010 = !DILocation(line: 177, column: 17, scope: !2889, inlinedAt: !4003)
!4011 = distinct !DIAssignID()
!4012 = !DILocation(line: 178, column: 6, scope: !2889, inlinedAt: !4003)
!4013 = !DILocation(line: 178, column: 18, scope: !2889, inlinedAt: !4003)
!4014 = distinct !DIAssignID()
!4015 = !DILocation(line: 1020, column: 10, scope: !3987, inlinedAt: !3997)
!4016 = !DILocation(line: 1021, column: 1, scope: !3987, inlinedAt: !3997)
!4017 = !DILocation(line: 1009, column: 3, scope: !3976)
!4018 = distinct !DIAssignID()
!4019 = !DILocation(line: 0, scope: !3987)
!4020 = !DILocation(line: 1018, column: 3, scope: !3987)
!4021 = !DILocation(line: 1018, column: 30, scope: !3987)
!4022 = distinct !DIAssignID()
!4023 = distinct !DIAssignID()
!4024 = !DILocation(line: 0, scope: !2889, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 1019, column: 3, scope: !3987)
!4026 = !DILocation(line: 174, column: 12, scope: !2889, inlinedAt: !4025)
!4027 = distinct !DIAssignID()
!4028 = !DILocation(line: 175, column: 8, scope: !2902, inlinedAt: !4025)
!4029 = !DILocation(line: 175, column: 19, scope: !2902, inlinedAt: !4025)
!4030 = !DILocation(line: 176, column: 5, scope: !2902, inlinedAt: !4025)
!4031 = !DILocation(line: 177, column: 6, scope: !2889, inlinedAt: !4025)
!4032 = !DILocation(line: 177, column: 17, scope: !2889, inlinedAt: !4025)
!4033 = distinct !DIAssignID()
!4034 = !DILocation(line: 178, column: 6, scope: !2889, inlinedAt: !4025)
!4035 = !DILocation(line: 178, column: 18, scope: !2889, inlinedAt: !4025)
!4036 = distinct !DIAssignID()
!4037 = !DILocation(line: 1020, column: 10, scope: !3987)
!4038 = !DILocation(line: 1021, column: 1, scope: !3987)
!4039 = !DILocation(line: 1020, column: 3, scope: !3987)
!4040 = distinct !DISubprogram(name: "quotearg_custom", scope: !738, file: !738, line: 1024, type: !4041, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4043)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!177, !183, !183, !183}
!4043 = !{!4044, !4045, !4046}
!4044 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4040, file: !738, line: 1024, type: !183)
!4045 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4040, file: !738, line: 1024, type: !183)
!4046 = !DILocalVariable(name: "arg", arg: 3, scope: !4040, file: !738, line: 1025, type: !183)
!4047 = distinct !DIAssignID()
!4048 = !DILocation(line: 0, scope: !4040)
!4049 = !DILocation(line: 0, scope: !3976, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 1027, column: 10, scope: !4040)
!4051 = !DILocation(line: 0, scope: !3987, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 1009, column: 10, scope: !3976, inlinedAt: !4050)
!4053 = !DILocation(line: 1018, column: 3, scope: !3987, inlinedAt: !4052)
!4054 = !DILocation(line: 1018, column: 30, scope: !3987, inlinedAt: !4052)
!4055 = distinct !DIAssignID()
!4056 = distinct !DIAssignID()
!4057 = !DILocation(line: 0, scope: !2889, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 1019, column: 3, scope: !3987, inlinedAt: !4052)
!4059 = !DILocation(line: 174, column: 12, scope: !2889, inlinedAt: !4058)
!4060 = distinct !DIAssignID()
!4061 = !DILocation(line: 175, column: 8, scope: !2902, inlinedAt: !4058)
!4062 = !DILocation(line: 175, column: 19, scope: !2902, inlinedAt: !4058)
!4063 = !DILocation(line: 176, column: 5, scope: !2902, inlinedAt: !4058)
!4064 = !DILocation(line: 177, column: 6, scope: !2889, inlinedAt: !4058)
!4065 = !DILocation(line: 177, column: 17, scope: !2889, inlinedAt: !4058)
!4066 = distinct !DIAssignID()
!4067 = !DILocation(line: 178, column: 6, scope: !2889, inlinedAt: !4058)
!4068 = !DILocation(line: 178, column: 18, scope: !2889, inlinedAt: !4058)
!4069 = distinct !DIAssignID()
!4070 = !DILocation(line: 1020, column: 10, scope: !3987, inlinedAt: !4052)
!4071 = !DILocation(line: 1021, column: 1, scope: !3987, inlinedAt: !4052)
!4072 = !DILocation(line: 1027, column: 3, scope: !4040)
!4073 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !738, file: !738, line: 1031, type: !4074, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!177, !183, !183, !183, !180}
!4076 = !{!4077, !4078, !4079, !4080}
!4077 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4073, file: !738, line: 1031, type: !183)
!4078 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4073, file: !738, line: 1031, type: !183)
!4079 = !DILocalVariable(name: "arg", arg: 3, scope: !4073, file: !738, line: 1032, type: !183)
!4080 = !DILocalVariable(name: "argsize", arg: 4, scope: !4073, file: !738, line: 1032, type: !180)
!4081 = distinct !DIAssignID()
!4082 = !DILocation(line: 0, scope: !4073)
!4083 = !DILocation(line: 0, scope: !3987, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 1034, column: 10, scope: !4073)
!4085 = !DILocation(line: 1018, column: 3, scope: !3987, inlinedAt: !4084)
!4086 = !DILocation(line: 1018, column: 30, scope: !3987, inlinedAt: !4084)
!4087 = distinct !DIAssignID()
!4088 = distinct !DIAssignID()
!4089 = !DILocation(line: 0, scope: !2889, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 1019, column: 3, scope: !3987, inlinedAt: !4084)
!4091 = !DILocation(line: 174, column: 12, scope: !2889, inlinedAt: !4090)
!4092 = distinct !DIAssignID()
!4093 = !DILocation(line: 175, column: 8, scope: !2902, inlinedAt: !4090)
!4094 = !DILocation(line: 175, column: 19, scope: !2902, inlinedAt: !4090)
!4095 = !DILocation(line: 176, column: 5, scope: !2902, inlinedAt: !4090)
!4096 = !DILocation(line: 177, column: 6, scope: !2889, inlinedAt: !4090)
!4097 = !DILocation(line: 177, column: 17, scope: !2889, inlinedAt: !4090)
!4098 = distinct !DIAssignID()
!4099 = !DILocation(line: 178, column: 6, scope: !2889, inlinedAt: !4090)
!4100 = !DILocation(line: 178, column: 18, scope: !2889, inlinedAt: !4090)
!4101 = distinct !DIAssignID()
!4102 = !DILocation(line: 1020, column: 10, scope: !3987, inlinedAt: !4084)
!4103 = !DILocation(line: 1021, column: 1, scope: !3987, inlinedAt: !4084)
!4104 = !DILocation(line: 1034, column: 3, scope: !4073)
!4105 = distinct !DISubprogram(name: "quote_n_mem", scope: !738, file: !738, line: 1049, type: !4106, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4108)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!183, !118, !183, !180}
!4108 = !{!4109, !4110, !4111}
!4109 = !DILocalVariable(name: "n", arg: 1, scope: !4105, file: !738, line: 1049, type: !118)
!4110 = !DILocalVariable(name: "arg", arg: 2, scope: !4105, file: !738, line: 1049, type: !183)
!4111 = !DILocalVariable(name: "argsize", arg: 3, scope: !4105, file: !738, line: 1049, type: !180)
!4112 = !DILocation(line: 0, scope: !4105)
!4113 = !DILocation(line: 1051, column: 10, scope: !4105)
!4114 = !DILocation(line: 1051, column: 3, scope: !4105)
!4115 = distinct !DISubprogram(name: "quote_mem", scope: !738, file: !738, line: 1055, type: !4116, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4118)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!183, !183, !180}
!4118 = !{!4119, !4120}
!4119 = !DILocalVariable(name: "arg", arg: 1, scope: !4115, file: !738, line: 1055, type: !183)
!4120 = !DILocalVariable(name: "argsize", arg: 2, scope: !4115, file: !738, line: 1055, type: !180)
!4121 = !DILocation(line: 0, scope: !4115)
!4122 = !DILocation(line: 0, scope: !4105, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 1057, column: 10, scope: !4115)
!4124 = !DILocation(line: 1051, column: 10, scope: !4105, inlinedAt: !4123)
!4125 = !DILocation(line: 1057, column: 3, scope: !4115)
!4126 = distinct !DISubprogram(name: "quote_n", scope: !738, file: !738, line: 1061, type: !4127, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!183, !118, !183}
!4129 = !{!4130, !4131}
!4130 = !DILocalVariable(name: "n", arg: 1, scope: !4126, file: !738, line: 1061, type: !118)
!4131 = !DILocalVariable(name: "arg", arg: 2, scope: !4126, file: !738, line: 1061, type: !183)
!4132 = !DILocation(line: 0, scope: !4126)
!4133 = !DILocation(line: 0, scope: !4105, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 1063, column: 10, scope: !4126)
!4135 = !DILocation(line: 1051, column: 10, scope: !4105, inlinedAt: !4134)
!4136 = !DILocation(line: 1063, column: 3, scope: !4126)
!4137 = distinct !DISubprogram(name: "quote", scope: !738, file: !738, line: 1067, type: !4138, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!183, !183}
!4140 = !{!4141}
!4141 = !DILocalVariable(name: "arg", arg: 1, scope: !4137, file: !738, line: 1067, type: !183)
!4142 = !DILocation(line: 0, scope: !4137)
!4143 = !DILocation(line: 0, scope: !4126, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 1069, column: 10, scope: !4137)
!4145 = !DILocation(line: 0, scope: !4105, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 1063, column: 10, scope: !4126, inlinedAt: !4144)
!4147 = !DILocation(line: 1051, column: 10, scope: !4105, inlinedAt: !4146)
!4148 = !DILocation(line: 1069, column: 3, scope: !4137)
!4149 = distinct !DISubprogram(name: "version_etc_arn", scope: !836, file: !836, line: 61, type: !4150, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !4187)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{null, !4152, !183, !183, !183, !4186, !180}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4154, file: !347, line: 51, baseType: !118, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4154, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4154, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4154, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4154, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4154, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4154, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4154, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4154, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4154, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4154, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4154, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4154, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4154, file: !347, line: 70, baseType: !4170, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4154, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4154, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4154, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4154, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4154, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4154, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4154, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4154, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4154, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4154, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4154, file: !347, line: 93, baseType: !4170, size: 64, offset: 1344)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4154, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4154, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4154, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4154, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!4187 = !{!4188, !4189, !4190, !4191, !4192, !4193}
!4188 = !DILocalVariable(name: "stream", arg: 1, scope: !4149, file: !836, line: 61, type: !4152)
!4189 = !DILocalVariable(name: "command_name", arg: 2, scope: !4149, file: !836, line: 62, type: !183)
!4190 = !DILocalVariable(name: "package", arg: 3, scope: !4149, file: !836, line: 62, type: !183)
!4191 = !DILocalVariable(name: "version", arg: 4, scope: !4149, file: !836, line: 63, type: !183)
!4192 = !DILocalVariable(name: "authors", arg: 5, scope: !4149, file: !836, line: 64, type: !4186)
!4193 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4149, file: !836, line: 64, type: !180)
!4194 = !DILocation(line: 0, scope: !4149)
!4195 = !DILocation(line: 66, column: 7, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4149, file: !836, line: 66, column: 7)
!4197 = !DILocation(line: 66, column: 7, scope: !4149)
!4198 = !DILocation(line: 67, column: 5, scope: !4196)
!4199 = !DILocation(line: 69, column: 5, scope: !4196)
!4200 = !DILocation(line: 83, column: 3, scope: !4149)
!4201 = !DILocation(line: 85, column: 3, scope: !4149)
!4202 = !DILocation(line: 88, column: 3, scope: !4149)
!4203 = !DILocation(line: 95, column: 3, scope: !4149)
!4204 = !DILocation(line: 97, column: 3, scope: !4149)
!4205 = !DILocation(line: 105, column: 7, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4149, file: !836, line: 98, column: 5)
!4207 = !DILocation(line: 106, column: 7, scope: !4206)
!4208 = !DILocation(line: 109, column: 7, scope: !4206)
!4209 = !DILocation(line: 110, column: 7, scope: !4206)
!4210 = !DILocation(line: 113, column: 7, scope: !4206)
!4211 = !DILocation(line: 115, column: 7, scope: !4206)
!4212 = !DILocation(line: 120, column: 7, scope: !4206)
!4213 = !DILocation(line: 122, column: 7, scope: !4206)
!4214 = !DILocation(line: 127, column: 7, scope: !4206)
!4215 = !DILocation(line: 129, column: 7, scope: !4206)
!4216 = !DILocation(line: 134, column: 7, scope: !4206)
!4217 = !DILocation(line: 137, column: 7, scope: !4206)
!4218 = !DILocation(line: 142, column: 7, scope: !4206)
!4219 = !DILocation(line: 145, column: 7, scope: !4206)
!4220 = !DILocation(line: 150, column: 7, scope: !4206)
!4221 = !DILocation(line: 154, column: 7, scope: !4206)
!4222 = !DILocation(line: 159, column: 7, scope: !4206)
!4223 = !DILocation(line: 163, column: 7, scope: !4206)
!4224 = !DILocation(line: 170, column: 7, scope: !4206)
!4225 = !DILocation(line: 174, column: 7, scope: !4206)
!4226 = !DILocation(line: 176, column: 1, scope: !4149)
!4227 = distinct !DISubprogram(name: "version_etc_ar", scope: !836, file: !836, line: 183, type: !4228, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !4230)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{null, !4152, !183, !183, !183, !4186}
!4230 = !{!4231, !4232, !4233, !4234, !4235, !4236}
!4231 = !DILocalVariable(name: "stream", arg: 1, scope: !4227, file: !836, line: 183, type: !4152)
!4232 = !DILocalVariable(name: "command_name", arg: 2, scope: !4227, file: !836, line: 184, type: !183)
!4233 = !DILocalVariable(name: "package", arg: 3, scope: !4227, file: !836, line: 184, type: !183)
!4234 = !DILocalVariable(name: "version", arg: 4, scope: !4227, file: !836, line: 185, type: !183)
!4235 = !DILocalVariable(name: "authors", arg: 5, scope: !4227, file: !836, line: 185, type: !4186)
!4236 = !DILocalVariable(name: "n_authors", scope: !4227, file: !836, line: 187, type: !180)
!4237 = !DILocation(line: 0, scope: !4227)
!4238 = !DILocation(line: 189, column: 8, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4227, file: !836, line: 189, column: 3)
!4240 = !DILocation(line: 189, scope: !4239)
!4241 = !DILocation(line: 189, column: 23, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4239, file: !836, line: 189, column: 3)
!4243 = !DILocation(line: 189, column: 3, scope: !4239)
!4244 = !DILocation(line: 189, column: 52, scope: !4242)
!4245 = distinct !{!4245, !4243, !4246, !1193}
!4246 = !DILocation(line: 190, column: 5, scope: !4239)
!4247 = !DILocation(line: 191, column: 3, scope: !4227)
!4248 = !DILocation(line: 192, column: 1, scope: !4227)
!4249 = distinct !DISubprogram(name: "version_etc_va", scope: !836, file: !836, line: 199, type: !4250, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !4259)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !4152, !183, !183, !183, !4252}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4258}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4253, file: !836, line: 192, baseType: !110, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4253, file: !836, line: 192, baseType: !110, size: 32, offset: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4253, file: !836, line: 192, baseType: !178, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4253, file: !836, line: 192, baseType: !178, size: 64, offset: 128)
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265, !4266}
!4260 = !DILocalVariable(name: "stream", arg: 1, scope: !4249, file: !836, line: 199, type: !4152)
!4261 = !DILocalVariable(name: "command_name", arg: 2, scope: !4249, file: !836, line: 200, type: !183)
!4262 = !DILocalVariable(name: "package", arg: 3, scope: !4249, file: !836, line: 200, type: !183)
!4263 = !DILocalVariable(name: "version", arg: 4, scope: !4249, file: !836, line: 201, type: !183)
!4264 = !DILocalVariable(name: "authors", arg: 5, scope: !4249, file: !836, line: 201, type: !4252)
!4265 = !DILocalVariable(name: "n_authors", scope: !4249, file: !836, line: 203, type: !180)
!4266 = !DILocalVariable(name: "authtab", scope: !4249, file: !836, line: 204, type: !4267)
!4267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 640, elements: !92)
!4268 = distinct !DIAssignID()
!4269 = !DILocation(line: 0, scope: !4249)
!4270 = !DILocation(line: 204, column: 3, scope: !4249)
!4271 = !DILocation(line: 208, column: 35, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !836, line: 206, column: 3)
!4273 = distinct !DILexicalBlock(scope: !4249, file: !836, line: 206, column: 3)
!4274 = !DILocation(line: 208, column: 33, scope: !4272)
!4275 = !DILocation(line: 208, column: 67, scope: !4272)
!4276 = !DILocation(line: 206, column: 3, scope: !4273)
!4277 = !DILocation(line: 208, column: 14, scope: !4272)
!4278 = !DILocation(line: 0, scope: !4273)
!4279 = !DILocation(line: 211, column: 3, scope: !4249)
!4280 = !DILocation(line: 213, column: 1, scope: !4249)
!4281 = distinct !DISubprogram(name: "version_etc", scope: !836, file: !836, line: 230, type: !4282, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !4284)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{null, !4152, !183, !183, !183, null}
!4284 = !{!4285, !4286, !4287, !4288, !4289}
!4285 = !DILocalVariable(name: "stream", arg: 1, scope: !4281, file: !836, line: 230, type: !4152)
!4286 = !DILocalVariable(name: "command_name", arg: 2, scope: !4281, file: !836, line: 231, type: !183)
!4287 = !DILocalVariable(name: "package", arg: 3, scope: !4281, file: !836, line: 231, type: !183)
!4288 = !DILocalVariable(name: "version", arg: 4, scope: !4281, file: !836, line: 232, type: !183)
!4289 = !DILocalVariable(name: "authors", scope: !4281, file: !836, line: 234, type: !4290)
!4290 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1141, line: 52, baseType: !4291)
!4291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2156, line: 12, baseType: !4292)
!4292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !836, baseType: !4293)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4253, size: 192, elements: !87)
!4294 = distinct !DIAssignID()
!4295 = !DILocation(line: 0, scope: !4281)
!4296 = !DILocation(line: 234, column: 3, scope: !4281)
!4297 = !DILocation(line: 235, column: 3, scope: !4281)
!4298 = !DILocation(line: 236, column: 3, scope: !4281)
!4299 = !DILocation(line: 237, column: 3, scope: !4281)
!4300 = !DILocation(line: 238, column: 1, scope: !4281)
!4301 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !836, file: !836, line: 241, type: !601, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971)
!4302 = !DILocation(line: 243, column: 3, scope: !4301)
!4303 = !DILocation(line: 248, column: 3, scope: !4301)
!4304 = !DILocation(line: 254, column: 3, scope: !4301)
!4305 = !DILocation(line: 259, column: 3, scope: !4301)
!4306 = !DILocation(line: 261, column: 1, scope: !4301)
!4307 = distinct !DISubprogram(name: "xnrealloc", scope: !4308, file: !4308, line: 147, type: !4309, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4311)
!4308 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!178, !178, !180, !180}
!4311 = !{!4312, !4313, !4314}
!4312 = !DILocalVariable(name: "p", arg: 1, scope: !4307, file: !4308, line: 147, type: !178)
!4313 = !DILocalVariable(name: "n", arg: 2, scope: !4307, file: !4308, line: 147, type: !180)
!4314 = !DILocalVariable(name: "s", arg: 3, scope: !4307, file: !4308, line: 147, type: !180)
!4315 = !DILocation(line: 0, scope: !4307)
!4316 = !DILocalVariable(name: "p", arg: 1, scope: !4317, file: !978, line: 83, type: !178)
!4317 = distinct !DISubprogram(name: "xreallocarray", scope: !978, file: !978, line: 83, type: !4309, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4318)
!4318 = !{!4316, !4319, !4320}
!4319 = !DILocalVariable(name: "n", arg: 2, scope: !4317, file: !978, line: 83, type: !180)
!4320 = !DILocalVariable(name: "s", arg: 3, scope: !4317, file: !978, line: 83, type: !180)
!4321 = !DILocation(line: 0, scope: !4317, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 149, column: 10, scope: !4307)
!4323 = !DILocation(line: 85, column: 25, scope: !4317, inlinedAt: !4322)
!4324 = !DILocalVariable(name: "p", arg: 1, scope: !4325, file: !978, line: 37, type: !178)
!4325 = distinct !DISubprogram(name: "check_nonnull", scope: !978, file: !978, line: 37, type: !4326, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!178, !178}
!4328 = !{!4324}
!4329 = !DILocation(line: 0, scope: !4325, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 85, column: 10, scope: !4317, inlinedAt: !4322)
!4331 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4330)
!4332 = distinct !DILexicalBlock(scope: !4325, file: !978, line: 39, column: 7)
!4333 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4330)
!4334 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4330)
!4335 = !DILocation(line: 149, column: 3, scope: !4307)
!4336 = !DILocation(line: 0, scope: !4317)
!4337 = !DILocation(line: 85, column: 25, scope: !4317)
!4338 = !DILocation(line: 0, scope: !4325, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 85, column: 10, scope: !4317)
!4340 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4339)
!4341 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4339)
!4342 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4339)
!4343 = !DILocation(line: 85, column: 3, scope: !4317)
!4344 = distinct !DISubprogram(name: "xmalloc", scope: !978, file: !978, line: 47, type: !4345, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!178, !180}
!4347 = !{!4348}
!4348 = !DILocalVariable(name: "s", arg: 1, scope: !4344, file: !978, line: 47, type: !180)
!4349 = !DILocation(line: 0, scope: !4344)
!4350 = !DILocation(line: 49, column: 25, scope: !4344)
!4351 = !DILocation(line: 0, scope: !4325, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 49, column: 10, scope: !4344)
!4353 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4352)
!4354 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4352)
!4355 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4352)
!4356 = !DILocation(line: 49, column: 3, scope: !4344)
!4357 = !DISubprogram(name: "malloc", scope: !1270, file: !1270, line: 540, type: !4345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4358 = distinct !DISubprogram(name: "ximalloc", scope: !978, file: !978, line: 53, type: !4359, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!178, !997}
!4361 = !{!4362}
!4362 = !DILocalVariable(name: "s", arg: 1, scope: !4358, file: !978, line: 53, type: !997)
!4363 = !DILocation(line: 0, scope: !4358)
!4364 = !DILocalVariable(name: "s", arg: 1, scope: !4365, file: !4366, line: 55, type: !997)
!4365 = distinct !DISubprogram(name: "imalloc", scope: !4366, file: !4366, line: 55, type: !4359, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4367)
!4366 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4367 = !{!4364}
!4368 = !DILocation(line: 0, scope: !4365, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 55, column: 25, scope: !4358)
!4370 = !DILocation(line: 57, column: 26, scope: !4365, inlinedAt: !4369)
!4371 = !DILocation(line: 0, scope: !4325, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 55, column: 10, scope: !4358)
!4373 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4372)
!4374 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4372)
!4375 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4372)
!4376 = !DILocation(line: 55, column: 3, scope: !4358)
!4377 = distinct !DISubprogram(name: "xcharalloc", scope: !978, file: !978, line: 59, type: !4378, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!177, !180}
!4380 = !{!4381}
!4381 = !DILocalVariable(name: "n", arg: 1, scope: !4377, file: !978, line: 59, type: !180)
!4382 = !DILocation(line: 0, scope: !4377)
!4383 = !DILocation(line: 0, scope: !4344, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 61, column: 10, scope: !4377)
!4385 = !DILocation(line: 49, column: 25, scope: !4344, inlinedAt: !4384)
!4386 = !DILocation(line: 0, scope: !4325, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 49, column: 10, scope: !4344, inlinedAt: !4384)
!4388 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4387)
!4389 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4387)
!4390 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4387)
!4391 = !DILocation(line: 61, column: 3, scope: !4377)
!4392 = distinct !DISubprogram(name: "xrealloc", scope: !978, file: !978, line: 68, type: !4393, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4395)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!178, !178, !180}
!4395 = !{!4396, !4397}
!4396 = !DILocalVariable(name: "p", arg: 1, scope: !4392, file: !978, line: 68, type: !178)
!4397 = !DILocalVariable(name: "s", arg: 2, scope: !4392, file: !978, line: 68, type: !180)
!4398 = !DILocation(line: 0, scope: !4392)
!4399 = !DILocalVariable(name: "ptr", arg: 1, scope: !4400, file: !4401, line: 2057, type: !178)
!4400 = distinct !DISubprogram(name: "rpl_realloc", scope: !4401, file: !4401, line: 2057, type: !4393, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4402)
!4401 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4402 = !{!4399, !4403}
!4403 = !DILocalVariable(name: "size", arg: 2, scope: !4400, file: !4401, line: 2057, type: !180)
!4404 = !DILocation(line: 0, scope: !4400, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 70, column: 25, scope: !4392)
!4406 = !DILocation(line: 2059, column: 24, scope: !4400, inlinedAt: !4405)
!4407 = !DILocation(line: 2059, column: 10, scope: !4400, inlinedAt: !4405)
!4408 = !DILocation(line: 0, scope: !4325, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 70, column: 10, scope: !4392)
!4410 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4409)
!4411 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4409)
!4412 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4409)
!4413 = !DILocation(line: 70, column: 3, scope: !4392)
!4414 = !DISubprogram(name: "realloc", scope: !1270, file: !1270, line: 551, type: !4393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4415 = distinct !DISubprogram(name: "xirealloc", scope: !978, file: !978, line: 74, type: !4416, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4418)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!178, !178, !997}
!4418 = !{!4419, !4420}
!4419 = !DILocalVariable(name: "p", arg: 1, scope: !4415, file: !978, line: 74, type: !178)
!4420 = !DILocalVariable(name: "s", arg: 2, scope: !4415, file: !978, line: 74, type: !997)
!4421 = !DILocation(line: 0, scope: !4415)
!4422 = !DILocalVariable(name: "p", arg: 1, scope: !4423, file: !4366, line: 66, type: !178)
!4423 = distinct !DISubprogram(name: "irealloc", scope: !4366, file: !4366, line: 66, type: !4416, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4424)
!4424 = !{!4422, !4425}
!4425 = !DILocalVariable(name: "s", arg: 2, scope: !4423, file: !4366, line: 66, type: !997)
!4426 = !DILocation(line: 0, scope: !4423, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 76, column: 25, scope: !4415)
!4428 = !DILocation(line: 0, scope: !4400, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 68, column: 26, scope: !4423, inlinedAt: !4427)
!4430 = !DILocation(line: 2059, column: 24, scope: !4400, inlinedAt: !4429)
!4431 = !DILocation(line: 2059, column: 10, scope: !4400, inlinedAt: !4429)
!4432 = !DILocation(line: 0, scope: !4325, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 76, column: 10, scope: !4415)
!4434 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4433)
!4435 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4433)
!4436 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4433)
!4437 = !DILocation(line: 76, column: 3, scope: !4415)
!4438 = distinct !DISubprogram(name: "xireallocarray", scope: !978, file: !978, line: 89, type: !4439, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!178, !178, !997, !997}
!4441 = !{!4442, !4443, !4444}
!4442 = !DILocalVariable(name: "p", arg: 1, scope: !4438, file: !978, line: 89, type: !178)
!4443 = !DILocalVariable(name: "n", arg: 2, scope: !4438, file: !978, line: 89, type: !997)
!4444 = !DILocalVariable(name: "s", arg: 3, scope: !4438, file: !978, line: 89, type: !997)
!4445 = !DILocation(line: 0, scope: !4438)
!4446 = !DILocalVariable(name: "p", arg: 1, scope: !4447, file: !4366, line: 98, type: !178)
!4447 = distinct !DISubprogram(name: "ireallocarray", scope: !4366, file: !4366, line: 98, type: !4439, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4448)
!4448 = !{!4446, !4449, !4450}
!4449 = !DILocalVariable(name: "n", arg: 2, scope: !4447, file: !4366, line: 98, type: !997)
!4450 = !DILocalVariable(name: "s", arg: 3, scope: !4447, file: !4366, line: 98, type: !997)
!4451 = !DILocation(line: 0, scope: !4447, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 91, column: 25, scope: !4438)
!4453 = !DILocation(line: 101, column: 13, scope: !4447, inlinedAt: !4452)
!4454 = !DILocation(line: 0, scope: !4325, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 91, column: 10, scope: !4438)
!4456 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4455)
!4457 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4455)
!4458 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4455)
!4459 = !DILocation(line: 91, column: 3, scope: !4438)
!4460 = distinct !DISubprogram(name: "xnmalloc", scope: !978, file: !978, line: 98, type: !4461, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4463)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!178, !180, !180}
!4463 = !{!4464, !4465}
!4464 = !DILocalVariable(name: "n", arg: 1, scope: !4460, file: !978, line: 98, type: !180)
!4465 = !DILocalVariable(name: "s", arg: 2, scope: !4460, file: !978, line: 98, type: !180)
!4466 = !DILocation(line: 0, scope: !4460)
!4467 = !DILocation(line: 0, scope: !4317, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 100, column: 10, scope: !4460)
!4469 = !DILocation(line: 85, column: 25, scope: !4317, inlinedAt: !4468)
!4470 = !DILocation(line: 0, scope: !4325, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 85, column: 10, scope: !4317, inlinedAt: !4468)
!4472 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4471)
!4473 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4471)
!4474 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4471)
!4475 = !DILocation(line: 100, column: 3, scope: !4460)
!4476 = distinct !DISubprogram(name: "xinmalloc", scope: !978, file: !978, line: 104, type: !4477, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!178, !997, !997}
!4479 = !{!4480, !4481}
!4480 = !DILocalVariable(name: "n", arg: 1, scope: !4476, file: !978, line: 104, type: !997)
!4481 = !DILocalVariable(name: "s", arg: 2, scope: !4476, file: !978, line: 104, type: !997)
!4482 = !DILocation(line: 0, scope: !4476)
!4483 = !DILocation(line: 0, scope: !4438, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 106, column: 10, scope: !4476)
!4485 = !DILocation(line: 0, scope: !4447, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 91, column: 25, scope: !4438, inlinedAt: !4484)
!4487 = !DILocation(line: 101, column: 13, scope: !4447, inlinedAt: !4486)
!4488 = !DILocation(line: 0, scope: !4325, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 91, column: 10, scope: !4438, inlinedAt: !4484)
!4490 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4489)
!4491 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4489)
!4492 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4489)
!4493 = !DILocation(line: 106, column: 3, scope: !4476)
!4494 = distinct !DISubprogram(name: "x2realloc", scope: !978, file: !978, line: 116, type: !4495, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4497)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!178, !178, !984}
!4497 = !{!4498, !4499}
!4498 = !DILocalVariable(name: "p", arg: 1, scope: !4494, file: !978, line: 116, type: !178)
!4499 = !DILocalVariable(name: "ps", arg: 2, scope: !4494, file: !978, line: 116, type: !984)
!4500 = !DILocation(line: 0, scope: !4494)
!4501 = !DILocation(line: 0, scope: !981, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 118, column: 10, scope: !4494)
!4503 = !DILocation(line: 178, column: 14, scope: !981, inlinedAt: !4502)
!4504 = !DILocation(line: 180, column: 9, scope: !4505, inlinedAt: !4502)
!4505 = distinct !DILexicalBlock(scope: !981, file: !978, line: 180, column: 7)
!4506 = !DILocation(line: 180, column: 7, scope: !981, inlinedAt: !4502)
!4507 = !DILocation(line: 182, column: 13, scope: !4508, inlinedAt: !4502)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !978, line: 182, column: 11)
!4509 = distinct !DILexicalBlock(scope: !4505, file: !978, line: 181, column: 5)
!4510 = !DILocation(line: 182, column: 11, scope: !4509, inlinedAt: !4502)
!4511 = !DILocation(line: 197, column: 11, scope: !4512, inlinedAt: !4502)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !978, line: 197, column: 11)
!4513 = distinct !DILexicalBlock(scope: !4505, file: !978, line: 195, column: 5)
!4514 = !DILocation(line: 197, column: 11, scope: !4513, inlinedAt: !4502)
!4515 = !DILocation(line: 198, column: 9, scope: !4512, inlinedAt: !4502)
!4516 = !DILocation(line: 0, scope: !4317, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 201, column: 7, scope: !981, inlinedAt: !4502)
!4518 = !DILocation(line: 85, column: 25, scope: !4317, inlinedAt: !4517)
!4519 = !DILocation(line: 0, scope: !4325, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 85, column: 10, scope: !4317, inlinedAt: !4517)
!4521 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4520)
!4522 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4520)
!4523 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4520)
!4524 = !DILocation(line: 202, column: 7, scope: !981, inlinedAt: !4502)
!4525 = !DILocation(line: 118, column: 3, scope: !4494)
!4526 = !DILocation(line: 0, scope: !981)
!4527 = !DILocation(line: 178, column: 14, scope: !981)
!4528 = !DILocation(line: 180, column: 9, scope: !4505)
!4529 = !DILocation(line: 180, column: 7, scope: !981)
!4530 = !DILocation(line: 182, column: 13, scope: !4508)
!4531 = !DILocation(line: 182, column: 11, scope: !4509)
!4532 = !DILocation(line: 190, column: 30, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4508, file: !978, line: 183, column: 9)
!4534 = !DILocation(line: 191, column: 16, scope: !4533)
!4535 = !DILocation(line: 191, column: 13, scope: !4533)
!4536 = !DILocation(line: 192, column: 9, scope: !4533)
!4537 = !DILocation(line: 197, column: 11, scope: !4512)
!4538 = !DILocation(line: 197, column: 11, scope: !4513)
!4539 = !DILocation(line: 198, column: 9, scope: !4512)
!4540 = !DILocation(line: 0, scope: !4317, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 201, column: 7, scope: !981)
!4542 = !DILocation(line: 85, column: 25, scope: !4317, inlinedAt: !4541)
!4543 = !DILocation(line: 0, scope: !4325, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 85, column: 10, scope: !4317, inlinedAt: !4541)
!4545 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4544)
!4546 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4544)
!4547 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4544)
!4548 = !DILocation(line: 202, column: 7, scope: !981)
!4549 = !DILocation(line: 203, column: 3, scope: !981)
!4550 = !DILocation(line: 0, scope: !993)
!4551 = !DILocation(line: 230, column: 14, scope: !993)
!4552 = !DILocation(line: 238, column: 7, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !993, file: !978, line: 238, column: 7)
!4554 = !DILocation(line: 238, column: 7, scope: !993)
!4555 = !DILocation(line: 240, column: 9, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !993, file: !978, line: 240, column: 7)
!4557 = !DILocation(line: 240, column: 18, scope: !4556)
!4558 = !DILocation(line: 253, column: 8, scope: !993)
!4559 = !DILocation(line: 256, column: 7, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !993, file: !978, line: 256, column: 7)
!4561 = !DILocation(line: 256, column: 7, scope: !993)
!4562 = !DILocation(line: 258, column: 27, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4560, file: !978, line: 257, column: 5)
!4564 = !DILocation(line: 259, column: 50, scope: !4563)
!4565 = !DILocation(line: 259, column: 32, scope: !4563)
!4566 = !DILocation(line: 260, column: 5, scope: !4563)
!4567 = !DILocation(line: 262, column: 9, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !993, file: !978, line: 262, column: 7)
!4569 = !DILocation(line: 262, column: 7, scope: !993)
!4570 = !DILocation(line: 263, column: 9, scope: !4568)
!4571 = !DILocation(line: 263, column: 5, scope: !4568)
!4572 = !DILocation(line: 264, column: 9, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !993, file: !978, line: 264, column: 7)
!4574 = !DILocation(line: 264, column: 14, scope: !4573)
!4575 = !DILocation(line: 265, column: 7, scope: !4573)
!4576 = !DILocation(line: 265, column: 11, scope: !4573)
!4577 = !DILocation(line: 266, column: 11, scope: !4573)
!4578 = !DILocation(line: 267, column: 14, scope: !4573)
!4579 = !DILocation(line: 264, column: 7, scope: !993)
!4580 = !DILocation(line: 268, column: 5, scope: !4573)
!4581 = !DILocation(line: 0, scope: !4392, inlinedAt: !4582)
!4582 = distinct !DILocation(line: 269, column: 8, scope: !993)
!4583 = !DILocation(line: 0, scope: !4400, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 70, column: 25, scope: !4392, inlinedAt: !4582)
!4585 = !DILocation(line: 2059, column: 24, scope: !4400, inlinedAt: !4584)
!4586 = !DILocation(line: 2059, column: 10, scope: !4400, inlinedAt: !4584)
!4587 = !DILocation(line: 0, scope: !4325, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 70, column: 10, scope: !4392, inlinedAt: !4582)
!4589 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4588)
!4590 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4588)
!4591 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4588)
!4592 = !DILocation(line: 270, column: 7, scope: !993)
!4593 = !DILocation(line: 271, column: 3, scope: !993)
!4594 = distinct !DISubprogram(name: "xzalloc", scope: !978, file: !978, line: 279, type: !4345, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4595)
!4595 = !{!4596}
!4596 = !DILocalVariable(name: "s", arg: 1, scope: !4594, file: !978, line: 279, type: !180)
!4597 = !DILocation(line: 0, scope: !4594)
!4598 = !DILocalVariable(name: "n", arg: 1, scope: !4599, file: !978, line: 294, type: !180)
!4599 = distinct !DISubprogram(name: "xcalloc", scope: !978, file: !978, line: 294, type: !4461, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4600)
!4600 = !{!4598, !4601}
!4601 = !DILocalVariable(name: "s", arg: 2, scope: !4599, file: !978, line: 294, type: !180)
!4602 = !DILocation(line: 0, scope: !4599, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 281, column: 10, scope: !4594)
!4604 = !DILocation(line: 296, column: 25, scope: !4599, inlinedAt: !4603)
!4605 = !DILocation(line: 0, scope: !4325, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 296, column: 10, scope: !4599, inlinedAt: !4603)
!4607 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4606)
!4608 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4606)
!4609 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4606)
!4610 = !DILocation(line: 281, column: 3, scope: !4594)
!4611 = !DISubprogram(name: "calloc", scope: !1270, file: !1270, line: 543, type: !4461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4612 = !DILocation(line: 0, scope: !4599)
!4613 = !DILocation(line: 296, column: 25, scope: !4599)
!4614 = !DILocation(line: 0, scope: !4325, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 296, column: 10, scope: !4599)
!4616 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4615)
!4617 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4615)
!4618 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4615)
!4619 = !DILocation(line: 296, column: 3, scope: !4599)
!4620 = distinct !DISubprogram(name: "xizalloc", scope: !978, file: !978, line: 285, type: !4359, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4621)
!4621 = !{!4622}
!4622 = !DILocalVariable(name: "s", arg: 1, scope: !4620, file: !978, line: 285, type: !997)
!4623 = !DILocation(line: 0, scope: !4620)
!4624 = !DILocalVariable(name: "n", arg: 1, scope: !4625, file: !978, line: 300, type: !997)
!4625 = distinct !DISubprogram(name: "xicalloc", scope: !978, file: !978, line: 300, type: !4477, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4626)
!4626 = !{!4624, !4627}
!4627 = !DILocalVariable(name: "s", arg: 2, scope: !4625, file: !978, line: 300, type: !997)
!4628 = !DILocation(line: 0, scope: !4625, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 287, column: 10, scope: !4620)
!4630 = !DILocalVariable(name: "n", arg: 1, scope: !4631, file: !4366, line: 77, type: !997)
!4631 = distinct !DISubprogram(name: "icalloc", scope: !4366, file: !4366, line: 77, type: !4477, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4632)
!4632 = !{!4630, !4633}
!4633 = !DILocalVariable(name: "s", arg: 2, scope: !4631, file: !4366, line: 77, type: !997)
!4634 = !DILocation(line: 0, scope: !4631, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 302, column: 25, scope: !4625, inlinedAt: !4629)
!4636 = !DILocation(line: 91, column: 10, scope: !4631, inlinedAt: !4635)
!4637 = !DILocation(line: 0, scope: !4325, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 302, column: 10, scope: !4625, inlinedAt: !4629)
!4639 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4638)
!4640 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4638)
!4641 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4638)
!4642 = !DILocation(line: 287, column: 3, scope: !4620)
!4643 = !DILocation(line: 0, scope: !4625)
!4644 = !DILocation(line: 0, scope: !4631, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 302, column: 25, scope: !4625)
!4646 = !DILocation(line: 91, column: 10, scope: !4631, inlinedAt: !4645)
!4647 = !DILocation(line: 0, scope: !4325, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 302, column: 10, scope: !4625)
!4649 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4648)
!4650 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4648)
!4651 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4648)
!4652 = !DILocation(line: 302, column: 3, scope: !4625)
!4653 = distinct !DISubprogram(name: "xmemdup", scope: !978, file: !978, line: 310, type: !4654, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4656)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!178, !1294, !180}
!4656 = !{!4657, !4658}
!4657 = !DILocalVariable(name: "p", arg: 1, scope: !4653, file: !978, line: 310, type: !1294)
!4658 = !DILocalVariable(name: "s", arg: 2, scope: !4653, file: !978, line: 310, type: !180)
!4659 = !DILocation(line: 0, scope: !4653)
!4660 = !DILocation(line: 0, scope: !4344, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 312, column: 18, scope: !4653)
!4662 = !DILocation(line: 49, column: 25, scope: !4344, inlinedAt: !4661)
!4663 = !DILocation(line: 0, scope: !4325, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 49, column: 10, scope: !4344, inlinedAt: !4661)
!4665 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4664)
!4666 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4664)
!4667 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4664)
!4668 = !DILocalVariable(name: "__dest", arg: 1, scope: !4669, file: !1468, line: 26, type: !1471)
!4669 = distinct !DISubprogram(name: "memcpy", scope: !1468, file: !1468, line: 26, type: !1469, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4670)
!4670 = !{!4668, !4671, !4672}
!4671 = !DILocalVariable(name: "__src", arg: 2, scope: !4669, file: !1468, line: 26, type: !1293)
!4672 = !DILocalVariable(name: "__len", arg: 3, scope: !4669, file: !1468, line: 26, type: !180)
!4673 = !DILocation(line: 0, scope: !4669, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 312, column: 10, scope: !4653)
!4675 = !DILocation(line: 29, column: 10, scope: !4669, inlinedAt: !4674)
!4676 = !DILocation(line: 312, column: 3, scope: !4653)
!4677 = distinct !DISubprogram(name: "ximemdup", scope: !978, file: !978, line: 316, type: !4678, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!178, !1294, !997}
!4680 = !{!4681, !4682}
!4681 = !DILocalVariable(name: "p", arg: 1, scope: !4677, file: !978, line: 316, type: !1294)
!4682 = !DILocalVariable(name: "s", arg: 2, scope: !4677, file: !978, line: 316, type: !997)
!4683 = !DILocation(line: 0, scope: !4677)
!4684 = !DILocation(line: 0, scope: !4358, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 318, column: 18, scope: !4677)
!4686 = !DILocation(line: 0, scope: !4365, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 55, column: 25, scope: !4358, inlinedAt: !4685)
!4688 = !DILocation(line: 57, column: 26, scope: !4365, inlinedAt: !4687)
!4689 = !DILocation(line: 0, scope: !4325, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 55, column: 10, scope: !4358, inlinedAt: !4685)
!4691 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4690)
!4692 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4690)
!4693 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4690)
!4694 = !DILocation(line: 0, scope: !4669, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 318, column: 10, scope: !4677)
!4696 = !DILocation(line: 29, column: 10, scope: !4669, inlinedAt: !4695)
!4697 = !DILocation(line: 318, column: 3, scope: !4677)
!4698 = distinct !DISubprogram(name: "ximemdup0", scope: !978, file: !978, line: 325, type: !4699, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!177, !1294, !997}
!4701 = !{!4702, !4703, !4704}
!4702 = !DILocalVariable(name: "p", arg: 1, scope: !4698, file: !978, line: 325, type: !1294)
!4703 = !DILocalVariable(name: "s", arg: 2, scope: !4698, file: !978, line: 325, type: !997)
!4704 = !DILocalVariable(name: "result", scope: !4698, file: !978, line: 327, type: !177)
!4705 = !DILocation(line: 0, scope: !4698)
!4706 = !DILocation(line: 327, column: 30, scope: !4698)
!4707 = !DILocation(line: 0, scope: !4358, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 327, column: 18, scope: !4698)
!4709 = !DILocation(line: 0, scope: !4365, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 55, column: 25, scope: !4358, inlinedAt: !4708)
!4711 = !DILocation(line: 57, column: 26, scope: !4365, inlinedAt: !4710)
!4712 = !DILocation(line: 0, scope: !4325, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 55, column: 10, scope: !4358, inlinedAt: !4708)
!4714 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4713)
!4715 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4713)
!4716 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4713)
!4717 = !DILocation(line: 328, column: 3, scope: !4698)
!4718 = !DILocation(line: 328, column: 13, scope: !4698)
!4719 = !DILocation(line: 0, scope: !4669, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 329, column: 10, scope: !4698)
!4721 = !DILocation(line: 29, column: 10, scope: !4669, inlinedAt: !4720)
!4722 = !DILocation(line: 329, column: 3, scope: !4698)
!4723 = distinct !DISubprogram(name: "xstrdup", scope: !978, file: !978, line: 335, type: !1272, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !4724)
!4724 = !{!4725}
!4725 = !DILocalVariable(name: "string", arg: 1, scope: !4723, file: !978, line: 335, type: !183)
!4726 = !DILocation(line: 0, scope: !4723)
!4727 = !DILocation(line: 337, column: 27, scope: !4723)
!4728 = !DILocation(line: 337, column: 43, scope: !4723)
!4729 = !DILocation(line: 0, scope: !4653, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 337, column: 10, scope: !4723)
!4731 = !DILocation(line: 0, scope: !4344, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 312, column: 18, scope: !4653, inlinedAt: !4730)
!4733 = !DILocation(line: 49, column: 25, scope: !4344, inlinedAt: !4732)
!4734 = !DILocation(line: 0, scope: !4325, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 49, column: 10, scope: !4344, inlinedAt: !4732)
!4736 = !DILocation(line: 39, column: 8, scope: !4332, inlinedAt: !4735)
!4737 = !DILocation(line: 39, column: 7, scope: !4325, inlinedAt: !4735)
!4738 = !DILocation(line: 40, column: 5, scope: !4332, inlinedAt: !4735)
!4739 = !DILocation(line: 0, scope: !4669, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 312, column: 10, scope: !4653, inlinedAt: !4730)
!4741 = !DILocation(line: 29, column: 10, scope: !4669, inlinedAt: !4740)
!4742 = !DILocation(line: 337, column: 3, scope: !4723)
!4743 = distinct !DISubprogram(name: "xalloc_die", scope: !923, file: !923, line: 32, type: !601, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4744)
!4744 = !{!4745}
!4745 = !DILocalVariable(name: "__errstatus", scope: !4746, file: !923, line: 34, type: !4747)
!4746 = distinct !DILexicalBlock(scope: !4743, file: !923, line: 34, column: 3)
!4747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!4748 = !DILocation(line: 34, column: 3, scope: !4746)
!4749 = !DILocation(line: 0, scope: !4746)
!4750 = !DILocation(line: 40, column: 3, scope: !4743)
!4751 = distinct !DISubprogram(name: "xnumtoimax", scope: !930, file: !930, line: 42, type: !4752, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !4754)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!305, !183, !118, !305, !305, !183, !183, !118, !118}
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4767, !4768, !4769}
!4755 = !DILocalVariable(name: "n_str", arg: 1, scope: !4751, file: !930, line: 42, type: !183)
!4756 = !DILocalVariable(name: "base", arg: 2, scope: !4751, file: !930, line: 42, type: !118)
!4757 = !DILocalVariable(name: "min", arg: 3, scope: !4751, file: !930, line: 42, type: !305)
!4758 = !DILocalVariable(name: "max", arg: 4, scope: !4751, file: !930, line: 42, type: !305)
!4759 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4751, file: !930, line: 43, type: !183)
!4760 = !DILocalVariable(name: "err", arg: 6, scope: !4751, file: !930, line: 43, type: !183)
!4761 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4751, file: !930, line: 43, type: !118)
!4762 = !DILocalVariable(name: "flags", arg: 8, scope: !4751, file: !930, line: 44, type: !118)
!4763 = !DILocalVariable(name: "tnum", scope: !4751, file: !930, line: 46, type: !305)
!4764 = !DILocalVariable(name: "r", scope: !4751, file: !930, line: 46, type: !305)
!4765 = !DILocalVariable(name: "s_err", scope: !4751, file: !930, line: 47, type: !4766)
!4766 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1016, line: 43, baseType: !1015)
!4767 = !DILocalVariable(name: "overflow_errno", scope: !4751, file: !930, line: 50, type: !118)
!4768 = !DILocalVariable(name: "e", scope: !4751, file: !930, line: 75, type: !118)
!4769 = !DILocalVariable(name: "__errstatus", scope: !4770, file: !930, line: 80, type: !4747)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !930, line: 80, column: 5)
!4771 = distinct !DILexicalBlock(scope: !4751, file: !930, line: 77, column: 7)
!4772 = distinct !DIAssignID()
!4773 = !DILocation(line: 0, scope: !4751)
!4774 = !DILocation(line: 46, column: 3, scope: !4751)
!4775 = !DILocation(line: 47, column: 24, scope: !4751)
!4776 = !DILocation(line: 52, column: 13, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4751, file: !930, line: 52, column: 7)
!4778 = !DILocation(line: 52, column: 7, scope: !4751)
!4779 = !DILocation(line: 54, column: 11, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !930, line: 54, column: 11)
!4781 = distinct !DILexicalBlock(scope: !4777, file: !930, line: 53, column: 5)
!4782 = !DILocation(line: 54, column: 16, scope: !4780)
!4783 = !DILocation(line: 54, column: 11, scope: !4781)
!4784 = !DILocation(line: 61, column: 20, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4780, file: !930, line: 61, column: 16)
!4786 = !DILocation(line: 61, column: 16, scope: !4780)
!4787 = !DILocation(line: 0, scope: !4780)
!4788 = !DILocation(line: 75, column: 17, scope: !4751)
!4789 = !DILocation(line: 79, column: 14, scope: !4771)
!4790 = !DILocation(line: 75, column: 11, scope: !4751)
!4791 = !DILocation(line: 77, column: 16, scope: !4771)
!4792 = !DILocation(line: 78, column: 10, scope: !4771)
!4793 = !DILocation(line: 79, column: 31, scope: !4771)
!4794 = !DILocation(line: 79, column: 26, scope: !4771)
!4795 = !DILocation(line: 79, column: 23, scope: !4771)
!4796 = !DILocation(line: 77, column: 7, scope: !4751)
!4797 = !DILocation(line: 80, column: 5, scope: !4771)
!4798 = !DILocation(line: 82, column: 3, scope: !4751)
!4799 = !DILocation(line: 82, column: 9, scope: !4751)
!4800 = !DILocation(line: 84, column: 1, scope: !4751)
!4801 = !DILocation(line: 83, column: 3, scope: !4751)
!4802 = distinct !DISubprogram(name: "xdectoimax", scope: !930, file: !930, line: 92, type: !4803, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !4805)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!305, !183, !305, !305, !183, !183, !118}
!4805 = !{!4806, !4807, !4808, !4809, !4810, !4811}
!4806 = !DILocalVariable(name: "n_str", arg: 1, scope: !4802, file: !930, line: 92, type: !183)
!4807 = !DILocalVariable(name: "min", arg: 2, scope: !4802, file: !930, line: 92, type: !305)
!4808 = !DILocalVariable(name: "max", arg: 3, scope: !4802, file: !930, line: 92, type: !305)
!4809 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4802, file: !930, line: 93, type: !183)
!4810 = !DILocalVariable(name: "err", arg: 5, scope: !4802, file: !930, line: 93, type: !183)
!4811 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4802, file: !930, line: 93, type: !118)
!4812 = distinct !DIAssignID()
!4813 = !DILocation(line: 0, scope: !4802)
!4814 = !DILocation(line: 0, scope: !4751, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 95, column: 10, scope: !4802)
!4816 = !DILocation(line: 46, column: 3, scope: !4751, inlinedAt: !4815)
!4817 = !DILocation(line: 47, column: 24, scope: !4751, inlinedAt: !4815)
!4818 = !DILocation(line: 52, column: 13, scope: !4777, inlinedAt: !4815)
!4819 = !DILocation(line: 52, column: 7, scope: !4751, inlinedAt: !4815)
!4820 = !DILocation(line: 54, column: 11, scope: !4780, inlinedAt: !4815)
!4821 = !DILocation(line: 54, column: 16, scope: !4780, inlinedAt: !4815)
!4822 = !DILocation(line: 54, column: 11, scope: !4781, inlinedAt: !4815)
!4823 = !DILocation(line: 75, column: 17, scope: !4751, inlinedAt: !4815)
!4824 = !DILocation(line: 79, column: 14, scope: !4771, inlinedAt: !4815)
!4825 = !DILocation(line: 78, column: 10, scope: !4771, inlinedAt: !4815)
!4826 = !DILocation(line: 80, column: 5, scope: !4771, inlinedAt: !4815)
!4827 = !DILocation(line: 82, column: 3, scope: !4751, inlinedAt: !4815)
!4828 = !DILocation(line: 82, column: 9, scope: !4751, inlinedAt: !4815)
!4829 = !DILocation(line: 84, column: 1, scope: !4751, inlinedAt: !4815)
!4830 = !DILocation(line: 95, column: 3, scope: !4802)
!4831 = distinct !DISubprogram(name: "xstrtoimax", scope: !4832, file: !4832, line: 71, type: !4833, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !4837)
!4832 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!4835, !183, !1299, !118, !4836, !183}
!4835 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1030, line: 43, baseType: !1029)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4837 = !{!4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4850, !4851}
!4838 = !DILocalVariable(name: "nptr", arg: 1, scope: !4831, file: !4832, line: 71, type: !183)
!4839 = !DILocalVariable(name: "endptr", arg: 2, scope: !4831, file: !4832, line: 71, type: !1299)
!4840 = !DILocalVariable(name: "base", arg: 3, scope: !4831, file: !4832, line: 71, type: !118)
!4841 = !DILocalVariable(name: "val", arg: 4, scope: !4831, file: !4832, line: 72, type: !4836)
!4842 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4831, file: !4832, line: 72, type: !183)
!4843 = !DILocalVariable(name: "t_ptr", scope: !4831, file: !4832, line: 74, type: !177)
!4844 = !DILocalVariable(name: "p", scope: !4831, file: !4832, line: 75, type: !1299)
!4845 = !DILocalVariable(name: "tmp", scope: !4831, file: !4832, line: 91, type: !305)
!4846 = !DILocalVariable(name: "err", scope: !4831, file: !4832, line: 92, type: !4835)
!4847 = !DILocalVariable(name: "xbase", scope: !4848, file: !4832, line: 126, type: !118)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !4832, line: 119, column: 5)
!4849 = distinct !DILexicalBlock(scope: !4831, file: !4832, line: 118, column: 7)
!4850 = !DILocalVariable(name: "suffixes", scope: !4848, file: !4832, line: 127, type: !118)
!4851 = !DILocalVariable(name: "overflow", scope: !4848, file: !4832, line: 156, type: !4835)
!4852 = distinct !DIAssignID()
!4853 = !DILocation(line: 0, scope: !4831)
!4854 = !DILocation(line: 74, column: 3, scope: !4831)
!4855 = !DILocation(line: 75, column: 14, scope: !4831)
!4856 = !DILocation(line: 90, column: 3, scope: !4831)
!4857 = !DILocation(line: 90, column: 9, scope: !4831)
!4858 = !DILocation(line: 91, column: 20, scope: !4831)
!4859 = !DILocation(line: 94, column: 7, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4831, file: !4832, line: 94, column: 7)
!4861 = !DILocation(line: 94, column: 10, scope: !4860)
!4862 = !DILocation(line: 94, column: 7, scope: !4831)
!4863 = !DILocation(line: 98, column: 14, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !4832, line: 98, column: 11)
!4865 = distinct !DILexicalBlock(scope: !4860, file: !4832, line: 95, column: 5)
!4866 = !DILocation(line: 98, column: 29, scope: !4864)
!4867 = !DILocation(line: 98, column: 32, scope: !4864)
!4868 = !DILocation(line: 98, column: 38, scope: !4864)
!4869 = !DILocation(line: 98, column: 41, scope: !4864)
!4870 = !DILocation(line: 98, column: 11, scope: !4865)
!4871 = !DILocation(line: 102, column: 12, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4860, file: !4832, line: 102, column: 12)
!4873 = !DILocation(line: 102, column: 12, scope: !4860)
!4874 = !DILocation(line: 107, column: 5, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4872, file: !4832, line: 103, column: 5)
!4876 = !DILocation(line: 112, column: 8, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4831, file: !4832, line: 112, column: 7)
!4878 = !DILocation(line: 112, column: 7, scope: !4831)
!4879 = !DILocation(line: 114, column: 12, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4877, file: !4832, line: 113, column: 5)
!4881 = !DILocation(line: 115, column: 7, scope: !4880)
!4882 = !DILocation(line: 118, column: 7, scope: !4849)
!4883 = !DILocation(line: 118, column: 11, scope: !4849)
!4884 = !DILocation(line: 118, column: 7, scope: !4831)
!4885 = !DILocation(line: 120, column: 12, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4848, file: !4832, line: 120, column: 11)
!4887 = !DILocation(line: 120, column: 11, scope: !4848)
!4888 = !DILocation(line: 122, column: 16, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4886, file: !4832, line: 121, column: 9)
!4890 = !DILocation(line: 123, column: 22, scope: !4889)
!4891 = !DILocation(line: 123, column: 11, scope: !4889)
!4892 = !DILocation(line: 0, scope: !4848)
!4893 = !DILocation(line: 128, column: 7, scope: !4848)
!4894 = !DILocation(line: 140, column: 15, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4896, file: !4832, line: 140, column: 15)
!4896 = distinct !DILexicalBlock(scope: !4848, file: !4832, line: 129, column: 9)
!4897 = !DILocation(line: 140, column: 15, scope: !4896)
!4898 = !DILocation(line: 141, column: 21, scope: !4895)
!4899 = !DILocation(line: 141, column: 13, scope: !4895)
!4900 = !DILocation(line: 144, column: 21, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !4832, line: 144, column: 21)
!4902 = distinct !DILexicalBlock(scope: !4895, file: !4832, line: 142, column: 15)
!4903 = !DILocation(line: 144, column: 29, scope: !4901)
!4904 = !DILocation(line: 144, column: 21, scope: !4902)
!4905 = !DILocation(line: 152, column: 17, scope: !4902)
!4906 = !DILocation(line: 157, column: 7, scope: !4848)
!4907 = !DILocalVariable(name: "err", scope: !4908, file: !4832, line: 64, type: !4835)
!4908 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4832, file: !4832, line: 62, type: !4909, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !4911)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!4835, !4836, !118, !118}
!4911 = !{!4912, !4913, !4914, !4907}
!4912 = !DILocalVariable(name: "x", arg: 1, scope: !4908, file: !4832, line: 62, type: !4836)
!4913 = !DILocalVariable(name: "base", arg: 2, scope: !4908, file: !4832, line: 62, type: !118)
!4914 = !DILocalVariable(name: "power", arg: 3, scope: !4908, file: !4832, line: 62, type: !118)
!4915 = !DILocation(line: 0, scope: !4908, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 219, column: 22, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4848, file: !4832, line: 158, column: 9)
!4918 = !DILocalVariable(name: "x", arg: 1, scope: !4919, file: !4832, line: 47, type: !4836)
!4919 = distinct !DISubprogram(name: "bkm_scale", scope: !4832, file: !4832, line: 47, type: !4920, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !4922)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!4835, !4836, !118}
!4922 = !{!4918, !4923, !4924}
!4923 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4919, file: !4832, line: 47, type: !118)
!4924 = !DILocalVariable(name: "scaled", scope: !4919, file: !4832, line: 49, type: !305)
!4925 = !DILocation(line: 0, scope: !4919, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4916)
!4927 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4926)
!4928 = distinct !DILexicalBlock(scope: !4919, file: !4832, line: 50, column: 7)
!4929 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4926)
!4930 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4916)
!4931 = !DILocation(line: 227, column: 11, scope: !4848)
!4932 = !DILocation(line: 0, scope: !4908, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 215, column: 22, scope: !4917)
!4934 = !DILocation(line: 0, scope: !4919, inlinedAt: !4935)
!4935 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4933)
!4936 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4935)
!4937 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4935)
!4938 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4933)
!4939 = !DILocation(line: 0, scope: !4908, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 202, column: 22, scope: !4917)
!4941 = !DILocation(line: 0, scope: !4919, inlinedAt: !4942)
!4942 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4940)
!4943 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4942)
!4944 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4942)
!4945 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4940)
!4946 = !DILocation(line: 0, scope: !4908, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 198, column: 22, scope: !4917)
!4948 = !DILocation(line: 0, scope: !4919, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4947)
!4950 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4949)
!4951 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4949)
!4952 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4947)
!4953 = !DILocation(line: 0, scope: !4908, inlinedAt: !4954)
!4954 = distinct !DILocation(line: 194, column: 22, scope: !4917)
!4955 = !DILocation(line: 0, scope: !4919, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4954)
!4957 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4956)
!4958 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4956)
!4959 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4954)
!4960 = !DILocation(line: 0, scope: !4908, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 175, column: 22, scope: !4917)
!4962 = !DILocation(line: 0, scope: !4919, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4961)
!4964 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4963)
!4965 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4963)
!4966 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4961)
!4967 = !DILocation(line: 0, scope: !4919, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 160, column: 22, scope: !4917)
!4969 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4968)
!4970 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4968)
!4971 = !DILocation(line: 161, column: 11, scope: !4917)
!4972 = !DILocation(line: 0, scope: !4919, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 167, column: 22, scope: !4917)
!4974 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4973)
!4975 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4973)
!4976 = !DILocation(line: 168, column: 11, scope: !4917)
!4977 = !DILocation(line: 0, scope: !4908, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 180, column: 22, scope: !4917)
!4979 = !DILocation(line: 0, scope: !4919, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4978)
!4981 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4980)
!4982 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4980)
!4983 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4978)
!4984 = !DILocation(line: 0, scope: !4908, inlinedAt: !4985)
!4985 = distinct !DILocation(line: 185, column: 22, scope: !4917)
!4986 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4987)
!4987 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4985)
!4988 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4987)
!4989 = !DILocation(line: 0, scope: !4919, inlinedAt: !4987)
!4990 = !DILocation(line: 0, scope: !4908, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 190, column: 22, scope: !4917)
!4992 = !DILocation(line: 0, scope: !4919, inlinedAt: !4993)
!4993 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4991)
!4994 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !4993)
!4995 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !4993)
!4996 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4991)
!4997 = !DILocation(line: 0, scope: !4908, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 207, column: 22, scope: !4917)
!4999 = !DILocation(line: 0, scope: !4919, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 66, column: 12, scope: !4908, inlinedAt: !4998)
!5001 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !5000)
!5002 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !5000)
!5003 = !DILocation(line: 66, column: 9, scope: !4908, inlinedAt: !4998)
!5004 = !DILocation(line: 0, scope: !4919, inlinedAt: !5005)
!5005 = distinct !DILocation(line: 211, column: 22, scope: !4917)
!5006 = !DILocation(line: 50, column: 7, scope: !4928, inlinedAt: !5005)
!5007 = !DILocation(line: 50, column: 7, scope: !4919, inlinedAt: !5005)
!5008 = !DILocation(line: 212, column: 11, scope: !4917)
!5009 = !DILocation(line: 0, scope: !4917)
!5010 = !DILocation(line: 228, column: 10, scope: !4848)
!5011 = !DILocation(line: 229, column: 11, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4848, file: !4832, line: 229, column: 11)
!5013 = !DILocation(line: 229, column: 11, scope: !4848)
!5014 = !DILocation(line: 223, column: 16, scope: !4917)
!5015 = !DILocation(line: 224, column: 22, scope: !4917)
!5016 = !DILocation(line: 100, column: 11, scope: !4865)
!5017 = !DILocation(line: 92, column: 16, scope: !4831)
!5018 = !DILocation(line: 233, column: 8, scope: !4831)
!5019 = !DILocation(line: 234, column: 3, scope: !4831)
!5020 = !DILocation(line: 235, column: 1, scope: !4831)
!5021 = !DISubprogram(name: "strtoimax", scope: !5022, file: !5022, line: 297, type: !5023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5022 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!305, !1136, !5025, !118}
!5025 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1299)
!5026 = distinct !DISubprogram(name: "rpl_fopen", scope: !1033, file: !1033, line: 46, type: !5027, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !5063)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!5029, !183, !183}
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !5031)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !5032)
!5032 = !{!5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5031, file: !347, line: 51, baseType: !118, size: 32)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5031, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5031, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5031, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5031, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5031, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5031, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5031, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5031, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5031, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5031, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5031, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5031, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5031, file: !347, line: 70, baseType: !5047, size: 64, offset: 832)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5031, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5031, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5031, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5031, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5031, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5031, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5031, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5031, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5031, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5031, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5031, file: !347, line: 93, baseType: !5047, size: 64, offset: 1344)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5031, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5031, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5031, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5031, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!5063 = !{!5064, !5065, !5066, !5067, !5068, !5069, !5073, !5075, !5076, !5081, !5084, !5085}
!5064 = !DILocalVariable(name: "filename", arg: 1, scope: !5026, file: !1033, line: 46, type: !183)
!5065 = !DILocalVariable(name: "mode", arg: 2, scope: !5026, file: !1033, line: 46, type: !183)
!5066 = !DILocalVariable(name: "open_direction", scope: !5026, file: !1033, line: 54, type: !118)
!5067 = !DILocalVariable(name: "open_flags", scope: !5026, file: !1033, line: 55, type: !118)
!5068 = !DILocalVariable(name: "open_flags_gnu", scope: !5026, file: !1033, line: 57, type: !311)
!5069 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5026, file: !1033, line: 59, type: !5070)
!5070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5071)
!5071 = !{!5072}
!5072 = !DISubrange(count: 81)
!5073 = !DILocalVariable(name: "p", scope: !5074, file: !1033, line: 62, type: !183)
!5074 = distinct !DILexicalBlock(scope: !5026, file: !1033, line: 61, column: 3)
!5075 = !DILocalVariable(name: "q", scope: !5074, file: !1033, line: 64, type: !177)
!5076 = !DILocalVariable(name: "len", scope: !5077, file: !1033, line: 128, type: !180)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !1033, line: 127, column: 9)
!5078 = distinct !DILexicalBlock(scope: !5079, file: !1033, line: 68, column: 7)
!5079 = distinct !DILexicalBlock(scope: !5080, file: !1033, line: 67, column: 5)
!5080 = distinct !DILexicalBlock(scope: !5074, file: !1033, line: 67, column: 5)
!5081 = !DILocalVariable(name: "fd", scope: !5082, file: !1033, line: 199, type: !118)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !1033, line: 198, column: 5)
!5083 = distinct !DILexicalBlock(scope: !5026, file: !1033, line: 197, column: 7)
!5084 = !DILocalVariable(name: "fp", scope: !5082, file: !1033, line: 204, type: !5029)
!5085 = !DILocalVariable(name: "saved_errno", scope: !5086, file: !1033, line: 207, type: !118)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !1033, line: 206, column: 9)
!5087 = distinct !DILexicalBlock(scope: !5082, file: !1033, line: 205, column: 11)
!5088 = distinct !DIAssignID()
!5089 = !DILocation(line: 0, scope: !5026)
!5090 = !DILocation(line: 59, column: 3, scope: !5026)
!5091 = !DILocation(line: 0, scope: !5074)
!5092 = !DILocation(line: 67, column: 5, scope: !5074)
!5093 = !DILocation(line: 54, column: 7, scope: !5026)
!5094 = !DILocation(line: 67, column: 12, scope: !5079)
!5095 = !DILocation(line: 67, column: 5, scope: !5080)
!5096 = !DILocation(line: 74, column: 19, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !1033, line: 74, column: 17)
!5098 = distinct !DILexicalBlock(scope: !5078, file: !1033, line: 70, column: 11)
!5099 = !DILocation(line: 74, column: 17, scope: !5098)
!5100 = !DILocation(line: 75, column: 17, scope: !5097)
!5101 = !DILocation(line: 75, column: 20, scope: !5097)
!5102 = !DILocation(line: 75, column: 15, scope: !5097)
!5103 = !DILocation(line: 80, column: 24, scope: !5098)
!5104 = !DILocation(line: 82, column: 19, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5098, file: !1033, line: 82, column: 17)
!5106 = !DILocation(line: 82, column: 17, scope: !5098)
!5107 = !DILocation(line: 83, column: 17, scope: !5105)
!5108 = !DILocation(line: 83, column: 20, scope: !5105)
!5109 = !DILocation(line: 83, column: 15, scope: !5105)
!5110 = !DILocation(line: 88, column: 24, scope: !5098)
!5111 = !DILocation(line: 90, column: 19, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5098, file: !1033, line: 90, column: 17)
!5113 = !DILocation(line: 90, column: 17, scope: !5098)
!5114 = !DILocation(line: 91, column: 17, scope: !5112)
!5115 = !DILocation(line: 91, column: 20, scope: !5112)
!5116 = !DILocation(line: 91, column: 15, scope: !5112)
!5117 = !DILocation(line: 100, column: 19, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5098, file: !1033, line: 100, column: 17)
!5119 = !DILocation(line: 100, column: 17, scope: !5098)
!5120 = !DILocation(line: 101, column: 17, scope: !5118)
!5121 = !DILocation(line: 101, column: 20, scope: !5118)
!5122 = !DILocation(line: 101, column: 15, scope: !5118)
!5123 = !DILocation(line: 107, column: 19, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5098, file: !1033, line: 107, column: 17)
!5125 = !DILocation(line: 107, column: 17, scope: !5098)
!5126 = !DILocation(line: 108, column: 17, scope: !5124)
!5127 = !DILocation(line: 108, column: 20, scope: !5124)
!5128 = !DILocation(line: 108, column: 15, scope: !5124)
!5129 = !DILocation(line: 113, column: 24, scope: !5098)
!5130 = !DILocation(line: 115, column: 13, scope: !5098)
!5131 = !DILocation(line: 117, column: 24, scope: !5098)
!5132 = !DILocation(line: 119, column: 13, scope: !5098)
!5133 = !DILocation(line: 128, column: 24, scope: !5077)
!5134 = !DILocation(line: 0, scope: !5077)
!5135 = !DILocation(line: 129, column: 48, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5077, file: !1033, line: 129, column: 15)
!5137 = !DILocation(line: 129, column: 15, scope: !5077)
!5138 = !DILocalVariable(name: "__dest", arg: 1, scope: !5139, file: !1468, line: 26, type: !1471)
!5139 = distinct !DISubprogram(name: "memcpy", scope: !1468, file: !1468, line: 26, type: !1469, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !5140)
!5140 = !{!5138, !5141, !5142}
!5141 = !DILocalVariable(name: "__src", arg: 2, scope: !5139, file: !1468, line: 26, type: !1293)
!5142 = !DILocalVariable(name: "__len", arg: 3, scope: !5139, file: !1468, line: 26, type: !180)
!5143 = !DILocation(line: 0, scope: !5139, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 131, column: 11, scope: !5077)
!5145 = !DILocation(line: 29, column: 10, scope: !5139, inlinedAt: !5144)
!5146 = !DILocation(line: 132, column: 13, scope: !5077)
!5147 = !DILocation(line: 135, column: 9, scope: !5078)
!5148 = !DILocation(line: 67, column: 25, scope: !5079)
!5149 = !DILocation(line: 67, column: 5, scope: !5079)
!5150 = distinct !{!5150, !5095, !5151, !1193}
!5151 = !DILocation(line: 136, column: 7, scope: !5080)
!5152 = !DILocation(line: 138, column: 8, scope: !5074)
!5153 = !DILocation(line: 197, column: 7, scope: !5083)
!5154 = !DILocation(line: 197, column: 7, scope: !5026)
!5155 = !DILocation(line: 199, column: 47, scope: !5082)
!5156 = !DILocation(line: 199, column: 16, scope: !5082)
!5157 = !DILocation(line: 0, scope: !5082)
!5158 = !DILocation(line: 201, column: 14, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5082, file: !1033, line: 201, column: 11)
!5160 = !DILocation(line: 201, column: 11, scope: !5082)
!5161 = !DILocation(line: 204, column: 18, scope: !5082)
!5162 = !DILocation(line: 205, column: 14, scope: !5087)
!5163 = !DILocation(line: 205, column: 11, scope: !5082)
!5164 = !DILocation(line: 207, column: 29, scope: !5086)
!5165 = !DILocation(line: 0, scope: !5086)
!5166 = !DILocation(line: 208, column: 11, scope: !5086)
!5167 = !DILocation(line: 209, column: 17, scope: !5086)
!5168 = !DILocation(line: 210, column: 9, scope: !5086)
!5169 = !DILocalVariable(name: "filename", arg: 1, scope: !5170, file: !1033, line: 30, type: !183)
!5170 = distinct !DISubprogram(name: "orig_fopen", scope: !1033, file: !1033, line: 30, type: !5027, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !5171)
!5171 = !{!5169, !5172}
!5172 = !DILocalVariable(name: "mode", arg: 2, scope: !5170, file: !1033, line: 30, type: !183)
!5173 = !DILocation(line: 0, scope: !5170, inlinedAt: !5174)
!5174 = distinct !DILocation(line: 219, column: 10, scope: !5026)
!5175 = !DILocation(line: 32, column: 10, scope: !5170, inlinedAt: !5174)
!5176 = !DILocation(line: 219, column: 3, scope: !5026)
!5177 = !DILocation(line: 220, column: 1, scope: !5026)
!5178 = !DISubprogram(name: "open", scope: !2143, file: !2143, line: 181, type: !5179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!118, !183, !118, null}
!5181 = !DISubprogram(name: "fdopen", scope: !1141, file: !1141, line: 293, type: !5182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!5029, !118, !183}
!5184 = !DISubprogram(name: "close", scope: !2008, file: !2008, line: 358, type: !1770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5185 = !DISubprogram(name: "fopen", scope: !1141, file: !1141, line: 258, type: !5186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!5029, !1136, !1136}
!5188 = distinct !DISubprogram(name: "close_stream", scope: !1035, file: !1035, line: 55, type: !5189, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !5225)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!118, !5191}
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !345, line: 7, baseType: !5193)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !347, line: 49, size: 1728, elements: !5194)
!5194 = !{!5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5193, file: !347, line: 51, baseType: !118, size: 32)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5193, file: !347, line: 54, baseType: !177, size: 64, offset: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5193, file: !347, line: 55, baseType: !177, size: 64, offset: 128)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5193, file: !347, line: 56, baseType: !177, size: 64, offset: 192)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5193, file: !347, line: 57, baseType: !177, size: 64, offset: 256)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5193, file: !347, line: 58, baseType: !177, size: 64, offset: 320)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5193, file: !347, line: 59, baseType: !177, size: 64, offset: 384)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5193, file: !347, line: 60, baseType: !177, size: 64, offset: 448)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5193, file: !347, line: 61, baseType: !177, size: 64, offset: 512)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5193, file: !347, line: 64, baseType: !177, size: 64, offset: 576)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5193, file: !347, line: 65, baseType: !177, size: 64, offset: 640)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5193, file: !347, line: 66, baseType: !177, size: 64, offset: 704)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5193, file: !347, line: 68, baseType: !362, size: 64, offset: 768)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5193, file: !347, line: 70, baseType: !5209, size: 64, offset: 832)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5193, file: !347, line: 72, baseType: !118, size: 32, offset: 896)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5193, file: !347, line: 73, baseType: !118, size: 32, offset: 928)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5193, file: !347, line: 74, baseType: !369, size: 64, offset: 960)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5193, file: !347, line: 77, baseType: !179, size: 16, offset: 1024)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5193, file: !347, line: 78, baseType: !372, size: 8, offset: 1040)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5193, file: !347, line: 79, baseType: !86, size: 8, offset: 1048)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5193, file: !347, line: 81, baseType: !375, size: 64, offset: 1088)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5193, file: !347, line: 89, baseType: !378, size: 64, offset: 1152)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5193, file: !347, line: 91, baseType: !380, size: 64, offset: 1216)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5193, file: !347, line: 92, baseType: !383, size: 64, offset: 1280)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5193, file: !347, line: 93, baseType: !5209, size: 64, offset: 1344)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5193, file: !347, line: 94, baseType: !178, size: 64, offset: 1408)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5193, file: !347, line: 95, baseType: !180, size: 64, offset: 1472)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5193, file: !347, line: 96, baseType: !118, size: 32, offset: 1536)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5193, file: !347, line: 98, baseType: !390, size: 160, offset: 1568)
!5225 = !{!5226, !5227, !5229, !5230}
!5226 = !DILocalVariable(name: "stream", arg: 1, scope: !5188, file: !1035, line: 55, type: !5191)
!5227 = !DILocalVariable(name: "some_pending", scope: !5188, file: !1035, line: 57, type: !5228)
!5228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!5229 = !DILocalVariable(name: "prev_fail", scope: !5188, file: !1035, line: 58, type: !5228)
!5230 = !DILocalVariable(name: "fclose_fail", scope: !5188, file: !1035, line: 59, type: !5228)
!5231 = !DILocation(line: 0, scope: !5188)
!5232 = !DILocation(line: 57, column: 30, scope: !5188)
!5233 = !DILocalVariable(name: "__stream", arg: 1, scope: !5234, file: !1769, line: 135, type: !5191)
!5234 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1769, file: !1769, line: 135, type: !5189, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !5235)
!5235 = !{!5233}
!5236 = !DILocation(line: 0, scope: !5234, inlinedAt: !5237)
!5237 = distinct !DILocation(line: 58, column: 27, scope: !5188)
!5238 = !DILocation(line: 137, column: 10, scope: !5234, inlinedAt: !5237)
!5239 = !DILocation(line: 58, column: 43, scope: !5188)
!5240 = !DILocation(line: 59, column: 29, scope: !5188)
!5241 = !DILocation(line: 59, column: 45, scope: !5188)
!5242 = !DILocation(line: 69, column: 17, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5188, file: !1035, line: 69, column: 7)
!5244 = !DILocation(line: 57, column: 50, scope: !5188)
!5245 = !DILocation(line: 69, column: 33, scope: !5243)
!5246 = !DILocation(line: 69, column: 53, scope: !5243)
!5247 = !DILocation(line: 69, column: 59, scope: !5243)
!5248 = !DILocation(line: 69, column: 7, scope: !5188)
!5249 = !DILocation(line: 71, column: 11, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5243, file: !1035, line: 70, column: 5)
!5251 = !DILocation(line: 72, column: 9, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5250, file: !1035, line: 71, column: 11)
!5253 = !DILocation(line: 72, column: 15, scope: !5252)
!5254 = !DILocation(line: 77, column: 1, scope: !5188)
!5255 = !DISubprogram(name: "__fpending", scope: !2351, file: !2351, line: 75, type: !5256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!180, !5191}
!5258 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !933, file: !933, line: 100, type: !5259, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5262)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!180, !1651, !183, !180, !5261}
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!5262 = !{!5263, !5264, !5265, !5266, !5267}
!5263 = !DILocalVariable(name: "pwc", arg: 1, scope: !5258, file: !933, line: 100, type: !1651)
!5264 = !DILocalVariable(name: "s", arg: 2, scope: !5258, file: !933, line: 100, type: !183)
!5265 = !DILocalVariable(name: "n", arg: 3, scope: !5258, file: !933, line: 100, type: !180)
!5266 = !DILocalVariable(name: "ps", arg: 4, scope: !5258, file: !933, line: 100, type: !5261)
!5267 = !DILocalVariable(name: "ret", scope: !5258, file: !933, line: 130, type: !180)
!5268 = !DILocation(line: 0, scope: !5258)
!5269 = !DILocation(line: 105, column: 9, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5258, file: !933, line: 105, column: 7)
!5271 = !DILocation(line: 105, column: 7, scope: !5258)
!5272 = !DILocation(line: 117, column: 10, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5258, file: !933, line: 117, column: 7)
!5274 = !DILocation(line: 117, column: 7, scope: !5258)
!5275 = !DILocation(line: 130, column: 16, scope: !5258)
!5276 = !DILocation(line: 135, column: 11, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5258, file: !933, line: 135, column: 7)
!5278 = !DILocation(line: 135, column: 25, scope: !5277)
!5279 = !DILocation(line: 135, column: 30, scope: !5277)
!5280 = !DILocation(line: 135, column: 7, scope: !5258)
!5281 = !DILocalVariable(name: "ps", arg: 1, scope: !5282, file: !2792, line: 1135, type: !5261)
!5282 = distinct !DISubprogram(name: "mbszero", scope: !2792, file: !2792, line: 1135, type: !5283, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5285)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{null, !5261}
!5285 = !{!5281}
!5286 = !DILocation(line: 0, scope: !5282, inlinedAt: !5287)
!5287 = distinct !DILocation(line: 137, column: 5, scope: !5277)
!5288 = !DILocalVariable(name: "__dest", arg: 1, scope: !5289, file: !1468, line: 57, type: !178)
!5289 = distinct !DISubprogram(name: "memset", scope: !1468, file: !1468, line: 57, type: !1550, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5290)
!5290 = !{!5288, !5291, !5292}
!5291 = !DILocalVariable(name: "__ch", arg: 2, scope: !5289, file: !1468, line: 57, type: !118)
!5292 = !DILocalVariable(name: "__len", arg: 3, scope: !5289, file: !1468, line: 57, type: !180)
!5293 = !DILocation(line: 0, scope: !5289, inlinedAt: !5294)
!5294 = distinct !DILocation(line: 1137, column: 3, scope: !5282, inlinedAt: !5287)
!5295 = !DILocation(line: 59, column: 10, scope: !5289, inlinedAt: !5294)
!5296 = !DILocation(line: 137, column: 5, scope: !5277)
!5297 = !DILocation(line: 138, column: 11, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5258, file: !933, line: 138, column: 7)
!5299 = !DILocation(line: 138, column: 7, scope: !5258)
!5300 = !DILocation(line: 139, column: 5, scope: !5298)
!5301 = !DILocation(line: 143, column: 26, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5258, file: !933, line: 143, column: 7)
!5303 = !DILocation(line: 143, column: 41, scope: !5302)
!5304 = !DILocation(line: 143, column: 7, scope: !5258)
!5305 = !DILocation(line: 145, column: 15, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !933, line: 145, column: 11)
!5307 = distinct !DILexicalBlock(scope: !5302, file: !933, line: 144, column: 5)
!5308 = !DILocation(line: 145, column: 11, scope: !5307)
!5309 = !DILocation(line: 146, column: 32, scope: !5306)
!5310 = !DILocation(line: 146, column: 16, scope: !5306)
!5311 = !DILocation(line: 146, column: 14, scope: !5306)
!5312 = !DILocation(line: 146, column: 9, scope: !5306)
!5313 = !DILocation(line: 286, column: 1, scope: !5258)
!5314 = !DISubprogram(name: "mbsinit", scope: !5315, file: !5315, line: 293, type: !5316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5315 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!118, !5318}
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!5320 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1037, file: !1037, line: 27, type: !4309, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !5321)
!5321 = !{!5322, !5323, !5324, !5325}
!5322 = !DILocalVariable(name: "ptr", arg: 1, scope: !5320, file: !1037, line: 27, type: !178)
!5323 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5320, file: !1037, line: 27, type: !180)
!5324 = !DILocalVariable(name: "size", arg: 3, scope: !5320, file: !1037, line: 27, type: !180)
!5325 = !DILocalVariable(name: "nbytes", scope: !5320, file: !1037, line: 29, type: !180)
!5326 = !DILocation(line: 0, scope: !5320)
!5327 = !DILocation(line: 30, column: 7, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5320, file: !1037, line: 30, column: 7)
!5329 = !DILocation(line: 30, column: 7, scope: !5320)
!5330 = !DILocation(line: 32, column: 7, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5328, file: !1037, line: 31, column: 5)
!5332 = !DILocation(line: 32, column: 13, scope: !5331)
!5333 = !DILocation(line: 33, column: 7, scope: !5331)
!5334 = !DILocalVariable(name: "ptr", arg: 1, scope: !5335, file: !4401, line: 2057, type: !178)
!5335 = distinct !DISubprogram(name: "rpl_realloc", scope: !4401, file: !4401, line: 2057, type: !4393, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !5336)
!5336 = !{!5334, !5337}
!5337 = !DILocalVariable(name: "size", arg: 2, scope: !5335, file: !4401, line: 2057, type: !180)
!5338 = !DILocation(line: 0, scope: !5335, inlinedAt: !5339)
!5339 = distinct !DILocation(line: 37, column: 10, scope: !5320)
!5340 = !DILocation(line: 2059, column: 24, scope: !5335, inlinedAt: !5339)
!5341 = !DILocation(line: 2059, column: 10, scope: !5335, inlinedAt: !5339)
!5342 = !DILocation(line: 37, column: 3, scope: !5320)
!5343 = !DILocation(line: 38, column: 1, scope: !5320)
!5344 = distinct !DISubprogram(name: "hard_locale", scope: !951, file: !951, line: 28, type: !5345, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5347)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!311, !118}
!5347 = !{!5348, !5349}
!5348 = !DILocalVariable(name: "category", arg: 1, scope: !5344, file: !951, line: 28, type: !118)
!5349 = !DILocalVariable(name: "locale", scope: !5344, file: !951, line: 30, type: !5350)
!5350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5351)
!5351 = !{!5352}
!5352 = !DISubrange(count: 257)
!5353 = distinct !DIAssignID()
!5354 = !DILocation(line: 0, scope: !5344)
!5355 = !DILocation(line: 30, column: 3, scope: !5344)
!5356 = !DILocation(line: 32, column: 7, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5344, file: !951, line: 32, column: 7)
!5358 = !DILocation(line: 32, column: 7, scope: !5344)
!5359 = !DILocalVariable(name: "__s1", arg: 1, scope: !5360, file: !1159, line: 1359, type: !183)
!5360 = distinct !DISubprogram(name: "streq", scope: !1159, file: !1159, line: 1359, type: !1160, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5361)
!5361 = !{!5359, !5362}
!5362 = !DILocalVariable(name: "__s2", arg: 2, scope: !5360, file: !1159, line: 1359, type: !183)
!5363 = !DILocation(line: 0, scope: !5360, inlinedAt: !5364)
!5364 = distinct !DILocation(line: 35, column: 9, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5344, file: !951, line: 35, column: 7)
!5366 = !DILocation(line: 1361, column: 11, scope: !5360, inlinedAt: !5364)
!5367 = !DILocation(line: 35, column: 29, scope: !5365)
!5368 = !DILocation(line: 0, scope: !5360, inlinedAt: !5369)
!5369 = distinct !DILocation(line: 35, column: 32, scope: !5365)
!5370 = !DILocation(line: 1361, column: 11, scope: !5360, inlinedAt: !5369)
!5371 = !DILocation(line: 1361, column: 10, scope: !5360, inlinedAt: !5369)
!5372 = !DILocation(line: 35, column: 7, scope: !5344)
!5373 = !DILocation(line: 46, column: 3, scope: !5344)
!5374 = !DILocation(line: 47, column: 1, scope: !5344)
!5375 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1043, file: !1043, line: 154, type: !5376, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5378)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!118, !118, !177, !180}
!5378 = !{!5379, !5380, !5381}
!5379 = !DILocalVariable(name: "category", arg: 1, scope: !5375, file: !1043, line: 154, type: !118)
!5380 = !DILocalVariable(name: "buf", arg: 2, scope: !5375, file: !1043, line: 154, type: !177)
!5381 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5375, file: !1043, line: 154, type: !180)
!5382 = !DILocation(line: 0, scope: !5375)
!5383 = !DILocation(line: 159, column: 10, scope: !5375)
!5384 = !DILocation(line: 159, column: 3, scope: !5375)
!5385 = distinct !DISubprogram(name: "setlocale_null", scope: !1043, file: !1043, line: 186, type: !5386, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5388)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!183, !118}
!5388 = !{!5389}
!5389 = !DILocalVariable(name: "category", arg: 1, scope: !5385, file: !1043, line: 186, type: !118)
!5390 = !DILocation(line: 0, scope: !5385)
!5391 = !DILocation(line: 189, column: 10, scope: !5385)
!5392 = !DILocation(line: 189, column: 3, scope: !5385)
!5393 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1045, file: !1045, line: 35, type: !5386, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !5394)
!5394 = !{!5395, !5396}
!5395 = !DILocalVariable(name: "category", arg: 1, scope: !5393, file: !1045, line: 35, type: !118)
!5396 = !DILocalVariable(name: "result", scope: !5393, file: !1045, line: 37, type: !183)
!5397 = !DILocation(line: 0, scope: !5393)
!5398 = !DILocation(line: 37, column: 24, scope: !5393)
!5399 = !DILocation(line: 62, column: 3, scope: !5393)
!5400 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1045, file: !1045, line: 66, type: !5376, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !5401)
!5401 = !{!5402, !5403, !5404, !5405, !5406}
!5402 = !DILocalVariable(name: "category", arg: 1, scope: !5400, file: !1045, line: 66, type: !118)
!5403 = !DILocalVariable(name: "buf", arg: 2, scope: !5400, file: !1045, line: 66, type: !177)
!5404 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5400, file: !1045, line: 66, type: !180)
!5405 = !DILocalVariable(name: "result", scope: !5400, file: !1045, line: 111, type: !183)
!5406 = !DILocalVariable(name: "length", scope: !5407, file: !1045, line: 125, type: !180)
!5407 = distinct !DILexicalBlock(scope: !5408, file: !1045, line: 124, column: 5)
!5408 = distinct !DILexicalBlock(scope: !5400, file: !1045, line: 113, column: 7)
!5409 = !DILocation(line: 0, scope: !5400)
!5410 = !DILocation(line: 0, scope: !5393, inlinedAt: !5411)
!5411 = distinct !DILocation(line: 111, column: 24, scope: !5400)
!5412 = !DILocation(line: 37, column: 24, scope: !5393, inlinedAt: !5411)
!5413 = !DILocation(line: 113, column: 14, scope: !5408)
!5414 = !DILocation(line: 113, column: 7, scope: !5400)
!5415 = !DILocation(line: 116, column: 19, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5417, file: !1045, line: 116, column: 11)
!5417 = distinct !DILexicalBlock(scope: !5408, file: !1045, line: 114, column: 5)
!5418 = !DILocation(line: 116, column: 11, scope: !5417)
!5419 = !DILocation(line: 120, column: 16, scope: !5416)
!5420 = !DILocation(line: 120, column: 9, scope: !5416)
!5421 = !DILocation(line: 125, column: 23, scope: !5407)
!5422 = !DILocation(line: 0, scope: !5407)
!5423 = !DILocation(line: 126, column: 18, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5407, file: !1045, line: 126, column: 11)
!5425 = !DILocation(line: 126, column: 11, scope: !5407)
!5426 = !DILocation(line: 128, column: 39, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5424, file: !1045, line: 127, column: 9)
!5428 = !DILocalVariable(name: "__dest", arg: 1, scope: !5429, file: !1468, line: 26, type: !1471)
!5429 = distinct !DISubprogram(name: "memcpy", scope: !1468, file: !1468, line: 26, type: !1469, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !5430)
!5430 = !{!5428, !5431, !5432}
!5431 = !DILocalVariable(name: "__src", arg: 2, scope: !5429, file: !1468, line: 26, type: !1293)
!5432 = !DILocalVariable(name: "__len", arg: 3, scope: !5429, file: !1468, line: 26, type: !180)
!5433 = !DILocation(line: 0, scope: !5429, inlinedAt: !5434)
!5434 = distinct !DILocation(line: 128, column: 11, scope: !5427)
!5435 = !DILocation(line: 29, column: 10, scope: !5429, inlinedAt: !5434)
!5436 = !DILocation(line: 129, column: 11, scope: !5427)
!5437 = !DILocation(line: 133, column: 23, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !1045, line: 133, column: 15)
!5439 = distinct !DILexicalBlock(scope: !5424, file: !1045, line: 132, column: 9)
!5440 = !DILocation(line: 133, column: 15, scope: !5439)
!5441 = !DILocation(line: 138, column: 44, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5438, file: !1045, line: 134, column: 13)
!5443 = !DILocation(line: 0, scope: !5429, inlinedAt: !5444)
!5444 = distinct !DILocation(line: 138, column: 15, scope: !5442)
!5445 = !DILocation(line: 29, column: 10, scope: !5429, inlinedAt: !5444)
!5446 = !DILocation(line: 139, column: 15, scope: !5442)
!5447 = !DILocation(line: 139, column: 32, scope: !5442)
!5448 = !DILocation(line: 140, column: 13, scope: !5442)
!5449 = !DILocation(line: 0, scope: !5408)
!5450 = !DILocation(line: 145, column: 1, scope: !5400)
