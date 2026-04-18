; ModuleID = 'src/nl.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.linebuffer = type { i64, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.re_registers = type { i32, i32*, i32* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Write each FILE to standard output, with line numbers added.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"  -b, --body-numbering=STYLE      use STYLE for numbering body lines\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"  -d, --section-delimiter=CC      use CC for logical page delimiters\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"  -h, --header-numbering=STYLE    use STYLE for numbering header lines\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"  -i, --line-increment=NUMBER     line number increment at each line\0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"  -l, --join-blank-lines=NUMBER   group of NUMBER empty lines counted as one\0A\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"  -n, --number-format=FORMAT      insert line numbers according to FORMAT\0A\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"  -p, --no-renumber               do not reset line numbers for each section\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"  -s, --number-separator=STRING   add STRING after (possible) line number\0A\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"  -v, --starting-line-number=NUMBER  first line number for each section\0A\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"  -w, --number-width=NUMBER       use NUMBER columns for line numbers\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.17 = private unnamed_addr constant [323 x i8] c"\0ADefault options are: -bt -d'\\:' -fn -hn -i1 -l1 -n'rn' -s<TAB> -v1 -w6\0A\0ACC are two delimiter characters used to construct logical page delimiters;\0Aa missing second character implies ':'.  As a GNU extension one can specify\0Amore than two characters, and also specifying the empty string (-d '')\0Adisables section matching.\0A\00", align 1
@.str.18 = private unnamed_addr constant [202 x i8] c"\0ASTYLE is one of:\0A\0A  a      number all lines\0A  t      number only nonempty lines\0A  n      number no lines\0A  pBRE   number only lines that contain a match for the basic regular\0A         expression, BRE\0A\00", align 1
@.str.19 = private unnamed_addr constant [147 x i8] c"\0AFORMAT is one of:\0A\0A  ln     left justified, no leading zeros\0A  rn     right justified, no leading zeros\0A  rz     right justified, leading zeros\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"h:b:f:v:i:pl:s:w:n:d:\00", align 1
@longopts = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0), i32 1, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i32 1, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@header_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), align 8, !dbg !232
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !107
@header_fastmap = internal global [256 x i8] zeroinitializer, align 1, !dbg !116
@.str.24 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@body_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0), align 8, !dbg !234
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !83
@body_fastmap = internal global [256 x i8] zeroinitializer, align 1, !dbg !111
@.str.25 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1
@footer_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), align 8, !dbg !236
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !109
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 1, !dbg !118
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid footer numbering style: %s\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"invalid starting line number\00", align 1
@starting_line_number = internal unnamed_addr global i64 1, align 8, !dbg !238
@.str.28 = private unnamed_addr constant [30 x i8] c"invalid line number increment\00", align 1
@page_incr = internal unnamed_addr global i64 1, align 8, !dbg !240
@reset_numbers = internal unnamed_addr global i1 false, align 1, !dbg !306
@.str.29 = private unnamed_addr constant [35 x i8] c"invalid line number of blank lines\00", align 1
@blank_join = internal unnamed_addr global i64 1, align 8, !dbg !244
@separator_str = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0), align 8, !dbg !246
@.str.30 = private unnamed_addr constant [32 x i8] c"invalid line number field width\00", align 1
@lineno_width = internal unnamed_addr global i32 6, align 4, !dbg !248
@.str.31 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@FORMAT_LEFT = internal constant [8 x i8] c"%-*jd%s\00", align 1, !dbg !250
@lineno_format = internal unnamed_addr global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @FORMAT_RIGHT_NOLZ, i64 0, i64 0), align 8, !dbg !255
@.str.32 = private unnamed_addr constant [3 x i8] c"rn\00", align 1
@FORMAT_RIGHT_NOLZ = internal constant [7 x i8] c"%*jd%s\00", align 1, !dbg !257
@.str.33 = private unnamed_addr constant [3 x i8] c"rz\00", align 1
@FORMAT_RIGHT_LZ = internal constant [8 x i8] c"%0*jd%s\00", align 1, !dbg !262
@.str.34 = private unnamed_addr constant [34 x i8] c"invalid line numbering format: %s\00", align 1
@section_del = internal unnamed_addr global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @DEFAULT_SECTION_DELIMITERS, i64 0, i64 0), align 8, !dbg !264
@.str.36 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Scott Bartram\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@section_del_len = internal unnamed_addr global i64 0, align 8, !dbg !120
@header_del_len = internal unnamed_addr global i64 0, align 8, !dbg !122
@header_del = internal unnamed_addr global i8* null, align 8, !dbg !271
@body_del_len = internal unnamed_addr global i64 0, align 8, !dbg !124
@body_del = internal unnamed_addr global i8* null, align 8, !dbg !273
@footer_del_len = internal unnamed_addr global i64 0, align 8, !dbg !126
@footer_del = internal unnamed_addr global i8* null, align 8, !dbg !275
@line_buf = internal global %struct.linebuffer zeroinitializer, align 8, !dbg !128
@print_no_line_fmt = internal unnamed_addr global i8* null, align 8, !dbg !277
@line_no = internal unnamed_addr global i64 0, align 8, !dbg !140
@current_type = internal unnamed_addr global i8* null, align 8, !dbg !81
@current_regex = internal unnamed_addr global %struct.re_pattern_buffer* null, align 8, !dbg !279
@optind = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !307
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.40 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.41 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !148
@.str.42 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.64 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.72 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.73 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.75 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"header-numbering\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"body-numbering\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"footer-numbering\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"starting-line-number\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"line-increment\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"no-renumber\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"join-blank-lines\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"number-separator\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"number-width\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"number-format\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"section-delimiter\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.90 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@DEFAULT_SECTION_DELIMITERS = internal global [9 x i8] c"\\:\00\00\00\00\00\00\00", align 1, !dbg !266
@.str.94 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@line_no_overflow = internal unnamed_addr global i1 false, align 1, !dbg !308
@proc_text.blank_lines = internal unnamed_addr global i64 0, align 8, !dbg !284
@.str.95 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"line number overflow\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), align 8, !dbg !309
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !314
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !319
@.str.47 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.48 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.49 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.50 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !321
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !357
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !327
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !353
@.str.1.57 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.59 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.58 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !355
@.str.4.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.53 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.54 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !360
@.str.98 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.99 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !366
@.str.102 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.103 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.104 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.105 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.106 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.107 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.108 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.109 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.110 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.111 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.104, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.105, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.106, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.109, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.111, i32 0, i32 0), i8* null], align 8, !dbg !402
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !414
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !430
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !457
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !464
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !432
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !466
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !420
@.str.10.114 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.112 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !434
@.str.122 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.123 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.124 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.125 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.126 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.127 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.128 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.129 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.130 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.131 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.132 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.133 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.134 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.135 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.136 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.137 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.138 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.143 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.144 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.145 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.146 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.147 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.148 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.149 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !472
@exit_failure = dso_local global i32 1, align 4, !dbg !480
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.178 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !486
@.str.183 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !598 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !602, metadata !DIExpression()), !dbg !603
  %3 = icmp eq i32 %0, 0, !dbg !604
  br i1 %3, label %9, label %4, !dbg !606

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !607, !tbaa !609
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !607
  %7 = load i8*, i8** @program_name, align 8, !dbg !607, !tbaa !609
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !607
  br label %78, !dbg !607

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !613
  %11 = load i8*, i8** @program_name, align 8, !dbg !613, !tbaa !609
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !613
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !615
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !615, !tbaa !609
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !615
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i64 0, i64 0), i32 noundef 5) #34, !dbg !616
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !609
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #34, !dbg !616
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.41, i64 0, i64 0), i32 noundef 5) #34, !dbg !620
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !609
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #34, !dbg !620
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !623
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !623
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !624
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !624
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !625
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !625
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !626
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !626
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #34, !dbg !627
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !627
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #34, !dbg !628
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !628
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #34, !dbg !629
  tail call fastcc void @oputs_(i8* noundef %28), !dbg !629
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #34, !dbg !630
  tail call fastcc void @oputs_(i8* noundef %29), !dbg !630
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #34, !dbg !631
  tail call fastcc void @oputs_(i8* noundef %30), !dbg !631
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #34, !dbg !632
  tail call fastcc void @oputs_(i8* noundef %31), !dbg !632
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #34, !dbg !633
  tail call fastcc void @oputs_(i8* noundef %32), !dbg !633
  %33 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #34, !dbg !634
  tail call fastcc void @oputs_(i8* noundef %33), !dbg !634
  %34 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #34, !dbg !635
  tail call fastcc void @oputs_(i8* noundef %34), !dbg !635
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([323 x i8], [323 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #34, !dbg !636
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !609
  %37 = tail call i32 @fputs_unlocked(i8* noundef %35, %struct._IO_FILE* noundef %36), !dbg !636
  %38 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([202 x i8], [202 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #34, !dbg !637
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !609
  %40 = tail call i32 @fputs_unlocked(i8* noundef %38, %struct._IO_FILE* noundef %39), !dbg !637
  %41 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([147 x i8], [147 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #34, !dbg !638
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !609
  %43 = tail call i32 @fputs_unlocked(i8* noundef %41, %struct._IO_FILE* noundef %42), !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !639, metadata !DIExpression()) #34, !dbg !656
  %44 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !658
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %44) #34, !dbg !658
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !644, metadata !DIExpression()) #34, !dbg !659
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %44, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !659
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !651, metadata !DIExpression()) #34, !dbg !656
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !652, metadata !DIExpression()) #34, !dbg !656
  %45 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !660
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !652, metadata !DIExpression()) #34, !dbg !656
  br label %46, !dbg !661

46:                                               ; preds = %51, %9
  %47 = phi i8* [ %54, %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), %9 ]
  %48 = phi %struct.infomap* [ %52, %51 ], [ %45, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %48, metadata !652, metadata !DIExpression()) #34, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !669
  call void @llvm.dbg.value(metadata i8* %47, metadata !668, metadata !DIExpression()) #34, !dbg !669
  %49 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %47) #35, !dbg !671
  %50 = icmp eq i32 %49, 0, !dbg !672
  br i1 %50, label %56, label %51, !dbg !661

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 1, !dbg !673
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !652, metadata !DIExpression()) #34, !dbg !656
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 0, !dbg !674
  %54 = load i8*, i8** %53, align 8, !dbg !674, !tbaa !675
  %55 = icmp eq i8* %54, null, !dbg !677
  br i1 %55, label %56, label %46, !dbg !678, !llvm.loop !679

56:                                               ; preds = %51, %46
  %57 = phi %struct.infomap* [ %48, %46 ], [ %52, %51 ]
  %58 = getelementptr inbounds %struct.infomap, %struct.infomap* %57, i64 0, i32 1, !dbg !681
  %59 = load i8*, i8** %58, align 8, !dbg !681, !tbaa !683
  %60 = icmp eq i8* %59, null, !dbg !684
  %61 = select i1 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %59, !dbg !685
  call void @llvm.dbg.value(metadata i8* %61, metadata !651, metadata !DIExpression()) #34, !dbg !656
  tail call void @emit_bug_reporting_address() #34, !dbg !686
  %62 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !687
  call void @llvm.dbg.value(metadata i8* %62, metadata !654, metadata !DIExpression()) #34, !dbg !656
  %63 = icmp eq i8* %62, null, !dbg !688
  br i1 %63, label %71, label %64, !dbg !690

64:                                               ; preds = %56
  %65 = tail call i32 @strncmp(i8* noundef nonnull %62, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i64 noundef 3) #35, !dbg !691
  %66 = icmp eq i32 %65, 0, !dbg !691
  br i1 %66, label %71, label %67, !dbg !692

67:                                               ; preds = %64
  %68 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.73, i64 0, i64 0), i32 noundef 5) #34, !dbg !693
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !609
  %70 = tail call i32 @fputs_unlocked(i8* noundef %68, %struct._IO_FILE* noundef %69) #34, !dbg !693
  br label %71, !dbg !695

71:                                               ; preds = %56, %64, %67
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !696
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), metadata !668, metadata !DIExpression()) #34, !dbg !696
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !655, metadata !DIExpression()) #34, !dbg !656
  %72 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i32 noundef 5) #34, !dbg !698
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %72, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !698
  %74 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5) #34, !dbg !699
  %75 = icmp eq i8* %61, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), !dbg !699
  %76 = select i1 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), !dbg !699
  %77 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %74, i8* noundef %61, i8* noundef %76) #34, !dbg !699
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %44) #34, !dbg !700
  br label %78

78:                                               ; preds = %71, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !701
  unreachable, !dbg !701
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !702 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !706 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !150 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !155, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i8* %0, metadata !156, metadata !DIExpression()), !dbg !711
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !712, !tbaa !713
  %3 = icmp eq i32 %2, -1, !dbg !715
  br i1 %3, label %4, label %16, !dbg !716

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #34, !dbg !717
  call void @llvm.dbg.value(metadata i8* %5, metadata !157, metadata !DIExpression()), !dbg !718
  %6 = icmp eq i8* %5, null, !dbg !719
  br i1 %6, label %14, label %7, !dbg !720

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !721, !tbaa !722
  %9 = icmp eq i8 %8, 0, !dbg !721
  br i1 %9, label %14, label %10, !dbg !723

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !662, metadata !DIExpression()) #34, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), metadata !668, metadata !DIExpression()) #34, !dbg !724
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #35, !dbg !726
  %12 = icmp eq i32 %11, 0, !dbg !727
  %13 = zext i1 %12 to i32, !dbg !723
  br label %14, !dbg !723

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !728, !tbaa !713
  br label %16, !dbg !729

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !730
  %18 = icmp eq i32 %17, 0, !dbg !730
  br i1 %18, label %22, label %19, !dbg !732

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !609
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !733
  br label %121, !dbg !735

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !160, metadata !DIExpression()), !dbg !711
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #35, !dbg !736
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !737
  call void @llvm.dbg.value(metadata i8* %24, metadata !161, metadata !DIExpression()), !dbg !711
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !738
  call void @llvm.dbg.value(metadata i8* %25, metadata !162, metadata !DIExpression()), !dbg !711
  %26 = icmp eq i8* %25, null, !dbg !739
  br i1 %26, label %53, label %27, !dbg !740

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !741
  br i1 %28, label %53, label %29, !dbg !742

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !163, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i64 0, metadata !167, metadata !DIExpression()), !dbg !743
  %30 = icmp ult i8* %24, %25, !dbg !744
  br i1 %30, label %31, label %53, !dbg !745

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !711
  %33 = load i16*, i16** %32, align 8, !tbaa !609
  br label %34, !dbg !745

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !163, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i64 %36, metadata !167, metadata !DIExpression()), !dbg !743
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !746
  call void @llvm.dbg.value(metadata i8* %37, metadata !163, metadata !DIExpression()), !dbg !743
  %38 = load i8, i8* %35, align 1, !dbg !746, !tbaa !722
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !746
  %41 = load i16, i16* %40, align 2, !dbg !746, !tbaa !747
  %42 = lshr i16 %41, 13, !dbg !749
  %43 = and i16 %42, 1, !dbg !749
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !750
  call void @llvm.dbg.value(metadata i64 %45, metadata !167, metadata !DIExpression()), !dbg !743
  %46 = icmp ult i8* %37, %25, !dbg !744
  %47 = icmp ult i64 %45, 2, !dbg !751
  %48 = select i1 %46, i1 %47, i1 false, !dbg !751
  br i1 %48, label %34, label %49, !dbg !745, !llvm.loop !752

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !753
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !755
  %52 = xor i1 %50, true, !dbg !755
  br label %53, !dbg !755

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !711
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !160, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i8* %54, metadata !162, metadata !DIExpression()), !dbg !711
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)) #35, !dbg !756
  call void @llvm.dbg.value(metadata i64 %56, metadata !168, metadata !DIExpression()), !dbg !711
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !757
  call void @llvm.dbg.value(metadata i8* %57, metadata !169, metadata !DIExpression()), !dbg !711
  br label %58, !dbg !758

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !711
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !160, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i8* %59, metadata !169, metadata !DIExpression()), !dbg !711
  %61 = load i8, i8* %59, align 1, !dbg !759, !tbaa !722
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !760

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !761
  %64 = load i8, i8* %63, align 1, !dbg !764, !tbaa !722
  %65 = icmp ne i8 %64, 45, !dbg !765
  %66 = select i1 %65, i1 %60, i1 false, !dbg !766
  br label %67, !dbg !766

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !160, metadata !DIExpression()), !dbg !711
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !767
  %70 = load i16*, i16** %69, align 8, !dbg !767, !tbaa !609
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !767
  %73 = load i16, i16* %72, align 2, !dbg !767, !tbaa !747
  %74 = and i16 %73, 8192, !dbg !767
  %75 = icmp eq i16 %74, 0, !dbg !767
  br i1 %75, label %89, label %76, !dbg !769

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !770
  br i1 %77, label %91, label %78, !dbg !773

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !774
  %80 = load i8, i8* %79, align 1, !dbg !774, !tbaa !722
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !774
  %83 = load i16, i16* %82, align 2, !dbg !774, !tbaa !747
  %84 = and i16 %83, 8192, !dbg !774
  %85 = icmp eq i16 %84, 0, !dbg !774
  br i1 %85, label %86, label %91, !dbg !775

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !776
  br i1 %88, label %89, label %91, !dbg !776

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !778
  call void @llvm.dbg.value(metadata i8* %90, metadata !169, metadata !DIExpression()), !dbg !711
  br label %58, !dbg !758, !llvm.loop !779

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !781
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !781, !tbaa !609
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !781
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !782
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), metadata !668, metadata !DIExpression()) #34, !dbg !782
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !784
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !786
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !788
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !790
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !792
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !794
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !796
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !798
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #34, !dbg !800
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !227, metadata !DIExpression()), !dbg !711
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i64 noundef 6) #35, !dbg !802
  %96 = icmp eq i32 %95, 0, !dbg !802
  br i1 %96, label %100, label %97, !dbg !804

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), i64 noundef 9) #35, !dbg !805
  %99 = icmp eq i32 %98, 0, !dbg !805
  br i1 %99, label %100, label %103, !dbg !806

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !807
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !807
  br label %106, !dbg !809

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !810
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !810
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !812, !tbaa !609
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !812
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !813, !tbaa !609
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !813
  %111 = ptrtoint i8* %59 to i64, !dbg !814
  %112 = sub i64 %111, %92, !dbg !814
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !814, !tbaa !609
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !814
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !609
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !815
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !816, !tbaa !609
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !816
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !817, !tbaa !609
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !817
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !818
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !819 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !823 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !827 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !833 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !838, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8** %1, metadata !839, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8 1, metadata !842, metadata !DIExpression()), !dbg !850
  %5 = load i8*, i8** %1, align 8, !dbg !851, !tbaa !609
  tail call void @set_program_name(i8* noundef %5) #34, !dbg !852
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !853
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #34, !dbg !854
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !855
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !856
  %10 = bitcast %struct.__mbstate_t* %3 to i8*
  %11 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %3, i64 0, i32 0
  %12 = bitcast i32* %4 to i8*
  br label %13, !dbg !857

13:                                               ; preds = %16, %2
  %14 = phi i1 [ true, %2 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !842, metadata !DIExpression()), !dbg !850
  %15 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #34, !dbg !858
  call void @llvm.dbg.value(metadata i32 %15, metadata !840, metadata !DIExpression()), !dbg !850
  switch i32 %15, label %16 [
    i32 -1, label %135
    i32 104, label %18
    i32 98, label %24
    i32 102, label %30
    i32 118, label %36
    i32 105, label %40
    i32 112, label %44
    i32 108, label %45
    i32 115, label %49
    i32 119, label %51
    i32 110, label %56
    i32 100, label %73
    i32 -2, label %129
    i32 -3, label %130
  ], !dbg !857

16:                                               ; preds = %13, %115, %120, %128, %125, %60, %68, %69, %64, %30, %32, %24, %26, %18, %20, %51, %49, %45, %44, %40, %36
  %17 = phi i1 [ %14, %125 ], [ %14, %128 ], [ %14, %60 ], [ %14, %64 ], [ %14, %68 ], [ false, %69 ], [ %14, %51 ], [ %14, %49 ], [ %14, %45 ], [ %14, %44 ], [ %14, %40 ], [ %14, %36 ], [ %14, %30 ], [ false, %32 ], [ %14, %24 ], [ false, %26 ], [ %14, %18 ], [ false, %20 ], [ %14, %120 ], [ %14, %115 ], [ false, %13 ]
  br label %13, !dbg !850, !llvm.loop !859

18:                                               ; preds = %13
  %19 = call fastcc i1 @build_type_arg(i8** noundef nonnull @header_type, %struct.re_pattern_buffer* noundef nonnull @header_regex, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @header_fastmap, i64 0, i64 0)), !dbg !861
  br i1 %19, label %16, label %20, !dbg !863

20:                                               ; preds = %18
  %21 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i32 noundef 5) #34, !dbg !864
  %22 = load i8*, i8** @optarg, align 8, !dbg !864, !tbaa !609
  %23 = call i8* @quote(i8* noundef %22) #34, !dbg !864
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %21, i8* noundef %23) #34, !dbg !864
  call void @llvm.dbg.value(metadata i8 0, metadata !842, metadata !DIExpression()), !dbg !850
  br label %16, !dbg !866

24:                                               ; preds = %13
  %25 = call fastcc i1 @build_type_arg(i8** noundef nonnull @body_type, %struct.re_pattern_buffer* noundef nonnull @body_regex, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @body_fastmap, i64 0, i64 0)), !dbg !867
  br i1 %25, label %16, label %26, !dbg !869

26:                                               ; preds = %24
  %27 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #34, !dbg !870
  %28 = load i8*, i8** @optarg, align 8, !dbg !870, !tbaa !609
  %29 = call i8* @quote(i8* noundef %28) #34, !dbg !870
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %27, i8* noundef %29) #34, !dbg !870
  call void @llvm.dbg.value(metadata i8 0, metadata !842, metadata !DIExpression()), !dbg !850
  br label %16, !dbg !872

30:                                               ; preds = %13
  %31 = call fastcc i1 @build_type_arg(i8** noundef nonnull @footer_type, %struct.re_pattern_buffer* noundef nonnull @footer_regex, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @footer_fastmap, i64 0, i64 0)), !dbg !873
  br i1 %31, label %16, label %32, !dbg !875

32:                                               ; preds = %30
  %33 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #34, !dbg !876
  %34 = load i8*, i8** @optarg, align 8, !dbg !876, !tbaa !609
  %35 = call i8* @quote(i8* noundef %34) #34, !dbg !876
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %33, i8* noundef %35) #34, !dbg !876
  call void @llvm.dbg.value(metadata i8 0, metadata !842, metadata !DIExpression()), !dbg !850
  br label %16, !dbg !878

36:                                               ; preds = %13
  %37 = load i8*, i8** @optarg, align 8, !dbg !879, !tbaa !609
  %38 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #34, !dbg !880
  %39 = call i64 @xdectoimax(i8* noundef %37, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* noundef %38, i32 noundef 0) #34, !dbg !881
  store i64 %39, i64* @starting_line_number, align 8, !dbg !882, !tbaa !883
  br label %16, !dbg !885

40:                                               ; preds = %13
  %41 = load i8*, i8** @optarg, align 8, !dbg !886, !tbaa !609
  %42 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #34, !dbg !887
  %43 = call i64 @xdectoimax(i8* noundef %41, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* noundef %42, i32 noundef 0) #34, !dbg !888
  store i64 %43, i64* @page_incr, align 8, !dbg !889, !tbaa !883
  br label %16, !dbg !890

44:                                               ; preds = %13
  store i1 true, i1* @reset_numbers, align 1, !dbg !891
  br label %16, !dbg !892

45:                                               ; preds = %13
  %46 = load i8*, i8** @optarg, align 8, !dbg !893, !tbaa !609
  %47 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #34, !dbg !894
  %48 = call i64 @xnumtoimax(i8* noundef %46, i32 noundef 10, i64 noundef 1, i64 noundef 9223372036854775807, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* noundef %47, i32 noundef 0, i32 noundef 6) #34, !dbg !895
  store i64 %48, i64* @blank_join, align 8, !dbg !896, !tbaa !883
  br label %16, !dbg !897

49:                                               ; preds = %13
  %50 = load i8*, i8** @optarg, align 8, !dbg !898, !tbaa !609
  store i8* %50, i8** @separator_str, align 8, !dbg !899, !tbaa !609
  br label %16, !dbg !900

51:                                               ; preds = %13
  %52 = load i8*, i8** @optarg, align 8, !dbg !901, !tbaa !609
  %53 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #34, !dbg !902
  %54 = call i64 @xnumtoimax(i8* noundef %52, i32 noundef 10, i64 noundef 1, i64 noundef 2147483647, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* noundef %53, i32 noundef 0, i32 noundef 4) #34, !dbg !903
  %55 = trunc i64 %54 to i32, !dbg !903
  store i32 %55, i32* @lineno_width, align 4, !dbg !904, !tbaa !713
  br label %16, !dbg !905

56:                                               ; preds = %13
  %57 = load i8*, i8** @optarg, align 8, !dbg !906, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %57, metadata !662, metadata !DIExpression()) #34, !dbg !908
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), metadata !668, metadata !DIExpression()) #34, !dbg !908
  %58 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)) #35, !dbg !910
  %59 = icmp eq i32 %58, 0, !dbg !911
  br i1 %59, label %60, label %61, !dbg !912

60:                                               ; preds = %56
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FORMAT_LEFT, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !913, !tbaa !609
  br label %16, !dbg !914

61:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %57, metadata !662, metadata !DIExpression()) #34, !dbg !915
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), metadata !668, metadata !DIExpression()) #34, !dbg !915
  %62 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #35, !dbg !918
  %63 = icmp eq i32 %62, 0, !dbg !919
  br i1 %63, label %64, label %65, !dbg !920

64:                                               ; preds = %61
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @FORMAT_RIGHT_NOLZ, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !921, !tbaa !609
  br label %16, !dbg !922

65:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i8* %57, metadata !662, metadata !DIExpression()) #34, !dbg !923
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), metadata !668, metadata !DIExpression()) #34, !dbg !923
  %66 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)) #35, !dbg !926
  %67 = icmp eq i32 %66, 0, !dbg !927
  br i1 %67, label %68, label %69, !dbg !928

68:                                               ; preds = %65
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FORMAT_RIGHT_LZ, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !929, !tbaa !609
  br label %16, !dbg !930

69:                                               ; preds = %65
  %70 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0), i32 noundef 5) #34, !dbg !931
  %71 = load i8*, i8** @optarg, align 8, !dbg !931, !tbaa !609
  %72 = call i8* @quote(i8* noundef %71) #34, !dbg !931
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %70, i8* noundef %72) #34, !dbg !931
  call void @llvm.dbg.value(metadata i8 0, metadata !842, metadata !DIExpression()), !dbg !850
  br label %16

73:                                               ; preds = %13
  %74 = load i8*, i8** @optarg, align 8, !dbg !933, !tbaa !609
  %75 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %74) #35, !dbg !934
  call void @llvm.dbg.value(metadata i64 %75, metadata !841, metadata !DIExpression()), !dbg !850
  %76 = call i64 @__ctype_get_mb_cur_max() #34, !dbg !935
  %77 = icmp ugt i64 %76, 1, !dbg !936
  br i1 %77, label %78, label %122, !dbg !937

78:                                               ; preds = %73
  %79 = load i8*, i8** @optarg, align 8, !dbg !938, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %79, metadata !843, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata !DIArgList(i8* %79, i64 %75), metadata !848, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !849, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8* %79, metadata !843, metadata !DIExpression()), !dbg !939
  %80 = icmp sgt i64 %75, 0, !dbg !940
  br i1 %80, label %81, label %120, !dbg !943

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, i8* %79, i64 %75, !dbg !944
  call void @llvm.dbg.value(metadata i8* %82, metadata !848, metadata !DIExpression()), !dbg !939
  %83 = ptrtoint i8* %82 to i64
  call void @llvm.dbg.value(metadata i8* %79, metadata !843, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 undef, metadata !849, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8* %79, metadata !945, metadata !DIExpression()) #34, !dbg !971
  call void @llvm.dbg.value(metadata !DIArgList(i8* %79, i64 %75), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !971
  %84 = load i8, i8* %79, align 1, !dbg !973, !tbaa !722
  call void @llvm.dbg.value(metadata i8 %84, metadata !957, metadata !DIExpression()) #34, !dbg !971
  call void @llvm.dbg.value(metadata i8 %84, metadata !974, metadata !DIExpression()) #34, !dbg !979
  %85 = icmp sgt i8 %84, -1, !dbg !982
  br i1 %85, label %96, label %86, !dbg !983

86:                                               ; preds = %81
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !984
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %3, metadata !958, metadata !DIExpression()) #34, !dbg !985
  store i32 0, i32* %11, align 4, !dbg !986, !tbaa !987
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #34, !dbg !989
  call void @llvm.dbg.value(metadata i32* %4, metadata !969, metadata !DIExpression(DW_OP_deref)) #34, !dbg !971
  %87 = call i64 @mbrtoc32(i32* noundef nonnull %4, i8* noundef nonnull %79, i64 noundef %75, %struct.__mbstate_t* noundef nonnull %3) #34, !dbg !990
  call void @llvm.dbg.value(metadata i64 %87, metadata !970, metadata !DIExpression()) #34, !dbg !971
  %88 = icmp slt i64 %87, 0, !dbg !991
  br i1 %88, label %94, label %89, !dbg !993, !prof !994

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4, !dbg !995, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %90, metadata !969, metadata !DIExpression()) #34, !dbg !971
  call void @llvm.dbg.value(metadata i32 %90, metadata !996, metadata !DIExpression()) #34, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %87, metadata !1001, metadata !DIExpression()) #34, !dbg !1002
  %91 = icmp ne i64 %87, 0, !dbg !1004
  call void @llvm.assume(i1 %91) #34, !dbg !1004
  %92 = icmp ult i64 %87, 5, !dbg !1005
  call void @llvm.assume(i1 %92) #34, !dbg !1005
  %93 = icmp ult i32 %90, 1114112, !dbg !1006
  call void @llvm.assume(i1 %93) #34, !dbg !1006
  br label %94, !dbg !1007

94:                                               ; preds = %86, %89
  %95 = phi i64 [ %87, %89 ], [ 1, %86 ], !dbg !971
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #34, !dbg !1008
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1008
  br label %96

96:                                               ; preds = %81, %94
  %97 = phi i64 [ %95, %94 ], [ 1, %81 ], !dbg !971
  %98 = getelementptr inbounds i8, i8* %79, i64 %97, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %98, metadata !843, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 undef, metadata !849, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !939
  %99 = icmp slt i64 %97, %75, !dbg !940
  br i1 %99, label %100, label %115, !dbg !943, !llvm.loop !1010

100:                                              ; preds = %96
  call void @llvm.dbg.value(metadata i8* %98, metadata !843, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 undef, metadata !849, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8* %98, metadata !945, metadata !DIExpression()) #34, !dbg !971
  call void @llvm.dbg.value(metadata !DIArgList(i8* %79, i64 %75), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !971
  %101 = load i8, i8* %98, align 1, !dbg !973, !tbaa !722
  call void @llvm.dbg.value(metadata i8 %101, metadata !957, metadata !DIExpression()) #34, !dbg !971
  call void @llvm.dbg.value(metadata i8 %101, metadata !974, metadata !DIExpression()) #34, !dbg !979
  %102 = icmp sgt i8 %101, -1, !dbg !982
  br i1 %102, label %114, label %103, !dbg !983

103:                                              ; preds = %100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !984
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %3, metadata !958, metadata !DIExpression()) #34, !dbg !985
  store i32 0, i32* %11, align 4, !dbg !986, !tbaa !987
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #34, !dbg !989
  %104 = ptrtoint i8* %98 to i64, !dbg !1012
  %105 = sub i64 %83, %104, !dbg !1012
  call void @llvm.dbg.value(metadata i32* %4, metadata !969, metadata !DIExpression(DW_OP_deref)) #34, !dbg !971
  %106 = call i64 @mbrtoc32(i32* noundef nonnull %4, i8* noundef nonnull %98, i64 noundef %105, %struct.__mbstate_t* noundef nonnull %3) #34, !dbg !990
  call void @llvm.dbg.value(metadata i64 %106, metadata !970, metadata !DIExpression()) #34, !dbg !971
  %107 = icmp slt i64 %106, 0, !dbg !991
  br i1 %107, label %113, label %108, !dbg !993, !prof !994

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4, !dbg !995, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %109, metadata !969, metadata !DIExpression()) #34, !dbg !971
  call void @llvm.dbg.value(metadata i32 %109, metadata !996, metadata !DIExpression()) #34, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %106, metadata !1001, metadata !DIExpression()) #34, !dbg !1002
  %110 = icmp ne i64 %106, 0, !dbg !1004
  call void @llvm.assume(i1 %110) #34, !dbg !1004
  %111 = icmp ult i64 %106, 5, !dbg !1005
  call void @llvm.assume(i1 %111) #34, !dbg !1005
  %112 = icmp ult i32 %109, 1114112, !dbg !1006
  call void @llvm.assume(i1 %112) #34, !dbg !1006
  br label %113, !dbg !1007

113:                                              ; preds = %108, %103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #34, !dbg !1008
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1008
  br label %114

114:                                              ; preds = %100, %113
  br i1 %99, label %120, label %115, !dbg !1013

115:                                              ; preds = %96, %114
  %116 = load i8*, i8** @section_del, align 8, !dbg !1014, !tbaa !609
  %117 = load i8*, i8** @optarg, align 8, !dbg !1016, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %116, metadata !1017, metadata !DIExpression()) #34, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %117, metadata !1024, metadata !DIExpression()) #34, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %75, metadata !1025, metadata !DIExpression()) #34, !dbg !1026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %116, i8* noundef nonnull align 1 %117, i64 noundef %75, i1 noundef false) #34, !dbg !1028
  %118 = getelementptr inbounds i8, i8* %116, i64 %75, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %118, metadata !1029, metadata !DIExpression()) #34, !dbg !1034
  call void @llvm.dbg.value(metadata !618, metadata !1032, metadata !DIExpression()) #34, !dbg !1034
  call void @llvm.dbg.value(metadata i64 2, metadata !1033, metadata !DIExpression()) #34, !dbg !1034
  %119 = bitcast i8* %118 to i16*, !dbg !1036
  store i16 58, i16* %119, align 1, !dbg !1036
  br label %16, !dbg !1037

120:                                              ; preds = %78, %114
  %121 = load i8*, i8** @optarg, align 8, !dbg !1038, !tbaa !609
  store i8* %121, i8** @section_del, align 8, !dbg !1039, !tbaa !609
  br label %16

122:                                              ; preds = %73
  %123 = icmp eq i64 %75, 1, !dbg !1040
  %124 = load i8*, i8** @optarg, align 8, !dbg !1043, !tbaa !609
  br i1 %123, label %125, label %128, !dbg !1044

125:                                              ; preds = %122
  %126 = load i8, i8* %124, align 1, !dbg !1045, !tbaa !722
  %127 = load i8*, i8** @section_del, align 8, !dbg !1046, !tbaa !609
  store i8 %126, i8* %127, align 1, !dbg !1047, !tbaa !722
  br label %16, !dbg !1048

128:                                              ; preds = %122
  store i8* %124, i8** @section_del, align 8, !dbg !1049, !tbaa !609
  br label %16

129:                                              ; preds = %13
  call void @usage(i32 noundef 0) #38, !dbg !1050
  unreachable, !dbg !1050

130:                                              ; preds = %13
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1051, !tbaa !609
  %132 = load i8*, i8** @Version, align 8, !dbg !1051, !tbaa !609
  %133 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0)) #34, !dbg !1051
  %134 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0)) #34, !dbg !1051
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* noundef %132, i8* noundef %133, i8* noundef %134, i8* noundef null) #34, !dbg !1051
  call void @exit(i32 noundef 0) #36, !dbg !1051
  unreachable, !dbg !1051

135:                                              ; preds = %13
  br i1 %14, label %137, label %136, !dbg !1052

136:                                              ; preds = %135
  call void @usage(i32 noundef 1) #38, !dbg !1053
  unreachable, !dbg !1053

137:                                              ; preds = %135
  %138 = load i8*, i8** @section_del, align 8, !dbg !1055, !tbaa !609
  %139 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %138) #35, !dbg !1056
  call void @llvm.dbg.value(metadata i64 %139, metadata !841, metadata !DIExpression()), !dbg !850
  store i64 %139, i64* @section_del_len, align 8, !dbg !1057, !tbaa !883
  %140 = mul i64 %139, 3, !dbg !1058
  store i64 %140, i64* @header_del_len, align 8, !dbg !1059, !tbaa !883
  %141 = add i64 %140, 1, !dbg !1060
  %142 = call noalias nonnull i8* @xmalloc(i64 noundef %141) #39, !dbg !1061
  store i8* %142, i8** @header_del, align 8, !dbg !1062, !tbaa !609
  %143 = load i8*, i8** @section_del, align 8, !dbg !1063, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %142, metadata !1064, metadata !DIExpression()) #34, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %143, metadata !1070, metadata !DIExpression()) #34, !dbg !1071
  %144 = call i8* @stpcpy(i8* nonnull %142, i8* %143), !dbg !1073
  call void @llvm.dbg.value(metadata i8* %144, metadata !1064, metadata !DIExpression()) #34, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %143, metadata !1070, metadata !DIExpression()) #34, !dbg !1074
  %145 = call i8* @stpcpy(i8* %144, i8* %143), !dbg !1076
  call void @llvm.dbg.value(metadata i8* %145, metadata !1064, metadata !DIExpression()) #34, !dbg !1077
  call void @llvm.dbg.value(metadata i8* %143, metadata !1070, metadata !DIExpression()) #34, !dbg !1077
  %146 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %145, i8* noundef nonnull dereferenceable(1) %143), !dbg !1079
  %147 = shl i64 %139, 1, !dbg !1080
  store i64 %147, i64* @body_del_len, align 8, !dbg !1081, !tbaa !883
  %148 = load i8*, i8** @header_del, align 8, !dbg !1082, !tbaa !609
  %149 = getelementptr inbounds i8, i8* %148, i64 %139, !dbg !1083
  store i8* %149, i8** @body_del, align 8, !dbg !1084, !tbaa !609
  store i64 %139, i64* @footer_del_len, align 8, !dbg !1085, !tbaa !883
  %150 = getelementptr inbounds i8, i8* %149, i64 %139, !dbg !1086
  store i8* %150, i8** @footer_del, align 8, !dbg !1087, !tbaa !609
  call void @initbuffer(%struct.linebuffer* noundef nonnull @line_buf) #34, !dbg !1088
  %151 = load i8*, i8** @separator_str, align 8, !dbg !1089, !tbaa !609
  %152 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %151) #35, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %152, metadata !841, metadata !DIExpression()), !dbg !850
  %153 = load i32, i32* @lineno_width, align 4, !dbg !1091, !tbaa !713
  %154 = sext i32 %153 to i64, !dbg !1091
  %155 = add i64 %152, 1, !dbg !1092
  %156 = add i64 %155, %154, !dbg !1093
  %157 = call noalias nonnull i8* @xmalloc(i64 noundef %156) #39, !dbg !1094
  store i8* %157, i8** @print_no_line_fmt, align 8, !dbg !1095, !tbaa !609
  %158 = load i32, i32* @lineno_width, align 4, !dbg !1096, !tbaa !713
  %159 = sext i32 %158 to i64, !dbg !1096
  %160 = add i64 %152, %159, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %157, metadata !1098, metadata !DIExpression()) #34, !dbg !1105
  call void @llvm.dbg.value(metadata i32 32, metadata !1103, metadata !DIExpression()) #34, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %160, metadata !1104, metadata !DIExpression()) #34, !dbg !1105
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %157, i8 noundef 32, i64 noundef %160, i1 noundef false) #34, !dbg !1107
  %161 = getelementptr inbounds i8, i8* %157, i64 %160, !dbg !1108
  store i8 0, i8* %161, align 1, !dbg !1109, !tbaa !722
  %162 = load i64, i64* @starting_line_number, align 8, !dbg !1110, !tbaa !883
  store i64 %162, i64* @line_no, align 8, !dbg !1111, !tbaa !883
  %163 = load i8*, i8** @body_type, align 8, !dbg !1112, !tbaa !609
  store i8* %163, i8** @current_type, align 8, !dbg !1113, !tbaa !609
  store %struct.re_pattern_buffer* @body_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1114, !tbaa !609
  %164 = load i32, i32* @optind, align 4, !dbg !1115, !tbaa !713
  %165 = icmp eq i32 %164, %0, !dbg !1117
  br i1 %165, label %168, label %166, !dbg !1118

166:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i8 poison, metadata !842, metadata !DIExpression()), !dbg !850
  %167 = icmp slt i32 %164, %0, !dbg !1119
  br i1 %167, label %170, label %181, !dbg !1122

168:                                              ; preds = %137
  %169 = call fastcc i1 @nl_file(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)), !dbg !1123
  call void @llvm.dbg.value(metadata i1 %169, metadata !842, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !850
  br label %181, !dbg !1124

170:                                              ; preds = %166, %170
  %171 = phi i32 [ %179, %170 ], [ %164, %166 ]
  %172 = phi i1 [ %177, %170 ], [ true, %166 ]
  %173 = sext i32 %171 to i64, !dbg !1125
  %174 = getelementptr inbounds i8*, i8** %1, i64 %173, !dbg !1125
  %175 = load i8*, i8** %174, align 8, !dbg !1125, !tbaa !609
  %176 = call fastcc i1 @nl_file(i8* noundef %175), !dbg !1126
  %177 = and i1 %172, %176, !dbg !1127
  call void @llvm.dbg.value(metadata i1 %177, metadata !842, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !850
  %178 = load i32, i32* @optind, align 4, !dbg !1128, !tbaa !713
  %179 = add nsw i32 %178, 1, !dbg !1128
  store i32 %179, i32* @optind, align 4, !dbg !1128, !tbaa !713
  call void @llvm.dbg.value(metadata i8 poison, metadata !842, metadata !DIExpression()), !dbg !850
  %180 = icmp slt i32 %179, %0, !dbg !1119
  br i1 %180, label %170, label %181, !dbg !1122, !llvm.loop !1129

181:                                              ; preds = %170, %166, %168
  %182 = phi i1 [ %169, %168 ], [ true, %166 ], [ %177, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !842, metadata !DIExpression()), !dbg !850
  %183 = load i1, i1* @have_read_stdin, align 1, !dbg !1131
  br i1 %183, label %184, label %191, !dbg !1133

184:                                              ; preds = %181
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1134, !tbaa !609
  %186 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %185) #34, !dbg !1135
  %187 = icmp eq i32 %186, -1, !dbg !1136
  br i1 %187, label %188, label %191, !dbg !1137

188:                                              ; preds = %184
  %189 = tail call i32* @__errno_location() #37, !dbg !1138
  %190 = load i32, i32* %189, align 4, !dbg !1138, !tbaa !713
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %190, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #34, !dbg !1138
  unreachable, !dbg !1138

191:                                              ; preds = %184, %181
  %192 = xor i1 %182, true, !dbg !1139
  %193 = zext i1 %192 to i32, !dbg !1139
  ret i32 %193, !dbg !1140
}

; Function Attrs: nounwind
declare !dbg !1141 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1144 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1145 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1148 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i1 @build_type_arg(i8** nocapture noundef writeonly %0, %struct.re_pattern_buffer* noundef %1, i8* noundef %2) unnamed_addr #12 !dbg !1154 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1159, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %1, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8* %2, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 1, metadata !1163, metadata !DIExpression()), !dbg !1164
  %4 = load i8*, i8** @optarg, align 8, !dbg !1165, !tbaa !609
  %5 = load i8, i8* %4, align 1, !dbg !1166, !tbaa !722
  switch i8 %5, label %17 [
    i8 97, label %6
    i8 116, label %6
    i8 110, label %6
    i8 112, label %7
  ], !dbg !1167

6:                                                ; preds = %3, %3, %3
  store i8* %4, i8** %0, align 8, !dbg !1168, !tbaa !609
  br label %17, !dbg !1170

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1171
  store i8* %8, i8** @optarg, align 8, !dbg !1171, !tbaa !609
  store i8* %4, i8** %0, align 8, !dbg !1172, !tbaa !609
  %9 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i64 0, i32 4, !dbg !1173
  %10 = bitcast %struct.re_pattern_buffer* %1 to i8*, !dbg !1174
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !dbg !1175
  store i8* %2, i8** %9, align 8, !dbg !1174, !tbaa !1176
  %11 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i64 0, i32 5, !dbg !1178
  store i8* null, i8** %11, align 8, !dbg !1179, !tbaa !1180
  store i64 710, i64* @re_syntax_options, align 8, !dbg !1181, !tbaa !883
  %12 = load i8*, i8** @optarg, align 8, !dbg !1182, !tbaa !609
  %13 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #35, !dbg !1183
  %14 = tail call i8* @re_compile_pattern(i8* noundef %12, i64 noundef %13, %struct.re_pattern_buffer* noundef %1) #34, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %14, metadata !1162, metadata !DIExpression()), !dbg !1164
  %15 = icmp eq i8* %14, null, !dbg !1185
  br i1 %15, label %17, label %16, !dbg !1187

16:                                               ; preds = %7
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0), i8* noundef nonnull %14) #34, !dbg !1188
  unreachable, !dbg !1188

17:                                               ; preds = %3, %7, %6
  %18 = phi i1 [ true, %7 ], [ true, %6 ], [ false, %3 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1163, metadata !DIExpression()), !dbg !1164
  ret i1 %18, !dbg !1189
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1190 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @stpcpy(i8* noalias writeonly, i8* noalias nocapture readonly) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define internal fastcc i1 @nl_file(i8* noundef %0) unnamed_addr #12 !dbg !1197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %0, metadata !662, metadata !DIExpression()) #34, !dbg !1205
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), metadata !668, metadata !DIExpression()) #34, !dbg !1205
  %2 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #35, !dbg !1208
  %3 = icmp eq i32 %2, 0, !dbg !1209
  br i1 %3, label %4, label %6, !dbg !1210

4:                                                ; preds = %1
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1211
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1213, !tbaa !609, !nonnull !618
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %5, metadata !1202, metadata !DIExpression()), !dbg !1204
  br label %12, !dbg !1214

6:                                                ; preds = %1
  %7 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0)) #34, !dbg !1215
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1202, metadata !DIExpression()), !dbg !1204
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !1217
  br i1 %8, label %9, label %12, !dbg !1219

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #37, !dbg !1220
  %11 = load i32, i32* %10, align 4, !dbg !1220, !tbaa !713
  br label %243, !dbg !1222

12:                                               ; preds = %6, %4
  %13 = phi %struct._IO_FILE* [ %5, %4 ], [ %7, %6 ], !dbg !1223
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %13, metadata !1202, metadata !DIExpression()), !dbg !1204
  tail call void @fadvise(%struct._IO_FILE* noundef nonnull %13, i32 noundef 2) #34, !dbg !1224
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %13, metadata !1225, metadata !DIExpression()) #34, !dbg !1230
  br label %14, !dbg !1232

14:                                               ; preds = %208, %12
  %15 = tail call %struct.linebuffer* @readlinebuffer(%struct.linebuffer* noundef nonnull @line_buf, %struct._IO_FILE* noundef %13) #34, !dbg !1233
  %16 = icmp eq %struct.linebuffer* %15, null, !dbg !1232
  br i1 %16, label %222, label %17, !dbg !1232

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 1), align 8, !dbg !1234, !tbaa !1242
  %19 = add nsw i64 %18, -1, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %19, metadata !1239, metadata !DIExpression()) #34, !dbg !1245
  %20 = load i64, i64* @section_del_len, align 8, !dbg !1246, !tbaa !883
  %21 = icmp ult i64 %19, %20, !dbg !1248
  %22 = load i64, i64* @footer_del_len, align 8
  %23 = icmp ult i64 %22, %20
  %24 = select i1 %21, i1 true, i1 %23, !dbg !1249
  br i1 %24, label %98, label %25, !dbg !1249

25:                                               ; preds = %17
  %26 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1250, !tbaa !1251
  %27 = load i8*, i8** @section_del, align 8, !dbg !1252, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %26, metadata !1253, metadata !DIExpression()) #34, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %27, metadata !1258, metadata !DIExpression()) #34, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %20, metadata !1259, metadata !DIExpression()) #34, !dbg !1260
  %28 = tail call i32 @bcmp(i8* %26, i8* %27, i64 %20) #34, !dbg !1262
  %29 = icmp eq i32 %28, 0, !dbg !1263
  br i1 %29, label %30, label %98, !dbg !1264

30:                                               ; preds = %25
  %31 = load i64, i64* @header_del_len, align 8, !dbg !1265, !tbaa !883
  %32 = icmp eq i64 %19, %31, !dbg !1267
  br i1 %32, label %33, label %37, !dbg !1268

33:                                               ; preds = %30
  %34 = load i8*, i8** @header_del, align 8, !dbg !1269, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %26, metadata !1253, metadata !DIExpression()) #34, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %34, metadata !1258, metadata !DIExpression()) #34, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %31, metadata !1259, metadata !DIExpression()) #34, !dbg !1270
  %35 = tail call i32 @bcmp(i8* %26, i8* %34, i64 %19) #34, !dbg !1272
  %36 = icmp eq i32 %35, 0, !dbg !1273
  br i1 %36, label %50, label %37, !dbg !1274

37:                                               ; preds = %33, %30
  %38 = load i64, i64* @body_del_len, align 8, !dbg !1275, !tbaa !883
  %39 = icmp eq i64 %19, %38, !dbg !1277
  br i1 %39, label %40, label %44, !dbg !1278

40:                                               ; preds = %37
  %41 = load i8*, i8** @body_del, align 8, !dbg !1279, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %26, metadata !1253, metadata !DIExpression()) #34, !dbg !1280
  call void @llvm.dbg.value(metadata i8* %41, metadata !1258, metadata !DIExpression()) #34, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %38, metadata !1259, metadata !DIExpression()) #34, !dbg !1280
  %42 = tail call i32 @bcmp(i8* %26, i8* %41, i64 %19) #34, !dbg !1282
  %43 = icmp eq i32 %42, 0, !dbg !1283
  br i1 %43, label %66, label %44, !dbg !1284

44:                                               ; preds = %40, %37
  %45 = icmp eq i64 %19, %22, !dbg !1285
  br i1 %45, label %46, label %98, !dbg !1287

46:                                               ; preds = %44
  %47 = load i8*, i8** @footer_del, align 8, !dbg !1288, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %26, metadata !1253, metadata !DIExpression()) #34, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %47, metadata !1258, metadata !DIExpression()) #34, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %22, metadata !1259, metadata !DIExpression()) #34, !dbg !1289
  %48 = tail call i32 @bcmp(i8* %26, i8* %47, i64 %19) #34, !dbg !1291
  %49 = icmp eq i32 %48, 0, !dbg !1292
  br i1 %49, label %82, label %98, !dbg !1293

50:                                               ; preds = %33
  %51 = load i8*, i8** @header_type, align 8, !dbg !1294, !tbaa !609
  store i8* %51, i8** @current_type, align 8, !dbg !1298, !tbaa !609
  store %struct.re_pattern_buffer* @header_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1299, !tbaa !609
  %52 = load i1, i1* @reset_numbers, align 1, !dbg !1300
  br i1 %52, label %55, label %53, !dbg !1304

53:                                               ; preds = %50
  %54 = load i64, i64* @starting_line_number, align 8, !dbg !1305, !tbaa !883
  store i64 %54, i64* @line_no, align 8, !dbg !1307, !tbaa !883
  store i1 false, i1* @line_no_overflow, align 1, !dbg !1308
  br label %55, !dbg !1309

55:                                               ; preds = %53, %50
  call void @llvm.dbg.value(metadata i32 10, metadata !1310, metadata !DIExpression()) #34, !dbg !1316
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1318, !tbaa !609
  %57 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 5, !dbg !1318
  %58 = load i8*, i8** %57, align 8, !dbg !1318, !tbaa !1319
  %59 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 6, !dbg !1318
  %60 = load i8*, i8** %59, align 8, !dbg !1318, !tbaa !1321
  %61 = icmp ult i8* %58, %60, !dbg !1318
  br i1 %61, label %64, label %62, !dbg !1318, !prof !1322

62:                                               ; preds = %55
  %63 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %56, i32 noundef 10) #34, !dbg !1318
  br label %208, !dbg !1318

64:                                               ; preds = %55
  %65 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1318
  store i8* %65, i8** %57, align 8, !dbg !1318, !tbaa !1319
  store i8 10, i8* %58, align 1, !dbg !1318, !tbaa !722
  br label %208, !dbg !1318

66:                                               ; preds = %40
  %67 = load i8*, i8** @body_type, align 8, !dbg !1323, !tbaa !609
  store i8* %67, i8** @current_type, align 8, !dbg !1326, !tbaa !609
  store %struct.re_pattern_buffer* @body_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1327, !tbaa !609
  %68 = load i1, i1* @reset_numbers, align 1, !dbg !1328
  br i1 %68, label %71, label %69, !dbg !1330

69:                                               ; preds = %66
  %70 = load i64, i64* @starting_line_number, align 8, !dbg !1331, !tbaa !883
  store i64 %70, i64* @line_no, align 8, !dbg !1332, !tbaa !883
  store i1 false, i1* @line_no_overflow, align 1, !dbg !1333
  br label %71, !dbg !1334

71:                                               ; preds = %69, %66
  call void @llvm.dbg.value(metadata i32 10, metadata !1310, metadata !DIExpression()) #34, !dbg !1335
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1337, !tbaa !609
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5, !dbg !1337
  %74 = load i8*, i8** %73, align 8, !dbg !1337, !tbaa !1319
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6, !dbg !1337
  %76 = load i8*, i8** %75, align 8, !dbg !1337, !tbaa !1321
  %77 = icmp ult i8* %74, %76, !dbg !1337
  br i1 %77, label %80, label %78, !dbg !1337, !prof !1322

78:                                               ; preds = %71
  %79 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %72, i32 noundef 10) #34, !dbg !1337
  br label %208, !dbg !1337

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1337
  store i8* %81, i8** %73, align 8, !dbg !1337, !tbaa !1319
  store i8 10, i8* %74, align 1, !dbg !1337, !tbaa !722
  br label %208, !dbg !1337

82:                                               ; preds = %46
  %83 = load i8*, i8** @footer_type, align 8, !dbg !1338, !tbaa !609
  store i8* %83, i8** @current_type, align 8, !dbg !1341, !tbaa !609
  store %struct.re_pattern_buffer* @footer_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1342, !tbaa !609
  %84 = load i1, i1* @reset_numbers, align 1, !dbg !1343
  br i1 %84, label %87, label %85, !dbg !1345

85:                                               ; preds = %82
  %86 = load i64, i64* @starting_line_number, align 8, !dbg !1346, !tbaa !883
  store i64 %86, i64* @line_no, align 8, !dbg !1347, !tbaa !883
  store i1 false, i1* @line_no_overflow, align 1, !dbg !1348
  br label %87, !dbg !1349

87:                                               ; preds = %85, %82
  call void @llvm.dbg.value(metadata i32 10, metadata !1310, metadata !DIExpression()) #34, !dbg !1350
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1352, !tbaa !609
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 5, !dbg !1352
  %90 = load i8*, i8** %89, align 8, !dbg !1352, !tbaa !1319
  %91 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 6, !dbg !1352
  %92 = load i8*, i8** %91, align 8, !dbg !1352, !tbaa !1321
  %93 = icmp ult i8* %90, %92, !dbg !1352
  br i1 %93, label %96, label %94, !dbg !1352, !prof !1322

94:                                               ; preds = %87
  %95 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %88, i32 noundef 10) #34, !dbg !1352
  br label %208, !dbg !1352

96:                                               ; preds = %87
  %97 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1352
  store i8* %97, i8** %89, align 8, !dbg !1352, !tbaa !1319
  store i8 10, i8* %90, align 1, !dbg !1352, !tbaa !722
  br label %208, !dbg !1352

98:                                               ; preds = %46, %44, %25, %17
  %99 = load i8*, i8** @current_type, align 8, !dbg !1353, !tbaa !609
  %100 = load i8, i8* %99, align 1, !dbg !1355, !tbaa !722
  switch i8 %100, label %203 [
    i8 97, label %101
    i8 116, label %147
    i8 110, label %169
    i8 112, label %173
  ], !dbg !1356

101:                                              ; preds = %98
  %102 = load i64, i64* @blank_join, align 8, !dbg !1357, !tbaa !883
  %103 = icmp sgt i64 %102, 1, !dbg !1360
  br i1 %103, label %104, label %131, !dbg !1361

104:                                              ; preds = %101
  %105 = icmp sgt i64 %18, 1, !dbg !1362
  br i1 %105, label %110, label %106, !dbg !1365

106:                                              ; preds = %104
  %107 = load i64, i64* @proc_text.blank_lines, align 8, !dbg !1366, !tbaa !883
  %108 = add nsw i64 %107, 1, !dbg !1366
  store i64 %108, i64* @proc_text.blank_lines, align 8, !dbg !1366, !tbaa !883
  %109 = icmp eq i64 %108, %102, !dbg !1367
  br i1 %109, label %110, label %127, !dbg !1368

110:                                              ; preds = %106, %104
  %111 = load i1, i1* @line_no_overflow, align 1, !dbg !1369
  br i1 %111, label %112, label %114, !dbg !1374

112:                                              ; preds = %110
  %113 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !1375
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %113) #34, !dbg !1375
  unreachable, !dbg !1375

114:                                              ; preds = %110
  %115 = load i8*, i8** @lineno_format, align 8, !dbg !1376, !tbaa !609
  %116 = load i32, i32* @lineno_width, align 4, !dbg !1376, !tbaa !713
  %117 = load i64, i64* @line_no, align 8, !dbg !1376, !tbaa !883
  %118 = load i8*, i8** @separator_str, align 8, !dbg !1376, !tbaa !609
  %119 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %115, i32 noundef %116, i64 noundef %117, i8* noundef %118) #34, !dbg !1376
  %120 = load i64, i64* @line_no, align 8, !dbg !1377, !tbaa !883
  %121 = load i64, i64* @page_incr, align 8, !dbg !1377, !tbaa !883
  %122 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %120, i64 %121) #34, !dbg !1377
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !1377
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !1377
  store i64 %124, i64* @line_no, align 8, !dbg !1377
  br i1 %123, label %125, label %126, !dbg !1379

125:                                              ; preds = %114
  store i1 true, i1* @line_no_overflow, align 1, !dbg !1380
  br label %126, !dbg !1381

126:                                              ; preds = %125, %114
  store i64 0, i64* @proc_text.blank_lines, align 8, !dbg !1382, !tbaa !883
  br label %203, !dbg !1383

127:                                              ; preds = %106
  %128 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1384, !tbaa !609
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1384, !tbaa !609
  %130 = tail call i32 @fputs_unlocked(i8* noundef %128, %struct._IO_FILE* noundef %129) #34, !dbg !1384
  br label %203

131:                                              ; preds = %101
  %132 = load i1, i1* @line_no_overflow, align 1, !dbg !1385
  br i1 %132, label %133, label %135, !dbg !1387

133:                                              ; preds = %131
  %134 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !1388
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %134) #34, !dbg !1388
  unreachable, !dbg !1388

135:                                              ; preds = %131
  %136 = load i8*, i8** @lineno_format, align 8, !dbg !1389, !tbaa !609
  %137 = load i32, i32* @lineno_width, align 4, !dbg !1389, !tbaa !713
  %138 = load i64, i64* @line_no, align 8, !dbg !1389, !tbaa !883
  %139 = load i8*, i8** @separator_str, align 8, !dbg !1389, !tbaa !609
  %140 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %136, i32 noundef %137, i64 noundef %138, i8* noundef %139) #34, !dbg !1389
  %141 = load i64, i64* @line_no, align 8, !dbg !1390, !tbaa !883
  %142 = load i64, i64* @page_incr, align 8, !dbg !1390, !tbaa !883
  %143 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %141, i64 %142) #34, !dbg !1390
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !1390
  %145 = extractvalue { i64, i1 } %143, 0, !dbg !1390
  store i64 %145, i64* @line_no, align 8, !dbg !1390
  br i1 %144, label %146, label %203, !dbg !1391

146:                                              ; preds = %135
  store i1 true, i1* @line_no_overflow, align 1, !dbg !1392
  br label %203, !dbg !1393

147:                                              ; preds = %98
  %148 = icmp sgt i64 %18, 1, !dbg !1394
  br i1 %148, label %149, label %165, !dbg !1396

149:                                              ; preds = %147
  %150 = load i1, i1* @line_no_overflow, align 1, !dbg !1397
  br i1 %150, label %151, label %153, !dbg !1399

151:                                              ; preds = %149
  %152 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !1400
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %152) #34, !dbg !1400
  unreachable, !dbg !1400

153:                                              ; preds = %149
  %154 = load i8*, i8** @lineno_format, align 8, !dbg !1401, !tbaa !609
  %155 = load i32, i32* @lineno_width, align 4, !dbg !1401, !tbaa !713
  %156 = load i64, i64* @line_no, align 8, !dbg !1401, !tbaa !883
  %157 = load i8*, i8** @separator_str, align 8, !dbg !1401, !tbaa !609
  %158 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %154, i32 noundef %155, i64 noundef %156, i8* noundef %157) #34, !dbg !1401
  %159 = load i64, i64* @line_no, align 8, !dbg !1402, !tbaa !883
  %160 = load i64, i64* @page_incr, align 8, !dbg !1402, !tbaa !883
  %161 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %160) #34, !dbg !1402
  %162 = extractvalue { i64, i1 } %161, 1, !dbg !1402
  %163 = extractvalue { i64, i1 } %161, 0, !dbg !1402
  store i64 %163, i64* @line_no, align 8, !dbg !1402
  br i1 %162, label %164, label %203, !dbg !1403

164:                                              ; preds = %153
  store i1 true, i1* @line_no_overflow, align 1, !dbg !1404
  br label %203, !dbg !1405

165:                                              ; preds = %147
  %166 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1406, !tbaa !609
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1406, !tbaa !609
  %168 = tail call i32 @fputs_unlocked(i8* noundef %166, %struct._IO_FILE* noundef %167) #34, !dbg !1406
  br label %203

169:                                              ; preds = %98
  %170 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1407, !tbaa !609
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1407, !tbaa !609
  %172 = tail call i32 @fputs_unlocked(i8* noundef %170, %struct._IO_FILE* noundef %171) #34, !dbg !1407
  br label %203, !dbg !1408

173:                                              ; preds = %98
  %174 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1409, !tbaa !609
  %175 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1410, !tbaa !1251
  %176 = trunc i64 %18 to i32, !dbg !1411
  %177 = add i32 %176, -1, !dbg !1411
  %178 = tail call i32 @re_search(%struct.re_pattern_buffer* noundef %174, i8* noundef %175, i32 noundef %177, i32 noundef 0, i32 noundef %177, %struct.re_registers* noundef null) #34, !dbg !1412
  switch i32 %178, label %187 [
    i32 -2, label %179
    i32 -1, label %183
  ], !dbg !1413

179:                                              ; preds = %173
  %180 = tail call i32* @__errno_location() #37, !dbg !1414
  %181 = load i32, i32* %180, align 4, !dbg !1414, !tbaa !713
  %182 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.95, i64 0, i64 0), i32 noundef 5) #34, !dbg !1414
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %181, i8* noundef %182) #34, !dbg !1414
  unreachable, !dbg !1414

183:                                              ; preds = %173
  %184 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1416, !tbaa !609
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1416, !tbaa !609
  %186 = tail call i32 @fputs_unlocked(i8* noundef %184, %struct._IO_FILE* noundef %185) #34, !dbg !1416
  br label %203, !dbg !1417

187:                                              ; preds = %173
  %188 = load i1, i1* @line_no_overflow, align 1, !dbg !1418
  br i1 %188, label %189, label %191, !dbg !1420

189:                                              ; preds = %187
  %190 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !1421
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %190) #34, !dbg !1421
  unreachable, !dbg !1421

191:                                              ; preds = %187
  %192 = load i8*, i8** @lineno_format, align 8, !dbg !1422, !tbaa !609
  %193 = load i32, i32* @lineno_width, align 4, !dbg !1422, !tbaa !713
  %194 = load i64, i64* @line_no, align 8, !dbg !1422, !tbaa !883
  %195 = load i8*, i8** @separator_str, align 8, !dbg !1422, !tbaa !609
  %196 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %192, i32 noundef %193, i64 noundef %194, i8* noundef %195) #34, !dbg !1422
  %197 = load i64, i64* @line_no, align 8, !dbg !1423, !tbaa !883
  %198 = load i64, i64* @page_incr, align 8, !dbg !1423, !tbaa !883
  %199 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %197, i64 %198) #34, !dbg !1423
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !1423
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !1423
  store i64 %201, i64* @line_no, align 8, !dbg !1423
  br i1 %200, label %202, label %203, !dbg !1424

202:                                              ; preds = %191
  store i1 true, i1* @line_no_overflow, align 1, !dbg !1425
  br label %203, !dbg !1426

203:                                              ; preds = %202, %191, %183, %169, %165, %164, %153, %146, %135, %127, %126, %98
  %204 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 1), align 8, !dbg !1427, !tbaa !1242
  %205 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1427, !tbaa !1251
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1427, !tbaa !609
  %207 = tail call i64 @fwrite_unlocked(i8* noundef %205, i64 noundef 1, i64 noundef %204, %struct._IO_FILE* noundef %206) #34, !dbg !1427
  br label %208, !dbg !1427

208:                                              ; preds = %203, %96, %94, %80, %78, %64, %62
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1428, !tbaa !609
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %209, metadata !1430, metadata !DIExpression()) #34, !dbg !1435
  %210 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %209, i64 0, i32 0, !dbg !1437
  %211 = load i32, i32* %210, align 8, !dbg !1437, !tbaa !1438
  %212 = and i32 %211, 32, !dbg !1428
  %213 = icmp eq i32 %212, 0, !dbg !1428
  br i1 %213, label %14, label %214, !dbg !1439, !llvm.loop !1440

214:                                              ; preds = %208
  %215 = tail call i32* @__errno_location() #37, !dbg !1442
  %216 = load i32, i32* %215, align 4, !dbg !1442, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %216, metadata !1445, metadata !DIExpression()) #34, !dbg !1447
  %217 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %209) #34, !dbg !1448
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1449, !tbaa !609
  %219 = tail call i32 @fpurge(%struct._IO_FILE* noundef %218) #34, !dbg !1450
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1451, !tbaa !609
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %220) #34, !dbg !1451
  %221 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i32 noundef 5) #34, !dbg !1452
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %216, i8* noundef %221) #34, !dbg !1452
  unreachable, !dbg !1452

222:                                              ; preds = %14
  %223 = tail call i32* @__errno_location() #37, !dbg !1453
  %224 = load i32, i32* %223, align 4, !dbg !1453, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %224, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %13, metadata !1430, metadata !DIExpression()), !dbg !1454
  %225 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %13, i64 0, i32 0, !dbg !1457
  %226 = load i32, i32* %225, align 8, !dbg !1457, !tbaa !1438
  %227 = and i32 %226, 32, !dbg !1458
  %228 = icmp eq i32 %227, 0, !dbg !1458
  %229 = select i1 %228, i32 0, i32 %224, !dbg !1459
  call void @llvm.dbg.value(metadata i32 %229, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %0, metadata !662, metadata !DIExpression()) #34, !dbg !1460
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), metadata !668, metadata !DIExpression()) #34, !dbg !1460
  %230 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #35, !dbg !1463
  %231 = icmp eq i32 %230, 0, !dbg !1464
  br i1 %231, label %232, label %233, !dbg !1465

232:                                              ; preds = %222
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %13) #34, !dbg !1466
  br label %240, !dbg !1466

233:                                              ; preds = %222
  %234 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %13) #34, !dbg !1467
  %235 = icmp eq i32 %234, 0, !dbg !1469
  %236 = icmp ne i32 %229, 0
  %237 = select i1 %235, i1 true, i1 %236, !dbg !1470
  br i1 %237, label %240, label %238, !dbg !1470

238:                                              ; preds = %233
  %239 = load i32, i32* %223, align 4, !dbg !1471, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %239, metadata !1203, metadata !DIExpression()), !dbg !1204
  br label %240, !dbg !1472

240:                                              ; preds = %233, %238, %232
  %241 = phi i32 [ %229, %232 ], [ %229, %233 ], [ %239, %238 ], !dbg !1204
  call void @llvm.dbg.value(metadata i32 %241, metadata !1203, metadata !DIExpression()), !dbg !1204
  %242 = icmp eq i32 %241, 0, !dbg !1473
  br i1 %242, label %246, label %243, !dbg !1475

243:                                              ; preds = %240, %9
  %244 = phi i32 [ %11, %9 ], [ %241, %240 ]
  %245 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #34, !dbg !1204
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %244, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0), i8* noundef %245) #34, !dbg !1204
  br label %246, !dbg !1476

246:                                              ; preds = %243, %240
  %247 = phi i1 [ true, %240 ], [ false, %243 ], !dbg !1204
  ret i1 %247, !dbg !1476
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

declare !dbg !1477 i32 @re_search(%struct.re_pattern_buffer* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.re_registers* noundef) local_unnamed_addr #3

declare !dbg !1489 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1490 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare !dbg !1491 i8* @re_compile_pattern(i8* noundef, i64 noundef, %struct.re_pattern_buffer* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #16 !dbg !1494 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1496, metadata !DIExpression()), !dbg !1497
  store i8* %0, i8** @file_name, align 8, !dbg !1498, !tbaa !609
  ret void, !dbg !1499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1500 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1506, !tbaa !1507
  ret void, !dbg !1509
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1510 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1515, !tbaa !609
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !1516
  %3 = icmp eq i32 %2, 0, !dbg !1517
  br i1 %3, label %22, label %4, !dbg !1518

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1519, !tbaa !1507, !range !1520
  %6 = icmp eq i8 %5, 0, !dbg !1519
  br i1 %6, label %11, label %7, !dbg !1521

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !1522
  %9 = load i32, i32* %8, align 4, !dbg !1522, !tbaa !713
  %10 = icmp eq i32 %9, 32, !dbg !1523
  br i1 %10, label %22, label %11, !dbg !1524

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.48, i64 0, i64 0), i32 noundef 5) #34, !dbg !1525
  call void @llvm.dbg.value(metadata i8* %12, metadata !1512, metadata !DIExpression()), !dbg !1526
  %13 = load i8*, i8** @file_name, align 8, !dbg !1527, !tbaa !609
  %14 = icmp eq i8* %13, null, !dbg !1527
  %15 = tail call i32* @__errno_location() #37, !dbg !1529
  %16 = load i32, i32* %15, align 4, !dbg !1529, !tbaa !713
  br i1 %14, label %19, label %17, !dbg !1530

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !1531
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !1531
  br label %20, !dbg !1531

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.50, i64 0, i64 0), i8* noundef %12) #34, !dbg !1532
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1533, !tbaa !713
  tail call void @_exit(i32 noundef %21) #36, !dbg !1534
  unreachable, !dbg !1534

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1535, !tbaa !609
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !1537
  %25 = icmp eq i32 %24, 0, !dbg !1538
  br i1 %25, label %28, label %26, !dbg !1539

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1540, !tbaa !713
  tail call void @_exit(i32 noundef %27) #36, !dbg !1541
  unreachable, !dbg !1541

28:                                               ; preds = %22
  ret void, !dbg !1542
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1543 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1547, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %1, metadata !1548, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %2, metadata !1549, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1550, metadata !DIExpression()), !dbg !1552
  tail call fastcc void @flush_stdout(), !dbg !1553
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1554, !tbaa !609
  %7 = icmp eq void ()* %6, null, !dbg !1554
  br i1 %7, label %9, label %8, !dbg !1556

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !1557
  br label %13, !dbg !1557

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1558, !tbaa !609
  %11 = tail call i8* @getprogname() #35, !dbg !1558
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* noundef %11) #34, !dbg !1558
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1560
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1560, !tbaa.struct !1561
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1560
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1560
  ret void, !dbg !1562
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1563 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1565, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 1, metadata !1567, metadata !DIExpression()) #34, !dbg !1570
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !1573
  %2 = icmp slt i32 %1, 0, !dbg !1574
  br i1 %2, label %6, label %3, !dbg !1575

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1576, !tbaa !609
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !1576
  br label %6, !dbg !1576

6:                                                ; preds = %3, %0
  ret void, !dbg !1577
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1578 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1580, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32 %1, metadata !1581, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i8* %2, metadata !1582, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1583, metadata !DIExpression()), !dbg !1585
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1586, !tbaa !609
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1587
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1588, metadata !DIExpression()) #34, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %2, metadata !1629, metadata !DIExpression()) #34, !dbg !1631
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1633
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1633, !noalias !1634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1633
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1633
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1633, !noalias !1634
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1638, !tbaa !713
  %12 = add i32 %11, 1, !dbg !1638
  store i32 %12, i32* @error_message_count, align 4, !dbg !1638, !tbaa !713
  %13 = icmp eq i32 %1, 0, !dbg !1639
  br i1 %13, label %24, label %14, !dbg !1641

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1642, metadata !DIExpression()) #34, !dbg !1650
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1652
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1652
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1646, metadata !DIExpression()) #34, !dbg !1653
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1654
  call void @llvm.dbg.value(metadata i8* %16, metadata !1645, metadata !DIExpression()) #34, !dbg !1650
  %17 = icmp eq i8* %16, null, !dbg !1655
  br i1 %17, label %18, label %20, !dbg !1657

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.53, i64 0, i64 0), i32 noundef 5) #34, !dbg !1658
  call void @llvm.dbg.value(metadata i8* %19, metadata !1645, metadata !DIExpression()) #34, !dbg !1650
  br label %20, !dbg !1659

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1650
  call void @llvm.dbg.value(metadata i8* %21, metadata !1645, metadata !DIExpression()) #34, !dbg !1650
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1660, !tbaa !609
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.54, i64 0, i64 0), i8* noundef %21) #34, !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1661
  br label %24, !dbg !1662

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1663, !tbaa !609
  call void @llvm.dbg.value(metadata i32 10, metadata !1664, metadata !DIExpression()) #34, !dbg !1670
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1669, metadata !DIExpression()) #34, !dbg !1670
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1672
  %27 = load i8*, i8** %26, align 8, !dbg !1672, !tbaa !1319
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1672
  %29 = load i8*, i8** %28, align 8, !dbg !1672, !tbaa !1321
  %30 = icmp ult i8* %27, %29, !dbg !1672
  br i1 %30, label %33, label %31, !dbg !1672, !prof !1322

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1672
  br label %35, !dbg !1672

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1672
  store i8* %34, i8** %26, align 8, !dbg !1672, !tbaa !1319
  store i8 10, i8* %27, align 1, !dbg !1672, !tbaa !722
  br label %35, !dbg !1672

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1673, !tbaa !609
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1673
  %38 = icmp eq i32 %0, 0, !dbg !1674
  br i1 %38, label %40, label %39, !dbg !1676

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1677
  unreachable, !dbg !1677

40:                                               ; preds = %35
  ret void, !dbg !1678
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1679 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1683 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1687 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1691, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i32 %1, metadata !1692, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %2, metadata !1693, metadata !DIExpression()), !dbg !1695
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1696
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1696
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.va_start(i8* nonnull %6), !dbg !1698
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1699, !tbaa.struct !1561
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1699
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1699
  call void @llvm.va_end(i8* nonnull %6), !dbg !1700
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1701
  ret void, !dbg !1701
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !329 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !347, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %1, metadata !348, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %2, metadata !349, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %3, metadata !350, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %4, metadata !351, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !352, metadata !DIExpression()), !dbg !1703
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1704, !tbaa !713
  %9 = icmp eq i32 %8, 0, !dbg !1704
  br i1 %9, label %24, label %10, !dbg !1706

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1707, !tbaa !713
  %12 = icmp eq i32 %11, %3, !dbg !1710
  br i1 %12, label %13, label %23, !dbg !1711

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1712, !tbaa !609
  %15 = icmp eq i8* %14, %2, !dbg !1713
  br i1 %15, label %39, label %16, !dbg !1714

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1715
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1716
  br i1 %19, label %20, label %23, !dbg !1716

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1717
  %22 = icmp eq i32 %21, 0, !dbg !1718
  br i1 %22, label %39, label %23, !dbg !1719

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1720, !tbaa !609
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1721, !tbaa !713
  br label %24, !dbg !1722

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1723
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1724, !tbaa !609
  %26 = icmp eq void ()* %25, null, !dbg !1724
  br i1 %26, label %28, label %27, !dbg !1726

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1727
  br label %32, !dbg !1727

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1728, !tbaa !609
  %30 = tail call i8* @getprogname() #35, !dbg !1728
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.57, i64 0, i64 0), i8* noundef %30) #34, !dbg !1728
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1730, !tbaa !609
  %34 = icmp eq i8* %2, null, !dbg !1730
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.58, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.59, i64 0, i64 0), !dbg !1730
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1730
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1731
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1731
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1731, !tbaa.struct !1561
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1731
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1731
  br label %39, !dbg !1732

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1732
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1733 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1737, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 %1, metadata !1738, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8* %2, metadata !1739, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 %3, metadata !1740, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8* %4, metadata !1741, metadata !DIExpression()), !dbg !1743
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1744
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1744
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1742, metadata !DIExpression()), !dbg !1745
  call void @llvm.va_start(i8* nonnull %8), !dbg !1746
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1747
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1747, !tbaa.struct !1561
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1747
  call void @llvm.va_end(i8* nonnull %8), !dbg !1748
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1749
  ret void, !dbg !1749
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1750 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1756, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %1, metadata !1757, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %2, metadata !1758, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 %3, metadata !1759, metadata !DIExpression()), !dbg !1760
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #34, !dbg !1761
  ret void, !dbg !1762
}

; Function Attrs: nounwind
declare !dbg !1763 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1766 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1804, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %1, metadata !1805, metadata !DIExpression()), !dbg !1806
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1807
  br i1 %3, label %7, label %4, !dbg !1809

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %5, metadata !1756, metadata !DIExpression()) #34, !dbg !1811
  call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()) #34, !dbg !1811
  call void @llvm.dbg.value(metadata i64 0, metadata !1758, metadata !DIExpression()) #34, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %1, metadata !1759, metadata !DIExpression()) #34, !dbg !1811
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #34, !dbg !1813
  br label %7, !dbg !1814

7:                                                ; preds = %4, %2
  ret void, !dbg !1815
}

; Function Attrs: nofree nounwind
declare !dbg !1816 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1819 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1857, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 0, metadata !1858, metadata !DIExpression()), !dbg !1861
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %2, metadata !1859, metadata !DIExpression()), !dbg !1861
  %3 = icmp slt i32 %2, 0, !dbg !1863
  br i1 %3, label %4, label %6, !dbg !1865

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1866
  br label %24, !dbg !1867

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1868
  %8 = icmp eq i32 %7, 0, !dbg !1868
  br i1 %8, label %13, label %9, !dbg !1870

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1871
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !1872
  %12 = icmp eq i64 %11, -1, !dbg !1873
  br i1 %12, label %16, label %13, !dbg !1874

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1875
  %15 = icmp eq i32 %14, 0, !dbg !1875
  br i1 %15, label %16, label %18, !dbg !1876

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !1858, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 0, metadata !1860, metadata !DIExpression()), !dbg !1861
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1877
  call void @llvm.dbg.value(metadata i32 %21, metadata !1860, metadata !DIExpression()), !dbg !1861
  br label %24, !dbg !1878

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !1879
  %20 = load i32, i32* %19, align 4, !dbg !1879, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %20, metadata !1858, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 0, metadata !1860, metadata !DIExpression()), !dbg !1861
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1877
  call void @llvm.dbg.value(metadata i32 %21, metadata !1860, metadata !DIExpression()), !dbg !1861
  %22 = icmp eq i32 %20, 0, !dbg !1880
  br i1 %22, label %24, label %23, !dbg !1878

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !1882, !tbaa !713
  call void @llvm.dbg.value(metadata i32 -1, metadata !1860, metadata !DIExpression()), !dbg !1861
  br label %24, !dbg !1884

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1861
  ret i32 %25, !dbg !1885
}

; Function Attrs: nofree nounwind
declare !dbg !1886 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1887 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !1891 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1929, metadata !DIExpression()), !dbg !1930
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1931
  br i1 %2, label %6, label %3, !dbg !1933

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1934
  %5 = icmp eq i32 %4, 0, !dbg !1934
  br i1 %5, label %6, label %8, !dbg !1935

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !1936
  br label %17, !dbg !1937

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1938, metadata !DIExpression()) #34, !dbg !1943
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1945
  %10 = load i32, i32* %9, align 8, !dbg !1945, !tbaa !1438
  %11 = and i32 %10, 256, !dbg !1947
  %12 = icmp eq i32 %11, 0, !dbg !1947
  br i1 %12, label %15, label %13, !dbg !1948

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !1949
  br label %15, !dbg !1949

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !1950
  br label %17, !dbg !1951

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !1930
  ret i32 %18, !dbg !1952
}

; Function Attrs: nofree nounwind
declare !dbg !1953 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1954 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1992, metadata !DIExpression()), !dbg !1993
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1994
  ret i32 0, !dbg !1995
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !1996 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2034, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %1, metadata !2035, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %2, metadata !2036, metadata !DIExpression()), !dbg !2040
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2041
  %5 = load i8*, i8** %4, align 8, !dbg !2041, !tbaa !2042
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2043
  %7 = load i8*, i8** %6, align 8, !dbg !2043, !tbaa !2044
  %8 = icmp eq i8* %5, %7, !dbg !2045
  br i1 %8, label %9, label %28, !dbg !2046

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2047
  %11 = load i8*, i8** %10, align 8, !dbg !2047, !tbaa !1319
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !2048
  %13 = load i8*, i8** %12, align 8, !dbg !2048, !tbaa !2049
  %14 = icmp eq i8* %11, %13, !dbg !2050
  br i1 %14, label %15, label %28, !dbg !2051

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !2052
  %17 = load i8*, i8** %16, align 8, !dbg !2052, !tbaa !2053
  %18 = icmp eq i8* %17, null, !dbg !2054
  br i1 %18, label %19, label %28, !dbg !2055

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2056
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %21, metadata !2037, metadata !DIExpression()), !dbg !2058
  %22 = icmp eq i64 %21, -1, !dbg !2059
  br i1 %22, label %30, label %23, !dbg !2061

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2062
  %25 = load i32, i32* %24, align 8, !dbg !2063, !tbaa !1438
  %26 = and i32 %25, -17, !dbg !2063
  store i32 %26, i32* %24, align 8, !dbg !2063, !tbaa !1438
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !2064
  store i64 %21, i64* %27, align 8, !dbg !2065, !tbaa !2066
  br label %30, !dbg !2067

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2068
  br label %30, !dbg !2069

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !2040
  ret i32 %31, !dbg !2070
}

; Function Attrs: nofree nounwind
declare !dbg !2071 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 !dbg !2074 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2077, !tbaa !609
  ret i8* %1, !dbg !2078
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @initbuffer(%struct.linebuffer* noundef %0) local_unnamed_addr #21 !dbg !2079 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2089, metadata !DIExpression()), !dbg !2090
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !2091
  call void @llvm.dbg.value(metadata i8* %2, metadata !2092, metadata !DIExpression()) #34, !dbg !2097
  call void @llvm.dbg.value(metadata i32 0, metadata !2095, metadata !DIExpression()) #34, !dbg !2097
  call void @llvm.dbg.value(metadata i64 24, metadata !2096, metadata !DIExpression()) #34, !dbg !2097
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(24) %2, i8 noundef 0, i64 noundef 24, i1 noundef false) #34, !dbg !2099
  ret void, !dbg !2100
}

; Function Attrs: nounwind uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* noundef %0, %struct._IO_FILE* noundef %1) local_unnamed_addr #12 !dbg !2101 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2140, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2142, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2147, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata i8 10, metadata !2148, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2159, metadata !DIExpression()) #34, !dbg !2164
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2167
  %4 = load i32, i32* %3, align 8, !dbg !2167, !tbaa !1438
  %5 = and i32 %4, 16, !dbg !2168
  %6 = icmp eq i32 %5, 0, !dbg !2168
  br i1 %6, label %7, label %62, !dbg !2169

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2170
  %9 = load i8*, i8** %8, align 8, !dbg !2170, !tbaa !1251
  call void @llvm.dbg.value(metadata i8* %9, metadata !2149, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %9, metadata !2150, metadata !DIExpression()) #34, !dbg !2157
  %10 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2171
  %11 = load i64, i64* %10, align 8, !dbg !2171, !tbaa !2172
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !2173
  call void @llvm.dbg.value(metadata i8* %12, metadata !2151, metadata !DIExpression()) #34, !dbg !2157
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !2174

15:                                               ; preds = %48, %7
  %16 = phi i8* [ %9, %7 ], [ %49, %48 ], !dbg !2157
  %17 = phi i8* [ %9, %7 ], [ %53, %48 ], !dbg !2157
  %18 = phi i8* [ %12, %7 ], [ %51, %48 ], !dbg !2157
  call void @llvm.dbg.value(metadata i8* %18, metadata !2151, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %17, metadata !2150, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %16, metadata !2149, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2175, metadata !DIExpression()) #34, !dbg !2178
  %19 = load i8*, i8** %13, align 8, !dbg !2180, !tbaa !2044
  %20 = load i8*, i8** %14, align 8, !dbg !2180, !tbaa !2042
  %21 = icmp ult i8* %19, %20, !dbg !2180
  br i1 %21, label %22, label %26, !dbg !2180, !prof !1322

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2180
  store i8* %23, i8** %13, align 8, !dbg !2180, !tbaa !2044
  %24 = load i8, i8* %19, align 1, !dbg !2180, !tbaa !722
  %25 = zext i8 %24 to i32, !dbg !2180
  call void @llvm.dbg.value(metadata i32 %27, metadata !2152, metadata !DIExpression()) #34, !dbg !2157
  br label %39, !dbg !2181

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %1) #34, !dbg !2180
  call void @llvm.dbg.value(metadata i32 %27, metadata !2152, metadata !DIExpression()) #34, !dbg !2157
  %28 = icmp eq i32 %27, -1, !dbg !2182
  br i1 %28, label %29, label %39, !dbg !2181

29:                                               ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !2184
  br i1 %30, label %62, label %31, !dbg !2187

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2188, metadata !DIExpression()) #34, !dbg !2191
  %32 = load i32, i32* %3, align 8, !dbg !2193, !tbaa !1438
  %33 = and i32 %32, 32, !dbg !2194
  %34 = icmp eq i32 %33, 0, !dbg !2194
  br i1 %34, label %35, label %62, !dbg !2195

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2196
  %37 = load i8, i8* %36, align 1, !dbg !2196, !tbaa !722
  %38 = icmp eq i8 %37, 10, !dbg !2198
  br i1 %38, label %55, label %39, !dbg !2199

39:                                               ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !2200
  call void @llvm.dbg.value(metadata i32 %40, metadata !2152, metadata !DIExpression()) #34, !dbg !2157
  %41 = icmp eq i8* %17, %18, !dbg !2201
  br i1 %41, label %42, label %48, !dbg !2202

42:                                               ; preds = %39
  %43 = load i64, i64* %10, align 8, !dbg !2203, !tbaa !2172
  call void @llvm.dbg.value(metadata i64 %43, metadata !2153, metadata !DIExpression()) #34, !dbg !2204
  %44 = tail call nonnull i8* @xpalloc(i8* noundef %16, i64* noundef nonnull %10, i64 noundef 1, i64 noundef -1, i64 noundef 1) #34, !dbg !2205
  call void @llvm.dbg.value(metadata i8* %44, metadata !2149, metadata !DIExpression()) #34, !dbg !2157
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %45, metadata !2150, metadata !DIExpression()) #34, !dbg !2157
  store i8* %44, i8** %8, align 8, !dbg !2207, !tbaa !1251
  %46 = load i64, i64* %10, align 8, !dbg !2208, !tbaa !2172
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2209
  call void @llvm.dbg.value(metadata i8* %47, metadata !2151, metadata !DIExpression()) #34, !dbg !2157
  br label %48, !dbg !2210

48:                                               ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !2157
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !2157
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !2157
  call void @llvm.dbg.value(metadata i8* %51, metadata !2151, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %50, metadata !2150, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %49, metadata !2149, metadata !DIExpression()) #34, !dbg !2157
  %52 = trunc i32 %40 to i8, !dbg !2211
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2212
  call void @llvm.dbg.value(metadata i8* %53, metadata !2150, metadata !DIExpression()) #34, !dbg !2157
  store i8 %52, i8* %50, align 1, !dbg !2213, !tbaa !722
  %54 = icmp eq i32 %40, 10, !dbg !2214
  br i1 %54, label %55, label %15, !dbg !2215, !llvm.loop !2216

55:                                               ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !2157
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !2157
  call void @llvm.dbg.value(metadata i8* %57, metadata !2150, metadata !DIExpression()) #34, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %56, metadata !2149, metadata !DIExpression()) #34, !dbg !2157
  %58 = ptrtoint i8* %57 to i64, !dbg !2218
  %59 = ptrtoint i8* %56 to i64, !dbg !2218
  %60 = sub i64 %58, %59, !dbg !2218
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2219
  store i64 %60, i64* %61, align 8, !dbg !2220, !tbaa !1242
  br label %62, !dbg !2221

62:                                               ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ null, %2 ], [ %0, %55 ], [ null, %31 ], [ null, %29 ], !dbg !2157
  ret %struct.linebuffer* %63, !dbg !2222
}

declare i32 @__uflow(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* noundef %0, %struct._IO_FILE* noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2143 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2142, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2147, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 %2, metadata !2148, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2159, metadata !DIExpression()), !dbg !2224
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2226
  %5 = load i32, i32* %4, align 8, !dbg !2226, !tbaa !1438
  %6 = and i32 %5, 16, !dbg !2227
  %7 = icmp eq i32 %6, 0, !dbg !2227
  br i1 %7, label %8, label %64, !dbg !2228

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2229
  %10 = load i8*, i8** %9, align 8, !dbg !2229, !tbaa !1251
  call void @llvm.dbg.value(metadata i8* %10, metadata !2149, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %10, metadata !2150, metadata !DIExpression()), !dbg !2223
  %11 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2230
  %12 = load i64, i64* %11, align 8, !dbg !2230, !tbaa !2172
  %13 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !2231
  call void @llvm.dbg.value(metadata i8* %13, metadata !2151, metadata !DIExpression()), !dbg !2223
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = zext i8 %2 to i32
  br label %17, !dbg !2232

17:                                               ; preds = %50, %8
  %18 = phi i8* [ %10, %8 ], [ %51, %50 ], !dbg !2223
  %19 = phi i8* [ %10, %8 ], [ %55, %50 ], !dbg !2223
  %20 = phi i8* [ %13, %8 ], [ %53, %50 ], !dbg !2223
  call void @llvm.dbg.value(metadata i8* %20, metadata !2151, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %19, metadata !2150, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %18, metadata !2149, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2175, metadata !DIExpression()) #34, !dbg !2233
  %21 = load i8*, i8** %14, align 8, !dbg !2235, !tbaa !2044
  %22 = load i8*, i8** %15, align 8, !dbg !2235, !tbaa !2042
  %23 = icmp ult i8* %21, %22, !dbg !2235
  br i1 %23, label %24, label %28, !dbg !2235, !prof !1322

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2235
  store i8* %25, i8** %14, align 8, !dbg !2235, !tbaa !2044
  %26 = load i8, i8* %21, align 1, !dbg !2235, !tbaa !722
  %27 = zext i8 %26 to i32, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %29, metadata !2152, metadata !DIExpression()), !dbg !2223
  br label %41, !dbg !2236

28:                                               ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %1) #34, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %29, metadata !2152, metadata !DIExpression()), !dbg !2223
  %30 = icmp eq i32 %29, -1, !dbg !2237
  br i1 %30, label %31, label %41, !dbg !2236

31:                                               ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !2238
  br i1 %32, label %64, label %33, !dbg !2239

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2188, metadata !DIExpression()), !dbg !2240
  %34 = load i32, i32* %4, align 8, !dbg !2242, !tbaa !1438
  %35 = and i32 %34, 32, !dbg !2243
  %36 = icmp eq i32 %35, 0, !dbg !2243
  br i1 %36, label %37, label %64, !dbg !2244

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2245
  %39 = load i8, i8* %38, align 1, !dbg !2245, !tbaa !722
  %40 = icmp eq i8 %39, %2, !dbg !2246
  br i1 %40, label %57, label %41, !dbg !2247

41:                                               ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !2248
  call void @llvm.dbg.value(metadata i32 %42, metadata !2152, metadata !DIExpression()), !dbg !2223
  %43 = icmp eq i8* %19, %20, !dbg !2249
  br i1 %43, label %44, label %50, !dbg !2250

44:                                               ; preds = %41
  %45 = load i64, i64* %11, align 8, !dbg !2251, !tbaa !2172
  call void @llvm.dbg.value(metadata i64 %45, metadata !2153, metadata !DIExpression()), !dbg !2252
  %46 = tail call nonnull i8* @xpalloc(i8* noundef %18, i64* noundef nonnull %11, i64 noundef 1, i64 noundef -1, i64 noundef 1) #34, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %46, metadata !2149, metadata !DIExpression()), !dbg !2223
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %47, metadata !2150, metadata !DIExpression()), !dbg !2223
  store i8* %46, i8** %9, align 8, !dbg !2255, !tbaa !1251
  %48 = load i64, i64* %11, align 8, !dbg !2256, !tbaa !2172
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !2257
  call void @llvm.dbg.value(metadata i8* %49, metadata !2151, metadata !DIExpression()), !dbg !2223
  br label %50, !dbg !2258

50:                                               ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !2223
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !2223
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !2223
  call void @llvm.dbg.value(metadata i8* %53, metadata !2151, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %52, metadata !2150, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %51, metadata !2149, metadata !DIExpression()), !dbg !2223
  %54 = trunc i32 %42 to i8, !dbg !2259
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !2260
  call void @llvm.dbg.value(metadata i8* %55, metadata !2150, metadata !DIExpression()), !dbg !2223
  store i8 %54, i8* %52, align 1, !dbg !2261, !tbaa !722
  %56 = icmp eq i32 %42, %16, !dbg !2262
  br i1 %56, label %57, label %17, !dbg !2263, !llvm.loop !2264

57:                                               ; preds = %37, %50
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !2223
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !2223
  call void @llvm.dbg.value(metadata i8* %59, metadata !2150, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %58, metadata !2149, metadata !DIExpression()), !dbg !2223
  %60 = ptrtoint i8* %59 to i64, !dbg !2266
  %61 = ptrtoint i8* %58 to i64, !dbg !2266
  %62 = sub i64 %60, %61, !dbg !2266
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2267
  store i64 %62, i64* %63, align 8, !dbg !2268, !tbaa !1242
  br label %64, !dbg !2269

64:                                               ; preds = %33, %31, %57, %3
  %65 = phi %struct.linebuffer* [ null, %3 ], [ %0, %57 ], [ null, %31 ], [ null, %33 ], !dbg !2223
  ret %struct.linebuffer* %65, !dbg !2270
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @freebuffer(%struct.linebuffer* nocapture noundef readonly %0) local_unnamed_addr #22 !dbg !2271 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2273, metadata !DIExpression()), !dbg !2274
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2275
  %3 = load i8*, i8** %2, align 8, !dbg !2275, !tbaa !1251
  tail call void @free(i8* noundef %3) #34, !dbg !2276
  ret void, !dbg !2277
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #24 !dbg !2278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2280, metadata !DIExpression()), !dbg !2283
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %2, metadata !2281, metadata !DIExpression()), !dbg !2283
  %3 = icmp eq i8* %2, null, !dbg !2285
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2285
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2285
  call void @llvm.dbg.value(metadata i8* %5, metadata !2282, metadata !DIExpression()), !dbg !2283
  %6 = ptrtoint i8* %5 to i64, !dbg !2286
  %7 = ptrtoint i8* %0 to i64, !dbg !2286
  %8 = sub i64 %6, %7, !dbg !2286
  %9 = icmp sgt i64 %8, 6, !dbg !2288
  br i1 %9, label %10, label %19, !dbg !2289

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2290
  call void @llvm.dbg.value(metadata i8* %11, metadata !2291, metadata !DIExpression()) #34, !dbg !2296
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i64 0, i64 0), metadata !2294, metadata !DIExpression()) #34, !dbg !2296
  call void @llvm.dbg.value(metadata i64 7, metadata !2295, metadata !DIExpression()) #34, !dbg !2296
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i64 0, i64 0), i64 7) #34, !dbg !2298
  %13 = icmp eq i32 %12, 0, !dbg !2299
  br i1 %13, label %14, label %19, !dbg !2300

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2280, metadata !DIExpression()), !dbg !2283
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.99, i64 0, i64 0), i64 noundef 3) #35, !dbg !2301
  %16 = icmp eq i32 %15, 0, !dbg !2304
  %17 = select i1 %16, i64 3, i64 0, !dbg !2305
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2305
  br label %19, !dbg !2305

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2283
  call void @llvm.dbg.value(metadata i8* %21, metadata !2282, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %20, metadata !2280, metadata !DIExpression()), !dbg !2283
  store i8* %20, i8** @program_name, align 8, !dbg !2306, !tbaa !609
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2307, !tbaa !609
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2308, !tbaa !609
  ret void, !dbg !2309
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !368 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !375, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* %1, metadata !376, metadata !DIExpression()), !dbg !2310
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %5, metadata !377, metadata !DIExpression()), !dbg !2310
  %6 = icmp eq i8* %5, %0, !dbg !2312
  br i1 %6, label %7, label %17, !dbg !2314

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2315
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2315
  %10 = bitcast i64* %4 to i8*, !dbg !2316
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2316
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !383, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2318, metadata !DIExpression()) #34, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %10, metadata !2327, metadata !DIExpression()) #34, !dbg !2332
  call void @llvm.dbg.value(metadata i32 0, metadata !2330, metadata !DIExpression()) #34, !dbg !2332
  call void @llvm.dbg.value(metadata i64 8, metadata !2331, metadata !DIExpression()) #34, !dbg !2332
  store i64 0, i64* %4, align 8, !dbg !2334
  call void @llvm.dbg.value(metadata i32* %3, metadata !378, metadata !DIExpression(DW_OP_deref)), !dbg !2310
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !2335
  %12 = icmp eq i64 %11, 2, !dbg !2337
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !378, metadata !DIExpression()), !dbg !2310
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2338
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2310
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2339
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2339
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2310
  ret i8* %18, !dbg !2339
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2340 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2345, metadata !DIExpression()), !dbg !2348
  %2 = tail call i32* @__errno_location() #37, !dbg !2349
  %3 = load i32, i32* %2, align 4, !dbg !2349, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %3, metadata !2346, metadata !DIExpression()), !dbg !2348
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2350
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2350
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2350
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !2351
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2347, metadata !DIExpression()), !dbg !2348
  store i32 %3, i32* %2, align 4, !dbg !2352, !tbaa !713
  ret %struct.quoting_options* %8, !dbg !2353
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 !dbg !2354 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2360, metadata !DIExpression()), !dbg !2361
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2362
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2362
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2363
  %5 = load i32, i32* %4, align 8, !dbg !2363, !tbaa !2364
  ret i32 %5, !dbg !2366
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 !dbg !2367 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %1, metadata !2372, metadata !DIExpression()), !dbg !2373
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2374
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2374
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2375
  store i32 %1, i32* %5, align 8, !dbg !2376, !tbaa !2364
  ret void, !dbg !2377
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2378 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2382, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 %1, metadata !2383, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32 %2, metadata !2384, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 %1, metadata !2385, metadata !DIExpression()), !dbg !2390
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2391
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2391
  %6 = lshr i8 %1, 5, !dbg !2392
  %7 = zext i8 %6 to i64, !dbg !2392
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2393
  call void @llvm.dbg.value(metadata i32* %8, metadata !2386, metadata !DIExpression()), !dbg !2390
  %9 = and i8 %1, 31, !dbg !2394
  %10 = zext i8 %9 to i32, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %10, metadata !2388, metadata !DIExpression()), !dbg !2390
  %11 = load i32, i32* %8, align 4, !dbg !2395, !tbaa !713
  %12 = lshr i32 %11, %10, !dbg !2396
  %13 = and i32 %12, 1, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %13, metadata !2389, metadata !DIExpression()), !dbg !2390
  %14 = and i32 %2, 1, !dbg !2398
  %15 = xor i32 %13, %14, !dbg !2399
  %16 = shl i32 %15, %10, !dbg !2400
  %17 = xor i32 %16, %11, !dbg !2401
  store i32 %17, i32* %8, align 4, !dbg !2401, !tbaa !713
  ret i32 %13, !dbg !2402
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2403 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %1, metadata !2408, metadata !DIExpression()), !dbg !2410
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2411
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2407, metadata !DIExpression()), !dbg !2410
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2414
  %6 = load i32, i32* %5, align 4, !dbg !2414, !tbaa !2415
  call void @llvm.dbg.value(metadata i32 %6, metadata !2409, metadata !DIExpression()), !dbg !2410
  store i32 %1, i32* %5, align 4, !dbg !2416, !tbaa !2415
  ret i32 %6, !dbg !2417
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2418 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %1, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %2, metadata !2424, metadata !DIExpression()), !dbg !2425
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2426
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2428
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2422, metadata !DIExpression()), !dbg !2425
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2429
  store i32 10, i32* %6, align 8, !dbg !2430, !tbaa !2364
  %7 = icmp ne i8* %1, null, !dbg !2431
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2433
  br i1 %9, label %11, label %10, !dbg !2433

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2434
  unreachable, !dbg !2434

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2435
  store i8* %1, i8** %12, align 8, !dbg !2436, !tbaa !2437
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2438
  store i8* %2, i8** %13, align 8, !dbg !2439, !tbaa !2440
  ret void, !dbg !2441
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2442 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2446, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i64 %1, metadata !2447, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %2, metadata !2448, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i64 %3, metadata !2449, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2450, metadata !DIExpression()), !dbg !2454
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2455
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2455
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2451, metadata !DIExpression()), !dbg !2454
  %8 = tail call i32* @__errno_location() #37, !dbg !2456
  %9 = load i32, i32* %8, align 4, !dbg !2456, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %9, metadata !2452, metadata !DIExpression()), !dbg !2454
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2457
  %11 = load i32, i32* %10, align 8, !dbg !2457, !tbaa !2364
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2458
  %13 = load i32, i32* %12, align 4, !dbg !2458, !tbaa !2415
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2459
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2460
  %16 = load i8*, i8** %15, align 8, !dbg !2460, !tbaa !2437
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2461
  %18 = load i8*, i8** %17, align 8, !dbg !2461, !tbaa !2440
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %19, metadata !2453, metadata !DIExpression()), !dbg !2454
  store i32 %9, i32* %8, align 4, !dbg !2463, !tbaa !713
  ret i64 %19, !dbg !2464
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2465 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2471, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %1, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %2, metadata !2473, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %3, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %4, metadata !2475, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %5, metadata !2476, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32* %6, metadata !2477, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %7, metadata !2478, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %8, metadata !2479, metadata !DIExpression()), !dbg !2533
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !2534
  %18 = icmp eq i64 %17, 1, !dbg !2535
  call void @llvm.dbg.value(metadata i1 %18, metadata !2480, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2533
  call void @llvm.dbg.value(metadata i64 0, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 0, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* null, metadata !2483, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 0, metadata !2484, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2485, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %5, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 1, metadata !2488, metadata !DIExpression()), !dbg !2533
  %19 = and i32 %5, 2, !dbg !2536
  %20 = icmp ne i32 %19, 0, !dbg !2536
  %21 = bitcast i64* %13 to %struct.__mbstate_t*
  %22 = bitcast i32* %12 to i8*
  %23 = bitcast i64* %13 to i8*
  %24 = bitcast i64* %11 to %struct.__mbstate_t*
  %25 = bitcast i32* %10 to i8*
  %26 = bitcast i64* %11 to i8*
  %27 = getelementptr inbounds i8, i8* %2, i64 1
  %28 = and i32 %5, 4
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %5, 1
  %31 = icmp eq i32 %30, 0
  %32 = bitcast i64* %14 to i8*
  %33 = bitcast i32* %16 to i8*
  %34 = icmp ne i32* %6, null
  %35 = icmp eq i32* %6, null
  br label %36, !dbg !2536

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2537
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2538
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2539
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2486, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2485, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %43, metadata !2484, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %42, metadata !2483, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 0, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %40, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2479, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %38, metadata !2478, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %37, metadata !2475, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.label(metadata !2526), !dbg !2540
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2533
  switch i32 %37, label %110 [
    i32 6, label %49
    i32 5, label %50
    i32 7, label %111
    i32 0, label %109
    i32 2, label %104
    i32 4, label %101
    i32 3, label %100
    i32 1, label %102
    i32 10, label %79
    i32 8, label %54
    i32 9, label %54
  ], !dbg !2541

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2486, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 5, metadata !2475, metadata !DIExpression()), !dbg !2533
  br label %111, !dbg !2542

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2486, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 5, metadata !2475, metadata !DIExpression()), !dbg !2533
  br i1 %45, label %111, label %51, !dbg !2542

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2543
  br i1 %52, label %111, label %53, !dbg !2547

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2543, !tbaa !722
  br label %111, !dbg !2543

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.112, i64 0, i64 0), metadata !440, metadata !DIExpression()) #34, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %37, metadata !441, metadata !DIExpression()) #34, !dbg !2548
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.112, i64 0, i64 0), i32 noundef 5) #34, !dbg !2552
  call void @llvm.dbg.value(metadata i8* %55, metadata !442, metadata !DIExpression()) #34, !dbg !2548
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.112, i64 0, i64 0), !dbg !2553
  br i1 %56, label %57, label %66, !dbg !2555

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2556
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2557
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !444, metadata !DIExpression()) #34, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2559, metadata !DIExpression()) #34, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %23, metadata !2567, metadata !DIExpression()) #34, !dbg !2572
  call void @llvm.dbg.value(metadata i32 0, metadata !2570, metadata !DIExpression()) #34, !dbg !2572
  call void @llvm.dbg.value(metadata i64 8, metadata !2571, metadata !DIExpression()) #34, !dbg !2572
  store i64 0, i64* %13, align 8, !dbg !2574
  call void @llvm.dbg.value(metadata i32* %12, metadata !443, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2548
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !2575
  %59 = icmp eq i64 %58, 3, !dbg !2577
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !443, metadata !DIExpression()) #34, !dbg !2548
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2578
  %63 = icmp eq i32 %37, 9, !dbg !2578
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !2578
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2579
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2579
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2548
  call void @llvm.dbg.value(metadata i8* %67, metadata !2478, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), metadata !440, metadata !DIExpression()) #34, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %37, metadata !441, metadata !DIExpression()) #34, !dbg !2580
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 noundef 5) #34, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %68, metadata !442, metadata !DIExpression()) #34, !dbg !2580
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !2583
  br i1 %69, label %70, label %79, !dbg !2584

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2585
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2586
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !444, metadata !DIExpression()) #34, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2559, metadata !DIExpression()) #34, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %26, metadata !2567, metadata !DIExpression()) #34, !dbg !2590
  call void @llvm.dbg.value(metadata i32 0, metadata !2570, metadata !DIExpression()) #34, !dbg !2590
  call void @llvm.dbg.value(metadata i64 8, metadata !2571, metadata !DIExpression()) #34, !dbg !2590
  store i64 0, i64* %11, align 8, !dbg !2592
  call void @llvm.dbg.value(metadata i32* %10, metadata !443, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2580
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !2593
  %72 = icmp eq i64 %71, 3, !dbg !2594
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !443, metadata !DIExpression()) #34, !dbg !2580
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2595
  %76 = icmp eq i32 %37, 9, !dbg !2595
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !2595
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2596
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2479, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %80, metadata !2478, metadata !DIExpression()), !dbg !2533
  br i1 %45, label %97, label %82, !dbg !2597

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2490, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i64 0, metadata !2481, metadata !DIExpression()), !dbg !2533
  %83 = load i8, i8* %80, align 1, !dbg !2599, !tbaa !722
  %84 = icmp eq i8 %83, 0, !dbg !2601
  br i1 %84, label %97, label %85, !dbg !2601

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2490, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i64 %88, metadata !2481, metadata !DIExpression()), !dbg !2533
  %89 = icmp ult i64 %88, %48, !dbg !2602
  br i1 %89, label %90, label %92, !dbg !2605

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2602
  store i8 %86, i8* %91, align 1, !dbg !2602, !tbaa !722
  br label %92, !dbg !2602

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %93, metadata !2481, metadata !DIExpression()), !dbg !2533
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %94, metadata !2490, metadata !DIExpression()), !dbg !2598
  %95 = load i8, i8* %94, align 1, !dbg !2599, !tbaa !722
  %96 = icmp eq i8 %95, 0, !dbg !2601
  br i1 %96, label %97, label %85, !dbg !2601, !llvm.loop !2607

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2609
  call void @llvm.dbg.value(metadata i64 %98, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 1, metadata !2485, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %81, metadata !2483, metadata !DIExpression()), !dbg !2533
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %99, metadata !2484, metadata !DIExpression()), !dbg !2533
  br label %111, !dbg !2611

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2485, metadata !DIExpression()), !dbg !2533
  br label %102, !dbg !2612

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2486, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2485, metadata !DIExpression()), !dbg !2533
  br i1 %45, label %102, label %105, !dbg !2613

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2486, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2485, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 2, metadata !2475, metadata !DIExpression()), !dbg !2533
  br label %111, !dbg !2614

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2486, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2485, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 2, metadata !2475, metadata !DIExpression()), !dbg !2533
  br i1 %45, label %111, label %105, !dbg !2614

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2615
  br i1 %107, label %111, label %108, !dbg !2619

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2615, !tbaa !722
  br label %111, !dbg !2615

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2486, metadata !DIExpression()), !dbg !2533
  br label %111, !dbg !2620

110:                                              ; preds = %36
  call void @abort() #36, !dbg !2621
  unreachable, !dbg !2621

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2609
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %102 ], !dbg !2533
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2533
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2486, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2485, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %117, metadata !2484, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %116, metadata !2483, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %115, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %114, metadata !2479, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %113, metadata !2478, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %112, metadata !2475, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 0, metadata !2495, metadata !DIExpression()), !dbg !2622
  %120 = icmp ne i32 %112, 2
  %121 = and i1 %120, %118
  %122 = icmp ne i64 %117, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = icmp ugt i64 %117, 1
  %125 = xor i1 %119, true
  %126 = icmp eq i32 %112, 2
  %127 = select i1 %119, i1 %122, i1 false
  %128 = or i1 %120, %125
  %129 = and i1 %126, %119
  %130 = xor i1 %118, true
  %131 = and i1 %34, %119
  br label %132, !dbg !2623

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2609
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2537
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2622
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %139, metadata !2495, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %135, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %134, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %133, metadata !2474, metadata !DIExpression()), !dbg !2533
  %141 = icmp eq i64 %133, -1, !dbg !2624
  br i1 %141, label %142, label %146, !dbg !2625

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2626
  %144 = load i8, i8* %143, align 1, !dbg !2626, !tbaa !722
  %145 = icmp eq i8 %144, 0, !dbg !2627
  br i1 %145, label %596, label %148, !dbg !2628

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2629
  br i1 %147, label %596, label %148, !dbg !2628

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2497, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2501, metadata !DIExpression()), !dbg !2630
  br i1 %123, label %149, label %163, !dbg !2631

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2633
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2634
  br i1 %151, label %152, label %154, !dbg !2634

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %153, metadata !2474, metadata !DIExpression()), !dbg !2533
  br label %154, !dbg !2636

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2636
  call void @llvm.dbg.value(metadata i64 %155, metadata !2474, metadata !DIExpression()), !dbg !2533
  %156 = icmp ugt i64 %150, %155, !dbg !2637
  br i1 %156, label %163, label %157, !dbg !2638

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %158, metadata !2640, metadata !DIExpression()) #34, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %116, metadata !2643, metadata !DIExpression()) #34, !dbg !2645
  call void @llvm.dbg.value(metadata i64 %117, metadata !2644, metadata !DIExpression()) #34, !dbg !2645
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !2647
  %160 = icmp ne i32 %159, 0, !dbg !2648
  %161 = or i1 %160, %125, !dbg !2649
  %162 = xor i1 %160, true, !dbg !2649
  br i1 %161, label %163, label %647, !dbg !2649

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2497, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %164, metadata !2474, metadata !DIExpression()), !dbg !2533
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2650
  %167 = load i8, i8* %166, align 1, !dbg !2650, !tbaa !722
  call void @llvm.dbg.value(metadata i8 %167, metadata !2502, metadata !DIExpression()), !dbg !2630
  switch i8 %167, label %298 [
    i8 0, label %168
    i8 63, label %216
    i8 7, label %263
    i8 8, label %252
    i8 12, label %253
    i8 10, label %261
    i8 13, label %254
    i8 9, label %255
    i8 11, label %256
    i8 92, label %257
    i8 123, label %265
    i8 125, label %265
    i8 35, label %269
    i8 126, label %269
    i8 32, label %271
    i8 33, label %272
    i8 34, label %272
    i8 36, label %272
    i8 38, label %272
    i8 40, label %272
    i8 41, label %272
    i8 42, label %272
    i8 59, label %272
    i8 60, label %272
    i8 61, label %272
    i8 62, label %272
    i8 91, label %272
    i8 94, label %272
    i8 96, label %272
    i8 124, label %272
    i8 39, label %275
    i8 37, label %456
    i8 43, label %456
    i8 44, label %456
    i8 45, label %456
    i8 46, label %456
    i8 47, label %456
    i8 48, label %456
    i8 49, label %456
    i8 50, label %456
    i8 51, label %456
    i8 52, label %456
    i8 53, label %456
    i8 54, label %456
    i8 55, label %456
    i8 56, label %456
    i8 57, label %456
    i8 58, label %456
    i8 65, label %456
    i8 66, label %456
    i8 67, label %456
    i8 68, label %456
    i8 69, label %456
    i8 70, label %456
    i8 71, label %456
    i8 72, label %456
    i8 73, label %456
    i8 74, label %456
    i8 75, label %456
    i8 76, label %456
    i8 77, label %456
    i8 78, label %456
    i8 79, label %456
    i8 80, label %456
    i8 81, label %456
    i8 82, label %456
    i8 83, label %456
    i8 84, label %456
    i8 85, label %456
    i8 86, label %456
    i8 87, label %456
    i8 88, label %456
    i8 89, label %456
    i8 90, label %456
    i8 93, label %456
    i8 95, label %456
    i8 97, label %456
    i8 98, label %456
    i8 99, label %456
    i8 100, label %456
    i8 101, label %456
    i8 102, label %456
    i8 103, label %456
    i8 104, label %456
    i8 105, label %456
    i8 106, label %456
    i8 107, label %456
    i8 108, label %456
    i8 109, label %456
    i8 110, label %456
    i8 111, label %456
    i8 112, label %456
    i8 113, label %456
    i8 114, label %456
    i8 115, label %456
    i8 116, label %456
    i8 117, label %456
    i8 118, label %456
    i8 119, label %456
    i8 120, label %456
    i8 121, label %456
    i8 122, label %456
  ], !dbg !2651

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2652

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2653

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2500, metadata !DIExpression()), !dbg !2630
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2657
  br i1 %171, label %188, label %172, !dbg !2657

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2659
  br i1 %173, label %174, label %176, !dbg !2663

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2659
  store i8 39, i8* %175, align 1, !dbg !2659, !tbaa !722
  br label %176, !dbg !2659

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %177, metadata !2481, metadata !DIExpression()), !dbg !2533
  %178 = icmp ult i64 %177, %140, !dbg !2664
  br i1 %178, label %179, label %181, !dbg !2667

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2664
  store i8 36, i8* %180, align 1, !dbg !2664, !tbaa !722
  br label %181, !dbg !2664

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %182, metadata !2481, metadata !DIExpression()), !dbg !2533
  %183 = icmp ult i64 %182, %140, !dbg !2668
  br i1 %183, label %184, label %186, !dbg !2671

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2668
  store i8 39, i8* %185, align 1, !dbg !2668, !tbaa !722
  br label %186, !dbg !2668

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %187, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 1, metadata !2489, metadata !DIExpression()), !dbg !2533
  br label %188, !dbg !2672

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2533
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %189, metadata !2481, metadata !DIExpression()), !dbg !2533
  %191 = icmp ult i64 %189, %140, !dbg !2673
  br i1 %191, label %192, label %194, !dbg !2676

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2673
  store i8 92, i8* %193, align 1, !dbg !2673, !tbaa !722
  br label %194, !dbg !2673

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %195, metadata !2481, metadata !DIExpression()), !dbg !2533
  br i1 %120, label %196, label %499, !dbg !2677

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2679
  %198 = icmp ult i64 %197, %164, !dbg !2680
  br i1 %198, label %199, label %456, !dbg !2681

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2682
  %201 = load i8, i8* %200, align 1, !dbg !2682, !tbaa !722
  %202 = add i8 %201, -48, !dbg !2683
  %203 = icmp ult i8 %202, 10, !dbg !2683
  br i1 %203, label %204, label %456, !dbg !2683

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2684
  br i1 %205, label %206, label %208, !dbg !2688

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2684
  store i8 48, i8* %207, align 1, !dbg !2684, !tbaa !722
  br label %208, !dbg !2684

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %209, metadata !2481, metadata !DIExpression()), !dbg !2533
  %210 = icmp ult i64 %209, %140, !dbg !2689
  br i1 %210, label %211, label %213, !dbg !2692

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2689
  store i8 48, i8* %212, align 1, !dbg !2689, !tbaa !722
  br label %213, !dbg !2689

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %214, metadata !2481, metadata !DIExpression()), !dbg !2533
  br label %456, !dbg !2693

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2694

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2695

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2696

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2698

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2700
  %221 = icmp ult i64 %220, %164, !dbg !2701
  br i1 %221, label %222, label %456, !dbg !2702

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2703
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2704
  %225 = load i8, i8* %224, align 1, !dbg !2704, !tbaa !722
  %226 = icmp eq i8 %225, 63, !dbg !2705
  br i1 %226, label %227, label %456, !dbg !2706

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2707
  %229 = load i8, i8* %228, align 1, !dbg !2707, !tbaa !722
  switch i8 %229, label %456 [
    i8 33, label %230
    i8 39, label %230
    i8 40, label %230
    i8 41, label %230
    i8 45, label %230
    i8 47, label %230
    i8 60, label %230
    i8 61, label %230
    i8 62, label %230
  ], !dbg !2708

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2709

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2502, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %220, metadata !2495, metadata !DIExpression()), !dbg !2622
  %232 = icmp ult i64 %134, %140, !dbg !2711
  br i1 %232, label %233, label %235, !dbg !2714

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2711
  store i8 63, i8* %234, align 1, !dbg !2711, !tbaa !722
  br label %235, !dbg !2711

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %236, metadata !2481, metadata !DIExpression()), !dbg !2533
  %237 = icmp ult i64 %236, %140, !dbg !2715
  br i1 %237, label %238, label %240, !dbg !2718

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2715
  store i8 34, i8* %239, align 1, !dbg !2715, !tbaa !722
  br label %240, !dbg !2715

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %241, metadata !2481, metadata !DIExpression()), !dbg !2533
  %242 = icmp ult i64 %241, %140, !dbg !2719
  br i1 %242, label %243, label %245, !dbg !2722

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2719
  store i8 34, i8* %244, align 1, !dbg !2719, !tbaa !722
  br label %245, !dbg !2719

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %246, metadata !2481, metadata !DIExpression()), !dbg !2533
  %247 = icmp ult i64 %246, %140, !dbg !2723
  br i1 %247, label %248, label %250, !dbg !2726

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2723
  store i8 63, i8* %249, align 1, !dbg !2723, !tbaa !722
  br label %250, !dbg !2723

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %251, metadata !2481, metadata !DIExpression()), !dbg !2533
  br label %456, !dbg !2727

252:                                              ; preds = %163
  br label %263, !dbg !2728

253:                                              ; preds = %163
  br label %263, !dbg !2729

254:                                              ; preds = %163
  br label %261, !dbg !2730

255:                                              ; preds = %163
  br label %261, !dbg !2731

256:                                              ; preds = %163
  br label %263, !dbg !2732

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2733

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2734

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2737

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2739

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2740
  call void @llvm.dbg.label(metadata !2527), !dbg !2741
  br i1 %128, label %263, label %638, !dbg !2742

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2740
  call void @llvm.dbg.label(metadata !2529), !dbg !2744
  br i1 %118, label %510, label %467, !dbg !2745

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2746

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2747, !tbaa !722
  %268 = icmp eq i8 %267, 0, !dbg !2749
  br i1 %268, label %269, label %456, !dbg !2750

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2751
  br i1 %270, label %271, label %456, !dbg !2753

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2501, metadata !DIExpression()), !dbg !2630
  br label %272, !dbg !2754

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2501, metadata !DIExpression()), !dbg !2630
  br i1 %126, label %274, label %456, !dbg !2755

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2757

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 1, metadata !2501, metadata !DIExpression()), !dbg !2630
  br i1 %126, label %276, label %456, !dbg !2758

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2759

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2762
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2764
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2764
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %282, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %281, metadata !2482, metadata !DIExpression()), !dbg !2533
  %283 = icmp ult i64 %134, %282, !dbg !2765
  br i1 %283, label %284, label %286, !dbg !2768

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2765
  store i8 39, i8* %285, align 1, !dbg !2765, !tbaa !722
  br label %286, !dbg !2765

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2768
  call void @llvm.dbg.value(metadata i64 %287, metadata !2481, metadata !DIExpression()), !dbg !2533
  %288 = icmp ult i64 %287, %282, !dbg !2769
  br i1 %288, label %289, label %291, !dbg !2772

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2769
  store i8 92, i8* %290, align 1, !dbg !2769, !tbaa !722
  br label %291, !dbg !2769

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %292, metadata !2481, metadata !DIExpression()), !dbg !2533
  %293 = icmp ult i64 %292, %282, !dbg !2773
  br i1 %293, label %294, label %296, !dbg !2776

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2773
  store i8 39, i8* %295, align 1, !dbg !2773, !tbaa !722
  br label %296, !dbg !2773

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %297, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2533
  br label %456, !dbg !2777

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2778

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2503, metadata !DIExpression()), !dbg !2779
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !2780
  %301 = load i16*, i16** %300, align 8, !dbg !2780, !tbaa !609
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2780
  %304 = load i16, i16* %303, align 2, !dbg !2780, !tbaa !747
  %305 = and i16 %304, 16384, !dbg !2780
  %306 = icmp ne i16 %305, 0, !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2506, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %349, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %312, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i1 %350, metadata !2501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  br label %352, !dbg !2783

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2784
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2507, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2559, metadata !DIExpression()) #34, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %32, metadata !2567, metadata !DIExpression()) #34, !dbg !2788
  call void @llvm.dbg.value(metadata i32 0, metadata !2570, metadata !DIExpression()) #34, !dbg !2788
  call void @llvm.dbg.value(metadata i64 8, metadata !2571, metadata !DIExpression()) #34, !dbg !2788
  store i64 0, i64* %14, align 8, !dbg !2790
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8 1, metadata !2506, metadata !DIExpression()), !dbg !2779
  %308 = icmp eq i64 %164, -1, !dbg !2791
  br i1 %308, label %309, label %311, !dbg !2793

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %310, metadata !2474, metadata !DIExpression()), !dbg !2533
  br label %311, !dbg !2795

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2630
  call void @llvm.dbg.value(metadata i64 %312, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2796
  %313 = sub i64 %312, %139, !dbg !2797
  call void @llvm.dbg.value(metadata i32* %16, metadata !2510, metadata !DIExpression(DW_OP_deref)), !dbg !2798
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %314, metadata !2514, metadata !DIExpression()), !dbg !2798
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2800

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2779
  %316 = icmp ugt i64 %312, %139, !dbg !2801
  br i1 %316, label %319, label %317, !dbg !2803

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2506, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %349, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %312, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i1 %350, metadata !2501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  br label %352, !dbg !2783

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2779
  br label %346, !dbg !2806

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2503, metadata !DIExpression()), !dbg !2779
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2808
  %323 = load i8, i8* %322, align 1, !dbg !2808, !tbaa !722
  %324 = icmp eq i8 %323, 0, !dbg !2803
  br i1 %324, label %348, label %325, !dbg !2809

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %326, metadata !2503, metadata !DIExpression()), !dbg !2779
  %327 = add i64 %326, %139, !dbg !2811
  %328 = icmp eq i64 %326, %313, !dbg !2801
  br i1 %328, label %348, label %319, !dbg !2803, !llvm.loop !2812

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2813
  call void @llvm.dbg.value(metadata i64 1, metadata !2515, metadata !DIExpression()), !dbg !2814
  br i1 %331, label %332, label %340, !dbg !2813

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2515, metadata !DIExpression()), !dbg !2814
  %334 = add i64 %333, %139, !dbg !2815
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2817
  %336 = load i8, i8* %335, align 1, !dbg !2817, !tbaa !722
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2818

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %338, metadata !2515, metadata !DIExpression()), !dbg !2814
  %339 = icmp eq i64 %338, %314, !dbg !2820
  br i1 %339, label %340, label %332, !dbg !2821, !llvm.loop !2822

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2824, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %341, metadata !2510, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 %341, metadata !2826, metadata !DIExpression()) #34, !dbg !2834
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !2836
  %343 = icmp ne i32 %342, 0, !dbg !2837
  call void @llvm.dbg.value(metadata i8 poison, metadata !2506, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %314, metadata !2503, metadata !DIExpression()), !dbg !2779
  br label %348, !dbg !2838

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2506, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2805
  call void @llvm.dbg.label(metadata !2532), !dbg !2839
  %345 = select i1 %118, i32 4, i32 2, !dbg !2840
  br label %643, !dbg !2840

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2506, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %349, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %312, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i1 %350, metadata !2501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  br label %352, !dbg !2783

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2506, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %349, metadata !2503, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %312, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i1 %350, metadata !2501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  %351 = icmp ugt i64 %349, 1, !dbg !2842
  br i1 %351, label %357, label %352, !dbg !2783

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2843
  br i1 %356, label %456, label %357, !dbg !2843

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %361, metadata !2523, metadata !DIExpression()), !dbg !2845
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2846

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2533
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2622
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2847
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %369, metadata !2502, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %368, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2497, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %366, metadata !2495, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %364, metadata !2481, metadata !DIExpression()), !dbg !2533
  br i1 %362, label %414, label %370, !dbg !2848

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2853

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2500, metadata !DIExpression()), !dbg !2630
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2856
  br i1 %372, label %389, label %373, !dbg !2856

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2858
  br i1 %374, label %375, label %377, !dbg !2862

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2858
  store i8 39, i8* %376, align 1, !dbg !2858, !tbaa !722
  br label %377, !dbg !2858

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %378, metadata !2481, metadata !DIExpression()), !dbg !2533
  %379 = icmp ult i64 %378, %140, !dbg !2863
  br i1 %379, label %380, label %382, !dbg !2866

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2863
  store i8 36, i8* %381, align 1, !dbg !2863, !tbaa !722
  br label %382, !dbg !2863

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %383, metadata !2481, metadata !DIExpression()), !dbg !2533
  %384 = icmp ult i64 %383, %140, !dbg !2867
  br i1 %384, label %385, label %387, !dbg !2870

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2867
  store i8 39, i8* %386, align 1, !dbg !2867, !tbaa !722
  br label %387, !dbg !2867

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %388, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 1, metadata !2489, metadata !DIExpression()), !dbg !2533
  br label %389, !dbg !2871

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2533
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %390, metadata !2481, metadata !DIExpression()), !dbg !2533
  %392 = icmp ult i64 %390, %140, !dbg !2872
  br i1 %392, label %393, label %395, !dbg !2875

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2872
  store i8 92, i8* %394, align 1, !dbg !2872, !tbaa !722
  br label %395, !dbg !2872

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %396, metadata !2481, metadata !DIExpression()), !dbg !2533
  %397 = icmp ult i64 %396, %140, !dbg !2876
  br i1 %397, label %398, label %402, !dbg !2879

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2876
  %400 = or i8 %399, 48, !dbg !2876
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2876
  store i8 %400, i8* %401, align 1, !dbg !2876, !tbaa !722
  br label %402, !dbg !2876

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %403, metadata !2481, metadata !DIExpression()), !dbg !2533
  %404 = icmp ult i64 %403, %140, !dbg !2880
  br i1 %404, label %405, label %410, !dbg !2883

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2880
  %407 = and i8 %406, 7, !dbg !2880
  %408 = or i8 %407, 48, !dbg !2880
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2880
  store i8 %408, i8* %409, align 1, !dbg !2880, !tbaa !722
  br label %410, !dbg !2880

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %411, metadata !2481, metadata !DIExpression()), !dbg !2533
  %412 = and i8 %369, 7, !dbg !2884
  %413 = or i8 %412, 48, !dbg !2885
  call void @llvm.dbg.value(metadata i8 %413, metadata !2502, metadata !DIExpression()), !dbg !2630
  br label %421, !dbg !2886

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2887

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2888
  br i1 %416, label %417, label %419, !dbg !2893

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2888
  store i8 92, i8* %418, align 1, !dbg !2888, !tbaa !722
  br label %419, !dbg !2888

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %420, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2497, metadata !DIExpression()), !dbg !2630
  br label %421, !dbg !2894

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2533
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2630
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %426, metadata !2502, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %425, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2497, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %422, metadata !2481, metadata !DIExpression()), !dbg !2533
  %427 = add i64 %366, 1, !dbg !2895
  %428 = icmp ugt i64 %361, %427, !dbg !2897
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2898

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2899
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2899
  br i1 %432, label %433, label %444, !dbg !2899

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2902
  br i1 %434, label %435, label %437, !dbg !2906

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2902
  store i8 39, i8* %436, align 1, !dbg !2902, !tbaa !722
  br label %437, !dbg !2902

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %438, metadata !2481, metadata !DIExpression()), !dbg !2533
  %439 = icmp ult i64 %438, %140, !dbg !2907
  br i1 %439, label %440, label %442, !dbg !2910

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2907
  store i8 39, i8* %441, align 1, !dbg !2907, !tbaa !722
  br label %442, !dbg !2907

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %443, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2533
  br label %444, !dbg !2911

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2912
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %445, metadata !2481, metadata !DIExpression()), !dbg !2533
  %447 = icmp ult i64 %445, %140, !dbg !2913
  br i1 %447, label %448, label %450, !dbg !2916

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2913
  store i8 %426, i8* %449, align 1, !dbg !2913, !tbaa !722
  br label %450, !dbg !2913

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %451, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %427, metadata !2495, metadata !DIExpression()), !dbg !2622
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2917
  %453 = load i8, i8* %452, align 1, !dbg !2917, !tbaa !722
  call void @llvm.dbg.value(metadata i8 %453, metadata !2502, metadata !DIExpression()), !dbg !2630
  br label %363, !dbg !2918, !llvm.loop !2919

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2502, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i1 %358, metadata !2501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %425, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2497, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %366, metadata !2495, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %422, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %360, metadata !2474, metadata !DIExpression()), !dbg !2533
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2922
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2533
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2537
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2622
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2630
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %465, metadata !2502, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2501, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2497, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %462, metadata !2495, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %459, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %458, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %457, metadata !2474, metadata !DIExpression()), !dbg !2533
  br i1 %121, label %478, label %467, !dbg !2923

467:                                              ; preds = %259, %215, %263, %456
  %468 = phi i64 [ %466, %456 ], [ %140, %263 ], [ %140, %215 ], [ %140, %259 ]
  %469 = phi i8 [ %465, %456 ], [ %167, %263 ], [ 0, %215 ], [ 92, %259 ]
  %470 = phi i1 [ %464, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %471 = phi i1 [ %463, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %472 = phi i64 [ %462, %456 ], [ %139, %263 ], [ %139, %215 ], [ %139, %259 ]
  %473 = phi i1 [ %461, %456 ], [ %138, %263 ], [ %138, %215 ], [ %138, %259 ]
  %474 = phi i1 [ %460, %456 ], [ %136, %263 ], [ %136, %215 ], [ %136, %259 ]
  %475 = phi i64 [ %459, %456 ], [ %135, %263 ], [ %135, %215 ], [ %135, %259 ]
  %476 = phi i64 [ %458, %456 ], [ %134, %263 ], [ %134, %215 ], [ %134, %259 ]
  %477 = phi i64 [ %457, %456 ], [ %164, %263 ], [ %164, %215 ], [ %164, %259 ]
  br i1 %131, label %479, label %499, !dbg !2925

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2926

479:                                              ; preds = %467, %478
  %480 = phi i64 [ %468, %467 ], [ %466, %478 ]
  %481 = phi i8 [ %469, %467 ], [ %465, %478 ]
  %482 = phi i1 [ %470, %467 ], [ %464, %478 ]
  %483 = phi i1 [ %471, %467 ], [ %463, %478 ]
  %484 = phi i64 [ %472, %467 ], [ %462, %478 ]
  %485 = phi i1 [ %473, %467 ], [ %461, %478 ]
  %486 = phi i1 [ %474, %467 ], [ %460, %478 ]
  %487 = phi i64 [ %475, %467 ], [ %459, %478 ]
  %488 = phi i64 [ %476, %467 ], [ %458, %478 ]
  %489 = phi i64 [ %477, %467 ], [ %457, %478 ]
  %490 = lshr i8 %481, 5, !dbg !2927
  %491 = zext i8 %490 to i64, !dbg !2927
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2928
  %493 = load i32, i32* %492, align 4, !dbg !2928, !tbaa !713
  %494 = and i8 %481, 31, !dbg !2929
  %495 = zext i8 %494 to i32, !dbg !2929
  %496 = shl nuw i32 1, %495, !dbg !2930
  %497 = and i32 %493, %496, !dbg !2930
  %498 = icmp eq i32 %497, 0, !dbg !2930
  br i1 %498, label %499, label %510, !dbg !2931

499:                                              ; preds = %194, %479, %478, %467
  %500 = phi i64 [ %480, %479 ], [ %466, %478 ], [ %468, %467 ], [ %140, %194 ]
  %501 = phi i8 [ %481, %479 ], [ %465, %478 ], [ %469, %467 ], [ 48, %194 ]
  %502 = phi i1 [ %482, %479 ], [ %464, %478 ], [ %470, %467 ], [ false, %194 ]
  %503 = phi i1 [ %483, %479 ], [ %463, %478 ], [ %471, %467 ], [ true, %194 ]
  %504 = phi i64 [ %484, %479 ], [ %462, %478 ], [ %472, %467 ], [ %139, %194 ]
  %505 = phi i1 [ %485, %479 ], [ %461, %478 ], [ %473, %467 ], [ %190, %194 ]
  %506 = phi i1 [ %486, %479 ], [ %460, %478 ], [ %474, %467 ], [ %136, %194 ]
  %507 = phi i64 [ %487, %479 ], [ %459, %478 ], [ %475, %467 ], [ %135, %194 ]
  %508 = phi i64 [ %488, %479 ], [ %458, %478 ], [ %476, %467 ], [ %195, %194 ]
  %509 = phi i64 [ %489, %479 ], [ %457, %478 ], [ %477, %467 ], [ %164, %194 ]
  br i1 %165, label %510, label %546, !dbg !2932

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2922
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2533
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2537
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2933
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2630
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %518, metadata !2502, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2501, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %516, metadata !2495, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %513, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %512, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %511, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.label(metadata !2530), !dbg !2934
  br i1 %119, label %638, label %520, !dbg !2935

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2500, metadata !DIExpression()), !dbg !2630
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2937
  br i1 %521, label %538, label %522, !dbg !2937

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2939
  br i1 %523, label %524, label %526, !dbg !2943

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2939
  store i8 39, i8* %525, align 1, !dbg !2939, !tbaa !722
  br label %526, !dbg !2939

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %527, metadata !2481, metadata !DIExpression()), !dbg !2533
  %528 = icmp ult i64 %527, %519, !dbg !2944
  br i1 %528, label %529, label %531, !dbg !2947

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2944
  store i8 36, i8* %530, align 1, !dbg !2944, !tbaa !722
  br label %531, !dbg !2944

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %532, metadata !2481, metadata !DIExpression()), !dbg !2533
  %533 = icmp ult i64 %532, %519, !dbg !2948
  br i1 %533, label %534, label %536, !dbg !2951

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2948
  store i8 39, i8* %535, align 1, !dbg !2948, !tbaa !722
  br label %536, !dbg !2948

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %537, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 1, metadata !2489, metadata !DIExpression()), !dbg !2533
  br label %538, !dbg !2952

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2630
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %539, metadata !2481, metadata !DIExpression()), !dbg !2533
  %541 = icmp ult i64 %539, %519, !dbg !2953
  br i1 %541, label %542, label %544, !dbg !2956

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2953
  store i8 92, i8* %543, align 1, !dbg !2953, !tbaa !722
  br label %544, !dbg !2953

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %556, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %555, metadata !2502, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2501, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %552, metadata !2495, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %549, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %548, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %547, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.label(metadata !2531), !dbg !2957
  br label %570, !dbg !2958

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2922
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2533
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2537
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2933
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2961
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %555, metadata !2502, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2501, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 poison, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %552, metadata !2495, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %549, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %548, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %547, metadata !2474, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.label(metadata !2531), !dbg !2957
  %557 = xor i1 %551, true, !dbg !2958
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2958
  br i1 %558, label %570, label %559, !dbg !2958

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2962
  br i1 %560, label %561, label %563, !dbg !2966

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2962
  store i8 39, i8* %562, align 1, !dbg !2962, !tbaa !722
  br label %563, !dbg !2962

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %564, metadata !2481, metadata !DIExpression()), !dbg !2533
  %565 = icmp ult i64 %564, %556, !dbg !2967
  br i1 %565, label %566, label %568, !dbg !2970

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2967
  store i8 39, i8* %567, align 1, !dbg !2967, !tbaa !722
  br label %568, !dbg !2967

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %569, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2533
  br label %570, !dbg !2971

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2630
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %578, metadata !2481, metadata !DIExpression()), !dbg !2533
  %580 = icmp ult i64 %578, %571, !dbg !2972
  br i1 %580, label %581, label %583, !dbg !2975

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2972
  store i8 %572, i8* %582, align 1, !dbg !2972, !tbaa !722
  br label %583, !dbg !2972

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %584, metadata !2481, metadata !DIExpression()), !dbg !2533
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2976
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2533
  br label %586, !dbg !2977

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2922
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2533
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2537
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2933
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %593, metadata !2495, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %589, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %588, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %587, metadata !2474, metadata !DIExpression()), !dbg !2533
  %595 = add i64 %593, 1, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %595, metadata !2495, metadata !DIExpression()), !dbg !2622
  br label %132, !dbg !2979, !llvm.loop !2980

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2472, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 undef, metadata !2482, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 undef, metadata !2481, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 undef, metadata !2474, metadata !DIExpression()), !dbg !2533
  %597 = icmp eq i64 %134, 0, !dbg !2982
  %598 = and i1 %126, %597, !dbg !2984
  %599 = and i1 %598, %119, !dbg !2984
  br i1 %599, label %638, label %600, !dbg !2984

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2985
  %602 = or i1 %119, %601, !dbg !2985
  %603 = xor i1 %136, true, !dbg !2985
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2985
  br i1 %604, label %612, label %605, !dbg !2985

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2987

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2989
  br label %653, !dbg !2991

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2992
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2994
  br i1 %611, label %36, label %612, !dbg !2994

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2995
  %615 = or i1 %614, %613, !dbg !2997
  br i1 %615, label %631, label %616, !dbg !2997

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2483, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %134, metadata !2481, metadata !DIExpression()), !dbg !2533
  %617 = load i8, i8* %116, align 1, !dbg !2998, !tbaa !722
  %618 = icmp eq i8 %617, 0, !dbg !3001
  br i1 %618, label %631, label %619, !dbg !3001

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2483, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %622, metadata !2481, metadata !DIExpression()), !dbg !2533
  %623 = icmp ult i64 %622, %140, !dbg !3002
  br i1 %623, label %624, label %626, !dbg !3005

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3002
  store i8 %620, i8* %625, align 1, !dbg !3002, !tbaa !722
  br label %626, !dbg !3002

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %627, metadata !2481, metadata !DIExpression()), !dbg !2533
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3006
  call void @llvm.dbg.value(metadata i8* %628, metadata !2483, metadata !DIExpression()), !dbg !2533
  %629 = load i8, i8* %628, align 1, !dbg !2998, !tbaa !722
  %630 = icmp eq i8 %629, 0, !dbg !3001
  br i1 %630, label %631, label %619, !dbg !3001, !llvm.loop !3007

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2609
  call void @llvm.dbg.value(metadata i64 %632, metadata !2481, metadata !DIExpression()), !dbg !2533
  %633 = icmp ult i64 %632, %140, !dbg !3009
  br i1 %633, label %634, label %653, !dbg !3011

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3012
  store i8 0, i8* %635, align 1, !dbg !3013, !tbaa !722
  br label %653, !dbg !3012

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2532), !dbg !2839
  %637 = icmp eq i32 %112, 2, !dbg !3014
  br i1 %637, label %643, label %647, !dbg !2840

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2532), !dbg !2839
  %641 = icmp eq i32 %112, 2, !dbg !3014
  %642 = select i1 %118, i32 4, i32 2, !dbg !2840
  br i1 %641, label %643, label %647, !dbg !2840

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2840

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2475, metadata !DIExpression()), !dbg !2533
  %651 = and i32 %5, -3, !dbg !3015
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3016
  br label %653, !dbg !3017

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3018
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3019 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !3021 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3027, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8* %0, metadata !3029, metadata !DIExpression()) #34, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()) #34, !dbg !3042
  call void @llvm.dbg.value(metadata i64* null, metadata !3035, metadata !DIExpression()) #34, !dbg !3042
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3036, metadata !DIExpression()) #34, !dbg !3042
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3044
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3037, metadata !DIExpression()) #34, !dbg !3042
  %6 = tail call i32* @__errno_location() #37, !dbg !3045
  %7 = load i32, i32* %6, align 4, !dbg !3045, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %7, metadata !3038, metadata !DIExpression()) #34, !dbg !3042
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3046
  %9 = load i32, i32* %8, align 4, !dbg !3046, !tbaa !2415
  %10 = or i32 %9, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i32 %10, metadata !3039, metadata !DIExpression()) #34, !dbg !3042
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3048
  %12 = load i32, i32* %11, align 8, !dbg !3048, !tbaa !2364
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3049
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3050
  %15 = load i8*, i8** %14, align 8, !dbg !3050, !tbaa !2437
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3051
  %17 = load i8*, i8** %16, align 8, !dbg !3051, !tbaa !2440
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !3052
  %19 = add i64 %18, 1, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %19, metadata !3040, metadata !DIExpression()) #34, !dbg !3042
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %20, metadata !3041, metadata !DIExpression()) #34, !dbg !3042
  %21 = load i32, i32* %11, align 8, !dbg !3055, !tbaa !2364
  %22 = load i8*, i8** %14, align 8, !dbg !3056, !tbaa !2437
  %23 = load i8*, i8** %16, align 8, !dbg !3057, !tbaa !2440
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !3058
  store i32 %7, i32* %6, align 4, !dbg !3059, !tbaa !713
  ret i8* %20, !dbg !3060
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !3030 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3029, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64* %2, metadata !3035, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3036, metadata !DIExpression()), !dbg !3061
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3062
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3037, metadata !DIExpression()), !dbg !3061
  %7 = tail call i32* @__errno_location() #37, !dbg !3063
  %8 = load i32, i32* %7, align 4, !dbg !3063, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %8, metadata !3038, metadata !DIExpression()), !dbg !3061
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3064
  %10 = load i32, i32* %9, align 4, !dbg !3064, !tbaa !2415
  %11 = icmp eq i64* %2, null, !dbg !3065
  %12 = zext i1 %11 to i32, !dbg !3065
  %13 = or i32 %10, %12, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %13, metadata !3039, metadata !DIExpression()), !dbg !3061
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3067
  %15 = load i32, i32* %14, align 8, !dbg !3067, !tbaa !2364
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3068
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3069
  %18 = load i8*, i8** %17, align 8, !dbg !3069, !tbaa !2437
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3070
  %20 = load i8*, i8** %19, align 8, !dbg !3070, !tbaa !2440
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3071
  %22 = add i64 %21, 1, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %22, metadata !3040, metadata !DIExpression()), !dbg !3061
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %23, metadata !3041, metadata !DIExpression()), !dbg !3061
  %24 = load i32, i32* %14, align 8, !dbg !3074, !tbaa !2364
  %25 = load i8*, i8** %17, align 8, !dbg !3075, !tbaa !2437
  %26 = load i8*, i8** %19, align 8, !dbg !3076, !tbaa !2440
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3077
  store i32 %8, i32* %7, align 4, !dbg !3078, !tbaa !713
  br i1 %11, label %29, label %28, !dbg !3079

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3080, !tbaa !883
  br label %29, !dbg !3082

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3083
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3084 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3089, !tbaa !609
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3086, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i32 1, metadata !3087, metadata !DIExpression()), !dbg !3091
  %2 = load i32, i32* @nslots, align 4, !tbaa !713
  call void @llvm.dbg.value(metadata i32 1, metadata !3087, metadata !DIExpression()), !dbg !3091
  %3 = icmp sgt i32 %2, 1, !dbg !3092
  br i1 %3, label %4, label %6, !dbg !3094

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3092
  br label %10, !dbg !3094

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3095
  %8 = load i8*, i8** %7, align 8, !dbg !3095, !tbaa !3097
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3099
  br i1 %9, label %17, label %16, !dbg !3100

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3087, metadata !DIExpression()), !dbg !3091
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3101
  %13 = load i8*, i8** %12, align 8, !dbg !3101, !tbaa !3097
  tail call void @free(i8* noundef %13) #34, !dbg !3102
  %14 = add nuw nsw i64 %11, 1, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %14, metadata !3087, metadata !DIExpression()), !dbg !3091
  %15 = icmp eq i64 %14, %5, !dbg !3092
  br i1 %15, label %6, label %10, !dbg !3094, !llvm.loop !3104

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !3106
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3108, !tbaa !3109
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3110, !tbaa !3097
  br label %17, !dbg !3111

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3112
  br i1 %18, label %21, label %19, !dbg !3114

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3115
  tail call void @free(i8* noundef %20) #34, !dbg !3117
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3118, !tbaa !609
  br label %21, !dbg !3119

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3120, !tbaa !713
  ret void, !dbg !3121
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3122 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %1, metadata !3125, metadata !DIExpression()), !dbg !3126
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3127
  ret i8* %3, !dbg !3128
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !3129 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3133, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* %1, metadata !3134, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %2, metadata !3135, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3136, metadata !DIExpression()), !dbg !3149
  %6 = tail call i32* @__errno_location() #37, !dbg !3150
  %7 = load i32, i32* %6, align 4, !dbg !3150, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %7, metadata !3137, metadata !DIExpression()), !dbg !3149
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3151, !tbaa !609
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3138, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3139, metadata !DIExpression()), !dbg !3149
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3152
  br i1 %9, label %10, label %11, !dbg !3152

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3154
  unreachable, !dbg !3154

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3155, !tbaa !713
  %13 = icmp sgt i32 %12, %0, !dbg !3156
  br i1 %13, label %36, label %14, !dbg !3157

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3158
  call void @llvm.dbg.value(metadata i1 %15, metadata !3140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  %16 = bitcast i64* %5 to i8*, !dbg !3160
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !3160
  %17 = sext i32 %12 to i64, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %17, metadata !3143, metadata !DIExpression()), !dbg !3159
  store i64 %17, i64* %5, align 8, !dbg !3162, !tbaa !883
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3163
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3163
  %20 = add nuw nsw i32 %0, 1, !dbg !3164
  %21 = sub i32 %20, %12, !dbg !3165
  %22 = sext i32 %21 to i64, !dbg !3166
  call void @llvm.dbg.value(metadata i64* %5, metadata !3143, metadata !DIExpression(DW_OP_deref)), !dbg !3159
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !3167
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3138, metadata !DIExpression()), !dbg !3149
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3168, !tbaa !609
  br i1 %15, label %25, label %26, !dbg !3169

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3170, !tbaa.struct !3172
  br label %26, !dbg !3173

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3174, !tbaa !713
  %28 = sext i32 %27 to i64, !dbg !3175
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3175
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3176
  %31 = load i64, i64* %5, align 8, !dbg !3177, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %31, metadata !3143, metadata !DIExpression()), !dbg !3159
  %32 = sub nsw i64 %31, %28, !dbg !3178
  %33 = shl i64 %32, 4, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %30, metadata !2567, metadata !DIExpression()) #34, !dbg !3180
  call void @llvm.dbg.value(metadata i32 0, metadata !2570, metadata !DIExpression()) #34, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %33, metadata !2571, metadata !DIExpression()) #34, !dbg !3180
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !3182
  %34 = load i64, i64* %5, align 8, !dbg !3183, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %34, metadata !3143, metadata !DIExpression()), !dbg !3159
  %35 = trunc i64 %34 to i32, !dbg !3183
  store i32 %35, i32* @nslots, align 4, !dbg !3184, !tbaa !713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !3185
  br label %36, !dbg !3186

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3149
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3138, metadata !DIExpression()), !dbg !3149
  %38 = zext i32 %0 to i64, !dbg !3187
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3188
  %40 = load i64, i64* %39, align 8, !dbg !3188, !tbaa !3109
  call void @llvm.dbg.value(metadata i64 %40, metadata !3144, metadata !DIExpression()), !dbg !3189
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3190
  %42 = load i8*, i8** %41, align 8, !dbg !3190, !tbaa !3097
  call void @llvm.dbg.value(metadata i8* %42, metadata !3146, metadata !DIExpression()), !dbg !3189
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3191
  %44 = load i32, i32* %43, align 4, !dbg !3191, !tbaa !2415
  %45 = or i32 %44, 1, !dbg !3192
  call void @llvm.dbg.value(metadata i32 %45, metadata !3147, metadata !DIExpression()), !dbg !3189
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3193
  %47 = load i32, i32* %46, align 8, !dbg !3193, !tbaa !2364
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3194
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3195
  %50 = load i8*, i8** %49, align 8, !dbg !3195, !tbaa !2437
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3196
  %52 = load i8*, i8** %51, align 8, !dbg !3196, !tbaa !2440
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %53, metadata !3148, metadata !DIExpression()), !dbg !3189
  %54 = icmp ugt i64 %40, %53, !dbg !3198
  br i1 %54, label %65, label %55, !dbg !3200

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %56, metadata !3144, metadata !DIExpression()), !dbg !3189
  store i64 %56, i64* %39, align 8, !dbg !3203, !tbaa !3109
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3204
  br i1 %57, label %59, label %58, !dbg !3206

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !3207
  br label %59, !dbg !3207

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %60, metadata !3146, metadata !DIExpression()), !dbg !3189
  store i8* %60, i8** %41, align 8, !dbg !3209, !tbaa !3097
  %61 = load i32, i32* %46, align 8, !dbg !3210, !tbaa !2364
  %62 = load i8*, i8** %49, align 8, !dbg !3211, !tbaa !2437
  %63 = load i8*, i8** %51, align 8, !dbg !3212, !tbaa !2440
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3213
  br label %65, !dbg !3214

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3189
  call void @llvm.dbg.value(metadata i8* %66, metadata !3146, metadata !DIExpression()), !dbg !3189
  store i32 %7, i32* %6, align 4, !dbg !3215, !tbaa !713
  ret i8* %66, !dbg !3216
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3221, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8* %1, metadata !3222, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %2, metadata !3223, metadata !DIExpression()), !dbg !3224
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3225
  ret i8* %4, !dbg !3226
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3227 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()) #34, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %0, metadata !3125, metadata !DIExpression()) #34, !dbg !3231
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !3233
  ret i8* %2, !dbg !3234
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 0, metadata !3221, metadata !DIExpression()) #34, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %0, metadata !3222, metadata !DIExpression()) #34, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()) #34, !dbg !3242
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !3244
  ret i8* %3, !dbg !3245
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3246 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3250, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %1, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %2, metadata !3252, metadata !DIExpression()), !dbg !3254
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3255
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3253, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %1, metadata !3261, metadata !DIExpression()) #34, !dbg !3267
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3266, metadata !DIExpression()) #34, !dbg !3269
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3269, !alias.scope !3257
  %6 = icmp eq i32 %1, 10, !dbg !3270
  br i1 %6, label %7, label %8, !dbg !3272

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3273, !noalias !3257
  unreachable, !dbg !3273

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3274
  store i32 %1, i32* %9, align 8, !dbg !3275, !tbaa !2364, !alias.scope !3257
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3277
  ret i8* %10, !dbg !3278
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3279 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 %1, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %2, metadata !3285, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %3, metadata !3286, metadata !DIExpression()), !dbg !3288
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3289
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3289
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3287, metadata !DIExpression()), !dbg !3290
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291), !dbg !3294
  call void @llvm.dbg.value(metadata i32 %1, metadata !3261, metadata !DIExpression()) #34, !dbg !3295
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3266, metadata !DIExpression()) #34, !dbg !3297
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !3297, !alias.scope !3291
  %7 = icmp eq i32 %1, 10, !dbg !3298
  br i1 %7, label %8, label %9, !dbg !3299

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !3300, !noalias !3291
  unreachable, !dbg !3300

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3301
  store i32 %1, i32* %10, align 8, !dbg !3302, !tbaa !2364, !alias.scope !3291
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3303
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3304
  ret i8* %11, !dbg !3305
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3306 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3310, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8* %1, metadata !3311, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 0, metadata !3250, metadata !DIExpression()) #34, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %0, metadata !3251, metadata !DIExpression()) #34, !dbg !3313
  call void @llvm.dbg.value(metadata i8* %1, metadata !3252, metadata !DIExpression()) #34, !dbg !3313
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3315
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3315
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3253, metadata !DIExpression()) #34, !dbg !3316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3317) #34, !dbg !3320
  call void @llvm.dbg.value(metadata i32 %0, metadata !3261, metadata !DIExpression()) #34, !dbg !3321
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3266, metadata !DIExpression()) #34, !dbg !3323
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !3323, !alias.scope !3317
  %5 = icmp eq i32 %0, 10, !dbg !3324
  br i1 %5, label %6, label %7, !dbg !3325

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !3326, !noalias !3317
  unreachable, !dbg !3326

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3327
  store i32 %0, i32* %8, align 8, !dbg !3328, !tbaa !2364, !alias.scope !3317
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3329
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3330
  ret i8* %9, !dbg !3331
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3332 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3336, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8* %1, metadata !3337, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %2, metadata !3338, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 0, metadata !3283, metadata !DIExpression()) #34, !dbg !3340
  call void @llvm.dbg.value(metadata i32 %0, metadata !3284, metadata !DIExpression()) #34, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %1, metadata !3285, metadata !DIExpression()) #34, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %2, metadata !3286, metadata !DIExpression()) #34, !dbg !3340
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3342
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3342
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3287, metadata !DIExpression()) #34, !dbg !3343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3344) #34, !dbg !3347
  call void @llvm.dbg.value(metadata i32 %0, metadata !3261, metadata !DIExpression()) #34, !dbg !3348
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3266, metadata !DIExpression()) #34, !dbg !3350
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3350, !alias.scope !3344
  %6 = icmp eq i32 %0, 10, !dbg !3351
  br i1 %6, label %7, label %8, !dbg !3352

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3353, !noalias !3344
  unreachable, !dbg !3353

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3354
  store i32 %0, i32* %9, align 8, !dbg !3355, !tbaa !2364, !alias.scope !3344
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3356
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3357
  ret i8* %10, !dbg !3358
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3359 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3364, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 %2, metadata !3365, metadata !DIExpression()), !dbg !3367
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3368
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3368
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3366, metadata !DIExpression()), !dbg !3369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3370, !tbaa.struct !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2382, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 %2, metadata !2383, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32 1, metadata !2384, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 %2, metadata !2385, metadata !DIExpression()), !dbg !3372
  %6 = lshr i8 %2, 5, !dbg !3374
  %7 = zext i8 %6 to i64, !dbg !3374
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3375
  call void @llvm.dbg.value(metadata i32* %8, metadata !2386, metadata !DIExpression()), !dbg !3372
  %9 = and i8 %2, 31, !dbg !3376
  %10 = zext i8 %9 to i32, !dbg !3376
  call void @llvm.dbg.value(metadata i32 %10, metadata !2388, metadata !DIExpression()), !dbg !3372
  %11 = load i32, i32* %8, align 4, !dbg !3377, !tbaa !713
  %12 = lshr i32 %11, %10, !dbg !3378
  %13 = and i32 %12, 1, !dbg !3379
  call void @llvm.dbg.value(metadata i32 %13, metadata !2389, metadata !DIExpression()), !dbg !3372
  %14 = xor i32 %13, 1, !dbg !3380
  %15 = shl i32 %14, %10, !dbg !3381
  %16 = xor i32 %15, %11, !dbg !3382
  store i32 %16, i32* %8, align 4, !dbg !3382, !tbaa !713
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3384
  ret i8* %17, !dbg !3385
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3386 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8 %1, metadata !3391, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #34, !dbg !3393
  call void @llvm.dbg.value(metadata i64 -1, metadata !3364, metadata !DIExpression()) #34, !dbg !3393
  call void @llvm.dbg.value(metadata i8 %1, metadata !3365, metadata !DIExpression()) #34, !dbg !3393
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3395
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3395
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3366, metadata !DIExpression()) #34, !dbg !3396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3397, !tbaa.struct !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2382, metadata !DIExpression()) #34, !dbg !3398
  call void @llvm.dbg.value(metadata i8 %1, metadata !2383, metadata !DIExpression()) #34, !dbg !3398
  call void @llvm.dbg.value(metadata i32 1, metadata !2384, metadata !DIExpression()) #34, !dbg !3398
  call void @llvm.dbg.value(metadata i8 %1, metadata !2385, metadata !DIExpression()) #34, !dbg !3398
  %5 = lshr i8 %1, 5, !dbg !3400
  %6 = zext i8 %5 to i64, !dbg !3400
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3401
  call void @llvm.dbg.value(metadata i32* %7, metadata !2386, metadata !DIExpression()) #34, !dbg !3398
  %8 = and i8 %1, 31, !dbg !3402
  %9 = zext i8 %8 to i32, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %9, metadata !2388, metadata !DIExpression()) #34, !dbg !3398
  %10 = load i32, i32* %7, align 4, !dbg !3403, !tbaa !713
  %11 = lshr i32 %10, %9, !dbg !3404
  %12 = and i32 %11, 1, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %12, metadata !2389, metadata !DIExpression()) #34, !dbg !3398
  %13 = xor i32 %12, 1, !dbg !3406
  %14 = shl i32 %13, %9, !dbg !3407
  %15 = xor i32 %14, %10, !dbg !3408
  store i32 %15, i32* %7, align 4, !dbg !3408, !tbaa !713
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3409
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3410
  ret i8* %16, !dbg !3411
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3412 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()) #34, !dbg !3416
  call void @llvm.dbg.value(metadata i8 58, metadata !3391, metadata !DIExpression()) #34, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #34, !dbg !3418
  call void @llvm.dbg.value(metadata i64 -1, metadata !3364, metadata !DIExpression()) #34, !dbg !3418
  call void @llvm.dbg.value(metadata i8 58, metadata !3365, metadata !DIExpression()) #34, !dbg !3418
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3420
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3420
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3366, metadata !DIExpression()) #34, !dbg !3421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3422, !tbaa.struct !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2382, metadata !DIExpression()) #34, !dbg !3423
  call void @llvm.dbg.value(metadata i8 58, metadata !2383, metadata !DIExpression()) #34, !dbg !3423
  call void @llvm.dbg.value(metadata i32 1, metadata !2384, metadata !DIExpression()) #34, !dbg !3423
  call void @llvm.dbg.value(metadata i8 58, metadata !2385, metadata !DIExpression()) #34, !dbg !3423
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3425
  call void @llvm.dbg.value(metadata i32* %4, metadata !2386, metadata !DIExpression()) #34, !dbg !3423
  call void @llvm.dbg.value(metadata i32 26, metadata !2388, metadata !DIExpression()) #34, !dbg !3423
  %5 = load i32, i32* %4, align 4, !dbg !3426, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %5, metadata !2389, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3423
  %6 = or i32 %5, 67108864, !dbg !3427
  store i32 %6, i32* %4, align 4, !dbg !3427, !tbaa !713
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !3428
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3429
  ret i8* %7, !dbg !3430
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3431 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3433, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %1, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #34, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %1, metadata !3364, metadata !DIExpression()) #34, !dbg !3436
  call void @llvm.dbg.value(metadata i8 58, metadata !3365, metadata !DIExpression()) #34, !dbg !3436
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3438
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3366, metadata !DIExpression()) #34, !dbg !3439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3440, !tbaa.struct !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2382, metadata !DIExpression()) #34, !dbg !3441
  call void @llvm.dbg.value(metadata i8 58, metadata !2383, metadata !DIExpression()) #34, !dbg !3441
  call void @llvm.dbg.value(metadata i32 1, metadata !2384, metadata !DIExpression()) #34, !dbg !3441
  call void @llvm.dbg.value(metadata i8 58, metadata !2385, metadata !DIExpression()) #34, !dbg !3441
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3443
  call void @llvm.dbg.value(metadata i32* %5, metadata !2386, metadata !DIExpression()) #34, !dbg !3441
  call void @llvm.dbg.value(metadata i32 26, metadata !2388, metadata !DIExpression()) #34, !dbg !3441
  %6 = load i32, i32* %5, align 4, !dbg !3444, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %6, metadata !2389, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3441
  %7 = or i32 %6, 67108864, !dbg !3445
  store i32 %7, i32* %5, align 4, !dbg !3445, !tbaa !713
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3446
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3447
  ret i8* %8, !dbg !3448
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3449 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3451, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i32 %1, metadata !3452, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %2, metadata !3453, metadata !DIExpression()), !dbg !3455
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3456
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3456
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %1, metadata !3261, metadata !DIExpression()) #34, !dbg !3458
  call void @llvm.dbg.value(metadata i32 0, metadata !3266, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3458
  %6 = icmp eq i32 %1, 10, !dbg !3460
  br i1 %6, label %7, label %8, !dbg !3461

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3462, !noalias !3463
  unreachable, !dbg !3462

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3266, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3458
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3466
  store i32 %1, i32* %9, align 8, !dbg !3466, !tbaa.struct !3371
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3466
  %11 = bitcast i32* %10 to i8*, !dbg !3466
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2382, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8 58, metadata !2383, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 1, metadata !2384, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8 58, metadata !2385, metadata !DIExpression()), !dbg !3467
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3469
  call void @llvm.dbg.value(metadata i32* %12, metadata !2386, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 26, metadata !2388, metadata !DIExpression()), !dbg !3467
  %13 = load i32, i32* %12, align 4, !dbg !3470, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %13, metadata !2389, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3467
  %14 = or i32 %13, 67108864, !dbg !3471
  store i32 %14, i32* %12, align 4, !dbg !3471, !tbaa !713
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3472
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3473
  ret i8* %15, !dbg !3474
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3475 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3479, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %1, metadata !3480, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %2, metadata !3481, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %3, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %0, metadata !3484, metadata !DIExpression()) #34, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %1, metadata !3489, metadata !DIExpression()) #34, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %2, metadata !3490, metadata !DIExpression()) #34, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %3, metadata !3491, metadata !DIExpression()) #34, !dbg !3494
  call void @llvm.dbg.value(metadata i64 -1, metadata !3492, metadata !DIExpression()) #34, !dbg !3494
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3496
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3496
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3493, metadata !DIExpression()) #34, !dbg !3497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3498, !tbaa.struct !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2422, metadata !DIExpression()) #34, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %1, metadata !2423, metadata !DIExpression()) #34, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %2, metadata !2424, metadata !DIExpression()) #34, !dbg !3499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2422, metadata !DIExpression()) #34, !dbg !3499
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3501
  store i32 10, i32* %7, align 8, !dbg !3502, !tbaa !2364
  %8 = icmp ne i8* %1, null, !dbg !3503
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3504
  br i1 %10, label %12, label %11, !dbg !3504

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3505
  unreachable, !dbg !3505

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3506
  store i8* %1, i8** %13, align 8, !dbg !3507, !tbaa !2437
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3508
  store i8* %2, i8** %14, align 8, !dbg !3509, !tbaa !2440
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3510
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3511
  ret i8* %15, !dbg !3512
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3485 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3484, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8* %1, metadata !3489, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8* %2, metadata !3490, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8* %3, metadata !3491, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %4, metadata !3492, metadata !DIExpression()), !dbg !3513
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3514
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3514
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3493, metadata !DIExpression()), !dbg !3515
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3516, !tbaa.struct !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2422, metadata !DIExpression()) #34, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %1, metadata !2423, metadata !DIExpression()) #34, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %2, metadata !2424, metadata !DIExpression()) #34, !dbg !3517
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2422, metadata !DIExpression()) #34, !dbg !3517
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3519
  store i32 10, i32* %8, align 8, !dbg !3520, !tbaa !2364
  %9 = icmp ne i8* %1, null, !dbg !3521
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3522
  br i1 %11, label %13, label %12, !dbg !3522

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !3523
  unreachable, !dbg !3523

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3524
  store i8* %1, i8** %14, align 8, !dbg !3525, !tbaa !2437
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3526
  store i8* %2, i8** %15, align 8, !dbg !3527, !tbaa !2440
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3528
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3529
  ret i8* %16, !dbg !3530
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3531 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3535, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8* %1, metadata !3536, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8* %2, metadata !3537, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 0, metadata !3479, metadata !DIExpression()) #34, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %0, metadata !3480, metadata !DIExpression()) #34, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %1, metadata !3481, metadata !DIExpression()) #34, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %2, metadata !3482, metadata !DIExpression()) #34, !dbg !3539
  call void @llvm.dbg.value(metadata i32 0, metadata !3484, metadata !DIExpression()) #34, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %0, metadata !3489, metadata !DIExpression()) #34, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3490, metadata !DIExpression()) #34, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %2, metadata !3491, metadata !DIExpression()) #34, !dbg !3541
  call void @llvm.dbg.value(metadata i64 -1, metadata !3492, metadata !DIExpression()) #34, !dbg !3541
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3543
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3543
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3493, metadata !DIExpression()) #34, !dbg !3544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3545, !tbaa.struct !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2422, metadata !DIExpression()) #34, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()) #34, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %1, metadata !2424, metadata !DIExpression()) #34, !dbg !3546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2422, metadata !DIExpression()) #34, !dbg !3546
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3548
  store i32 10, i32* %6, align 8, !dbg !3549, !tbaa !2364
  %7 = icmp ne i8* %0, null, !dbg !3550
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3551
  br i1 %9, label %11, label %10, !dbg !3551

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !3552
  unreachable, !dbg !3552

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3553
  store i8* %0, i8** %12, align 8, !dbg !3554, !tbaa !2437
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3555
  store i8* %1, i8** %13, align 8, !dbg !3556, !tbaa !2440
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3558
  ret i8* %14, !dbg !3559
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3560 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3564, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8* %1, metadata !3565, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8* %2, metadata !3566, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %3, metadata !3567, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 0, metadata !3484, metadata !DIExpression()) #34, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %0, metadata !3489, metadata !DIExpression()) #34, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %1, metadata !3490, metadata !DIExpression()) #34, !dbg !3569
  call void @llvm.dbg.value(metadata i8* %2, metadata !3491, metadata !DIExpression()) #34, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %3, metadata !3492, metadata !DIExpression()) #34, !dbg !3569
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3571
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3571
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3493, metadata !DIExpression()) #34, !dbg !3572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3573, !tbaa.struct !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2422, metadata !DIExpression()) #34, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()) #34, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %1, metadata !2424, metadata !DIExpression()) #34, !dbg !3574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2422, metadata !DIExpression()) #34, !dbg !3574
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3576
  store i32 10, i32* %7, align 8, !dbg !3577, !tbaa !2364
  %8 = icmp ne i8* %0, null, !dbg !3578
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3579
  br i1 %10, label %12, label %11, !dbg !3579

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3580
  unreachable, !dbg !3580

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3581
  store i8* %0, i8** %13, align 8, !dbg !3582, !tbaa !2437
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3583
  store i8* %1, i8** %14, align 8, !dbg !3584, !tbaa !2440
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3585
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3586
  ret i8* %15, !dbg !3587
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3588 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3592, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %2, metadata !3594, metadata !DIExpression()), !dbg !3595
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3596
  ret i8* %4, !dbg !3597
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3598 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3602, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i64 %1, metadata !3603, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 0, metadata !3592, metadata !DIExpression()) #34, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %0, metadata !3593, metadata !DIExpression()) #34, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3594, metadata !DIExpression()) #34, !dbg !3605
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3607
  ret i8* %3, !dbg !3608
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3609 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3613, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i8* %1, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i32 %0, metadata !3592, metadata !DIExpression()) #34, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()) #34, !dbg !3616
  call void @llvm.dbg.value(metadata i64 -1, metadata !3594, metadata !DIExpression()) #34, !dbg !3616
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3618
  ret i8* %3, !dbg !3619
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3620 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3624, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 0, metadata !3613, metadata !DIExpression()) #34, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %0, metadata !3614, metadata !DIExpression()) #34, !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3592, metadata !DIExpression()) #34, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %0, metadata !3593, metadata !DIExpression()) #34, !dbg !3628
  call void @llvm.dbg.value(metadata i64 -1, metadata !3594, metadata !DIExpression()) #34, !dbg !3628
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3630
  ret i8* %2, !dbg !3631
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3632 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3671, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8* %1, metadata !3672, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8* %2, metadata !3673, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8* %3, metadata !3674, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8** %4, metadata !3675, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %5, metadata !3676, metadata !DIExpression()), !dbg !3677
  %7 = icmp eq i8* %1, null, !dbg !3678
  br i1 %7, label %10, label %8, !dbg !3680

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3681
  br label %12, !dbg !3681

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.123, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3682
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.125, i64 0, i64 0), i32 noundef 5) #34, !dbg !3683
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3683
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.126, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3684
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.127, i64 0, i64 0), i32 noundef 5) #34, !dbg !3685
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.128, i64 0, i64 0)) #34, !dbg !3685
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.126, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3686
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
  ], !dbg !3687

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.129, i64 0, i64 0), i32 noundef 5) #34, !dbg !3688
  %21 = load i8*, i8** %4, align 8, !dbg !3688, !tbaa !609
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3688
  br label %147, !dbg !3690

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.130, i64 0, i64 0), i32 noundef 5) #34, !dbg !3691
  %25 = load i8*, i8** %4, align 8, !dbg !3691, !tbaa !609
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3691
  %27 = load i8*, i8** %26, align 8, !dbg !3691, !tbaa !609
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3691
  br label %147, !dbg !3692

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.131, i64 0, i64 0), i32 noundef 5) #34, !dbg !3693
  %31 = load i8*, i8** %4, align 8, !dbg !3693, !tbaa !609
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3693
  %33 = load i8*, i8** %32, align 8, !dbg !3693, !tbaa !609
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3693
  %35 = load i8*, i8** %34, align 8, !dbg !3693, !tbaa !609
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3693
  br label %147, !dbg !3694

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.132, i64 0, i64 0), i32 noundef 5) #34, !dbg !3695
  %39 = load i8*, i8** %4, align 8, !dbg !3695, !tbaa !609
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3695
  %41 = load i8*, i8** %40, align 8, !dbg !3695, !tbaa !609
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3695
  %43 = load i8*, i8** %42, align 8, !dbg !3695, !tbaa !609
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3695
  %45 = load i8*, i8** %44, align 8, !dbg !3695, !tbaa !609
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3695
  br label %147, !dbg !3696

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.133, i64 0, i64 0), i32 noundef 5) #34, !dbg !3697
  %49 = load i8*, i8** %4, align 8, !dbg !3697, !tbaa !609
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3697
  %51 = load i8*, i8** %50, align 8, !dbg !3697, !tbaa !609
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3697
  %53 = load i8*, i8** %52, align 8, !dbg !3697, !tbaa !609
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3697
  %55 = load i8*, i8** %54, align 8, !dbg !3697, !tbaa !609
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3697
  %57 = load i8*, i8** %56, align 8, !dbg !3697, !tbaa !609
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3697
  br label %147, !dbg !3698

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.134, i64 0, i64 0), i32 noundef 5) #34, !dbg !3699
  %61 = load i8*, i8** %4, align 8, !dbg !3699, !tbaa !609
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3699
  %63 = load i8*, i8** %62, align 8, !dbg !3699, !tbaa !609
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3699
  %65 = load i8*, i8** %64, align 8, !dbg !3699, !tbaa !609
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3699
  %67 = load i8*, i8** %66, align 8, !dbg !3699, !tbaa !609
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3699
  %69 = load i8*, i8** %68, align 8, !dbg !3699, !tbaa !609
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3699
  %71 = load i8*, i8** %70, align 8, !dbg !3699, !tbaa !609
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3699
  br label %147, !dbg !3700

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.135, i64 0, i64 0), i32 noundef 5) #34, !dbg !3701
  %75 = load i8*, i8** %4, align 8, !dbg !3701, !tbaa !609
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3701
  %77 = load i8*, i8** %76, align 8, !dbg !3701, !tbaa !609
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3701
  %79 = load i8*, i8** %78, align 8, !dbg !3701, !tbaa !609
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3701
  %81 = load i8*, i8** %80, align 8, !dbg !3701, !tbaa !609
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3701
  %83 = load i8*, i8** %82, align 8, !dbg !3701, !tbaa !609
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3701
  %85 = load i8*, i8** %84, align 8, !dbg !3701, !tbaa !609
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3701
  %87 = load i8*, i8** %86, align 8, !dbg !3701, !tbaa !609
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3701
  br label %147, !dbg !3702

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.136, i64 0, i64 0), i32 noundef 5) #34, !dbg !3703
  %91 = load i8*, i8** %4, align 8, !dbg !3703, !tbaa !609
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3703
  %93 = load i8*, i8** %92, align 8, !dbg !3703, !tbaa !609
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3703
  %95 = load i8*, i8** %94, align 8, !dbg !3703, !tbaa !609
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3703
  %97 = load i8*, i8** %96, align 8, !dbg !3703, !tbaa !609
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3703
  %99 = load i8*, i8** %98, align 8, !dbg !3703, !tbaa !609
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3703
  %101 = load i8*, i8** %100, align 8, !dbg !3703, !tbaa !609
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3703
  %103 = load i8*, i8** %102, align 8, !dbg !3703, !tbaa !609
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3703
  %105 = load i8*, i8** %104, align 8, !dbg !3703, !tbaa !609
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3703
  br label %147, !dbg !3704

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.137, i64 0, i64 0), i32 noundef 5) #34, !dbg !3705
  %109 = load i8*, i8** %4, align 8, !dbg !3705, !tbaa !609
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3705
  %111 = load i8*, i8** %110, align 8, !dbg !3705, !tbaa !609
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3705
  %113 = load i8*, i8** %112, align 8, !dbg !3705, !tbaa !609
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3705
  %115 = load i8*, i8** %114, align 8, !dbg !3705, !tbaa !609
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3705
  %117 = load i8*, i8** %116, align 8, !dbg !3705, !tbaa !609
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3705
  %119 = load i8*, i8** %118, align 8, !dbg !3705, !tbaa !609
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3705
  %121 = load i8*, i8** %120, align 8, !dbg !3705, !tbaa !609
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3705
  %123 = load i8*, i8** %122, align 8, !dbg !3705, !tbaa !609
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3705
  %125 = load i8*, i8** %124, align 8, !dbg !3705, !tbaa !609
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3705
  br label %147, !dbg !3706

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.138, i64 0, i64 0), i32 noundef 5) #34, !dbg !3707
  %129 = load i8*, i8** %4, align 8, !dbg !3707, !tbaa !609
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3707
  %131 = load i8*, i8** %130, align 8, !dbg !3707, !tbaa !609
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3707
  %133 = load i8*, i8** %132, align 8, !dbg !3707, !tbaa !609
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3707
  %135 = load i8*, i8** %134, align 8, !dbg !3707, !tbaa !609
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3707
  %137 = load i8*, i8** %136, align 8, !dbg !3707, !tbaa !609
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3707
  %139 = load i8*, i8** %138, align 8, !dbg !3707, !tbaa !609
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3707
  %141 = load i8*, i8** %140, align 8, !dbg !3707, !tbaa !609
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3707
  %143 = load i8*, i8** %142, align 8, !dbg !3707, !tbaa !609
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3707
  %145 = load i8*, i8** %144, align 8, !dbg !3707, !tbaa !609
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3707
  br label %147, !dbg !3708

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3709
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3710 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3714, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* %1, metadata !3715, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* %2, metadata !3716, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* %3, metadata !3717, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8** %4, metadata !3718, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 0, metadata !3719, metadata !DIExpression()), !dbg !3720
  br label %6, !dbg !3721

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3723
  call void @llvm.dbg.value(metadata i64 %7, metadata !3719, metadata !DIExpression()), !dbg !3720
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3724
  %9 = load i8*, i8** %8, align 8, !dbg !3724, !tbaa !609
  %10 = icmp eq i8* %9, null, !dbg !3726
  %11 = add i64 %7, 1, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %11, metadata !3719, metadata !DIExpression()), !dbg !3720
  br i1 %10, label %12, label %6, !dbg !3726, !llvm.loop !3728

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3730
  ret void, !dbg !3731
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3732 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3747, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* %1, metadata !3748, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* %2, metadata !3749, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* %3, metadata !3750, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3751, metadata !DIExpression()), !dbg !3756
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3757
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3757
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3753, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 0, metadata !3752, metadata !DIExpression()), !dbg !3755
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3752, metadata !DIExpression()), !dbg !3755
  %11 = load i32, i32* %8, align 8, !dbg !3759
  %12 = icmp sgt i32 %11, -1, !dbg !3759
  br i1 %12, label %20, label %13, !dbg !3759

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3759
  store i32 %14, i32* %8, align 8, !dbg !3759
  %15 = icmp ult i32 %11, -7, !dbg !3759
  br i1 %15, label %16, label %20, !dbg !3759

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3759
  %18 = sext i32 %11 to i64, !dbg !3759
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3759
  br label %24, !dbg !3759

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3759
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3759
  store i8* %23, i8** %10, align 8, !dbg !3759
  br label %24, !dbg !3759

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3759
  %28 = load i8*, i8** %27, align 8, !dbg !3759
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3762
  store i8* %28, i8** %29, align 8, !dbg !3763, !tbaa !609
  %30 = icmp eq i8* %28, null, !dbg !3764
  br i1 %30, label %210, label %31, !dbg !3765

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 1, metadata !3752, metadata !DIExpression()), !dbg !3755
  %32 = icmp sgt i32 %25, -1, !dbg !3759
  br i1 %32, label %40, label %33, !dbg !3759

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3759
  store i32 %34, i32* %8, align 8, !dbg !3759
  %35 = icmp ult i32 %25, -7, !dbg !3759
  br i1 %35, label %36, label %40, !dbg !3759

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3759
  %38 = sext i32 %25 to i64, !dbg !3759
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3759
  br label %44, !dbg !3759

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3759
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3759
  store i8* %43, i8** %10, align 8, !dbg !3759
  br label %44, !dbg !3759

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3759
  %48 = load i8*, i8** %47, align 8, !dbg !3759
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3762
  store i8* %48, i8** %49, align 8, !dbg !3763, !tbaa !609
  %50 = icmp eq i8* %48, null, !dbg !3764
  br i1 %50, label %210, label %51, !dbg !3765

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 2, metadata !3752, metadata !DIExpression()), !dbg !3755
  %52 = icmp sgt i32 %45, -1, !dbg !3759
  br i1 %52, label %60, label %53, !dbg !3759

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3759
  store i32 %54, i32* %8, align 8, !dbg !3759
  %55 = icmp ult i32 %45, -7, !dbg !3759
  br i1 %55, label %56, label %60, !dbg !3759

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3759
  %58 = sext i32 %45 to i64, !dbg !3759
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3759
  br label %64, !dbg !3759

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3759
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3759
  store i8* %63, i8** %10, align 8, !dbg !3759
  br label %64, !dbg !3759

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3759
  %68 = load i8*, i8** %67, align 8, !dbg !3759
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3762
  store i8* %68, i8** %69, align 8, !dbg !3763, !tbaa !609
  %70 = icmp eq i8* %68, null, !dbg !3764
  br i1 %70, label %210, label %71, !dbg !3765

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 3, metadata !3752, metadata !DIExpression()), !dbg !3755
  %72 = icmp sgt i32 %65, -1, !dbg !3759
  br i1 %72, label %80, label %73, !dbg !3759

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3759
  store i32 %74, i32* %8, align 8, !dbg !3759
  %75 = icmp ult i32 %65, -7, !dbg !3759
  br i1 %75, label %76, label %80, !dbg !3759

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3759
  %78 = sext i32 %65 to i64, !dbg !3759
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3759
  br label %84, !dbg !3759

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3759
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3759
  store i8* %83, i8** %10, align 8, !dbg !3759
  br label %84, !dbg !3759

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3759
  %88 = load i8*, i8** %87, align 8, !dbg !3759
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3762
  store i8* %88, i8** %89, align 8, !dbg !3763, !tbaa !609
  %90 = icmp eq i8* %88, null, !dbg !3764
  br i1 %90, label %210, label %91, !dbg !3765

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 4, metadata !3752, metadata !DIExpression()), !dbg !3755
  %92 = icmp sgt i32 %85, -1, !dbg !3759
  br i1 %92, label %100, label %93, !dbg !3759

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3759
  store i32 %94, i32* %8, align 8, !dbg !3759
  %95 = icmp ult i32 %85, -7, !dbg !3759
  br i1 %95, label %96, label %100, !dbg !3759

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3759
  %98 = sext i32 %85 to i64, !dbg !3759
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3759
  br label %104, !dbg !3759

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3759
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3759
  store i8* %103, i8** %10, align 8, !dbg !3759
  br label %104, !dbg !3759

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3759
  %108 = load i8*, i8** %107, align 8, !dbg !3759
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3762
  store i8* %108, i8** %109, align 8, !dbg !3763, !tbaa !609
  %110 = icmp eq i8* %108, null, !dbg !3764
  br i1 %110, label %210, label %111, !dbg !3765

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 5, metadata !3752, metadata !DIExpression()), !dbg !3755
  %112 = icmp sgt i32 %105, -1, !dbg !3759
  br i1 %112, label %120, label %113, !dbg !3759

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3759
  store i32 %114, i32* %8, align 8, !dbg !3759
  %115 = icmp ult i32 %105, -7, !dbg !3759
  br i1 %115, label %116, label %120, !dbg !3759

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3759
  %118 = sext i32 %105 to i64, !dbg !3759
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3759
  br label %124, !dbg !3759

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3759
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3759
  store i8* %123, i8** %10, align 8, !dbg !3759
  br label %124, !dbg !3759

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3759
  %128 = load i8*, i8** %127, align 8, !dbg !3759
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3762
  store i8* %128, i8** %129, align 8, !dbg !3763, !tbaa !609
  %130 = icmp eq i8* %128, null, !dbg !3764
  br i1 %130, label %210, label %131, !dbg !3765

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 6, metadata !3752, metadata !DIExpression()), !dbg !3755
  %132 = icmp sgt i32 %125, -1, !dbg !3759
  br i1 %132, label %140, label %133, !dbg !3759

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3759
  store i32 %134, i32* %8, align 8, !dbg !3759
  %135 = icmp ult i32 %125, -7, !dbg !3759
  br i1 %135, label %136, label %140, !dbg !3759

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3759
  %138 = sext i32 %125 to i64, !dbg !3759
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3759
  br label %144, !dbg !3759

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3759
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3759
  store i8* %143, i8** %10, align 8, !dbg !3759
  br label %144, !dbg !3759

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3759
  %148 = load i8*, i8** %147, align 8, !dbg !3759
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3762
  store i8* %148, i8** %149, align 8, !dbg !3763, !tbaa !609
  %150 = icmp eq i8* %148, null, !dbg !3764
  br i1 %150, label %210, label %151, !dbg !3765

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 7, metadata !3752, metadata !DIExpression()), !dbg !3755
  %152 = icmp sgt i32 %145, -1, !dbg !3759
  br i1 %152, label %160, label %153, !dbg !3759

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3759
  store i32 %154, i32* %8, align 8, !dbg !3759
  %155 = icmp ult i32 %145, -7, !dbg !3759
  br i1 %155, label %156, label %160, !dbg !3759

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3759
  %158 = sext i32 %145 to i64, !dbg !3759
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3759
  br label %164, !dbg !3759

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3759
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3759
  store i8* %163, i8** %10, align 8, !dbg !3759
  br label %164, !dbg !3759

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3759
  %168 = load i8*, i8** %167, align 8, !dbg !3759
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3762
  store i8* %168, i8** %169, align 8, !dbg !3763, !tbaa !609
  %170 = icmp eq i8* %168, null, !dbg !3764
  br i1 %170, label %210, label %171, !dbg !3765

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 8, metadata !3752, metadata !DIExpression()), !dbg !3755
  %172 = icmp sgt i32 %165, -1, !dbg !3759
  br i1 %172, label %180, label %173, !dbg !3759

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3759
  store i32 %174, i32* %8, align 8, !dbg !3759
  %175 = icmp ult i32 %165, -7, !dbg !3759
  br i1 %175, label %176, label %180, !dbg !3759

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3759
  %178 = sext i32 %165 to i64, !dbg !3759
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3759
  br label %184, !dbg !3759

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3759
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3759
  store i8* %183, i8** %10, align 8, !dbg !3759
  br label %184, !dbg !3759

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3759
  %188 = load i8*, i8** %187, align 8, !dbg !3759
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3762
  store i8* %188, i8** %189, align 8, !dbg !3763, !tbaa !609
  %190 = icmp eq i8* %188, null, !dbg !3764
  br i1 %190, label %210, label %191, !dbg !3765

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 9, metadata !3752, metadata !DIExpression()), !dbg !3755
  %192 = icmp sgt i32 %185, -1, !dbg !3759
  br i1 %192, label %200, label %193, !dbg !3759

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3759
  store i32 %194, i32* %8, align 8, !dbg !3759
  %195 = icmp ult i32 %185, -7, !dbg !3759
  br i1 %195, label %196, label %200, !dbg !3759

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3759
  %198 = sext i32 %185 to i64, !dbg !3759
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3759
  br label %203, !dbg !3759

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3759
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3759
  store i8* %202, i8** %10, align 8, !dbg !3759
  br label %203, !dbg !3759

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3759
  %206 = load i8*, i8** %205, align 8, !dbg !3759
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3762
  store i8* %206, i8** %207, align 8, !dbg !3763, !tbaa !609
  %208 = icmp eq i8* %206, null, !dbg !3764
  %209 = select i1 %208, i64 9, i64 10, !dbg !3765
  br label %210, !dbg !3765

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3766
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3767
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3768
  ret void, !dbg !3768
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3769 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3773, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %1, metadata !3774, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %2, metadata !3775, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %3, metadata !3776, metadata !DIExpression()), !dbg !3778
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3779
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3779
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3777, metadata !DIExpression()), !dbg !3780
  call void @llvm.va_start(i8* nonnull %7), !dbg !3781
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3782
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3782
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3782, !tbaa.struct !1561
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3782
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3782
  call void @llvm.va_end(i8* nonnull %7), !dbg !3783
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3784
  ret void, !dbg !3784
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3785 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3786, !tbaa !609
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.126, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3786
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.143, i64 0, i64 0), i32 noundef 5) #34, !dbg !3787
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.144, i64 0, i64 0)) #34, !dbg !3787
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.145, i64 0, i64 0), i32 noundef 5) #34, !dbg !3788
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.146, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.147, i64 0, i64 0)) #34, !dbg !3788
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.148, i64 0, i64 0), i32 noundef 5) #34, !dbg !3789
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.149, i64 0, i64 0)) #34, !dbg !3789
  ret void, !dbg !3790
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3791 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3796, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %2, metadata !3798, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i8* %0, metadata !3800, metadata !DIExpression()) #34, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %1, metadata !3803, metadata !DIExpression()) #34, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %2, metadata !3804, metadata !DIExpression()) #34, !dbg !3805
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3807
  call void @llvm.dbg.value(metadata i8* %4, metadata !3808, metadata !DIExpression()) #34, !dbg !3813
  %5 = icmp eq i8* %4, null, !dbg !3815
  br i1 %5, label %6, label %7, !dbg !3817

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3818
  unreachable, !dbg !3818

7:                                                ; preds = %3
  ret i8* %4, !dbg !3819
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3800, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %1, metadata !3803, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %2, metadata !3804, metadata !DIExpression()), !dbg !3820
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3821
  call void @llvm.dbg.value(metadata i8* %4, metadata !3808, metadata !DIExpression()) #34, !dbg !3822
  %5 = icmp eq i8* %4, null, !dbg !3824
  br i1 %5, label %6, label %7, !dbg !3825

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3826
  unreachable, !dbg !3826

7:                                                ; preds = %3
  ret i8* %4, !dbg !3827
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3828 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3832, metadata !DIExpression()), !dbg !3833
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3834
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()) #34, !dbg !3835
  %3 = icmp eq i8* %2, null, !dbg !3837
  br i1 %3, label %4, label %5, !dbg !3838

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3839
  unreachable, !dbg !3839

5:                                                ; preds = %1
  ret i8* %2, !dbg !3840
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3841 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3845, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()) #34, !dbg !3851
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()) #34, !dbg !3854
  %3 = icmp eq i8* %2, null, !dbg !3856
  br i1 %3, label %4, label %5, !dbg !3857

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3858
  unreachable, !dbg !3858

5:                                                ; preds = %1
  ret i8* %2, !dbg !3859
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3860 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3864, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %0, metadata !3832, metadata !DIExpression()) #34, !dbg !3866
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3868
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()) #34, !dbg !3869
  %3 = icmp eq i8* %2, null, !dbg !3871
  br i1 %3, label %4, label %5, !dbg !3872

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3873
  unreachable, !dbg !3873

5:                                                ; preds = %1
  ret i8* %2, !dbg !3874
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3875 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3879, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %1, metadata !3880, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %0, metadata !3882, metadata !DIExpression()) #34, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %1, metadata !3886, metadata !DIExpression()) #34, !dbg !3887
  %3 = icmp eq i64 %1, 0, !dbg !3889
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3889
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3890
  call void @llvm.dbg.value(metadata i8* %5, metadata !3808, metadata !DIExpression()) #34, !dbg !3891
  %6 = icmp eq i8* %5, null, !dbg !3893
  br i1 %6, label %7, label %8, !dbg !3894

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3895
  unreachable, !dbg !3895

8:                                                ; preds = %2
  ret i8* %5, !dbg !3896
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %1, metadata !3902, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i8* %0, metadata !3904, metadata !DIExpression()) #34, !dbg !3908
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()) #34, !dbg !3908
  call void @llvm.dbg.value(metadata i8* %0, metadata !3882, metadata !DIExpression()) #34, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %1, metadata !3886, metadata !DIExpression()) #34, !dbg !3910
  %3 = icmp eq i64 %1, 0, !dbg !3912
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3912
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3913
  call void @llvm.dbg.value(metadata i8* %5, metadata !3808, metadata !DIExpression()) #34, !dbg !3914
  %6 = icmp eq i8* %5, null, !dbg !3916
  br i1 %6, label %7, label %8, !dbg !3917

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3918
  unreachable, !dbg !3918

8:                                                ; preds = %2
  ret i8* %5, !dbg !3919
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3924, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %1, metadata !3925, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %2, metadata !3926, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i8* %0, metadata !3928, metadata !DIExpression()) #34, !dbg !3933
  call void @llvm.dbg.value(metadata i64 %1, metadata !3931, metadata !DIExpression()) #34, !dbg !3933
  call void @llvm.dbg.value(metadata i64 %2, metadata !3932, metadata !DIExpression()) #34, !dbg !3933
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3935
  call void @llvm.dbg.value(metadata i8* %4, metadata !3808, metadata !DIExpression()) #34, !dbg !3936
  %5 = icmp eq i8* %4, null, !dbg !3938
  br i1 %5, label %6, label %7, !dbg !3939

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3940
  unreachable, !dbg !3940

7:                                                ; preds = %3
  ret i8* %4, !dbg !3941
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3942 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %1, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i8* null, metadata !3800, metadata !DIExpression()) #34, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %0, metadata !3803, metadata !DIExpression()) #34, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %1, metadata !3804, metadata !DIExpression()) #34, !dbg !3949
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %3, metadata !3808, metadata !DIExpression()) #34, !dbg !3952
  %4 = icmp eq i8* %3, null, !dbg !3954
  br i1 %4, label %5, label %6, !dbg !3955

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3956
  unreachable, !dbg !3956

6:                                                ; preds = %2
  ret i8* %3, !dbg !3957
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3958 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3962, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %1, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8* null, metadata !3924, metadata !DIExpression()) #34, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %0, metadata !3925, metadata !DIExpression()) #34, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %1, metadata !3926, metadata !DIExpression()) #34, !dbg !3965
  call void @llvm.dbg.value(metadata i8* null, metadata !3928, metadata !DIExpression()) #34, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %0, metadata !3931, metadata !DIExpression()) #34, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %1, metadata !3932, metadata !DIExpression()) #34, !dbg !3967
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3969
  call void @llvm.dbg.value(metadata i8* %3, metadata !3808, metadata !DIExpression()) #34, !dbg !3970
  %4 = icmp eq i8* %3, null, !dbg !3972
  br i1 %4, label %5, label %6, !dbg !3973

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3974
  unreachable, !dbg !3974

6:                                                ; preds = %2
  ret i8* %3, !dbg !3975
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64* %1, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #34, !dbg !3983
  call void @llvm.dbg.value(metadata i64* %1, metadata !535, metadata !DIExpression()) #34, !dbg !3983
  call void @llvm.dbg.value(metadata i64 1, metadata !536, metadata !DIExpression()) #34, !dbg !3983
  %3 = load i64, i64* %1, align 8, !dbg !3985, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %3, metadata !537, metadata !DIExpression()) #34, !dbg !3983
  %4 = icmp eq i8* %0, null, !dbg !3986
  br i1 %4, label %5, label %8, !dbg !3988

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3989
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3992
  br label %15, !dbg !3992

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3993
  %10 = add nuw i64 %9, 1, !dbg !3993
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !3993
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3993
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3993
  call void @llvm.dbg.value(metadata i64 %13, metadata !537, metadata !DIExpression()) #34, !dbg !3983
  br i1 %12, label %14, label %15, !dbg !3996

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3997
  unreachable, !dbg !3997

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3983
  call void @llvm.dbg.value(metadata i64 %16, metadata !537, metadata !DIExpression()) #34, !dbg !3983
  call void @llvm.dbg.value(metadata i8* %0, metadata !3800, metadata !DIExpression()) #34, !dbg !3998
  call void @llvm.dbg.value(metadata i64 %16, metadata !3803, metadata !DIExpression()) #34, !dbg !3998
  call void @llvm.dbg.value(metadata i64 1, metadata !3804, metadata !DIExpression()) #34, !dbg !3998
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !4000
  call void @llvm.dbg.value(metadata i8* %17, metadata !3808, metadata !DIExpression()) #34, !dbg !4001
  %18 = icmp eq i8* %17, null, !dbg !4003
  br i1 %18, label %19, label %20, !dbg !4004

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !4005
  unreachable, !dbg !4005

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !534, metadata !DIExpression()) #34, !dbg !3983
  store i64 %16, i64* %1, align 8, !dbg !4006, !tbaa !883
  ret i8* %17, !dbg !4007
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64* %1, metadata !535, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %2, metadata !536, metadata !DIExpression()), !dbg !4008
  %4 = load i64, i64* %1, align 8, !dbg !4009, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %4, metadata !537, metadata !DIExpression()), !dbg !4008
  %5 = icmp eq i8* %0, null, !dbg !4010
  br i1 %5, label %6, label %13, !dbg !4011

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4012
  br i1 %7, label %8, label %20, !dbg !4013

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %9, metadata !537, metadata !DIExpression()), !dbg !4008
  %10 = icmp ugt i64 %2, 128, !dbg !4016
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %12, metadata !537, metadata !DIExpression()), !dbg !4008
  br label %20, !dbg !4018

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4019
  %15 = add nuw i64 %14, 1, !dbg !4019
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4019
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4019
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4019
  call void @llvm.dbg.value(metadata i64 %18, metadata !537, metadata !DIExpression()), !dbg !4008
  br i1 %17, label %19, label %20, !dbg !4020

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !4021
  unreachable, !dbg !4021

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4008
  call void @llvm.dbg.value(metadata i64 %21, metadata !537, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i8* %0, metadata !3800, metadata !DIExpression()) #34, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %21, metadata !3803, metadata !DIExpression()) #34, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %2, metadata !3804, metadata !DIExpression()) #34, !dbg !4022
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !4024
  call void @llvm.dbg.value(metadata i8* %22, metadata !3808, metadata !DIExpression()) #34, !dbg !4025
  %23 = icmp eq i8* %22, null, !dbg !4027
  br i1 %23, label %24, label %25, !dbg !4028

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !4029
  unreachable, !dbg !4029

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !534, metadata !DIExpression()), !dbg !4008
  store i64 %21, i64* %1, align 8, !dbg !4030, !tbaa !883
  ret i8* %22, !dbg !4031
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !541 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !546, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64* %1, metadata !547, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %2, metadata !548, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %3, metadata !549, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %4, metadata !550, metadata !DIExpression()), !dbg !4032
  %6 = load i64, i64* %1, align 8, !dbg !4033, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %6, metadata !551, metadata !DIExpression()), !dbg !4032
  %7 = ashr i64 %6, 1, !dbg !4034
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4034
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4034
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %10, metadata !552, metadata !DIExpression()), !dbg !4032
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %11, metadata !552, metadata !DIExpression()), !dbg !4032
  %12 = icmp sgt i64 %3, -1, !dbg !4037
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4039
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %15, metadata !552, metadata !DIExpression()), !dbg !4032
  %16 = icmp slt i64 %4, 0, !dbg !4040
  br i1 %16, label %17, label %30, !dbg !4040

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4040
  br i1 %18, label %19, label %24, !dbg !4040

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4040
  %21 = udiv i64 9223372036854775807, %20, !dbg !4040
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4040
  br i1 %23, label %46, label %43, !dbg !4040

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4040
  br i1 %25, label %43, label %26, !dbg !4040

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4040
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4040
  %29 = icmp ult i64 %28, %15, !dbg !4040
  br i1 %29, label %46, label %43, !dbg !4040

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4040
  br i1 %31, label %43, label %32, !dbg !4040

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4040
  br i1 %33, label %34, label %40, !dbg !4040

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4040
  br i1 %35, label %43, label %36, !dbg !4040

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4040
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4040
  %39 = icmp ult i64 %38, %4, !dbg !4040
  br i1 %39, label %46, label %43, !dbg !4040

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4040
  %42 = icmp ult i64 %41, %15, !dbg !4040
  br i1 %42, label %46, label %43, !dbg !4040

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !553, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4032
  %44 = mul i64 %15, %4, !dbg !4040
  call void @llvm.dbg.value(metadata i64 %44, metadata !553, metadata !DIExpression()), !dbg !4032
  %45 = icmp slt i64 %44, 128, !dbg !4040
  br i1 %45, label %46, label %52, !dbg !4040

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !554, metadata !DIExpression()), !dbg !4032
  %48 = sdiv i64 %47, %4, !dbg !4041
  call void @llvm.dbg.value(metadata i64 %48, metadata !552, metadata !DIExpression()), !dbg !4032
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %51, metadata !553, metadata !DIExpression()), !dbg !4032
  br label %52, !dbg !4045

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4032
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4032
  call void @llvm.dbg.value(metadata i64 %54, metadata !553, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %53, metadata !552, metadata !DIExpression()), !dbg !4032
  %55 = icmp eq i8* %0, null, !dbg !4046
  br i1 %55, label %56, label %57, !dbg !4048

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4049, !tbaa !883
  br label %57, !dbg !4050

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4051
  %59 = icmp slt i64 %58, %2, !dbg !4053
  br i1 %59, label %60, label %97, !dbg !4054

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4055
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4055
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %63, metadata !552, metadata !DIExpression()), !dbg !4032
  br i1 %62, label %96, label %64, !dbg !4056

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4057
  br i1 %66, label %96, label %67, !dbg !4057

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4058

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4058
  br i1 %69, label %70, label %75, !dbg !4058

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4058
  %72 = udiv i64 9223372036854775807, %71, !dbg !4058
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4058
  br i1 %74, label %96, label %94, !dbg !4058

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4058
  br i1 %76, label %94, label %77, !dbg !4058

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4058
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4058
  %80 = icmp ult i64 %79, %63, !dbg !4058
  br i1 %80, label %96, label %94, !dbg !4058

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4058
  br i1 %82, label %94, label %83, !dbg !4058

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4058
  br i1 %84, label %85, label %91, !dbg !4058

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4058
  br i1 %86, label %94, label %87, !dbg !4058

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4058
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4058
  %90 = icmp ult i64 %89, %4, !dbg !4058
  br i1 %90, label %96, label %94, !dbg !4058

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4058
  %93 = icmp ult i64 %92, %63, !dbg !4058
  br i1 %93, label %96, label %94, !dbg !4058

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !553, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4032
  %95 = mul i64 %63, %4, !dbg !4058
  call void @llvm.dbg.value(metadata i64 %95, metadata !553, metadata !DIExpression()), !dbg !4032
  br label %97, !dbg !4059

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !4060
  unreachable, !dbg !4060

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4032
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4032
  call void @llvm.dbg.value(metadata i64 %99, metadata !553, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %98, metadata !552, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i8* %0, metadata !3879, metadata !DIExpression()) #34, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %99, metadata !3880, metadata !DIExpression()) #34, !dbg !4061
  call void @llvm.dbg.value(metadata i8* %0, metadata !3882, metadata !DIExpression()) #34, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %99, metadata !3886, metadata !DIExpression()) #34, !dbg !4063
  %100 = icmp eq i64 %99, 0, !dbg !4065
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4065
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %102, metadata !3808, metadata !DIExpression()) #34, !dbg !4067
  %103 = icmp eq i8* %102, null, !dbg !4069
  br i1 %103, label %104, label %105, !dbg !4070

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !4071
  unreachable, !dbg !4071

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !546, metadata !DIExpression()), !dbg !4032
  store i64 %98, i64* %1, align 8, !dbg !4072, !tbaa !883
  ret i8* %102, !dbg !4073
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4074 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4076, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %0, metadata !4078, metadata !DIExpression()) #34, !dbg !4082
  call void @llvm.dbg.value(metadata i64 1, metadata !4081, metadata !DIExpression()) #34, !dbg !4082
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !4084
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()) #34, !dbg !4085
  %3 = icmp eq i8* %2, null, !dbg !4087
  br i1 %3, label %4, label %5, !dbg !4088

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4089
  unreachable, !dbg !4089

5:                                                ; preds = %1
  ret i8* %2, !dbg !4090
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4079 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4078, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i64 %1, metadata !4081, metadata !DIExpression()), !dbg !4091
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !4092
  call void @llvm.dbg.value(metadata i8* %3, metadata !3808, metadata !DIExpression()) #34, !dbg !4093
  %4 = icmp eq i8* %3, null, !dbg !4095
  br i1 %4, label %5, label %6, !dbg !4096

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4097
  unreachable, !dbg !4097

6:                                                ; preds = %2
  ret i8* %3, !dbg !4098
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4099 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %0, metadata !4103, metadata !DIExpression()) #34, !dbg !4107
  call void @llvm.dbg.value(metadata i64 1, metadata !4106, metadata !DIExpression()) #34, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %0, metadata !4109, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i64 1, metadata !4112, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %0, metadata !4109, metadata !DIExpression()) #34, !dbg !4113
  call void @llvm.dbg.value(metadata i64 1, metadata !4112, metadata !DIExpression()) #34, !dbg !4113
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !4115
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()) #34, !dbg !4116
  %3 = icmp eq i8* %2, null, !dbg !4118
  br i1 %3, label %4, label %5, !dbg !4119

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4120
  unreachable, !dbg !4120

5:                                                ; preds = %1
  ret i8* %2, !dbg !4121
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4104 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4103, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i64 %1, metadata !4106, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i64 %0, metadata !4109, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64 %1, metadata !4112, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64 %0, metadata !4109, metadata !DIExpression()) #34, !dbg !4123
  call void @llvm.dbg.value(metadata i64 %1, metadata !4112, metadata !DIExpression()) #34, !dbg !4123
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i8* %3, metadata !3808, metadata !DIExpression()) #34, !dbg !4126
  %4 = icmp eq i8* %3, null, !dbg !4128
  br i1 %4, label %5, label %6, !dbg !4129

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4130
  unreachable, !dbg !4130

6:                                                ; preds = %2
  ret i8* %3, !dbg !4131
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4132 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4136, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %1, metadata !4137, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %1, metadata !3832, metadata !DIExpression()) #34, !dbg !4139
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !4141
  call void @llvm.dbg.value(metadata i8* %3, metadata !3808, metadata !DIExpression()) #34, !dbg !4142
  %4 = icmp eq i8* %3, null, !dbg !4144
  br i1 %4, label %5, label %6, !dbg !4145

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4146
  unreachable, !dbg !4146

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4147, metadata !DIExpression()) #34, !dbg !4152
  call void @llvm.dbg.value(metadata i8* %0, metadata !4150, metadata !DIExpression()) #34, !dbg !4152
  call void @llvm.dbg.value(metadata i64 %1, metadata !4151, metadata !DIExpression()) #34, !dbg !4152
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4154
  ret i8* %3, !dbg !4155
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4156 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4160, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %1, metadata !4161, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %1, metadata !3845, metadata !DIExpression()) #34, !dbg !4163
  call void @llvm.dbg.value(metadata i64 %1, metadata !3847, metadata !DIExpression()) #34, !dbg !4165
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %3, metadata !3808, metadata !DIExpression()) #34, !dbg !4168
  %4 = icmp eq i8* %3, null, !dbg !4170
  br i1 %4, label %5, label %6, !dbg !4171

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4172
  unreachable, !dbg !4172

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4147, metadata !DIExpression()) #34, !dbg !4173
  call void @llvm.dbg.value(metadata i8* %0, metadata !4150, metadata !DIExpression()) #34, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !4151, metadata !DIExpression()) #34, !dbg !4173
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4175
  ret i8* %3, !dbg !4176
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4181, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %1, metadata !4182, metadata !DIExpression()), !dbg !4184
  %3 = add nsw i64 %1, 1, !dbg !4185
  call void @llvm.dbg.value(metadata i64 %3, metadata !3845, metadata !DIExpression()) #34, !dbg !4186
  call void @llvm.dbg.value(metadata i64 %3, metadata !3847, metadata !DIExpression()) #34, !dbg !4188
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !4190
  call void @llvm.dbg.value(metadata i8* %4, metadata !3808, metadata !DIExpression()) #34, !dbg !4191
  %5 = icmp eq i8* %4, null, !dbg !4193
  br i1 %5, label %6, label %7, !dbg !4194

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4195
  unreachable, !dbg !4195

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4183, metadata !DIExpression()), !dbg !4184
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4196
  store i8 0, i8* %8, align 1, !dbg !4197, !tbaa !722
  call void @llvm.dbg.value(metadata i8* %4, metadata !4147, metadata !DIExpression()) #34, !dbg !4198
  call void @llvm.dbg.value(metadata i8* %0, metadata !4150, metadata !DIExpression()) #34, !dbg !4198
  call void @llvm.dbg.value(metadata i64 %1, metadata !4151, metadata !DIExpression()) #34, !dbg !4198
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4200
  ret i8* %4, !dbg !4201
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4202 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4204, metadata !DIExpression()), !dbg !4205
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !4206
  %3 = add i64 %2, 1, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %0, metadata !4136, metadata !DIExpression()) #34, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %3, metadata !4137, metadata !DIExpression()) #34, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %3, metadata !3832, metadata !DIExpression()) #34, !dbg !4210
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !4212
  call void @llvm.dbg.value(metadata i8* %4, metadata !3808, metadata !DIExpression()) #34, !dbg !4213
  %5 = icmp eq i8* %4, null, !dbg !4215
  br i1 %5, label %6, label %7, !dbg !4216

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4217
  unreachable, !dbg !4217

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4147, metadata !DIExpression()) #34, !dbg !4218
  call void @llvm.dbg.value(metadata i8* %0, metadata !4150, metadata !DIExpression()) #34, !dbg !4218
  call void @llvm.dbg.value(metadata i64 %3, metadata !4151, metadata !DIExpression()) #34, !dbg !4218
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !4220
  ret i8* %4, !dbg !4221
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4222 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4227, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %1, metadata !4224, metadata !DIExpression()), !dbg !4228
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.162, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.163, i64 0, i64 0), i32 noundef 5) #34, !dbg !4227
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i64 0, i64 0), i8* noundef %2) #34, !dbg !4227
  %3 = icmp eq i32 %1, 0, !dbg !4227
  tail call void @llvm.assume(i1 %3), !dbg !4227
  tail call void @abort() #36, !dbg !4229
  unreachable, !dbg !4229
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #12 !dbg !4230 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %1, metadata !4236, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %2, metadata !4237, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %3, metadata !4238, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i8* %4, metadata !4239, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i8* %5, metadata !4240, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %6, metadata !4241, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %7, metadata !4242, metadata !DIExpression()), !dbg !4252
  %10 = bitcast i64* %9 to i8*, !dbg !4253
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !4253
  call void @llvm.dbg.value(metadata i64* %9, metadata !4243, metadata !DIExpression(DW_OP_deref)), !dbg !4252
  %11 = call i32 @xstrtoimax(i8* noundef nonnull %0, i8** noundef null, i32 noundef %1, i64* noundef nonnull %9, i8* noundef %4) #34, !dbg !4254
  call void @llvm.dbg.value(metadata i32 %11, metadata !4245, metadata !DIExpression()), !dbg !4252
  %12 = icmp eq i32 %11, 4, !dbg !4255
  br i1 %12, label %42, label %13, !dbg !4257

13:                                               ; preds = %8
  %14 = load i64, i64* %9, align 8, !dbg !4258, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %14, metadata !4243, metadata !DIExpression()), !dbg !4252
  %15 = icmp slt i64 %14, %2, !dbg !4261
  br i1 %15, label %16, label %21, !dbg !4262

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %2, metadata !4244, metadata !DIExpression()), !dbg !4252
  %17 = and i32 %7, 4, !dbg !4263
  %18 = icmp eq i32 %17, 0, !dbg !4265
  %19 = select i1 %18, i32 75, i32 34, !dbg !4265
  call void @llvm.dbg.value(metadata i32 %19, metadata !4247, metadata !DIExpression()), !dbg !4252
  %20 = icmp eq i32 %11, 0, !dbg !4266
  call void @llvm.dbg.value(metadata i32 undef, metadata !4245, metadata !DIExpression()), !dbg !4252
  br i1 %20, label %35, label %28, !dbg !4268

21:                                               ; preds = %13
  %22 = icmp sgt i64 %14, %3, !dbg !4269
  br i1 %22, label %23, label %28, !dbg !4271

23:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %3, metadata !4244, metadata !DIExpression()), !dbg !4252
  %24 = and i32 %7, 8, !dbg !4272
  %25 = icmp eq i32 %24, 0, !dbg !4274
  %26 = select i1 %25, i32 75, i32 34, !dbg !4274
  call void @llvm.dbg.value(metadata i32 %26, metadata !4247, metadata !DIExpression()), !dbg !4252
  %27 = icmp eq i32 %11, 0, !dbg !4275
  call void @llvm.dbg.value(metadata i32 undef, metadata !4245, metadata !DIExpression()), !dbg !4252
  br i1 %27, label %35, label %28, !dbg !4277

28:                                               ; preds = %23, %16, %21
  %29 = phi i32 [ %19, %16 ], [ %26, %23 ], [ 75, %21 ]
  %30 = phi i64 [ %2, %16 ], [ %3, %23 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !4244, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %11, metadata !4245, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %29, metadata !4247, metadata !DIExpression()), !dbg !4252
  %31 = icmp eq i32 %11, 1, !dbg !4278
  %32 = select i1 %31, i32 %29, i32 0, !dbg !4279
  call void @llvm.dbg.value(metadata i32 %32, metadata !4248, metadata !DIExpression()), !dbg !4252
  %33 = icmp eq i32 %11, 0, !dbg !4280
  br i1 %33, label %47, label %34, !dbg !4281

34:                                               ; preds = %28
  br i1 %31, label %35, label %42, !dbg !4282

35:                                               ; preds = %23, %16, %34
  %36 = phi i64 [ %30, %34 ], [ %3, %23 ], [ %2, %16 ]
  %37 = phi i32 [ %29, %34 ], [ %26, %23 ], [ %19, %16 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4243, metadata !DIExpression()), !dbg !4252
  %38 = icmp slt i64 %14, 0, !dbg !4283
  %39 = select i1 %38, i32 1, i32 2, !dbg !4284
  %40 = and i32 %39, %7, !dbg !4285
  %41 = icmp eq i32 %40, 0, !dbg !4285
  br i1 %41, label %42, label %47, !dbg !4286

42:                                               ; preds = %8, %35, %34
  %43 = phi i32 [ %37, %35 ], [ 0, %34 ], [ 0, %8 ]
  %44 = icmp eq i32 %6, 0, !dbg !4287
  %45 = select i1 %44, i32 1, i32 %6, !dbg !4287
  %46 = call i8* @quote(i8* noundef nonnull %0) #34, !dbg !4288
  call void (i32, i32, i8*, ...) @error(i32 noundef %45, i32 noundef %43, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* noundef nonnull %5, i8* noundef %46) #34, !dbg !4288
  unreachable, !dbg !4288

47:                                               ; preds = %35, %28
  %48 = phi i32 [ %37, %35 ], [ %32, %28 ]
  %49 = phi i64 [ %36, %35 ], [ %30, %28 ]
  %50 = tail call i32* @__errno_location() #37, !dbg !4289
  store i32 %48, i32* %50, align 4, !dbg !4290, !tbaa !713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !4291
  ret i64 %49, !dbg !4292
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) local_unnamed_addr #12 !dbg !4293 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %2, metadata !4299, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i8* %3, metadata !4300, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i8* %4, metadata !4301, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i32 %5, metadata !4302, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i32 10, metadata !4236, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %1, metadata !4237, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %2, metadata !4238, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i8* %3, metadata !4239, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i8* %4, metadata !4240, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i32 %5, metadata !4241, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i32 0, metadata !4242, metadata !DIExpression()) #34, !dbg !4304
  %8 = bitcast i64* %7 to i8*, !dbg !4306
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #34, !dbg !4306
  call void @llvm.dbg.value(metadata i64* %7, metadata !4243, metadata !DIExpression(DW_OP_deref)) #34, !dbg !4304
  %9 = call i32 @xstrtoimax(i8* noundef nonnull %0, i8** noundef null, i32 noundef 10, i64* noundef nonnull %7, i8* noundef %3) #34, !dbg !4307
  call void @llvm.dbg.value(metadata i32 %9, metadata !4245, metadata !DIExpression()) #34, !dbg !4304
  %10 = icmp eq i32 %9, 4, !dbg !4308
  br i1 %10, label %23, label %11, !dbg !4309

11:                                               ; preds = %6
  %12 = load i64, i64* %7, align 8, !dbg !4310, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %12, metadata !4243, metadata !DIExpression()) #34, !dbg !4304
  %13 = icmp slt i64 %12, %1, !dbg !4311
  br i1 %13, label %14, label %16, !dbg !4312

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i32 75, metadata !4247, metadata !DIExpression()) #34, !dbg !4304
  %15 = icmp eq i32 %9, 0, !dbg !4313
  call void @llvm.dbg.value(metadata i32 undef, metadata !4245, metadata !DIExpression()) #34, !dbg !4304
  br i1 %15, label %22, label %20, !dbg !4314

16:                                               ; preds = %11
  %17 = icmp sgt i64 %12, %2, !dbg !4315
  br i1 %17, label %18, label %20, !dbg !4316

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 %2, metadata !4244, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i32 75, metadata !4247, metadata !DIExpression()) #34, !dbg !4304
  %19 = icmp eq i32 %9, 0, !dbg !4317
  call void @llvm.dbg.value(metadata i32 undef, metadata !4245, metadata !DIExpression()) #34, !dbg !4304
  br i1 %19, label %22, label %20, !dbg !4318

20:                                               ; preds = %18, %16, %14
  %21 = phi i64 [ %1, %14 ], [ %2, %18 ], [ %12, %16 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !4244, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i32 %9, metadata !4245, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i32 75, metadata !4247, metadata !DIExpression()) #34, !dbg !4304
  call void @llvm.dbg.value(metadata i32 undef, metadata !4248, metadata !DIExpression()) #34, !dbg !4304
  switch i32 %9, label %23 [
    i32 0, label %28
    i32 1, label %22
  ], !dbg !4319

22:                                               ; preds = %20, %18, %14
  call void @llvm.dbg.value(metadata i64 %12, metadata !4243, metadata !DIExpression()) #34, !dbg !4304
  br label %23

23:                                               ; preds = %20, %22, %6
  %24 = phi i32 [ 75, %22 ], [ 0, %6 ], [ 0, %20 ]
  %25 = icmp eq i32 %5, 0, !dbg !4320
  %26 = select i1 %25, i32 1, i32 %5, !dbg !4320
  %27 = call i8* @quote(i8* noundef nonnull %0) #34, !dbg !4321
  call void (i32, i32, i8*, ...) @error(i32 noundef %26, i32 noundef %24, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i64 0, i64 0), i8* noundef nonnull %4, i8* noundef %27) #34, !dbg !4321
  unreachable, !dbg !4321

28:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 0, metadata !4248, metadata !DIExpression()) #34, !dbg !4304
  %29 = tail call i32* @__errno_location() #37, !dbg !4322
  store i32 0, i32* %29, align 4, !dbg !4323, !tbaa !713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #34, !dbg !4324
  ret i64 %21, !dbg !4325
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #12 !dbg !4326 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4332, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i8** %1, metadata !4333, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 %2, metadata !4334, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64* %3, metadata !4335, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i8* %4, metadata !4336, metadata !DIExpression()), !dbg !4346
  %7 = bitcast i8** %6 to i8*, !dbg !4347
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #34, !dbg !4347
  %8 = icmp eq i8** %1, null, !dbg !4348
  %9 = select i1 %8, i8** %6, i8** %1, !dbg !4348
  call void @llvm.dbg.value(metadata i8** %9, metadata !4338, metadata !DIExpression()), !dbg !4346
  %10 = tail call i32* @__errno_location() #37, !dbg !4349
  store i32 0, i32* %10, align 4, !dbg !4350, !tbaa !713
  %11 = call i64 @strtoimax(i8* noundef %0, i8** noundef %9, i32 noundef %2) #34, !dbg !4351
  call void @llvm.dbg.value(metadata i64 %11, metadata !4339, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 0, metadata !4340, metadata !DIExpression()), !dbg !4346
  %12 = load i8*, i8** %9, align 8, !dbg !4352, !tbaa !609
  %13 = icmp eq i8* %12, %0, !dbg !4354
  br i1 %13, label %14, label %23, !dbg !4355

14:                                               ; preds = %5
  %15 = icmp eq i8* %4, null, !dbg !4356
  br i1 %15, label %1077, label %16, !dbg !4359

16:                                               ; preds = %14
  %17 = load i8, i8* %0, align 1, !dbg !4360, !tbaa !722
  %18 = icmp eq i8 %17, 0, !dbg !4360
  br i1 %18, label %1077, label %19, !dbg !4361

19:                                               ; preds = %16
  %20 = zext i8 %17 to i32, !dbg !4360
  %21 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %20) #35, !dbg !4362
  %22 = icmp eq i8* %21, null, !dbg !4362
  br i1 %22, label %1077, label %30, !dbg !4363

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4, !dbg !4364, !tbaa !713
  switch i32 %24, label %1077 [
    i32 0, label %26
    i32 34, label %25
  ], !dbg !4366

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !4340, metadata !DIExpression()), !dbg !4346
  br label %26, !dbg !4367

26:                                               ; preds = %23, %25
  %27 = phi i32 [ 1, %25 ], [ %24, %23 ], !dbg !4346
  call void @llvm.dbg.value(metadata i32 %27, metadata !4340, metadata !DIExpression()), !dbg !4346
  %28 = icmp eq i8* %4, null, !dbg !4369
  br i1 %28, label %29, label %30, !dbg !4371

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 %11, metadata !4339, metadata !DIExpression()), !dbg !4346
  store i64 %11, i64* %3, align 8, !dbg !4372, !tbaa !883
  br label %1077, !dbg !4374

30:                                               ; preds = %19, %26
  %31 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %32 = phi i64 [ %11, %26 ], [ 1, %19 ]
  %33 = load i8, i8* %12, align 1, !dbg !4375, !tbaa !722
  %34 = icmp eq i8 %33, 0, !dbg !4376
  br i1 %34, label %1074, label %35, !dbg !4377

35:                                               ; preds = %30
  %36 = zext i8 %33 to i32, !dbg !4375
  %37 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %36) #35, !dbg !4378
  %38 = icmp eq i8* %37, null, !dbg !4378
  br i1 %38, label %39, label %41, !dbg !4380

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %11, metadata !4339, metadata !DIExpression()), !dbg !4346
  store i64 %32, i64* %3, align 8, !dbg !4381, !tbaa !883
  %40 = or i32 %31, 2, !dbg !4383
  br label %1077, !dbg !4384

41:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !4341, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 1, metadata !4344, metadata !DIExpression()), !dbg !4385
  switch i8 %33, label %54 [
    i8 69, label %42
    i8 71, label %42
    i8 103, label %42
    i8 107, label %42
    i8 75, label %42
    i8 77, label %42
    i8 109, label %42
    i8 80, label %42
    i8 81, label %42
    i8 82, label %42
    i8 84, label %42
    i8 116, label %42
    i8 89, label %42
    i8 90, label %42
  ], !dbg !4386

42:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %43 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #35, !dbg !4387
  %44 = icmp eq i8* %43, null, !dbg !4387
  br i1 %44, label %54, label %45, !dbg !4390

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4391
  %47 = load i8, i8* %46, align 1, !dbg !4391, !tbaa !722
  switch i8 %47, label %54 [
    i8 105, label %48
    i8 66, label %53
    i8 68, label %53
  ], !dbg !4392

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !4393
  %50 = load i8, i8* %49, align 1, !dbg !4393, !tbaa !722
  %51 = icmp eq i8 %50, 66, !dbg !4396
  %52 = select i1 %51, i64 3, i64 1, !dbg !4397
  br label %54, !dbg !4397

53:                                               ; preds = %45, %45
  call void @llvm.dbg.value(metadata i32 1000, metadata !4341, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 2, metadata !4344, metadata !DIExpression()), !dbg !4385
  br label %54, !dbg !4398

54:                                               ; preds = %48, %42, %45, %53, %41
  %55 = phi i64 [ 1024, %41 ], [ 1024, %45 ], [ 1000, %53 ], [ 1024, %42 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %41 ], [ 1, %45 ], [ 2, %53 ], [ 1, %42 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4344, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i32 undef, metadata !4341, metadata !DIExpression()), !dbg !4385
  switch i8 %33, label %1072 [
    i8 98, label %69
    i8 66, label %78
    i8 99, label %1063
    i8 69, label %67
    i8 71, label %191
    i8 103, label %191
    i8 107, label %241
    i8 75, label %241
    i8 77, label %254
    i8 109, label %254
    i8 80, label %65
    i8 81, label %63
    i8 82, label %61
    i8 84, label %720
    i8 116, label %720
    i8 119, label %786
    i8 89, label %59
    i8 90, label %57
  ], !dbg !4399

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 7, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 6, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  %58 = icmp slt i64 %32, 0, !dbg !4420
  br i1 %58, label %939, label %945, !dbg !4420

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 8, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 7, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  %60 = icmp slt i64 %32, 0, !dbg !4426
  br i1 %60, label %795, label %801, !dbg !4426

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 9, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 8, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %62 = icmp slt i64 %32, 0, !dbg !4431
  br i1 %62, label %556, label %562, !dbg !4431

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 10, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 9, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %64 = icmp slt i64 %32, 0, !dbg !4436
  br i1 %64, label %372, label %378, !dbg !4436

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 5, metadata !4407, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4439
  %66 = icmp slt i64 %32, 0, !dbg !4441
  br i1 %66, label %288, label %294, !dbg !4441

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 6, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 5, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  %68 = icmp slt i64 %32, 0, !dbg !4446
  br i1 %68, label %87, label %93, !dbg !4446

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 512, metadata !4416, metadata !DIExpression()), !dbg !4447
  %70 = icmp slt i64 %32, 0, !dbg !4449
  br i1 %70, label %71, label %74, !dbg !4449

71:                                               ; preds = %69
  %72 = add i64 %32, -1, !dbg !4449
  %73 = icmp ult i64 %72, -18014398509481985, !dbg !4449
  br i1 %73, label %1063, label %76, !dbg !4449

74:                                               ; preds = %69
  %75 = icmp ugt i64 %32, 18014398509481983, !dbg !4449
  br i1 %75, label %1063, label %76, !dbg !4449

76:                                               ; preds = %74, %71
  %77 = shl nsw i64 %32, 9, !dbg !4449
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 512), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4447
  br label %1063, !dbg !4450

78:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i32 1024, metadata !4416, metadata !DIExpression()), !dbg !4451
  %79 = icmp slt i64 %32, 0, !dbg !4453
  br i1 %79, label %80, label %83, !dbg !4453

80:                                               ; preds = %78
  %81 = add i64 %32, -1, !dbg !4453
  %82 = icmp ult i64 %81, -9007199254740993, !dbg !4453
  br i1 %82, label %1063, label %85, !dbg !4453

83:                                               ; preds = %78
  %84 = icmp ugt i64 %32, 9007199254740991, !dbg !4453
  br i1 %84, label %1063, label %85, !dbg !4453

85:                                               ; preds = %83, %80
  %86 = shl nsw i64 %32, 10, !dbg !4453
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 1024), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4451
  br label %1063, !dbg !4454

87:                                               ; preds = %67
  %88 = icmp eq i64 %32, -1, !dbg !4446
  br i1 %88, label %96, label %89, !dbg !4446

89:                                               ; preds = %87
  %90 = sub i64 0, %32, !dbg !4446
  %91 = udiv i64 -9223372036854775808, %90, !dbg !4446
  %92 = icmp ult i64 %91, %55, !dbg !4446
  br i1 %92, label %104, label %96, !dbg !4446

93:                                               ; preds = %67
  %94 = udiv i64 9223372036854775807, %55, !dbg !4446
  %95 = icmp ult i64 %94, %32, !dbg !4446
  br i1 %95, label %99, label %96, !dbg !4446

96:                                               ; preds = %87, %89, %93
  %97 = mul i64 %32, %55, !dbg !4446
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4444
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  %98 = icmp slt i64 %97, 0, !dbg !4446
  br i1 %98, label %104, label %99, !dbg !4446

99:                                               ; preds = %93, %96
  %100 = phi i32 [ 0, %96 ], [ 1, %93 ]
  %101 = phi i64 [ %97, %96 ], [ 9223372036854775807, %93 ]
  %102 = udiv i64 9223372036854775807, %55, !dbg !4446
  %103 = icmp ult i64 %102, %101, !dbg !4446
  br i1 %103, label %115, label %110, !dbg !4446

104:                                              ; preds = %89, %96
  %105 = phi i32 [ 0, %96 ], [ 1, %89 ]
  %106 = phi i64 [ %97, %96 ], [ -9223372036854775808, %89 ]
  %107 = sub i64 0, %106, !dbg !4446
  %108 = udiv i64 -9223372036854775808, %107, !dbg !4446
  %109 = icmp slt i64 %108, %55, !dbg !4446
  br i1 %109, label %120, label %110, !dbg !4446

110:                                              ; preds = %99, %104
  %111 = phi i32 [ %105, %104 ], [ %100, %99 ]
  %112 = phi i64 [ %106, %104 ], [ %101, %99 ]
  %113 = mul i64 %112, %55, !dbg !4446
  call void @llvm.dbg.value(metadata !DIArgList(i64 %97, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4444
  call void @llvm.dbg.value(metadata i32 %111, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  %114 = icmp slt i64 %113, 0, !dbg !4446
  br i1 %114, label %120, label %115, !dbg !4446

115:                                              ; preds = %99, %110
  %116 = phi i32 [ %111, %110 ], [ 1, %99 ]
  %117 = phi i64 [ %113, %110 ], [ 9223372036854775807, %99 ]
  %118 = udiv i64 9223372036854775807, %55, !dbg !4446
  %119 = icmp ult i64 %118, %117, !dbg !4446
  br i1 %119, label %131, label %126, !dbg !4446

120:                                              ; preds = %104, %110
  %121 = phi i32 [ %111, %110 ], [ 1, %104 ]
  %122 = phi i64 [ %113, %110 ], [ -9223372036854775808, %104 ]
  %123 = sub i64 0, %122, !dbg !4446
  %124 = udiv i64 -9223372036854775808, %123, !dbg !4446
  %125 = icmp slt i64 %124, %55, !dbg !4446
  br i1 %125, label %138, label %126, !dbg !4446

126:                                              ; preds = %115, %120
  %127 = phi i32 [ %121, %120 ], [ %116, %115 ]
  %128 = phi i64 [ %122, %120 ], [ %117, %115 ]
  %129 = mul i64 %128, %55, !dbg !4446
  call void @llvm.dbg.value(metadata !DIArgList(i64 %113, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4444
  call void @llvm.dbg.value(metadata i32 %127, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  %130 = icmp slt i64 %129, 0, !dbg !4446
  br i1 %130, label %138, label %131, !dbg !4446

131:                                              ; preds = %115, %126
  %132 = phi i32 [ %127, %126 ], [ 1, %115 ]
  %133 = phi i64 [ %129, %126 ], [ 9223372036854775807, %115 ]
  %134 = udiv i64 9223372036854775807, %55, !dbg !4446
  %135 = icmp ult i64 %134, %133, !dbg !4446
  br i1 %135, label %136, label %146, !dbg !4446

136:                                              ; preds = %131
  %137 = or i32 %132, 1, !dbg !4455
  call void @llvm.dbg.value(metadata i32 %147, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  br label %151, !dbg !4446

138:                                              ; preds = %120, %126
  %139 = phi i32 [ %127, %126 ], [ 1, %120 ]
  %140 = phi i64 [ %129, %126 ], [ -9223372036854775808, %120 ]
  %141 = sub i64 0, %140, !dbg !4446
  %142 = udiv i64 -9223372036854775808, %141, !dbg !4446
  %143 = icmp slt i64 %142, %55, !dbg !4446
  br i1 %143, label %144, label %146, !dbg !4446

144:                                              ; preds = %138
  %145 = or i32 %139, 1, !dbg !4455
  call void @llvm.dbg.value(metadata i32 %147, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  br label %158, !dbg !4446

146:                                              ; preds = %131, %138
  %147 = phi i32 [ %139, %138 ], [ %132, %131 ]
  %148 = phi i64 [ %140, %138 ], [ %133, %131 ]
  %149 = mul i64 %148, %55, !dbg !4446
  call void @llvm.dbg.value(metadata !DIArgList(i64 %129, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4444
  call void @llvm.dbg.value(metadata i32 %147, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  %150 = icmp slt i64 %149, 0, !dbg !4446
  br i1 %150, label %158, label %151, !dbg !4446

151:                                              ; preds = %136, %146
  %152 = phi i32 [ %137, %136 ], [ %147, %146 ]
  %153 = phi i64 [ 9223372036854775807, %136 ], [ %149, %146 ]
  %154 = udiv i64 9223372036854775807, %55, !dbg !4446
  %155 = icmp ult i64 %154, %153, !dbg !4446
  br i1 %155, label %156, label %166, !dbg !4446

156:                                              ; preds = %151
  %157 = or i32 %152, 1, !dbg !4455
  call void @llvm.dbg.value(metadata i32 %167, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  br label %171, !dbg !4446

158:                                              ; preds = %146, %144
  %159 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %160 = phi i64 [ -9223372036854775808, %144 ], [ %149, %146 ]
  %161 = sub i64 0, %160, !dbg !4446
  %162 = udiv i64 -9223372036854775808, %161, !dbg !4446
  %163 = icmp slt i64 %162, %55, !dbg !4446
  br i1 %163, label %164, label %166, !dbg !4446

164:                                              ; preds = %158
  %165 = or i32 %159, 1, !dbg !4455
  call void @llvm.dbg.value(metadata i32 %167, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  br label %176, !dbg !4446

166:                                              ; preds = %151, %158
  %167 = phi i32 [ %159, %158 ], [ %152, %151 ]
  %168 = phi i64 [ %160, %158 ], [ %153, %151 ]
  %169 = mul i64 %168, %55, !dbg !4446
  call void @llvm.dbg.value(metadata !DIArgList(i64 %149, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4444
  call void @llvm.dbg.value(metadata i32 %167, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4444
  %170 = icmp slt i64 %169, 0, !dbg !4446
  br i1 %170, label %176, label %171, !dbg !4446

171:                                              ; preds = %156, %166
  %172 = phi i32 [ %157, %156 ], [ %167, %166 ]
  %173 = phi i64 [ 9223372036854775807, %156 ], [ %169, %166 ]
  %174 = udiv i64 9223372036854775807, %55, !dbg !4446
  %175 = icmp ult i64 %174, %173, !dbg !4446
  br i1 %175, label %186, label %182, !dbg !4446

176:                                              ; preds = %166, %164
  %177 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %178 = phi i64 [ -9223372036854775808, %164 ], [ %169, %166 ]
  %179 = sub i64 0, %178, !dbg !4446
  %180 = udiv i64 -9223372036854775808, %179, !dbg !4446
  %181 = icmp slt i64 %180, %55, !dbg !4446
  br i1 %181, label %186, label %182, !dbg !4446

182:                                              ; preds = %176, %171
  %183 = phi i32 [ %177, %176 ], [ %172, %171 ]
  %184 = phi i64 [ %178, %176 ], [ %173, %171 ]
  %185 = mul i64 %184, %55, !dbg !4446
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4444
  br label %186, !dbg !4456

186:                                              ; preds = %182, %176, %171
  %187 = phi i32 [ %183, %182 ], [ %172, %171 ], [ %177, %176 ]
  %188 = phi i64 [ %185, %182 ], [ 9223372036854775807, %171 ], [ -9223372036854775808, %176 ], !dbg !4444
  %189 = phi i32 [ 0, %182 ], [ 1, %171 ], [ 1, %176 ], !dbg !4444
  %190 = or i32 %189, %187, !dbg !4455
  call void @llvm.dbg.value(metadata i32 %190, metadata !4400, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4442
  br label %1063, !dbg !4457

191:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4405, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 undef, metadata !4406, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4460
  %192 = icmp slt i64 %32, 0, !dbg !4462
  br i1 %192, label %193, label %199, !dbg !4462

193:                                              ; preds = %191
  %194 = icmp eq i64 %32, -1, !dbg !4462
  br i1 %194, label %202, label %195, !dbg !4462

195:                                              ; preds = %193
  %196 = sub i64 0, %32, !dbg !4462
  %197 = udiv i64 -9223372036854775808, %196, !dbg !4462
  %198 = icmp ult i64 %197, %55, !dbg !4462
  br i1 %198, label %210, label %202, !dbg !4462

199:                                              ; preds = %191
  %200 = udiv i64 9223372036854775807, %55, !dbg !4462
  %201 = icmp ult i64 %200, %32, !dbg !4462
  br i1 %201, label %205, label %202, !dbg !4462

202:                                              ; preds = %193, %195, %199
  %203 = mul i64 %32, %55, !dbg !4462
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4460
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4460
  %204 = icmp slt i64 %203, 0, !dbg !4462
  br i1 %204, label %210, label %205, !dbg !4462

205:                                              ; preds = %199, %202
  %206 = phi i32 [ 0, %202 ], [ 1, %199 ]
  %207 = phi i64 [ %203, %202 ], [ 9223372036854775807, %199 ]
  %208 = udiv i64 9223372036854775807, %55, !dbg !4462
  %209 = icmp ult i64 %208, %207, !dbg !4462
  br i1 %209, label %221, label %216, !dbg !4462

210:                                              ; preds = %195, %202
  %211 = phi i32 [ 0, %202 ], [ 1, %195 ]
  %212 = phi i64 [ %203, %202 ], [ -9223372036854775808, %195 ]
  %213 = sub i64 0, %212, !dbg !4462
  %214 = udiv i64 -9223372036854775808, %213, !dbg !4462
  %215 = icmp slt i64 %214, %55, !dbg !4462
  br i1 %215, label %226, label %216, !dbg !4462

216:                                              ; preds = %205, %210
  %217 = phi i32 [ %211, %210 ], [ %206, %205 ]
  %218 = phi i64 [ %212, %210 ], [ %207, %205 ]
  %219 = mul i64 %218, %55, !dbg !4462
  call void @llvm.dbg.value(metadata !DIArgList(i64 %203, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4460
  call void @llvm.dbg.value(metadata i32 %217, metadata !4400, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4460
  %220 = icmp slt i64 %219, 0, !dbg !4462
  br i1 %220, label %226, label %221, !dbg !4462

221:                                              ; preds = %205, %216
  %222 = phi i32 [ %217, %216 ], [ 1, %205 ]
  %223 = phi i64 [ %219, %216 ], [ 9223372036854775807, %205 ]
  %224 = udiv i64 9223372036854775807, %55, !dbg !4462
  %225 = icmp ult i64 %224, %223, !dbg !4462
  br i1 %225, label %236, label %232, !dbg !4462

226:                                              ; preds = %210, %216
  %227 = phi i32 [ %217, %216 ], [ 1, %210 ]
  %228 = phi i64 [ %219, %216 ], [ -9223372036854775808, %210 ]
  %229 = sub i64 0, %228, !dbg !4462
  %230 = udiv i64 -9223372036854775808, %229, !dbg !4462
  %231 = icmp slt i64 %230, %55, !dbg !4462
  br i1 %231, label %236, label %232, !dbg !4462

232:                                              ; preds = %226, %221
  %233 = phi i32 [ %227, %226 ], [ %222, %221 ]
  %234 = phi i64 [ %228, %226 ], [ %223, %221 ]
  %235 = mul i64 %234, %55, !dbg !4462
  call void @llvm.dbg.value(metadata !DIArgList(i64 %219, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4460
  br label %236, !dbg !4463

236:                                              ; preds = %232, %226, %221
  %237 = phi i32 [ %233, %232 ], [ %222, %221 ], [ %227, %226 ]
  %238 = phi i64 [ %235, %232 ], [ 9223372036854775807, %221 ], [ -9223372036854775808, %226 ], !dbg !4460
  %239 = phi i32 [ 0, %232 ], [ 1, %221 ], [ 1, %226 ], !dbg !4460
  %240 = or i32 %239, %237, !dbg !4464
  call void @llvm.dbg.value(metadata i32 %240, metadata !4400, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4458
  br label %1063, !dbg !4457

241:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4405, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i32 undef, metadata !4406, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i32 undef, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4465
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4467
  %242 = icmp slt i64 %32, 0, !dbg !4469
  br i1 %242, label %243, label %249, !dbg !4469

243:                                              ; preds = %241
  %244 = icmp eq i64 %32, -1, !dbg !4469
  br i1 %244, label %252, label %245, !dbg !4469

245:                                              ; preds = %243
  %246 = sub i64 0, %32, !dbg !4469
  %247 = udiv i64 -9223372036854775808, %246, !dbg !4469
  %248 = icmp ult i64 %247, %55, !dbg !4469
  br i1 %248, label %1063, label %252, !dbg !4469

249:                                              ; preds = %241
  %250 = udiv i64 9223372036854775807, %55, !dbg !4469
  %251 = icmp ult i64 %250, %32, !dbg !4469
  br i1 %251, label %1063, label %252, !dbg !4469

252:                                              ; preds = %249, %245, %243
  %253 = mul i64 %32, %55, !dbg !4469
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4467
  br label %1063, !dbg !4470

254:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4405, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i32 undef, metadata !4406, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4473
  %255 = icmp slt i64 %32, 0, !dbg !4475
  br i1 %255, label %256, label %262, !dbg !4475

256:                                              ; preds = %254
  %257 = icmp eq i64 %32, -1, !dbg !4475
  br i1 %257, label %265, label %258, !dbg !4475

258:                                              ; preds = %256
  %259 = sub i64 0, %32, !dbg !4475
  %260 = udiv i64 -9223372036854775808, %259, !dbg !4475
  %261 = icmp ult i64 %260, %55, !dbg !4475
  br i1 %261, label %273, label %265, !dbg !4475

262:                                              ; preds = %254
  %263 = udiv i64 9223372036854775807, %55, !dbg !4475
  %264 = icmp ult i64 %263, %32, !dbg !4475
  br i1 %264, label %268, label %265, !dbg !4475

265:                                              ; preds = %256, %258, %262
  %266 = mul i64 %32, %55, !dbg !4475
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4473
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4473
  %267 = icmp slt i64 %266, 0, !dbg !4475
  br i1 %267, label %273, label %268, !dbg !4475

268:                                              ; preds = %262, %265
  %269 = phi i32 [ 0, %265 ], [ 1, %262 ]
  %270 = phi i64 [ %266, %265 ], [ 9223372036854775807, %262 ]
  %271 = udiv i64 9223372036854775807, %55, !dbg !4475
  %272 = icmp ult i64 %271, %270, !dbg !4475
  br i1 %272, label %283, label %279, !dbg !4475

273:                                              ; preds = %258, %265
  %274 = phi i32 [ 0, %265 ], [ 1, %258 ]
  %275 = phi i64 [ %266, %265 ], [ -9223372036854775808, %258 ]
  %276 = sub i64 0, %275, !dbg !4475
  %277 = udiv i64 -9223372036854775808, %276, !dbg !4475
  %278 = icmp slt i64 %277, %55, !dbg !4475
  br i1 %278, label %283, label %279, !dbg !4475

279:                                              ; preds = %273, %268
  %280 = phi i32 [ %274, %273 ], [ %269, %268 ]
  %281 = phi i64 [ %275, %273 ], [ %270, %268 ]
  %282 = mul i64 %281, %55, !dbg !4475
  call void @llvm.dbg.value(metadata !DIArgList(i64 %266, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4473
  br label %283, !dbg !4476

283:                                              ; preds = %279, %273, %268
  %284 = phi i32 [ %280, %279 ], [ %269, %268 ], [ %274, %273 ]
  %285 = phi i64 [ %282, %279 ], [ 9223372036854775807, %268 ], [ -9223372036854775808, %273 ], !dbg !4473
  %286 = phi i32 [ 0, %279 ], [ 1, %268 ], [ 1, %273 ], !dbg !4473
  %287 = or i32 %286, %284, !dbg !4477
  call void @llvm.dbg.value(metadata i32 %287, metadata !4400, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4471
  br label %1063, !dbg !4457

288:                                              ; preds = %65
  %289 = icmp eq i64 %32, -1, !dbg !4441
  br i1 %289, label %297, label %290, !dbg !4441

290:                                              ; preds = %288
  %291 = sub i64 0, %32, !dbg !4441
  %292 = udiv i64 -9223372036854775808, %291, !dbg !4441
  %293 = icmp ult i64 %292, %55, !dbg !4441
  br i1 %293, label %305, label %297, !dbg !4441

294:                                              ; preds = %65
  %295 = udiv i64 9223372036854775807, %55, !dbg !4441
  %296 = icmp ult i64 %295, %32, !dbg !4441
  br i1 %296, label %300, label %297, !dbg !4441

297:                                              ; preds = %288, %290, %294
  %298 = mul i64 %32, %55, !dbg !4441
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4439
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4439
  %299 = icmp slt i64 %298, 0, !dbg !4441
  br i1 %299, label %305, label %300, !dbg !4441

300:                                              ; preds = %294, %297
  %301 = phi i32 [ 0, %297 ], [ 1, %294 ]
  %302 = phi i64 [ %298, %297 ], [ 9223372036854775807, %294 ]
  %303 = udiv i64 9223372036854775807, %55, !dbg !4441
  %304 = icmp ult i64 %303, %302, !dbg !4441
  br i1 %304, label %316, label %311, !dbg !4441

305:                                              ; preds = %290, %297
  %306 = phi i32 [ 0, %297 ], [ 1, %290 ]
  %307 = phi i64 [ %298, %297 ], [ -9223372036854775808, %290 ]
  %308 = sub i64 0, %307, !dbg !4441
  %309 = udiv i64 -9223372036854775808, %308, !dbg !4441
  %310 = icmp slt i64 %309, %55, !dbg !4441
  br i1 %310, label %321, label %311, !dbg !4441

311:                                              ; preds = %300, %305
  %312 = phi i32 [ %306, %305 ], [ %301, %300 ]
  %313 = phi i64 [ %307, %305 ], [ %302, %300 ]
  %314 = mul i64 %313, %55, !dbg !4441
  call void @llvm.dbg.value(metadata !DIArgList(i64 %298, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4439
  call void @llvm.dbg.value(metadata i32 %312, metadata !4400, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4439
  %315 = icmp slt i64 %314, 0, !dbg !4441
  br i1 %315, label %321, label %316, !dbg !4441

316:                                              ; preds = %300, %311
  %317 = phi i32 [ %312, %311 ], [ 1, %300 ]
  %318 = phi i64 [ %314, %311 ], [ 9223372036854775807, %300 ]
  %319 = udiv i64 9223372036854775807, %55, !dbg !4441
  %320 = icmp ult i64 %319, %318, !dbg !4441
  br i1 %320, label %332, label %327, !dbg !4441

321:                                              ; preds = %305, %311
  %322 = phi i32 [ %312, %311 ], [ 1, %305 ]
  %323 = phi i64 [ %314, %311 ], [ -9223372036854775808, %305 ]
  %324 = sub i64 0, %323, !dbg !4441
  %325 = udiv i64 -9223372036854775808, %324, !dbg !4441
  %326 = icmp slt i64 %325, %55, !dbg !4441
  br i1 %326, label %339, label %327, !dbg !4441

327:                                              ; preds = %316, %321
  %328 = phi i32 [ %322, %321 ], [ %317, %316 ]
  %329 = phi i64 [ %323, %321 ], [ %318, %316 ]
  %330 = mul i64 %329, %55, !dbg !4441
  call void @llvm.dbg.value(metadata !DIArgList(i64 %314, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4439
  call void @llvm.dbg.value(metadata i32 %328, metadata !4400, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4439
  %331 = icmp slt i64 %330, 0, !dbg !4441
  br i1 %331, label %339, label %332, !dbg !4441

332:                                              ; preds = %316, %327
  %333 = phi i32 [ %328, %327 ], [ 1, %316 ]
  %334 = phi i64 [ %330, %327 ], [ 9223372036854775807, %316 ]
  %335 = udiv i64 9223372036854775807, %55, !dbg !4441
  %336 = icmp ult i64 %335, %334, !dbg !4441
  br i1 %336, label %337, label %347, !dbg !4441

337:                                              ; preds = %332
  %338 = or i32 %333, 1, !dbg !4478
  call void @llvm.dbg.value(metadata i32 %348, metadata !4400, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4439
  br label %352, !dbg !4441

339:                                              ; preds = %321, %327
  %340 = phi i32 [ %328, %327 ], [ 1, %321 ]
  %341 = phi i64 [ %330, %327 ], [ -9223372036854775808, %321 ]
  %342 = sub i64 0, %341, !dbg !4441
  %343 = udiv i64 -9223372036854775808, %342, !dbg !4441
  %344 = icmp slt i64 %343, %55, !dbg !4441
  br i1 %344, label %345, label %347, !dbg !4441

345:                                              ; preds = %339
  %346 = or i32 %340, 1, !dbg !4478
  call void @llvm.dbg.value(metadata i32 %348, metadata !4400, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4439
  br label %357, !dbg !4441

347:                                              ; preds = %332, %339
  %348 = phi i32 [ %340, %339 ], [ %333, %332 ]
  %349 = phi i64 [ %341, %339 ], [ %334, %332 ]
  %350 = mul i64 %349, %55, !dbg !4441
  call void @llvm.dbg.value(metadata !DIArgList(i64 %330, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4439
  call void @llvm.dbg.value(metadata i32 %348, metadata !4400, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4439
  %351 = icmp slt i64 %350, 0, !dbg !4441
  br i1 %351, label %357, label %352, !dbg !4441

352:                                              ; preds = %337, %347
  %353 = phi i32 [ %338, %337 ], [ %348, %347 ]
  %354 = phi i64 [ 9223372036854775807, %337 ], [ %350, %347 ]
  %355 = udiv i64 9223372036854775807, %55, !dbg !4441
  %356 = icmp ult i64 %355, %354, !dbg !4441
  br i1 %356, label %367, label %363, !dbg !4441

357:                                              ; preds = %347, %345
  %358 = phi i32 [ %346, %345 ], [ %348, %347 ]
  %359 = phi i64 [ -9223372036854775808, %345 ], [ %350, %347 ]
  %360 = sub i64 0, %359, !dbg !4441
  %361 = udiv i64 -9223372036854775808, %360, !dbg !4441
  %362 = icmp slt i64 %361, %55, !dbg !4441
  br i1 %362, label %367, label %363, !dbg !4441

363:                                              ; preds = %357, %352
  %364 = phi i32 [ %358, %357 ], [ %353, %352 ]
  %365 = phi i64 [ %359, %357 ], [ %354, %352 ]
  %366 = mul i64 %365, %55, !dbg !4441
  call void @llvm.dbg.value(metadata !DIArgList(i64 %350, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4439
  br label %367, !dbg !4479

367:                                              ; preds = %363, %357, %352
  %368 = phi i32 [ %364, %363 ], [ %353, %352 ], [ %358, %357 ]
  %369 = phi i64 [ %366, %363 ], [ 9223372036854775807, %352 ], [ -9223372036854775808, %357 ], !dbg !4439
  %370 = phi i32 [ 0, %363 ], [ 1, %352 ], [ 1, %357 ], !dbg !4439
  %371 = or i32 %370, %368, !dbg !4478
  call void @llvm.dbg.value(metadata i32 %371, metadata !4400, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4437
  br label %1063, !dbg !4457

372:                                              ; preds = %63
  %373 = icmp eq i64 %32, -1, !dbg !4436
  br i1 %373, label %381, label %374, !dbg !4436

374:                                              ; preds = %372
  %375 = sub i64 0, %32, !dbg !4436
  %376 = udiv i64 -9223372036854775808, %375, !dbg !4436
  %377 = icmp ult i64 %376, %55, !dbg !4436
  br i1 %377, label %389, label %381, !dbg !4436

378:                                              ; preds = %63
  %379 = udiv i64 9223372036854775807, %55, !dbg !4436
  %380 = icmp ult i64 %379, %32, !dbg !4436
  br i1 %380, label %384, label %381, !dbg !4436

381:                                              ; preds = %372, %374, %378
  %382 = mul i64 %32, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 8, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %383 = icmp slt i64 %382, 0, !dbg !4436
  br i1 %383, label %389, label %384, !dbg !4436

384:                                              ; preds = %378, %381
  %385 = phi i32 [ 0, %381 ], [ 1, %378 ]
  %386 = phi i64 [ %382, %381 ], [ 9223372036854775807, %378 ]
  %387 = udiv i64 9223372036854775807, %55, !dbg !4436
  %388 = icmp ult i64 %387, %386, !dbg !4436
  br i1 %388, label %400, label %395, !dbg !4436

389:                                              ; preds = %374, %381
  %390 = phi i32 [ 0, %381 ], [ 1, %374 ]
  %391 = phi i64 [ %382, %381 ], [ -9223372036854775808, %374 ]
  %392 = sub i64 0, %391, !dbg !4436
  %393 = udiv i64 -9223372036854775808, %392, !dbg !4436
  %394 = icmp slt i64 %393, %55, !dbg !4436
  br i1 %394, label %405, label %395, !dbg !4436

395:                                              ; preds = %384, %389
  %396 = phi i32 [ %390, %389 ], [ %385, %384 ]
  %397 = phi i64 [ %391, %389 ], [ %386, %384 ]
  %398 = mul i64 %397, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %382, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 %396, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 7, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %399 = icmp slt i64 %398, 0, !dbg !4436
  br i1 %399, label %405, label %400, !dbg !4436

400:                                              ; preds = %384, %395
  %401 = phi i32 [ %396, %395 ], [ 1, %384 ]
  %402 = phi i64 [ %398, %395 ], [ 9223372036854775807, %384 ]
  %403 = udiv i64 9223372036854775807, %55, !dbg !4436
  %404 = icmp ult i64 %403, %402, !dbg !4436
  br i1 %404, label %416, label %411, !dbg !4436

405:                                              ; preds = %389, %395
  %406 = phi i32 [ %396, %395 ], [ 1, %389 ]
  %407 = phi i64 [ %398, %395 ], [ -9223372036854775808, %389 ]
  %408 = sub i64 0, %407, !dbg !4436
  %409 = udiv i64 -9223372036854775808, %408, !dbg !4436
  %410 = icmp slt i64 %409, %55, !dbg !4436
  br i1 %410, label %423, label %411, !dbg !4436

411:                                              ; preds = %400, %405
  %412 = phi i32 [ %406, %405 ], [ %401, %400 ]
  %413 = phi i64 [ %407, %405 ], [ %402, %400 ]
  %414 = mul i64 %413, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %398, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 %412, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 6, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %415 = icmp slt i64 %414, 0, !dbg !4436
  br i1 %415, label %423, label %416, !dbg !4436

416:                                              ; preds = %400, %411
  %417 = phi i32 [ %412, %411 ], [ 1, %400 ]
  %418 = phi i64 [ %414, %411 ], [ 9223372036854775807, %400 ]
  %419 = udiv i64 9223372036854775807, %55, !dbg !4436
  %420 = icmp ult i64 %419, %418, !dbg !4436
  br i1 %420, label %421, label %431, !dbg !4436

421:                                              ; preds = %416
  %422 = or i32 %417, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %432, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 5, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %436, !dbg !4436

423:                                              ; preds = %405, %411
  %424 = phi i32 [ %412, %411 ], [ 1, %405 ]
  %425 = phi i64 [ %414, %411 ], [ -9223372036854775808, %405 ]
  %426 = sub i64 0, %425, !dbg !4436
  %427 = udiv i64 -9223372036854775808, %426, !dbg !4436
  %428 = icmp slt i64 %427, %55, !dbg !4436
  br i1 %428, label %429, label %431, !dbg !4436

429:                                              ; preds = %423
  %430 = or i32 %424, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %432, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 5, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %443, !dbg !4436

431:                                              ; preds = %416, %423
  %432 = phi i32 [ %424, %423 ], [ %417, %416 ]
  %433 = phi i64 [ %425, %423 ], [ %418, %416 ]
  %434 = mul i64 %433, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %414, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 %432, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 5, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %435 = icmp slt i64 %434, 0, !dbg !4436
  br i1 %435, label %443, label %436, !dbg !4436

436:                                              ; preds = %421, %431
  %437 = phi i32 [ %422, %421 ], [ %432, %431 ]
  %438 = phi i64 [ 9223372036854775807, %421 ], [ %434, %431 ]
  %439 = udiv i64 9223372036854775807, %55, !dbg !4436
  %440 = icmp ult i64 %439, %438, !dbg !4436
  br i1 %440, label %441, label %451, !dbg !4436

441:                                              ; preds = %436
  %442 = or i32 %437, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %452, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %456, !dbg !4436

443:                                              ; preds = %431, %429
  %444 = phi i32 [ %430, %429 ], [ %432, %431 ]
  %445 = phi i64 [ -9223372036854775808, %429 ], [ %434, %431 ]
  %446 = sub i64 0, %445, !dbg !4436
  %447 = udiv i64 -9223372036854775808, %446, !dbg !4436
  %448 = icmp slt i64 %447, %55, !dbg !4436
  br i1 %448, label %449, label %451, !dbg !4436

449:                                              ; preds = %443
  %450 = or i32 %444, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %452, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %463, !dbg !4436

451:                                              ; preds = %436, %443
  %452 = phi i32 [ %444, %443 ], [ %437, %436 ]
  %453 = phi i64 [ %445, %443 ], [ %438, %436 ]
  %454 = mul i64 %453, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %434, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 %452, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %455 = icmp slt i64 %454, 0, !dbg !4436
  br i1 %455, label %463, label %456, !dbg !4436

456:                                              ; preds = %441, %451
  %457 = phi i32 [ %442, %441 ], [ %452, %451 ]
  %458 = phi i64 [ 9223372036854775807, %441 ], [ %454, %451 ]
  %459 = udiv i64 9223372036854775807, %55, !dbg !4436
  %460 = icmp ult i64 %459, %458, !dbg !4436
  br i1 %460, label %461, label %471, !dbg !4436

461:                                              ; preds = %456
  %462 = or i32 %457, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %472, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %476, !dbg !4436

463:                                              ; preds = %451, %449
  %464 = phi i32 [ %450, %449 ], [ %452, %451 ]
  %465 = phi i64 [ -9223372036854775808, %449 ], [ %454, %451 ]
  %466 = sub i64 0, %465, !dbg !4436
  %467 = udiv i64 -9223372036854775808, %466, !dbg !4436
  %468 = icmp slt i64 %467, %55, !dbg !4436
  br i1 %468, label %469, label %471, !dbg !4436

469:                                              ; preds = %463
  %470 = or i32 %464, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %472, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %483, !dbg !4436

471:                                              ; preds = %456, %463
  %472 = phi i32 [ %464, %463 ], [ %457, %456 ]
  %473 = phi i64 [ %465, %463 ], [ %458, %456 ]
  %474 = mul i64 %473, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %454, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 %472, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %475 = icmp slt i64 %474, 0, !dbg !4436
  br i1 %475, label %483, label %476, !dbg !4436

476:                                              ; preds = %461, %471
  %477 = phi i32 [ %462, %461 ], [ %472, %471 ]
  %478 = phi i64 [ 9223372036854775807, %461 ], [ %474, %471 ]
  %479 = udiv i64 9223372036854775807, %55, !dbg !4436
  %480 = icmp ult i64 %479, %478, !dbg !4436
  br i1 %480, label %481, label %491, !dbg !4436

481:                                              ; preds = %476
  %482 = or i32 %477, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %492, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %496, !dbg !4436

483:                                              ; preds = %471, %469
  %484 = phi i32 [ %470, %469 ], [ %472, %471 ]
  %485 = phi i64 [ -9223372036854775808, %469 ], [ %474, %471 ]
  %486 = sub i64 0, %485, !dbg !4436
  %487 = udiv i64 -9223372036854775808, %486, !dbg !4436
  %488 = icmp slt i64 %487, %55, !dbg !4436
  br i1 %488, label %489, label %491, !dbg !4436

489:                                              ; preds = %483
  %490 = or i32 %484, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %492, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %503, !dbg !4436

491:                                              ; preds = %476, %483
  %492 = phi i32 [ %484, %483 ], [ %477, %476 ]
  %493 = phi i64 [ %485, %483 ], [ %478, %476 ]
  %494 = mul i64 %493, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %474, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 %492, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %495 = icmp slt i64 %494, 0, !dbg !4436
  br i1 %495, label %503, label %496, !dbg !4436

496:                                              ; preds = %481, %491
  %497 = phi i32 [ %482, %481 ], [ %492, %491 ]
  %498 = phi i64 [ 9223372036854775807, %481 ], [ %494, %491 ]
  %499 = udiv i64 9223372036854775807, %55, !dbg !4436
  %500 = icmp ult i64 %499, %498, !dbg !4436
  br i1 %500, label %501, label %511, !dbg !4436

501:                                              ; preds = %496
  %502 = or i32 %497, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %512, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %516, !dbg !4436

503:                                              ; preds = %491, %489
  %504 = phi i32 [ %490, %489 ], [ %492, %491 ]
  %505 = phi i64 [ -9223372036854775808, %489 ], [ %494, %491 ]
  %506 = sub i64 0, %505, !dbg !4436
  %507 = udiv i64 -9223372036854775808, %506, !dbg !4436
  %508 = icmp slt i64 %507, %55, !dbg !4436
  br i1 %508, label %509, label %511, !dbg !4436

509:                                              ; preds = %503
  %510 = or i32 %504, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %512, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %523, !dbg !4436

511:                                              ; preds = %496, %503
  %512 = phi i32 [ %504, %503 ], [ %497, %496 ]
  %513 = phi i64 [ %505, %503 ], [ %498, %496 ]
  %514 = mul i64 %513, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %494, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 %512, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %515 = icmp slt i64 %514, 0, !dbg !4436
  br i1 %515, label %523, label %516, !dbg !4436

516:                                              ; preds = %501, %511
  %517 = phi i32 [ %502, %501 ], [ %512, %511 ]
  %518 = phi i64 [ 9223372036854775807, %501 ], [ %514, %511 ]
  %519 = udiv i64 9223372036854775807, %55, !dbg !4436
  %520 = icmp ult i64 %519, %518, !dbg !4436
  br i1 %520, label %521, label %531, !dbg !4436

521:                                              ; preds = %516
  %522 = or i32 %517, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %532, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %536, !dbg !4436

523:                                              ; preds = %511, %509
  %524 = phi i32 [ %510, %509 ], [ %512, %511 ]
  %525 = phi i64 [ -9223372036854775808, %509 ], [ %514, %511 ]
  %526 = sub i64 0, %525, !dbg !4436
  %527 = udiv i64 -9223372036854775808, %526, !dbg !4436
  %528 = icmp slt i64 %527, %55, !dbg !4436
  br i1 %528, label %529, label %531, !dbg !4436

529:                                              ; preds = %523
  %530 = or i32 %524, 1, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %532, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  br label %541, !dbg !4436

531:                                              ; preds = %516, %523
  %532 = phi i32 [ %524, %523 ], [ %517, %516 ]
  %533 = phi i64 [ %525, %523 ], [ %518, %516 ]
  %534 = mul i64 %533, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %514, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  call void @llvm.dbg.value(metadata i32 %532, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4434
  %535 = icmp slt i64 %534, 0, !dbg !4436
  br i1 %535, label %541, label %536, !dbg !4436

536:                                              ; preds = %521, %531
  %537 = phi i32 [ %522, %521 ], [ %532, %531 ]
  %538 = phi i64 [ 9223372036854775807, %521 ], [ %534, %531 ]
  %539 = udiv i64 9223372036854775807, %55, !dbg !4436
  %540 = icmp ult i64 %539, %538, !dbg !4436
  br i1 %540, label %551, label %547, !dbg !4436

541:                                              ; preds = %531, %529
  %542 = phi i32 [ %530, %529 ], [ %532, %531 ]
  %543 = phi i64 [ -9223372036854775808, %529 ], [ %534, %531 ]
  %544 = sub i64 0, %543, !dbg !4436
  %545 = udiv i64 -9223372036854775808, %544, !dbg !4436
  %546 = icmp slt i64 %545, %55, !dbg !4436
  br i1 %546, label %551, label %547, !dbg !4436

547:                                              ; preds = %541, %536
  %548 = phi i32 [ %542, %541 ], [ %537, %536 ]
  %549 = phi i64 [ %543, %541 ], [ %538, %536 ]
  %550 = mul i64 %549, %55, !dbg !4436
  call void @llvm.dbg.value(metadata !DIArgList(i64 %534, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4434
  br label %551, !dbg !4481

551:                                              ; preds = %547, %541, %536
  %552 = phi i32 [ %548, %547 ], [ %537, %536 ], [ %542, %541 ]
  %553 = phi i64 [ %550, %547 ], [ 9223372036854775807, %536 ], [ -9223372036854775808, %541 ], !dbg !4434
  %554 = phi i32 [ 0, %547 ], [ 1, %536 ], [ 1, %541 ], !dbg !4434
  %555 = or i32 %554, %552, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %555, metadata !4400, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4432
  br label %1063, !dbg !4457

556:                                              ; preds = %61
  %557 = icmp eq i64 %32, -1, !dbg !4431
  br i1 %557, label %565, label %558, !dbg !4431

558:                                              ; preds = %556
  %559 = sub i64 0, %32, !dbg !4431
  %560 = udiv i64 -9223372036854775808, %559, !dbg !4431
  %561 = icmp ult i64 %560, %55, !dbg !4431
  br i1 %561, label %573, label %565, !dbg !4431

562:                                              ; preds = %61
  %563 = udiv i64 9223372036854775807, %55, !dbg !4431
  %564 = icmp ult i64 %563, %32, !dbg !4431
  br i1 %564, label %568, label %565, !dbg !4431

565:                                              ; preds = %556, %558, %562
  %566 = mul i64 %32, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 7, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %567 = icmp slt i64 %566, 0, !dbg !4431
  br i1 %567, label %573, label %568, !dbg !4431

568:                                              ; preds = %562, %565
  %569 = phi i32 [ 0, %565 ], [ 1, %562 ]
  %570 = phi i64 [ %566, %565 ], [ 9223372036854775807, %562 ]
  %571 = udiv i64 9223372036854775807, %55, !dbg !4431
  %572 = icmp ult i64 %571, %570, !dbg !4431
  br i1 %572, label %584, label %579, !dbg !4431

573:                                              ; preds = %558, %565
  %574 = phi i32 [ 0, %565 ], [ 1, %558 ]
  %575 = phi i64 [ %566, %565 ], [ -9223372036854775808, %558 ]
  %576 = sub i64 0, %575, !dbg !4431
  %577 = udiv i64 -9223372036854775808, %576, !dbg !4431
  %578 = icmp slt i64 %577, %55, !dbg !4431
  br i1 %578, label %589, label %579, !dbg !4431

579:                                              ; preds = %568, %573
  %580 = phi i32 [ %574, %573 ], [ %569, %568 ]
  %581 = phi i64 [ %575, %573 ], [ %570, %568 ]
  %582 = mul i64 %581, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %566, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %580, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 6, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %583 = icmp slt i64 %582, 0, !dbg !4431
  br i1 %583, label %589, label %584, !dbg !4431

584:                                              ; preds = %568, %579
  %585 = phi i32 [ %580, %579 ], [ 1, %568 ]
  %586 = phi i64 [ %582, %579 ], [ 9223372036854775807, %568 ]
  %587 = udiv i64 9223372036854775807, %55, !dbg !4431
  %588 = icmp ult i64 %587, %586, !dbg !4431
  br i1 %588, label %600, label %595, !dbg !4431

589:                                              ; preds = %573, %579
  %590 = phi i32 [ %580, %579 ], [ 1, %573 ]
  %591 = phi i64 [ %582, %579 ], [ -9223372036854775808, %573 ]
  %592 = sub i64 0, %591, !dbg !4431
  %593 = udiv i64 -9223372036854775808, %592, !dbg !4431
  %594 = icmp slt i64 %593, %55, !dbg !4431
  br i1 %594, label %607, label %595, !dbg !4431

595:                                              ; preds = %584, %589
  %596 = phi i32 [ %590, %589 ], [ %585, %584 ]
  %597 = phi i64 [ %591, %589 ], [ %586, %584 ]
  %598 = mul i64 %597, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %582, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %596, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 5, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %599 = icmp slt i64 %598, 0, !dbg !4431
  br i1 %599, label %607, label %600, !dbg !4431

600:                                              ; preds = %584, %595
  %601 = phi i32 [ %596, %595 ], [ 1, %584 ]
  %602 = phi i64 [ %598, %595 ], [ 9223372036854775807, %584 ]
  %603 = udiv i64 9223372036854775807, %55, !dbg !4431
  %604 = icmp ult i64 %603, %602, !dbg !4431
  br i1 %604, label %605, label %615, !dbg !4431

605:                                              ; preds = %600
  %606 = or i32 %601, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %616, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %620, !dbg !4431

607:                                              ; preds = %589, %595
  %608 = phi i32 [ %596, %595 ], [ 1, %589 ]
  %609 = phi i64 [ %598, %595 ], [ -9223372036854775808, %589 ]
  %610 = sub i64 0, %609, !dbg !4431
  %611 = udiv i64 -9223372036854775808, %610, !dbg !4431
  %612 = icmp slt i64 %611, %55, !dbg !4431
  br i1 %612, label %613, label %615, !dbg !4431

613:                                              ; preds = %607
  %614 = or i32 %608, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %616, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %627, !dbg !4431

615:                                              ; preds = %600, %607
  %616 = phi i32 [ %608, %607 ], [ %601, %600 ]
  %617 = phi i64 [ %609, %607 ], [ %602, %600 ]
  %618 = mul i64 %617, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %598, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %616, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %619 = icmp slt i64 %618, 0, !dbg !4431
  br i1 %619, label %627, label %620, !dbg !4431

620:                                              ; preds = %605, %615
  %621 = phi i32 [ %606, %605 ], [ %616, %615 ]
  %622 = phi i64 [ 9223372036854775807, %605 ], [ %618, %615 ]
  %623 = udiv i64 9223372036854775807, %55, !dbg !4431
  %624 = icmp ult i64 %623, %622, !dbg !4431
  br i1 %624, label %625, label %635, !dbg !4431

625:                                              ; preds = %620
  %626 = or i32 %621, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %636, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %640, !dbg !4431

627:                                              ; preds = %615, %613
  %628 = phi i32 [ %614, %613 ], [ %616, %615 ]
  %629 = phi i64 [ -9223372036854775808, %613 ], [ %618, %615 ]
  %630 = sub i64 0, %629, !dbg !4431
  %631 = udiv i64 -9223372036854775808, %630, !dbg !4431
  %632 = icmp slt i64 %631, %55, !dbg !4431
  br i1 %632, label %633, label %635, !dbg !4431

633:                                              ; preds = %627
  %634 = or i32 %628, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %636, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %647, !dbg !4431

635:                                              ; preds = %620, %627
  %636 = phi i32 [ %628, %627 ], [ %621, %620 ]
  %637 = phi i64 [ %629, %627 ], [ %622, %620 ]
  %638 = mul i64 %637, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %618, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %636, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %639 = icmp slt i64 %638, 0, !dbg !4431
  br i1 %639, label %647, label %640, !dbg !4431

640:                                              ; preds = %625, %635
  %641 = phi i32 [ %626, %625 ], [ %636, %635 ]
  %642 = phi i64 [ 9223372036854775807, %625 ], [ %638, %635 ]
  %643 = udiv i64 9223372036854775807, %55, !dbg !4431
  %644 = icmp ult i64 %643, %642, !dbg !4431
  br i1 %644, label %645, label %655, !dbg !4431

645:                                              ; preds = %640
  %646 = or i32 %641, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %656, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %660, !dbg !4431

647:                                              ; preds = %635, %633
  %648 = phi i32 [ %634, %633 ], [ %636, %635 ]
  %649 = phi i64 [ -9223372036854775808, %633 ], [ %638, %635 ]
  %650 = sub i64 0, %649, !dbg !4431
  %651 = udiv i64 -9223372036854775808, %650, !dbg !4431
  %652 = icmp slt i64 %651, %55, !dbg !4431
  br i1 %652, label %653, label %655, !dbg !4431

653:                                              ; preds = %647
  %654 = or i32 %648, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %656, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %667, !dbg !4431

655:                                              ; preds = %640, %647
  %656 = phi i32 [ %648, %647 ], [ %641, %640 ]
  %657 = phi i64 [ %649, %647 ], [ %642, %640 ]
  %658 = mul i64 %657, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %638, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %656, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %659 = icmp slt i64 %658, 0, !dbg !4431
  br i1 %659, label %667, label %660, !dbg !4431

660:                                              ; preds = %645, %655
  %661 = phi i32 [ %646, %645 ], [ %656, %655 ]
  %662 = phi i64 [ 9223372036854775807, %645 ], [ %658, %655 ]
  %663 = udiv i64 9223372036854775807, %55, !dbg !4431
  %664 = icmp ult i64 %663, %662, !dbg !4431
  br i1 %664, label %665, label %675, !dbg !4431

665:                                              ; preds = %660
  %666 = or i32 %661, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %676, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %680, !dbg !4431

667:                                              ; preds = %655, %653
  %668 = phi i32 [ %654, %653 ], [ %656, %655 ]
  %669 = phi i64 [ -9223372036854775808, %653 ], [ %658, %655 ]
  %670 = sub i64 0, %669, !dbg !4431
  %671 = udiv i64 -9223372036854775808, %670, !dbg !4431
  %672 = icmp slt i64 %671, %55, !dbg !4431
  br i1 %672, label %673, label %675, !dbg !4431

673:                                              ; preds = %667
  %674 = or i32 %668, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %676, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %687, !dbg !4431

675:                                              ; preds = %660, %667
  %676 = phi i32 [ %668, %667 ], [ %661, %660 ]
  %677 = phi i64 [ %669, %667 ], [ %662, %660 ]
  %678 = mul i64 %677, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %658, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %676, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %679 = icmp slt i64 %678, 0, !dbg !4431
  br i1 %679, label %687, label %680, !dbg !4431

680:                                              ; preds = %665, %675
  %681 = phi i32 [ %666, %665 ], [ %676, %675 ]
  %682 = phi i64 [ 9223372036854775807, %665 ], [ %678, %675 ]
  %683 = udiv i64 9223372036854775807, %55, !dbg !4431
  %684 = icmp ult i64 %683, %682, !dbg !4431
  br i1 %684, label %685, label %695, !dbg !4431

685:                                              ; preds = %680
  %686 = or i32 %681, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %696, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %700, !dbg !4431

687:                                              ; preds = %675, %673
  %688 = phi i32 [ %674, %673 ], [ %676, %675 ]
  %689 = phi i64 [ -9223372036854775808, %673 ], [ %678, %675 ]
  %690 = sub i64 0, %689, !dbg !4431
  %691 = udiv i64 -9223372036854775808, %690, !dbg !4431
  %692 = icmp slt i64 %691, %55, !dbg !4431
  br i1 %692, label %693, label %695, !dbg !4431

693:                                              ; preds = %687
  %694 = or i32 %688, 1, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %696, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  br label %705, !dbg !4431

695:                                              ; preds = %680, %687
  %696 = phi i32 [ %688, %687 ], [ %681, %680 ]
  %697 = phi i64 [ %689, %687 ], [ %682, %680 ]
  %698 = mul i64 %697, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %678, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %696, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4429
  %699 = icmp slt i64 %698, 0, !dbg !4431
  br i1 %699, label %705, label %700, !dbg !4431

700:                                              ; preds = %685, %695
  %701 = phi i32 [ %686, %685 ], [ %696, %695 ]
  %702 = phi i64 [ 9223372036854775807, %685 ], [ %698, %695 ]
  %703 = udiv i64 9223372036854775807, %55, !dbg !4431
  %704 = icmp ult i64 %703, %702, !dbg !4431
  br i1 %704, label %715, label %711, !dbg !4431

705:                                              ; preds = %695, %693
  %706 = phi i32 [ %694, %693 ], [ %696, %695 ]
  %707 = phi i64 [ -9223372036854775808, %693 ], [ %698, %695 ]
  %708 = sub i64 0, %707, !dbg !4431
  %709 = udiv i64 -9223372036854775808, %708, !dbg !4431
  %710 = icmp slt i64 %709, %55, !dbg !4431
  br i1 %710, label %715, label %711, !dbg !4431

711:                                              ; preds = %705, %700
  %712 = phi i32 [ %706, %705 ], [ %701, %700 ]
  %713 = phi i64 [ %707, %705 ], [ %702, %700 ]
  %714 = mul i64 %713, %55, !dbg !4431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %698, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4429
  br label %715, !dbg !4483

715:                                              ; preds = %711, %705, %700
  %716 = phi i32 [ %712, %711 ], [ %701, %700 ], [ %706, %705 ]
  %717 = phi i64 [ %714, %711 ], [ 9223372036854775807, %700 ], [ -9223372036854775808, %705 ], !dbg !4429
  %718 = phi i32 [ 0, %711 ], [ 1, %700 ], [ 1, %705 ], !dbg !4429
  %719 = or i32 %718, %716, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %719, metadata !4400, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4427
  br label %1063, !dbg !4457

720:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4405, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 undef, metadata !4406, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4486
  %721 = icmp slt i64 %32, 0, !dbg !4488
  br i1 %721, label %722, label %728, !dbg !4488

722:                                              ; preds = %720
  %723 = icmp eq i64 %32, -1, !dbg !4488
  br i1 %723, label %731, label %724, !dbg !4488

724:                                              ; preds = %722
  %725 = sub i64 0, %32, !dbg !4488
  %726 = udiv i64 -9223372036854775808, %725, !dbg !4488
  %727 = icmp ult i64 %726, %55, !dbg !4488
  br i1 %727, label %739, label %731, !dbg !4488

728:                                              ; preds = %720
  %729 = udiv i64 9223372036854775807, %55, !dbg !4488
  %730 = icmp ult i64 %729, %32, !dbg !4488
  br i1 %730, label %734, label %731, !dbg !4488

731:                                              ; preds = %722, %724, %728
  %732 = mul i64 %32, %55, !dbg !4488
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4486
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4486
  %733 = icmp slt i64 %732, 0, !dbg !4488
  br i1 %733, label %739, label %734, !dbg !4488

734:                                              ; preds = %728, %731
  %735 = phi i32 [ 0, %731 ], [ 1, %728 ]
  %736 = phi i64 [ %732, %731 ], [ 9223372036854775807, %728 ]
  %737 = udiv i64 9223372036854775807, %55, !dbg !4488
  %738 = icmp ult i64 %737, %736, !dbg !4488
  br i1 %738, label %750, label %745, !dbg !4488

739:                                              ; preds = %724, %731
  %740 = phi i32 [ 0, %731 ], [ 1, %724 ]
  %741 = phi i64 [ %732, %731 ], [ -9223372036854775808, %724 ]
  %742 = sub i64 0, %741, !dbg !4488
  %743 = udiv i64 -9223372036854775808, %742, !dbg !4488
  %744 = icmp slt i64 %743, %55, !dbg !4488
  br i1 %744, label %755, label %745, !dbg !4488

745:                                              ; preds = %734, %739
  %746 = phi i32 [ %740, %739 ], [ %735, %734 ]
  %747 = phi i64 [ %741, %739 ], [ %736, %734 ]
  %748 = mul i64 %747, %55, !dbg !4488
  call void @llvm.dbg.value(metadata !DIArgList(i64 %732, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4486
  call void @llvm.dbg.value(metadata i32 %746, metadata !4400, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4486
  %749 = icmp slt i64 %748, 0, !dbg !4488
  br i1 %749, label %755, label %750, !dbg !4488

750:                                              ; preds = %734, %745
  %751 = phi i32 [ %746, %745 ], [ 1, %734 ]
  %752 = phi i64 [ %748, %745 ], [ 9223372036854775807, %734 ]
  %753 = udiv i64 9223372036854775807, %55, !dbg !4488
  %754 = icmp ult i64 %753, %752, !dbg !4488
  br i1 %754, label %766, label %761, !dbg !4488

755:                                              ; preds = %739, %745
  %756 = phi i32 [ %746, %745 ], [ 1, %739 ]
  %757 = phi i64 [ %748, %745 ], [ -9223372036854775808, %739 ]
  %758 = sub i64 0, %757, !dbg !4488
  %759 = udiv i64 -9223372036854775808, %758, !dbg !4488
  %760 = icmp slt i64 %759, %55, !dbg !4488
  br i1 %760, label %771, label %761, !dbg !4488

761:                                              ; preds = %750, %755
  %762 = phi i32 [ %756, %755 ], [ %751, %750 ]
  %763 = phi i64 [ %757, %755 ], [ %752, %750 ]
  %764 = mul i64 %763, %55, !dbg !4488
  call void @llvm.dbg.value(metadata !DIArgList(i64 %748, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4486
  call void @llvm.dbg.value(metadata i32 %762, metadata !4400, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4486
  %765 = icmp slt i64 %764, 0, !dbg !4488
  br i1 %765, label %771, label %766, !dbg !4488

766:                                              ; preds = %750, %761
  %767 = phi i32 [ %762, %761 ], [ 1, %750 ]
  %768 = phi i64 [ %764, %761 ], [ 9223372036854775807, %750 ]
  %769 = udiv i64 9223372036854775807, %55, !dbg !4488
  %770 = icmp ult i64 %769, %768, !dbg !4488
  br i1 %770, label %781, label %777, !dbg !4488

771:                                              ; preds = %755, %761
  %772 = phi i32 [ %762, %761 ], [ 1, %755 ]
  %773 = phi i64 [ %764, %761 ], [ -9223372036854775808, %755 ]
  %774 = sub i64 0, %773, !dbg !4488
  %775 = udiv i64 -9223372036854775808, %774, !dbg !4488
  %776 = icmp slt i64 %775, %55, !dbg !4488
  br i1 %776, label %781, label %777, !dbg !4488

777:                                              ; preds = %771, %766
  %778 = phi i32 [ %772, %771 ], [ %767, %766 ]
  %779 = phi i64 [ %773, %771 ], [ %768, %766 ]
  %780 = mul i64 %779, %55, !dbg !4488
  call void @llvm.dbg.value(metadata !DIArgList(i64 %764, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4486
  br label %781, !dbg !4489

781:                                              ; preds = %777, %771, %766
  %782 = phi i32 [ %778, %777 ], [ %767, %766 ], [ %772, %771 ]
  %783 = phi i64 [ %780, %777 ], [ 9223372036854775807, %766 ], [ -9223372036854775808, %771 ], !dbg !4486
  %784 = phi i32 [ 0, %777 ], [ 1, %766 ], [ 1, %771 ], !dbg !4486
  %785 = or i32 %784, %782, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %785, metadata !4400, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4484
  br label %1063, !dbg !4457

786:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i32 2, metadata !4416, metadata !DIExpression()), !dbg !4491
  %787 = icmp slt i64 %32, 0, !dbg !4493
  br i1 %787, label %788, label %791, !dbg !4493

788:                                              ; preds = %786
  %789 = add i64 %32, -1, !dbg !4493
  %790 = icmp ult i64 %789, -4611686018427387905, !dbg !4493
  br i1 %790, label %1063, label %793, !dbg !4493

791:                                              ; preds = %786
  %792 = icmp ugt i64 %32, 4611686018427387903, !dbg !4493
  br i1 %792, label %1063, label %793, !dbg !4493

793:                                              ; preds = %791, %788
  %794 = shl nsw i64 %32, 1, !dbg !4493
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 2), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4491
  br label %1063, !dbg !4494

795:                                              ; preds = %59
  %796 = icmp eq i64 %32, -1, !dbg !4426
  br i1 %796, label %804, label %797, !dbg !4426

797:                                              ; preds = %795
  %798 = sub i64 0, %32, !dbg !4426
  %799 = udiv i64 -9223372036854775808, %798, !dbg !4426
  %800 = icmp ult i64 %799, %55, !dbg !4426
  br i1 %800, label %812, label %804, !dbg !4426

801:                                              ; preds = %59
  %802 = udiv i64 9223372036854775807, %55, !dbg !4426
  %803 = icmp ult i64 %802, %32, !dbg !4426
  br i1 %803, label %807, label %804, !dbg !4426

804:                                              ; preds = %795, %797, %801
  %805 = mul i64 %32, %55, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4424
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 6, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  %806 = icmp slt i64 %805, 0, !dbg !4426
  br i1 %806, label %812, label %807, !dbg !4426

807:                                              ; preds = %801, %804
  %808 = phi i32 [ 0, %804 ], [ 1, %801 ]
  %809 = phi i64 [ %805, %804 ], [ 9223372036854775807, %801 ]
  %810 = udiv i64 9223372036854775807, %55, !dbg !4426
  %811 = icmp ult i64 %810, %809, !dbg !4426
  br i1 %811, label %823, label %818, !dbg !4426

812:                                              ; preds = %797, %804
  %813 = phi i32 [ 0, %804 ], [ 1, %797 ]
  %814 = phi i64 [ %805, %804 ], [ -9223372036854775808, %797 ]
  %815 = sub i64 0, %814, !dbg !4426
  %816 = udiv i64 -9223372036854775808, %815, !dbg !4426
  %817 = icmp slt i64 %816, %55, !dbg !4426
  br i1 %817, label %828, label %818, !dbg !4426

818:                                              ; preds = %807, %812
  %819 = phi i32 [ %813, %812 ], [ %808, %807 ]
  %820 = phi i64 [ %814, %812 ], [ %809, %807 ]
  %821 = mul i64 %820, %55, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(i64 %805, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4424
  call void @llvm.dbg.value(metadata i32 %819, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 5, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  %822 = icmp slt i64 %821, 0, !dbg !4426
  br i1 %822, label %828, label %823, !dbg !4426

823:                                              ; preds = %807, %818
  %824 = phi i32 [ %819, %818 ], [ 1, %807 ]
  %825 = phi i64 [ %821, %818 ], [ 9223372036854775807, %807 ]
  %826 = udiv i64 9223372036854775807, %55, !dbg !4426
  %827 = icmp ult i64 %826, %825, !dbg !4426
  br i1 %827, label %839, label %834, !dbg !4426

828:                                              ; preds = %812, %818
  %829 = phi i32 [ %819, %818 ], [ 1, %812 ]
  %830 = phi i64 [ %821, %818 ], [ -9223372036854775808, %812 ]
  %831 = sub i64 0, %830, !dbg !4426
  %832 = udiv i64 -9223372036854775808, %831, !dbg !4426
  %833 = icmp slt i64 %832, %55, !dbg !4426
  br i1 %833, label %846, label %834, !dbg !4426

834:                                              ; preds = %823, %828
  %835 = phi i32 [ %829, %828 ], [ %824, %823 ]
  %836 = phi i64 [ %830, %828 ], [ %825, %823 ]
  %837 = mul i64 %836, %55, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(i64 %821, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4424
  call void @llvm.dbg.value(metadata i32 %835, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  %838 = icmp slt i64 %837, 0, !dbg !4426
  br i1 %838, label %846, label %839, !dbg !4426

839:                                              ; preds = %823, %834
  %840 = phi i32 [ %835, %834 ], [ 1, %823 ]
  %841 = phi i64 [ %837, %834 ], [ 9223372036854775807, %823 ]
  %842 = udiv i64 9223372036854775807, %55, !dbg !4426
  %843 = icmp ult i64 %842, %841, !dbg !4426
  br i1 %843, label %844, label %854, !dbg !4426

844:                                              ; preds = %839
  %845 = or i32 %840, 1, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %855, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  br label %859, !dbg !4426

846:                                              ; preds = %828, %834
  %847 = phi i32 [ %835, %834 ], [ 1, %828 ]
  %848 = phi i64 [ %837, %834 ], [ -9223372036854775808, %828 ]
  %849 = sub i64 0, %848, !dbg !4426
  %850 = udiv i64 -9223372036854775808, %849, !dbg !4426
  %851 = icmp slt i64 %850, %55, !dbg !4426
  br i1 %851, label %852, label %854, !dbg !4426

852:                                              ; preds = %846
  %853 = or i32 %847, 1, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %855, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  br label %866, !dbg !4426

854:                                              ; preds = %839, %846
  %855 = phi i32 [ %847, %846 ], [ %840, %839 ]
  %856 = phi i64 [ %848, %846 ], [ %841, %839 ]
  %857 = mul i64 %856, %55, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(i64 %837, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4424
  call void @llvm.dbg.value(metadata i32 %855, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  %858 = icmp slt i64 %857, 0, !dbg !4426
  br i1 %858, label %866, label %859, !dbg !4426

859:                                              ; preds = %844, %854
  %860 = phi i32 [ %845, %844 ], [ %855, %854 ]
  %861 = phi i64 [ 9223372036854775807, %844 ], [ %857, %854 ]
  %862 = udiv i64 9223372036854775807, %55, !dbg !4426
  %863 = icmp ult i64 %862, %861, !dbg !4426
  br i1 %863, label %864, label %874, !dbg !4426

864:                                              ; preds = %859
  %865 = or i32 %860, 1, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %875, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  br label %879, !dbg !4426

866:                                              ; preds = %854, %852
  %867 = phi i32 [ %853, %852 ], [ %855, %854 ]
  %868 = phi i64 [ -9223372036854775808, %852 ], [ %857, %854 ]
  %869 = sub i64 0, %868, !dbg !4426
  %870 = udiv i64 -9223372036854775808, %869, !dbg !4426
  %871 = icmp slt i64 %870, %55, !dbg !4426
  br i1 %871, label %872, label %874, !dbg !4426

872:                                              ; preds = %866
  %873 = or i32 %867, 1, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %875, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  br label %886, !dbg !4426

874:                                              ; preds = %859, %866
  %875 = phi i32 [ %867, %866 ], [ %860, %859 ]
  %876 = phi i64 [ %868, %866 ], [ %861, %859 ]
  %877 = mul i64 %876, %55, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(i64 %857, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4424
  call void @llvm.dbg.value(metadata i32 %875, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  %878 = icmp slt i64 %877, 0, !dbg !4426
  br i1 %878, label %886, label %879, !dbg !4426

879:                                              ; preds = %864, %874
  %880 = phi i32 [ %865, %864 ], [ %875, %874 ]
  %881 = phi i64 [ 9223372036854775807, %864 ], [ %877, %874 ]
  %882 = udiv i64 9223372036854775807, %55, !dbg !4426
  %883 = icmp ult i64 %882, %881, !dbg !4426
  br i1 %883, label %884, label %894, !dbg !4426

884:                                              ; preds = %879
  %885 = or i32 %880, 1, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %895, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  br label %899, !dbg !4426

886:                                              ; preds = %874, %872
  %887 = phi i32 [ %873, %872 ], [ %875, %874 ]
  %888 = phi i64 [ -9223372036854775808, %872 ], [ %877, %874 ]
  %889 = sub i64 0, %888, !dbg !4426
  %890 = udiv i64 -9223372036854775808, %889, !dbg !4426
  %891 = icmp slt i64 %890, %55, !dbg !4426
  br i1 %891, label %892, label %894, !dbg !4426

892:                                              ; preds = %886
  %893 = or i32 %887, 1, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %895, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  br label %906, !dbg !4426

894:                                              ; preds = %879, %886
  %895 = phi i32 [ %887, %886 ], [ %880, %879 ]
  %896 = phi i64 [ %888, %886 ], [ %881, %879 ]
  %897 = mul i64 %896, %55, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(i64 %877, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4424
  call void @llvm.dbg.value(metadata i32 %895, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  %898 = icmp slt i64 %897, 0, !dbg !4426
  br i1 %898, label %906, label %899, !dbg !4426

899:                                              ; preds = %884, %894
  %900 = phi i32 [ %885, %884 ], [ %895, %894 ]
  %901 = phi i64 [ 9223372036854775807, %884 ], [ %897, %894 ]
  %902 = udiv i64 9223372036854775807, %55, !dbg !4426
  %903 = icmp ult i64 %902, %901, !dbg !4426
  br i1 %903, label %904, label %914, !dbg !4426

904:                                              ; preds = %899
  %905 = or i32 %900, 1, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %915, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  br label %919, !dbg !4426

906:                                              ; preds = %894, %892
  %907 = phi i32 [ %893, %892 ], [ %895, %894 ]
  %908 = phi i64 [ -9223372036854775808, %892 ], [ %897, %894 ]
  %909 = sub i64 0, %908, !dbg !4426
  %910 = udiv i64 -9223372036854775808, %909, !dbg !4426
  %911 = icmp slt i64 %910, %55, !dbg !4426
  br i1 %911, label %912, label %914, !dbg !4426

912:                                              ; preds = %906
  %913 = or i32 %907, 1, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %915, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  br label %924, !dbg !4426

914:                                              ; preds = %899, %906
  %915 = phi i32 [ %907, %906 ], [ %900, %899 ]
  %916 = phi i64 [ %908, %906 ], [ %901, %899 ]
  %917 = mul i64 %916, %55, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(i64 %897, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4424
  call void @llvm.dbg.value(metadata i32 %915, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4424
  %918 = icmp slt i64 %917, 0, !dbg !4426
  br i1 %918, label %924, label %919, !dbg !4426

919:                                              ; preds = %904, %914
  %920 = phi i32 [ %905, %904 ], [ %915, %914 ]
  %921 = phi i64 [ 9223372036854775807, %904 ], [ %917, %914 ]
  %922 = udiv i64 9223372036854775807, %55, !dbg !4426
  %923 = icmp ult i64 %922, %921, !dbg !4426
  br i1 %923, label %934, label %930, !dbg !4426

924:                                              ; preds = %914, %912
  %925 = phi i32 [ %913, %912 ], [ %915, %914 ]
  %926 = phi i64 [ -9223372036854775808, %912 ], [ %917, %914 ]
  %927 = sub i64 0, %926, !dbg !4426
  %928 = udiv i64 -9223372036854775808, %927, !dbg !4426
  %929 = icmp slt i64 %928, %55, !dbg !4426
  br i1 %929, label %934, label %930, !dbg !4426

930:                                              ; preds = %924, %919
  %931 = phi i32 [ %925, %924 ], [ %920, %919 ]
  %932 = phi i64 [ %926, %924 ], [ %921, %919 ]
  %933 = mul i64 %932, %55, !dbg !4426
  call void @llvm.dbg.value(metadata !DIArgList(i64 %917, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4424
  br label %934, !dbg !4496

934:                                              ; preds = %930, %924, %919
  %935 = phi i32 [ %931, %930 ], [ %920, %919 ], [ %925, %924 ]
  %936 = phi i64 [ %933, %930 ], [ 9223372036854775807, %919 ], [ -9223372036854775808, %924 ], !dbg !4424
  %937 = phi i32 [ 0, %930 ], [ 1, %919 ], [ 1, %924 ], !dbg !4424
  %938 = or i32 %937, %935, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %938, metadata !4400, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4422
  br label %1063, !dbg !4457

939:                                              ; preds = %57
  %940 = icmp eq i64 %32, -1, !dbg !4420
  br i1 %940, label %948, label %941, !dbg !4420

941:                                              ; preds = %939
  %942 = sub i64 0, %32, !dbg !4420
  %943 = udiv i64 -9223372036854775808, %942, !dbg !4420
  %944 = icmp ult i64 %943, %55, !dbg !4420
  br i1 %944, label %956, label %948, !dbg !4420

945:                                              ; preds = %57
  %946 = udiv i64 9223372036854775807, %55, !dbg !4420
  %947 = icmp ult i64 %946, %32, !dbg !4420
  br i1 %947, label %951, label %948, !dbg !4420

948:                                              ; preds = %939, %941, %945
  %949 = mul i64 %32, %55, !dbg !4420
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4418
  call void @llvm.dbg.value(metadata i32 0, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 5, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  %950 = icmp slt i64 %949, 0, !dbg !4420
  br i1 %950, label %956, label %951, !dbg !4420

951:                                              ; preds = %945, %948
  %952 = phi i32 [ 0, %948 ], [ 1, %945 ]
  %953 = phi i64 [ %949, %948 ], [ 9223372036854775807, %945 ]
  %954 = udiv i64 9223372036854775807, %55, !dbg !4420
  %955 = icmp ult i64 %954, %953, !dbg !4420
  br i1 %955, label %967, label %962, !dbg !4420

956:                                              ; preds = %941, %948
  %957 = phi i32 [ 0, %948 ], [ 1, %941 ]
  %958 = phi i64 [ %949, %948 ], [ -9223372036854775808, %941 ]
  %959 = sub i64 0, %958, !dbg !4420
  %960 = udiv i64 -9223372036854775808, %959, !dbg !4420
  %961 = icmp slt i64 %960, %55, !dbg !4420
  br i1 %961, label %972, label %962, !dbg !4420

962:                                              ; preds = %951, %956
  %963 = phi i32 [ %957, %956 ], [ %952, %951 ]
  %964 = phi i64 [ %958, %956 ], [ %953, %951 ]
  %965 = mul i64 %964, %55, !dbg !4420
  call void @llvm.dbg.value(metadata !DIArgList(i64 %949, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4418
  call void @llvm.dbg.value(metadata i32 %963, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 4, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  %966 = icmp slt i64 %965, 0, !dbg !4420
  br i1 %966, label %972, label %967, !dbg !4420

967:                                              ; preds = %951, %962
  %968 = phi i32 [ %963, %962 ], [ 1, %951 ]
  %969 = phi i64 [ %965, %962 ], [ 9223372036854775807, %951 ]
  %970 = udiv i64 9223372036854775807, %55, !dbg !4420
  %971 = icmp ult i64 %970, %969, !dbg !4420
  br i1 %971, label %983, label %978, !dbg !4420

972:                                              ; preds = %956, %962
  %973 = phi i32 [ %963, %962 ], [ 1, %956 ]
  %974 = phi i64 [ %965, %962 ], [ -9223372036854775808, %956 ]
  %975 = sub i64 0, %974, !dbg !4420
  %976 = udiv i64 -9223372036854775808, %975, !dbg !4420
  %977 = icmp slt i64 %976, %55, !dbg !4420
  br i1 %977, label %990, label %978, !dbg !4420

978:                                              ; preds = %967, %972
  %979 = phi i32 [ %973, %972 ], [ %968, %967 ]
  %980 = phi i64 [ %974, %972 ], [ %969, %967 ]
  %981 = mul i64 %980, %55, !dbg !4420
  call void @llvm.dbg.value(metadata !DIArgList(i64 %965, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4418
  call void @llvm.dbg.value(metadata i32 %979, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 3, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  %982 = icmp slt i64 %981, 0, !dbg !4420
  br i1 %982, label %990, label %983, !dbg !4420

983:                                              ; preds = %967, %978
  %984 = phi i32 [ %979, %978 ], [ 1, %967 ]
  %985 = phi i64 [ %981, %978 ], [ 9223372036854775807, %967 ]
  %986 = udiv i64 9223372036854775807, %55, !dbg !4420
  %987 = icmp ult i64 %986, %985, !dbg !4420
  br i1 %987, label %988, label %998, !dbg !4420

988:                                              ; preds = %983
  %989 = or i32 %984, 1, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %999, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  br label %1003, !dbg !4420

990:                                              ; preds = %972, %978
  %991 = phi i32 [ %979, %978 ], [ 1, %972 ]
  %992 = phi i64 [ %981, %978 ], [ -9223372036854775808, %972 ]
  %993 = sub i64 0, %992, !dbg !4420
  %994 = udiv i64 -9223372036854775808, %993, !dbg !4420
  %995 = icmp slt i64 %994, %55, !dbg !4420
  br i1 %995, label %996, label %998, !dbg !4420

996:                                              ; preds = %990
  %997 = or i32 %991, 1, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %999, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  br label %1010, !dbg !4420

998:                                              ; preds = %983, %990
  %999 = phi i32 [ %991, %990 ], [ %984, %983 ]
  %1000 = phi i64 [ %992, %990 ], [ %985, %983 ]
  %1001 = mul i64 %1000, %55, !dbg !4420
  call void @llvm.dbg.value(metadata !DIArgList(i64 %981, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4418
  call void @llvm.dbg.value(metadata i32 %999, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 2, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  %1002 = icmp slt i64 %1001, 0, !dbg !4420
  br i1 %1002, label %1010, label %1003, !dbg !4420

1003:                                             ; preds = %988, %998
  %1004 = phi i32 [ %989, %988 ], [ %999, %998 ]
  %1005 = phi i64 [ 9223372036854775807, %988 ], [ %1001, %998 ]
  %1006 = udiv i64 9223372036854775807, %55, !dbg !4420
  %1007 = icmp ult i64 %1006, %1005, !dbg !4420
  br i1 %1007, label %1008, label %1018, !dbg !4420

1008:                                             ; preds = %1003
  %1009 = or i32 %1004, 1, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  br label %1023, !dbg !4420

1010:                                             ; preds = %998, %996
  %1011 = phi i32 [ %997, %996 ], [ %999, %998 ]
  %1012 = phi i64 [ -9223372036854775808, %996 ], [ %1001, %998 ]
  %1013 = sub i64 0, %1012, !dbg !4420
  %1014 = udiv i64 -9223372036854775808, %1013, !dbg !4420
  %1015 = icmp slt i64 %1014, %55, !dbg !4420
  br i1 %1015, label %1016, label %1018, !dbg !4420

1016:                                             ; preds = %1010
  %1017 = or i32 %1011, 1, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  br label %1030, !dbg !4420

1018:                                             ; preds = %1003, %1010
  %1019 = phi i32 [ %1011, %1010 ], [ %1004, %1003 ]
  %1020 = phi i64 [ %1012, %1010 ], [ %1005, %1003 ]
  %1021 = mul i64 %1020, %55, !dbg !4420
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1001, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4418
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 1, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  %1022 = icmp slt i64 %1021, 0, !dbg !4420
  br i1 %1022, label %1030, label %1023, !dbg !4420

1023:                                             ; preds = %1008, %1018
  %1024 = phi i32 [ %1009, %1008 ], [ %1019, %1018 ]
  %1025 = phi i64 [ 9223372036854775807, %1008 ], [ %1021, %1018 ]
  %1026 = udiv i64 9223372036854775807, %55, !dbg !4420
  %1027 = icmp ult i64 %1026, %1025, !dbg !4420
  br i1 %1027, label %1028, label %1038, !dbg !4420

1028:                                             ; preds = %1023
  %1029 = or i32 %1024, 1, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  br label %1043, !dbg !4420

1030:                                             ; preds = %1018, %1016
  %1031 = phi i32 [ %1017, %1016 ], [ %1019, %1018 ]
  %1032 = phi i64 [ -9223372036854775808, %1016 ], [ %1021, %1018 ]
  %1033 = sub i64 0, %1032, !dbg !4420
  %1034 = udiv i64 -9223372036854775808, %1033, !dbg !4420
  %1035 = icmp slt i64 %1034, %55, !dbg !4420
  br i1 %1035, label %1036, label %1038, !dbg !4420

1036:                                             ; preds = %1030
  %1037 = or i32 %1031, 1, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  br label %1048, !dbg !4420

1038:                                             ; preds = %1023, %1030
  %1039 = phi i32 [ %1031, %1030 ], [ %1024, %1023 ]
  %1040 = phi i64 [ %1032, %1030 ], [ %1025, %1023 ]
  %1041 = mul i64 %1040, %55, !dbg !4420
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1021, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4418
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64* undef, metadata !4411, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression()), !dbg !4418
  %1042 = icmp slt i64 %1041, 0, !dbg !4420
  br i1 %1042, label %1048, label %1043, !dbg !4420

1043:                                             ; preds = %1028, %1038
  %1044 = phi i32 [ %1029, %1028 ], [ %1039, %1038 ]
  %1045 = phi i64 [ 9223372036854775807, %1028 ], [ %1041, %1038 ]
  %1046 = udiv i64 9223372036854775807, %55, !dbg !4420
  %1047 = icmp ult i64 %1046, %1045, !dbg !4420
  br i1 %1047, label %1058, label %1054, !dbg !4420

1048:                                             ; preds = %1038, %1036
  %1049 = phi i32 [ %1037, %1036 ], [ %1039, %1038 ]
  %1050 = phi i64 [ -9223372036854775808, %1036 ], [ %1041, %1038 ]
  %1051 = sub i64 0, %1050, !dbg !4420
  %1052 = udiv i64 -9223372036854775808, %1051, !dbg !4420
  %1053 = icmp slt i64 %1052, %55, !dbg !4420
  br i1 %1053, label %1058, label %1054, !dbg !4420

1054:                                             ; preds = %1048, %1043
  %1055 = phi i32 [ %1049, %1048 ], [ %1044, %1043 ]
  %1056 = phi i64 [ %1050, %1048 ], [ %1045, %1043 ]
  %1057 = mul i64 %1056, %55, !dbg !4420
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1041, i32 undef), metadata !4417, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4418
  br label %1058, !dbg !4498

1058:                                             ; preds = %1054, %1048, %1043
  %1059 = phi i32 [ %1055, %1054 ], [ %1044, %1043 ], [ %1049, %1048 ]
  %1060 = phi i64 [ %1057, %1054 ], [ 9223372036854775807, %1043 ], [ -9223372036854775808, %1048 ], !dbg !4418
  %1061 = phi i32 [ 0, %1054 ], [ 1, %1043 ], [ 1, %1048 ], !dbg !4418
  %1062 = or i32 %1061, %1059, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %1062, metadata !4400, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4408
  br label %1063, !dbg !4457

1063:                                             ; preds = %788, %80, %71, %245, %249, %252, %1058, %934, %781, %715, %551, %367, %283, %236, %186, %54, %74, %76, %83, %85, %791, %793
  %1064 = phi i64 [ %32, %54 ], [ %77, %76 ], [ 9223372036854775807, %74 ], [ %86, %85 ], [ 9223372036854775807, %83 ], [ %794, %793 ], [ 9223372036854775807, %791 ], [ %188, %186 ], [ %238, %236 ], [ %285, %283 ], [ %369, %367 ], [ %553, %551 ], [ %717, %715 ], [ %783, %781 ], [ %936, %934 ], [ %1060, %1058 ], [ %253, %252 ], [ 9223372036854775807, %249 ], [ -9223372036854775808, %245 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %80 ], [ -9223372036854775808, %788 ], !dbg !4346
  %1065 = phi i32 [ 0, %54 ], [ 0, %76 ], [ 1, %74 ], [ 0, %85 ], [ 1, %83 ], [ 0, %793 ], [ 1, %791 ], [ %190, %186 ], [ %240, %236 ], [ %287, %283 ], [ %371, %367 ], [ %555, %551 ], [ %719, %715 ], [ %785, %781 ], [ %938, %934 ], [ %1062, %1058 ], [ 0, %252 ], [ 1, %249 ], [ 1, %245 ], [ 1, %71 ], [ 1, %80 ], [ 1, %788 ], !dbg !4499
  call void @llvm.dbg.value(metadata i32 %1065, metadata !4345, metadata !DIExpression()), !dbg !4385
  %1066 = or i32 %1065, %31, !dbg !4457
  call void @llvm.dbg.value(metadata i32 %1066, metadata !4340, metadata !DIExpression()), !dbg !4346
  %1067 = getelementptr inbounds i8, i8* %12, i64 %56, !dbg !4500
  store i8* %1067, i8** %9, align 8, !dbg !4500, !tbaa !609
  %1068 = load i8, i8* %1067, align 1, !dbg !4501, !tbaa !722
  %1069 = icmp eq i8 %1068, 0, !dbg !4501
  %1070 = or i32 %1066, 2
  %1071 = select i1 %1069, i32 %1066, i32 %1070, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %31, metadata !4340, metadata !DIExpression()), !dbg !4346
  br label %1074

1072:                                             ; preds = %54
  call void @llvm.dbg.value(metadata i64 %11, metadata !4339, metadata !DIExpression()), !dbg !4346
  store i64 %32, i64* %3, align 8, !dbg !4504, !tbaa !883
  %1073 = or i32 %31, 2, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %31, metadata !4340, metadata !DIExpression()), !dbg !4346
  br label %1077

1074:                                             ; preds = %1063, %30
  %1075 = phi i64 [ %32, %30 ], [ %1064, %1063 ], !dbg !4506
  %1076 = phi i32 [ %31, %30 ], [ %1071, %1063 ], !dbg !4507
  call void @llvm.dbg.value(metadata i32 %1076, metadata !4340, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %1075, metadata !4339, metadata !DIExpression()), !dbg !4346
  store i64 %1075, i64* %3, align 8, !dbg !4508, !tbaa !883
  br label %1077, !dbg !4509

1077:                                             ; preds = %1072, %23, %14, %16, %19, %1074, %39, %29
  %1078 = phi i32 [ %1076, %1074 ], [ %1073, %1072 ], [ %40, %39 ], [ %27, %29 ], [ 4, %19 ], [ 4, %16 ], [ 4, %14 ], [ 4, %23 ], !dbg !4346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #34, !dbg !4510
  ret i32 %1078, !dbg !4510
}

; Function Attrs: nounwind
declare !dbg !4511 i64 @strtoimax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4516 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4554, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i8* %1, metadata !4555, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 0, metadata !4556, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 0, metadata !4557, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i8 0, metadata !4558, metadata !DIExpression()), !dbg !4578
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4579
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4579
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4559, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i8* %1, metadata !4563, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i8* %4, metadata !4565, metadata !DIExpression()), !dbg !4581
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4582

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4581
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4583
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4578
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4584
  call void @llvm.dbg.value(metadata i32 %11, metadata !4556, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 %10, metadata !4557, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i8* %9, metadata !4565, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i8* %8, metadata !4563, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i8 poison, metadata !4558, metadata !DIExpression()), !dbg !4578
  %12 = load i8, i8* %8, align 1, !dbg !4585, !tbaa !722
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4586

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4556, metadata !DIExpression()), !dbg !4578
  %14 = icmp ult i8* %9, %5, !dbg !4587
  br i1 %14, label %15, label %47, !dbg !4590

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4591
  call void @llvm.dbg.value(metadata i8* %16, metadata !4565, metadata !DIExpression()), !dbg !4581
  store i8 114, i8* %9, align 1, !dbg !4592, !tbaa !722
  br label %47, !dbg !4593

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4556, metadata !DIExpression()), !dbg !4578
  %18 = or i32 %10, 576, !dbg !4594
  call void @llvm.dbg.value(metadata i32 %18, metadata !4557, metadata !DIExpression()), !dbg !4578
  %19 = icmp ult i8* %9, %5, !dbg !4595
  br i1 %19, label %20, label %47, !dbg !4597

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4598
  call void @llvm.dbg.value(metadata i8* %21, metadata !4565, metadata !DIExpression()), !dbg !4581
  store i8 119, i8* %9, align 1, !dbg !4599, !tbaa !722
  br label %47, !dbg !4600

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4556, metadata !DIExpression()), !dbg !4578
  %23 = or i32 %10, 1088, !dbg !4601
  call void @llvm.dbg.value(metadata i32 %23, metadata !4557, metadata !DIExpression()), !dbg !4578
  %24 = icmp ult i8* %9, %5, !dbg !4602
  br i1 %24, label %25, label %47, !dbg !4604

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4605
  call void @llvm.dbg.value(metadata i8* %26, metadata !4565, metadata !DIExpression()), !dbg !4581
  store i8 97, i8* %9, align 1, !dbg !4606, !tbaa !722
  br label %47, !dbg !4607

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4557, metadata !DIExpression()), !dbg !4578
  %28 = icmp ult i8* %9, %5, !dbg !4608
  br i1 %28, label %29, label %47, !dbg !4610

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4611
  call void @llvm.dbg.value(metadata i8* %30, metadata !4565, metadata !DIExpression()), !dbg !4581
  store i8 98, i8* %9, align 1, !dbg !4612, !tbaa !722
  br label %47, !dbg !4613

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4556, metadata !DIExpression()), !dbg !4578
  %32 = icmp ult i8* %9, %5, !dbg !4614
  br i1 %32, label %33, label %47, !dbg !4616

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4617
  call void @llvm.dbg.value(metadata i8* %34, metadata !4565, metadata !DIExpression()), !dbg !4581
  store i8 43, i8* %9, align 1, !dbg !4618, !tbaa !722
  br label %47, !dbg !4619

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4620
  call void @llvm.dbg.value(metadata i32 %36, metadata !4557, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i8 1, metadata !4558, metadata !DIExpression()), !dbg !4578
  br label %47, !dbg !4621

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4622
  call void @llvm.dbg.value(metadata i32 %38, metadata !4557, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i8 1, metadata !4558, metadata !DIExpression()), !dbg !4578
  br label %47, !dbg !4623

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #35, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %40, metadata !4566, metadata !DIExpression()), !dbg !4625
  %41 = ptrtoint i8* %5 to i64, !dbg !4626
  %42 = ptrtoint i8* %9 to i64, !dbg !4626
  %43 = sub i64 %41, %42, !dbg !4626
  %44 = icmp ugt i64 %40, %43, !dbg !4628
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4629
  call void @llvm.dbg.value(metadata i64 %45, metadata !4566, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i8* %9, metadata !4630, metadata !DIExpression()) #34, !dbg !4635
  call void @llvm.dbg.value(metadata i8* %8, metadata !4633, metadata !DIExpression()) #34, !dbg !4635
  call void @llvm.dbg.value(metadata i64 %45, metadata !4634, metadata !DIExpression()) #34, !dbg !4635
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #34, !dbg !4637
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4638
  call void @llvm.dbg.value(metadata i8* %46, metadata !4565, metadata !DIExpression()), !dbg !4581
  br label %53, !dbg !4639

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4581
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4578
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4578
  call void @llvm.dbg.value(metadata i32 %51, metadata !4556, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 %50, metadata !4557, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i8* %49, metadata !4565, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i8 poison, metadata !4558, metadata !DIExpression()), !dbg !4578
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4640
  call void @llvm.dbg.value(metadata i8* %52, metadata !4563, metadata !DIExpression()), !dbg !4581
  br label %6, !dbg !4641, !llvm.loop !4642

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4581
  call void @llvm.dbg.value(metadata i8* %54, metadata !4565, metadata !DIExpression()), !dbg !4581
  store i8 0, i8* %54, align 1, !dbg !4644, !tbaa !722
  br i1 %7, label %55, label %66, !dbg !4645

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4646
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #34, !dbg !4647
  call void @llvm.dbg.value(metadata i32 %57, metadata !4571, metadata !DIExpression()), !dbg !4648
  %58 = icmp slt i32 %57, 0, !dbg !4649
  br i1 %58, label %68, label %59, !dbg !4651

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #34, !dbg !4652
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4574, metadata !DIExpression()), !dbg !4648
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4653
  br i1 %61, label %62, label %68, !dbg !4654

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #37, !dbg !4655
  %64 = load i32, i32* %63, align 4, !dbg !4655, !tbaa !713
  call void @llvm.dbg.value(metadata i32 %64, metadata !4575, metadata !DIExpression()), !dbg !4656
  %65 = call i32 @close(i32 noundef %57) #34, !dbg !4657
  store i32 %64, i32* %63, align 4, !dbg !4658, !tbaa !713
  br label %68, !dbg !4659

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4660, metadata !DIExpression()) #34, !dbg !4664
  call void @llvm.dbg.value(metadata i8* %1, metadata !4663, metadata !DIExpression()) #34, !dbg !4664
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #34, !dbg !4666
  br label %68, !dbg !4667

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4578
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4668
  ret %struct._IO_FILE* %69, !dbg !4668
}

; Function Attrs: nofree
declare !dbg !4669 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #32

; Function Attrs: nofree nounwind
declare !dbg !4672 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4675 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4676 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4714, metadata !DIExpression()), !dbg !4719
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !4720
  call void @llvm.dbg.value(metadata i1 undef, metadata !4715, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4719
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4721, metadata !DIExpression()), !dbg !4724
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4726
  %4 = load i32, i32* %3, align 8, !dbg !4726, !tbaa !1438
  %5 = and i32 %4, 32, !dbg !4727
  %6 = icmp eq i32 %5, 0, !dbg !4727
  call void @llvm.dbg.value(metadata i1 %6, metadata !4717, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4719
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !4728
  %8 = icmp eq i32 %7, 0, !dbg !4729
  call void @llvm.dbg.value(metadata i1 %8, metadata !4718, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4719
  br i1 %6, label %9, label %19, !dbg !4730

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4732
  call void @llvm.dbg.value(metadata i1 %10, metadata !4715, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4719
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4733
  %12 = xor i1 %8, true, !dbg !4733
  %13 = sext i1 %12 to i32, !dbg !4733
  br i1 %11, label %22, label %14, !dbg !4733

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !4734
  %16 = load i32, i32* %15, align 4, !dbg !4734, !tbaa !713
  %17 = icmp ne i32 %16, 9, !dbg !4735
  %18 = sext i1 %17 to i32, !dbg !4736
  br label %22, !dbg !4736

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4737

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !4739
  store i32 0, i32* %21, align 4, !dbg !4741, !tbaa !713
  br label %22, !dbg !4739

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4719
  ret i32 %23, !dbg !4742
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4743 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4748, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata i8* %1, metadata !4749, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata i64 %2, metadata !4750, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4751, metadata !DIExpression()), !dbg !4753
  %5 = icmp eq i8* %1, null, !dbg !4754
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4756
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.178, i64 0, i64 0), i8* %1, !dbg !4756
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4756
  call void @llvm.dbg.value(metadata i64 %8, metadata !4750, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata i8* %7, metadata !4749, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata i32* %6, metadata !4748, metadata !DIExpression()), !dbg !4753
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4757
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4759
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4751, metadata !DIExpression()), !dbg !4753
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !4760
  call void @llvm.dbg.value(metadata i64 %11, metadata !4752, metadata !DIExpression()), !dbg !4753
  %12 = icmp ult i64 %11, -3, !dbg !4761
  br i1 %12, label %13, label %18, !dbg !4763

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !4764
  %15 = icmp eq i32 %14, 0, !dbg !4764
  br i1 %15, label %16, label %30, !dbg !4765

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4766, metadata !DIExpression()) #34, !dbg !4771
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4773, metadata !DIExpression()) #34, !dbg !4778
  call void @llvm.dbg.value(metadata i32 0, metadata !4776, metadata !DIExpression()) #34, !dbg !4778
  call void @llvm.dbg.value(metadata i64 8, metadata !4777, metadata !DIExpression()) #34, !dbg !4778
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4780
  store i64 0, i64* %17, align 1, !dbg !4780
  br label %30, !dbg !4781

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4782
  br i1 %19, label %20, label %21, !dbg !4784

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !4785
  unreachable, !dbg !4785

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4786

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !4788
  br i1 %24, label %30, label %25, !dbg !4789

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4790
  br i1 %26, label %30, label %27, !dbg !4793

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4794, !tbaa !722
  %29 = zext i8 %28 to i32, !dbg !4795
  store i32 %29, i32* %6, align 4, !dbg !4796, !tbaa !713
  br label %30, !dbg !4797

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4753
  ret i64 %31, !dbg !4798
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4799 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #22 !dbg !4805 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4807, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %1, metadata !4808, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %2, metadata !4809, metadata !DIExpression()), !dbg !4811
  %4 = icmp eq i64 %2, 0, !dbg !4812
  br i1 %4, label %8, label %5, !dbg !4812

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4812
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4812
  br i1 %7, label %13, label %8, !dbg !4812

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4810, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4811
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4810, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4811
  %9 = mul i64 %2, %1, !dbg !4812
  call void @llvm.dbg.value(metadata i64 %9, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i8* %0, metadata !4814, metadata !DIExpression()) #34, !dbg !4818
  call void @llvm.dbg.value(metadata i64 %9, metadata !4817, metadata !DIExpression()) #34, !dbg !4818
  %10 = icmp eq i64 %9, 0, !dbg !4820
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4820
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !4821
  br label %15, !dbg !4822

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4810, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4811
  %14 = tail call i32* @__errno_location() #37, !dbg !4823
  store i32 12, i32* %14, align 4, !dbg !4825, !tbaa !713
  br label %15, !dbg !4826

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4811
  ret i8* %16, !dbg !4827
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4828 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4832, metadata !DIExpression()), !dbg !4837
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4838
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4838
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4833, metadata !DIExpression()), !dbg !4839
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !4840
  %5 = icmp eq i32 %4, 0, !dbg !4840
  br i1 %5, label %6, label %13, !dbg !4842

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4843, metadata !DIExpression()) #34, !dbg !4847
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.183, i64 0, i64 0), metadata !4846, metadata !DIExpression()) #34, !dbg !4847
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.183, i64 0, i64 0), i64 2), !dbg !4850
  %8 = icmp eq i32 %7, 0, !dbg !4851
  br i1 %8, label %12, label %9, !dbg !4852

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4843, metadata !DIExpression()) #34, !dbg !4853
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), metadata !4846, metadata !DIExpression()) #34, !dbg !4853
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i64 6), !dbg !4855
  %11 = icmp eq i32 %10, 0, !dbg !4856
  br i1 %11, label %12, label %13, !dbg !4857

12:                                               ; preds = %9, %6
  br label %13, !dbg !4858

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4837
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4859
  ret i1 %14, !dbg !4859
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4864, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i8* %1, metadata !4865, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i64 %2, metadata !4866, metadata !DIExpression()), !dbg !4867
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !4868
  ret i32 %4, !dbg !4869
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4870 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4874, metadata !DIExpression()), !dbg !4875
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !4876
  ret i8* %2, !dbg !4877
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4880, metadata !DIExpression()), !dbg !4882
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4883
  call void @llvm.dbg.value(metadata i8* %2, metadata !4881, metadata !DIExpression()), !dbg !4882
  ret i8* %2, !dbg !4884
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4887, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i8* %1, metadata !4888, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i64 %2, metadata !4889, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 %0, metadata !4880, metadata !DIExpression()) #34, !dbg !4895
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4897
  call void @llvm.dbg.value(metadata i8* %4, metadata !4881, metadata !DIExpression()) #34, !dbg !4895
  call void @llvm.dbg.value(metadata i8* %4, metadata !4890, metadata !DIExpression()), !dbg !4894
  %5 = icmp eq i8* %4, null, !dbg !4898
  br i1 %5, label %6, label %9, !dbg !4899

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4900
  br i1 %7, label %19, label %8, !dbg !4903

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4904, !tbaa !722
  br label %19, !dbg !4905

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !4906
  call void @llvm.dbg.value(metadata i64 %10, metadata !4891, metadata !DIExpression()), !dbg !4907
  %11 = icmp ult i64 %10, %2, !dbg !4908
  br i1 %11, label %12, label %14, !dbg !4910

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4911
  call void @llvm.dbg.value(metadata i8* %1, metadata !4913, metadata !DIExpression()) #34, !dbg !4918
  call void @llvm.dbg.value(metadata i8* %4, metadata !4916, metadata !DIExpression()) #34, !dbg !4918
  call void @llvm.dbg.value(metadata i64 %13, metadata !4917, metadata !DIExpression()) #34, !dbg !4918
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !4920
  br label %19, !dbg !4921

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4922
  br i1 %15, label %19, label %16, !dbg !4925

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4926
  call void @llvm.dbg.value(metadata i8* %1, metadata !4913, metadata !DIExpression()) #34, !dbg !4928
  call void @llvm.dbg.value(metadata i8* %4, metadata !4916, metadata !DIExpression()) #34, !dbg !4928
  call void @llvm.dbg.value(metadata i64 %17, metadata !4917, metadata !DIExpression()) #34, !dbg !4928
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !4930
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4931
  store i8 0, i8* %18, align 1, !dbg !4932, !tbaa !722
  br label %19, !dbg !4933

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4934
  ret i32 %20, !dbg !4935
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { noreturn }
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !311, !316, !323, !482, !502, !505, !507, !510, !512, !514, !516, !362, !372, !404, !519, !474, !525, !556, !558, !569, !573, !575, !488, !577, !580, !582, !584}
!llvm.ident = !{!586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586, !586}
!llvm.module.flags = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 154, type: !294, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !67, globals: !80, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "07c189a22e7a32e0222ef52bf431f505")
!4 = !{!5, !13, !28, !32, !35, !38, !52, !61}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!10 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!11 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!12 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 46, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIEnumerator(name: "_ISupper", value: 256)
!17 = !DIEnumerator(name: "_ISlower", value: 512)
!18 = !DIEnumerator(name: "_ISalpha", value: 1024)
!19 = !DIEnumerator(name: "_ISdigit", value: 2048)
!20 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!21 = !DIEnumerator(name: "_ISspace", value: 8192)
!22 = !DIEnumerator(name: "_ISprint", value: 16384)
!23 = !DIEnumerator(name: "_ISgraph", value: 32768)
!24 = !DIEnumerator(name: "_ISblank", value: 1)
!25 = !DIEnumerator(name: "_IScntrl", value: 2)
!26 = !DIEnumerator(name: "_ISpunct", value: 4)
!27 = !DIEnumerator(name: "_ISalnum", value: 8)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 131, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!30 = !{!31}
!31 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 127, baseType: !7, size: 32, elements: !33)
!33 = !{!34}
!34 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 130, baseType: !7, size: 32, elements: !36)
!36 = !{!37}
!37 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !39, line: 42, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!41 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!42 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!43 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!44 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!45 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!46 = !DIEnumerator(name: "c_quoting_style", value: 5)
!47 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!48 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!49 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!50 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!51 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !53, line: 44, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!54 = !{!55, !56, !57, !58, !59, !60}
!55 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!56 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!57 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!58 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!59 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!60 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "section", file: !3, line: 60, baseType: !7, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "Header", value: 0)
!64 = !DIEnumerator(name: "Body", value: 1)
!65 = !DIEnumerator(name: "Footer", value: 2)
!66 = !DIEnumerator(name: "Text", value: 3)
!67 = !{!68, !70, !71, !72, !73, !76, !78, !79}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!75 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!80 = !{!81, !83, !107, !109, !111, !116, !118, !120, !122, !124, !126, !128, !140, !146, !148, !0, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !255, !257, !262, !264, !266, !271, !273, !275, !277, !279, !282, !284}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "current_type", scope: !2, file: !3, line: 75, type: !76, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "body_regex", scope: !2, file: !3, line: 78, type: !85, isLocal: true, isDefinition: true)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !86, line: 413, size: 512, elements: !87)
!86 = !DIFile(filename: "./lib/regex.h", directory: "/src", checksumkind: CSK_MD5, checksum: "fbbb1db427db36bb03cde72fd2b4622e")
!87 = !{!88, !91, !93, !94, !96, !97, !99, !100, !101, !102, !103, !104, !105, !106}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !85, file: !86, line: 417, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !86, line: 417, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !85, file: !86, line: 420, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !86, line: 56, baseType: !75)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !85, file: !86, line: 423, baseType: !92, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !85, file: !86, line: 426, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !86, line: 71, baseType: !75)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !85, file: !86, line: 431, baseType: !68, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !85, file: !86, line: 437, baseType: !98, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !85, file: !86, line: 440, baseType: !73, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !85, file: !86, line: 446, baseType: !7, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !85, file: !86, line: 457, baseType: !7, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !85, file: !86, line: 461, baseType: !7, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !85, file: !86, line: 465, baseType: !7, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !85, file: !86, line: 469, baseType: !7, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !85, file: !86, line: 472, baseType: !7, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !85, file: !86, line: 475, baseType: !7, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "header_regex", scope: !2, file: !3, line: 81, type: !85, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "footer_regex", scope: !2, file: !3, line: 84, type: !85, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "body_fastmap", scope: !2, file: !3, line: 87, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2048, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 256)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "header_fastmap", scope: !2, file: !3, line: 88, type: !113, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "footer_fastmap", scope: !2, file: !3, line: 89, type: !113, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "section_del_len", scope: !2, file: !3, line: 101, type: !73, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "header_del_len", scope: !2, file: !3, line: 107, type: !73, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "body_del_len", scope: !2, file: !3, line: 113, type: !73, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "footer_del_len", scope: !2, file: !3, line: 119, type: !73, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "line_buf", scope: !2, file: !3, line: 122, type: !130, isLocal: true, isDefinition: true)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !131, line: 32, size: 192, elements: !132)
!131 = !DIFile(filename: "./lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!132 = !{!133, !138, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !130, file: !131, line: 34, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !135, line: 130, baseType: !136)
!135 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !74, line: 35, baseType: !137)
!137 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !130, file: !131, line: 35, baseType: !134, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !130, file: !131, line: 36, baseType: !68, size: 64, offset: 128)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "line_no", scope: !2, file: !3, line: 146, type: !142, isLocal: true, isDefinition: true)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !143, line: 101, baseType: !144)
!143 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !145, line: 72, baseType: !137)
!145 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 152, type: !79, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !150, file: !151, line: 575, type: !71, isLocal: true, isDefinition: true)
!150 = distinct !DISubprogram(name: "oputs_", scope: !151, file: !151, line: 573, type: !152, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!151 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!152 = !DISubroutineType(types: !153)
!153 = !{null, !76, !76}
!154 = !{!155, !156, !157, !160, !161, !162, !163, !167, !168, !169, !170, !172, !226, !227, !228, !230, !231}
!155 = !DILocalVariable(name: "program", arg: 1, scope: !150, file: !151, line: 573, type: !76)
!156 = !DILocalVariable(name: "option", arg: 2, scope: !150, file: !151, line: 573, type: !76)
!157 = !DILocalVariable(name: "term", scope: !158, file: !151, line: 585, type: !76)
!158 = distinct !DILexicalBlock(scope: !159, file: !151, line: 582, column: 5)
!159 = distinct !DILexicalBlock(scope: !150, file: !151, line: 581, column: 7)
!160 = !DILocalVariable(name: "double_space", scope: !150, file: !151, line: 594, type: !79)
!161 = !DILocalVariable(name: "first_word", scope: !150, file: !151, line: 595, type: !76)
!162 = !DILocalVariable(name: "option_text", scope: !150, file: !151, line: 596, type: !76)
!163 = !DILocalVariable(name: "s", scope: !164, file: !151, line: 608, type: !76)
!164 = distinct !DILexicalBlock(scope: !165, file: !151, line: 605, column: 5)
!165 = distinct !DILexicalBlock(scope: !166, file: !151, line: 604, column: 12)
!166 = distinct !DILexicalBlock(scope: !150, file: !151, line: 597, column: 7)
!167 = !DILocalVariable(name: "spaces", scope: !164, file: !151, line: 609, type: !73)
!168 = !DILocalVariable(name: "anchor_len", scope: !150, file: !151, line: 620, type: !73)
!169 = !DILocalVariable(name: "desc_text", scope: !150, file: !151, line: 625, type: !76)
!170 = !DILocalVariable(name: "__ptr", scope: !171, file: !151, line: 644, type: !76)
!171 = distinct !DILexicalBlock(scope: !150, file: !151, line: 644, column: 3)
!172 = !DILocalVariable(name: "__stream", scope: !171, file: !151, line: 644, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !176)
!175 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !178)
!177 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !194, !196, !197, !198, !200, !201, !203, !207, !210, !212, !215, !218, !219, !220, !221, !222}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !176, file: !177, line: 51, baseType: !71, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !176, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !176, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !176, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !176, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !176, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !176, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !176, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !176, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !176, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !176, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !176, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !176, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !177, line: 36, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !176, file: !177, line: 70, baseType: !195, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !176, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !176, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !176, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !145, line: 152, baseType: !137)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !176, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !176, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!202 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !176, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 1)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !176, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !177, line: 43, baseType: null)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !176, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !145, line: 153, baseType: !137)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !176, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !177, line: 37, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !176, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !177, line: 38, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !176, file: !177, line: 93, baseType: !195, size: 64, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !176, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !176, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !176, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !176, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 160, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 20)
!226 = !DILocalVariable(name: "__cnt", scope: !171, file: !151, line: 644, type: !73)
!227 = !DILocalVariable(name: "url_program", scope: !150, file: !151, line: 648, type: !76)
!228 = !DILocalVariable(name: "__ptr", scope: !229, file: !151, line: 686, type: !76)
!229 = distinct !DILexicalBlock(scope: !150, file: !151, line: 686, column: 3)
!230 = !DILocalVariable(name: "__stream", scope: !229, file: !151, line: 686, type: !173)
!231 = !DILocalVariable(name: "__cnt", scope: !229, file: !151, line: 686, type: !73)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "header_type", scope: !2, file: !3, line: 69, type: !76, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "body_type", scope: !2, file: !3, line: 66, type: !76, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "footer_type", scope: !2, file: !3, line: 72, type: !76, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "starting_line_number", scope: !2, file: !3, line: 128, type: !142, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "page_incr", scope: !2, file: !3, line: 131, type: !142, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "reset_numbers", scope: !2, file: !3, line: 134, type: !79, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "blank_join", scope: !2, file: !3, line: 137, type: !142, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "separator_str", scope: !2, file: !3, line: 95, type: !76, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "lineno_width", scope: !2, file: !3, line: 140, type: !71, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "FORMAT_LEFT", scope: !2, file: !3, line: 53, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 8)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "lineno_format", scope: !2, file: !3, line: 143, type: !76, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_NOLZ", scope: !2, file: !3, line: 47, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 56, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 7)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_LZ", scope: !2, file: !3, line: 50, type: !252, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "section_del", scope: !2, file: !3, line: 98, type: !68, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "DEFAULT_SECTION_DELIMITERS", scope: !2, file: !3, line: 56, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 72, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 9)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "header_del", scope: !2, file: !3, line: 104, type: !68, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "body_del", scope: !2, file: !3, line: 110, type: !68, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "footer_del", scope: !2, file: !3, line: 116, type: !68, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "print_no_line_fmt", scope: !2, file: !3, line: 125, type: !68, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "current_regex", scope: !2, file: !3, line: 92, type: !281, isLocal: true, isDefinition: true)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "line_no_overflow", scope: !2, file: !3, line: 149, type: !79, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "blank_lines", scope: !286, file: !3, line: 358, type: !142, isLocal: true, isDefinition: true)
!286 = distinct !DISubprogram(name: "proc_text", scope: !3, file: !3, line: 356, type: !287, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null}
!289 = !{!290, !292, !293}
!290 = !DILocalVariable(name: "__ptr", scope: !291, file: !3, line: 401, type: !76)
!291 = distinct !DILexicalBlock(scope: !286, file: !3, line: 401, column: 3)
!292 = !DILocalVariable(name: "__stream", scope: !291, file: !3, line: 401, type: !173)
!293 = !DILocalVariable(name: "__cnt", scope: !291, file: !3, line: 401, type: !73)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 3584, elements: !304)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !297, line: 50, size: 256, elements: !298)
!297 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!298 = !{!299, !300, !301, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 52, baseType: !76, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !296, file: !297, line: 55, baseType: !71, size: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !296, file: !297, line: 56, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !296, file: !297, line: 57, baseType: !71, size: 32, offset: 192)
!304 = !{!305}
!305 = !DISubrange(count: 14)
!306 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!307 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!308 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "Version", scope: !311, file: !312, line: 3, type: !76, isLocal: false, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !313, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!313 = !{!309}
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "file_name", scope: !316, file: !317, line: 45, type: !76, isLocal: true, isDefinition: true)
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !318, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!318 = !{!314, !319}
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !316, file: !317, line: 55, type: !79, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !323, file: !324, line: 66, type: !359, isLocal: false, isDefinition: true)
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !325, globals: !326, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!325 = !{!70, !78}
!326 = !{!327, !353, !321, !355, !357}
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "old_file_name", scope: !329, file: !324, line: 304, type: !76, isLocal: true, isDefinition: true)
!329 = distinct !DISubprogram(name: "verror_at_line", scope: !324, file: !324, line: 298, type: !330, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !346)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !71, !71, !76, !7, !76, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !333, line: 52, baseType: !334)
!333 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !335, line: 32, baseType: !336)
!335 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !337, baseType: !338)
!337 = !DIFile(filename: "lib/error.c", directory: "/src")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !339, size: 256, elements: !340)
!339 = !DINamespace(name: "std", scope: null)
!340 = !{!341, !342, !343, !344, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !338, file: !337, baseType: !70, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !338, file: !337, baseType: !70, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !338, file: !337, baseType: !70, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !338, file: !337, baseType: !71, size: 32, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !338, file: !337, baseType: !71, size: 32, offset: 224)
!346 = !{!347, !348, !349, !350, !351, !352}
!347 = !DILocalVariable(name: "status", arg: 1, scope: !329, file: !324, line: 298, type: !71)
!348 = !DILocalVariable(name: "errnum", arg: 2, scope: !329, file: !324, line: 298, type: !71)
!349 = !DILocalVariable(name: "file_name", arg: 3, scope: !329, file: !324, line: 298, type: !76)
!350 = !DILocalVariable(name: "line_number", arg: 4, scope: !329, file: !324, line: 298, type: !7)
!351 = !DILocalVariable(name: "message", arg: 5, scope: !329, file: !324, line: 298, type: !76)
!352 = !DILocalVariable(name: "args", arg: 6, scope: !329, file: !324, line: 298, type: !332)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "old_line_number", scope: !329, file: !324, line: 305, type: !7, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "error_message_count", scope: !323, file: !324, line: 69, type: !7, isLocal: false, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !323, file: !324, line: 295, type: !71, isLocal: false, isDefinition: true)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "program_name", scope: !362, file: !363, line: 31, type: !76, isLocal: false, isDefinition: true)
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !364, globals: !365, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!364 = !{!68}
!365 = !{!360}
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "utf07FF", scope: !368, file: !369, line: 46, type: !399, isLocal: true, isDefinition: true)
!368 = distinct !DISubprogram(name: "proper_name_lite", scope: !369, file: !369, line: 38, type: !370, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !374)
!369 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!370 = !DISubroutineType(types: !371)
!371 = !{!76, !76, !76}
!372 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !373, splitDebugInlining: false, nameTableKind: None)
!373 = !{!366}
!374 = !{!375, !376, !377, !378, !383}
!375 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !368, file: !369, line: 38, type: !76)
!376 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !368, file: !369, line: 38, type: !76)
!377 = !DILocalVariable(name: "translation", scope: !368, file: !369, line: 40, type: !76)
!378 = !DILocalVariable(name: "w", scope: !368, file: !369, line: 47, type: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !380, line: 37, baseType: !381)
!380 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !145, line: 57, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !145, line: 42, baseType: !7)
!383 = !DILocalVariable(name: "mbs", scope: !368, file: !369, line: 48, type: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !385, line: 6, baseType: !386)
!385 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !387, line: 21, baseType: !388)
!387 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 13, size: 64, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !388, file: !387, line: 15, baseType: !71, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !388, file: !387, line: 20, baseType: !392, size: 32, offset: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !387, line: 16, size: 32, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !392, file: !387, line: 18, baseType: !7, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !392, file: !387, line: 19, baseType: !396, size: 32)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 4)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 16, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 2)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !404, file: !405, line: 76, type: !468, isLocal: false, isDefinition: true)
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !406, retainedTypes: !412, globals: !413, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!406 = !{!38, !407, !13}
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !39, line: 254, baseType: !7, size: 32, elements: !408)
!408 = !{!409, !410, !411}
!409 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!410 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!411 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!412 = !{!71, !72, !73}
!413 = !{!402, !414, !420, !430, !432, !434, !457, !464, !466}
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !404, file: !405, line: 92, type: !416, isLocal: false, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 320, elements: !418)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!418 = !{!419}
!419 = !DISubrange(count: 10)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !404, file: !405, line: 1040, type: !422, isLocal: false, isDefinition: true)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !405, line: 56, size: 448, elements: !423)
!423 = !{!424, !425, !426, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !422, file: !405, line: 59, baseType: !38, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !405, line: 62, baseType: !71, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !422, file: !405, line: 66, baseType: !427, size: 256, offset: 64)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !253)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !422, file: !405, line: 69, baseType: !76, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !422, file: !405, line: 72, baseType: !76, size: 64, offset: 384)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !404, file: !405, line: 107, type: !422, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "slot0", scope: !404, file: !405, line: 831, type: !113, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "quote", scope: !436, file: !405, line: 228, type: !455, isLocal: true, isDefinition: true)
!436 = distinct !DISubprogram(name: "gettext_quote", scope: !405, file: !405, line: 197, type: !437, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!76, !76, !38}
!439 = !{!440, !441, !442, !443, !444}
!440 = !DILocalVariable(name: "msgid", arg: 1, scope: !436, file: !405, line: 197, type: !76)
!441 = !DILocalVariable(name: "s", arg: 2, scope: !436, file: !405, line: 197, type: !38)
!442 = !DILocalVariable(name: "translation", scope: !436, file: !405, line: 199, type: !76)
!443 = !DILocalVariable(name: "w", scope: !436, file: !405, line: 229, type: !379)
!444 = !DILocalVariable(name: "mbs", scope: !436, file: !405, line: 230, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !385, line: 6, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !387, line: 21, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 13, size: 64, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !447, file: !387, line: 15, baseType: !71, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !447, file: !387, line: 20, baseType: !451, size: 32, offset: 32)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !387, line: 16, size: 32, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !451, file: !387, line: 18, baseType: !7, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !451, file: !387, line: 19, baseType: !396, size: 32)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !456)
!456 = !{!401, !398}
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "slotvec", scope: !404, file: !405, line: 834, type: !459, isLocal: true, isDefinition: true)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !405, line: 823, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !460, file: !405, line: 825, baseType: !73, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !460, file: !405, line: 826, baseType: !68, size: 64, offset: 64)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "nslots", scope: !404, file: !405, line: 832, type: !71, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "slotvec0", scope: !404, file: !405, line: 833, type: !460, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 704, elements: !470)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!470 = !{!471}
!471 = !DISubrange(count: 11)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !474, file: !475, line: 26, type: !477, isLocal: false, isDefinition: true)
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !476, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!476 = !{!472}
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 376, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 47)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "exit_failure", scope: !482, file: !483, line: 24, type: !485, isLocal: false, isDefinition: true)
!482 = distinct !DICompileUnit(language: DW_LANG_C99, file: !483, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !484, splitDebugInlining: false, nameTableKind: None)
!483 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!484 = !{!480}
!485 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "internal_state", scope: !488, file: !489, line: 97, type: !492, isLocal: true, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, globals: !491, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!490 = !{!70, !73, !78}
!491 = !{!486}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !385, line: 6, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !387, line: 21, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 13, size: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !494, file: !387, line: 15, baseType: !71, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !494, file: !387, line: 20, baseType: !498, size: 32, offset: 32)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !387, line: 16, size: 32, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !498, file: !387, line: 18, baseType: !7, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !498, file: !387, line: 19, baseType: !396, size: 32)
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !504, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!504 = !{!52}
!505 = distinct !DICompileUnit(language: DW_LANG_C99, file: !506, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!506 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!507 = distinct !DICompileUnit(language: DW_LANG_C99, file: !508, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !509, splitDebugInlining: false, nameTableKind: None)
!508 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!509 = !{!70}
!510 = distinct !DICompileUnit(language: DW_LANG_C99, file: !511, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!511 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !509, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!514 = distinct !DICompileUnit(language: DW_LANG_C99, file: !515, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!515 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !518, splitDebugInlining: false, nameTableKind: None)
!517 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!518 = !{!98}
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !521, retainedTypes: !509, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!521 = !{!522}
!522 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !520, line: 40, baseType: !7, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !527, retainedTypes: !555, splitDebugInlining: false, nameTableKind: None)
!526 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!527 = !{!528, !540}
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !529, file: !526, line: 188, baseType: !7, size: 32, elements: !538)
!529 = distinct !DISubprogram(name: "x2nrealloc", scope: !526, file: !526, line: 176, type: !530, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !533)
!530 = !DISubroutineType(types: !531)
!531 = !{!70, !70, !532, !73}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!533 = !{!534, !535, !536, !537}
!534 = !DILocalVariable(name: "p", arg: 1, scope: !529, file: !526, line: 176, type: !70)
!535 = !DILocalVariable(name: "pn", arg: 2, scope: !529, file: !526, line: 176, type: !532)
!536 = !DILocalVariable(name: "s", arg: 3, scope: !529, file: !526, line: 176, type: !73)
!537 = !DILocalVariable(name: "n", scope: !529, file: !526, line: 178, type: !73)
!538 = !{!539}
!539 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!540 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !541, file: !526, line: 228, baseType: !7, size: 32, elements: !538)
!541 = distinct !DISubprogram(name: "xpalloc", scope: !526, file: !526, line: 223, type: !542, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !545)
!542 = !DISubroutineType(types: !543)
!543 = !{!70, !70, !544, !134, !136, !134}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !554}
!546 = !DILocalVariable(name: "pa", arg: 1, scope: !541, file: !526, line: 223, type: !70)
!547 = !DILocalVariable(name: "pn", arg: 2, scope: !541, file: !526, line: 223, type: !544)
!548 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !541, file: !526, line: 223, type: !134)
!549 = !DILocalVariable(name: "n_max", arg: 4, scope: !541, file: !526, line: 223, type: !136)
!550 = !DILocalVariable(name: "s", arg: 5, scope: !541, file: !526, line: 223, type: !134)
!551 = !DILocalVariable(name: "n0", scope: !541, file: !526, line: 230, type: !134)
!552 = !DILocalVariable(name: "n", scope: !541, file: !526, line: 237, type: !134)
!553 = !DILocalVariable(name: "nbytes", scope: !541, file: !526, line: 248, type: !134)
!554 = !DILocalVariable(name: "adjusted_nbytes", scope: !541, file: !526, line: 252, type: !134)
!555 = !{!68, !70, !79, !137, !75}
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!557 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !560, splitDebugInlining: false, nameTableKind: None)
!559 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!560 = !{!561, !5}
!561 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !562, line: 30, baseType: !7, size: 32, elements: !563)
!562 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!563 = !{!564, !565, !566, !567, !568}
!564 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!565 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!566 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!567 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!568 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !571, retainedTypes: !572, splitDebugInlining: false, nameTableKind: None)
!570 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!571 = !{!561}
!572 = !{!79, !137, !75, !142}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !509, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!576 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !579, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!579 = !{!79, !75, !70}
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!581 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!583 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !509, splitDebugInlining: false, nameTableKind: None)
!585 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!586 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!587 = !{i32 7, !"Dwarf Version", i32 5}
!588 = !{i32 2, !"Debug Info Version", i32 3}
!589 = !{i32 1, !"wchar_size", i32 4}
!590 = !{i32 1, !"branch-target-enforcement", i32 0}
!591 = !{i32 1, !"sign-return-address", i32 0}
!592 = !{i32 1, !"sign-return-address-all", i32 0}
!593 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!594 = !{i32 7, !"PIC Level", i32 2}
!595 = !{i32 7, !"PIE Level", i32 2}
!596 = !{i32 7, !"uwtable", i32 1}
!597 = !{i32 7, !"frame-pointer", i32 1}
!598 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 175, type: !599, scopeLine: 176, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !71}
!601 = !{!602}
!602 = !DILocalVariable(name: "status", arg: 1, scope: !598, file: !3, line: 175, type: !71)
!603 = !DILocation(line: 0, scope: !598)
!604 = !DILocation(line: 177, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !598, file: !3, line: 177, column: 7)
!606 = !DILocation(line: 177, column: 7, scope: !598)
!607 = !DILocation(line: 178, column: 5, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 178, column: 5)
!609 = !{!610, !610, i64 0}
!610 = !{!"any pointer", !611, i64 0}
!611 = !{!"omnipotent char", !612, i64 0}
!612 = !{!"Simple C/C++ TBAA"}
!613 = !DILocation(line: 181, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !605, file: !3, line: 180, column: 5)
!615 = !DILocation(line: 185, column: 7, scope: !614)
!616 = !DILocation(line: 729, column: 3, scope: !617, inlinedAt: !619)
!617 = distinct !DISubprogram(name: "emit_stdin_note", scope: !151, file: !151, line: 727, type: !287, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!618 = !{}
!619 = distinct !DILocation(line: 189, column: 7, scope: !614)
!620 = !DILocation(line: 736, column: 3, scope: !621, inlinedAt: !622)
!621 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !151, file: !151, line: 734, type: !287, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!622 = distinct !DILocation(line: 190, column: 7, scope: !614)
!623 = !DILocation(line: 192, column: 7, scope: !614)
!624 = !DILocation(line: 195, column: 7, scope: !614)
!625 = !DILocation(line: 198, column: 7, scope: !614)
!626 = !DILocation(line: 201, column: 7, scope: !614)
!627 = !DILocation(line: 204, column: 7, scope: !614)
!628 = !DILocation(line: 207, column: 7, scope: !614)
!629 = !DILocation(line: 210, column: 7, scope: !614)
!630 = !DILocation(line: 213, column: 7, scope: !614)
!631 = !DILocation(line: 216, column: 7, scope: !614)
!632 = !DILocation(line: 219, column: 7, scope: !614)
!633 = !DILocation(line: 222, column: 7, scope: !614)
!634 = !DILocation(line: 225, column: 7, scope: !614)
!635 = !DILocation(line: 226, column: 7, scope: !614)
!636 = !DILocation(line: 227, column: 7, scope: !614)
!637 = !DILocation(line: 236, column: 7, scope: !614)
!638 = !DILocation(line: 246, column: 7, scope: !614)
!639 = !DILocalVariable(name: "program", arg: 1, scope: !640, file: !151, line: 836, type: !76)
!640 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !151, file: !151, line: 836, type: !641, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !76}
!643 = !{!639, !644, !651, !652, !654, !655}
!644 = !DILocalVariable(name: "infomap", scope: !640, file: !151, line: 838, type: !645)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 896, elements: !260)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !640, file: !151, line: 838, size: 128, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !647, file: !151, line: 838, baseType: !76, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !647, file: !151, line: 838, baseType: !76, size: 64, offset: 64)
!651 = !DILocalVariable(name: "node", scope: !640, file: !151, line: 848, type: !76)
!652 = !DILocalVariable(name: "map_prog", scope: !640, file: !151, line: 849, type: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!654 = !DILocalVariable(name: "lc_messages", scope: !640, file: !151, line: 861, type: !76)
!655 = !DILocalVariable(name: "url_program", scope: !640, file: !151, line: 874, type: !76)
!656 = !DILocation(line: 0, scope: !640, inlinedAt: !657)
!657 = distinct !DILocation(line: 255, column: 7, scope: !614)
!658 = !DILocation(line: 838, column: 3, scope: !640, inlinedAt: !657)
!659 = !DILocation(line: 838, column: 67, scope: !640, inlinedAt: !657)
!660 = !DILocation(line: 849, column: 36, scope: !640, inlinedAt: !657)
!661 = !DILocation(line: 851, column: 3, scope: !640, inlinedAt: !657)
!662 = !DILocalVariable(name: "__s1", arg: 1, scope: !663, file: !664, line: 1359, type: !76)
!663 = distinct !DISubprogram(name: "streq", scope: !664, file: !664, line: 1359, type: !665, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!664 = !DIFile(filename: "./lib/string.h", directory: "/src")
!665 = !DISubroutineType(types: !666)
!666 = !{!79, !76, !76}
!667 = !{!662, !668}
!668 = !DILocalVariable(name: "__s2", arg: 2, scope: !663, file: !664, line: 1359, type: !76)
!669 = !DILocation(line: 0, scope: !663, inlinedAt: !670)
!670 = distinct !DILocation(line: 851, column: 33, scope: !640, inlinedAt: !657)
!671 = !DILocation(line: 1361, column: 11, scope: !663, inlinedAt: !670)
!672 = !DILocation(line: 1361, column: 10, scope: !663, inlinedAt: !670)
!673 = !DILocation(line: 852, column: 13, scope: !640, inlinedAt: !657)
!674 = !DILocation(line: 851, column: 20, scope: !640, inlinedAt: !657)
!675 = !{!676, !610, i64 0}
!676 = !{!"infomap", !610, i64 0, !610, i64 8}
!677 = !DILocation(line: 851, column: 10, scope: !640, inlinedAt: !657)
!678 = !DILocation(line: 851, column: 28, scope: !640, inlinedAt: !657)
!679 = distinct !{!679, !661, !673, !680}
!680 = !{!"llvm.loop.mustprogress"}
!681 = !DILocation(line: 854, column: 17, scope: !682, inlinedAt: !657)
!682 = distinct !DILexicalBlock(scope: !640, file: !151, line: 854, column: 7)
!683 = !{!676, !610, i64 8}
!684 = !DILocation(line: 854, column: 7, scope: !682, inlinedAt: !657)
!685 = !DILocation(line: 854, column: 7, scope: !640, inlinedAt: !657)
!686 = !DILocation(line: 857, column: 3, scope: !640, inlinedAt: !657)
!687 = !DILocation(line: 861, column: 29, scope: !640, inlinedAt: !657)
!688 = !DILocation(line: 862, column: 7, scope: !689, inlinedAt: !657)
!689 = distinct !DILexicalBlock(scope: !640, file: !151, line: 862, column: 7)
!690 = !DILocation(line: 862, column: 19, scope: !689, inlinedAt: !657)
!691 = !DILocation(line: 862, column: 22, scope: !689, inlinedAt: !657)
!692 = !DILocation(line: 862, column: 7, scope: !640, inlinedAt: !657)
!693 = !DILocation(line: 868, column: 7, scope: !694, inlinedAt: !657)
!694 = distinct !DILexicalBlock(scope: !689, file: !151, line: 863, column: 5)
!695 = !DILocation(line: 870, column: 5, scope: !694, inlinedAt: !657)
!696 = !DILocation(line: 0, scope: !663, inlinedAt: !697)
!697 = distinct !DILocation(line: 874, column: 29, scope: !640, inlinedAt: !657)
!698 = !DILocation(line: 875, column: 3, scope: !640, inlinedAt: !657)
!699 = !DILocation(line: 877, column: 3, scope: !640, inlinedAt: !657)
!700 = !DILocation(line: 879, column: 1, scope: !640, inlinedAt: !657)
!701 = !DILocation(line: 257, column: 3, scope: !598)
!702 = !DISubprogram(name: "dcgettext", scope: !703, file: !703, line: 51, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!703 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!704 = !DISubroutineType(types: !705)
!705 = !{!68, !76, !76, !71}
!706 = !DISubprogram(name: "fputs_unlocked", scope: !333, file: !333, line: 691, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!707 = !DISubroutineType(types: !708)
!708 = !{!71, !709, !710}
!709 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!710 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!711 = !DILocation(line: 0, scope: !150)
!712 = !DILocation(line: 581, column: 7, scope: !159)
!713 = !{!714, !714, i64 0}
!714 = !{!"int", !611, i64 0}
!715 = !DILocation(line: 581, column: 19, scope: !159)
!716 = !DILocation(line: 581, column: 7, scope: !150)
!717 = !DILocation(line: 585, column: 26, scope: !158)
!718 = !DILocation(line: 0, scope: !158)
!719 = !DILocation(line: 586, column: 23, scope: !158)
!720 = !DILocation(line: 586, column: 28, scope: !158)
!721 = !DILocation(line: 586, column: 32, scope: !158)
!722 = !{!611, !611, i64 0}
!723 = !DILocation(line: 586, column: 38, scope: !158)
!724 = !DILocation(line: 0, scope: !663, inlinedAt: !725)
!725 = distinct !DILocation(line: 586, column: 41, scope: !158)
!726 = !DILocation(line: 1361, column: 11, scope: !663, inlinedAt: !725)
!727 = !DILocation(line: 1361, column: 10, scope: !663, inlinedAt: !725)
!728 = !DILocation(line: 586, column: 19, scope: !158)
!729 = !DILocation(line: 587, column: 5, scope: !158)
!730 = !DILocation(line: 588, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !150, file: !151, line: 588, column: 7)
!732 = !DILocation(line: 588, column: 7, scope: !150)
!733 = !DILocation(line: 590, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !151, line: 589, column: 5)
!735 = !DILocation(line: 591, column: 7, scope: !734)
!736 = !DILocation(line: 595, column: 37, scope: !150)
!737 = !DILocation(line: 595, column: 35, scope: !150)
!738 = !DILocation(line: 596, column: 29, scope: !150)
!739 = !DILocation(line: 597, column: 8, scope: !166)
!740 = !DILocation(line: 597, column: 7, scope: !150)
!741 = !DILocation(line: 604, column: 24, scope: !165)
!742 = !DILocation(line: 604, column: 12, scope: !166)
!743 = !DILocation(line: 0, scope: !164)
!744 = !DILocation(line: 610, column: 16, scope: !164)
!745 = !DILocation(line: 610, column: 7, scope: !164)
!746 = !DILocation(line: 611, column: 21, scope: !164)
!747 = !{!748, !748, i64 0}
!748 = !{!"short", !611, i64 0}
!749 = !DILocation(line: 611, column: 19, scope: !164)
!750 = !DILocation(line: 611, column: 16, scope: !164)
!751 = !DILocation(line: 610, column: 30, scope: !164)
!752 = distinct !{!752, !745, !746, !680}
!753 = !DILocation(line: 612, column: 18, scope: !754)
!754 = distinct !DILexicalBlock(scope: !164, file: !151, line: 612, column: 11)
!755 = !DILocation(line: 612, column: 11, scope: !164)
!756 = !DILocation(line: 620, column: 23, scope: !150)
!757 = !DILocation(line: 625, column: 39, scope: !150)
!758 = !DILocation(line: 626, column: 3, scope: !150)
!759 = !DILocation(line: 626, column: 10, scope: !150)
!760 = !DILocation(line: 626, column: 21, scope: !150)
!761 = !DILocation(line: 628, column: 44, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !151, line: 628, column: 11)
!763 = distinct !DILexicalBlock(scope: !150, file: !151, line: 627, column: 5)
!764 = !DILocation(line: 628, column: 32, scope: !762)
!765 = !DILocation(line: 628, column: 49, scope: !762)
!766 = !DILocation(line: 628, column: 11, scope: !763)
!767 = !DILocation(line: 630, column: 11, scope: !768)
!768 = distinct !DILexicalBlock(scope: !763, file: !151, line: 630, column: 11)
!769 = !DILocation(line: 630, column: 11, scope: !763)
!770 = !DILocation(line: 632, column: 26, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !151, line: 632, column: 15)
!772 = distinct !DILexicalBlock(scope: !768, file: !151, line: 631, column: 9)
!773 = !DILocation(line: 632, column: 34, scope: !771)
!774 = !DILocation(line: 632, column: 37, scope: !771)
!775 = !DILocation(line: 632, column: 15, scope: !772)
!776 = !DILocation(line: 636, column: 29, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !151, line: 636, column: 15)
!778 = !DILocation(line: 640, column: 16, scope: !763)
!779 = distinct !{!779, !758, !780, !680}
!780 = !DILocation(line: 641, column: 5, scope: !150)
!781 = !DILocation(line: 644, column: 3, scope: !150)
!782 = !DILocation(line: 0, scope: !663, inlinedAt: !783)
!783 = distinct !DILocation(line: 648, column: 31, scope: !150)
!784 = !DILocation(line: 0, scope: !663, inlinedAt: !785)
!785 = distinct !DILocation(line: 649, column: 31, scope: !150)
!786 = !DILocation(line: 0, scope: !663, inlinedAt: !787)
!787 = distinct !DILocation(line: 650, column: 31, scope: !150)
!788 = !DILocation(line: 0, scope: !663, inlinedAt: !789)
!789 = distinct !DILocation(line: 651, column: 31, scope: !150)
!790 = !DILocation(line: 0, scope: !663, inlinedAt: !791)
!791 = distinct !DILocation(line: 652, column: 31, scope: !150)
!792 = !DILocation(line: 0, scope: !663, inlinedAt: !793)
!793 = distinct !DILocation(line: 653, column: 31, scope: !150)
!794 = !DILocation(line: 0, scope: !663, inlinedAt: !795)
!795 = distinct !DILocation(line: 654, column: 31, scope: !150)
!796 = !DILocation(line: 0, scope: !663, inlinedAt: !797)
!797 = distinct !DILocation(line: 655, column: 31, scope: !150)
!798 = !DILocation(line: 0, scope: !663, inlinedAt: !799)
!799 = distinct !DILocation(line: 656, column: 31, scope: !150)
!800 = !DILocation(line: 0, scope: !663, inlinedAt: !801)
!801 = distinct !DILocation(line: 657, column: 31, scope: !150)
!802 = !DILocation(line: 663, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !150, file: !151, line: 663, column: 7)
!804 = !DILocation(line: 664, column: 7, scope: !803)
!805 = !DILocation(line: 664, column: 10, scope: !803)
!806 = !DILocation(line: 663, column: 7, scope: !150)
!807 = !DILocation(line: 669, column: 7, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !151, line: 665, column: 5)
!809 = !DILocation(line: 671, column: 5, scope: !808)
!810 = !DILocation(line: 676, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !803, file: !151, line: 673, column: 5)
!812 = !DILocation(line: 679, column: 3, scope: !150)
!813 = !DILocation(line: 683, column: 3, scope: !150)
!814 = !DILocation(line: 686, column: 3, scope: !150)
!815 = !DILocation(line: 688, column: 3, scope: !150)
!816 = !DILocation(line: 691, column: 3, scope: !150)
!817 = !DILocation(line: 695, column: 3, scope: !150)
!818 = !DILocation(line: 696, column: 1, scope: !150)
!819 = !DISubprogram(name: "setlocale", scope: !820, file: !820, line: 122, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!820 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!821 = !DISubroutineType(types: !822)
!822 = !{!68, !71, !76}
!823 = !DISubprogram(name: "getenv", scope: !824, file: !824, line: 641, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!824 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!825 = !DISubroutineType(types: !826)
!826 = !{!68, !76}
!827 = !DISubprogram(name: "fwrite_unlocked", scope: !333, file: !333, line: 704, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!828 = !DISubroutineType(types: !829)
!829 = !{!73, !830, !73, !73, !710}
!830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!833 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 498, type: !834, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !837)
!834 = !DISubroutineType(types: !835)
!835 = !{!71, !71, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!837 = !{!838, !839, !840, !841, !842, !843, !848, !849}
!838 = !DILocalVariable(name: "argc", arg: 1, scope: !833, file: !3, line: 498, type: !71)
!839 = !DILocalVariable(name: "argv", arg: 2, scope: !833, file: !3, line: 498, type: !836)
!840 = !DILocalVariable(name: "c", scope: !833, file: !3, line: 500, type: !71)
!841 = !DILocalVariable(name: "len", scope: !833, file: !3, line: 501, type: !73)
!842 = !DILocalVariable(name: "ok", scope: !833, file: !3, line: 502, type: !79)
!843 = !DILocalVariable(name: "p", scope: !844, file: !3, line: 585, type: !76)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 584, column: 13)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 583, column: 15)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 517, column: 9)
!847 = distinct !DILexicalBlock(scope: !833, file: !3, line: 515, column: 5)
!848 = !DILocalVariable(name: "lim", scope: !844, file: !3, line: 586, type: !76)
!849 = !DILocalVariable(name: "n_chars", scope: !844, file: !3, line: 587, type: !71)
!850 = !DILocation(line: 0, scope: !833)
!851 = !DILocation(line: 505, column: 21, scope: !833)
!852 = !DILocation(line: 505, column: 3, scope: !833)
!853 = !DILocation(line: 506, column: 3, scope: !833)
!854 = !DILocation(line: 507, column: 3, scope: !833)
!855 = !DILocation(line: 508, column: 3, scope: !833)
!856 = !DILocation(line: 510, column: 3, scope: !833)
!857 = !DILocation(line: 512, column: 3, scope: !833)
!858 = !DILocation(line: 512, column: 15, scope: !833)
!859 = distinct !{!859, !857, !860, !680}
!860 = !DILocation(line: 609, column: 5, scope: !833)
!861 = !DILocation(line: 519, column: 17, scope: !862)
!862 = distinct !DILexicalBlock(scope: !846, file: !3, line: 519, column: 15)
!863 = !DILocation(line: 519, column: 15, scope: !846)
!864 = !DILocation(line: 521, column: 15, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 520, column: 13)
!866 = !DILocation(line: 524, column: 13, scope: !865)
!867 = !DILocation(line: 527, column: 17, scope: !868)
!868 = distinct !DILexicalBlock(scope: !846, file: !3, line: 527, column: 15)
!869 = !DILocation(line: 527, column: 15, scope: !846)
!870 = !DILocation(line: 529, column: 15, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !3, line: 528, column: 13)
!872 = !DILocation(line: 532, column: 13, scope: !871)
!873 = !DILocation(line: 535, column: 17, scope: !874)
!874 = distinct !DILexicalBlock(scope: !846, file: !3, line: 535, column: 15)
!875 = !DILocation(line: 535, column: 15, scope: !846)
!876 = !DILocation(line: 537, column: 15, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 536, column: 13)
!878 = !DILocation(line: 540, column: 13, scope: !877)
!879 = !DILocation(line: 543, column: 46, scope: !846)
!880 = !DILocation(line: 544, column: 46, scope: !846)
!881 = !DILocation(line: 543, column: 34, scope: !846)
!882 = !DILocation(line: 543, column: 32, scope: !846)
!883 = !{!884, !884, i64 0}
!884 = !{!"long", !611, i64 0}
!885 = !DILocation(line: 546, column: 11, scope: !846)
!886 = !DILocation(line: 548, column: 35, scope: !846)
!887 = !DILocation(line: 549, column: 35, scope: !846)
!888 = !DILocation(line: 548, column: 23, scope: !846)
!889 = !DILocation(line: 548, column: 21, scope: !846)
!890 = !DILocation(line: 550, column: 11, scope: !846)
!891 = !DILocation(line: 552, column: 25, scope: !846)
!892 = !DILocation(line: 553, column: 11, scope: !846)
!893 = !DILocation(line: 555, column: 36, scope: !846)
!894 = !DILocation(line: 556, column: 36, scope: !846)
!895 = !DILocation(line: 555, column: 24, scope: !846)
!896 = !DILocation(line: 555, column: 22, scope: !846)
!897 = !DILocation(line: 558, column: 11, scope: !846)
!898 = !DILocation(line: 560, column: 27, scope: !846)
!899 = !DILocation(line: 560, column: 25, scope: !846)
!900 = !DILocation(line: 561, column: 11, scope: !846)
!901 = !DILocation(line: 563, column: 38, scope: !846)
!902 = !DILocation(line: 564, column: 38, scope: !846)
!903 = !DILocation(line: 563, column: 26, scope: !846)
!904 = !DILocation(line: 563, column: 24, scope: !846)
!905 = !DILocation(line: 566, column: 11, scope: !846)
!906 = !DILocation(line: 568, column: 22, scope: !907)
!907 = distinct !DILexicalBlock(scope: !846, file: !3, line: 568, column: 15)
!908 = !DILocation(line: 0, scope: !663, inlinedAt: !909)
!909 = distinct !DILocation(line: 568, column: 15, scope: !907)
!910 = !DILocation(line: 1361, column: 11, scope: !663, inlinedAt: !909)
!911 = !DILocation(line: 1361, column: 10, scope: !663, inlinedAt: !909)
!912 = !DILocation(line: 568, column: 15, scope: !846)
!913 = !DILocation(line: 569, column: 27, scope: !907)
!914 = !DILocation(line: 569, column: 13, scope: !907)
!915 = !DILocation(line: 0, scope: !663, inlinedAt: !916)
!916 = distinct !DILocation(line: 570, column: 20, scope: !917)
!917 = distinct !DILexicalBlock(scope: !907, file: !3, line: 570, column: 20)
!918 = !DILocation(line: 1361, column: 11, scope: !663, inlinedAt: !916)
!919 = !DILocation(line: 1361, column: 10, scope: !663, inlinedAt: !916)
!920 = !DILocation(line: 570, column: 20, scope: !907)
!921 = !DILocation(line: 571, column: 27, scope: !917)
!922 = !DILocation(line: 571, column: 13, scope: !917)
!923 = !DILocation(line: 0, scope: !663, inlinedAt: !924)
!924 = distinct !DILocation(line: 572, column: 20, scope: !925)
!925 = distinct !DILexicalBlock(scope: !917, file: !3, line: 572, column: 20)
!926 = !DILocation(line: 1361, column: 11, scope: !663, inlinedAt: !924)
!927 = !DILocation(line: 1361, column: 10, scope: !663, inlinedAt: !924)
!928 = !DILocation(line: 572, column: 20, scope: !917)
!929 = !DILocation(line: 573, column: 27, scope: !925)
!930 = !DILocation(line: 573, column: 13, scope: !925)
!931 = !DILocation(line: 576, column: 15, scope: !932)
!932 = distinct !DILexicalBlock(scope: !925, file: !3, line: 575, column: 13)
!933 = !DILocation(line: 582, column: 25, scope: !846)
!934 = !DILocation(line: 582, column: 17, scope: !846)
!935 = !DILocation(line: 583, column: 19, scope: !845)
!936 = !DILocation(line: 583, column: 17, scope: !845)
!937 = !DILocation(line: 583, column: 15, scope: !846)
!938 = !DILocation(line: 585, column: 31, scope: !844)
!939 = !DILocation(line: 0, scope: !844)
!940 = !DILocation(line: 588, column: 24, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 588, column: 15)
!942 = distinct !DILexicalBlock(scope: !844, file: !3, line: 588, column: 15)
!943 = !DILocation(line: 588, column: 15, scope: !942)
!944 = !DILocation(line: 586, column: 35, scope: !844)
!945 = !DILocalVariable(name: "p", arg: 1, scope: !946, file: !29, line: 230, type: !76)
!946 = distinct !DISubprogram(name: "mcel_scan", scope: !29, file: !29, line: 230, type: !947, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!947 = !DISubroutineType(types: !948)
!948 = !{!949, !76, !76}
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !29, line: 143, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 138, size: 64, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !950, file: !29, line: 140, baseType: !379, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !950, file: !29, line: 141, baseType: !78, size: 8, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !950, file: !29, line: 142, baseType: !78, size: 8, offset: 40)
!955 = !{!945, !956, !957, !958, !969, !970}
!956 = !DILocalVariable(name: "lim", arg: 2, scope: !946, file: !29, line: 230, type: !76)
!957 = !DILocalVariable(name: "c", scope: !946, file: !29, line: 235, type: !69)
!958 = !DILocalVariable(name: "mbs", scope: !946, file: !29, line: 244, type: !959)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !385, line: 6, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !387, line: 21, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 13, size: 64, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !961, file: !387, line: 15, baseType: !71, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !961, file: !387, line: 20, baseType: !965, size: 32, offset: 32)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !387, line: 16, size: 32, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !965, file: !387, line: 18, baseType: !7, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !965, file: !387, line: 19, baseType: !396, size: 32)
!969 = !DILocalVariable(name: "ch", scope: !946, file: !29, line: 267, type: !379)
!970 = !DILocalVariable(name: "len", scope: !946, file: !29, line: 268, type: !73)
!971 = !DILocation(line: 0, scope: !946, inlinedAt: !972)
!972 = distinct !DILocation(line: 589, column: 24, scope: !941)
!973 = !DILocation(line: 235, column: 12, scope: !946, inlinedAt: !972)
!974 = !DILocalVariable(name: "c", arg: 1, scope: !975, file: !29, line: 215, type: !69)
!975 = distinct !DISubprogram(name: "mcel_isbasic", scope: !29, file: !29, line: 215, type: !976, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{!79, !69}
!978 = !{!974}
!979 = !DILocation(line: 0, scope: !975, inlinedAt: !980)
!980 = distinct !DILocation(line: 236, column: 7, scope: !981, inlinedAt: !972)
!981 = distinct !DILexicalBlock(scope: !946, file: !29, line: 236, column: 7)
!982 = !DILocation(line: 217, column: 10, scope: !975, inlinedAt: !980)
!983 = !DILocation(line: 236, column: 7, scope: !946, inlinedAt: !972)
!984 = !DILocation(line: 244, column: 3, scope: !946, inlinedAt: !972)
!985 = !DILocation(line: 244, column: 13, scope: !946, inlinedAt: !972)
!986 = !DILocation(line: 244, column: 30, scope: !946, inlinedAt: !972)
!987 = !{!988, !714, i64 0}
!988 = !{!"", !714, i64 0, !611, i64 4}
!989 = !DILocation(line: 267, column: 3, scope: !946, inlinedAt: !972)
!990 = !DILocation(line: 268, column: 16, scope: !946, inlinedAt: !972)
!991 = !DILocation(line: 274, column: 7, scope: !992, inlinedAt: !972)
!992 = distinct !DILexicalBlock(scope: !946, file: !29, line: 274, column: 7)
!993 = !DILocation(line: 274, column: 7, scope: !946, inlinedAt: !972)
!994 = !{!"branch_weights", i32 1, i32 2000}
!995 = !DILocation(line: 279, column: 19, scope: !946, inlinedAt: !972)
!996 = !DILocalVariable(name: "ch", arg: 1, scope: !997, file: !29, line: 167, type: !379)
!997 = distinct !DISubprogram(name: "mcel_ch", scope: !29, file: !29, line: 167, type: !998, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{!949, !379, !73}
!1000 = !{!996, !1001}
!1001 = !DILocalVariable(name: "len", arg: 2, scope: !997, file: !29, line: 167, type: !73)
!1002 = !DILocation(line: 0, scope: !997, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 279, column: 10, scope: !946, inlinedAt: !972)
!1004 = !DILocation(line: 169, column: 3, scope: !997, inlinedAt: !1003)
!1005 = !DILocation(line: 170, column: 3, scope: !997, inlinedAt: !1003)
!1006 = !DILocation(line: 171, column: 3, scope: !997, inlinedAt: !1003)
!1007 = !DILocation(line: 279, column: 3, scope: !946, inlinedAt: !972)
!1008 = !DILocation(line: 280, column: 1, scope: !946, inlinedAt: !972)
!1009 = !DILocation(line: 589, column: 21, scope: !941)
!1010 = distinct !{!1010, !943, !1011, !680}
!1011 = !DILocation(line: 589, column: 43, scope: !942)
!1012 = !DILocation(line: 268, column: 38, scope: !946, inlinedAt: !972)
!1013 = !DILocation(line: 590, column: 19, scope: !844)
!1014 = !DILocation(line: 591, column: 34, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !844, file: !3, line: 590, column: 19)
!1016 = !DILocation(line: 591, column: 47, scope: !1015)
!1017 = !DILocalVariable(name: "__dest", arg: 1, scope: !1018, file: !1019, line: 42, type: !1022)
!1018 = distinct !DISubprogram(name: "mempcpy", scope: !1019, file: !1019, line: 42, type: !1020, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1019 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!70, !1022, !830, !73}
!1022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!1023 = !{!1017, !1024, !1025}
!1024 = !DILocalVariable(name: "__src", arg: 2, scope: !1018, file: !1019, line: 42, type: !830)
!1025 = !DILocalVariable(name: "__len", arg: 3, scope: !1018, file: !1019, line: 42, type: !73)
!1026 = !DILocation(line: 0, scope: !1018, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 591, column: 25, scope: !1015)
!1028 = !DILocation(line: 45, column: 10, scope: !1018, inlinedAt: !1027)
!1029 = !DILocalVariable(name: "__dest", arg: 1, scope: !1030, file: !1019, line: 26, type: !1022)
!1030 = distinct !DISubprogram(name: "memcpy", scope: !1019, file: !1019, line: 26, type: !1020, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1031)
!1031 = !{!1029, !1032, !1033}
!1032 = !DILocalVariable(name: "__src", arg: 2, scope: !1030, file: !1019, line: 26, type: !830)
!1033 = !DILocalVariable(name: "__len", arg: 3, scope: !1030, file: !1019, line: 26, type: !73)
!1034 = !DILocation(line: 0, scope: !1030, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 591, column: 17, scope: !1015)
!1036 = !DILocation(line: 29, column: 10, scope: !1030, inlinedAt: !1035)
!1037 = !DILocation(line: 591, column: 17, scope: !1015)
!1038 = !DILocation(line: 593, column: 31, scope: !1015)
!1039 = !DILocation(line: 593, column: 29, scope: !1015)
!1040 = !DILocation(line: 597, column: 23, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 597, column: 19)
!1042 = distinct !DILexicalBlock(scope: !845, file: !3, line: 596, column: 13)
!1043 = !DILocation(line: 0, scope: !1041)
!1044 = !DILocation(line: 597, column: 19, scope: !1042)
!1045 = !DILocation(line: 598, column: 32, scope: !1041)
!1046 = !DILocation(line: 598, column: 18, scope: !1041)
!1047 = !DILocation(line: 598, column: 30, scope: !1041)
!1048 = !DILocation(line: 598, column: 17, scope: !1041)
!1049 = !DILocation(line: 600, column: 29, scope: !1041)
!1050 = !DILocation(line: 603, column: 9, scope: !846)
!1051 = !DILocation(line: 604, column: 9, scope: !846)
!1052 = !DILocation(line: 611, column: 7, scope: !833)
!1053 = !DILocation(line: 612, column: 5, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !833, file: !3, line: 611, column: 7)
!1055 = !DILocation(line: 615, column: 35, scope: !833)
!1056 = !DILocation(line: 615, column: 27, scope: !833)
!1057 = !DILocation(line: 615, column: 19, scope: !833)
!1058 = !DILocation(line: 617, column: 24, scope: !833)
!1059 = !DILocation(line: 617, column: 18, scope: !833)
!1060 = !DILocation(line: 618, column: 40, scope: !833)
!1061 = !DILocation(line: 618, column: 16, scope: !833)
!1062 = !DILocation(line: 618, column: 14, scope: !833)
!1063 = !DILocation(line: 619, column: 39, scope: !833)
!1064 = !DILocalVariable(name: "__dest", arg: 1, scope: !1065, file: !1019, line: 84, type: !1068)
!1065 = distinct !DISubprogram(name: "stpcpy", scope: !1019, file: !1019, line: 84, type: !1066, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!68, !1068, !709}
!1068 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!1069 = !{!1064, !1070}
!1070 = !DILocalVariable(name: "__src", arg: 2, scope: !1065, file: !1019, line: 84, type: !709)
!1071 = !DILocation(line: 0, scope: !1065, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 619, column: 19, scope: !833)
!1073 = !DILocation(line: 86, column: 10, scope: !1065, inlinedAt: !1072)
!1074 = !DILocation(line: 0, scope: !1065, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 619, column: 11, scope: !833)
!1076 = !DILocation(line: 86, column: 10, scope: !1065, inlinedAt: !1075)
!1077 = !DILocation(line: 0, scope: !1065, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 619, column: 3, scope: !833)
!1079 = !DILocation(line: 86, column: 10, scope: !1065, inlinedAt: !1078)
!1080 = !DILocation(line: 621, column: 22, scope: !833)
!1081 = !DILocation(line: 621, column: 16, scope: !833)
!1082 = !DILocation(line: 622, column: 14, scope: !833)
!1083 = !DILocation(line: 622, column: 25, scope: !833)
!1084 = !DILocation(line: 622, column: 12, scope: !833)
!1085 = !DILocation(line: 624, column: 18, scope: !833)
!1086 = !DILocation(line: 625, column: 25, scope: !833)
!1087 = !DILocation(line: 625, column: 14, scope: !833)
!1088 = !DILocation(line: 628, column: 3, scope: !833)
!1089 = !DILocation(line: 631, column: 17, scope: !833)
!1090 = !DILocation(line: 631, column: 9, scope: !833)
!1091 = !DILocation(line: 632, column: 32, scope: !833)
!1092 = !DILocation(line: 632, column: 45, scope: !833)
!1093 = !DILocation(line: 632, column: 51, scope: !833)
!1094 = !DILocation(line: 632, column: 23, scope: !833)
!1095 = !DILocation(line: 632, column: 21, scope: !833)
!1096 = !DILocation(line: 633, column: 35, scope: !833)
!1097 = !DILocation(line: 633, column: 48, scope: !833)
!1098 = !DILocalVariable(name: "__dest", arg: 1, scope: !1099, file: !1019, line: 57, type: !70)
!1099 = distinct !DISubprogram(name: "memset", scope: !1019, file: !1019, line: 57, type: !1100, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!70, !70, !71, !73}
!1102 = !{!1098, !1103, !1104}
!1103 = !DILocalVariable(name: "__ch", arg: 2, scope: !1099, file: !1019, line: 57, type: !71)
!1104 = !DILocalVariable(name: "__len", arg: 3, scope: !1099, file: !1019, line: 57, type: !73)
!1105 = !DILocation(line: 0, scope: !1099, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 633, column: 3, scope: !833)
!1107 = !DILocation(line: 59, column: 10, scope: !1099, inlinedAt: !1106)
!1108 = !DILocation(line: 634, column: 3, scope: !833)
!1109 = !DILocation(line: 634, column: 41, scope: !833)
!1110 = !DILocation(line: 636, column: 13, scope: !833)
!1111 = !DILocation(line: 636, column: 11, scope: !833)
!1112 = !DILocation(line: 637, column: 18, scope: !833)
!1113 = !DILocation(line: 637, column: 16, scope: !833)
!1114 = !DILocation(line: 638, column: 17, scope: !833)
!1115 = !DILocation(line: 642, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !833, file: !3, line: 642, column: 7)
!1117 = !DILocation(line: 642, column: 14, scope: !1116)
!1118 = !DILocation(line: 642, column: 7, scope: !833)
!1119 = !DILocation(line: 645, column: 19, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 645, column: 5)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 645, column: 5)
!1122 = !DILocation(line: 645, column: 5, scope: !1121)
!1123 = !DILocation(line: 643, column: 10, scope: !1116)
!1124 = !DILocation(line: 643, column: 5, scope: !1116)
!1125 = !DILocation(line: 646, column: 22, scope: !1120)
!1126 = !DILocation(line: 646, column: 13, scope: !1120)
!1127 = !DILocation(line: 646, column: 10, scope: !1120)
!1128 = !DILocation(line: 645, column: 33, scope: !1120)
!1129 = distinct !{!1129, !1122, !1130, !680}
!1130 = !DILocation(line: 646, column: 34, scope: !1121)
!1131 = !DILocation(line: 648, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !833, file: !3, line: 648, column: 7)
!1133 = !DILocation(line: 648, column: 23, scope: !1132)
!1134 = !DILocation(line: 648, column: 34, scope: !1132)
!1135 = !DILocation(line: 648, column: 26, scope: !1132)
!1136 = !DILocation(line: 648, column: 41, scope: !1132)
!1137 = !DILocation(line: 648, column: 7, scope: !833)
!1138 = !DILocation(line: 649, column: 5, scope: !1132)
!1139 = !DILocation(line: 651, column: 10, scope: !833)
!1140 = !DILocation(line: 651, column: 3, scope: !833)
!1141 = !DISubprogram(name: "bindtextdomain", scope: !703, file: !703, line: 86, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!68, !76, !76}
!1144 = !DISubprogram(name: "textdomain", scope: !703, file: !703, line: 82, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1145 = !DISubprogram(name: "atexit", scope: !824, file: !824, line: 602, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!71, !359}
!1148 = !DISubprogram(name: "getopt_long", scope: !297, file: !297, line: 66, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!71, !71, !1151, !76, !1153, !302}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!1154 = distinct !DISubprogram(name: "build_type_arg", scope: !3, file: !3, line: 264, type: !1155, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1158)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!79, !1157, !281, !68}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1158 = !{!1159, !1160, !1161, !1162, !1163}
!1159 = !DILocalVariable(name: "typep", arg: 1, scope: !1154, file: !3, line: 264, type: !1157)
!1160 = !DILocalVariable(name: "regexp", arg: 2, scope: !1154, file: !3, line: 265, type: !281)
!1161 = !DILocalVariable(name: "fastmap", arg: 3, scope: !1154, file: !3, line: 265, type: !68)
!1162 = !DILocalVariable(name: "errmsg", scope: !1154, file: !3, line: 267, type: !76)
!1163 = !DILocalVariable(name: "rval", scope: !1154, file: !3, line: 268, type: !79)
!1164 = !DILocation(line: 0, scope: !1154)
!1165 = !DILocation(line: 270, column: 12, scope: !1154)
!1166 = !DILocation(line: 270, column: 11, scope: !1154)
!1167 = !DILocation(line: 270, column: 3, scope: !1154)
!1168 = !DILocation(line: 275, column: 14, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 271, column: 5)
!1170 = !DILocation(line: 276, column: 7, scope: !1169)
!1171 = !DILocation(line: 278, column: 22, scope: !1169)
!1172 = !DILocation(line: 278, column: 14, scope: !1169)
!1173 = !DILocation(line: 281, column: 15, scope: !1169)
!1174 = !DILocation(line: 281, column: 23, scope: !1169)
!1175 = !DILocation(line: 280, column: 25, scope: !1169)
!1176 = !{!1177, !610, i64 32}
!1177 = !{!"re_pattern_buffer", !610, i64 0, !884, i64 8, !884, i64 16, !884, i64 24, !610, i64 32, !610, i64 40, !884, i64 48, !714, i64 56, !714, i64 56, !714, i64 56, !714, i64 56, !714, i64 56, !714, i64 56, !714, i64 56}
!1178 = !DILocation(line: 282, column: 15, scope: !1169)
!1179 = !DILocation(line: 282, column: 25, scope: !1169)
!1180 = !{!1177, !610, i64 40}
!1181 = !DILocation(line: 283, column: 25, scope: !1169)
!1182 = !DILocation(line: 285, column: 36, scope: !1169)
!1183 = !DILocation(line: 285, column: 44, scope: !1169)
!1184 = !DILocation(line: 285, column: 16, scope: !1169)
!1185 = !DILocation(line: 286, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 286, column: 11)
!1187 = !DILocation(line: 286, column: 11, scope: !1169)
!1188 = !DILocation(line: 287, column: 9, scope: !1186)
!1189 = !DILocation(line: 293, column: 3, scope: !1154)
!1190 = !DISubprogram(name: "mbrtoc32", scope: !380, file: !380, line: 57, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!73, !1193, !709, !73, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!1197 = distinct !DISubprogram(name: "nl_file", scope: !3, file: !3, line: 458, type: !1198, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1200)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!79, !76}
!1200 = !{!1201, !1202, !1203}
!1201 = !DILocalVariable(name: "file", arg: 1, scope: !1197, file: !3, line: 458, type: !76)
!1202 = !DILocalVariable(name: "stream", scope: !1197, file: !3, line: 460, type: !173)
!1203 = !DILocalVariable(name: "err", scope: !1197, file: !3, line: 482, type: !71)
!1204 = !DILocation(line: 0, scope: !1197)
!1205 = !DILocation(line: 0, scope: !663, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 462, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 462, column: 7)
!1208 = !DILocation(line: 1361, column: 11, scope: !663, inlinedAt: !1206)
!1209 = !DILocation(line: 1361, column: 10, scope: !663, inlinedAt: !1206)
!1210 = !DILocation(line: 462, column: 7, scope: !1197)
!1211 = !DILocation(line: 464, column: 23, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 463, column: 5)
!1213 = !DILocation(line: 465, column: 16, scope: !1212)
!1214 = !DILocation(line: 467, column: 5, scope: !1212)
!1215 = !DILocation(line: 470, column: 16, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 469, column: 5)
!1217 = !DILocation(line: 471, column: 18, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 471, column: 11)
!1219 = !DILocation(line: 471, column: 11, scope: !1216)
!1220 = !DILocation(line: 473, column: 11, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 472, column: 9)
!1222 = !DILocation(line: 474, column: 11, scope: !1221)
!1223 = !DILocation(line: 0, scope: !1207)
!1224 = !DILocation(line: 478, column: 3, scope: !1197)
!1225 = !DILocalVariable(name: "fp", arg: 1, scope: !1226, file: !3, line: 429, type: !173)
!1226 = distinct !DISubprogram(name: "process_file", scope: !3, file: !3, line: 429, type: !1227, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1229)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !173}
!1229 = !{!1225}
!1230 = !DILocation(line: 0, scope: !1226, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 480, column: 3, scope: !1197)
!1232 = !DILocation(line: 431, column: 3, scope: !1226, inlinedAt: !1231)
!1233 = !DILocation(line: 431, column: 10, scope: !1226, inlinedAt: !1231)
!1234 = !DILocation(line: 409, column: 25, scope: !1235, inlinedAt: !1240)
!1235 = distinct !DISubprogram(name: "check_section", scope: !3, file: !3, line: 407, type: !1236, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!61}
!1238 = !{!1239}
!1239 = !DILocalVariable(name: "len", scope: !1235, file: !3, line: 409, type: !73)
!1240 = distinct !DILocation(line: 433, column: 15, scope: !1241, inlinedAt: !1231)
!1241 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 432, column: 5)
!1242 = !{!1243, !884, i64 8}
!1243 = !{!"linebuffer", !884, i64 0, !884, i64 8, !610, i64 16}
!1244 = !DILocation(line: 409, column: 32, scope: !1235, inlinedAt: !1240)
!1245 = !DILocation(line: 0, scope: !1235, inlinedAt: !1240)
!1246 = !DILocation(line: 411, column: 13, scope: !1247, inlinedAt: !1240)
!1247 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 411, column: 7)
!1248 = !DILocation(line: 411, column: 11, scope: !1247, inlinedAt: !1240)
!1249 = !DILocation(line: 411, column: 29, scope: !1247, inlinedAt: !1240)
!1250 = !DILocation(line: 412, column: 27, scope: !1247, inlinedAt: !1240)
!1251 = !{!1243, !610, i64 16}
!1252 = !DILocation(line: 412, column: 35, scope: !1247, inlinedAt: !1240)
!1253 = !DILocalVariable(name: "__s1", arg: 1, scope: !1254, file: !664, line: 974, type: !831)
!1254 = distinct !DISubprogram(name: "memeq", scope: !664, file: !664, line: 974, type: !1255, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!79, !831, !831, !73}
!1257 = !{!1253, !1258, !1259}
!1258 = !DILocalVariable(name: "__s2", arg: 2, scope: !1254, file: !664, line: 974, type: !831)
!1259 = !DILocalVariable(name: "__n", arg: 3, scope: !1254, file: !664, line: 974, type: !73)
!1260 = !DILocation(line: 0, scope: !1254, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 412, column: 11, scope: !1247, inlinedAt: !1240)
!1262 = !DILocation(line: 976, column: 11, scope: !1254, inlinedAt: !1261)
!1263 = !DILocation(line: 976, column: 10, scope: !1254, inlinedAt: !1261)
!1264 = !DILocation(line: 411, column: 7, scope: !1235, inlinedAt: !1240)
!1265 = !DILocation(line: 414, column: 14, scope: !1266, inlinedAt: !1240)
!1266 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 414, column: 7)
!1267 = !DILocation(line: 414, column: 11, scope: !1266, inlinedAt: !1240)
!1268 = !DILocation(line: 415, column: 7, scope: !1266, inlinedAt: !1240)
!1269 = !DILocation(line: 415, column: 34, scope: !1266, inlinedAt: !1240)
!1270 = !DILocation(line: 0, scope: !1254, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 415, column: 10, scope: !1266, inlinedAt: !1240)
!1272 = !DILocation(line: 976, column: 11, scope: !1254, inlinedAt: !1271)
!1273 = !DILocation(line: 976, column: 10, scope: !1254, inlinedAt: !1271)
!1274 = !DILocation(line: 414, column: 7, scope: !1235, inlinedAt: !1240)
!1275 = !DILocation(line: 417, column: 14, scope: !1276, inlinedAt: !1240)
!1276 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 417, column: 7)
!1277 = !DILocation(line: 417, column: 11, scope: !1276, inlinedAt: !1240)
!1278 = !DILocation(line: 418, column: 7, scope: !1276, inlinedAt: !1240)
!1279 = !DILocation(line: 418, column: 34, scope: !1276, inlinedAt: !1240)
!1280 = !DILocation(line: 0, scope: !1254, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 418, column: 10, scope: !1276, inlinedAt: !1240)
!1282 = !DILocation(line: 976, column: 11, scope: !1254, inlinedAt: !1281)
!1283 = !DILocation(line: 976, column: 10, scope: !1254, inlinedAt: !1281)
!1284 = !DILocation(line: 417, column: 7, scope: !1235, inlinedAt: !1240)
!1285 = !DILocation(line: 420, column: 11, scope: !1286, inlinedAt: !1240)
!1286 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 420, column: 7)
!1287 = !DILocation(line: 421, column: 7, scope: !1286, inlinedAt: !1240)
!1288 = !DILocation(line: 421, column: 34, scope: !1286, inlinedAt: !1240)
!1289 = !DILocation(line: 0, scope: !1254, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 421, column: 10, scope: !1286, inlinedAt: !1240)
!1291 = !DILocation(line: 976, column: 11, scope: !1254, inlinedAt: !1290)
!1292 = !DILocation(line: 976, column: 10, scope: !1254, inlinedAt: !1290)
!1293 = !DILocation(line: 420, column: 7, scope: !1235, inlinedAt: !1240)
!1294 = !DILocation(line: 325, column: 18, scope: !1295, inlinedAt: !1296)
!1295 = distinct !DISubprogram(name: "proc_header", scope: !3, file: !3, line: 323, type: !287, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!1296 = distinct !DILocation(line: 436, column: 11, scope: !1297, inlinedAt: !1231)
!1297 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 434, column: 9)
!1298 = !DILocation(line: 325, column: 16, scope: !1295, inlinedAt: !1296)
!1299 = !DILocation(line: 326, column: 17, scope: !1295, inlinedAt: !1296)
!1300 = !DILocation(line: 313, column: 7, scope: !1301, inlinedAt: !1303)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 313, column: 7)
!1302 = distinct !DISubprogram(name: "reset_lineno", scope: !3, file: !3, line: 311, type: !287, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!1303 = distinct !DILocation(line: 327, column: 3, scope: !1295, inlinedAt: !1296)
!1304 = !DILocation(line: 313, column: 7, scope: !1302, inlinedAt: !1303)
!1305 = !DILocation(line: 315, column: 17, scope: !1306, inlinedAt: !1303)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 314, column: 5)
!1307 = !DILocation(line: 315, column: 15, scope: !1306, inlinedAt: !1303)
!1308 = !DILocation(line: 316, column: 24, scope: !1306, inlinedAt: !1303)
!1309 = !DILocation(line: 317, column: 5, scope: !1306, inlinedAt: !1303)
!1310 = !DILocalVariable(name: "__c", arg: 1, scope: !1311, file: !1312, line: 108, type: !71)
!1311 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1312, file: !1312, line: 108, type: !1313, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1315)
!1312 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!71, !71}
!1315 = !{!1310}
!1316 = !DILocation(line: 0, scope: !1311, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 328, column: 3, scope: !1295, inlinedAt: !1296)
!1318 = !DILocation(line: 110, column: 10, scope: !1311, inlinedAt: !1317)
!1319 = !{!1320, !610, i64 40}
!1320 = !{!"_IO_FILE", !714, i64 0, !610, i64 8, !610, i64 16, !610, i64 24, !610, i64 32, !610, i64 40, !610, i64 48, !610, i64 56, !610, i64 64, !610, i64 72, !610, i64 80, !610, i64 88, !610, i64 96, !610, i64 104, !714, i64 112, !714, i64 116, !884, i64 120, !748, i64 128, !611, i64 130, !611, i64 131, !610, i64 136, !884, i64 144, !610, i64 152, !610, i64 160, !610, i64 168, !610, i64 176, !884, i64 184, !714, i64 192, !611, i64 196}
!1321 = !{!1320, !610, i64 48}
!1322 = !{!"branch_weights", i32 2000, i32 1}
!1323 = !DILocation(line: 336, column: 18, scope: !1324, inlinedAt: !1325)
!1324 = distinct !DISubprogram(name: "proc_body", scope: !3, file: !3, line: 334, type: !287, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!1325 = distinct !DILocation(line: 439, column: 11, scope: !1297, inlinedAt: !1231)
!1326 = !DILocation(line: 336, column: 16, scope: !1324, inlinedAt: !1325)
!1327 = !DILocation(line: 337, column: 17, scope: !1324, inlinedAt: !1325)
!1328 = !DILocation(line: 313, column: 7, scope: !1301, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 338, column: 3, scope: !1324, inlinedAt: !1325)
!1330 = !DILocation(line: 313, column: 7, scope: !1302, inlinedAt: !1329)
!1331 = !DILocation(line: 315, column: 17, scope: !1306, inlinedAt: !1329)
!1332 = !DILocation(line: 315, column: 15, scope: !1306, inlinedAt: !1329)
!1333 = !DILocation(line: 316, column: 24, scope: !1306, inlinedAt: !1329)
!1334 = !DILocation(line: 317, column: 5, scope: !1306, inlinedAt: !1329)
!1335 = !DILocation(line: 0, scope: !1311, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 339, column: 3, scope: !1324, inlinedAt: !1325)
!1337 = !DILocation(line: 110, column: 10, scope: !1311, inlinedAt: !1336)
!1338 = !DILocation(line: 347, column: 18, scope: !1339, inlinedAt: !1340)
!1339 = distinct !DISubprogram(name: "proc_footer", scope: !3, file: !3, line: 345, type: !287, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!1340 = distinct !DILocation(line: 442, column: 11, scope: !1297, inlinedAt: !1231)
!1341 = !DILocation(line: 347, column: 16, scope: !1339, inlinedAt: !1340)
!1342 = !DILocation(line: 348, column: 17, scope: !1339, inlinedAt: !1340)
!1343 = !DILocation(line: 313, column: 7, scope: !1301, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 349, column: 3, scope: !1339, inlinedAt: !1340)
!1345 = !DILocation(line: 313, column: 7, scope: !1302, inlinedAt: !1344)
!1346 = !DILocation(line: 315, column: 17, scope: !1306, inlinedAt: !1344)
!1347 = !DILocation(line: 315, column: 15, scope: !1306, inlinedAt: !1344)
!1348 = !DILocation(line: 316, column: 24, scope: !1306, inlinedAt: !1344)
!1349 = !DILocation(line: 317, column: 5, scope: !1306, inlinedAt: !1344)
!1350 = !DILocation(line: 0, scope: !1311, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 350, column: 3, scope: !1339, inlinedAt: !1340)
!1352 = !DILocation(line: 110, column: 10, scope: !1311, inlinedAt: !1351)
!1353 = !DILocation(line: 360, column: 12, scope: !286, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 445, column: 11, scope: !1297, inlinedAt: !1231)
!1355 = !DILocation(line: 360, column: 11, scope: !286, inlinedAt: !1354)
!1356 = !DILocation(line: 360, column: 3, scope: !286, inlinedAt: !1354)
!1357 = !DILocation(line: 363, column: 11, scope: !1358, inlinedAt: !1354)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 363, column: 11)
!1359 = distinct !DILexicalBlock(scope: !286, file: !3, line: 361, column: 5)
!1360 = !DILocation(line: 363, column: 22, scope: !1358, inlinedAt: !1354)
!1361 = !DILocation(line: 363, column: 11, scope: !1359, inlinedAt: !1354)
!1362 = !DILocation(line: 365, column: 17, scope: !1363, inlinedAt: !1354)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 365, column: 15)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 364, column: 9)
!1365 = !DILocation(line: 365, column: 35, scope: !1363, inlinedAt: !1354)
!1366 = !DILocation(line: 365, column: 38, scope: !1363, inlinedAt: !1354)
!1367 = !DILocation(line: 365, column: 52, scope: !1363, inlinedAt: !1354)
!1368 = !DILocation(line: 365, column: 15, scope: !1364, inlinedAt: !1354)
!1369 = !DILocation(line: 301, column: 7, scope: !1370, inlinedAt: !1372)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 301, column: 7)
!1371 = distinct !DISubprogram(name: "print_lineno", scope: !3, file: !3, line: 299, type: !287, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!1372 = distinct !DILocation(line: 367, column: 15, scope: !1373, inlinedAt: !1354)
!1373 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 366, column: 13)
!1374 = !DILocation(line: 301, column: 7, scope: !1371, inlinedAt: !1372)
!1375 = !DILocation(line: 302, column: 5, scope: !1370, inlinedAt: !1372)
!1376 = !DILocation(line: 304, column: 3, scope: !1371, inlinedAt: !1372)
!1377 = !DILocation(line: 306, column: 7, scope: !1378, inlinedAt: !1372)
!1378 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 306, column: 7)
!1379 = !DILocation(line: 306, column: 7, scope: !1371, inlinedAt: !1372)
!1380 = !DILocation(line: 307, column: 22, scope: !1378, inlinedAt: !1372)
!1381 = !DILocation(line: 307, column: 5, scope: !1378, inlinedAt: !1372)
!1382 = !DILocation(line: 368, column: 27, scope: !1373, inlinedAt: !1354)
!1383 = !DILocation(line: 369, column: 13, scope: !1373, inlinedAt: !1354)
!1384 = !DILocation(line: 371, column: 13, scope: !1363, inlinedAt: !1354)
!1385 = !DILocation(line: 301, column: 7, scope: !1370, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 374, column: 9, scope: !1358, inlinedAt: !1354)
!1387 = !DILocation(line: 301, column: 7, scope: !1371, inlinedAt: !1386)
!1388 = !DILocation(line: 302, column: 5, scope: !1370, inlinedAt: !1386)
!1389 = !DILocation(line: 304, column: 3, scope: !1371, inlinedAt: !1386)
!1390 = !DILocation(line: 306, column: 7, scope: !1378, inlinedAt: !1386)
!1391 = !DILocation(line: 306, column: 7, scope: !1371, inlinedAt: !1386)
!1392 = !DILocation(line: 307, column: 22, scope: !1378, inlinedAt: !1386)
!1393 = !DILocation(line: 307, column: 5, scope: !1378, inlinedAt: !1386)
!1394 = !DILocation(line: 377, column: 13, scope: !1395, inlinedAt: !1354)
!1395 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 377, column: 11)
!1396 = !DILocation(line: 377, column: 11, scope: !1359, inlinedAt: !1354)
!1397 = !DILocation(line: 301, column: 7, scope: !1370, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 378, column: 9, scope: !1395, inlinedAt: !1354)
!1399 = !DILocation(line: 301, column: 7, scope: !1371, inlinedAt: !1398)
!1400 = !DILocation(line: 302, column: 5, scope: !1370, inlinedAt: !1398)
!1401 = !DILocation(line: 304, column: 3, scope: !1371, inlinedAt: !1398)
!1402 = !DILocation(line: 306, column: 7, scope: !1378, inlinedAt: !1398)
!1403 = !DILocation(line: 306, column: 7, scope: !1371, inlinedAt: !1398)
!1404 = !DILocation(line: 307, column: 22, scope: !1378, inlinedAt: !1398)
!1405 = !DILocation(line: 307, column: 5, scope: !1378, inlinedAt: !1398)
!1406 = !DILocation(line: 380, column: 9, scope: !1395, inlinedAt: !1354)
!1407 = !DILocation(line: 383, column: 7, scope: !1359, inlinedAt: !1354)
!1408 = !DILocation(line: 384, column: 7, scope: !1359, inlinedAt: !1354)
!1409 = !DILocation(line: 386, column: 26, scope: !1359, inlinedAt: !1354)
!1410 = !DILocation(line: 386, column: 50, scope: !1359, inlinedAt: !1354)
!1411 = !DILocation(line: 386, column: 58, scope: !1359, inlinedAt: !1354)
!1412 = !DILocation(line: 386, column: 15, scope: !1359, inlinedAt: !1354)
!1413 = !DILocation(line: 386, column: 7, scope: !1359, inlinedAt: !1354)
!1414 = !DILocation(line: 390, column: 11, scope: !1415, inlinedAt: !1354)
!1415 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 388, column: 9)
!1416 = !DILocation(line: 393, column: 11, scope: !1415, inlinedAt: !1354)
!1417 = !DILocation(line: 394, column: 11, scope: !1415, inlinedAt: !1354)
!1418 = !DILocation(line: 301, column: 7, scope: !1370, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 397, column: 11, scope: !1415, inlinedAt: !1354)
!1420 = !DILocation(line: 301, column: 7, scope: !1371, inlinedAt: !1419)
!1421 = !DILocation(line: 302, column: 5, scope: !1370, inlinedAt: !1419)
!1422 = !DILocation(line: 304, column: 3, scope: !1371, inlinedAt: !1419)
!1423 = !DILocation(line: 306, column: 7, scope: !1378, inlinedAt: !1419)
!1424 = !DILocation(line: 306, column: 7, scope: !1371, inlinedAt: !1419)
!1425 = !DILocation(line: 307, column: 22, scope: !1378, inlinedAt: !1419)
!1426 = !DILocation(line: 307, column: 5, scope: !1378, inlinedAt: !1419)
!1427 = !DILocation(line: 401, column: 3, scope: !286, inlinedAt: !1354)
!1428 = !DILocation(line: 449, column: 11, scope: !1429, inlinedAt: !1231)
!1429 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 449, column: 11)
!1430 = !DILocalVariable(name: "__stream", arg: 1, scope: !1431, file: !1312, line: 135, type: !173)
!1431 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1312, file: !1312, line: 135, type: !1432, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!71, !173}
!1434 = !{!1430}
!1435 = !DILocation(line: 0, scope: !1431, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 449, column: 11, scope: !1429, inlinedAt: !1231)
!1437 = !DILocation(line: 137, column: 10, scope: !1431, inlinedAt: !1436)
!1438 = !{!1320, !714, i64 0}
!1439 = !DILocation(line: 449, column: 11, scope: !1241, inlinedAt: !1231)
!1440 = distinct !{!1440, !1232, !1441, !680}
!1441 = !DILocation(line: 451, column: 5, scope: !1226, inlinedAt: !1231)
!1442 = !DILocation(line: 948, column: 21, scope: !1443, inlinedAt: !1446)
!1443 = distinct !DISubprogram(name: "write_error", scope: !151, file: !151, line: 946, type: !287, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1444)
!1444 = !{!1445}
!1445 = !DILocalVariable(name: "saved_errno", scope: !1443, file: !151, line: 948, type: !71)
!1446 = distinct !DILocation(line: 450, column: 9, scope: !1429, inlinedAt: !1231)
!1447 = !DILocation(line: 0, scope: !1443, inlinedAt: !1446)
!1448 = !DILocation(line: 949, column: 3, scope: !1443, inlinedAt: !1446)
!1449 = !DILocation(line: 950, column: 11, scope: !1443, inlinedAt: !1446)
!1450 = !DILocation(line: 950, column: 3, scope: !1443, inlinedAt: !1446)
!1451 = !DILocation(line: 951, column: 3, scope: !1443, inlinedAt: !1446)
!1452 = !DILocation(line: 952, column: 3, scope: !1443, inlinedAt: !1446)
!1453 = !DILocation(line: 482, column: 13, scope: !1197)
!1454 = !DILocation(line: 0, scope: !1431, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 483, column: 8, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 483, column: 7)
!1457 = !DILocation(line: 137, column: 10, scope: !1431, inlinedAt: !1455)
!1458 = !DILocation(line: 483, column: 8, scope: !1456)
!1459 = !DILocation(line: 483, column: 7, scope: !1197)
!1460 = !DILocation(line: 0, scope: !663, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 485, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 485, column: 7)
!1463 = !DILocation(line: 1361, column: 11, scope: !663, inlinedAt: !1461)
!1464 = !DILocation(line: 1361, column: 10, scope: !663, inlinedAt: !1461)
!1465 = !DILocation(line: 485, column: 7, scope: !1197)
!1466 = !DILocation(line: 486, column: 5, scope: !1462)
!1467 = !DILocation(line: 487, column: 12, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 487, column: 12)
!1469 = !DILocation(line: 487, column: 28, scope: !1468)
!1470 = !DILocation(line: 487, column: 33, scope: !1468)
!1471 = !DILocation(line: 488, column: 11, scope: !1468)
!1472 = !DILocation(line: 488, column: 5, scope: !1468)
!1473 = !DILocation(line: 489, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 489, column: 7)
!1475 = !DILocation(line: 489, column: 7, scope: !1197)
!1476 = !DILocation(line: 495, column: 1, scope: !1197)
!1477 = !DISubprogram(name: "re_search", scope: !86, file: !86, line: 564, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!1480, !281, !76, !1480, !1480, !1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !86, line: 490, baseType: !71)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !86, line: 497, size: 192, elements: !1483)
!1483 = !{!1484, !1486, !1488}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !1482, file: !86, line: 499, baseType: !1485, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !86, line: 55, baseType: !7)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1482, file: !86, line: 500, baseType: !1487, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1482, file: !86, line: 501, baseType: !1487, size: 64, offset: 128)
!1489 = !DISubprogram(name: "fflush_unlocked", scope: !333, file: !333, line: 239, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1490 = !DISubprogram(name: "clearerr_unlocked", scope: !333, file: !333, line: 794, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1491 = !DISubprogram(name: "re_compile_pattern", scope: !86, file: !86, line: 548, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!76, !76, !73, !281}
!1494 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !317, file: !317, line: 50, type: !641, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !1495)
!1495 = !{!1496}
!1496 = !DILocalVariable(name: "file", arg: 1, scope: !1494, file: !317, line: 50, type: !76)
!1497 = !DILocation(line: 0, scope: !1494)
!1498 = !DILocation(line: 52, column: 13, scope: !1494)
!1499 = !DILocation(line: 53, column: 1, scope: !1494)
!1500 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !317, file: !317, line: 87, type: !1501, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !1503)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !79}
!1503 = !{!1504}
!1504 = !DILocalVariable(name: "ignore", arg: 1, scope: !1500, file: !317, line: 87, type: !79)
!1505 = !DILocation(line: 0, scope: !1500)
!1506 = !DILocation(line: 89, column: 16, scope: !1500)
!1507 = !{!1508, !1508, i64 0}
!1508 = !{!"_Bool", !611, i64 0}
!1509 = !DILocation(line: 90, column: 1, scope: !1500)
!1510 = distinct !DISubprogram(name: "close_stdout", scope: !317, file: !317, line: 116, type: !287, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !1511)
!1511 = !{!1512}
!1512 = !DILocalVariable(name: "write_error", scope: !1513, file: !317, line: 121, type: !76)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !317, line: 120, column: 5)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !317, line: 118, column: 7)
!1515 = !DILocation(line: 118, column: 21, scope: !1514)
!1516 = !DILocation(line: 118, column: 7, scope: !1514)
!1517 = !DILocation(line: 118, column: 29, scope: !1514)
!1518 = !DILocation(line: 119, column: 7, scope: !1514)
!1519 = !DILocation(line: 119, column: 12, scope: !1514)
!1520 = !{i8 0, i8 2}
!1521 = !DILocation(line: 119, column: 25, scope: !1514)
!1522 = !DILocation(line: 119, column: 28, scope: !1514)
!1523 = !DILocation(line: 119, column: 34, scope: !1514)
!1524 = !DILocation(line: 118, column: 7, scope: !1510)
!1525 = !DILocation(line: 121, column: 33, scope: !1513)
!1526 = !DILocation(line: 0, scope: !1513)
!1527 = !DILocation(line: 122, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1513, file: !317, line: 122, column: 11)
!1529 = !DILocation(line: 0, scope: !1528)
!1530 = !DILocation(line: 122, column: 11, scope: !1513)
!1531 = !DILocation(line: 123, column: 9, scope: !1528)
!1532 = !DILocation(line: 126, column: 9, scope: !1528)
!1533 = !DILocation(line: 128, column: 14, scope: !1513)
!1534 = !DILocation(line: 128, column: 7, scope: !1513)
!1535 = !DILocation(line: 133, column: 42, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1510, file: !317, line: 133, column: 7)
!1537 = !DILocation(line: 133, column: 28, scope: !1536)
!1538 = !DILocation(line: 133, column: 50, scope: !1536)
!1539 = !DILocation(line: 133, column: 7, scope: !1510)
!1540 = !DILocation(line: 134, column: 12, scope: !1536)
!1541 = !DILocation(line: 134, column: 5, scope: !1536)
!1542 = !DILocation(line: 135, column: 1, scope: !1510)
!1543 = distinct !DISubprogram(name: "verror", scope: !324, file: !324, line: 251, type: !1544, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !71, !71, !76, !332}
!1546 = !{!1547, !1548, !1549, !1550}
!1547 = !DILocalVariable(name: "status", arg: 1, scope: !1543, file: !324, line: 251, type: !71)
!1548 = !DILocalVariable(name: "errnum", arg: 2, scope: !1543, file: !324, line: 251, type: !71)
!1549 = !DILocalVariable(name: "message", arg: 3, scope: !1543, file: !324, line: 251, type: !76)
!1550 = !DILocalVariable(name: "args", arg: 4, scope: !1543, file: !324, line: 251, type: !332)
!1551 = !DILocation(line: 0, scope: !1543)
!1552 = !DILocation(line: 251, column: 1, scope: !1543)
!1553 = !DILocation(line: 261, column: 3, scope: !1543)
!1554 = !DILocation(line: 265, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1543, file: !324, line: 265, column: 7)
!1556 = !DILocation(line: 265, column: 7, scope: !1543)
!1557 = !DILocation(line: 266, column: 5, scope: !1555)
!1558 = !DILocation(line: 272, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !324, line: 268, column: 5)
!1560 = !DILocation(line: 276, column: 3, scope: !1543)
!1561 = !{i64 0, i64 8, !609, i64 8, i64 8, !609, i64 16, i64 8, !609, i64 24, i64 4, !713, i64 28, i64 4, !713}
!1562 = !DILocation(line: 282, column: 1, scope: !1543)
!1563 = distinct !DISubprogram(name: "flush_stdout", scope: !324, file: !324, line: 163, type: !287, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1564)
!1564 = !{!1565}
!1565 = !DILocalVariable(name: "stdout_fd", scope: !1563, file: !324, line: 166, type: !71)
!1566 = !DILocation(line: 0, scope: !1563)
!1567 = !DILocalVariable(name: "fd", arg: 1, scope: !1568, file: !324, line: 145, type: !71)
!1568 = distinct !DISubprogram(name: "is_open", scope: !324, file: !324, line: 145, type: !1313, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1569)
!1569 = !{!1567}
!1570 = !DILocation(line: 0, scope: !1568, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 182, column: 25, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1563, file: !324, line: 182, column: 7)
!1573 = !DILocation(line: 157, column: 15, scope: !1568, inlinedAt: !1571)
!1574 = !DILocation(line: 182, column: 25, scope: !1572)
!1575 = !DILocation(line: 182, column: 7, scope: !1563)
!1576 = !DILocation(line: 184, column: 5, scope: !1572)
!1577 = !DILocation(line: 185, column: 1, scope: !1563)
!1578 = distinct !DISubprogram(name: "error_tail", scope: !324, file: !324, line: 219, type: !1544, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1579)
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DILocalVariable(name: "status", arg: 1, scope: !1578, file: !324, line: 219, type: !71)
!1581 = !DILocalVariable(name: "errnum", arg: 2, scope: !1578, file: !324, line: 219, type: !71)
!1582 = !DILocalVariable(name: "message", arg: 3, scope: !1578, file: !324, line: 219, type: !76)
!1583 = !DILocalVariable(name: "args", arg: 4, scope: !1578, file: !324, line: 219, type: !332)
!1584 = !DILocation(line: 0, scope: !1578)
!1585 = !DILocation(line: 219, column: 1, scope: !1578)
!1586 = !DILocation(line: 229, column: 13, scope: !1578)
!1587 = !DILocation(line: 229, column: 3, scope: !1578)
!1588 = !DILocalVariable(name: "__stream", arg: 1, scope: !1589, file: !1590, line: 132, type: !1593)
!1589 = distinct !DISubprogram(name: "vfprintf", scope: !1590, file: !1590, line: 132, type: !1591, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1628)
!1590 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!71, !1593, !709, !334}
!1593 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1596, file: !177, line: 51, baseType: !71, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1596, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1596, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1596, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1596, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1596, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1596, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1596, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1596, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1596, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1596, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1596, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1596, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1596, file: !177, line: 70, baseType: !1612, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1596, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1596, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1596, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1596, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1596, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1596, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1596, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1596, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1596, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1596, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1596, file: !177, line: 93, baseType: !1612, size: 64, offset: 1344)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1596, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1596, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1596, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1596, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!1628 = !{!1588, !1629, !1630}
!1629 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1589, file: !1590, line: 133, type: !709)
!1630 = !DILocalVariable(name: "__ap", arg: 3, scope: !1589, file: !1590, line: 133, type: !334)
!1631 = !DILocation(line: 0, scope: !1589, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 229, column: 3, scope: !1578)
!1633 = !DILocation(line: 135, column: 10, scope: !1589, inlinedAt: !1632)
!1634 = !{!1635, !1637}
!1635 = distinct !{!1635, !1636, !"vfprintf.inline: argument 0"}
!1636 = distinct !{!1636, !"vfprintf.inline"}
!1637 = distinct !{!1637, !1636, !"vfprintf.inline: argument 1"}
!1638 = !DILocation(line: 232, column: 3, scope: !1578)
!1639 = !DILocation(line: 233, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1578, file: !324, line: 233, column: 7)
!1641 = !DILocation(line: 233, column: 7, scope: !1578)
!1642 = !DILocalVariable(name: "errnum", arg: 1, scope: !1643, file: !324, line: 188, type: !71)
!1643 = distinct !DISubprogram(name: "print_errno_message", scope: !324, file: !324, line: 188, type: !599, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1644)
!1644 = !{!1642, !1645, !1646}
!1645 = !DILocalVariable(name: "s", scope: !1643, file: !324, line: 190, type: !76)
!1646 = !DILocalVariable(name: "errbuf", scope: !1643, file: !324, line: 193, type: !1647)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8192, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 1024)
!1650 = !DILocation(line: 0, scope: !1643, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 234, column: 5, scope: !1640)
!1652 = !DILocation(line: 193, column: 3, scope: !1643, inlinedAt: !1651)
!1653 = !DILocation(line: 193, column: 8, scope: !1643, inlinedAt: !1651)
!1654 = !DILocation(line: 195, column: 7, scope: !1643, inlinedAt: !1651)
!1655 = !DILocation(line: 207, column: 9, scope: !1656, inlinedAt: !1651)
!1656 = distinct !DILexicalBlock(scope: !1643, file: !324, line: 207, column: 7)
!1657 = !DILocation(line: 207, column: 7, scope: !1643, inlinedAt: !1651)
!1658 = !DILocation(line: 208, column: 9, scope: !1656, inlinedAt: !1651)
!1659 = !DILocation(line: 208, column: 5, scope: !1656, inlinedAt: !1651)
!1660 = !DILocation(line: 214, column: 3, scope: !1643, inlinedAt: !1651)
!1661 = !DILocation(line: 216, column: 1, scope: !1643, inlinedAt: !1651)
!1662 = !DILocation(line: 234, column: 5, scope: !1640)
!1663 = !DILocation(line: 238, column: 3, scope: !1578)
!1664 = !DILocalVariable(name: "__c", arg: 1, scope: !1665, file: !1312, line: 101, type: !71)
!1665 = distinct !DISubprogram(name: "putc_unlocked", scope: !1312, file: !1312, line: 101, type: !1666, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1668)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!71, !71, !1594}
!1668 = !{!1664, !1669}
!1669 = !DILocalVariable(name: "__stream", arg: 2, scope: !1665, file: !1312, line: 101, type: !1594)
!1670 = !DILocation(line: 0, scope: !1665, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 238, column: 3, scope: !1578)
!1672 = !DILocation(line: 103, column: 10, scope: !1665, inlinedAt: !1671)
!1673 = !DILocation(line: 240, column: 3, scope: !1578)
!1674 = !DILocation(line: 241, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1578, file: !324, line: 241, column: 7)
!1676 = !DILocation(line: 241, column: 7, scope: !1578)
!1677 = !DILocation(line: 242, column: 5, scope: !1675)
!1678 = !DILocation(line: 243, column: 1, scope: !1578)
!1679 = !DISubprogram(name: "strerror_r", scope: !1680, file: !1680, line: 444, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1680 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!68, !71, !68, !73}
!1683 = !DISubprogram(name: "fcntl", scope: !1684, file: !1684, line: 149, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1684 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!71, !71, !71, null}
!1687 = distinct !DISubprogram(name: "error", scope: !324, file: !324, line: 285, type: !1688, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !71, !71, !76, null}
!1690 = !{!1691, !1692, !1693, !1694}
!1691 = !DILocalVariable(name: "status", arg: 1, scope: !1687, file: !324, line: 285, type: !71)
!1692 = !DILocalVariable(name: "errnum", arg: 2, scope: !1687, file: !324, line: 285, type: !71)
!1693 = !DILocalVariable(name: "message", arg: 3, scope: !1687, file: !324, line: 285, type: !76)
!1694 = !DILocalVariable(name: "ap", scope: !1687, file: !324, line: 287, type: !332)
!1695 = !DILocation(line: 0, scope: !1687)
!1696 = !DILocation(line: 287, column: 3, scope: !1687)
!1697 = !DILocation(line: 287, column: 11, scope: !1687)
!1698 = !DILocation(line: 288, column: 3, scope: !1687)
!1699 = !DILocation(line: 289, column: 3, scope: !1687)
!1700 = !DILocation(line: 290, column: 3, scope: !1687)
!1701 = !DILocation(line: 291, column: 1, scope: !1687)
!1702 = !DILocation(line: 0, scope: !329)
!1703 = !DILocation(line: 298, column: 1, scope: !329)
!1704 = !DILocation(line: 302, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !329, file: !324, line: 302, column: 7)
!1706 = !DILocation(line: 302, column: 7, scope: !329)
!1707 = !DILocation(line: 307, column: 11, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !324, line: 307, column: 11)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !324, line: 303, column: 5)
!1710 = !DILocation(line: 307, column: 27, scope: !1708)
!1711 = !DILocation(line: 308, column: 11, scope: !1708)
!1712 = !DILocation(line: 308, column: 28, scope: !1708)
!1713 = !DILocation(line: 308, column: 25, scope: !1708)
!1714 = !DILocation(line: 309, column: 15, scope: !1708)
!1715 = !DILocation(line: 309, column: 33, scope: !1708)
!1716 = !DILocation(line: 310, column: 19, scope: !1708)
!1717 = !DILocation(line: 311, column: 22, scope: !1708)
!1718 = !DILocation(line: 311, column: 56, scope: !1708)
!1719 = !DILocation(line: 307, column: 11, scope: !1709)
!1720 = !DILocation(line: 316, column: 21, scope: !1709)
!1721 = !DILocation(line: 317, column: 23, scope: !1709)
!1722 = !DILocation(line: 318, column: 5, scope: !1709)
!1723 = !DILocation(line: 327, column: 3, scope: !329)
!1724 = !DILocation(line: 331, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !329, file: !324, line: 331, column: 7)
!1726 = !DILocation(line: 331, column: 7, scope: !329)
!1727 = !DILocation(line: 332, column: 5, scope: !1725)
!1728 = !DILocation(line: 338, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !324, line: 334, column: 5)
!1730 = !DILocation(line: 346, column: 3, scope: !329)
!1731 = !DILocation(line: 350, column: 3, scope: !329)
!1732 = !DILocation(line: 356, column: 1, scope: !329)
!1733 = distinct !DISubprogram(name: "error_at_line", scope: !324, file: !324, line: 359, type: !1734, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !71, !71, !76, !7, !76, null}
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742}
!1737 = !DILocalVariable(name: "status", arg: 1, scope: !1733, file: !324, line: 359, type: !71)
!1738 = !DILocalVariable(name: "errnum", arg: 2, scope: !1733, file: !324, line: 359, type: !71)
!1739 = !DILocalVariable(name: "file_name", arg: 3, scope: !1733, file: !324, line: 359, type: !76)
!1740 = !DILocalVariable(name: "line_number", arg: 4, scope: !1733, file: !324, line: 360, type: !7)
!1741 = !DILocalVariable(name: "message", arg: 5, scope: !1733, file: !324, line: 360, type: !76)
!1742 = !DILocalVariable(name: "ap", scope: !1733, file: !324, line: 362, type: !332)
!1743 = !DILocation(line: 0, scope: !1733)
!1744 = !DILocation(line: 362, column: 3, scope: !1733)
!1745 = !DILocation(line: 362, column: 11, scope: !1733)
!1746 = !DILocation(line: 363, column: 3, scope: !1733)
!1747 = !DILocation(line: 364, column: 3, scope: !1733)
!1748 = !DILocation(line: 366, column: 3, scope: !1733)
!1749 = !DILocation(line: 367, column: 1, scope: !1733)
!1750 = distinct !DISubprogram(name: "fdadvise", scope: !503, file: !503, line: 25, type: !1751, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !1755)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !71, !1753, !1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !333, line: 63, baseType: !199)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !53, line: 51, baseType: !52)
!1755 = !{!1756, !1757, !1758, !1759}
!1756 = !DILocalVariable(name: "fd", arg: 1, scope: !1750, file: !503, line: 25, type: !71)
!1757 = !DILocalVariable(name: "offset", arg: 2, scope: !1750, file: !503, line: 25, type: !1753)
!1758 = !DILocalVariable(name: "len", arg: 3, scope: !1750, file: !503, line: 25, type: !1753)
!1759 = !DILocalVariable(name: "advice", arg: 4, scope: !1750, file: !503, line: 25, type: !1754)
!1760 = !DILocation(line: 0, scope: !1750)
!1761 = !DILocation(line: 28, column: 3, scope: !1750)
!1762 = !DILocation(line: 30, column: 1, scope: !1750)
!1763 = !DISubprogram(name: "posix_fadvise", scope: !1684, file: !1684, line: 273, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!71, !71, !1753, !1753, !71}
!1766 = distinct !DISubprogram(name: "fadvise", scope: !503, file: !503, line: 33, type: !1767, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !1803)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1769, !1754}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1771, file: !177, line: 51, baseType: !71, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1771, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1771, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1771, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1771, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1771, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1771, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1771, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1771, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1771, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1771, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1771, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1771, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1771, file: !177, line: 70, baseType: !1787, size: 64, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1771, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1771, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1771, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1771, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1771, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1771, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1771, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1771, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1771, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1771, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1771, file: !177, line: 93, baseType: !1787, size: 64, offset: 1344)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1771, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1771, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1771, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1771, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!1803 = !{!1804, !1805}
!1804 = !DILocalVariable(name: "fp", arg: 1, scope: !1766, file: !503, line: 33, type: !1769)
!1805 = !DILocalVariable(name: "advice", arg: 2, scope: !1766, file: !503, line: 33, type: !1754)
!1806 = !DILocation(line: 0, scope: !1766)
!1807 = !DILocation(line: 35, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1766, file: !503, line: 35, column: 7)
!1809 = !DILocation(line: 35, column: 7, scope: !1766)
!1810 = !DILocation(line: 36, column: 15, scope: !1808)
!1811 = !DILocation(line: 0, scope: !1750, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 36, column: 5, scope: !1808)
!1813 = !DILocation(line: 28, column: 3, scope: !1750, inlinedAt: !1812)
!1814 = !DILocation(line: 36, column: 5, scope: !1808)
!1815 = !DILocation(line: 37, column: 1, scope: !1766)
!1816 = !DISubprogram(name: "fileno", scope: !333, file: !333, line: 809, type: !1817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!71, !1769}
!1819 = distinct !DISubprogram(name: "rpl_fclose", scope: !506, file: !506, line: 58, type: !1820, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !1856)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!71, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1824, file: !177, line: 51, baseType: !71, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1824, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1824, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1824, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1824, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1824, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1824, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1824, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1824, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1824, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1824, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1824, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1824, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1824, file: !177, line: 70, baseType: !1840, size: 64, offset: 832)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1824, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1824, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1824, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1824, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1824, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1824, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1824, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1824, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1824, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1824, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1824, file: !177, line: 93, baseType: !1840, size: 64, offset: 1344)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1824, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1824, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1824, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1824, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!1856 = !{!1857, !1858, !1859, !1860}
!1857 = !DILocalVariable(name: "fp", arg: 1, scope: !1819, file: !506, line: 58, type: !1822)
!1858 = !DILocalVariable(name: "saved_errno", scope: !1819, file: !506, line: 60, type: !71)
!1859 = !DILocalVariable(name: "fd", scope: !1819, file: !506, line: 63, type: !71)
!1860 = !DILocalVariable(name: "result", scope: !1819, file: !506, line: 74, type: !71)
!1861 = !DILocation(line: 0, scope: !1819)
!1862 = !DILocation(line: 63, column: 12, scope: !1819)
!1863 = !DILocation(line: 64, column: 10, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1819, file: !506, line: 64, column: 7)
!1865 = !DILocation(line: 64, column: 7, scope: !1819)
!1866 = !DILocation(line: 65, column: 12, scope: !1864)
!1867 = !DILocation(line: 65, column: 5, scope: !1864)
!1868 = !DILocation(line: 70, column: 9, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1819, file: !506, line: 70, column: 7)
!1870 = !DILocation(line: 70, column: 23, scope: !1869)
!1871 = !DILocation(line: 70, column: 33, scope: !1869)
!1872 = !DILocation(line: 70, column: 26, scope: !1869)
!1873 = !DILocation(line: 70, column: 59, scope: !1869)
!1874 = !DILocation(line: 71, column: 7, scope: !1869)
!1875 = !DILocation(line: 71, column: 10, scope: !1869)
!1876 = !DILocation(line: 70, column: 7, scope: !1819)
!1877 = !DILocation(line: 100, column: 12, scope: !1819)
!1878 = !DILocation(line: 105, column: 7, scope: !1819)
!1879 = !DILocation(line: 72, column: 19, scope: !1869)
!1880 = !DILocation(line: 105, column: 19, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1819, file: !506, line: 105, column: 7)
!1882 = !DILocation(line: 107, column: 13, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1881, file: !506, line: 106, column: 5)
!1884 = !DILocation(line: 109, column: 5, scope: !1883)
!1885 = !DILocation(line: 112, column: 1, scope: !1819)
!1886 = !DISubprogram(name: "fclose", scope: !333, file: !333, line: 178, type: !1820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1887 = !DISubprogram(name: "lseek", scope: !1888, file: !1888, line: 339, type: !1889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1888 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!199, !71, !199, !71}
!1891 = distinct !DISubprogram(name: "rpl_fflush", scope: !508, file: !508, line: 130, type: !1892, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1928)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!71, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1896, file: !177, line: 51, baseType: !71, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1896, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1896, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1896, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1896, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1896, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1896, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1896, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1896, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1896, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1896, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1896, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1896, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1896, file: !177, line: 70, baseType: !1912, size: 64, offset: 832)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1896, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1896, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1896, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1896, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1896, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1896, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1896, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1896, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1896, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1896, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1896, file: !177, line: 93, baseType: !1912, size: 64, offset: 1344)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1896, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1896, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1896, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1896, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!1928 = !{!1929}
!1929 = !DILocalVariable(name: "stream", arg: 1, scope: !1891, file: !508, line: 130, type: !1894)
!1930 = !DILocation(line: 0, scope: !1891)
!1931 = !DILocation(line: 151, column: 14, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1891, file: !508, line: 151, column: 7)
!1933 = !DILocation(line: 151, column: 22, scope: !1932)
!1934 = !DILocation(line: 151, column: 27, scope: !1932)
!1935 = !DILocation(line: 151, column: 7, scope: !1891)
!1936 = !DILocation(line: 152, column: 12, scope: !1932)
!1937 = !DILocation(line: 152, column: 5, scope: !1932)
!1938 = !DILocalVariable(name: "fp", arg: 1, scope: !1939, file: !508, line: 42, type: !1894)
!1939 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !508, file: !508, line: 42, type: !1940, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1894}
!1942 = !{!1938}
!1943 = !DILocation(line: 0, scope: !1939, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 157, column: 3, scope: !1891)
!1945 = !DILocation(line: 44, column: 12, scope: !1946, inlinedAt: !1944)
!1946 = distinct !DILexicalBlock(scope: !1939, file: !508, line: 44, column: 7)
!1947 = !DILocation(line: 44, column: 19, scope: !1946, inlinedAt: !1944)
!1948 = !DILocation(line: 44, column: 7, scope: !1939, inlinedAt: !1944)
!1949 = !DILocation(line: 46, column: 5, scope: !1946, inlinedAt: !1944)
!1950 = !DILocation(line: 159, column: 10, scope: !1891)
!1951 = !DILocation(line: 159, column: 3, scope: !1891)
!1952 = !DILocation(line: 236, column: 1, scope: !1891)
!1953 = !DISubprogram(name: "fflush", scope: !333, file: !333, line: 230, type: !1892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!1954 = distinct !DISubprogram(name: "fpurge", scope: !511, file: !511, line: 32, type: !1955, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !510, retainedNodes: !1991)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!71, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !1959)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1959, file: !177, line: 51, baseType: !71, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1959, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1959, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1959, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1959, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1959, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1959, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1959, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1959, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1959, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1959, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1959, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1959, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1959, file: !177, line: 70, baseType: !1975, size: 64, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1959, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1959, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1959, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1959, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1959, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1959, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1959, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1959, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1959, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1959, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1959, file: !177, line: 93, baseType: !1975, size: 64, offset: 1344)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1959, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1959, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1959, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1959, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!1991 = !{!1992}
!1992 = !DILocalVariable(name: "fp", arg: 1, scope: !1954, file: !511, line: 32, type: !1957)
!1993 = !DILocation(line: 0, scope: !1954)
!1994 = !DILocation(line: 36, column: 3, scope: !1954)
!1995 = !DILocation(line: 38, column: 3, scope: !1954)
!1996 = distinct !DISubprogram(name: "rpl_fseeko", scope: !513, file: !513, line: 28, type: !1997, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2033)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!71, !1999, !1753, !71}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2001, file: !177, line: 51, baseType: !71, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2001, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2001, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2001, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2001, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2001, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2001, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2001, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2001, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2001, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2001, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2001, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2001, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2001, file: !177, line: 70, baseType: !2017, size: 64, offset: 832)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2001, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2001, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2001, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2001, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2001, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2001, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2001, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2001, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2001, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2001, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2001, file: !177, line: 93, baseType: !2017, size: 64, offset: 1344)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2001, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2001, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2001, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2001, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!2033 = !{!2034, !2035, !2036, !2037}
!2034 = !DILocalVariable(name: "fp", arg: 1, scope: !1996, file: !513, line: 28, type: !1999)
!2035 = !DILocalVariable(name: "offset", arg: 2, scope: !1996, file: !513, line: 28, type: !1753)
!2036 = !DILocalVariable(name: "whence", arg: 3, scope: !1996, file: !513, line: 28, type: !71)
!2037 = !DILocalVariable(name: "pos", scope: !2038, file: !513, line: 123, type: !1753)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !513, line: 119, column: 5)
!2039 = distinct !DILexicalBlock(scope: !1996, file: !513, line: 55, column: 7)
!2040 = !DILocation(line: 0, scope: !1996)
!2041 = !DILocation(line: 55, column: 12, scope: !2039)
!2042 = !{!1320, !610, i64 16}
!2043 = !DILocation(line: 55, column: 33, scope: !2039)
!2044 = !{!1320, !610, i64 8}
!2045 = !DILocation(line: 55, column: 25, scope: !2039)
!2046 = !DILocation(line: 56, column: 7, scope: !2039)
!2047 = !DILocation(line: 56, column: 15, scope: !2039)
!2048 = !DILocation(line: 56, column: 37, scope: !2039)
!2049 = !{!1320, !610, i64 32}
!2050 = !DILocation(line: 56, column: 29, scope: !2039)
!2051 = !DILocation(line: 57, column: 7, scope: !2039)
!2052 = !DILocation(line: 57, column: 15, scope: !2039)
!2053 = !{!1320, !610, i64 72}
!2054 = !DILocation(line: 57, column: 29, scope: !2039)
!2055 = !DILocation(line: 55, column: 7, scope: !1996)
!2056 = !DILocation(line: 123, column: 26, scope: !2038)
!2057 = !DILocation(line: 123, column: 19, scope: !2038)
!2058 = !DILocation(line: 0, scope: !2038)
!2059 = !DILocation(line: 124, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2038, file: !513, line: 124, column: 11)
!2061 = !DILocation(line: 124, column: 11, scope: !2038)
!2062 = !DILocation(line: 135, column: 12, scope: !2038)
!2063 = !DILocation(line: 135, column: 19, scope: !2038)
!2064 = !DILocation(line: 136, column: 12, scope: !2038)
!2065 = !DILocation(line: 136, column: 20, scope: !2038)
!2066 = !{!1320, !884, i64 144}
!2067 = !DILocation(line: 167, column: 7, scope: !2038)
!2068 = !DILocation(line: 169, column: 10, scope: !1996)
!2069 = !DILocation(line: 169, column: 3, scope: !1996)
!2070 = !DILocation(line: 170, column: 1, scope: !1996)
!2071 = !DISubprogram(name: "fseeko", scope: !333, file: !333, line: 736, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!71, !1999, !199, !71}
!2074 = distinct !DISubprogram(name: "getprogname", scope: !515, file: !515, line: 54, type: !2075, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !618)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!76}
!2077 = !DILocation(line: 58, column: 10, scope: !2074)
!2078 = !DILocation(line: 58, column: 3, scope: !2074)
!2079 = distinct !DISubprogram(name: "initbuffer", scope: !517, file: !517, line: 37, type: !2080, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2088)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !131, line: 32, size: 192, elements: !2084)
!2084 = !{!2085, !2086, !2087}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2083, file: !131, line: 34, baseType: !134, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2083, file: !131, line: 35, baseType: !134, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2083, file: !131, line: 36, baseType: !68, size: 64, offset: 128)
!2088 = !{!2089}
!2089 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2079, file: !517, line: 37, type: !2082)
!2090 = !DILocation(line: 0, scope: !2079)
!2091 = !DILocation(line: 39, column: 11, scope: !2079)
!2092 = !DILocalVariable(name: "__dest", arg: 1, scope: !2093, file: !1019, line: 57, type: !70)
!2093 = distinct !DISubprogram(name: "memset", scope: !1019, file: !1019, line: 57, type: !1100, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2094)
!2094 = !{!2092, !2095, !2096}
!2095 = !DILocalVariable(name: "__ch", arg: 2, scope: !2093, file: !1019, line: 57, type: !71)
!2096 = !DILocalVariable(name: "__len", arg: 3, scope: !2093, file: !1019, line: 57, type: !73)
!2097 = !DILocation(line: 0, scope: !2093, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 39, column: 3, scope: !2079)
!2099 = !DILocation(line: 59, column: 10, scope: !2093, inlinedAt: !2098)
!2100 = !DILocation(line: 40, column: 1, scope: !2079)
!2101 = distinct !DISubprogram(name: "readlinebuffer", scope: !517, file: !517, line: 43, type: !2102, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2138)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!2082, !2082, !2104}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2106, file: !177, line: 51, baseType: !71, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2106, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2106, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2106, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2106, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2106, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2106, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2106, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2106, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2106, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2106, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2106, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2106, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2106, file: !177, line: 70, baseType: !2122, size: 64, offset: 832)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2106, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2106, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2106, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2106, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2106, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2106, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2106, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2106, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2106, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2106, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2106, file: !177, line: 93, baseType: !2122, size: 64, offset: 1344)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2106, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2106, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2106, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2106, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!2138 = !{!2139, !2140}
!2139 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2101, file: !517, line: 43, type: !2082)
!2140 = !DILocalVariable(name: "stream", arg: 2, scope: !2101, file: !517, line: 43, type: !2104)
!2141 = !DILocation(line: 0, scope: !2101)
!2142 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2143, file: !517, line: 59, type: !2082)
!2143 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !517, file: !517, line: 59, type: !2144, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2082, !2082, !2104, !69}
!2146 = !{!2142, !2147, !2148, !2149, !2150, !2151, !2152, !2153}
!2147 = !DILocalVariable(name: "stream", arg: 2, scope: !2143, file: !517, line: 59, type: !2104)
!2148 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2143, file: !517, line: 60, type: !69)
!2149 = !DILocalVariable(name: "buffer", scope: !2143, file: !517, line: 65, type: !68)
!2150 = !DILocalVariable(name: "p", scope: !2143, file: !517, line: 66, type: !68)
!2151 = !DILocalVariable(name: "end", scope: !2143, file: !517, line: 67, type: !68)
!2152 = !DILocalVariable(name: "c", scope: !2143, file: !517, line: 68, type: !71)
!2153 = !DILocalVariable(name: "oldsize", scope: !2154, file: !517, line: 83, type: !134)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !517, line: 82, column: 9)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !517, line: 81, column: 11)
!2156 = distinct !DILexicalBlock(scope: !2143, file: !517, line: 71, column: 5)
!2157 = !DILocation(line: 0, scope: !2143, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 45, column: 10, scope: !2101)
!2159 = !DILocalVariable(name: "__stream", arg: 1, scope: !2160, file: !1312, line: 128, type: !2104)
!2160 = distinct !DISubprogram(name: "feof_unlocked", scope: !1312, file: !1312, line: 128, type: !2161, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!71, !2104}
!2163 = !{!2159}
!2164 = !DILocation(line: 0, scope: !2160, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 62, column: 7, scope: !2166, inlinedAt: !2158)
!2166 = distinct !DILexicalBlock(scope: !2143, file: !517, line: 62, column: 7)
!2167 = !DILocation(line: 130, column: 10, scope: !2160, inlinedAt: !2165)
!2168 = !DILocation(line: 62, column: 7, scope: !2166, inlinedAt: !2158)
!2169 = !DILocation(line: 62, column: 7, scope: !2143, inlinedAt: !2158)
!2170 = !DILocation(line: 65, column: 30, scope: !2143, inlinedAt: !2158)
!2171 = !DILocation(line: 67, column: 36, scope: !2143, inlinedAt: !2158)
!2172 = !{!1243, !884, i64 0}
!2173 = !DILocation(line: 67, column: 22, scope: !2143, inlinedAt: !2158)
!2174 = !DILocation(line: 70, column: 3, scope: !2143, inlinedAt: !2158)
!2175 = !DILocalVariable(name: "__fp", arg: 1, scope: !2176, file: !1312, line: 66, type: !2104)
!2176 = distinct !DISubprogram(name: "getc_unlocked", scope: !1312, file: !1312, line: 66, type: !2161, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2177)
!2177 = !{!2175}
!2178 = !DILocation(line: 0, scope: !2176, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 72, column: 11, scope: !2156, inlinedAt: !2158)
!2180 = !DILocation(line: 68, column: 10, scope: !2176, inlinedAt: !2179)
!2181 = !DILocation(line: 73, column: 11, scope: !2156, inlinedAt: !2158)
!2182 = !DILocation(line: 73, column: 13, scope: !2183, inlinedAt: !2158)
!2183 = distinct !DILexicalBlock(scope: !2156, file: !517, line: 73, column: 11)
!2184 = !DILocation(line: 75, column: 17, scope: !2185, inlinedAt: !2158)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !517, line: 75, column: 15)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !517, line: 74, column: 9)
!2187 = !DILocation(line: 75, column: 27, scope: !2185, inlinedAt: !2158)
!2188 = !DILocalVariable(name: "__stream", arg: 1, scope: !2189, file: !1312, line: 135, type: !2104)
!2189 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1312, file: !1312, line: 135, type: !2161, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2190)
!2190 = !{!2188}
!2191 = !DILocation(line: 0, scope: !2189, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 75, column: 30, scope: !2185, inlinedAt: !2158)
!2193 = !DILocation(line: 137, column: 10, scope: !2189, inlinedAt: !2192)
!2194 = !DILocation(line: 75, column: 30, scope: !2185, inlinedAt: !2158)
!2195 = !DILocation(line: 75, column: 15, scope: !2186, inlinedAt: !2158)
!2196 = !DILocation(line: 77, column: 15, scope: !2197, inlinedAt: !2158)
!2197 = distinct !DILexicalBlock(scope: !2186, file: !517, line: 77, column: 15)
!2198 = !DILocation(line: 77, column: 21, scope: !2197, inlinedAt: !2158)
!2199 = !DILocation(line: 77, column: 15, scope: !2186, inlinedAt: !2158)
!2200 = !DILocation(line: 0, scope: !2156, inlinedAt: !2158)
!2201 = !DILocation(line: 81, column: 13, scope: !2155, inlinedAt: !2158)
!2202 = !DILocation(line: 81, column: 11, scope: !2156, inlinedAt: !2158)
!2203 = !DILocation(line: 83, column: 39, scope: !2154, inlinedAt: !2158)
!2204 = !DILocation(line: 0, scope: !2154, inlinedAt: !2158)
!2205 = !DILocation(line: 84, column: 20, scope: !2154, inlinedAt: !2158)
!2206 = !DILocation(line: 85, column: 22, scope: !2154, inlinedAt: !2158)
!2207 = !DILocation(line: 86, column: 30, scope: !2154, inlinedAt: !2158)
!2208 = !DILocation(line: 87, column: 38, scope: !2154, inlinedAt: !2158)
!2209 = !DILocation(line: 87, column: 24, scope: !2154, inlinedAt: !2158)
!2210 = !DILocation(line: 88, column: 9, scope: !2154, inlinedAt: !2158)
!2211 = !DILocation(line: 89, column: 14, scope: !2156, inlinedAt: !2158)
!2212 = !DILocation(line: 89, column: 9, scope: !2156, inlinedAt: !2158)
!2213 = !DILocation(line: 89, column: 12, scope: !2156, inlinedAt: !2158)
!2214 = !DILocation(line: 91, column: 12, scope: !2143, inlinedAt: !2158)
!2215 = !DILocation(line: 90, column: 5, scope: !2156, inlinedAt: !2158)
!2216 = distinct !{!2216, !2174, !2217, !680}
!2217 = !DILocation(line: 91, column: 24, scope: !2143, inlinedAt: !2158)
!2218 = !DILocation(line: 93, column: 26, scope: !2143, inlinedAt: !2158)
!2219 = !DILocation(line: 93, column: 15, scope: !2143, inlinedAt: !2158)
!2220 = !DILocation(line: 93, column: 22, scope: !2143, inlinedAt: !2158)
!2221 = !DILocation(line: 94, column: 3, scope: !2143, inlinedAt: !2158)
!2222 = !DILocation(line: 45, column: 3, scope: !2101)
!2223 = !DILocation(line: 0, scope: !2143)
!2224 = !DILocation(line: 0, scope: !2160, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 62, column: 7, scope: !2166)
!2226 = !DILocation(line: 130, column: 10, scope: !2160, inlinedAt: !2225)
!2227 = !DILocation(line: 62, column: 7, scope: !2166)
!2228 = !DILocation(line: 62, column: 7, scope: !2143)
!2229 = !DILocation(line: 65, column: 30, scope: !2143)
!2230 = !DILocation(line: 67, column: 36, scope: !2143)
!2231 = !DILocation(line: 67, column: 22, scope: !2143)
!2232 = !DILocation(line: 70, column: 3, scope: !2143)
!2233 = !DILocation(line: 0, scope: !2176, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 72, column: 11, scope: !2156)
!2235 = !DILocation(line: 68, column: 10, scope: !2176, inlinedAt: !2234)
!2236 = !DILocation(line: 73, column: 11, scope: !2156)
!2237 = !DILocation(line: 73, column: 13, scope: !2183)
!2238 = !DILocation(line: 75, column: 17, scope: !2185)
!2239 = !DILocation(line: 75, column: 27, scope: !2185)
!2240 = !DILocation(line: 0, scope: !2189, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 75, column: 30, scope: !2185)
!2242 = !DILocation(line: 137, column: 10, scope: !2189, inlinedAt: !2241)
!2243 = !DILocation(line: 75, column: 30, scope: !2185)
!2244 = !DILocation(line: 75, column: 15, scope: !2186)
!2245 = !DILocation(line: 77, column: 15, scope: !2197)
!2246 = !DILocation(line: 77, column: 21, scope: !2197)
!2247 = !DILocation(line: 77, column: 15, scope: !2186)
!2248 = !DILocation(line: 0, scope: !2156)
!2249 = !DILocation(line: 81, column: 13, scope: !2155)
!2250 = !DILocation(line: 81, column: 11, scope: !2156)
!2251 = !DILocation(line: 83, column: 39, scope: !2154)
!2252 = !DILocation(line: 0, scope: !2154)
!2253 = !DILocation(line: 84, column: 20, scope: !2154)
!2254 = !DILocation(line: 85, column: 22, scope: !2154)
!2255 = !DILocation(line: 86, column: 30, scope: !2154)
!2256 = !DILocation(line: 87, column: 38, scope: !2154)
!2257 = !DILocation(line: 87, column: 24, scope: !2154)
!2258 = !DILocation(line: 88, column: 9, scope: !2154)
!2259 = !DILocation(line: 89, column: 14, scope: !2156)
!2260 = !DILocation(line: 89, column: 9, scope: !2156)
!2261 = !DILocation(line: 89, column: 12, scope: !2156)
!2262 = !DILocation(line: 91, column: 12, scope: !2143)
!2263 = !DILocation(line: 90, column: 5, scope: !2156)
!2264 = distinct !{!2264, !2232, !2265, !680}
!2265 = !DILocation(line: 91, column: 24, scope: !2143)
!2266 = !DILocation(line: 93, column: 26, scope: !2143)
!2267 = !DILocation(line: 93, column: 15, scope: !2143)
!2268 = !DILocation(line: 93, column: 22, scope: !2143)
!2269 = !DILocation(line: 94, column: 3, scope: !2143)
!2270 = !DILocation(line: 95, column: 1, scope: !2143)
!2271 = distinct !DISubprogram(name: "freebuffer", scope: !517, file: !517, line: 100, type: !2080, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2272)
!2272 = !{!2273}
!2273 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2271, file: !517, line: 100, type: !2082)
!2274 = !DILocation(line: 0, scope: !2271)
!2275 = !DILocation(line: 102, column: 21, scope: !2271)
!2276 = !DILocation(line: 102, column: 3, scope: !2271)
!2277 = !DILocation(line: 103, column: 1, scope: !2271)
!2278 = distinct !DISubprogram(name: "set_program_name", scope: !363, file: !363, line: 37, type: !641, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2279)
!2279 = !{!2280, !2281, !2282}
!2280 = !DILocalVariable(name: "argv0", arg: 1, scope: !2278, file: !363, line: 37, type: !76)
!2281 = !DILocalVariable(name: "slash", scope: !2278, file: !363, line: 44, type: !76)
!2282 = !DILocalVariable(name: "base", scope: !2278, file: !363, line: 45, type: !76)
!2283 = !DILocation(line: 0, scope: !2278)
!2284 = !DILocation(line: 44, column: 23, scope: !2278)
!2285 = !DILocation(line: 45, column: 22, scope: !2278)
!2286 = !DILocation(line: 46, column: 17, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2278, file: !363, line: 46, column: 7)
!2288 = !DILocation(line: 46, column: 9, scope: !2287)
!2289 = !DILocation(line: 46, column: 25, scope: !2287)
!2290 = !DILocation(line: 46, column: 40, scope: !2287)
!2291 = !DILocalVariable(name: "__s1", arg: 1, scope: !2292, file: !664, line: 974, type: !831)
!2292 = distinct !DISubprogram(name: "memeq", scope: !664, file: !664, line: 974, type: !1255, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2293)
!2293 = !{!2291, !2294, !2295}
!2294 = !DILocalVariable(name: "__s2", arg: 2, scope: !2292, file: !664, line: 974, type: !831)
!2295 = !DILocalVariable(name: "__n", arg: 3, scope: !2292, file: !664, line: 974, type: !73)
!2296 = !DILocation(line: 0, scope: !2292, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 46, column: 28, scope: !2287)
!2298 = !DILocation(line: 976, column: 11, scope: !2292, inlinedAt: !2297)
!2299 = !DILocation(line: 976, column: 10, scope: !2292, inlinedAt: !2297)
!2300 = !DILocation(line: 46, column: 7, scope: !2278)
!2301 = !DILocation(line: 49, column: 11, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !363, line: 49, column: 11)
!2303 = distinct !DILexicalBlock(scope: !2287, file: !363, line: 47, column: 5)
!2304 = !DILocation(line: 49, column: 36, scope: !2302)
!2305 = !DILocation(line: 49, column: 11, scope: !2303)
!2306 = !DILocation(line: 65, column: 16, scope: !2278)
!2307 = !DILocation(line: 71, column: 27, scope: !2278)
!2308 = !DILocation(line: 74, column: 33, scope: !2278)
!2309 = !DILocation(line: 76, column: 1, scope: !2278)
!2310 = !DILocation(line: 0, scope: !368)
!2311 = !DILocation(line: 40, column: 29, scope: !368)
!2312 = !DILocation(line: 41, column: 19, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !368, file: !369, line: 41, column: 7)
!2314 = !DILocation(line: 41, column: 7, scope: !368)
!2315 = !DILocation(line: 47, column: 3, scope: !368)
!2316 = !DILocation(line: 48, column: 3, scope: !368)
!2317 = !DILocation(line: 48, column: 13, scope: !368)
!2318 = !DILocalVariable(name: "ps", arg: 1, scope: !2319, file: !2320, line: 1135, type: !2323)
!2319 = distinct !DISubprogram(name: "mbszero", scope: !2320, file: !2320, line: 1135, type: !2321, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !2324)
!2320 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2324 = !{!2318}
!2325 = !DILocation(line: 0, scope: !2319, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 48, column: 18, scope: !368)
!2327 = !DILocalVariable(name: "__dest", arg: 1, scope: !2328, file: !1019, line: 57, type: !70)
!2328 = distinct !DISubprogram(name: "memset", scope: !1019, file: !1019, line: 57, type: !1100, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !2329)
!2329 = !{!2327, !2330, !2331}
!2330 = !DILocalVariable(name: "__ch", arg: 2, scope: !2328, file: !1019, line: 57, type: !71)
!2331 = !DILocalVariable(name: "__len", arg: 3, scope: !2328, file: !1019, line: 57, type: !73)
!2332 = !DILocation(line: 0, scope: !2328, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 1137, column: 3, scope: !2319, inlinedAt: !2326)
!2334 = !DILocation(line: 59, column: 10, scope: !2328, inlinedAt: !2333)
!2335 = !DILocation(line: 49, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !368, file: !369, line: 49, column: 7)
!2337 = !DILocation(line: 49, column: 39, scope: !2336)
!2338 = !DILocation(line: 49, column: 44, scope: !2336)
!2339 = !DILocation(line: 54, column: 1, scope: !368)
!2340 = distinct !DISubprogram(name: "clone_quoting_options", scope: !405, file: !405, line: 113, type: !2341, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2344)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!2343, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!2344 = !{!2345, !2346, !2347}
!2345 = !DILocalVariable(name: "o", arg: 1, scope: !2340, file: !405, line: 113, type: !2343)
!2346 = !DILocalVariable(name: "saved_errno", scope: !2340, file: !405, line: 115, type: !71)
!2347 = !DILocalVariable(name: "p", scope: !2340, file: !405, line: 116, type: !2343)
!2348 = !DILocation(line: 0, scope: !2340)
!2349 = !DILocation(line: 115, column: 21, scope: !2340)
!2350 = !DILocation(line: 116, column: 40, scope: !2340)
!2351 = !DILocation(line: 116, column: 31, scope: !2340)
!2352 = !DILocation(line: 118, column: 9, scope: !2340)
!2353 = !DILocation(line: 119, column: 3, scope: !2340)
!2354 = distinct !DISubprogram(name: "get_quoting_style", scope: !405, file: !405, line: 124, type: !2355, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2359)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!38, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!2359 = !{!2360}
!2360 = !DILocalVariable(name: "o", arg: 1, scope: !2354, file: !405, line: 124, type: !2357)
!2361 = !DILocation(line: 0, scope: !2354)
!2362 = !DILocation(line: 126, column: 11, scope: !2354)
!2363 = !DILocation(line: 126, column: 46, scope: !2354)
!2364 = !{!2365, !611, i64 0}
!2365 = !{!"quoting_options", !611, i64 0, !714, i64 4, !611, i64 8, !610, i64 40, !610, i64 48}
!2366 = !DILocation(line: 126, column: 3, scope: !2354)
!2367 = distinct !DISubprogram(name: "set_quoting_style", scope: !405, file: !405, line: 132, type: !2368, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2343, !38}
!2370 = !{!2371, !2372}
!2371 = !DILocalVariable(name: "o", arg: 1, scope: !2367, file: !405, line: 132, type: !2343)
!2372 = !DILocalVariable(name: "s", arg: 2, scope: !2367, file: !405, line: 132, type: !38)
!2373 = !DILocation(line: 0, scope: !2367)
!2374 = !DILocation(line: 134, column: 4, scope: !2367)
!2375 = !DILocation(line: 134, column: 39, scope: !2367)
!2376 = !DILocation(line: 134, column: 45, scope: !2367)
!2377 = !DILocation(line: 135, column: 1, scope: !2367)
!2378 = distinct !DISubprogram(name: "set_char_quoting", scope: !405, file: !405, line: 143, type: !2379, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!71, !2343, !69, !71}
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2388, !2389}
!2382 = !DILocalVariable(name: "o", arg: 1, scope: !2378, file: !405, line: 143, type: !2343)
!2383 = !DILocalVariable(name: "c", arg: 2, scope: !2378, file: !405, line: 143, type: !69)
!2384 = !DILocalVariable(name: "i", arg: 3, scope: !2378, file: !405, line: 143, type: !71)
!2385 = !DILocalVariable(name: "uc", scope: !2378, file: !405, line: 145, type: !78)
!2386 = !DILocalVariable(name: "p", scope: !2378, file: !405, line: 146, type: !2387)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2388 = !DILocalVariable(name: "shift", scope: !2378, file: !405, line: 148, type: !71)
!2389 = !DILocalVariable(name: "r", scope: !2378, file: !405, line: 149, type: !7)
!2390 = !DILocation(line: 0, scope: !2378)
!2391 = !DILocation(line: 147, column: 6, scope: !2378)
!2392 = !DILocation(line: 147, column: 62, scope: !2378)
!2393 = !DILocation(line: 147, column: 57, scope: !2378)
!2394 = !DILocation(line: 148, column: 15, scope: !2378)
!2395 = !DILocation(line: 149, column: 21, scope: !2378)
!2396 = !DILocation(line: 149, column: 24, scope: !2378)
!2397 = !DILocation(line: 149, column: 34, scope: !2378)
!2398 = !DILocation(line: 150, column: 13, scope: !2378)
!2399 = !DILocation(line: 150, column: 19, scope: !2378)
!2400 = !DILocation(line: 150, column: 24, scope: !2378)
!2401 = !DILocation(line: 150, column: 6, scope: !2378)
!2402 = !DILocation(line: 151, column: 3, scope: !2378)
!2403 = distinct !DISubprogram(name: "set_quoting_flags", scope: !405, file: !405, line: 159, type: !2404, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!71, !2343, !71}
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "o", arg: 1, scope: !2403, file: !405, line: 159, type: !2343)
!2408 = !DILocalVariable(name: "i", arg: 2, scope: !2403, file: !405, line: 159, type: !71)
!2409 = !DILocalVariable(name: "r", scope: !2403, file: !405, line: 163, type: !71)
!2410 = !DILocation(line: 0, scope: !2403)
!2411 = !DILocation(line: 161, column: 8, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2403, file: !405, line: 161, column: 7)
!2413 = !DILocation(line: 161, column: 7, scope: !2403)
!2414 = !DILocation(line: 163, column: 14, scope: !2403)
!2415 = !{!2365, !714, i64 4}
!2416 = !DILocation(line: 164, column: 12, scope: !2403)
!2417 = !DILocation(line: 165, column: 3, scope: !2403)
!2418 = distinct !DISubprogram(name: "set_custom_quoting", scope: !405, file: !405, line: 169, type: !2419, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !2343, !76, !76}
!2421 = !{!2422, !2423, !2424}
!2422 = !DILocalVariable(name: "o", arg: 1, scope: !2418, file: !405, line: 169, type: !2343)
!2423 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2418, file: !405, line: 170, type: !76)
!2424 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2418, file: !405, line: 170, type: !76)
!2425 = !DILocation(line: 0, scope: !2418)
!2426 = !DILocation(line: 172, column: 8, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2418, file: !405, line: 172, column: 7)
!2428 = !DILocation(line: 172, column: 7, scope: !2418)
!2429 = !DILocation(line: 174, column: 6, scope: !2418)
!2430 = !DILocation(line: 174, column: 12, scope: !2418)
!2431 = !DILocation(line: 175, column: 8, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2418, file: !405, line: 175, column: 7)
!2433 = !DILocation(line: 175, column: 19, scope: !2432)
!2434 = !DILocation(line: 176, column: 5, scope: !2432)
!2435 = !DILocation(line: 177, column: 6, scope: !2418)
!2436 = !DILocation(line: 177, column: 17, scope: !2418)
!2437 = !{!2365, !610, i64 40}
!2438 = !DILocation(line: 178, column: 6, scope: !2418)
!2439 = !DILocation(line: 178, column: 18, scope: !2418)
!2440 = !{!2365, !610, i64 48}
!2441 = !DILocation(line: 179, column: 1, scope: !2418)
!2442 = distinct !DISubprogram(name: "quotearg_buffer", scope: !405, file: !405, line: 774, type: !2443, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!73, !68, !73, !76, !73, !2357}
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453}
!2446 = !DILocalVariable(name: "buffer", arg: 1, scope: !2442, file: !405, line: 774, type: !68)
!2447 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2442, file: !405, line: 774, type: !73)
!2448 = !DILocalVariable(name: "arg", arg: 3, scope: !2442, file: !405, line: 775, type: !76)
!2449 = !DILocalVariable(name: "argsize", arg: 4, scope: !2442, file: !405, line: 775, type: !73)
!2450 = !DILocalVariable(name: "o", arg: 5, scope: !2442, file: !405, line: 776, type: !2357)
!2451 = !DILocalVariable(name: "p", scope: !2442, file: !405, line: 778, type: !2357)
!2452 = !DILocalVariable(name: "saved_errno", scope: !2442, file: !405, line: 779, type: !71)
!2453 = !DILocalVariable(name: "r", scope: !2442, file: !405, line: 780, type: !73)
!2454 = !DILocation(line: 0, scope: !2442)
!2455 = !DILocation(line: 778, column: 37, scope: !2442)
!2456 = !DILocation(line: 779, column: 21, scope: !2442)
!2457 = !DILocation(line: 781, column: 43, scope: !2442)
!2458 = !DILocation(line: 781, column: 53, scope: !2442)
!2459 = !DILocation(line: 781, column: 60, scope: !2442)
!2460 = !DILocation(line: 782, column: 43, scope: !2442)
!2461 = !DILocation(line: 782, column: 58, scope: !2442)
!2462 = !DILocation(line: 780, column: 14, scope: !2442)
!2463 = !DILocation(line: 783, column: 9, scope: !2442)
!2464 = !DILocation(line: 784, column: 3, scope: !2442)
!2465 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !405, file: !405, line: 251, type: !2466, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2470)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!73, !68, !73, !76, !73, !38, !71, !2468, !76, !76}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2495, !2497, !2500, !2501, !2502, !2503, !2506, !2507, !2510, !2514, !2515, !2523, !2526, !2527, !2529, !2530, !2531, !2532}
!2471 = !DILocalVariable(name: "buffer", arg: 1, scope: !2465, file: !405, line: 251, type: !68)
!2472 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2465, file: !405, line: 251, type: !73)
!2473 = !DILocalVariable(name: "arg", arg: 3, scope: !2465, file: !405, line: 252, type: !76)
!2474 = !DILocalVariable(name: "argsize", arg: 4, scope: !2465, file: !405, line: 252, type: !73)
!2475 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2465, file: !405, line: 253, type: !38)
!2476 = !DILocalVariable(name: "flags", arg: 6, scope: !2465, file: !405, line: 253, type: !71)
!2477 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2465, file: !405, line: 254, type: !2468)
!2478 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2465, file: !405, line: 255, type: !76)
!2479 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2465, file: !405, line: 256, type: !76)
!2480 = !DILocalVariable(name: "unibyte_locale", scope: !2465, file: !405, line: 258, type: !79)
!2481 = !DILocalVariable(name: "len", scope: !2465, file: !405, line: 260, type: !73)
!2482 = !DILocalVariable(name: "orig_buffersize", scope: !2465, file: !405, line: 261, type: !73)
!2483 = !DILocalVariable(name: "quote_string", scope: !2465, file: !405, line: 262, type: !76)
!2484 = !DILocalVariable(name: "quote_string_len", scope: !2465, file: !405, line: 263, type: !73)
!2485 = !DILocalVariable(name: "backslash_escapes", scope: !2465, file: !405, line: 264, type: !79)
!2486 = !DILocalVariable(name: "elide_outer_quotes", scope: !2465, file: !405, line: 265, type: !79)
!2487 = !DILocalVariable(name: "encountered_single_quote", scope: !2465, file: !405, line: 266, type: !79)
!2488 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2465, file: !405, line: 267, type: !79)
!2489 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2465, file: !405, line: 309, type: !79)
!2490 = !DILocalVariable(name: "lq", scope: !2491, file: !405, line: 361, type: !76)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !405, line: 361, column: 11)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !405, line: 360, column: 13)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !405, line: 333, column: 7)
!2494 = distinct !DILexicalBlock(scope: !2465, file: !405, line: 312, column: 5)
!2495 = !DILocalVariable(name: "i", scope: !2496, file: !405, line: 395, type: !73)
!2496 = distinct !DILexicalBlock(scope: !2465, file: !405, line: 395, column: 3)
!2497 = !DILocalVariable(name: "is_right_quote", scope: !2498, file: !405, line: 397, type: !79)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !405, line: 396, column: 5)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !405, line: 395, column: 3)
!2500 = !DILocalVariable(name: "escaping", scope: !2498, file: !405, line: 398, type: !79)
!2501 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2498, file: !405, line: 399, type: !79)
!2502 = !DILocalVariable(name: "c", scope: !2498, file: !405, line: 417, type: !78)
!2503 = !DILocalVariable(name: "m", scope: !2504, file: !405, line: 598, type: !73)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !405, line: 596, column: 11)
!2505 = distinct !DILexicalBlock(scope: !2498, file: !405, line: 419, column: 9)
!2506 = !DILocalVariable(name: "printable", scope: !2504, file: !405, line: 600, type: !79)
!2507 = !DILocalVariable(name: "mbs", scope: !2508, file: !405, line: 609, type: !445)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !405, line: 608, column: 15)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !405, line: 602, column: 17)
!2510 = !DILocalVariable(name: "w", scope: !2511, file: !405, line: 618, type: !379)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !405, line: 617, column: 19)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !405, line: 616, column: 17)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !405, line: 616, column: 17)
!2514 = !DILocalVariable(name: "bytes", scope: !2511, file: !405, line: 619, type: !73)
!2515 = !DILocalVariable(name: "j", scope: !2516, file: !405, line: 648, type: !73)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !405, line: 648, column: 29)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !405, line: 647, column: 27)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !405, line: 645, column: 29)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !405, line: 636, column: 23)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !405, line: 628, column: 30)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !405, line: 623, column: 30)
!2522 = distinct !DILexicalBlock(scope: !2511, file: !405, line: 621, column: 25)
!2523 = !DILocalVariable(name: "ilim", scope: !2524, file: !405, line: 674, type: !73)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !405, line: 671, column: 15)
!2525 = distinct !DILexicalBlock(scope: !2504, file: !405, line: 670, column: 17)
!2526 = !DILabel(scope: !2465, name: "process_input", file: !405, line: 308)
!2527 = !DILabel(scope: !2528, name: "c_and_shell_escape", file: !405, line: 502)
!2528 = distinct !DILexicalBlock(scope: !2505, file: !405, line: 478, column: 9)
!2529 = !DILabel(scope: !2528, name: "c_escape", file: !405, line: 507)
!2530 = !DILabel(scope: !2498, name: "store_escape", file: !405, line: 709)
!2531 = !DILabel(scope: !2498, name: "store_c", file: !405, line: 712)
!2532 = !DILabel(scope: !2465, name: "force_outer_quoting_style", file: !405, line: 753)
!2533 = !DILocation(line: 0, scope: !2465)
!2534 = !DILocation(line: 258, column: 25, scope: !2465)
!2535 = !DILocation(line: 258, column: 36, scope: !2465)
!2536 = !DILocation(line: 267, column: 3, scope: !2465)
!2537 = !DILocation(line: 261, column: 10, scope: !2465)
!2538 = !DILocation(line: 262, column: 15, scope: !2465)
!2539 = !DILocation(line: 263, column: 10, scope: !2465)
!2540 = !DILocation(line: 308, column: 2, scope: !2465)
!2541 = !DILocation(line: 311, column: 3, scope: !2465)
!2542 = !DILocation(line: 318, column: 11, scope: !2494)
!2543 = !DILocation(line: 319, column: 9, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !405, line: 319, column: 9)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !405, line: 319, column: 9)
!2546 = distinct !DILexicalBlock(scope: !2494, file: !405, line: 318, column: 11)
!2547 = !DILocation(line: 319, column: 9, scope: !2545)
!2548 = !DILocation(line: 0, scope: !436, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 357, column: 26, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !405, line: 335, column: 11)
!2551 = distinct !DILexicalBlock(scope: !2493, file: !405, line: 334, column: 13)
!2552 = !DILocation(line: 199, column: 29, scope: !436, inlinedAt: !2549)
!2553 = !DILocation(line: 201, column: 19, scope: !2554, inlinedAt: !2549)
!2554 = distinct !DILexicalBlock(scope: !436, file: !405, line: 201, column: 7)
!2555 = !DILocation(line: 201, column: 7, scope: !436, inlinedAt: !2549)
!2556 = !DILocation(line: 229, column: 3, scope: !436, inlinedAt: !2549)
!2557 = !DILocation(line: 230, column: 3, scope: !436, inlinedAt: !2549)
!2558 = !DILocation(line: 230, column: 13, scope: !436, inlinedAt: !2549)
!2559 = !DILocalVariable(name: "ps", arg: 1, scope: !2560, file: !2320, line: 1135, type: !2563)
!2560 = distinct !DISubprogram(name: "mbszero", scope: !2320, file: !2320, line: 1135, type: !2561, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2564)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!2564 = !{!2559}
!2565 = !DILocation(line: 0, scope: !2560, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 230, column: 18, scope: !436, inlinedAt: !2549)
!2567 = !DILocalVariable(name: "__dest", arg: 1, scope: !2568, file: !1019, line: 57, type: !70)
!2568 = distinct !DISubprogram(name: "memset", scope: !1019, file: !1019, line: 57, type: !1100, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2569)
!2569 = !{!2567, !2570, !2571}
!2570 = !DILocalVariable(name: "__ch", arg: 2, scope: !2568, file: !1019, line: 57, type: !71)
!2571 = !DILocalVariable(name: "__len", arg: 3, scope: !2568, file: !1019, line: 57, type: !73)
!2572 = !DILocation(line: 0, scope: !2568, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 1137, column: 3, scope: !2560, inlinedAt: !2566)
!2574 = !DILocation(line: 59, column: 10, scope: !2568, inlinedAt: !2573)
!2575 = !DILocation(line: 231, column: 7, scope: !2576, inlinedAt: !2549)
!2576 = distinct !DILexicalBlock(scope: !436, file: !405, line: 231, column: 7)
!2577 = !DILocation(line: 231, column: 40, scope: !2576, inlinedAt: !2549)
!2578 = !DILocation(line: 231, column: 45, scope: !2576, inlinedAt: !2549)
!2579 = !DILocation(line: 235, column: 1, scope: !436, inlinedAt: !2549)
!2580 = !DILocation(line: 0, scope: !436, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 358, column: 27, scope: !2550)
!2582 = !DILocation(line: 199, column: 29, scope: !436, inlinedAt: !2581)
!2583 = !DILocation(line: 201, column: 19, scope: !2554, inlinedAt: !2581)
!2584 = !DILocation(line: 201, column: 7, scope: !436, inlinedAt: !2581)
!2585 = !DILocation(line: 229, column: 3, scope: !436, inlinedAt: !2581)
!2586 = !DILocation(line: 230, column: 3, scope: !436, inlinedAt: !2581)
!2587 = !DILocation(line: 230, column: 13, scope: !436, inlinedAt: !2581)
!2588 = !DILocation(line: 0, scope: !2560, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 230, column: 18, scope: !436, inlinedAt: !2581)
!2590 = !DILocation(line: 0, scope: !2568, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 1137, column: 3, scope: !2560, inlinedAt: !2589)
!2592 = !DILocation(line: 59, column: 10, scope: !2568, inlinedAt: !2591)
!2593 = !DILocation(line: 231, column: 7, scope: !2576, inlinedAt: !2581)
!2594 = !DILocation(line: 231, column: 40, scope: !2576, inlinedAt: !2581)
!2595 = !DILocation(line: 231, column: 45, scope: !2576, inlinedAt: !2581)
!2596 = !DILocation(line: 235, column: 1, scope: !436, inlinedAt: !2581)
!2597 = !DILocation(line: 360, column: 13, scope: !2493)
!2598 = !DILocation(line: 0, scope: !2491)
!2599 = !DILocation(line: 361, column: 45, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2491, file: !405, line: 361, column: 11)
!2601 = !DILocation(line: 361, column: 11, scope: !2491)
!2602 = !DILocation(line: 362, column: 13, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !405, line: 362, column: 13)
!2604 = distinct !DILexicalBlock(scope: !2600, file: !405, line: 362, column: 13)
!2605 = !DILocation(line: 362, column: 13, scope: !2604)
!2606 = !DILocation(line: 361, column: 52, scope: !2600)
!2607 = distinct !{!2607, !2601, !2608, !680}
!2608 = !DILocation(line: 362, column: 13, scope: !2491)
!2609 = !DILocation(line: 260, column: 10, scope: !2465)
!2610 = !DILocation(line: 365, column: 28, scope: !2493)
!2611 = !DILocation(line: 367, column: 7, scope: !2494)
!2612 = !DILocation(line: 370, column: 7, scope: !2494)
!2613 = !DILocation(line: 376, column: 11, scope: !2494)
!2614 = !DILocation(line: 381, column: 11, scope: !2494)
!2615 = !DILocation(line: 382, column: 9, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !405, line: 382, column: 9)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !405, line: 382, column: 9)
!2618 = distinct !DILexicalBlock(scope: !2494, file: !405, line: 381, column: 11)
!2619 = !DILocation(line: 382, column: 9, scope: !2617)
!2620 = !DILocation(line: 389, column: 7, scope: !2494)
!2621 = !DILocation(line: 392, column: 7, scope: !2494)
!2622 = !DILocation(line: 0, scope: !2496)
!2623 = !DILocation(line: 395, column: 8, scope: !2496)
!2624 = !DILocation(line: 395, column: 34, scope: !2499)
!2625 = !DILocation(line: 395, column: 26, scope: !2499)
!2626 = !DILocation(line: 395, column: 48, scope: !2499)
!2627 = !DILocation(line: 395, column: 55, scope: !2499)
!2628 = !DILocation(line: 395, column: 3, scope: !2496)
!2629 = !DILocation(line: 395, column: 67, scope: !2499)
!2630 = !DILocation(line: 0, scope: !2498)
!2631 = !DILocation(line: 402, column: 11, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2498, file: !405, line: 401, column: 11)
!2633 = !DILocation(line: 404, column: 17, scope: !2632)
!2634 = !DILocation(line: 405, column: 39, scope: !2632)
!2635 = !DILocation(line: 409, column: 32, scope: !2632)
!2636 = !DILocation(line: 405, column: 19, scope: !2632)
!2637 = !DILocation(line: 405, column: 15, scope: !2632)
!2638 = !DILocation(line: 410, column: 11, scope: !2632)
!2639 = !DILocation(line: 410, column: 25, scope: !2632)
!2640 = !DILocalVariable(name: "__s1", arg: 1, scope: !2641, file: !664, line: 974, type: !831)
!2641 = distinct !DISubprogram(name: "memeq", scope: !664, file: !664, line: 974, type: !1255, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2642)
!2642 = !{!2640, !2643, !2644}
!2643 = !DILocalVariable(name: "__s2", arg: 2, scope: !2641, file: !664, line: 974, type: !831)
!2644 = !DILocalVariable(name: "__n", arg: 3, scope: !2641, file: !664, line: 974, type: !73)
!2645 = !DILocation(line: 0, scope: !2641, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 410, column: 14, scope: !2632)
!2647 = !DILocation(line: 976, column: 11, scope: !2641, inlinedAt: !2646)
!2648 = !DILocation(line: 976, column: 10, scope: !2641, inlinedAt: !2646)
!2649 = !DILocation(line: 401, column: 11, scope: !2498)
!2650 = !DILocation(line: 417, column: 25, scope: !2498)
!2651 = !DILocation(line: 418, column: 7, scope: !2498)
!2652 = !DILocation(line: 421, column: 15, scope: !2505)
!2653 = !DILocation(line: 423, column: 15, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !405, line: 423, column: 15)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !405, line: 422, column: 13)
!2656 = distinct !DILexicalBlock(scope: !2505, file: !405, line: 421, column: 15)
!2657 = !DILocation(line: 423, column: 15, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !405, line: 423, column: 15)
!2659 = !DILocation(line: 423, column: 15, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !405, line: 423, column: 15)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !405, line: 423, column: 15)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !405, line: 423, column: 15)
!2663 = !DILocation(line: 423, column: 15, scope: !2661)
!2664 = !DILocation(line: 423, column: 15, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !405, line: 423, column: 15)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !405, line: 423, column: 15)
!2667 = !DILocation(line: 423, column: 15, scope: !2666)
!2668 = !DILocation(line: 423, column: 15, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !405, line: 423, column: 15)
!2670 = distinct !DILexicalBlock(scope: !2662, file: !405, line: 423, column: 15)
!2671 = !DILocation(line: 423, column: 15, scope: !2670)
!2672 = !DILocation(line: 423, column: 15, scope: !2662)
!2673 = !DILocation(line: 423, column: 15, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !405, line: 423, column: 15)
!2675 = distinct !DILexicalBlock(scope: !2654, file: !405, line: 423, column: 15)
!2676 = !DILocation(line: 423, column: 15, scope: !2675)
!2677 = !DILocation(line: 431, column: 19, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2655, file: !405, line: 430, column: 19)
!2679 = !DILocation(line: 431, column: 24, scope: !2678)
!2680 = !DILocation(line: 431, column: 28, scope: !2678)
!2681 = !DILocation(line: 431, column: 38, scope: !2678)
!2682 = !DILocation(line: 431, column: 48, scope: !2678)
!2683 = !DILocation(line: 431, column: 59, scope: !2678)
!2684 = !DILocation(line: 433, column: 19, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !405, line: 433, column: 19)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !405, line: 433, column: 19)
!2687 = distinct !DILexicalBlock(scope: !2678, file: !405, line: 432, column: 17)
!2688 = !DILocation(line: 433, column: 19, scope: !2686)
!2689 = !DILocation(line: 434, column: 19, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !405, line: 434, column: 19)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !405, line: 434, column: 19)
!2692 = !DILocation(line: 434, column: 19, scope: !2691)
!2693 = !DILocation(line: 435, column: 17, scope: !2687)
!2694 = !DILocation(line: 442, column: 20, scope: !2656)
!2695 = !DILocation(line: 447, column: 11, scope: !2505)
!2696 = !DILocation(line: 450, column: 19, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2505, file: !405, line: 448, column: 13)
!2698 = !DILocation(line: 456, column: 19, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2697, file: !405, line: 455, column: 19)
!2700 = !DILocation(line: 456, column: 24, scope: !2699)
!2701 = !DILocation(line: 456, column: 28, scope: !2699)
!2702 = !DILocation(line: 456, column: 38, scope: !2699)
!2703 = !DILocation(line: 456, column: 47, scope: !2699)
!2704 = !DILocation(line: 456, column: 41, scope: !2699)
!2705 = !DILocation(line: 456, column: 52, scope: !2699)
!2706 = !DILocation(line: 455, column: 19, scope: !2697)
!2707 = !DILocation(line: 457, column: 25, scope: !2699)
!2708 = !DILocation(line: 457, column: 17, scope: !2699)
!2709 = !DILocation(line: 464, column: 25, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2699, file: !405, line: 458, column: 19)
!2711 = !DILocation(line: 468, column: 21, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !405, line: 468, column: 21)
!2713 = distinct !DILexicalBlock(scope: !2710, file: !405, line: 468, column: 21)
!2714 = !DILocation(line: 468, column: 21, scope: !2713)
!2715 = !DILocation(line: 469, column: 21, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !405, line: 469, column: 21)
!2717 = distinct !DILexicalBlock(scope: !2710, file: !405, line: 469, column: 21)
!2718 = !DILocation(line: 469, column: 21, scope: !2717)
!2719 = !DILocation(line: 470, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !405, line: 470, column: 21)
!2721 = distinct !DILexicalBlock(scope: !2710, file: !405, line: 470, column: 21)
!2722 = !DILocation(line: 470, column: 21, scope: !2721)
!2723 = !DILocation(line: 471, column: 21, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !405, line: 471, column: 21)
!2725 = distinct !DILexicalBlock(scope: !2710, file: !405, line: 471, column: 21)
!2726 = !DILocation(line: 471, column: 21, scope: !2725)
!2727 = !DILocation(line: 472, column: 21, scope: !2710)
!2728 = !DILocation(line: 482, column: 33, scope: !2528)
!2729 = !DILocation(line: 483, column: 33, scope: !2528)
!2730 = !DILocation(line: 485, column: 33, scope: !2528)
!2731 = !DILocation(line: 486, column: 33, scope: !2528)
!2732 = !DILocation(line: 487, column: 33, scope: !2528)
!2733 = !DILocation(line: 490, column: 17, scope: !2528)
!2734 = !DILocation(line: 492, column: 21, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !405, line: 491, column: 15)
!2736 = distinct !DILexicalBlock(scope: !2528, file: !405, line: 490, column: 17)
!2737 = !DILocation(line: 499, column: 35, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2528, file: !405, line: 499, column: 17)
!2739 = !DILocation(line: 499, column: 57, scope: !2738)
!2740 = !DILocation(line: 0, scope: !2528)
!2741 = !DILocation(line: 502, column: 11, scope: !2528)
!2742 = !DILocation(line: 504, column: 17, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2528, file: !405, line: 503, column: 17)
!2744 = !DILocation(line: 507, column: 11, scope: !2528)
!2745 = !DILocation(line: 508, column: 17, scope: !2528)
!2746 = !DILocation(line: 517, column: 15, scope: !2505)
!2747 = !DILocation(line: 517, column: 40, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2505, file: !405, line: 517, column: 15)
!2749 = !DILocation(line: 517, column: 47, scope: !2748)
!2750 = !DILocation(line: 517, column: 18, scope: !2748)
!2751 = !DILocation(line: 521, column: 17, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2505, file: !405, line: 521, column: 15)
!2753 = !DILocation(line: 521, column: 15, scope: !2505)
!2754 = !DILocation(line: 525, column: 11, scope: !2505)
!2755 = !DILocation(line: 537, column: 15, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2505, file: !405, line: 536, column: 15)
!2757 = !DILocation(line: 536, column: 15, scope: !2505)
!2758 = !DILocation(line: 544, column: 15, scope: !2505)
!2759 = !DILocation(line: 546, column: 19, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !405, line: 545, column: 13)
!2761 = distinct !DILexicalBlock(scope: !2505, file: !405, line: 544, column: 15)
!2762 = !DILocation(line: 549, column: 19, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2760, file: !405, line: 549, column: 19)
!2764 = !DILocation(line: 549, column: 30, scope: !2763)
!2765 = !DILocation(line: 558, column: 15, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !405, line: 558, column: 15)
!2767 = distinct !DILexicalBlock(scope: !2760, file: !405, line: 558, column: 15)
!2768 = !DILocation(line: 558, column: 15, scope: !2767)
!2769 = !DILocation(line: 559, column: 15, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !405, line: 559, column: 15)
!2771 = distinct !DILexicalBlock(scope: !2760, file: !405, line: 559, column: 15)
!2772 = !DILocation(line: 559, column: 15, scope: !2771)
!2773 = !DILocation(line: 560, column: 15, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !405, line: 560, column: 15)
!2775 = distinct !DILexicalBlock(scope: !2760, file: !405, line: 560, column: 15)
!2776 = !DILocation(line: 560, column: 15, scope: !2775)
!2777 = !DILocation(line: 562, column: 13, scope: !2760)
!2778 = !DILocation(line: 602, column: 17, scope: !2504)
!2779 = !DILocation(line: 0, scope: !2504)
!2780 = !DILocation(line: 605, column: 29, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2509, file: !405, line: 603, column: 15)
!2782 = !DILocation(line: 605, column: 41, scope: !2781)
!2783 = !DILocation(line: 670, column: 23, scope: !2525)
!2784 = !DILocation(line: 609, column: 17, scope: !2508)
!2785 = !DILocation(line: 609, column: 27, scope: !2508)
!2786 = !DILocation(line: 0, scope: !2560, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 609, column: 32, scope: !2508)
!2788 = !DILocation(line: 0, scope: !2568, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 1137, column: 3, scope: !2560, inlinedAt: !2787)
!2790 = !DILocation(line: 59, column: 10, scope: !2568, inlinedAt: !2789)
!2791 = !DILocation(line: 613, column: 29, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2508, file: !405, line: 613, column: 21)
!2793 = !DILocation(line: 613, column: 21, scope: !2508)
!2794 = !DILocation(line: 614, column: 29, scope: !2792)
!2795 = !DILocation(line: 614, column: 19, scope: !2792)
!2796 = !DILocation(line: 618, column: 21, scope: !2511)
!2797 = !DILocation(line: 620, column: 54, scope: !2511)
!2798 = !DILocation(line: 0, scope: !2511)
!2799 = !DILocation(line: 619, column: 36, scope: !2511)
!2800 = !DILocation(line: 621, column: 25, scope: !2511)
!2801 = !DILocation(line: 631, column: 38, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2520, file: !405, line: 629, column: 23)
!2803 = !DILocation(line: 631, column: 48, scope: !2802)
!2804 = !DILocation(line: 665, column: 19, scope: !2512)
!2805 = !DILocation(line: 666, column: 15, scope: !2509)
!2806 = !DILocation(line: 626, column: 25, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2521, file: !405, line: 624, column: 23)
!2808 = !DILocation(line: 631, column: 51, scope: !2802)
!2809 = !DILocation(line: 631, column: 25, scope: !2802)
!2810 = !DILocation(line: 632, column: 28, scope: !2802)
!2811 = !DILocation(line: 631, column: 34, scope: !2802)
!2812 = distinct !{!2812, !2809, !2810, !680}
!2813 = !DILocation(line: 646, column: 29, scope: !2518)
!2814 = !DILocation(line: 0, scope: !2516)
!2815 = !DILocation(line: 649, column: 49, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2516, file: !405, line: 648, column: 29)
!2817 = !DILocation(line: 649, column: 39, scope: !2816)
!2818 = !DILocation(line: 649, column: 31, scope: !2816)
!2819 = !DILocation(line: 648, column: 60, scope: !2816)
!2820 = !DILocation(line: 648, column: 50, scope: !2816)
!2821 = !DILocation(line: 648, column: 29, scope: !2516)
!2822 = distinct !{!2822, !2821, !2823, !680}
!2823 = !DILocation(line: 654, column: 33, scope: !2516)
!2824 = !DILocation(line: 657, column: 43, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2519, file: !405, line: 657, column: 29)
!2826 = !DILocalVariable(name: "wc", arg: 1, scope: !2827, file: !2828, line: 865, type: !2831)
!2827 = distinct !DISubprogram(name: "c32isprint", scope: !2828, file: !2828, line: 865, type: !2829, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !2833)
!2828 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!71, !2831}
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2832, line: 20, baseType: !7)
!2832 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2833 = !{!2826}
!2834 = !DILocation(line: 0, scope: !2827, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 657, column: 31, scope: !2825)
!2836 = !DILocation(line: 871, column: 10, scope: !2827, inlinedAt: !2835)
!2837 = !DILocation(line: 657, column: 31, scope: !2825)
!2838 = !DILocation(line: 664, column: 23, scope: !2511)
!2839 = !DILocation(line: 753, column: 2, scope: !2465)
!2840 = !DILocation(line: 756, column: 51, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2465, file: !405, line: 756, column: 7)
!2842 = !DILocation(line: 670, column: 19, scope: !2525)
!2843 = !DILocation(line: 670, column: 45, scope: !2525)
!2844 = !DILocation(line: 674, column: 33, scope: !2524)
!2845 = !DILocation(line: 0, scope: !2524)
!2846 = !DILocation(line: 676, column: 17, scope: !2524)
!2847 = !DILocation(line: 398, column: 12, scope: !2498)
!2848 = !DILocation(line: 678, column: 43, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !405, line: 678, column: 25)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !405, line: 677, column: 19)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !405, line: 676, column: 17)
!2852 = distinct !DILexicalBlock(scope: !2524, file: !405, line: 676, column: 17)
!2853 = !DILocation(line: 680, column: 25, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !405, line: 680, column: 25)
!2855 = distinct !DILexicalBlock(scope: !2849, file: !405, line: 679, column: 23)
!2856 = !DILocation(line: 680, column: 25, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !405, line: 680, column: 25)
!2858 = !DILocation(line: 680, column: 25, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !405, line: 680, column: 25)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !405, line: 680, column: 25)
!2861 = distinct !DILexicalBlock(scope: !2857, file: !405, line: 680, column: 25)
!2862 = !DILocation(line: 680, column: 25, scope: !2860)
!2863 = !DILocation(line: 680, column: 25, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !405, line: 680, column: 25)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !405, line: 680, column: 25)
!2866 = !DILocation(line: 680, column: 25, scope: !2865)
!2867 = !DILocation(line: 680, column: 25, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !405, line: 680, column: 25)
!2869 = distinct !DILexicalBlock(scope: !2861, file: !405, line: 680, column: 25)
!2870 = !DILocation(line: 680, column: 25, scope: !2869)
!2871 = !DILocation(line: 680, column: 25, scope: !2861)
!2872 = !DILocation(line: 680, column: 25, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !405, line: 680, column: 25)
!2874 = distinct !DILexicalBlock(scope: !2854, file: !405, line: 680, column: 25)
!2875 = !DILocation(line: 680, column: 25, scope: !2874)
!2876 = !DILocation(line: 681, column: 25, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !405, line: 681, column: 25)
!2878 = distinct !DILexicalBlock(scope: !2855, file: !405, line: 681, column: 25)
!2879 = !DILocation(line: 681, column: 25, scope: !2878)
!2880 = !DILocation(line: 682, column: 25, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !405, line: 682, column: 25)
!2882 = distinct !DILexicalBlock(scope: !2855, file: !405, line: 682, column: 25)
!2883 = !DILocation(line: 682, column: 25, scope: !2882)
!2884 = !DILocation(line: 683, column: 38, scope: !2855)
!2885 = !DILocation(line: 683, column: 33, scope: !2855)
!2886 = !DILocation(line: 684, column: 23, scope: !2855)
!2887 = !DILocation(line: 685, column: 30, scope: !2849)
!2888 = !DILocation(line: 687, column: 25, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !405, line: 687, column: 25)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !405, line: 687, column: 25)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !405, line: 686, column: 23)
!2892 = distinct !DILexicalBlock(scope: !2849, file: !405, line: 685, column: 30)
!2893 = !DILocation(line: 687, column: 25, scope: !2890)
!2894 = !DILocation(line: 689, column: 23, scope: !2891)
!2895 = !DILocation(line: 690, column: 35, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2850, file: !405, line: 690, column: 25)
!2897 = !DILocation(line: 690, column: 30, scope: !2896)
!2898 = !DILocation(line: 690, column: 25, scope: !2850)
!2899 = !DILocation(line: 692, column: 21, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !405, line: 692, column: 21)
!2901 = distinct !DILexicalBlock(scope: !2850, file: !405, line: 692, column: 21)
!2902 = !DILocation(line: 692, column: 21, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !405, line: 692, column: 21)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !405, line: 692, column: 21)
!2905 = distinct !DILexicalBlock(scope: !2900, file: !405, line: 692, column: 21)
!2906 = !DILocation(line: 692, column: 21, scope: !2904)
!2907 = !DILocation(line: 692, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !405, line: 692, column: 21)
!2909 = distinct !DILexicalBlock(scope: !2905, file: !405, line: 692, column: 21)
!2910 = !DILocation(line: 692, column: 21, scope: !2909)
!2911 = !DILocation(line: 692, column: 21, scope: !2905)
!2912 = !DILocation(line: 0, scope: !2850)
!2913 = !DILocation(line: 693, column: 21, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !405, line: 693, column: 21)
!2915 = distinct !DILexicalBlock(scope: !2850, file: !405, line: 693, column: 21)
!2916 = !DILocation(line: 693, column: 21, scope: !2915)
!2917 = !DILocation(line: 694, column: 25, scope: !2850)
!2918 = !DILocation(line: 676, column: 17, scope: !2851)
!2919 = distinct !{!2919, !2920, !2921}
!2920 = !DILocation(line: 676, column: 17, scope: !2852)
!2921 = !DILocation(line: 695, column: 19, scope: !2852)
!2922 = !DILocation(line: 409, column: 30, scope: !2632)
!2923 = !DILocation(line: 702, column: 34, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2498, file: !405, line: 702, column: 11)
!2925 = !DILocation(line: 704, column: 14, scope: !2924)
!2926 = !DILocation(line: 705, column: 14, scope: !2924)
!2927 = !DILocation(line: 705, column: 35, scope: !2924)
!2928 = !DILocation(line: 705, column: 17, scope: !2924)
!2929 = !DILocation(line: 705, column: 47, scope: !2924)
!2930 = !DILocation(line: 705, column: 65, scope: !2924)
!2931 = !DILocation(line: 706, column: 11, scope: !2924)
!2932 = !DILocation(line: 702, column: 11, scope: !2498)
!2933 = !DILocation(line: 395, column: 15, scope: !2496)
!2934 = !DILocation(line: 709, column: 5, scope: !2498)
!2935 = !DILocation(line: 710, column: 7, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2498, file: !405, line: 710, column: 7)
!2937 = !DILocation(line: 710, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2936, file: !405, line: 710, column: 7)
!2939 = !DILocation(line: 710, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !405, line: 710, column: 7)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !405, line: 710, column: 7)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !405, line: 710, column: 7)
!2943 = !DILocation(line: 710, column: 7, scope: !2941)
!2944 = !DILocation(line: 710, column: 7, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !405, line: 710, column: 7)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !405, line: 710, column: 7)
!2947 = !DILocation(line: 710, column: 7, scope: !2946)
!2948 = !DILocation(line: 710, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !405, line: 710, column: 7)
!2950 = distinct !DILexicalBlock(scope: !2942, file: !405, line: 710, column: 7)
!2951 = !DILocation(line: 710, column: 7, scope: !2950)
!2952 = !DILocation(line: 710, column: 7, scope: !2942)
!2953 = !DILocation(line: 710, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !405, line: 710, column: 7)
!2955 = distinct !DILexicalBlock(scope: !2936, file: !405, line: 710, column: 7)
!2956 = !DILocation(line: 710, column: 7, scope: !2955)
!2957 = !DILocation(line: 712, column: 5, scope: !2498)
!2958 = !DILocation(line: 713, column: 7, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !405, line: 713, column: 7)
!2960 = distinct !DILexicalBlock(scope: !2498, file: !405, line: 713, column: 7)
!2961 = !DILocation(line: 417, column: 21, scope: !2498)
!2962 = !DILocation(line: 713, column: 7, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !405, line: 713, column: 7)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !405, line: 713, column: 7)
!2965 = distinct !DILexicalBlock(scope: !2959, file: !405, line: 713, column: 7)
!2966 = !DILocation(line: 713, column: 7, scope: !2964)
!2967 = !DILocation(line: 713, column: 7, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !405, line: 713, column: 7)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !405, line: 713, column: 7)
!2970 = !DILocation(line: 713, column: 7, scope: !2969)
!2971 = !DILocation(line: 713, column: 7, scope: !2965)
!2972 = !DILocation(line: 714, column: 7, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !405, line: 714, column: 7)
!2974 = distinct !DILexicalBlock(scope: !2498, file: !405, line: 714, column: 7)
!2975 = !DILocation(line: 714, column: 7, scope: !2974)
!2976 = !DILocation(line: 716, column: 11, scope: !2498)
!2977 = !DILocation(line: 718, column: 5, scope: !2499)
!2978 = !DILocation(line: 395, column: 82, scope: !2499)
!2979 = !DILocation(line: 395, column: 3, scope: !2499)
!2980 = distinct !{!2980, !2628, !2981, !680}
!2981 = !DILocation(line: 718, column: 5, scope: !2496)
!2982 = !DILocation(line: 720, column: 11, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2465, file: !405, line: 720, column: 7)
!2984 = !DILocation(line: 720, column: 16, scope: !2983)
!2985 = !DILocation(line: 728, column: 51, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2465, file: !405, line: 728, column: 7)
!2987 = !DILocation(line: 731, column: 11, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2986, file: !405, line: 730, column: 5)
!2989 = !DILocation(line: 732, column: 16, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2988, file: !405, line: 731, column: 11)
!2991 = !DILocation(line: 732, column: 9, scope: !2990)
!2992 = !DILocation(line: 736, column: 18, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2990, file: !405, line: 736, column: 16)
!2994 = !DILocation(line: 736, column: 29, scope: !2993)
!2995 = !DILocation(line: 745, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2465, file: !405, line: 745, column: 7)
!2997 = !DILocation(line: 745, column: 20, scope: !2996)
!2998 = !DILocation(line: 746, column: 12, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !405, line: 746, column: 5)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !405, line: 746, column: 5)
!3001 = !DILocation(line: 746, column: 5, scope: !3000)
!3002 = !DILocation(line: 747, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !405, line: 747, column: 7)
!3004 = distinct !DILexicalBlock(scope: !2999, file: !405, line: 747, column: 7)
!3005 = !DILocation(line: 747, column: 7, scope: !3004)
!3006 = !DILocation(line: 746, column: 39, scope: !2999)
!3007 = distinct !{!3007, !3001, !3008, !680}
!3008 = !DILocation(line: 747, column: 7, scope: !3000)
!3009 = !DILocation(line: 749, column: 11, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2465, file: !405, line: 749, column: 7)
!3011 = !DILocation(line: 749, column: 7, scope: !2465)
!3012 = !DILocation(line: 750, column: 5, scope: !3010)
!3013 = !DILocation(line: 750, column: 17, scope: !3010)
!3014 = !DILocation(line: 756, column: 21, scope: !2841)
!3015 = !DILocation(line: 760, column: 42, scope: !2465)
!3016 = !DILocation(line: 758, column: 10, scope: !2465)
!3017 = !DILocation(line: 758, column: 3, scope: !2465)
!3018 = !DILocation(line: 762, column: 1, scope: !2465)
!3019 = !DISubprogram(name: "iswprint", scope: !3020, file: !3020, line: 120, type: !2829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!3020 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3021 = distinct !DISubprogram(name: "quotearg_alloc", scope: !405, file: !405, line: 788, type: !3022, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!68, !76, !73, !2357}
!3024 = !{!3025, !3026, !3027}
!3025 = !DILocalVariable(name: "arg", arg: 1, scope: !3021, file: !405, line: 788, type: !76)
!3026 = !DILocalVariable(name: "argsize", arg: 2, scope: !3021, file: !405, line: 788, type: !73)
!3027 = !DILocalVariable(name: "o", arg: 3, scope: !3021, file: !405, line: 789, type: !2357)
!3028 = !DILocation(line: 0, scope: !3021)
!3029 = !DILocalVariable(name: "arg", arg: 1, scope: !3030, file: !405, line: 801, type: !76)
!3030 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !405, file: !405, line: 801, type: !3031, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!68, !76, !73, !532, !2357}
!3033 = !{!3029, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041}
!3034 = !DILocalVariable(name: "argsize", arg: 2, scope: !3030, file: !405, line: 801, type: !73)
!3035 = !DILocalVariable(name: "size", arg: 3, scope: !3030, file: !405, line: 801, type: !532)
!3036 = !DILocalVariable(name: "o", arg: 4, scope: !3030, file: !405, line: 802, type: !2357)
!3037 = !DILocalVariable(name: "p", scope: !3030, file: !405, line: 804, type: !2357)
!3038 = !DILocalVariable(name: "saved_errno", scope: !3030, file: !405, line: 805, type: !71)
!3039 = !DILocalVariable(name: "flags", scope: !3030, file: !405, line: 807, type: !71)
!3040 = !DILocalVariable(name: "bufsize", scope: !3030, file: !405, line: 808, type: !73)
!3041 = !DILocalVariable(name: "buf", scope: !3030, file: !405, line: 812, type: !68)
!3042 = !DILocation(line: 0, scope: !3030, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 791, column: 10, scope: !3021)
!3044 = !DILocation(line: 804, column: 37, scope: !3030, inlinedAt: !3043)
!3045 = !DILocation(line: 805, column: 21, scope: !3030, inlinedAt: !3043)
!3046 = !DILocation(line: 807, column: 18, scope: !3030, inlinedAt: !3043)
!3047 = !DILocation(line: 807, column: 24, scope: !3030, inlinedAt: !3043)
!3048 = !DILocation(line: 808, column: 72, scope: !3030, inlinedAt: !3043)
!3049 = !DILocation(line: 809, column: 53, scope: !3030, inlinedAt: !3043)
!3050 = !DILocation(line: 810, column: 49, scope: !3030, inlinedAt: !3043)
!3051 = !DILocation(line: 811, column: 49, scope: !3030, inlinedAt: !3043)
!3052 = !DILocation(line: 808, column: 20, scope: !3030, inlinedAt: !3043)
!3053 = !DILocation(line: 811, column: 62, scope: !3030, inlinedAt: !3043)
!3054 = !DILocation(line: 812, column: 15, scope: !3030, inlinedAt: !3043)
!3055 = !DILocation(line: 813, column: 60, scope: !3030, inlinedAt: !3043)
!3056 = !DILocation(line: 815, column: 32, scope: !3030, inlinedAt: !3043)
!3057 = !DILocation(line: 815, column: 47, scope: !3030, inlinedAt: !3043)
!3058 = !DILocation(line: 813, column: 3, scope: !3030, inlinedAt: !3043)
!3059 = !DILocation(line: 816, column: 9, scope: !3030, inlinedAt: !3043)
!3060 = !DILocation(line: 791, column: 3, scope: !3021)
!3061 = !DILocation(line: 0, scope: !3030)
!3062 = !DILocation(line: 804, column: 37, scope: !3030)
!3063 = !DILocation(line: 805, column: 21, scope: !3030)
!3064 = !DILocation(line: 807, column: 18, scope: !3030)
!3065 = !DILocation(line: 807, column: 27, scope: !3030)
!3066 = !DILocation(line: 807, column: 24, scope: !3030)
!3067 = !DILocation(line: 808, column: 72, scope: !3030)
!3068 = !DILocation(line: 809, column: 53, scope: !3030)
!3069 = !DILocation(line: 810, column: 49, scope: !3030)
!3070 = !DILocation(line: 811, column: 49, scope: !3030)
!3071 = !DILocation(line: 808, column: 20, scope: !3030)
!3072 = !DILocation(line: 811, column: 62, scope: !3030)
!3073 = !DILocation(line: 812, column: 15, scope: !3030)
!3074 = !DILocation(line: 813, column: 60, scope: !3030)
!3075 = !DILocation(line: 815, column: 32, scope: !3030)
!3076 = !DILocation(line: 815, column: 47, scope: !3030)
!3077 = !DILocation(line: 813, column: 3, scope: !3030)
!3078 = !DILocation(line: 816, column: 9, scope: !3030)
!3079 = !DILocation(line: 817, column: 7, scope: !3030)
!3080 = !DILocation(line: 818, column: 11, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3030, file: !405, line: 817, column: 7)
!3082 = !DILocation(line: 818, column: 5, scope: !3081)
!3083 = !DILocation(line: 819, column: 3, scope: !3030)
!3084 = distinct !DISubprogram(name: "quotearg_free", scope: !405, file: !405, line: 837, type: !287, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3085)
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "sv", scope: !3084, file: !405, line: 839, type: !459)
!3087 = !DILocalVariable(name: "i", scope: !3088, file: !405, line: 840, type: !71)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !405, line: 840, column: 3)
!3089 = !DILocation(line: 839, column: 24, scope: !3084)
!3090 = !DILocation(line: 0, scope: !3084)
!3091 = !DILocation(line: 0, scope: !3088)
!3092 = !DILocation(line: 840, column: 21, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3088, file: !405, line: 840, column: 3)
!3094 = !DILocation(line: 840, column: 3, scope: !3088)
!3095 = !DILocation(line: 842, column: 13, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3084, file: !405, line: 842, column: 7)
!3097 = !{!3098, !610, i64 8}
!3098 = !{!"slotvec", !884, i64 0, !610, i64 8}
!3099 = !DILocation(line: 842, column: 17, scope: !3096)
!3100 = !DILocation(line: 842, column: 7, scope: !3084)
!3101 = !DILocation(line: 841, column: 17, scope: !3093)
!3102 = !DILocation(line: 841, column: 5, scope: !3093)
!3103 = !DILocation(line: 840, column: 32, scope: !3093)
!3104 = distinct !{!3104, !3094, !3105, !680}
!3105 = !DILocation(line: 841, column: 20, scope: !3088)
!3106 = !DILocation(line: 844, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3096, file: !405, line: 843, column: 5)
!3108 = !DILocation(line: 845, column: 21, scope: !3107)
!3109 = !{!3098, !884, i64 0}
!3110 = !DILocation(line: 846, column: 20, scope: !3107)
!3111 = !DILocation(line: 847, column: 5, scope: !3107)
!3112 = !DILocation(line: 848, column: 10, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3084, file: !405, line: 848, column: 7)
!3114 = !DILocation(line: 848, column: 7, scope: !3084)
!3115 = !DILocation(line: 850, column: 13, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3113, file: !405, line: 849, column: 5)
!3117 = !DILocation(line: 850, column: 7, scope: !3116)
!3118 = !DILocation(line: 851, column: 15, scope: !3116)
!3119 = !DILocation(line: 852, column: 5, scope: !3116)
!3120 = !DILocation(line: 853, column: 10, scope: !3084)
!3121 = !DILocation(line: 854, column: 1, scope: !3084)
!3122 = distinct !DISubprogram(name: "quotearg_n", scope: !405, file: !405, line: 919, type: !821, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3123)
!3123 = !{!3124, !3125}
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3122, file: !405, line: 919, type: !71)
!3125 = !DILocalVariable(name: "arg", arg: 2, scope: !3122, file: !405, line: 919, type: !76)
!3126 = !DILocation(line: 0, scope: !3122)
!3127 = !DILocation(line: 921, column: 10, scope: !3122)
!3128 = !DILocation(line: 921, column: 3, scope: !3122)
!3129 = distinct !DISubprogram(name: "quotearg_n_options", scope: !405, file: !405, line: 866, type: !3130, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!68, !71, !76, !73, !2357}
!3132 = !{!3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3143, !3144, !3146, !3147, !3148}
!3133 = !DILocalVariable(name: "n", arg: 1, scope: !3129, file: !405, line: 866, type: !71)
!3134 = !DILocalVariable(name: "arg", arg: 2, scope: !3129, file: !405, line: 866, type: !76)
!3135 = !DILocalVariable(name: "argsize", arg: 3, scope: !3129, file: !405, line: 866, type: !73)
!3136 = !DILocalVariable(name: "options", arg: 4, scope: !3129, file: !405, line: 867, type: !2357)
!3137 = !DILocalVariable(name: "saved_errno", scope: !3129, file: !405, line: 869, type: !71)
!3138 = !DILocalVariable(name: "sv", scope: !3129, file: !405, line: 871, type: !459)
!3139 = !DILocalVariable(name: "nslots_max", scope: !3129, file: !405, line: 873, type: !71)
!3140 = !DILocalVariable(name: "preallocated", scope: !3141, file: !405, line: 879, type: !79)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !405, line: 878, column: 5)
!3142 = distinct !DILexicalBlock(scope: !3129, file: !405, line: 877, column: 7)
!3143 = !DILocalVariable(name: "new_nslots", scope: !3141, file: !405, line: 880, type: !134)
!3144 = !DILocalVariable(name: "size", scope: !3145, file: !405, line: 891, type: !73)
!3145 = distinct !DILexicalBlock(scope: !3129, file: !405, line: 890, column: 3)
!3146 = !DILocalVariable(name: "val", scope: !3145, file: !405, line: 892, type: !68)
!3147 = !DILocalVariable(name: "flags", scope: !3145, file: !405, line: 894, type: !71)
!3148 = !DILocalVariable(name: "qsize", scope: !3145, file: !405, line: 895, type: !73)
!3149 = !DILocation(line: 0, scope: !3129)
!3150 = !DILocation(line: 869, column: 21, scope: !3129)
!3151 = !DILocation(line: 871, column: 24, scope: !3129)
!3152 = !DILocation(line: 874, column: 17, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3129, file: !405, line: 874, column: 7)
!3154 = !DILocation(line: 875, column: 5, scope: !3153)
!3155 = !DILocation(line: 877, column: 7, scope: !3142)
!3156 = !DILocation(line: 877, column: 14, scope: !3142)
!3157 = !DILocation(line: 877, column: 7, scope: !3129)
!3158 = !DILocation(line: 879, column: 31, scope: !3141)
!3159 = !DILocation(line: 0, scope: !3141)
!3160 = !DILocation(line: 880, column: 7, scope: !3141)
!3161 = !DILocation(line: 880, column: 26, scope: !3141)
!3162 = !DILocation(line: 880, column: 13, scope: !3141)
!3163 = !DILocation(line: 882, column: 31, scope: !3141)
!3164 = !DILocation(line: 883, column: 33, scope: !3141)
!3165 = !DILocation(line: 883, column: 42, scope: !3141)
!3166 = !DILocation(line: 883, column: 31, scope: !3141)
!3167 = !DILocation(line: 882, column: 22, scope: !3141)
!3168 = !DILocation(line: 882, column: 15, scope: !3141)
!3169 = !DILocation(line: 884, column: 11, scope: !3141)
!3170 = !DILocation(line: 885, column: 15, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3141, file: !405, line: 884, column: 11)
!3172 = !{i64 0, i64 8, !883, i64 8, i64 8, !609}
!3173 = !DILocation(line: 885, column: 9, scope: !3171)
!3174 = !DILocation(line: 886, column: 20, scope: !3141)
!3175 = !DILocation(line: 886, column: 18, scope: !3141)
!3176 = !DILocation(line: 886, column: 15, scope: !3141)
!3177 = !DILocation(line: 886, column: 32, scope: !3141)
!3178 = !DILocation(line: 886, column: 43, scope: !3141)
!3179 = !DILocation(line: 886, column: 53, scope: !3141)
!3180 = !DILocation(line: 0, scope: !2568, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 886, column: 7, scope: !3141)
!3182 = !DILocation(line: 59, column: 10, scope: !2568, inlinedAt: !3181)
!3183 = !DILocation(line: 887, column: 16, scope: !3141)
!3184 = !DILocation(line: 887, column: 14, scope: !3141)
!3185 = !DILocation(line: 888, column: 5, scope: !3142)
!3186 = !DILocation(line: 888, column: 5, scope: !3141)
!3187 = !DILocation(line: 891, column: 19, scope: !3145)
!3188 = !DILocation(line: 891, column: 25, scope: !3145)
!3189 = !DILocation(line: 0, scope: !3145)
!3190 = !DILocation(line: 892, column: 23, scope: !3145)
!3191 = !DILocation(line: 894, column: 26, scope: !3145)
!3192 = !DILocation(line: 894, column: 32, scope: !3145)
!3193 = !DILocation(line: 896, column: 55, scope: !3145)
!3194 = !DILocation(line: 897, column: 46, scope: !3145)
!3195 = !DILocation(line: 898, column: 55, scope: !3145)
!3196 = !DILocation(line: 899, column: 55, scope: !3145)
!3197 = !DILocation(line: 895, column: 20, scope: !3145)
!3198 = !DILocation(line: 901, column: 14, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3145, file: !405, line: 901, column: 9)
!3200 = !DILocation(line: 901, column: 9, scope: !3145)
!3201 = !DILocation(line: 903, column: 35, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !405, line: 902, column: 7)
!3203 = !DILocation(line: 903, column: 20, scope: !3202)
!3204 = !DILocation(line: 904, column: 17, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !405, line: 904, column: 13)
!3206 = !DILocation(line: 904, column: 13, scope: !3202)
!3207 = !DILocation(line: 905, column: 11, scope: !3205)
!3208 = !DILocation(line: 906, column: 27, scope: !3202)
!3209 = !DILocation(line: 906, column: 19, scope: !3202)
!3210 = !DILocation(line: 907, column: 69, scope: !3202)
!3211 = !DILocation(line: 909, column: 44, scope: !3202)
!3212 = !DILocation(line: 910, column: 44, scope: !3202)
!3213 = !DILocation(line: 907, column: 9, scope: !3202)
!3214 = !DILocation(line: 911, column: 7, scope: !3202)
!3215 = !DILocation(line: 913, column: 11, scope: !3145)
!3216 = !DILocation(line: 914, column: 5, scope: !3145)
!3217 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !405, file: !405, line: 925, type: !3218, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!68, !71, !76, !73}
!3220 = !{!3221, !3222, !3223}
!3221 = !DILocalVariable(name: "n", arg: 1, scope: !3217, file: !405, line: 925, type: !71)
!3222 = !DILocalVariable(name: "arg", arg: 2, scope: !3217, file: !405, line: 925, type: !76)
!3223 = !DILocalVariable(name: "argsize", arg: 3, scope: !3217, file: !405, line: 925, type: !73)
!3224 = !DILocation(line: 0, scope: !3217)
!3225 = !DILocation(line: 927, column: 10, scope: !3217)
!3226 = !DILocation(line: 927, column: 3, scope: !3217)
!3227 = distinct !DISubprogram(name: "quotearg", scope: !405, file: !405, line: 931, type: !825, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3228)
!3228 = !{!3229}
!3229 = !DILocalVariable(name: "arg", arg: 1, scope: !3227, file: !405, line: 931, type: !76)
!3230 = !DILocation(line: 0, scope: !3227)
!3231 = !DILocation(line: 0, scope: !3122, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 933, column: 10, scope: !3227)
!3233 = !DILocation(line: 921, column: 10, scope: !3122, inlinedAt: !3232)
!3234 = !DILocation(line: 933, column: 3, scope: !3227)
!3235 = distinct !DISubprogram(name: "quotearg_mem", scope: !405, file: !405, line: 937, type: !3236, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!68, !76, !73}
!3238 = !{!3239, !3240}
!3239 = !DILocalVariable(name: "arg", arg: 1, scope: !3235, file: !405, line: 937, type: !76)
!3240 = !DILocalVariable(name: "argsize", arg: 2, scope: !3235, file: !405, line: 937, type: !73)
!3241 = !DILocation(line: 0, scope: !3235)
!3242 = !DILocation(line: 0, scope: !3217, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 939, column: 10, scope: !3235)
!3244 = !DILocation(line: 927, column: 10, scope: !3217, inlinedAt: !3243)
!3245 = !DILocation(line: 939, column: 3, scope: !3235)
!3246 = distinct !DISubprogram(name: "quotearg_n_style", scope: !405, file: !405, line: 943, type: !3247, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!68, !71, !38, !76}
!3249 = !{!3250, !3251, !3252, !3253}
!3250 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !405, line: 943, type: !71)
!3251 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !405, line: 943, type: !38)
!3252 = !DILocalVariable(name: "arg", arg: 3, scope: !3246, file: !405, line: 943, type: !76)
!3253 = !DILocalVariable(name: "o", scope: !3246, file: !405, line: 945, type: !2358)
!3254 = !DILocation(line: 0, scope: !3246)
!3255 = !DILocation(line: 945, column: 3, scope: !3246)
!3256 = !DILocation(line: 945, column: 32, scope: !3246)
!3257 = !{!3258}
!3258 = distinct !{!3258, !3259, !"quoting_options_from_style: argument 0"}
!3259 = distinct !{!3259, !"quoting_options_from_style"}
!3260 = !DILocation(line: 945, column: 36, scope: !3246)
!3261 = !DILocalVariable(name: "style", arg: 1, scope: !3262, file: !405, line: 183, type: !38)
!3262 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !405, file: !405, line: 183, type: !3263, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!422, !38}
!3265 = !{!3261, !3266}
!3266 = !DILocalVariable(name: "o", scope: !3262, file: !405, line: 185, type: !422)
!3267 = !DILocation(line: 0, scope: !3262, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 945, column: 36, scope: !3246)
!3269 = !DILocation(line: 185, column: 26, scope: !3262, inlinedAt: !3268)
!3270 = !DILocation(line: 186, column: 13, scope: !3271, inlinedAt: !3268)
!3271 = distinct !DILexicalBlock(scope: !3262, file: !405, line: 186, column: 7)
!3272 = !DILocation(line: 186, column: 7, scope: !3262, inlinedAt: !3268)
!3273 = !DILocation(line: 187, column: 5, scope: !3271, inlinedAt: !3268)
!3274 = !DILocation(line: 188, column: 5, scope: !3262, inlinedAt: !3268)
!3275 = !DILocation(line: 188, column: 11, scope: !3262, inlinedAt: !3268)
!3276 = !DILocation(line: 946, column: 10, scope: !3246)
!3277 = !DILocation(line: 947, column: 1, scope: !3246)
!3278 = !DILocation(line: 946, column: 3, scope: !3246)
!3279 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !405, file: !405, line: 950, type: !3280, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!68, !71, !38, !76, !73}
!3282 = !{!3283, !3284, !3285, !3286, !3287}
!3283 = !DILocalVariable(name: "n", arg: 1, scope: !3279, file: !405, line: 950, type: !71)
!3284 = !DILocalVariable(name: "s", arg: 2, scope: !3279, file: !405, line: 950, type: !38)
!3285 = !DILocalVariable(name: "arg", arg: 3, scope: !3279, file: !405, line: 951, type: !76)
!3286 = !DILocalVariable(name: "argsize", arg: 4, scope: !3279, file: !405, line: 951, type: !73)
!3287 = !DILocalVariable(name: "o", scope: !3279, file: !405, line: 953, type: !2358)
!3288 = !DILocation(line: 0, scope: !3279)
!3289 = !DILocation(line: 953, column: 3, scope: !3279)
!3290 = !DILocation(line: 953, column: 32, scope: !3279)
!3291 = !{!3292}
!3292 = distinct !{!3292, !3293, !"quoting_options_from_style: argument 0"}
!3293 = distinct !{!3293, !"quoting_options_from_style"}
!3294 = !DILocation(line: 953, column: 36, scope: !3279)
!3295 = !DILocation(line: 0, scope: !3262, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 953, column: 36, scope: !3279)
!3297 = !DILocation(line: 185, column: 26, scope: !3262, inlinedAt: !3296)
!3298 = !DILocation(line: 186, column: 13, scope: !3271, inlinedAt: !3296)
!3299 = !DILocation(line: 186, column: 7, scope: !3262, inlinedAt: !3296)
!3300 = !DILocation(line: 187, column: 5, scope: !3271, inlinedAt: !3296)
!3301 = !DILocation(line: 188, column: 5, scope: !3262, inlinedAt: !3296)
!3302 = !DILocation(line: 188, column: 11, scope: !3262, inlinedAt: !3296)
!3303 = !DILocation(line: 954, column: 10, scope: !3279)
!3304 = !DILocation(line: 955, column: 1, scope: !3279)
!3305 = !DILocation(line: 954, column: 3, scope: !3279)
!3306 = distinct !DISubprogram(name: "quotearg_style", scope: !405, file: !405, line: 958, type: !3307, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!68, !38, !76}
!3309 = !{!3310, !3311}
!3310 = !DILocalVariable(name: "s", arg: 1, scope: !3306, file: !405, line: 958, type: !38)
!3311 = !DILocalVariable(name: "arg", arg: 2, scope: !3306, file: !405, line: 958, type: !76)
!3312 = !DILocation(line: 0, scope: !3306)
!3313 = !DILocation(line: 0, scope: !3246, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 960, column: 10, scope: !3306)
!3315 = !DILocation(line: 945, column: 3, scope: !3246, inlinedAt: !3314)
!3316 = !DILocation(line: 945, column: 32, scope: !3246, inlinedAt: !3314)
!3317 = !{!3318}
!3318 = distinct !{!3318, !3319, !"quoting_options_from_style: argument 0"}
!3319 = distinct !{!3319, !"quoting_options_from_style"}
!3320 = !DILocation(line: 945, column: 36, scope: !3246, inlinedAt: !3314)
!3321 = !DILocation(line: 0, scope: !3262, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 945, column: 36, scope: !3246, inlinedAt: !3314)
!3323 = !DILocation(line: 185, column: 26, scope: !3262, inlinedAt: !3322)
!3324 = !DILocation(line: 186, column: 13, scope: !3271, inlinedAt: !3322)
!3325 = !DILocation(line: 186, column: 7, scope: !3262, inlinedAt: !3322)
!3326 = !DILocation(line: 187, column: 5, scope: !3271, inlinedAt: !3322)
!3327 = !DILocation(line: 188, column: 5, scope: !3262, inlinedAt: !3322)
!3328 = !DILocation(line: 188, column: 11, scope: !3262, inlinedAt: !3322)
!3329 = !DILocation(line: 946, column: 10, scope: !3246, inlinedAt: !3314)
!3330 = !DILocation(line: 947, column: 1, scope: !3246, inlinedAt: !3314)
!3331 = !DILocation(line: 960, column: 3, scope: !3306)
!3332 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !405, file: !405, line: 964, type: !3333, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!68, !38, !76, !73}
!3335 = !{!3336, !3337, !3338}
!3336 = !DILocalVariable(name: "s", arg: 1, scope: !3332, file: !405, line: 964, type: !38)
!3337 = !DILocalVariable(name: "arg", arg: 2, scope: !3332, file: !405, line: 964, type: !76)
!3338 = !DILocalVariable(name: "argsize", arg: 3, scope: !3332, file: !405, line: 964, type: !73)
!3339 = !DILocation(line: 0, scope: !3332)
!3340 = !DILocation(line: 0, scope: !3279, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 966, column: 10, scope: !3332)
!3342 = !DILocation(line: 953, column: 3, scope: !3279, inlinedAt: !3341)
!3343 = !DILocation(line: 953, column: 32, scope: !3279, inlinedAt: !3341)
!3344 = !{!3345}
!3345 = distinct !{!3345, !3346, !"quoting_options_from_style: argument 0"}
!3346 = distinct !{!3346, !"quoting_options_from_style"}
!3347 = !DILocation(line: 953, column: 36, scope: !3279, inlinedAt: !3341)
!3348 = !DILocation(line: 0, scope: !3262, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 953, column: 36, scope: !3279, inlinedAt: !3341)
!3350 = !DILocation(line: 185, column: 26, scope: !3262, inlinedAt: !3349)
!3351 = !DILocation(line: 186, column: 13, scope: !3271, inlinedAt: !3349)
!3352 = !DILocation(line: 186, column: 7, scope: !3262, inlinedAt: !3349)
!3353 = !DILocation(line: 187, column: 5, scope: !3271, inlinedAt: !3349)
!3354 = !DILocation(line: 188, column: 5, scope: !3262, inlinedAt: !3349)
!3355 = !DILocation(line: 188, column: 11, scope: !3262, inlinedAt: !3349)
!3356 = !DILocation(line: 954, column: 10, scope: !3279, inlinedAt: !3341)
!3357 = !DILocation(line: 955, column: 1, scope: !3279, inlinedAt: !3341)
!3358 = !DILocation(line: 966, column: 3, scope: !3332)
!3359 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !405, file: !405, line: 970, type: !3360, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!68, !76, !73, !69}
!3362 = !{!3363, !3364, !3365, !3366}
!3363 = !DILocalVariable(name: "arg", arg: 1, scope: !3359, file: !405, line: 970, type: !76)
!3364 = !DILocalVariable(name: "argsize", arg: 2, scope: !3359, file: !405, line: 970, type: !73)
!3365 = !DILocalVariable(name: "ch", arg: 3, scope: !3359, file: !405, line: 970, type: !69)
!3366 = !DILocalVariable(name: "options", scope: !3359, file: !405, line: 972, type: !422)
!3367 = !DILocation(line: 0, scope: !3359)
!3368 = !DILocation(line: 972, column: 3, scope: !3359)
!3369 = !DILocation(line: 972, column: 26, scope: !3359)
!3370 = !DILocation(line: 973, column: 13, scope: !3359)
!3371 = !{i64 0, i64 4, !722, i64 4, i64 4, !713, i64 8, i64 32, !722, i64 40, i64 8, !609, i64 48, i64 8, !609}
!3372 = !DILocation(line: 0, scope: !2378, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 974, column: 3, scope: !3359)
!3374 = !DILocation(line: 147, column: 62, scope: !2378, inlinedAt: !3373)
!3375 = !DILocation(line: 147, column: 57, scope: !2378, inlinedAt: !3373)
!3376 = !DILocation(line: 148, column: 15, scope: !2378, inlinedAt: !3373)
!3377 = !DILocation(line: 149, column: 21, scope: !2378, inlinedAt: !3373)
!3378 = !DILocation(line: 149, column: 24, scope: !2378, inlinedAt: !3373)
!3379 = !DILocation(line: 149, column: 34, scope: !2378, inlinedAt: !3373)
!3380 = !DILocation(line: 150, column: 19, scope: !2378, inlinedAt: !3373)
!3381 = !DILocation(line: 150, column: 24, scope: !2378, inlinedAt: !3373)
!3382 = !DILocation(line: 150, column: 6, scope: !2378, inlinedAt: !3373)
!3383 = !DILocation(line: 975, column: 10, scope: !3359)
!3384 = !DILocation(line: 976, column: 1, scope: !3359)
!3385 = !DILocation(line: 975, column: 3, scope: !3359)
!3386 = distinct !DISubprogram(name: "quotearg_char", scope: !405, file: !405, line: 979, type: !3387, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!68, !76, !69}
!3389 = !{!3390, !3391}
!3390 = !DILocalVariable(name: "arg", arg: 1, scope: !3386, file: !405, line: 979, type: !76)
!3391 = !DILocalVariable(name: "ch", arg: 2, scope: !3386, file: !405, line: 979, type: !69)
!3392 = !DILocation(line: 0, scope: !3386)
!3393 = !DILocation(line: 0, scope: !3359, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 981, column: 10, scope: !3386)
!3395 = !DILocation(line: 972, column: 3, scope: !3359, inlinedAt: !3394)
!3396 = !DILocation(line: 972, column: 26, scope: !3359, inlinedAt: !3394)
!3397 = !DILocation(line: 973, column: 13, scope: !3359, inlinedAt: !3394)
!3398 = !DILocation(line: 0, scope: !2378, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 974, column: 3, scope: !3359, inlinedAt: !3394)
!3400 = !DILocation(line: 147, column: 62, scope: !2378, inlinedAt: !3399)
!3401 = !DILocation(line: 147, column: 57, scope: !2378, inlinedAt: !3399)
!3402 = !DILocation(line: 148, column: 15, scope: !2378, inlinedAt: !3399)
!3403 = !DILocation(line: 149, column: 21, scope: !2378, inlinedAt: !3399)
!3404 = !DILocation(line: 149, column: 24, scope: !2378, inlinedAt: !3399)
!3405 = !DILocation(line: 149, column: 34, scope: !2378, inlinedAt: !3399)
!3406 = !DILocation(line: 150, column: 19, scope: !2378, inlinedAt: !3399)
!3407 = !DILocation(line: 150, column: 24, scope: !2378, inlinedAt: !3399)
!3408 = !DILocation(line: 150, column: 6, scope: !2378, inlinedAt: !3399)
!3409 = !DILocation(line: 975, column: 10, scope: !3359, inlinedAt: !3394)
!3410 = !DILocation(line: 976, column: 1, scope: !3359, inlinedAt: !3394)
!3411 = !DILocation(line: 981, column: 3, scope: !3386)
!3412 = distinct !DISubprogram(name: "quotearg_colon", scope: !405, file: !405, line: 985, type: !825, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3413)
!3413 = !{!3414}
!3414 = !DILocalVariable(name: "arg", arg: 1, scope: !3412, file: !405, line: 985, type: !76)
!3415 = !DILocation(line: 0, scope: !3412)
!3416 = !DILocation(line: 0, scope: !3386, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 987, column: 10, scope: !3412)
!3418 = !DILocation(line: 0, scope: !3359, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 981, column: 10, scope: !3386, inlinedAt: !3417)
!3420 = !DILocation(line: 972, column: 3, scope: !3359, inlinedAt: !3419)
!3421 = !DILocation(line: 972, column: 26, scope: !3359, inlinedAt: !3419)
!3422 = !DILocation(line: 973, column: 13, scope: !3359, inlinedAt: !3419)
!3423 = !DILocation(line: 0, scope: !2378, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 974, column: 3, scope: !3359, inlinedAt: !3419)
!3425 = !DILocation(line: 147, column: 57, scope: !2378, inlinedAt: !3424)
!3426 = !DILocation(line: 149, column: 21, scope: !2378, inlinedAt: !3424)
!3427 = !DILocation(line: 150, column: 6, scope: !2378, inlinedAt: !3424)
!3428 = !DILocation(line: 975, column: 10, scope: !3359, inlinedAt: !3419)
!3429 = !DILocation(line: 976, column: 1, scope: !3359, inlinedAt: !3419)
!3430 = !DILocation(line: 987, column: 3, scope: !3412)
!3431 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !405, file: !405, line: 991, type: !3236, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3432)
!3432 = !{!3433, !3434}
!3433 = !DILocalVariable(name: "arg", arg: 1, scope: !3431, file: !405, line: 991, type: !76)
!3434 = !DILocalVariable(name: "argsize", arg: 2, scope: !3431, file: !405, line: 991, type: !73)
!3435 = !DILocation(line: 0, scope: !3431)
!3436 = !DILocation(line: 0, scope: !3359, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 993, column: 10, scope: !3431)
!3438 = !DILocation(line: 972, column: 3, scope: !3359, inlinedAt: !3437)
!3439 = !DILocation(line: 972, column: 26, scope: !3359, inlinedAt: !3437)
!3440 = !DILocation(line: 973, column: 13, scope: !3359, inlinedAt: !3437)
!3441 = !DILocation(line: 0, scope: !2378, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 974, column: 3, scope: !3359, inlinedAt: !3437)
!3443 = !DILocation(line: 147, column: 57, scope: !2378, inlinedAt: !3442)
!3444 = !DILocation(line: 149, column: 21, scope: !2378, inlinedAt: !3442)
!3445 = !DILocation(line: 150, column: 6, scope: !2378, inlinedAt: !3442)
!3446 = !DILocation(line: 975, column: 10, scope: !3359, inlinedAt: !3437)
!3447 = !DILocation(line: 976, column: 1, scope: !3359, inlinedAt: !3437)
!3448 = !DILocation(line: 993, column: 3, scope: !3431)
!3449 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !405, file: !405, line: 997, type: !3247, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3450)
!3450 = !{!3451, !3452, !3453, !3454}
!3451 = !DILocalVariable(name: "n", arg: 1, scope: !3449, file: !405, line: 997, type: !71)
!3452 = !DILocalVariable(name: "s", arg: 2, scope: !3449, file: !405, line: 997, type: !38)
!3453 = !DILocalVariable(name: "arg", arg: 3, scope: !3449, file: !405, line: 997, type: !76)
!3454 = !DILocalVariable(name: "options", scope: !3449, file: !405, line: 999, type: !422)
!3455 = !DILocation(line: 0, scope: !3449)
!3456 = !DILocation(line: 999, column: 3, scope: !3449)
!3457 = !DILocation(line: 999, column: 26, scope: !3449)
!3458 = !DILocation(line: 0, scope: !3262, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 1000, column: 13, scope: !3449)
!3460 = !DILocation(line: 186, column: 13, scope: !3271, inlinedAt: !3459)
!3461 = !DILocation(line: 186, column: 7, scope: !3262, inlinedAt: !3459)
!3462 = !DILocation(line: 187, column: 5, scope: !3271, inlinedAt: !3459)
!3463 = !{!3464}
!3464 = distinct !{!3464, !3465, !"quoting_options_from_style: argument 0"}
!3465 = distinct !{!3465, !"quoting_options_from_style"}
!3466 = !DILocation(line: 1000, column: 13, scope: !3449)
!3467 = !DILocation(line: 0, scope: !2378, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 1001, column: 3, scope: !3449)
!3469 = !DILocation(line: 147, column: 57, scope: !2378, inlinedAt: !3468)
!3470 = !DILocation(line: 149, column: 21, scope: !2378, inlinedAt: !3468)
!3471 = !DILocation(line: 150, column: 6, scope: !2378, inlinedAt: !3468)
!3472 = !DILocation(line: 1002, column: 10, scope: !3449)
!3473 = !DILocation(line: 1003, column: 1, scope: !3449)
!3474 = !DILocation(line: 1002, column: 3, scope: !3449)
!3475 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !405, file: !405, line: 1006, type: !3476, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!68, !71, !76, !76, !76}
!3478 = !{!3479, !3480, !3481, !3482}
!3479 = !DILocalVariable(name: "n", arg: 1, scope: !3475, file: !405, line: 1006, type: !71)
!3480 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3475, file: !405, line: 1006, type: !76)
!3481 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3475, file: !405, line: 1007, type: !76)
!3482 = !DILocalVariable(name: "arg", arg: 4, scope: !3475, file: !405, line: 1007, type: !76)
!3483 = !DILocation(line: 0, scope: !3475)
!3484 = !DILocalVariable(name: "n", arg: 1, scope: !3485, file: !405, line: 1014, type: !71)
!3485 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !405, file: !405, line: 1014, type: !3486, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!68, !71, !76, !76, !76, !73}
!3488 = !{!3484, !3489, !3490, !3491, !3492, !3493}
!3489 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3485, file: !405, line: 1014, type: !76)
!3490 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3485, file: !405, line: 1015, type: !76)
!3491 = !DILocalVariable(name: "arg", arg: 4, scope: !3485, file: !405, line: 1016, type: !76)
!3492 = !DILocalVariable(name: "argsize", arg: 5, scope: !3485, file: !405, line: 1016, type: !73)
!3493 = !DILocalVariable(name: "o", scope: !3485, file: !405, line: 1018, type: !422)
!3494 = !DILocation(line: 0, scope: !3485, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 1009, column: 10, scope: !3475)
!3496 = !DILocation(line: 1018, column: 3, scope: !3485, inlinedAt: !3495)
!3497 = !DILocation(line: 1018, column: 26, scope: !3485, inlinedAt: !3495)
!3498 = !DILocation(line: 1018, column: 30, scope: !3485, inlinedAt: !3495)
!3499 = !DILocation(line: 0, scope: !2418, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 1019, column: 3, scope: !3485, inlinedAt: !3495)
!3501 = !DILocation(line: 174, column: 6, scope: !2418, inlinedAt: !3500)
!3502 = !DILocation(line: 174, column: 12, scope: !2418, inlinedAt: !3500)
!3503 = !DILocation(line: 175, column: 8, scope: !2432, inlinedAt: !3500)
!3504 = !DILocation(line: 175, column: 19, scope: !2432, inlinedAt: !3500)
!3505 = !DILocation(line: 176, column: 5, scope: !2432, inlinedAt: !3500)
!3506 = !DILocation(line: 177, column: 6, scope: !2418, inlinedAt: !3500)
!3507 = !DILocation(line: 177, column: 17, scope: !2418, inlinedAt: !3500)
!3508 = !DILocation(line: 178, column: 6, scope: !2418, inlinedAt: !3500)
!3509 = !DILocation(line: 178, column: 18, scope: !2418, inlinedAt: !3500)
!3510 = !DILocation(line: 1020, column: 10, scope: !3485, inlinedAt: !3495)
!3511 = !DILocation(line: 1021, column: 1, scope: !3485, inlinedAt: !3495)
!3512 = !DILocation(line: 1009, column: 3, scope: !3475)
!3513 = !DILocation(line: 0, scope: !3485)
!3514 = !DILocation(line: 1018, column: 3, scope: !3485)
!3515 = !DILocation(line: 1018, column: 26, scope: !3485)
!3516 = !DILocation(line: 1018, column: 30, scope: !3485)
!3517 = !DILocation(line: 0, scope: !2418, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 1019, column: 3, scope: !3485)
!3519 = !DILocation(line: 174, column: 6, scope: !2418, inlinedAt: !3518)
!3520 = !DILocation(line: 174, column: 12, scope: !2418, inlinedAt: !3518)
!3521 = !DILocation(line: 175, column: 8, scope: !2432, inlinedAt: !3518)
!3522 = !DILocation(line: 175, column: 19, scope: !2432, inlinedAt: !3518)
!3523 = !DILocation(line: 176, column: 5, scope: !2432, inlinedAt: !3518)
!3524 = !DILocation(line: 177, column: 6, scope: !2418, inlinedAt: !3518)
!3525 = !DILocation(line: 177, column: 17, scope: !2418, inlinedAt: !3518)
!3526 = !DILocation(line: 178, column: 6, scope: !2418, inlinedAt: !3518)
!3527 = !DILocation(line: 178, column: 18, scope: !2418, inlinedAt: !3518)
!3528 = !DILocation(line: 1020, column: 10, scope: !3485)
!3529 = !DILocation(line: 1021, column: 1, scope: !3485)
!3530 = !DILocation(line: 1020, column: 3, scope: !3485)
!3531 = distinct !DISubprogram(name: "quotearg_custom", scope: !405, file: !405, line: 1024, type: !3532, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!68, !76, !76, !76}
!3534 = !{!3535, !3536, !3537}
!3535 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3531, file: !405, line: 1024, type: !76)
!3536 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3531, file: !405, line: 1024, type: !76)
!3537 = !DILocalVariable(name: "arg", arg: 3, scope: !3531, file: !405, line: 1025, type: !76)
!3538 = !DILocation(line: 0, scope: !3531)
!3539 = !DILocation(line: 0, scope: !3475, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 1027, column: 10, scope: !3531)
!3541 = !DILocation(line: 0, scope: !3485, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 1009, column: 10, scope: !3475, inlinedAt: !3540)
!3543 = !DILocation(line: 1018, column: 3, scope: !3485, inlinedAt: !3542)
!3544 = !DILocation(line: 1018, column: 26, scope: !3485, inlinedAt: !3542)
!3545 = !DILocation(line: 1018, column: 30, scope: !3485, inlinedAt: !3542)
!3546 = !DILocation(line: 0, scope: !2418, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 1019, column: 3, scope: !3485, inlinedAt: !3542)
!3548 = !DILocation(line: 174, column: 6, scope: !2418, inlinedAt: !3547)
!3549 = !DILocation(line: 174, column: 12, scope: !2418, inlinedAt: !3547)
!3550 = !DILocation(line: 175, column: 8, scope: !2432, inlinedAt: !3547)
!3551 = !DILocation(line: 175, column: 19, scope: !2432, inlinedAt: !3547)
!3552 = !DILocation(line: 176, column: 5, scope: !2432, inlinedAt: !3547)
!3553 = !DILocation(line: 177, column: 6, scope: !2418, inlinedAt: !3547)
!3554 = !DILocation(line: 177, column: 17, scope: !2418, inlinedAt: !3547)
!3555 = !DILocation(line: 178, column: 6, scope: !2418, inlinedAt: !3547)
!3556 = !DILocation(line: 178, column: 18, scope: !2418, inlinedAt: !3547)
!3557 = !DILocation(line: 1020, column: 10, scope: !3485, inlinedAt: !3542)
!3558 = !DILocation(line: 1021, column: 1, scope: !3485, inlinedAt: !3542)
!3559 = !DILocation(line: 1027, column: 3, scope: !3531)
!3560 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !405, file: !405, line: 1031, type: !3561, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!68, !76, !76, !76, !73}
!3563 = !{!3564, !3565, !3566, !3567}
!3564 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3560, file: !405, line: 1031, type: !76)
!3565 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3560, file: !405, line: 1031, type: !76)
!3566 = !DILocalVariable(name: "arg", arg: 3, scope: !3560, file: !405, line: 1032, type: !76)
!3567 = !DILocalVariable(name: "argsize", arg: 4, scope: !3560, file: !405, line: 1032, type: !73)
!3568 = !DILocation(line: 0, scope: !3560)
!3569 = !DILocation(line: 0, scope: !3485, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 1034, column: 10, scope: !3560)
!3571 = !DILocation(line: 1018, column: 3, scope: !3485, inlinedAt: !3570)
!3572 = !DILocation(line: 1018, column: 26, scope: !3485, inlinedAt: !3570)
!3573 = !DILocation(line: 1018, column: 30, scope: !3485, inlinedAt: !3570)
!3574 = !DILocation(line: 0, scope: !2418, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 1019, column: 3, scope: !3485, inlinedAt: !3570)
!3576 = !DILocation(line: 174, column: 6, scope: !2418, inlinedAt: !3575)
!3577 = !DILocation(line: 174, column: 12, scope: !2418, inlinedAt: !3575)
!3578 = !DILocation(line: 175, column: 8, scope: !2432, inlinedAt: !3575)
!3579 = !DILocation(line: 175, column: 19, scope: !2432, inlinedAt: !3575)
!3580 = !DILocation(line: 176, column: 5, scope: !2432, inlinedAt: !3575)
!3581 = !DILocation(line: 177, column: 6, scope: !2418, inlinedAt: !3575)
!3582 = !DILocation(line: 177, column: 17, scope: !2418, inlinedAt: !3575)
!3583 = !DILocation(line: 178, column: 6, scope: !2418, inlinedAt: !3575)
!3584 = !DILocation(line: 178, column: 18, scope: !2418, inlinedAt: !3575)
!3585 = !DILocation(line: 1020, column: 10, scope: !3485, inlinedAt: !3570)
!3586 = !DILocation(line: 1021, column: 1, scope: !3485, inlinedAt: !3570)
!3587 = !DILocation(line: 1034, column: 3, scope: !3560)
!3588 = distinct !DISubprogram(name: "quote_n_mem", scope: !405, file: !405, line: 1049, type: !3589, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!76, !71, !76, !73}
!3591 = !{!3592, !3593, !3594}
!3592 = !DILocalVariable(name: "n", arg: 1, scope: !3588, file: !405, line: 1049, type: !71)
!3593 = !DILocalVariable(name: "arg", arg: 2, scope: !3588, file: !405, line: 1049, type: !76)
!3594 = !DILocalVariable(name: "argsize", arg: 3, scope: !3588, file: !405, line: 1049, type: !73)
!3595 = !DILocation(line: 0, scope: !3588)
!3596 = !DILocation(line: 1051, column: 10, scope: !3588)
!3597 = !DILocation(line: 1051, column: 3, scope: !3588)
!3598 = distinct !DISubprogram(name: "quote_mem", scope: !405, file: !405, line: 1055, type: !3599, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!76, !76, !73}
!3601 = !{!3602, !3603}
!3602 = !DILocalVariable(name: "arg", arg: 1, scope: !3598, file: !405, line: 1055, type: !76)
!3603 = !DILocalVariable(name: "argsize", arg: 2, scope: !3598, file: !405, line: 1055, type: !73)
!3604 = !DILocation(line: 0, scope: !3598)
!3605 = !DILocation(line: 0, scope: !3588, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 1057, column: 10, scope: !3598)
!3607 = !DILocation(line: 1051, column: 10, scope: !3588, inlinedAt: !3606)
!3608 = !DILocation(line: 1057, column: 3, scope: !3598)
!3609 = distinct !DISubprogram(name: "quote_n", scope: !405, file: !405, line: 1061, type: !3610, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!76, !71, !76}
!3612 = !{!3613, !3614}
!3613 = !DILocalVariable(name: "n", arg: 1, scope: !3609, file: !405, line: 1061, type: !71)
!3614 = !DILocalVariable(name: "arg", arg: 2, scope: !3609, file: !405, line: 1061, type: !76)
!3615 = !DILocation(line: 0, scope: !3609)
!3616 = !DILocation(line: 0, scope: !3588, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 1063, column: 10, scope: !3609)
!3618 = !DILocation(line: 1051, column: 10, scope: !3588, inlinedAt: !3617)
!3619 = !DILocation(line: 1063, column: 3, scope: !3609)
!3620 = distinct !DISubprogram(name: "quote", scope: !405, file: !405, line: 1067, type: !3621, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!76, !76}
!3623 = !{!3624}
!3624 = !DILocalVariable(name: "arg", arg: 1, scope: !3620, file: !405, line: 1067, type: !76)
!3625 = !DILocation(line: 0, scope: !3620)
!3626 = !DILocation(line: 0, scope: !3609, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 1069, column: 10, scope: !3620)
!3628 = !DILocation(line: 0, scope: !3588, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 1063, column: 10, scope: !3609, inlinedAt: !3627)
!3630 = !DILocation(line: 1051, column: 10, scope: !3588, inlinedAt: !3629)
!3631 = !DILocation(line: 1069, column: 3, scope: !3620)
!3632 = distinct !DISubprogram(name: "version_etc_arn", scope: !520, file: !520, line: 61, type: !3633, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3670)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !3635, !76, !76, !76, !3669, !73}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !3637)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !3638)
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3637, file: !177, line: 51, baseType: !71, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3637, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3637, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3637, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3637, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3637, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3637, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3637, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3637, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3637, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3637, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3637, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3637, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3637, file: !177, line: 70, baseType: !3653, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3637, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3637, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3637, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3637, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3637, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3637, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3637, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3637, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3637, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3637, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3637, file: !177, line: 93, baseType: !3653, size: 64, offset: 1344)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3637, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3637, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3637, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3637, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!3670 = !{!3671, !3672, !3673, !3674, !3675, !3676}
!3671 = !DILocalVariable(name: "stream", arg: 1, scope: !3632, file: !520, line: 61, type: !3635)
!3672 = !DILocalVariable(name: "command_name", arg: 2, scope: !3632, file: !520, line: 62, type: !76)
!3673 = !DILocalVariable(name: "package", arg: 3, scope: !3632, file: !520, line: 62, type: !76)
!3674 = !DILocalVariable(name: "version", arg: 4, scope: !3632, file: !520, line: 63, type: !76)
!3675 = !DILocalVariable(name: "authors", arg: 5, scope: !3632, file: !520, line: 64, type: !3669)
!3676 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3632, file: !520, line: 64, type: !73)
!3677 = !DILocation(line: 0, scope: !3632)
!3678 = !DILocation(line: 66, column: 7, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3632, file: !520, line: 66, column: 7)
!3680 = !DILocation(line: 66, column: 7, scope: !3632)
!3681 = !DILocation(line: 67, column: 5, scope: !3679)
!3682 = !DILocation(line: 69, column: 5, scope: !3679)
!3683 = !DILocation(line: 83, column: 3, scope: !3632)
!3684 = !DILocation(line: 85, column: 3, scope: !3632)
!3685 = !DILocation(line: 88, column: 3, scope: !3632)
!3686 = !DILocation(line: 95, column: 3, scope: !3632)
!3687 = !DILocation(line: 97, column: 3, scope: !3632)
!3688 = !DILocation(line: 105, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3632, file: !520, line: 98, column: 5)
!3690 = !DILocation(line: 106, column: 7, scope: !3689)
!3691 = !DILocation(line: 109, column: 7, scope: !3689)
!3692 = !DILocation(line: 110, column: 7, scope: !3689)
!3693 = !DILocation(line: 113, column: 7, scope: !3689)
!3694 = !DILocation(line: 115, column: 7, scope: !3689)
!3695 = !DILocation(line: 120, column: 7, scope: !3689)
!3696 = !DILocation(line: 122, column: 7, scope: !3689)
!3697 = !DILocation(line: 127, column: 7, scope: !3689)
!3698 = !DILocation(line: 129, column: 7, scope: !3689)
!3699 = !DILocation(line: 134, column: 7, scope: !3689)
!3700 = !DILocation(line: 137, column: 7, scope: !3689)
!3701 = !DILocation(line: 142, column: 7, scope: !3689)
!3702 = !DILocation(line: 145, column: 7, scope: !3689)
!3703 = !DILocation(line: 150, column: 7, scope: !3689)
!3704 = !DILocation(line: 154, column: 7, scope: !3689)
!3705 = !DILocation(line: 159, column: 7, scope: !3689)
!3706 = !DILocation(line: 163, column: 7, scope: !3689)
!3707 = !DILocation(line: 170, column: 7, scope: !3689)
!3708 = !DILocation(line: 174, column: 7, scope: !3689)
!3709 = !DILocation(line: 176, column: 1, scope: !3632)
!3710 = distinct !DISubprogram(name: "version_etc_ar", scope: !520, file: !520, line: 183, type: !3711, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !3635, !76, !76, !76, !3669}
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719}
!3714 = !DILocalVariable(name: "stream", arg: 1, scope: !3710, file: !520, line: 183, type: !3635)
!3715 = !DILocalVariable(name: "command_name", arg: 2, scope: !3710, file: !520, line: 184, type: !76)
!3716 = !DILocalVariable(name: "package", arg: 3, scope: !3710, file: !520, line: 184, type: !76)
!3717 = !DILocalVariable(name: "version", arg: 4, scope: !3710, file: !520, line: 185, type: !76)
!3718 = !DILocalVariable(name: "authors", arg: 5, scope: !3710, file: !520, line: 185, type: !3669)
!3719 = !DILocalVariable(name: "n_authors", scope: !3710, file: !520, line: 187, type: !73)
!3720 = !DILocation(line: 0, scope: !3710)
!3721 = !DILocation(line: 189, column: 8, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3710, file: !520, line: 189, column: 3)
!3723 = !DILocation(line: 0, scope: !3722)
!3724 = !DILocation(line: 189, column: 23, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3722, file: !520, line: 189, column: 3)
!3726 = !DILocation(line: 189, column: 3, scope: !3722)
!3727 = !DILocation(line: 189, column: 52, scope: !3725)
!3728 = distinct !{!3728, !3726, !3729, !680}
!3729 = !DILocation(line: 190, column: 5, scope: !3722)
!3730 = !DILocation(line: 191, column: 3, scope: !3710)
!3731 = !DILocation(line: 192, column: 1, scope: !3710)
!3732 = distinct !DISubprogram(name: "version_etc_va", scope: !520, file: !520, line: 199, type: !3733, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3746)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3635, !76, !76, !76, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !333, line: 52, baseType: !3736)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !335, line: 32, baseType: !3737)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3738, baseType: !3739)
!3738 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !339, size: 256, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3744, !3745}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3739, file: !3738, line: 192, baseType: !70, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3739, file: !3738, line: 192, baseType: !70, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3739, file: !3738, line: 192, baseType: !70, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3739, file: !3738, line: 192, baseType: !71, size: 32, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3739, file: !3738, line: 192, baseType: !71, size: 32, offset: 224)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753}
!3747 = !DILocalVariable(name: "stream", arg: 1, scope: !3732, file: !520, line: 199, type: !3635)
!3748 = !DILocalVariable(name: "command_name", arg: 2, scope: !3732, file: !520, line: 200, type: !76)
!3749 = !DILocalVariable(name: "package", arg: 3, scope: !3732, file: !520, line: 200, type: !76)
!3750 = !DILocalVariable(name: "version", arg: 4, scope: !3732, file: !520, line: 201, type: !76)
!3751 = !DILocalVariable(name: "authors", arg: 5, scope: !3732, file: !520, line: 201, type: !3735)
!3752 = !DILocalVariable(name: "n_authors", scope: !3732, file: !520, line: 203, type: !73)
!3753 = !DILocalVariable(name: "authtab", scope: !3732, file: !520, line: 204, type: !3754)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 640, elements: !418)
!3755 = !DILocation(line: 0, scope: !3732)
!3756 = !DILocation(line: 201, column: 46, scope: !3732)
!3757 = !DILocation(line: 204, column: 3, scope: !3732)
!3758 = !DILocation(line: 204, column: 15, scope: !3732)
!3759 = !DILocation(line: 208, column: 35, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !520, line: 206, column: 3)
!3761 = distinct !DILexicalBlock(scope: !3732, file: !520, line: 206, column: 3)
!3762 = !DILocation(line: 208, column: 14, scope: !3760)
!3763 = !DILocation(line: 208, column: 33, scope: !3760)
!3764 = !DILocation(line: 208, column: 67, scope: !3760)
!3765 = !DILocation(line: 206, column: 3, scope: !3761)
!3766 = !DILocation(line: 0, scope: !3761)
!3767 = !DILocation(line: 211, column: 3, scope: !3732)
!3768 = !DILocation(line: 213, column: 1, scope: !3732)
!3769 = distinct !DISubprogram(name: "version_etc", scope: !520, file: !520, line: 230, type: !3770, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !3635, !76, !76, !76, null}
!3772 = !{!3773, !3774, !3775, !3776, !3777}
!3773 = !DILocalVariable(name: "stream", arg: 1, scope: !3769, file: !520, line: 230, type: !3635)
!3774 = !DILocalVariable(name: "command_name", arg: 2, scope: !3769, file: !520, line: 231, type: !76)
!3775 = !DILocalVariable(name: "package", arg: 3, scope: !3769, file: !520, line: 231, type: !76)
!3776 = !DILocalVariable(name: "version", arg: 4, scope: !3769, file: !520, line: 232, type: !76)
!3777 = !DILocalVariable(name: "authors", scope: !3769, file: !520, line: 234, type: !3735)
!3778 = !DILocation(line: 0, scope: !3769)
!3779 = !DILocation(line: 234, column: 3, scope: !3769)
!3780 = !DILocation(line: 234, column: 11, scope: !3769)
!3781 = !DILocation(line: 235, column: 3, scope: !3769)
!3782 = !DILocation(line: 236, column: 3, scope: !3769)
!3783 = !DILocation(line: 237, column: 3, scope: !3769)
!3784 = !DILocation(line: 238, column: 1, scope: !3769)
!3785 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !520, file: !520, line: 241, type: !287, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !618)
!3786 = !DILocation(line: 243, column: 3, scope: !3785)
!3787 = !DILocation(line: 248, column: 3, scope: !3785)
!3788 = !DILocation(line: 254, column: 3, scope: !3785)
!3789 = !DILocation(line: 259, column: 3, scope: !3785)
!3790 = !DILocation(line: 261, column: 1, scope: !3785)
!3791 = distinct !DISubprogram(name: "xnrealloc", scope: !3792, file: !3792, line: 147, type: !3793, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3795)
!3792 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!70, !70, !73, !73}
!3795 = !{!3796, !3797, !3798}
!3796 = !DILocalVariable(name: "p", arg: 1, scope: !3791, file: !3792, line: 147, type: !70)
!3797 = !DILocalVariable(name: "n", arg: 2, scope: !3791, file: !3792, line: 147, type: !73)
!3798 = !DILocalVariable(name: "s", arg: 3, scope: !3791, file: !3792, line: 147, type: !73)
!3799 = !DILocation(line: 0, scope: !3791)
!3800 = !DILocalVariable(name: "p", arg: 1, scope: !3801, file: !526, line: 83, type: !70)
!3801 = distinct !DISubprogram(name: "xreallocarray", scope: !526, file: !526, line: 83, type: !3793, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3802)
!3802 = !{!3800, !3803, !3804}
!3803 = !DILocalVariable(name: "n", arg: 2, scope: !3801, file: !526, line: 83, type: !73)
!3804 = !DILocalVariable(name: "s", arg: 3, scope: !3801, file: !526, line: 83, type: !73)
!3805 = !DILocation(line: 0, scope: !3801, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 149, column: 10, scope: !3791)
!3807 = !DILocation(line: 85, column: 25, scope: !3801, inlinedAt: !3806)
!3808 = !DILocalVariable(name: "p", arg: 1, scope: !3809, file: !526, line: 37, type: !70)
!3809 = distinct !DISubprogram(name: "check_nonnull", scope: !526, file: !526, line: 37, type: !3810, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!70, !70}
!3812 = !{!3808}
!3813 = !DILocation(line: 0, scope: !3809, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 85, column: 10, scope: !3801, inlinedAt: !3806)
!3815 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3814)
!3816 = distinct !DILexicalBlock(scope: !3809, file: !526, line: 39, column: 7)
!3817 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3814)
!3818 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3814)
!3819 = !DILocation(line: 149, column: 3, scope: !3791)
!3820 = !DILocation(line: 0, scope: !3801)
!3821 = !DILocation(line: 85, column: 25, scope: !3801)
!3822 = !DILocation(line: 0, scope: !3809, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 85, column: 10, scope: !3801)
!3824 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3823)
!3825 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3823)
!3826 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3823)
!3827 = !DILocation(line: 85, column: 3, scope: !3801)
!3828 = distinct !DISubprogram(name: "xmalloc", scope: !526, file: !526, line: 47, type: !3829, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!70, !73}
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "s", arg: 1, scope: !3828, file: !526, line: 47, type: !73)
!3833 = !DILocation(line: 0, scope: !3828)
!3834 = !DILocation(line: 49, column: 25, scope: !3828)
!3835 = !DILocation(line: 0, scope: !3809, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 49, column: 10, scope: !3828)
!3837 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3836)
!3838 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3836)
!3839 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3836)
!3840 = !DILocation(line: 49, column: 3, scope: !3828)
!3841 = distinct !DISubprogram(name: "ximalloc", scope: !526, file: !526, line: 53, type: !3842, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3844)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!70, !134}
!3844 = !{!3845}
!3845 = !DILocalVariable(name: "s", arg: 1, scope: !3841, file: !526, line: 53, type: !134)
!3846 = !DILocation(line: 0, scope: !3841)
!3847 = !DILocalVariable(name: "s", arg: 1, scope: !3848, file: !3849, line: 55, type: !134)
!3848 = distinct !DISubprogram(name: "imalloc", scope: !3849, file: !3849, line: 55, type: !3842, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3850)
!3849 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3850 = !{!3847}
!3851 = !DILocation(line: 0, scope: !3848, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 55, column: 25, scope: !3841)
!3853 = !DILocation(line: 57, column: 26, scope: !3848, inlinedAt: !3852)
!3854 = !DILocation(line: 0, scope: !3809, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 55, column: 10, scope: !3841)
!3856 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3855)
!3857 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3855)
!3858 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3855)
!3859 = !DILocation(line: 55, column: 3, scope: !3841)
!3860 = distinct !DISubprogram(name: "xcharalloc", scope: !526, file: !526, line: 59, type: !3861, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!68, !73}
!3863 = !{!3864}
!3864 = !DILocalVariable(name: "n", arg: 1, scope: !3860, file: !526, line: 59, type: !73)
!3865 = !DILocation(line: 0, scope: !3860)
!3866 = !DILocation(line: 0, scope: !3828, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 61, column: 10, scope: !3860)
!3868 = !DILocation(line: 49, column: 25, scope: !3828, inlinedAt: !3867)
!3869 = !DILocation(line: 0, scope: !3809, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 49, column: 10, scope: !3828, inlinedAt: !3867)
!3871 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3870)
!3872 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3870)
!3873 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3870)
!3874 = !DILocation(line: 61, column: 3, scope: !3860)
!3875 = distinct !DISubprogram(name: "xrealloc", scope: !526, file: !526, line: 68, type: !3876, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!70, !70, !73}
!3878 = !{!3879, !3880}
!3879 = !DILocalVariable(name: "p", arg: 1, scope: !3875, file: !526, line: 68, type: !70)
!3880 = !DILocalVariable(name: "s", arg: 2, scope: !3875, file: !526, line: 68, type: !73)
!3881 = !DILocation(line: 0, scope: !3875)
!3882 = !DILocalVariable(name: "ptr", arg: 1, scope: !3883, file: !3884, line: 2057, type: !70)
!3883 = distinct !DISubprogram(name: "rpl_realloc", scope: !3884, file: !3884, line: 2057, type: !3876, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3885)
!3884 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3885 = !{!3882, !3886}
!3886 = !DILocalVariable(name: "size", arg: 2, scope: !3883, file: !3884, line: 2057, type: !73)
!3887 = !DILocation(line: 0, scope: !3883, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 70, column: 25, scope: !3875)
!3889 = !DILocation(line: 2059, column: 24, scope: !3883, inlinedAt: !3888)
!3890 = !DILocation(line: 2059, column: 10, scope: !3883, inlinedAt: !3888)
!3891 = !DILocation(line: 0, scope: !3809, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 70, column: 10, scope: !3875)
!3893 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3892)
!3894 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3892)
!3895 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3892)
!3896 = !DILocation(line: 70, column: 3, scope: !3875)
!3897 = distinct !DISubprogram(name: "xirealloc", scope: !526, file: !526, line: 74, type: !3898, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3900)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!70, !70, !134}
!3900 = !{!3901, !3902}
!3901 = !DILocalVariable(name: "p", arg: 1, scope: !3897, file: !526, line: 74, type: !70)
!3902 = !DILocalVariable(name: "s", arg: 2, scope: !3897, file: !526, line: 74, type: !134)
!3903 = !DILocation(line: 0, scope: !3897)
!3904 = !DILocalVariable(name: "p", arg: 1, scope: !3905, file: !3849, line: 66, type: !70)
!3905 = distinct !DISubprogram(name: "irealloc", scope: !3849, file: !3849, line: 66, type: !3898, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3906)
!3906 = !{!3904, !3907}
!3907 = !DILocalVariable(name: "s", arg: 2, scope: !3905, file: !3849, line: 66, type: !134)
!3908 = !DILocation(line: 0, scope: !3905, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 76, column: 25, scope: !3897)
!3910 = !DILocation(line: 0, scope: !3883, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 68, column: 26, scope: !3905, inlinedAt: !3909)
!3912 = !DILocation(line: 2059, column: 24, scope: !3883, inlinedAt: !3911)
!3913 = !DILocation(line: 2059, column: 10, scope: !3883, inlinedAt: !3911)
!3914 = !DILocation(line: 0, scope: !3809, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 76, column: 10, scope: !3897)
!3916 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3915)
!3917 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3915)
!3918 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3915)
!3919 = !DILocation(line: 76, column: 3, scope: !3897)
!3920 = distinct !DISubprogram(name: "xireallocarray", scope: !526, file: !526, line: 89, type: !3921, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3923)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!70, !70, !134, !134}
!3923 = !{!3924, !3925, !3926}
!3924 = !DILocalVariable(name: "p", arg: 1, scope: !3920, file: !526, line: 89, type: !70)
!3925 = !DILocalVariable(name: "n", arg: 2, scope: !3920, file: !526, line: 89, type: !134)
!3926 = !DILocalVariable(name: "s", arg: 3, scope: !3920, file: !526, line: 89, type: !134)
!3927 = !DILocation(line: 0, scope: !3920)
!3928 = !DILocalVariable(name: "p", arg: 1, scope: !3929, file: !3849, line: 98, type: !70)
!3929 = distinct !DISubprogram(name: "ireallocarray", scope: !3849, file: !3849, line: 98, type: !3921, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3930)
!3930 = !{!3928, !3931, !3932}
!3931 = !DILocalVariable(name: "n", arg: 2, scope: !3929, file: !3849, line: 98, type: !134)
!3932 = !DILocalVariable(name: "s", arg: 3, scope: !3929, file: !3849, line: 98, type: !134)
!3933 = !DILocation(line: 0, scope: !3929, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 91, column: 25, scope: !3920)
!3935 = !DILocation(line: 101, column: 13, scope: !3929, inlinedAt: !3934)
!3936 = !DILocation(line: 0, scope: !3809, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 91, column: 10, scope: !3920)
!3938 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3937)
!3939 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3937)
!3940 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3937)
!3941 = !DILocation(line: 91, column: 3, scope: !3920)
!3942 = distinct !DISubprogram(name: "xnmalloc", scope: !526, file: !526, line: 98, type: !3943, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!70, !73, !73}
!3945 = !{!3946, !3947}
!3946 = !DILocalVariable(name: "n", arg: 1, scope: !3942, file: !526, line: 98, type: !73)
!3947 = !DILocalVariable(name: "s", arg: 2, scope: !3942, file: !526, line: 98, type: !73)
!3948 = !DILocation(line: 0, scope: !3942)
!3949 = !DILocation(line: 0, scope: !3801, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 100, column: 10, scope: !3942)
!3951 = !DILocation(line: 85, column: 25, scope: !3801, inlinedAt: !3950)
!3952 = !DILocation(line: 0, scope: !3809, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 85, column: 10, scope: !3801, inlinedAt: !3950)
!3954 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3953)
!3955 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3953)
!3956 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3953)
!3957 = !DILocation(line: 100, column: 3, scope: !3942)
!3958 = distinct !DISubprogram(name: "xinmalloc", scope: !526, file: !526, line: 104, type: !3959, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!70, !134, !134}
!3961 = !{!3962, !3963}
!3962 = !DILocalVariable(name: "n", arg: 1, scope: !3958, file: !526, line: 104, type: !134)
!3963 = !DILocalVariable(name: "s", arg: 2, scope: !3958, file: !526, line: 104, type: !134)
!3964 = !DILocation(line: 0, scope: !3958)
!3965 = !DILocation(line: 0, scope: !3920, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 106, column: 10, scope: !3958)
!3967 = !DILocation(line: 0, scope: !3929, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 91, column: 25, scope: !3920, inlinedAt: !3966)
!3969 = !DILocation(line: 101, column: 13, scope: !3929, inlinedAt: !3968)
!3970 = !DILocation(line: 0, scope: !3809, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 91, column: 10, scope: !3920, inlinedAt: !3966)
!3972 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !3971)
!3973 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !3971)
!3974 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !3971)
!3975 = !DILocation(line: 106, column: 3, scope: !3958)
!3976 = distinct !DISubprogram(name: "x2realloc", scope: !526, file: !526, line: 116, type: !3977, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!70, !70, !532}
!3979 = !{!3980, !3981}
!3980 = !DILocalVariable(name: "p", arg: 1, scope: !3976, file: !526, line: 116, type: !70)
!3981 = !DILocalVariable(name: "ps", arg: 2, scope: !3976, file: !526, line: 116, type: !532)
!3982 = !DILocation(line: 0, scope: !3976)
!3983 = !DILocation(line: 0, scope: !529, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 118, column: 10, scope: !3976)
!3985 = !DILocation(line: 178, column: 14, scope: !529, inlinedAt: !3984)
!3986 = !DILocation(line: 180, column: 9, scope: !3987, inlinedAt: !3984)
!3987 = distinct !DILexicalBlock(scope: !529, file: !526, line: 180, column: 7)
!3988 = !DILocation(line: 180, column: 7, scope: !529, inlinedAt: !3984)
!3989 = !DILocation(line: 182, column: 13, scope: !3990, inlinedAt: !3984)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !526, line: 182, column: 11)
!3991 = distinct !DILexicalBlock(scope: !3987, file: !526, line: 181, column: 5)
!3992 = !DILocation(line: 182, column: 11, scope: !3991, inlinedAt: !3984)
!3993 = !DILocation(line: 197, column: 11, scope: !3994, inlinedAt: !3984)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !526, line: 197, column: 11)
!3995 = distinct !DILexicalBlock(scope: !3987, file: !526, line: 195, column: 5)
!3996 = !DILocation(line: 197, column: 11, scope: !3995, inlinedAt: !3984)
!3997 = !DILocation(line: 198, column: 9, scope: !3994, inlinedAt: !3984)
!3998 = !DILocation(line: 0, scope: !3801, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 201, column: 7, scope: !529, inlinedAt: !3984)
!4000 = !DILocation(line: 85, column: 25, scope: !3801, inlinedAt: !3999)
!4001 = !DILocation(line: 0, scope: !3809, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 85, column: 10, scope: !3801, inlinedAt: !3999)
!4003 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4002)
!4004 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4002)
!4005 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4002)
!4006 = !DILocation(line: 202, column: 7, scope: !529, inlinedAt: !3984)
!4007 = !DILocation(line: 118, column: 3, scope: !3976)
!4008 = !DILocation(line: 0, scope: !529)
!4009 = !DILocation(line: 178, column: 14, scope: !529)
!4010 = !DILocation(line: 180, column: 9, scope: !3987)
!4011 = !DILocation(line: 180, column: 7, scope: !529)
!4012 = !DILocation(line: 182, column: 13, scope: !3990)
!4013 = !DILocation(line: 182, column: 11, scope: !3991)
!4014 = !DILocation(line: 190, column: 30, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3990, file: !526, line: 183, column: 9)
!4016 = !DILocation(line: 191, column: 16, scope: !4015)
!4017 = !DILocation(line: 191, column: 13, scope: !4015)
!4018 = !DILocation(line: 192, column: 9, scope: !4015)
!4019 = !DILocation(line: 197, column: 11, scope: !3994)
!4020 = !DILocation(line: 197, column: 11, scope: !3995)
!4021 = !DILocation(line: 198, column: 9, scope: !3994)
!4022 = !DILocation(line: 0, scope: !3801, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 201, column: 7, scope: !529)
!4024 = !DILocation(line: 85, column: 25, scope: !3801, inlinedAt: !4023)
!4025 = !DILocation(line: 0, scope: !3809, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 85, column: 10, scope: !3801, inlinedAt: !4023)
!4027 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4026)
!4028 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4026)
!4029 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4026)
!4030 = !DILocation(line: 202, column: 7, scope: !529)
!4031 = !DILocation(line: 203, column: 3, scope: !529)
!4032 = !DILocation(line: 0, scope: !541)
!4033 = !DILocation(line: 230, column: 14, scope: !541)
!4034 = !DILocation(line: 238, column: 7, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !541, file: !526, line: 238, column: 7)
!4036 = !DILocation(line: 238, column: 7, scope: !541)
!4037 = !DILocation(line: 240, column: 9, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !541, file: !526, line: 240, column: 7)
!4039 = !DILocation(line: 240, column: 18, scope: !4038)
!4040 = !DILocation(line: 253, column: 8, scope: !541)
!4041 = !DILocation(line: 258, column: 27, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !526, line: 257, column: 5)
!4043 = distinct !DILexicalBlock(scope: !541, file: !526, line: 256, column: 7)
!4044 = !DILocation(line: 259, column: 32, scope: !4042)
!4045 = !DILocation(line: 260, column: 5, scope: !4042)
!4046 = !DILocation(line: 262, column: 9, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !541, file: !526, line: 262, column: 7)
!4048 = !DILocation(line: 262, column: 7, scope: !541)
!4049 = !DILocation(line: 263, column: 9, scope: !4047)
!4050 = !DILocation(line: 263, column: 5, scope: !4047)
!4051 = !DILocation(line: 264, column: 9, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !541, file: !526, line: 264, column: 7)
!4053 = !DILocation(line: 264, column: 14, scope: !4052)
!4054 = !DILocation(line: 265, column: 7, scope: !4052)
!4055 = !DILocation(line: 265, column: 11, scope: !4052)
!4056 = !DILocation(line: 266, column: 11, scope: !4052)
!4057 = !DILocation(line: 266, column: 26, scope: !4052)
!4058 = !DILocation(line: 267, column: 14, scope: !4052)
!4059 = !DILocation(line: 264, column: 7, scope: !541)
!4060 = !DILocation(line: 268, column: 5, scope: !4052)
!4061 = !DILocation(line: 0, scope: !3875, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 269, column: 8, scope: !541)
!4063 = !DILocation(line: 0, scope: !3883, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 70, column: 25, scope: !3875, inlinedAt: !4062)
!4065 = !DILocation(line: 2059, column: 24, scope: !3883, inlinedAt: !4064)
!4066 = !DILocation(line: 2059, column: 10, scope: !3883, inlinedAt: !4064)
!4067 = !DILocation(line: 0, scope: !3809, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 70, column: 10, scope: !3875, inlinedAt: !4062)
!4069 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4068)
!4070 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4068)
!4071 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4068)
!4072 = !DILocation(line: 270, column: 7, scope: !541)
!4073 = !DILocation(line: 271, column: 3, scope: !541)
!4074 = distinct !DISubprogram(name: "xzalloc", scope: !526, file: !526, line: 279, type: !3829, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4075)
!4075 = !{!4076}
!4076 = !DILocalVariable(name: "s", arg: 1, scope: !4074, file: !526, line: 279, type: !73)
!4077 = !DILocation(line: 0, scope: !4074)
!4078 = !DILocalVariable(name: "n", arg: 1, scope: !4079, file: !526, line: 294, type: !73)
!4079 = distinct !DISubprogram(name: "xcalloc", scope: !526, file: !526, line: 294, type: !3943, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4080)
!4080 = !{!4078, !4081}
!4081 = !DILocalVariable(name: "s", arg: 2, scope: !4079, file: !526, line: 294, type: !73)
!4082 = !DILocation(line: 0, scope: !4079, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 281, column: 10, scope: !4074)
!4084 = !DILocation(line: 296, column: 25, scope: !4079, inlinedAt: !4083)
!4085 = !DILocation(line: 0, scope: !3809, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 296, column: 10, scope: !4079, inlinedAt: !4083)
!4087 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4086)
!4088 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4086)
!4089 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4086)
!4090 = !DILocation(line: 281, column: 3, scope: !4074)
!4091 = !DILocation(line: 0, scope: !4079)
!4092 = !DILocation(line: 296, column: 25, scope: !4079)
!4093 = !DILocation(line: 0, scope: !3809, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 296, column: 10, scope: !4079)
!4095 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4094)
!4096 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4094)
!4097 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4094)
!4098 = !DILocation(line: 296, column: 3, scope: !4079)
!4099 = distinct !DISubprogram(name: "xizalloc", scope: !526, file: !526, line: 285, type: !3842, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4100)
!4100 = !{!4101}
!4101 = !DILocalVariable(name: "s", arg: 1, scope: !4099, file: !526, line: 285, type: !134)
!4102 = !DILocation(line: 0, scope: !4099)
!4103 = !DILocalVariable(name: "n", arg: 1, scope: !4104, file: !526, line: 300, type: !134)
!4104 = distinct !DISubprogram(name: "xicalloc", scope: !526, file: !526, line: 300, type: !3959, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4105)
!4105 = !{!4103, !4106}
!4106 = !DILocalVariable(name: "s", arg: 2, scope: !4104, file: !526, line: 300, type: !134)
!4107 = !DILocation(line: 0, scope: !4104, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 287, column: 10, scope: !4099)
!4109 = !DILocalVariable(name: "n", arg: 1, scope: !4110, file: !3849, line: 77, type: !134)
!4110 = distinct !DISubprogram(name: "icalloc", scope: !3849, file: !3849, line: 77, type: !3959, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4111)
!4111 = !{!4109, !4112}
!4112 = !DILocalVariable(name: "s", arg: 2, scope: !4110, file: !3849, line: 77, type: !134)
!4113 = !DILocation(line: 0, scope: !4110, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 302, column: 25, scope: !4104, inlinedAt: !4108)
!4115 = !DILocation(line: 91, column: 10, scope: !4110, inlinedAt: !4114)
!4116 = !DILocation(line: 0, scope: !3809, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 302, column: 10, scope: !4104, inlinedAt: !4108)
!4118 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4117)
!4119 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4117)
!4120 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4117)
!4121 = !DILocation(line: 287, column: 3, scope: !4099)
!4122 = !DILocation(line: 0, scope: !4104)
!4123 = !DILocation(line: 0, scope: !4110, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 302, column: 25, scope: !4104)
!4125 = !DILocation(line: 91, column: 10, scope: !4110, inlinedAt: !4124)
!4126 = !DILocation(line: 0, scope: !3809, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 302, column: 10, scope: !4104)
!4128 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4127)
!4129 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4127)
!4130 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4127)
!4131 = !DILocation(line: 302, column: 3, scope: !4104)
!4132 = distinct !DISubprogram(name: "xmemdup", scope: !526, file: !526, line: 310, type: !4133, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!70, !831, !73}
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "p", arg: 1, scope: !4132, file: !526, line: 310, type: !831)
!4137 = !DILocalVariable(name: "s", arg: 2, scope: !4132, file: !526, line: 310, type: !73)
!4138 = !DILocation(line: 0, scope: !4132)
!4139 = !DILocation(line: 0, scope: !3828, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 312, column: 18, scope: !4132)
!4141 = !DILocation(line: 49, column: 25, scope: !3828, inlinedAt: !4140)
!4142 = !DILocation(line: 0, scope: !3809, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 49, column: 10, scope: !3828, inlinedAt: !4140)
!4144 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4143)
!4145 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4143)
!4146 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4143)
!4147 = !DILocalVariable(name: "__dest", arg: 1, scope: !4148, file: !1019, line: 26, type: !1022)
!4148 = distinct !DISubprogram(name: "memcpy", scope: !1019, file: !1019, line: 26, type: !1020, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4149)
!4149 = !{!4147, !4150, !4151}
!4150 = !DILocalVariable(name: "__src", arg: 2, scope: !4148, file: !1019, line: 26, type: !830)
!4151 = !DILocalVariable(name: "__len", arg: 3, scope: !4148, file: !1019, line: 26, type: !73)
!4152 = !DILocation(line: 0, scope: !4148, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 312, column: 10, scope: !4132)
!4154 = !DILocation(line: 29, column: 10, scope: !4148, inlinedAt: !4153)
!4155 = !DILocation(line: 312, column: 3, scope: !4132)
!4156 = distinct !DISubprogram(name: "ximemdup", scope: !526, file: !526, line: 316, type: !4157, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!70, !831, !134}
!4159 = !{!4160, !4161}
!4160 = !DILocalVariable(name: "p", arg: 1, scope: !4156, file: !526, line: 316, type: !831)
!4161 = !DILocalVariable(name: "s", arg: 2, scope: !4156, file: !526, line: 316, type: !134)
!4162 = !DILocation(line: 0, scope: !4156)
!4163 = !DILocation(line: 0, scope: !3841, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 318, column: 18, scope: !4156)
!4165 = !DILocation(line: 0, scope: !3848, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 55, column: 25, scope: !3841, inlinedAt: !4164)
!4167 = !DILocation(line: 57, column: 26, scope: !3848, inlinedAt: !4166)
!4168 = !DILocation(line: 0, scope: !3809, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 55, column: 10, scope: !3841, inlinedAt: !4164)
!4170 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4169)
!4171 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4169)
!4172 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4169)
!4173 = !DILocation(line: 0, scope: !4148, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 318, column: 10, scope: !4156)
!4175 = !DILocation(line: 29, column: 10, scope: !4148, inlinedAt: !4174)
!4176 = !DILocation(line: 318, column: 3, scope: !4156)
!4177 = distinct !DISubprogram(name: "ximemdup0", scope: !526, file: !526, line: 325, type: !4178, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!68, !831, !134}
!4180 = !{!4181, !4182, !4183}
!4181 = !DILocalVariable(name: "p", arg: 1, scope: !4177, file: !526, line: 325, type: !831)
!4182 = !DILocalVariable(name: "s", arg: 2, scope: !4177, file: !526, line: 325, type: !134)
!4183 = !DILocalVariable(name: "result", scope: !4177, file: !526, line: 327, type: !68)
!4184 = !DILocation(line: 0, scope: !4177)
!4185 = !DILocation(line: 327, column: 30, scope: !4177)
!4186 = !DILocation(line: 0, scope: !3841, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 327, column: 18, scope: !4177)
!4188 = !DILocation(line: 0, scope: !3848, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 55, column: 25, scope: !3841, inlinedAt: !4187)
!4190 = !DILocation(line: 57, column: 26, scope: !3848, inlinedAt: !4189)
!4191 = !DILocation(line: 0, scope: !3809, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 55, column: 10, scope: !3841, inlinedAt: !4187)
!4193 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4192)
!4194 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4192)
!4195 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4192)
!4196 = !DILocation(line: 328, column: 3, scope: !4177)
!4197 = !DILocation(line: 328, column: 13, scope: !4177)
!4198 = !DILocation(line: 0, scope: !4148, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 329, column: 10, scope: !4177)
!4200 = !DILocation(line: 29, column: 10, scope: !4148, inlinedAt: !4199)
!4201 = !DILocation(line: 329, column: 3, scope: !4177)
!4202 = distinct !DISubprogram(name: "xstrdup", scope: !526, file: !526, line: 335, type: !825, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4203)
!4203 = !{!4204}
!4204 = !DILocalVariable(name: "string", arg: 1, scope: !4202, file: !526, line: 335, type: !76)
!4205 = !DILocation(line: 0, scope: !4202)
!4206 = !DILocation(line: 337, column: 27, scope: !4202)
!4207 = !DILocation(line: 337, column: 43, scope: !4202)
!4208 = !DILocation(line: 0, scope: !4132, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 337, column: 10, scope: !4202)
!4210 = !DILocation(line: 0, scope: !3828, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 312, column: 18, scope: !4132, inlinedAt: !4209)
!4212 = !DILocation(line: 49, column: 25, scope: !3828, inlinedAt: !4211)
!4213 = !DILocation(line: 0, scope: !3809, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 49, column: 10, scope: !3828, inlinedAt: !4211)
!4215 = !DILocation(line: 39, column: 8, scope: !3816, inlinedAt: !4214)
!4216 = !DILocation(line: 39, column: 7, scope: !3809, inlinedAt: !4214)
!4217 = !DILocation(line: 40, column: 5, scope: !3816, inlinedAt: !4214)
!4218 = !DILocation(line: 0, scope: !4148, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 312, column: 10, scope: !4132, inlinedAt: !4209)
!4220 = !DILocation(line: 29, column: 10, scope: !4148, inlinedAt: !4219)
!4221 = !DILocation(line: 337, column: 3, scope: !4202)
!4222 = distinct !DISubprogram(name: "xalloc_die", scope: !557, file: !557, line: 32, type: !287, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !556, retainedNodes: !4223)
!4223 = !{!4224}
!4224 = !DILocalVariable(name: "__errstatus", scope: !4225, file: !557, line: 34, type: !4226)
!4225 = distinct !DILexicalBlock(scope: !4222, file: !557, line: 34, column: 3)
!4226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!4227 = !DILocation(line: 34, column: 3, scope: !4225)
!4228 = !DILocation(line: 0, scope: !4225)
!4229 = !DILocation(line: 40, column: 3, scope: !4222)
!4230 = distinct !DISubprogram(name: "xnumtoimax", scope: !4231, file: !4231, line: 42, type: !4232, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !4234)
!4231 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!142, !76, !71, !142, !142, !76, !76, !71, !71}
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4247, !4248, !4249}
!4235 = !DILocalVariable(name: "n_str", arg: 1, scope: !4230, file: !4231, line: 42, type: !76)
!4236 = !DILocalVariable(name: "base", arg: 2, scope: !4230, file: !4231, line: 42, type: !71)
!4237 = !DILocalVariable(name: "min", arg: 3, scope: !4230, file: !4231, line: 42, type: !142)
!4238 = !DILocalVariable(name: "max", arg: 4, scope: !4230, file: !4231, line: 42, type: !142)
!4239 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4230, file: !4231, line: 43, type: !76)
!4240 = !DILocalVariable(name: "err", arg: 6, scope: !4230, file: !4231, line: 43, type: !76)
!4241 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4230, file: !4231, line: 43, type: !71)
!4242 = !DILocalVariable(name: "flags", arg: 8, scope: !4230, file: !4231, line: 44, type: !71)
!4243 = !DILocalVariable(name: "tnum", scope: !4230, file: !4231, line: 46, type: !142)
!4244 = !DILocalVariable(name: "r", scope: !4230, file: !4231, line: 46, type: !142)
!4245 = !DILocalVariable(name: "s_err", scope: !4230, file: !4231, line: 47, type: !4246)
!4246 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !562, line: 43, baseType: !561)
!4247 = !DILocalVariable(name: "overflow_errno", scope: !4230, file: !4231, line: 50, type: !71)
!4248 = !DILocalVariable(name: "e", scope: !4230, file: !4231, line: 75, type: !71)
!4249 = !DILocalVariable(name: "__errstatus", scope: !4250, file: !4231, line: 80, type: !4226)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !4231, line: 80, column: 5)
!4251 = distinct !DILexicalBlock(scope: !4230, file: !4231, line: 77, column: 7)
!4252 = !DILocation(line: 0, scope: !4230)
!4253 = !DILocation(line: 46, column: 3, scope: !4230)
!4254 = !DILocation(line: 47, column: 24, scope: !4230)
!4255 = !DILocation(line: 52, column: 13, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4230, file: !4231, line: 52, column: 7)
!4257 = !DILocation(line: 52, column: 7, scope: !4230)
!4258 = !DILocation(line: 54, column: 11, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !4231, line: 54, column: 11)
!4260 = distinct !DILexicalBlock(scope: !4256, file: !4231, line: 53, column: 5)
!4261 = !DILocation(line: 54, column: 16, scope: !4259)
!4262 = !DILocation(line: 54, column: 11, scope: !4260)
!4263 = !DILocation(line: 57, column: 34, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4259, file: !4231, line: 55, column: 9)
!4265 = !DILocation(line: 57, column: 28, scope: !4264)
!4266 = !DILocation(line: 58, column: 21, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4264, file: !4231, line: 58, column: 15)
!4268 = !DILocation(line: 0, scope: !4264)
!4269 = !DILocation(line: 61, column: 20, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4259, file: !4231, line: 61, column: 16)
!4271 = !DILocation(line: 61, column: 16, scope: !4259)
!4272 = !DILocation(line: 64, column: 34, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4270, file: !4231, line: 62, column: 9)
!4274 = !DILocation(line: 64, column: 28, scope: !4273)
!4275 = !DILocation(line: 65, column: 21, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4273, file: !4231, line: 65, column: 15)
!4277 = !DILocation(line: 0, scope: !4273)
!4278 = !DILocation(line: 75, column: 17, scope: !4230)
!4279 = !DILocation(line: 75, column: 11, scope: !4230)
!4280 = !DILocation(line: 77, column: 16, scope: !4251)
!4281 = !DILocation(line: 78, column: 10, scope: !4251)
!4282 = !DILocation(line: 79, column: 14, scope: !4251)
!4283 = !DILocation(line: 79, column: 31, scope: !4251)
!4284 = !DILocation(line: 79, column: 26, scope: !4251)
!4285 = !DILocation(line: 79, column: 23, scope: !4251)
!4286 = !DILocation(line: 77, column: 7, scope: !4230)
!4287 = !DILocation(line: 80, column: 5, scope: !4251)
!4288 = !DILocation(line: 0, scope: !4251)
!4289 = !DILocation(line: 82, column: 3, scope: !4230)
!4290 = !DILocation(line: 82, column: 9, scope: !4230)
!4291 = !DILocation(line: 84, column: 1, scope: !4230)
!4292 = !DILocation(line: 83, column: 3, scope: !4230)
!4293 = distinct !DISubprogram(name: "xdectoimax", scope: !4231, file: !4231, line: 92, type: !4294, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!142, !76, !142, !142, !76, !76, !71}
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302}
!4297 = !DILocalVariable(name: "n_str", arg: 1, scope: !4293, file: !4231, line: 92, type: !76)
!4298 = !DILocalVariable(name: "min", arg: 2, scope: !4293, file: !4231, line: 92, type: !142)
!4299 = !DILocalVariable(name: "max", arg: 3, scope: !4293, file: !4231, line: 92, type: !142)
!4300 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4293, file: !4231, line: 93, type: !76)
!4301 = !DILocalVariable(name: "err", arg: 5, scope: !4293, file: !4231, line: 93, type: !76)
!4302 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4293, file: !4231, line: 93, type: !71)
!4303 = !DILocation(line: 0, scope: !4293)
!4304 = !DILocation(line: 0, scope: !4230, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 95, column: 10, scope: !4293)
!4306 = !DILocation(line: 46, column: 3, scope: !4230, inlinedAt: !4305)
!4307 = !DILocation(line: 47, column: 24, scope: !4230, inlinedAt: !4305)
!4308 = !DILocation(line: 52, column: 13, scope: !4256, inlinedAt: !4305)
!4309 = !DILocation(line: 52, column: 7, scope: !4230, inlinedAt: !4305)
!4310 = !DILocation(line: 54, column: 11, scope: !4259, inlinedAt: !4305)
!4311 = !DILocation(line: 54, column: 16, scope: !4259, inlinedAt: !4305)
!4312 = !DILocation(line: 54, column: 11, scope: !4260, inlinedAt: !4305)
!4313 = !DILocation(line: 58, column: 21, scope: !4267, inlinedAt: !4305)
!4314 = !DILocation(line: 0, scope: !4264, inlinedAt: !4305)
!4315 = !DILocation(line: 61, column: 20, scope: !4270, inlinedAt: !4305)
!4316 = !DILocation(line: 61, column: 16, scope: !4259, inlinedAt: !4305)
!4317 = !DILocation(line: 65, column: 21, scope: !4276, inlinedAt: !4305)
!4318 = !DILocation(line: 0, scope: !4273, inlinedAt: !4305)
!4319 = !DILocation(line: 78, column: 10, scope: !4251, inlinedAt: !4305)
!4320 = !DILocation(line: 80, column: 5, scope: !4251, inlinedAt: !4305)
!4321 = !DILocation(line: 0, scope: !4251, inlinedAt: !4305)
!4322 = !DILocation(line: 82, column: 3, scope: !4230, inlinedAt: !4305)
!4323 = !DILocation(line: 82, column: 9, scope: !4230, inlinedAt: !4305)
!4324 = !DILocation(line: 84, column: 1, scope: !4230, inlinedAt: !4305)
!4325 = !DILocation(line: 95, column: 3, scope: !4293)
!4326 = distinct !DISubprogram(name: "xstrtoimax", scope: !4327, file: !4327, line: 71, type: !4328, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4331)
!4327 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!4246, !76, !836, !71, !4330, !76}
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!4331 = !{!4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4344, !4345}
!4332 = !DILocalVariable(name: "nptr", arg: 1, scope: !4326, file: !4327, line: 71, type: !76)
!4333 = !DILocalVariable(name: "endptr", arg: 2, scope: !4326, file: !4327, line: 71, type: !836)
!4334 = !DILocalVariable(name: "base", arg: 3, scope: !4326, file: !4327, line: 71, type: !71)
!4335 = !DILocalVariable(name: "val", arg: 4, scope: !4326, file: !4327, line: 72, type: !4330)
!4336 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4326, file: !4327, line: 72, type: !76)
!4337 = !DILocalVariable(name: "t_ptr", scope: !4326, file: !4327, line: 74, type: !68)
!4338 = !DILocalVariable(name: "p", scope: !4326, file: !4327, line: 75, type: !836)
!4339 = !DILocalVariable(name: "tmp", scope: !4326, file: !4327, line: 91, type: !142)
!4340 = !DILocalVariable(name: "err", scope: !4326, file: !4327, line: 92, type: !4246)
!4341 = !DILocalVariable(name: "xbase", scope: !4342, file: !4327, line: 126, type: !71)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !4327, line: 119, column: 5)
!4343 = distinct !DILexicalBlock(scope: !4326, file: !4327, line: 118, column: 7)
!4344 = !DILocalVariable(name: "suffixes", scope: !4342, file: !4327, line: 127, type: !71)
!4345 = !DILocalVariable(name: "overflow", scope: !4342, file: !4327, line: 156, type: !4246)
!4346 = !DILocation(line: 0, scope: !4326)
!4347 = !DILocation(line: 74, column: 3, scope: !4326)
!4348 = !DILocation(line: 75, column: 14, scope: !4326)
!4349 = !DILocation(line: 90, column: 3, scope: !4326)
!4350 = !DILocation(line: 90, column: 9, scope: !4326)
!4351 = !DILocation(line: 91, column: 20, scope: !4326)
!4352 = !DILocation(line: 94, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4326, file: !4327, line: 94, column: 7)
!4354 = !DILocation(line: 94, column: 10, scope: !4353)
!4355 = !DILocation(line: 94, column: 7, scope: !4326)
!4356 = !DILocation(line: 98, column: 14, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !4327, line: 98, column: 11)
!4358 = distinct !DILexicalBlock(scope: !4353, file: !4327, line: 95, column: 5)
!4359 = !DILocation(line: 98, column: 29, scope: !4357)
!4360 = !DILocation(line: 98, column: 32, scope: !4357)
!4361 = !DILocation(line: 98, column: 38, scope: !4357)
!4362 = !DILocation(line: 98, column: 41, scope: !4357)
!4363 = !DILocation(line: 98, column: 11, scope: !4358)
!4364 = !DILocation(line: 102, column: 12, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4353, file: !4327, line: 102, column: 12)
!4366 = !DILocation(line: 102, column: 12, scope: !4353)
!4367 = !DILocation(line: 107, column: 5, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4365, file: !4327, line: 103, column: 5)
!4369 = !DILocation(line: 112, column: 8, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4326, file: !4327, line: 112, column: 7)
!4371 = !DILocation(line: 112, column: 7, scope: !4326)
!4372 = !DILocation(line: 114, column: 12, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4370, file: !4327, line: 113, column: 5)
!4374 = !DILocation(line: 115, column: 7, scope: !4373)
!4375 = !DILocation(line: 118, column: 7, scope: !4343)
!4376 = !DILocation(line: 118, column: 11, scope: !4343)
!4377 = !DILocation(line: 118, column: 7, scope: !4326)
!4378 = !DILocation(line: 120, column: 12, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4342, file: !4327, line: 120, column: 11)
!4380 = !DILocation(line: 120, column: 11, scope: !4342)
!4381 = !DILocation(line: 122, column: 16, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4379, file: !4327, line: 121, column: 9)
!4383 = !DILocation(line: 123, column: 22, scope: !4382)
!4384 = !DILocation(line: 123, column: 11, scope: !4382)
!4385 = !DILocation(line: 0, scope: !4342)
!4386 = !DILocation(line: 128, column: 7, scope: !4342)
!4387 = !DILocation(line: 140, column: 15, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !4327, line: 140, column: 15)
!4389 = distinct !DILexicalBlock(scope: !4342, file: !4327, line: 129, column: 9)
!4390 = !DILocation(line: 140, column: 15, scope: !4389)
!4391 = !DILocation(line: 141, column: 21, scope: !4388)
!4392 = !DILocation(line: 141, column: 13, scope: !4388)
!4393 = !DILocation(line: 144, column: 21, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !4327, line: 144, column: 21)
!4395 = distinct !DILexicalBlock(scope: !4388, file: !4327, line: 142, column: 15)
!4396 = !DILocation(line: 144, column: 29, scope: !4394)
!4397 = !DILocation(line: 144, column: 21, scope: !4395)
!4398 = !DILocation(line: 152, column: 17, scope: !4395)
!4399 = !DILocation(line: 157, column: 7, scope: !4342)
!4400 = !DILocalVariable(name: "err", scope: !4401, file: !4327, line: 64, type: !4246)
!4401 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4327, file: !4327, line: 62, type: !4402, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4404)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!4246, !4330, !71, !71}
!4404 = !{!4405, !4406, !4407, !4400}
!4405 = !DILocalVariable(name: "x", arg: 1, scope: !4401, file: !4327, line: 62, type: !4330)
!4406 = !DILocalVariable(name: "base", arg: 2, scope: !4401, file: !4327, line: 62, type: !71)
!4407 = !DILocalVariable(name: "power", arg: 3, scope: !4401, file: !4327, line: 62, type: !71)
!4408 = !DILocation(line: 0, scope: !4401, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 219, column: 22, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4342, file: !4327, line: 158, column: 9)
!4411 = !DILocalVariable(name: "x", arg: 1, scope: !4412, file: !4327, line: 47, type: !4330)
!4412 = distinct !DISubprogram(name: "bkm_scale", scope: !4327, file: !4327, line: 47, type: !4413, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4415)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!4246, !4330, !71}
!4415 = !{!4411, !4416, !4417}
!4416 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4412, file: !4327, line: 47, type: !71)
!4417 = !DILocalVariable(name: "scaled", scope: !4412, file: !4327, line: 49, type: !142)
!4418 = !DILocation(line: 0, scope: !4412, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4409)
!4420 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4419)
!4421 = distinct !DILexicalBlock(scope: !4412, file: !4327, line: 50, column: 7)
!4422 = !DILocation(line: 0, scope: !4401, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 215, column: 22, scope: !4410)
!4424 = !DILocation(line: 0, scope: !4412, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4423)
!4426 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4425)
!4427 = !DILocation(line: 0, scope: !4401, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 202, column: 22, scope: !4410)
!4429 = !DILocation(line: 0, scope: !4412, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4428)
!4431 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4430)
!4432 = !DILocation(line: 0, scope: !4401, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 198, column: 22, scope: !4410)
!4434 = !DILocation(line: 0, scope: !4412, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4433)
!4436 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4435)
!4437 = !DILocation(line: 0, scope: !4401, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 194, column: 22, scope: !4410)
!4439 = !DILocation(line: 0, scope: !4412, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4438)
!4441 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4440)
!4442 = !DILocation(line: 0, scope: !4401, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 175, column: 22, scope: !4410)
!4444 = !DILocation(line: 0, scope: !4412, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4443)
!4446 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4445)
!4447 = !DILocation(line: 0, scope: !4412, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 160, column: 22, scope: !4410)
!4449 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4448)
!4450 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4448)
!4451 = !DILocation(line: 0, scope: !4412, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 167, column: 22, scope: !4410)
!4453 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4452)
!4454 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4452)
!4455 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4443)
!4456 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4445)
!4457 = !DILocation(line: 227, column: 11, scope: !4342)
!4458 = !DILocation(line: 0, scope: !4401, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 180, column: 22, scope: !4410)
!4460 = !DILocation(line: 0, scope: !4412, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4459)
!4462 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4461)
!4463 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4461)
!4464 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4459)
!4465 = !DILocation(line: 0, scope: !4401, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 185, column: 22, scope: !4410)
!4467 = !DILocation(line: 0, scope: !4412, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4466)
!4469 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4468)
!4470 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4468)
!4471 = !DILocation(line: 0, scope: !4401, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 190, column: 22, scope: !4410)
!4473 = !DILocation(line: 0, scope: !4412, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4472)
!4475 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4474)
!4476 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4474)
!4477 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4472)
!4478 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4438)
!4479 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4440)
!4480 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4433)
!4481 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4435)
!4482 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4428)
!4483 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4430)
!4484 = !DILocation(line: 0, scope: !4401, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 207, column: 22, scope: !4410)
!4486 = !DILocation(line: 0, scope: !4412, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 66, column: 12, scope: !4401, inlinedAt: !4485)
!4488 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4487)
!4489 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4487)
!4490 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4485)
!4491 = !DILocation(line: 0, scope: !4412, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 211, column: 22, scope: !4410)
!4493 = !DILocation(line: 50, column: 7, scope: !4421, inlinedAt: !4492)
!4494 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4492)
!4495 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4423)
!4496 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4425)
!4497 = !DILocation(line: 66, column: 9, scope: !4401, inlinedAt: !4409)
!4498 = !DILocation(line: 50, column: 7, scope: !4412, inlinedAt: !4419)
!4499 = !DILocation(line: 0, scope: !4410)
!4500 = !DILocation(line: 228, column: 10, scope: !4342)
!4501 = !DILocation(line: 229, column: 11, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4342, file: !4327, line: 229, column: 11)
!4503 = !DILocation(line: 229, column: 11, scope: !4342)
!4504 = !DILocation(line: 223, column: 16, scope: !4410)
!4505 = !DILocation(line: 224, column: 22, scope: !4410)
!4506 = !DILocation(line: 100, column: 11, scope: !4358)
!4507 = !DILocation(line: 92, column: 16, scope: !4326)
!4508 = !DILocation(line: 233, column: 8, scope: !4326)
!4509 = !DILocation(line: 234, column: 3, scope: !4326)
!4510 = !DILocation(line: 235, column: 1, scope: !4326)
!4511 = !DISubprogram(name: "strtoimax", scope: !4512, file: !4512, line: 297, type: !4513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!4512 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!142, !709, !4515, !71}
!4515 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !836)
!4516 = distinct !DISubprogram(name: "rpl_fopen", scope: !574, file: !574, line: 46, type: !4517, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !4553)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!4519, !76, !76}
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !4521)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !4522)
!4522 = !{!4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4521, file: !177, line: 51, baseType: !71, size: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4521, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4521, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4521, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4521, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4521, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4521, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4521, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4521, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4521, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4521, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4521, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4521, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4521, file: !177, line: 70, baseType: !4537, size: 64, offset: 832)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4521, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4521, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4521, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4521, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4521, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4521, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4521, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4521, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4521, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4521, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4521, file: !177, line: 93, baseType: !4537, size: 64, offset: 1344)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4521, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4521, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4521, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4521, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!4553 = !{!4554, !4555, !4556, !4557, !4558, !4559, !4563, !4565, !4566, !4571, !4574, !4575}
!4554 = !DILocalVariable(name: "filename", arg: 1, scope: !4516, file: !574, line: 46, type: !76)
!4555 = !DILocalVariable(name: "mode", arg: 2, scope: !4516, file: !574, line: 46, type: !76)
!4556 = !DILocalVariable(name: "open_direction", scope: !4516, file: !574, line: 54, type: !71)
!4557 = !DILocalVariable(name: "open_flags", scope: !4516, file: !574, line: 55, type: !71)
!4558 = !DILocalVariable(name: "open_flags_gnu", scope: !4516, file: !574, line: 57, type: !79)
!4559 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4516, file: !574, line: 59, type: !4560)
!4560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 648, elements: !4561)
!4561 = !{!4562}
!4562 = !DISubrange(count: 81)
!4563 = !DILocalVariable(name: "p", scope: !4564, file: !574, line: 62, type: !76)
!4564 = distinct !DILexicalBlock(scope: !4516, file: !574, line: 61, column: 3)
!4565 = !DILocalVariable(name: "q", scope: !4564, file: !574, line: 64, type: !68)
!4566 = !DILocalVariable(name: "len", scope: !4567, file: !574, line: 128, type: !73)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !574, line: 127, column: 9)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !574, line: 68, column: 7)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !574, line: 67, column: 5)
!4570 = distinct !DILexicalBlock(scope: !4564, file: !574, line: 67, column: 5)
!4571 = !DILocalVariable(name: "fd", scope: !4572, file: !574, line: 199, type: !71)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !574, line: 198, column: 5)
!4573 = distinct !DILexicalBlock(scope: !4516, file: !574, line: 197, column: 7)
!4574 = !DILocalVariable(name: "fp", scope: !4572, file: !574, line: 204, type: !4519)
!4575 = !DILocalVariable(name: "saved_errno", scope: !4576, file: !574, line: 207, type: !71)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !574, line: 206, column: 9)
!4577 = distinct !DILexicalBlock(scope: !4572, file: !574, line: 205, column: 11)
!4578 = !DILocation(line: 0, scope: !4516)
!4579 = !DILocation(line: 59, column: 3, scope: !4516)
!4580 = !DILocation(line: 59, column: 8, scope: !4516)
!4581 = !DILocation(line: 0, scope: !4564)
!4582 = !DILocation(line: 67, column: 5, scope: !4564)
!4583 = !DILocation(line: 64, column: 11, scope: !4564)
!4584 = !DILocation(line: 54, column: 7, scope: !4516)
!4585 = !DILocation(line: 67, column: 12, scope: !4569)
!4586 = !DILocation(line: 67, column: 5, scope: !4570)
!4587 = !DILocation(line: 74, column: 19, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !574, line: 74, column: 17)
!4589 = distinct !DILexicalBlock(scope: !4568, file: !574, line: 70, column: 11)
!4590 = !DILocation(line: 74, column: 17, scope: !4589)
!4591 = !DILocation(line: 75, column: 17, scope: !4588)
!4592 = !DILocation(line: 75, column: 20, scope: !4588)
!4593 = !DILocation(line: 75, column: 15, scope: !4588)
!4594 = !DILocation(line: 80, column: 24, scope: !4589)
!4595 = !DILocation(line: 82, column: 19, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4589, file: !574, line: 82, column: 17)
!4597 = !DILocation(line: 82, column: 17, scope: !4589)
!4598 = !DILocation(line: 83, column: 17, scope: !4596)
!4599 = !DILocation(line: 83, column: 20, scope: !4596)
!4600 = !DILocation(line: 83, column: 15, scope: !4596)
!4601 = !DILocation(line: 88, column: 24, scope: !4589)
!4602 = !DILocation(line: 90, column: 19, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4589, file: !574, line: 90, column: 17)
!4604 = !DILocation(line: 90, column: 17, scope: !4589)
!4605 = !DILocation(line: 91, column: 17, scope: !4603)
!4606 = !DILocation(line: 91, column: 20, scope: !4603)
!4607 = !DILocation(line: 91, column: 15, scope: !4603)
!4608 = !DILocation(line: 100, column: 19, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4589, file: !574, line: 100, column: 17)
!4610 = !DILocation(line: 100, column: 17, scope: !4589)
!4611 = !DILocation(line: 101, column: 17, scope: !4609)
!4612 = !DILocation(line: 101, column: 20, scope: !4609)
!4613 = !DILocation(line: 101, column: 15, scope: !4609)
!4614 = !DILocation(line: 107, column: 19, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4589, file: !574, line: 107, column: 17)
!4616 = !DILocation(line: 107, column: 17, scope: !4589)
!4617 = !DILocation(line: 108, column: 17, scope: !4615)
!4618 = !DILocation(line: 108, column: 20, scope: !4615)
!4619 = !DILocation(line: 108, column: 15, scope: !4615)
!4620 = !DILocation(line: 113, column: 24, scope: !4589)
!4621 = !DILocation(line: 115, column: 13, scope: !4589)
!4622 = !DILocation(line: 117, column: 24, scope: !4589)
!4623 = !DILocation(line: 119, column: 13, scope: !4589)
!4624 = !DILocation(line: 128, column: 24, scope: !4567)
!4625 = !DILocation(line: 0, scope: !4567)
!4626 = !DILocation(line: 129, column: 48, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4567, file: !574, line: 129, column: 15)
!4628 = !DILocation(line: 129, column: 19, scope: !4627)
!4629 = !DILocation(line: 129, column: 15, scope: !4567)
!4630 = !DILocalVariable(name: "__dest", arg: 1, scope: !4631, file: !1019, line: 26, type: !1022)
!4631 = distinct !DISubprogram(name: "memcpy", scope: !1019, file: !1019, line: 26, type: !1020, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !4632)
!4632 = !{!4630, !4633, !4634}
!4633 = !DILocalVariable(name: "__src", arg: 2, scope: !4631, file: !1019, line: 26, type: !830)
!4634 = !DILocalVariable(name: "__len", arg: 3, scope: !4631, file: !1019, line: 26, type: !73)
!4635 = !DILocation(line: 0, scope: !4631, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 131, column: 11, scope: !4567)
!4637 = !DILocation(line: 29, column: 10, scope: !4631, inlinedAt: !4636)
!4638 = !DILocation(line: 132, column: 13, scope: !4567)
!4639 = !DILocation(line: 135, column: 9, scope: !4568)
!4640 = !DILocation(line: 67, column: 25, scope: !4569)
!4641 = !DILocation(line: 67, column: 5, scope: !4569)
!4642 = distinct !{!4642, !4586, !4643, !680}
!4643 = !DILocation(line: 136, column: 7, scope: !4570)
!4644 = !DILocation(line: 138, column: 8, scope: !4564)
!4645 = !DILocation(line: 197, column: 7, scope: !4516)
!4646 = !DILocation(line: 199, column: 47, scope: !4572)
!4647 = !DILocation(line: 199, column: 16, scope: !4572)
!4648 = !DILocation(line: 0, scope: !4572)
!4649 = !DILocation(line: 201, column: 14, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4572, file: !574, line: 201, column: 11)
!4651 = !DILocation(line: 201, column: 11, scope: !4572)
!4652 = !DILocation(line: 204, column: 18, scope: !4572)
!4653 = !DILocation(line: 205, column: 14, scope: !4577)
!4654 = !DILocation(line: 205, column: 11, scope: !4572)
!4655 = !DILocation(line: 207, column: 29, scope: !4576)
!4656 = !DILocation(line: 0, scope: !4576)
!4657 = !DILocation(line: 208, column: 11, scope: !4576)
!4658 = !DILocation(line: 209, column: 17, scope: !4576)
!4659 = !DILocation(line: 210, column: 9, scope: !4576)
!4660 = !DILocalVariable(name: "filename", arg: 1, scope: !4661, file: !574, line: 30, type: !76)
!4661 = distinct !DISubprogram(name: "orig_fopen", scope: !574, file: !574, line: 30, type: !4517, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !4662)
!4662 = !{!4660, !4663}
!4663 = !DILocalVariable(name: "mode", arg: 2, scope: !4661, file: !574, line: 30, type: !76)
!4664 = !DILocation(line: 0, scope: !4661, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 219, column: 10, scope: !4516)
!4666 = !DILocation(line: 32, column: 10, scope: !4661, inlinedAt: !4665)
!4667 = !DILocation(line: 219, column: 3, scope: !4516)
!4668 = !DILocation(line: 220, column: 1, scope: !4516)
!4669 = !DISubprogram(name: "open", scope: !1684, file: !1684, line: 181, type: !4670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!71, !76, !71, null}
!4672 = !DISubprogram(name: "fdopen", scope: !333, file: !333, line: 293, type: !4673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!4519, !71, !76}
!4675 = !DISubprogram(name: "close", scope: !1888, file: !1888, line: 358, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!4676 = distinct !DISubprogram(name: "close_stream", scope: !576, file: !576, line: 55, type: !4677, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4713)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!71, !4679}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !175, line: 7, baseType: !4681)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !177, line: 49, size: 1728, elements: !4682)
!4682 = !{!4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4681, file: !177, line: 51, baseType: !71, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4681, file: !177, line: 54, baseType: !68, size: 64, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4681, file: !177, line: 55, baseType: !68, size: 64, offset: 128)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4681, file: !177, line: 56, baseType: !68, size: 64, offset: 192)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4681, file: !177, line: 57, baseType: !68, size: 64, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4681, file: !177, line: 58, baseType: !68, size: 64, offset: 320)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4681, file: !177, line: 59, baseType: !68, size: 64, offset: 384)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4681, file: !177, line: 60, baseType: !68, size: 64, offset: 448)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4681, file: !177, line: 61, baseType: !68, size: 64, offset: 512)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4681, file: !177, line: 64, baseType: !68, size: 64, offset: 576)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4681, file: !177, line: 65, baseType: !68, size: 64, offset: 640)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4681, file: !177, line: 66, baseType: !68, size: 64, offset: 704)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4681, file: !177, line: 68, baseType: !192, size: 64, offset: 768)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4681, file: !177, line: 70, baseType: !4697, size: 64, offset: 832)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4681, file: !177, line: 72, baseType: !71, size: 32, offset: 896)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4681, file: !177, line: 73, baseType: !71, size: 32, offset: 928)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4681, file: !177, line: 74, baseType: !199, size: 64, offset: 960)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4681, file: !177, line: 77, baseType: !72, size: 16, offset: 1024)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4681, file: !177, line: 78, baseType: !202, size: 8, offset: 1040)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4681, file: !177, line: 79, baseType: !204, size: 8, offset: 1048)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4681, file: !177, line: 81, baseType: !208, size: 64, offset: 1088)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4681, file: !177, line: 89, baseType: !211, size: 64, offset: 1152)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4681, file: !177, line: 91, baseType: !213, size: 64, offset: 1216)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4681, file: !177, line: 92, baseType: !216, size: 64, offset: 1280)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4681, file: !177, line: 93, baseType: !4697, size: 64, offset: 1344)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4681, file: !177, line: 94, baseType: !70, size: 64, offset: 1408)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4681, file: !177, line: 95, baseType: !73, size: 64, offset: 1472)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4681, file: !177, line: 96, baseType: !71, size: 32, offset: 1536)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4681, file: !177, line: 98, baseType: !223, size: 160, offset: 1568)
!4713 = !{!4714, !4715, !4717, !4718}
!4714 = !DILocalVariable(name: "stream", arg: 1, scope: !4676, file: !576, line: 55, type: !4679)
!4715 = !DILocalVariable(name: "some_pending", scope: !4676, file: !576, line: 57, type: !4716)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!4717 = !DILocalVariable(name: "prev_fail", scope: !4676, file: !576, line: 58, type: !4716)
!4718 = !DILocalVariable(name: "fclose_fail", scope: !4676, file: !576, line: 59, type: !4716)
!4719 = !DILocation(line: 0, scope: !4676)
!4720 = !DILocation(line: 57, column: 30, scope: !4676)
!4721 = !DILocalVariable(name: "__stream", arg: 1, scope: !4722, file: !1312, line: 135, type: !4679)
!4722 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1312, file: !1312, line: 135, type: !4677, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4723)
!4723 = !{!4721}
!4724 = !DILocation(line: 0, scope: !4722, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 58, column: 27, scope: !4676)
!4726 = !DILocation(line: 137, column: 10, scope: !4722, inlinedAt: !4725)
!4727 = !DILocation(line: 58, column: 43, scope: !4676)
!4728 = !DILocation(line: 59, column: 29, scope: !4676)
!4729 = !DILocation(line: 59, column: 45, scope: !4676)
!4730 = !DILocation(line: 69, column: 17, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4676, file: !576, line: 69, column: 7)
!4732 = !DILocation(line: 57, column: 50, scope: !4676)
!4733 = !DILocation(line: 69, column: 33, scope: !4731)
!4734 = !DILocation(line: 69, column: 53, scope: !4731)
!4735 = !DILocation(line: 69, column: 59, scope: !4731)
!4736 = !DILocation(line: 69, column: 7, scope: !4676)
!4737 = !DILocation(line: 71, column: 11, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4731, file: !576, line: 70, column: 5)
!4739 = !DILocation(line: 72, column: 9, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4738, file: !576, line: 71, column: 11)
!4741 = !DILocation(line: 72, column: 15, scope: !4740)
!4742 = !DILocation(line: 77, column: 1, scope: !4676)
!4743 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !489, file: !489, line: 100, type: !4744, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !4747)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!73, !1194, !76, !73, !4746}
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!4747 = !{!4748, !4749, !4750, !4751, !4752}
!4748 = !DILocalVariable(name: "pwc", arg: 1, scope: !4743, file: !489, line: 100, type: !1194)
!4749 = !DILocalVariable(name: "s", arg: 2, scope: !4743, file: !489, line: 100, type: !76)
!4750 = !DILocalVariable(name: "n", arg: 3, scope: !4743, file: !489, line: 100, type: !73)
!4751 = !DILocalVariable(name: "ps", arg: 4, scope: !4743, file: !489, line: 100, type: !4746)
!4752 = !DILocalVariable(name: "ret", scope: !4743, file: !489, line: 130, type: !73)
!4753 = !DILocation(line: 0, scope: !4743)
!4754 = !DILocation(line: 105, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4743, file: !489, line: 105, column: 7)
!4756 = !DILocation(line: 105, column: 7, scope: !4743)
!4757 = !DILocation(line: 117, column: 10, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4743, file: !489, line: 117, column: 7)
!4759 = !DILocation(line: 117, column: 7, scope: !4743)
!4760 = !DILocation(line: 130, column: 16, scope: !4743)
!4761 = !DILocation(line: 135, column: 11, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4743, file: !489, line: 135, column: 7)
!4763 = !DILocation(line: 135, column: 25, scope: !4762)
!4764 = !DILocation(line: 135, column: 30, scope: !4762)
!4765 = !DILocation(line: 135, column: 7, scope: !4743)
!4766 = !DILocalVariable(name: "ps", arg: 1, scope: !4767, file: !2320, line: 1135, type: !4746)
!4767 = distinct !DISubprogram(name: "mbszero", scope: !2320, file: !2320, line: 1135, type: !4768, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !4770)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{null, !4746}
!4770 = !{!4766}
!4771 = !DILocation(line: 0, scope: !4767, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 137, column: 5, scope: !4762)
!4773 = !DILocalVariable(name: "__dest", arg: 1, scope: !4774, file: !1019, line: 57, type: !70)
!4774 = distinct !DISubprogram(name: "memset", scope: !1019, file: !1019, line: 57, type: !1100, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !4775)
!4775 = !{!4773, !4776, !4777}
!4776 = !DILocalVariable(name: "__ch", arg: 2, scope: !4774, file: !1019, line: 57, type: !71)
!4777 = !DILocalVariable(name: "__len", arg: 3, scope: !4774, file: !1019, line: 57, type: !73)
!4778 = !DILocation(line: 0, scope: !4774, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 1137, column: 3, scope: !4767, inlinedAt: !4772)
!4780 = !DILocation(line: 59, column: 10, scope: !4774, inlinedAt: !4779)
!4781 = !DILocation(line: 137, column: 5, scope: !4762)
!4782 = !DILocation(line: 138, column: 11, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4743, file: !489, line: 138, column: 7)
!4784 = !DILocation(line: 138, column: 7, scope: !4743)
!4785 = !DILocation(line: 139, column: 5, scope: !4783)
!4786 = !DILocation(line: 143, column: 26, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4743, file: !489, line: 143, column: 7)
!4788 = !DILocation(line: 143, column: 41, scope: !4787)
!4789 = !DILocation(line: 143, column: 7, scope: !4743)
!4790 = !DILocation(line: 145, column: 15, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !489, line: 145, column: 11)
!4792 = distinct !DILexicalBlock(scope: !4787, file: !489, line: 144, column: 5)
!4793 = !DILocation(line: 145, column: 11, scope: !4792)
!4794 = !DILocation(line: 146, column: 32, scope: !4791)
!4795 = !DILocation(line: 146, column: 16, scope: !4791)
!4796 = !DILocation(line: 146, column: 14, scope: !4791)
!4797 = !DILocation(line: 146, column: 9, scope: !4791)
!4798 = !DILocation(line: 286, column: 1, scope: !4743)
!4799 = !DISubprogram(name: "mbsinit", scope: !4800, file: !4800, line: 293, type: !4801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !618)
!4800 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!71, !4803}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!4805 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !578, file: !578, line: 27, type: !3793, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !4806)
!4806 = !{!4807, !4808, !4809, !4810}
!4807 = !DILocalVariable(name: "ptr", arg: 1, scope: !4805, file: !578, line: 27, type: !70)
!4808 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4805, file: !578, line: 27, type: !73)
!4809 = !DILocalVariable(name: "size", arg: 3, scope: !4805, file: !578, line: 27, type: !73)
!4810 = !DILocalVariable(name: "nbytes", scope: !4805, file: !578, line: 29, type: !73)
!4811 = !DILocation(line: 0, scope: !4805)
!4812 = !DILocation(line: 30, column: 7, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4805, file: !578, line: 30, column: 7)
!4814 = !DILocalVariable(name: "ptr", arg: 1, scope: !4815, file: !3884, line: 2057, type: !70)
!4815 = distinct !DISubprogram(name: "rpl_realloc", scope: !3884, file: !3884, line: 2057, type: !3876, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !4816)
!4816 = !{!4814, !4817}
!4817 = !DILocalVariable(name: "size", arg: 2, scope: !4815, file: !3884, line: 2057, type: !73)
!4818 = !DILocation(line: 0, scope: !4815, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 37, column: 10, scope: !4805)
!4820 = !DILocation(line: 2059, column: 24, scope: !4815, inlinedAt: !4819)
!4821 = !DILocation(line: 2059, column: 10, scope: !4815, inlinedAt: !4819)
!4822 = !DILocation(line: 37, column: 3, scope: !4805)
!4823 = !DILocation(line: 32, column: 7, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4813, file: !578, line: 31, column: 5)
!4825 = !DILocation(line: 32, column: 13, scope: !4824)
!4826 = !DILocation(line: 33, column: 7, scope: !4824)
!4827 = !DILocation(line: 38, column: 1, scope: !4805)
!4828 = distinct !DISubprogram(name: "hard_locale", scope: !581, file: !581, line: 28, type: !4829, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !4831)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!79, !71}
!4831 = !{!4832, !4833}
!4832 = !DILocalVariable(name: "category", arg: 1, scope: !4828, file: !581, line: 28, type: !71)
!4833 = !DILocalVariable(name: "locale", scope: !4828, file: !581, line: 30, type: !4834)
!4834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2056, elements: !4835)
!4835 = !{!4836}
!4836 = !DISubrange(count: 257)
!4837 = !DILocation(line: 0, scope: !4828)
!4838 = !DILocation(line: 30, column: 3, scope: !4828)
!4839 = !DILocation(line: 30, column: 8, scope: !4828)
!4840 = !DILocation(line: 32, column: 7, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4828, file: !581, line: 32, column: 7)
!4842 = !DILocation(line: 32, column: 7, scope: !4828)
!4843 = !DILocalVariable(name: "__s1", arg: 1, scope: !4844, file: !664, line: 1359, type: !76)
!4844 = distinct !DISubprogram(name: "streq", scope: !664, file: !664, line: 1359, type: !665, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !4845)
!4845 = !{!4843, !4846}
!4846 = !DILocalVariable(name: "__s2", arg: 2, scope: !4844, file: !664, line: 1359, type: !76)
!4847 = !DILocation(line: 0, scope: !4844, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 35, column: 9, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4828, file: !581, line: 35, column: 7)
!4850 = !DILocation(line: 1361, column: 11, scope: !4844, inlinedAt: !4848)
!4851 = !DILocation(line: 1361, column: 10, scope: !4844, inlinedAt: !4848)
!4852 = !DILocation(line: 35, column: 29, scope: !4849)
!4853 = !DILocation(line: 0, scope: !4844, inlinedAt: !4854)
!4854 = distinct !DILocation(line: 35, column: 32, scope: !4849)
!4855 = !DILocation(line: 1361, column: 11, scope: !4844, inlinedAt: !4854)
!4856 = !DILocation(line: 1361, column: 10, scope: !4844, inlinedAt: !4854)
!4857 = !DILocation(line: 35, column: 7, scope: !4828)
!4858 = !DILocation(line: 46, column: 3, scope: !4828)
!4859 = !DILocation(line: 47, column: 1, scope: !4828)
!4860 = distinct !DISubprogram(name: "setlocale_null_r", scope: !583, file: !583, line: 154, type: !4861, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4863)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!71, !71, !68, !73}
!4863 = !{!4864, !4865, !4866}
!4864 = !DILocalVariable(name: "category", arg: 1, scope: !4860, file: !583, line: 154, type: !71)
!4865 = !DILocalVariable(name: "buf", arg: 2, scope: !4860, file: !583, line: 154, type: !68)
!4866 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4860, file: !583, line: 154, type: !73)
!4867 = !DILocation(line: 0, scope: !4860)
!4868 = !DILocation(line: 159, column: 10, scope: !4860)
!4869 = !DILocation(line: 159, column: 3, scope: !4860)
!4870 = distinct !DISubprogram(name: "setlocale_null", scope: !583, file: !583, line: 186, type: !4871, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4873)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!76, !71}
!4873 = !{!4874}
!4874 = !DILocalVariable(name: "category", arg: 1, scope: !4870, file: !583, line: 186, type: !71)
!4875 = !DILocation(line: 0, scope: !4870)
!4876 = !DILocation(line: 189, column: 10, scope: !4870)
!4877 = !DILocation(line: 189, column: 3, scope: !4870)
!4878 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !585, file: !585, line: 35, type: !4871, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !4879)
!4879 = !{!4880, !4881}
!4880 = !DILocalVariable(name: "category", arg: 1, scope: !4878, file: !585, line: 35, type: !71)
!4881 = !DILocalVariable(name: "result", scope: !4878, file: !585, line: 37, type: !76)
!4882 = !DILocation(line: 0, scope: !4878)
!4883 = !DILocation(line: 37, column: 24, scope: !4878)
!4884 = !DILocation(line: 62, column: 3, scope: !4878)
!4885 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !585, file: !585, line: 66, type: !4861, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !4886)
!4886 = !{!4887, !4888, !4889, !4890, !4891}
!4887 = !DILocalVariable(name: "category", arg: 1, scope: !4885, file: !585, line: 66, type: !71)
!4888 = !DILocalVariable(name: "buf", arg: 2, scope: !4885, file: !585, line: 66, type: !68)
!4889 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4885, file: !585, line: 66, type: !73)
!4890 = !DILocalVariable(name: "result", scope: !4885, file: !585, line: 111, type: !76)
!4891 = !DILocalVariable(name: "length", scope: !4892, file: !585, line: 125, type: !73)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !585, line: 124, column: 5)
!4893 = distinct !DILexicalBlock(scope: !4885, file: !585, line: 113, column: 7)
!4894 = !DILocation(line: 0, scope: !4885)
!4895 = !DILocation(line: 0, scope: !4878, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 111, column: 24, scope: !4885)
!4897 = !DILocation(line: 37, column: 24, scope: !4878, inlinedAt: !4896)
!4898 = !DILocation(line: 113, column: 14, scope: !4893)
!4899 = !DILocation(line: 113, column: 7, scope: !4885)
!4900 = !DILocation(line: 116, column: 19, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !585, line: 116, column: 11)
!4902 = distinct !DILexicalBlock(scope: !4893, file: !585, line: 114, column: 5)
!4903 = !DILocation(line: 116, column: 11, scope: !4902)
!4904 = !DILocation(line: 120, column: 16, scope: !4901)
!4905 = !DILocation(line: 120, column: 9, scope: !4901)
!4906 = !DILocation(line: 125, column: 23, scope: !4892)
!4907 = !DILocation(line: 0, scope: !4892)
!4908 = !DILocation(line: 126, column: 18, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4892, file: !585, line: 126, column: 11)
!4910 = !DILocation(line: 126, column: 11, scope: !4892)
!4911 = !DILocation(line: 128, column: 39, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4909, file: !585, line: 127, column: 9)
!4913 = !DILocalVariable(name: "__dest", arg: 1, scope: !4914, file: !1019, line: 26, type: !1022)
!4914 = distinct !DISubprogram(name: "memcpy", scope: !1019, file: !1019, line: 26, type: !1020, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !4915)
!4915 = !{!4913, !4916, !4917}
!4916 = !DILocalVariable(name: "__src", arg: 2, scope: !4914, file: !1019, line: 26, type: !830)
!4917 = !DILocalVariable(name: "__len", arg: 3, scope: !4914, file: !1019, line: 26, type: !73)
!4918 = !DILocation(line: 0, scope: !4914, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 128, column: 11, scope: !4912)
!4920 = !DILocation(line: 29, column: 10, scope: !4914, inlinedAt: !4919)
!4921 = !DILocation(line: 129, column: 11, scope: !4912)
!4922 = !DILocation(line: 133, column: 23, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !585, line: 133, column: 15)
!4924 = distinct !DILexicalBlock(scope: !4909, file: !585, line: 132, column: 9)
!4925 = !DILocation(line: 133, column: 15, scope: !4924)
!4926 = !DILocation(line: 138, column: 44, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4923, file: !585, line: 134, column: 13)
!4928 = !DILocation(line: 0, scope: !4914, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 138, column: 15, scope: !4927)
!4930 = !DILocation(line: 29, column: 10, scope: !4914, inlinedAt: !4929)
!4931 = !DILocation(line: 139, column: 15, scope: !4927)
!4932 = !DILocation(line: 139, column: 32, scope: !4927)
!4933 = !DILocation(line: 140, column: 13, scope: !4927)
!4934 = !DILocation(line: 0, scope: !4893)
!4935 = !DILocation(line: 145, column: 1, scope: !4885)
