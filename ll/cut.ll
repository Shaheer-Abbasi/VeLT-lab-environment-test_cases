; ModuleID = 'src/cut.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.field_range_pair = type { i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s OPTION... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Print selected parts of lines from each FILE to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"  -b, --bytes=LIST\0A         select only these bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"  -c, --characters=LIST\0A         select only these characters\0A\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"  -d, --delimiter=DELIM\0A         use DELIM instead of TAB for field delimiter\0A\00", align 1
@.str.7 = private unnamed_addr constant [158 x i8] c"  -f, --fields=LIST\0A         select only these fields;  also print any line that contains\0A         no delimiter character, unless the -s option is specified\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"  -n\0A         (ignored)\0A\00", align 1
@.str.9 = private unnamed_addr constant [88 x i8] c"      --complement\0A         complement the set of selected bytes, characters or fields\0A\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"  -s, --only-delimited\0A         do not print lines not containing delimiters\0A\00", align 1
@.str.11 = private unnamed_addr constant [129 x i8] c"      --output-delimiter=STRING\0A         use STRING as the output delimiter;\0A         the default is to use the input delimiter\0A\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.15 = private unnamed_addr constant [204 x i8] c"\0AUse one, and only one of -b, -c or -f.  Each LIST is made up of one\0Arange, or many ranges separated by commas.  Selected input is written\0Ain the same order that it is read, and is written exactly once.\0A\00", align 1
@.str.16 = private unnamed_addr constant [262 x i8] c"Each range is one of:\0A\0A  N     N'th byte, character or field, counted from 1\0A  N-    from N'th byte, character or field, to end of line\0A  N-M   from N'th to M'th (included) byte, character or field\0A  -M    from first to M'th (included) byte, character or field\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"b:c:d:f:nsz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.21 = private unnamed_addr constant [31 x i8] c"only one list may be specified\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.22 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@delim = internal unnamed_addr global i8 0, align 4, !dbg !69
@output_delimiter_length = internal unnamed_addr global i64 0, align 8, !dbg !71
@output_delimiter_string = internal unnamed_addr global i8* null, align 8, !dbg !73
@suppress_non_delimited = internal unnamed_addr global i1 false, align 1, !dbg !193
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !194
@complement = internal unnamed_addr global i1 false, align 1, !dbg !195
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@output_delimiter_default = internal global [1 x i8] zeroinitializer, align 4, !dbg !75
@optind = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !196
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !82
@.str.33 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.63 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.64 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.66 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"only-delimited\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@current_rp = internal unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !167
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@field_1_buffer = internal global i8* null, align 8, !dbg !177
@field_1_bufsize = internal global i64 0, align 8, !dbg !179
@.str.79 = private unnamed_addr constant [13 x i8] c"n_bytes != 0\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"src/cut.c\00", align 1
@__PRETTY_FUNCTION__.cut_fields = private unnamed_addr constant [24 x i8] c"void cut_fields(FILE *)\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1.40 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.2.39 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.3.42 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.4.41 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.5.43 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@.str.6.44 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal unnamed_addr global i8* null, align 8, !dbg !197
@.str.7.45 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.8.47 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.9.46 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.10.49 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.11.48 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@n_frp = dso_local local_unnamed_addr global i64 0, align 8, !dbg !214
@.str.12.51 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@.str.13.50 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@frp = dso_local local_unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !207
@n_frp_allocated = internal global i64 0, align 8, !dbg !219
@.str.83 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i64 0, i64 0), align 8, !dbg !244
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !249
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !254
@.str.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.87 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.88 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !256
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.90 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !292
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !262
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !288
@.str.1.96 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.98 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.97 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !290
@.str.4.91 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.92 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.93 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !297
@.str.121 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.122 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !303
@.str.125 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.127 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.128 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.129 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.130 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.131 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.132 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.133 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.134 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.127, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.128, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.130, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.131, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.133, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.134, i32 0, i32 0), i8* null], align 8, !dbg !339
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !351
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !369
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !399
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !406
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !371
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !408
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !357
@.str.10.137 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.135 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.138 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !376
@.str.145 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.146 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.147 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.148 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.149 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.150 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.151 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.152 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.153 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.154 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.155 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.156 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.157 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.158 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.159 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.160 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.161 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.166 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.167 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.168 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.169 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.170 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.171 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.172 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !412
@exit_failure = dso_local global i32 1, align 4, !dbg !420
@.str.189 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.187 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.188 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.200 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !426
@.str.207 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.208 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !537 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !541, metadata !DIExpression()), !dbg !542
  %3 = icmp eq i32 %0, 0, !dbg !543
  br i1 %3, label %9, label %4, !dbg !545

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !546, !tbaa !548
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !546
  %7 = load i8*, i8** @program_name, align 8, !dbg !546, !tbaa !548
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !546
  br label %73, !dbg !546

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !552
  %11 = load i8*, i8** @program_name, align 8, !dbg !552, !tbaa !548
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !552
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !554
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !554, !tbaa !548
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !554
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i64 0, i64 0), i32 noundef 5) #35, !dbg !555
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !555, !tbaa !548
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #35, !dbg !555
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i64 0, i64 0), i32 noundef 5) #35, !dbg !559
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !559, !tbaa !548
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #35, !dbg !559
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !562
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !562
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !563
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !563
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !564
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !564
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([158 x i8], [158 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !565
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !565
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !566
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !566
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !567
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !567
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !568
  tail call fastcc void @oputs_(i8* noundef %28), !dbg !568
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([129 x i8], [129 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35, !dbg !569
  tail call fastcc void @oputs_(i8* noundef %29), !dbg !569
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35, !dbg !570
  tail call fastcc void @oputs_(i8* noundef %30), !dbg !570
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !571
  tail call fastcc void @oputs_(i8* noundef %31), !dbg !571
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #35, !dbg !572
  tail call fastcc void @oputs_(i8* noundef %32), !dbg !572
  %33 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([204 x i8], [204 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #35, !dbg !573
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !573, !tbaa !548
  %35 = tail call i32 @fputs_unlocked(i8* noundef %33, %struct._IO_FILE* noundef %34), !dbg !573
  %36 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([262 x i8], [262 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #35, !dbg !574
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !574, !tbaa !548
  %38 = tail call i32 @fputs_unlocked(i8* noundef %36, %struct._IO_FILE* noundef %37), !dbg !574
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !575, metadata !DIExpression()) #35, !dbg !594
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !596
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #35, !dbg !596
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !580, metadata !DIExpression()) #35, !dbg !597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %39, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !597
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !589, metadata !DIExpression()) #35, !dbg !594
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !590, metadata !DIExpression()) #35, !dbg !594
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !598
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !590, metadata !DIExpression()) #35, !dbg !594
  br label %41, !dbg !599

41:                                               ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !590, metadata !DIExpression()) #35, !dbg !594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !607
  call void @llvm.dbg.value(metadata i8* %42, metadata !606, metadata !DIExpression()) #35, !dbg !607
  %44 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %42) #36, !dbg !609
  %45 = icmp eq i32 %44, 0, !dbg !610
  br i1 %45, label %51, label %46, !dbg !599

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !611
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !590, metadata !DIExpression()) #35, !dbg !594
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !612
  %49 = load i8*, i8** %48, align 8, !dbg !612, !tbaa !613
  %50 = icmp eq i8* %49, null, !dbg !615
  br i1 %50, label %51, label %41, !dbg !616, !llvm.loop !617

51:                                               ; preds = %46, %41
  %52 = phi %struct.infomap* [ %43, %41 ], [ %47, %46 ]
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !619
  %54 = load i8*, i8** %53, align 8, !dbg !619, !tbaa !621
  %55 = icmp eq i8* %54, null, !dbg !622
  %56 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %54, !dbg !623
  call void @llvm.dbg.value(metadata i8* %56, metadata !589, metadata !DIExpression()) #35, !dbg !594
  tail call void @emit_bug_reporting_address() #35, !dbg !624
  %57 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !625
  call void @llvm.dbg.value(metadata i8* %57, metadata !592, metadata !DIExpression()) #35, !dbg !594
  %58 = icmp eq i8* %57, null, !dbg !626
  br i1 %58, label %66, label %59, !dbg !628

59:                                               ; preds = %51
  %60 = tail call i32 @strncmp(i8* noundef nonnull %57, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i64 noundef 3) #36, !dbg !629
  %61 = icmp eq i32 %60, 0, !dbg !629
  br i1 %61, label %66, label %62, !dbg !630

62:                                               ; preds = %59
  %63 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #35, !dbg !631
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !548
  %65 = tail call i32 @fputs_unlocked(i8* noundef %63, %struct._IO_FILE* noundef %64) #35, !dbg !631
  br label %66, !dbg !633

66:                                               ; preds = %51, %59, %62
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), metadata !606, metadata !DIExpression()) #35, !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #35, !dbg !594
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #35, !dbg !636
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %67, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !636
  %69 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #35, !dbg !637
  %70 = icmp eq i8* %56, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !637
  %71 = select i1 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !637
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %69, i8* noundef %56, i8* noundef %71) #35, !dbg !637
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #35, !dbg !638
  br label %73

73:                                               ; preds = %66, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !639
  unreachable, !dbg !639
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !640 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !644 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !84 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !89, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i8* %0, metadata !90, metadata !DIExpression()), !dbg !649
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !650, !tbaa !651
  %3 = icmp eq i32 %2, -1, !dbg !653
  br i1 %3, label %4, label %16, !dbg !654

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #35, !dbg !655
  call void @llvm.dbg.value(metadata i8* %5, metadata !91, metadata !DIExpression()), !dbg !656
  %6 = icmp eq i8* %5, null, !dbg !657
  br i1 %6, label %14, label %7, !dbg !658

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !659, !tbaa !660
  %9 = icmp eq i8 %8, 0, !dbg !659
  br i1 %9, label %14, label %10, !dbg !661

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !600, metadata !DIExpression()) #35, !dbg !662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), metadata !606, metadata !DIExpression()) #35, !dbg !662
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #36, !dbg !664
  %12 = icmp eq i32 %11, 0, !dbg !665
  %13 = zext i1 %12 to i32, !dbg !661
  br label %14, !dbg !661

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !666, !tbaa !651
  br label %16, !dbg !667

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !668
  %18 = icmp eq i32 %17, 0, !dbg !668
  br i1 %18, label %22, label %19, !dbg !670

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !548
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !671
  br label %121, !dbg !673

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !94, metadata !DIExpression()), !dbg !649
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #36, !dbg !674
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !675
  call void @llvm.dbg.value(metadata i8* %24, metadata !95, metadata !DIExpression()), !dbg !649
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !676
  call void @llvm.dbg.value(metadata i8* %25, metadata !96, metadata !DIExpression()), !dbg !649
  %26 = icmp eq i8* %25, null, !dbg !677
  br i1 %26, label %53, label %27, !dbg !678

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !679
  br i1 %28, label %53, label %29, !dbg !680

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !97, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i64 0, metadata !101, metadata !DIExpression()), !dbg !681
  %30 = icmp ult i8* %24, %25, !dbg !682
  br i1 %30, label %31, label %53, !dbg !683

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !649
  %33 = load i16*, i16** %32, align 8, !tbaa !548
  br label %34, !dbg !683

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !97, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i64 %36, metadata !101, metadata !DIExpression()), !dbg !681
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !684
  call void @llvm.dbg.value(metadata i8* %37, metadata !97, metadata !DIExpression()), !dbg !681
  %38 = load i8, i8* %35, align 1, !dbg !684, !tbaa !660
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !684
  %41 = load i16, i16* %40, align 2, !dbg !684, !tbaa !685
  %42 = lshr i16 %41, 13, !dbg !687
  %43 = and i16 %42, 1, !dbg !687
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !688
  call void @llvm.dbg.value(metadata i64 %45, metadata !101, metadata !DIExpression()), !dbg !681
  %46 = icmp ult i8* %37, %25, !dbg !682
  %47 = icmp ult i64 %45, 2, !dbg !689
  %48 = select i1 %46, i1 %47, i1 false, !dbg !689
  br i1 %48, label %34, label %49, !dbg !683, !llvm.loop !690

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !691
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !693
  %52 = xor i1 %50, true, !dbg !693
  br label %53, !dbg !693

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !649
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !94, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i8* %54, metadata !96, metadata !DIExpression()), !dbg !649
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #36, !dbg !694
  call void @llvm.dbg.value(metadata i64 %56, metadata !102, metadata !DIExpression()), !dbg !649
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !695
  call void @llvm.dbg.value(metadata i8* %57, metadata !103, metadata !DIExpression()), !dbg !649
  br label %58, !dbg !696

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !649
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !94, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i8* %59, metadata !103, metadata !DIExpression()), !dbg !649
  %61 = load i8, i8* %59, align 1, !dbg !697, !tbaa !660
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !698

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !699
  %64 = load i8, i8* %63, align 1, !dbg !702, !tbaa !660
  %65 = icmp ne i8 %64, 45, !dbg !703
  %66 = select i1 %65, i1 %60, i1 false, !dbg !704
  br label %67, !dbg !704

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !94, metadata !DIExpression()), !dbg !649
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !705
  %70 = load i16*, i16** %69, align 8, !dbg !705, !tbaa !548
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !705
  %73 = load i16, i16* %72, align 2, !dbg !705, !tbaa !685
  %74 = and i16 %73, 8192, !dbg !705
  %75 = icmp eq i16 %74, 0, !dbg !705
  br i1 %75, label %89, label %76, !dbg !707

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !708
  br i1 %77, label %91, label %78, !dbg !711

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !712
  %80 = load i8, i8* %79, align 1, !dbg !712, !tbaa !660
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !712
  %83 = load i16, i16* %82, align 2, !dbg !712, !tbaa !685
  %84 = and i16 %83, 8192, !dbg !712
  %85 = icmp eq i16 %84, 0, !dbg !712
  br i1 %85, label %86, label %91, !dbg !713

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !714
  br i1 %88, label %89, label %91, !dbg !714

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !716
  call void @llvm.dbg.value(metadata i8* %90, metadata !103, metadata !DIExpression()), !dbg !649
  br label %58, !dbg !696, !llvm.loop !717

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !719
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719, !tbaa !548
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !719
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), metadata !606, metadata !DIExpression()) #35, !dbg !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !722
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !726
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !728
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !730
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !732
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !734
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !736
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !600, metadata !DIExpression()) #35, !dbg !738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !160, metadata !DIExpression()), !dbg !649
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i64 noundef 6) #36, !dbg !740
  %96 = icmp eq i32 %95, 0, !dbg !740
  br i1 %96, label %100, label %97, !dbg !742

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i64 noundef 9) #36, !dbg !743
  %99 = icmp eq i32 %98, 0, !dbg !743
  br i1 %99, label %100, label %103, !dbg !744

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !745
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !745
  br label %106, !dbg !747

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !748
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !748
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !548
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !750
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !548
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !751
  %111 = ptrtoint i8* %59 to i64, !dbg !752
  %112 = sub i64 %111, %92, !dbg !752
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !548
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !752
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753, !tbaa !548
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !753
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !548
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !754
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !755, !tbaa !548
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !755
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !756
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
declare !dbg !757 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !761 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !765 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !776, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8** %1, metadata !777, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 0, metadata !780, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 0, metadata !781, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8* null, metadata !782, metadata !DIExpression()), !dbg !787
  %3 = load i8*, i8** %1, align 8, !dbg !788, !tbaa !548
  tail call void @set_program_name(i8* noundef %3) #35, !dbg !789
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #35, !dbg !790
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #35, !dbg !791
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #35, !dbg !792
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !793
  br label %8, !dbg !794

8:                                                ; preds = %36, %2
  %9 = phi i1 [ true, %36 ], [ false, %2 ]
  %10 = phi i1 [ %13, %36 ], [ false, %2 ]
  %11 = phi i8* [ %14, %36 ], [ null, %2 ]
  br label %12, !dbg !794

12:                                               ; preds = %8, %24
  %13 = phi i1 [ %10, %8 ], [ %20, %24 ]
  %14 = phi i8* [ %11, %8 ], [ %25, %24 ]
  br label %15, !dbg !794

15:                                               ; preds = %17, %12
  call void @llvm.dbg.value(metadata i8* %14, metadata !782, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 poison, metadata !781, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 poison, metadata !780, metadata !DIExpression()), !dbg !787
  %16 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #35, !dbg !795
  call void @llvm.dbg.value(metadata i32 %16, metadata !778, metadata !DIExpression()), !dbg !787
  switch i32 %16, label %55 [
    i32 -1, label %56
    i32 98, label %19
    i32 99, label %19
    i32 102, label %18
    i32 100, label %26
    i32 256, label %37
    i32 110, label %17
    i32 115, label %45
    i32 122, label %46
    i32 257, label %47
    i32 -2, label %48
    i32 -3, label %49
  ], !dbg !794

17:                                               ; preds = %15, %47, %46, %45, %43
  br label %15, !dbg !787, !llvm.loop !796

18:                                               ; preds = %15
  br label %19, !dbg !798

19:                                               ; preds = %15, %15, %18
  %20 = phi i1 [ %13, %18 ], [ true, %15 ], [ true, %15 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !781, metadata !DIExpression()), !dbg !787
  %21 = icmp eq i8* %14, null, !dbg !798
  br i1 %21, label %24, label %22, !dbg !802

22:                                               ; preds = %19
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !803
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %23) #35, !dbg !803
  tail call void @usage(i32 noundef 1) #39, !dbg !803
  unreachable, !dbg !803

24:                                               ; preds = %19
  %25 = load i8*, i8** @optarg, align 8, !dbg !805, !tbaa !548
  call void @llvm.dbg.value(metadata i8* %25, metadata !782, metadata !DIExpression()), !dbg !787
  br label %12, !dbg !806, !llvm.loop !796

26:                                               ; preds = %15
  %27 = load i8*, i8** @optarg, align 8, !dbg !807, !tbaa !548
  %28 = load i8, i8* %27, align 1, !dbg !807, !tbaa !660
  %29 = icmp eq i8 %28, 0, !dbg !809
  br i1 %29, label %36, label %30, !dbg !810

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !811
  %32 = load i8, i8* %31, align 1, !dbg !811, !tbaa !660
  %33 = icmp eq i8 %32, 0, !dbg !812
  br i1 %33, label %36, label %34, !dbg !813

34:                                               ; preds = %30
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !814
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %35) #35, !dbg !814
  tail call void @usage(i32 noundef 1) #39, !dbg !814
  unreachable, !dbg !814

36:                                               ; preds = %30, %26
  store i8 %28, i8* @delim, align 4, !dbg !816, !tbaa !660
  call void @llvm.dbg.value(metadata i8 1, metadata !780, metadata !DIExpression()), !dbg !787
  br label %8, !dbg !817, !llvm.loop !796

37:                                               ; preds = %15
  %38 = load i8*, i8** @optarg, align 8, !dbg !818, !tbaa !548
  %39 = load i8, i8* %38, align 1, !dbg !818, !tbaa !660
  %40 = icmp eq i8 %39, 0, !dbg !819
  br i1 %40, label %43, label %41, !dbg !818

41:                                               ; preds = %37
  %42 = tail call i64 @strlen(i8* noundef nonnull %38) #36, !dbg !820
  br label %43, !dbg !818

43:                                               ; preds = %37, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %37 ], !dbg !818
  store i64 %44, i64* @output_delimiter_length, align 8, !dbg !821, !tbaa !822
  store i8* %38, i8** @output_delimiter_string, align 8, !dbg !824, !tbaa !548
  br label %17, !dbg !825

45:                                               ; preds = %15
  store i1 true, i1* @suppress_non_delimited, align 1, !dbg !826
  br label %17, !dbg !827

46:                                               ; preds = %15
  store i1 true, i1* @line_delim, align 1, !dbg !828
  br label %17, !dbg !829

47:                                               ; preds = %15
  store i1 true, i1* @complement, align 1, !dbg !830
  br label %17, !dbg !831

48:                                               ; preds = %15
  tail call void @usage(i32 noundef 0) #39, !dbg !832
  unreachable, !dbg !832

49:                                               ; preds = %15
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !833, !tbaa !548
  %51 = load i8*, i8** @Version, align 8, !dbg !833, !tbaa !548
  %52 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #35, !dbg !833
  %53 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0)) #35, !dbg !833
  %54 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #35, !dbg !833
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* noundef %51, i8* noundef %52, i8* noundef %53, i8* noundef %54, i8* noundef null) #35, !dbg !833
  tail call void @exit(i32 noundef 0) #37, !dbg !833
  unreachable, !dbg !833

55:                                               ; preds = %15
  tail call void @usage(i32 noundef 1) #39, !dbg !834
  unreachable, !dbg !834

56:                                               ; preds = %15
  %57 = icmp eq i8* %14, null, !dbg !835
  br i1 %57, label %58, label %60, !dbg !837

58:                                               ; preds = %56
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #35, !dbg !838
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %59) #35, !dbg !838
  tail call void @usage(i32 noundef 1) #39, !dbg !838
  unreachable, !dbg !838

60:                                               ; preds = %56
  br i1 %13, label %61, label %68, !dbg !840

61:                                               ; preds = %60
  br i1 %9, label %62, label %64, !dbg !841

62:                                               ; preds = %61
  %63 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #35, !dbg !844
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %63) #35, !dbg !844
  tail call void @usage(i32 noundef 1) #39, !dbg !844
  unreachable, !dbg !844

64:                                               ; preds = %61
  %65 = load i1, i1* @suppress_non_delimited, align 1, !dbg !847
  br i1 %65, label %66, label %68, !dbg !849

66:                                               ; preds = %64
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #35, !dbg !850
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %67) #35, !dbg !850
  tail call void @usage(i32 noundef 1) #39, !dbg !850
  unreachable, !dbg !850

68:                                               ; preds = %64, %60
  %69 = phi i32 [ 4, %64 ], [ 0, %60 ], !dbg !852
  %70 = load i1, i1* @complement, align 1, !dbg !853
  %71 = select i1 %70, i32 2, i32 0, !dbg !853
  %72 = or i32 %71, %69, !dbg !854
  tail call void @set_fields(i8* noundef nonnull %14, i32 noundef %72) #35, !dbg !855
  br i1 %9, label %74, label %73, !dbg !856

73:                                               ; preds = %68
  store i8 9, i8* @delim, align 4, !dbg !857, !tbaa !660
  br label %74, !dbg !859

74:                                               ; preds = %73, %68
  %75 = load i8*, i8** @output_delimiter_string, align 8, !dbg !860, !tbaa !548
  %76 = icmp eq i8* %75, null, !dbg !862
  br i1 %76, label %77, label %79, !dbg !863

77:                                               ; preds = %74
  %78 = load i8, i8* @delim, align 4, !dbg !864, !tbaa !660
  store i8 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @output_delimiter_default, i64 0, i64 0), align 4, !dbg !866, !tbaa !660
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @output_delimiter_default, i64 0, i64 0), i8** @output_delimiter_string, align 8, !dbg !867, !tbaa !548
  store i64 1, i64* @output_delimiter_length, align 8, !dbg !868, !tbaa !822
  br label %79, !dbg !869

79:                                               ; preds = %77, %74
  %80 = select i1 %13, void (%struct._IO_FILE*)* @cut_bytes, void (%struct._IO_FILE*)* @cut_fields, !dbg !870
  call void @llvm.dbg.value(metadata void (%struct._IO_FILE*)* %80, metadata !783, metadata !DIExpression()), !dbg !787
  %81 = load i32, i32* @optind, align 4, !dbg !871, !tbaa !651
  %82 = icmp eq i32 %81, %0, !dbg !873
  br i1 %82, label %85, label %83, !dbg !874

83:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8 poison, metadata !779, metadata !DIExpression()), !dbg !787
  %84 = icmp slt i32 %81, %0, !dbg !875
  br i1 %84, label %87, label %98, !dbg !878

85:                                               ; preds = %79
  %86 = tail call fastcc i1 @cut_file(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), void (%struct._IO_FILE*)* noundef nonnull %80), !dbg !879
  call void @llvm.dbg.value(metadata i1 %86, metadata !779, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !787
  br label %98, !dbg !880

87:                                               ; preds = %83, %87
  %88 = phi i32 [ %96, %87 ], [ %81, %83 ]
  %89 = phi i1 [ %94, %87 ], [ true, %83 ]
  %90 = sext i32 %88 to i64, !dbg !881
  %91 = getelementptr inbounds i8*, i8** %1, i64 %90, !dbg !881
  %92 = load i8*, i8** %91, align 8, !dbg !881, !tbaa !548
  %93 = tail call fastcc i1 @cut_file(i8* noundef %92, void (%struct._IO_FILE*)* noundef nonnull %80), !dbg !882
  %94 = and i1 %89, %93, !dbg !883
  call void @llvm.dbg.value(metadata i1 %94, metadata !779, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !787
  %95 = load i32, i32* @optind, align 4, !dbg !884, !tbaa !651
  %96 = add nsw i32 %95, 1, !dbg !884
  store i32 %96, i32* @optind, align 4, !dbg !884, !tbaa !651
  call void @llvm.dbg.value(metadata i8 poison, metadata !779, metadata !DIExpression()), !dbg !787
  %97 = icmp slt i32 %96, %0, !dbg !875
  br i1 %97, label %87, label %98, !dbg !878, !llvm.loop !885

98:                                               ; preds = %87, %83, %85
  %99 = phi i1 [ %86, %85 ], [ true, %83 ], [ %94, %87 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !779, metadata !DIExpression()), !dbg !787
  %100 = load i1, i1* @have_read_stdin, align 1, !dbg !887
  br i1 %100, label %101, label %108, !dbg !889

101:                                              ; preds = %98
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !890, !tbaa !548
  %103 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %102) #35, !dbg !891
  %104 = icmp eq i32 %103, -1, !dbg !892
  br i1 %104, label %105, label %108, !dbg !893

105:                                              ; preds = %101
  %106 = tail call i32* @__errno_location() #38, !dbg !894
  %107 = load i32, i32* %106, align 4, !dbg !894, !tbaa !651
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %107, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #35, !dbg !894
  call void @llvm.dbg.value(metadata i8 0, metadata !779, metadata !DIExpression()), !dbg !787
  br label %108, !dbg !896

108:                                              ; preds = %105, %101, %98
  %109 = phi i1 [ false, %105 ], [ %99, %101 ], [ %99, %98 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !779, metadata !DIExpression()), !dbg !787
  %110 = xor i1 %109, true, !dbg !897
  %111 = zext i1 %110 to i32, !dbg !897
  ret i32 %111, !dbg !898
}

; Function Attrs: nounwind
declare !dbg !899 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !902 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !903 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !906 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @cut_bytes(%struct._IO_FILE* noundef %0) #12 !dbg !912 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !914, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !915, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i8 0, metadata !916, metadata !DIExpression()), !dbg !933
  %2 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !934, !tbaa !548
  store %struct.field_range_pair* %2, %struct.field_range_pair** @current_rp, align 8, !dbg !935, !tbaa !548
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  br label %5, !dbg !936

5:                                                ; preds = %49, %1
  %6 = phi i64 [ 0, %1 ], [ %50, %49 ]
  %7 = phi i1 [ false, %1 ], [ %51, %49 ]
  br label %8, !dbg !937

8:                                                ; preds = %5, %86
  %9 = phi i64 [ %79, %86 ], [ %6, %5 ], !dbg !933
  call void @llvm.dbg.value(metadata i8 poison, metadata !916, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !943, metadata !DIExpression()) #35, !dbg !945
  %10 = load i8*, i8** %3, align 8, !dbg !937, !tbaa !946
  %11 = load i8*, i8** %4, align 8, !dbg !937, !tbaa !948
  %12 = icmp ult i8* %10, %11, !dbg !937
  br i1 %12, label %15, label %13, !dbg !937, !prof !949

13:                                               ; preds = %8
  %14 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !937
  br label %19, !dbg !937

15:                                               ; preds = %8
  %16 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !937
  store i8* %16, i8** %3, align 8, !dbg !937, !tbaa !946
  %17 = load i8, i8* %10, align 1, !dbg !937, !tbaa !660
  %18 = zext i8 %17 to i32, !dbg !937
  br label %19, !dbg !937

19:                                               ; preds = %13, %15
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ], !dbg !937
  call void @llvm.dbg.value(metadata i32 %20, metadata !917, metadata !DIExpression()), !dbg !950
  %21 = load i1, i1* @line_delim, align 1, !dbg !951
  %22 = select i1 %21, i32 0, i32 10, !dbg !951
  %23 = icmp eq i32 %20, %22, !dbg !952
  br i1 %23, label %24, label %52, !dbg !953

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !954, metadata !DIExpression()) #35, !dbg !959
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !963, !tbaa !548
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !963
  %27 = load i8*, i8** %26, align 8, !dbg !963, !tbaa !964
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !963
  %29 = load i8*, i8** %28, align 8, !dbg !963, !tbaa !965
  %30 = icmp ult i8* %27, %29, !dbg !963
  br i1 %30, label %31, label %34, !dbg !963, !prof !949

31:                                               ; preds = %24
  %32 = trunc i32 %20 to i8, !dbg !963
  %33 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !963
  store i8* %33, i8** %26, align 8, !dbg !963, !tbaa !964
  store i8 %32, i8* %27, align 1, !dbg !963, !tbaa !660
  br label %47, !dbg !966

34:                                               ; preds = %24
  %35 = and i32 %20, 255, !dbg !963
  %36 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef %35) #35, !dbg !963
  %37 = icmp slt i32 %36, 0, !dbg !967
  br i1 %37, label %38, label %47, !dbg !966

38:                                               ; preds = %34
  %39 = tail call i32* @__errno_location() #38, !dbg !968
  %40 = load i32, i32* %39, align 4, !dbg !968, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %40, metadata !971, metadata !DIExpression()) #35, !dbg !973
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !974, !tbaa !548
  %42 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %41) #35, !dbg !974
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !975, !tbaa !548
  %44 = tail call i32 @fpurge(%struct._IO_FILE* noundef %43) #35, !dbg !976
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !977, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %45) #35, !dbg !977
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !978
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %40, i8* noundef %46) #35, !dbg !978
  unreachable, !dbg !978

47:                                               ; preds = %31, %34
  call void @llvm.dbg.value(metadata i64 0, metadata !915, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i8 0, metadata !916, metadata !DIExpression()), !dbg !933
  %48 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !979, !tbaa !548
  store %struct.field_range_pair* %48, %struct.field_range_pair** @current_rp, align 8, !dbg !980, !tbaa !548
  br label %49, !dbg !981

49:                                               ; preds = %47, %126, %123
  %50 = phi i64 [ %79, %123 ], [ %79, %126 ], [ 0, %47 ]
  %51 = phi i1 [ %116, %123 ], [ %116, %126 ], [ false, %47 ]
  br label %5, !dbg !937

52:                                               ; preds = %19
  %53 = icmp eq i32 %20, -1, !dbg !982
  br i1 %53, label %54, label %78, !dbg !983

54:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %9, metadata !915, metadata !DIExpression()), !dbg !933
  %55 = icmp eq i64 %9, 0, !dbg !984
  br i1 %55, label %139, label %56, !dbg !987

56:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 %22, metadata !954, metadata !DIExpression()) #35, !dbg !988
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !992, !tbaa !548
  %58 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %57, i64 0, i32 5, !dbg !992
  %59 = load i8*, i8** %58, align 8, !dbg !992, !tbaa !964
  %60 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %57, i64 0, i32 6, !dbg !992
  %61 = load i8*, i8** %60, align 8, !dbg !992, !tbaa !965
  %62 = icmp ult i8* %59, %61, !dbg !992
  br i1 %62, label %63, label %66, !dbg !992, !prof !949

63:                                               ; preds = %56
  %64 = trunc i32 %22 to i8, !dbg !992
  %65 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !992
  store i8* %65, i8** %58, align 8, !dbg !992, !tbaa !964
  store i8 %64, i8* %59, align 1, !dbg !992, !tbaa !660
  br label %139, !dbg !993

66:                                               ; preds = %56
  %67 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %57, i32 noundef %22) #35, !dbg !992
  %68 = icmp slt i32 %67, 0, !dbg !994
  br i1 %68, label %69, label %139, !dbg !993

69:                                               ; preds = %66
  %70 = tail call i32* @__errno_location() #38, !dbg !995
  %71 = load i32, i32* %70, align 4, !dbg !995, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %71, metadata !971, metadata !DIExpression()) #35, !dbg !997
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !998, !tbaa !548
  %73 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %72) #35, !dbg !998
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !999, !tbaa !548
  %75 = tail call i32 @fpurge(%struct._IO_FILE* noundef %74) #35, !dbg !1000
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1001, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %76) #35, !dbg !1001
  %77 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1002
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %71, i8* noundef %77) #35, !dbg !1002
  unreachable, !dbg !1002

78:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64* undef, metadata !1003, metadata !DIExpression()), !dbg !1009
  %79 = add i64 %9, 1, !dbg !1011
  %80 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1012, !tbaa !548
  %81 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %80, i64 0, i32 1, !dbg !1014
  %82 = load i64, i64* %81, align 8, !dbg !1014, !tbaa !1015
  %83 = icmp ugt i64 %79, %82, !dbg !1017
  br i1 %83, label %84, label %86, !dbg !1018

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %80, i64 1, !dbg !1019
  store %struct.field_range_pair* %85, %struct.field_range_pair** @current_rp, align 8, !dbg !1019, !tbaa !548
  br label %86, !dbg !1020

86:                                               ; preds = %78, %84
  %87 = phi %struct.field_range_pair* [ %80, %78 ], [ %85, %84 ], !dbg !1021
  call void @llvm.dbg.value(metadata i64 %79, metadata !915, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 %79, metadata !1026, metadata !DIExpression()), !dbg !1028
  %88 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %87, i64 0, i32 0, !dbg !1029
  %89 = load i64, i64* %88, align 8, !dbg !1029, !tbaa !1030
  %90 = icmp ugt i64 %89, %79, !dbg !1031
  br i1 %90, label %8, label %91, !dbg !1032

91:                                               ; preds = %86
  %92 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1033, !tbaa !548
  %93 = icmp eq i8* %92, getelementptr inbounds ([1 x i8], [1 x i8]* @output_delimiter_default, i64 0, i64 0), !dbg !1034
  %94 = xor i1 %7, true, !dbg !1035
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1035
  %96 = xor i1 %93, true, !dbg !1035
  %97 = select i1 %96, i1 true, i1 %7, !dbg !1035
  br i1 %95, label %115, label %98, !dbg !1035

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 %79, metadata !915, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 %79, metadata !1036, metadata !DIExpression()), !dbg !1039
  %99 = icmp eq i64 %89, %79, !dbg !1041
  br i1 %99, label %100, label %115, !dbg !1042

100:                                              ; preds = %98
  %101 = load i64, i64* @output_delimiter_length, align 8, !dbg !1043, !tbaa !822
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1043, !tbaa !548
  %103 = tail call i64 @fwrite_unlocked(i8* noundef %92, i64 noundef 1, i64 noundef %101, %struct._IO_FILE* noundef %102), !dbg !1043
  %104 = load i64, i64* @output_delimiter_length, align 8, !dbg !1044, !tbaa !822
  %105 = icmp eq i64 %103, %104, !dbg !1045
  br i1 %105, label %115, label %106, !dbg !1046

106:                                              ; preds = %100
  %107 = tail call i32* @__errno_location() #38, !dbg !1047
  %108 = load i32, i32* %107, align 4, !dbg !1047, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %108, metadata !971, metadata !DIExpression()) #35, !dbg !1049
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1050, !tbaa !548
  %110 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %109) #35, !dbg !1050
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1051, !tbaa !548
  %112 = tail call i32 @fpurge(%struct._IO_FILE* noundef %111) #35, !dbg !1052
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1053, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %113) #35, !dbg !1053
  %114 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1054
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %108, i8* noundef %114) #35, !dbg !1054
  unreachable, !dbg !1054

115:                                              ; preds = %91, %98, %100
  %116 = phi i1 [ %97, %91 ], [ true, %100 ], [ true, %98 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !916, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i32 %20, metadata !954, metadata !DIExpression()) #35, !dbg !1055
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1058, !tbaa !548
  %118 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %117, i64 0, i32 5, !dbg !1058
  %119 = load i8*, i8** %118, align 8, !dbg !1058, !tbaa !964
  %120 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %117, i64 0, i32 6, !dbg !1058
  %121 = load i8*, i8** %120, align 8, !dbg !1058, !tbaa !965
  %122 = icmp ult i8* %119, %121, !dbg !1058
  br i1 %122, label %123, label %126, !dbg !1058, !prof !949

123:                                              ; preds = %115
  %124 = trunc i32 %20 to i8, !dbg !1058
  %125 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1058
  store i8* %125, i8** %118, align 8, !dbg !1058, !tbaa !964
  store i8 %124, i8* %119, align 1, !dbg !1058, !tbaa !660
  br label %49, !dbg !1059

126:                                              ; preds = %115
  %127 = and i32 %20, 255, !dbg !1058
  %128 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %117, i32 noundef %127) #35, !dbg !1058
  %129 = icmp slt i32 %128, 0, !dbg !1060
  br i1 %129, label %130, label %49, !dbg !1059

130:                                              ; preds = %126
  %131 = tail call i32* @__errno_location() #38, !dbg !1061
  %132 = load i32, i32* %131, align 4, !dbg !1061, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %132, metadata !971, metadata !DIExpression()) #35, !dbg !1063
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1064, !tbaa !548
  %134 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %133) #35, !dbg !1064
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1065, !tbaa !548
  %136 = tail call i32 @fpurge(%struct._IO_FILE* noundef %135) #35, !dbg !1066
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1067, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %137) #35, !dbg !1067
  %138 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1068
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %132, i8* noundef %138) #35, !dbg !1068
  unreachable, !dbg !1068

139:                                              ; preds = %66, %54, %63
  call void @llvm.dbg.value(metadata i8 poison, metadata !916, metadata !DIExpression()), !dbg !933
  ret void, !dbg !1069
}

; Function Attrs: nounwind uwtable
define internal void @cut_fields(%struct._IO_FILE* noundef %0) #12 !dbg !1070 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1072, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 1, metadata !1074, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 0, metadata !1075, metadata !DIExpression()), !dbg !1116
  %2 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1117, !tbaa !548
  store %struct.field_range_pair* %2, %struct.field_range_pair** @current_rp, align 8, !dbg !1118, !tbaa !548
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !943, metadata !DIExpression()) #35, !dbg !1119
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1121
  %4 = load i8*, i8** %3, align 8, !dbg !1121, !tbaa !946
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1121
  %6 = load i8*, i8** %5, align 8, !dbg !1121, !tbaa !948
  %7 = icmp ult i8* %4, %6, !dbg !1121
  br i1 %7, label %8, label %12, !dbg !1121, !prof !949

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1121
  store i8* %9, i8** %3, align 8, !dbg !1121, !tbaa !946
  %10 = load i8, i8* %4, align 1, !dbg !1121, !tbaa !660
  %11 = zext i8 %10 to i32, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %13, metadata !1073, metadata !DIExpression()), !dbg !1116
  br label %15, !dbg !1122

12:                                               ; preds = %1
  %13 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %13, metadata !1073, metadata !DIExpression()), !dbg !1116
  %14 = icmp eq i32 %13, -1, !dbg !1123
  br i1 %14, label %337, label %15, !dbg !1122

15:                                               ; preds = %8, %12
  %16 = phi i32 [ %11, %8 ], [ %13, %12 ]
  %17 = tail call i32 @ungetc(i32 noundef %16, %struct._IO_FILE* noundef nonnull %0), !dbg !1125
  call void @llvm.dbg.value(metadata i32 0, metadata !1073, metadata !DIExpression()), !dbg !1116
  %18 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1126
  call void @llvm.dbg.value(metadata i64 1, metadata !1026, metadata !DIExpression()), !dbg !1127
  %19 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1129, !tbaa !548
  %20 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %19, i64 0, i32 0, !dbg !1130
  %21 = load i64, i64* %20, align 8, !dbg !1130, !tbaa !1030
  %22 = icmp ult i64 %21, 2, !dbg !1131
  %23 = xor i1 %18, %22, !dbg !1132
  call void @llvm.dbg.value(metadata i1 %23, metadata !1076, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1116
  br label %24, !dbg !1133

24:                                               ; preds = %79, %15
  %25 = phi i64 [ 1, %15 ], [ %80, %79 ], !dbg !1116
  %26 = phi i1 [ false, %15 ], [ %81, %79 ]
  %27 = phi i32 [ 0, %15 ], [ %82, %79 ], !dbg !1116
  call void @llvm.dbg.value(metadata i32 %27, metadata !1073, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 poison, metadata !1075, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %25, metadata !1074, metadata !DIExpression()), !dbg !1116
  %28 = icmp ne i64 %25, 1, !dbg !1134
  %29 = select i1 %28, i1 true, i1 %23, !dbg !1135
  br i1 %29, label %30, label %32, !dbg !1135

30:                                               ; preds = %24
  %31 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1136, !tbaa !548
  br label %154, !dbg !1135

32:                                               ; preds = %24
  %33 = load i8, i8* @delim, align 4, !dbg !1138, !tbaa !660
  %34 = zext i8 %33 to i32, !dbg !1138
  %35 = load i1, i1* @line_delim, align 1, !dbg !1139
  %36 = select i1 %35, i32 0, i32 10, !dbg !1139
  %37 = tail call i64 @getndelim2(i8** noundef nonnull @field_1_buffer, i64* noundef nonnull @field_1_bufsize, i64 noundef 0, i64 noundef -1, i32 noundef %34, i32 noundef %36, %struct._IO_FILE* noundef %0) #35, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %37, metadata !1077, metadata !DIExpression()), !dbg !1141
  %38 = icmp slt i64 %37, 0, !dbg !1142
  br i1 %38, label %39, label %46, !dbg !1144

39:                                               ; preds = %32
  %40 = load i8*, i8** @field_1_buffer, align 8, !dbg !1145, !tbaa !548
  tail call void @free(i8* noundef %40) #35, !dbg !1147
  store i8* null, i8** @field_1_buffer, align 8, !dbg !1148, !tbaa !548
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1149, metadata !DIExpression()), !dbg !1152
  %41 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1155
  %42 = load i32, i32* %41, align 8, !dbg !1155, !tbaa !1156
  %43 = and i32 %42, 48, !dbg !1157
  %44 = icmp eq i32 %43, 0, !dbg !1157
  br i1 %44, label %45, label %337, !dbg !1157

45:                                               ; preds = %39
  tail call void @xalloc_die() #37, !dbg !1158
  unreachable, !dbg !1158

46:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 %37, metadata !1083, metadata !DIExpression()), !dbg !1141
  %47 = icmp eq i64 %37, 0, !dbg !1159
  br i1 %47, label %48, label %49, !dbg !1162

48:                                               ; preds = %46
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i64 0, i64 0)) #37, !dbg !1159
  unreachable, !dbg !1159

49:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 0, metadata !1073, metadata !DIExpression()), !dbg !1116
  %50 = load i8*, i8** @field_1_buffer, align 8, !dbg !1163, !tbaa !548
  %51 = add nsw i64 %37, -1, !dbg !1164
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !1163
  %53 = load i8, i8* %52, align 1, !dbg !1163, !tbaa !660
  %54 = load i8, i8* @delim, align 4, !dbg !1165, !tbaa !660
  %55 = icmp eq i8 %53, %54, !dbg !1166
  br i1 %55, label %108, label %56, !dbg !1167

56:                                               ; preds = %49
  %57 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1168
  br i1 %57, label %79, label %58, !dbg !1169

58:                                               ; preds = %56
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1170, !tbaa !548
  %60 = tail call i64 @fwrite_unlocked(i8* noundef nonnull %50, i64 noundef 1, i64 noundef %37, %struct._IO_FILE* noundef %59), !dbg !1171
  %61 = icmp eq i64 %60, %37, !dbg !1172
  br i1 %61, label %71, label %62, !dbg !1173

62:                                               ; preds = %58
  %63 = tail call i32* @__errno_location() #38, !dbg !1174
  %64 = load i32, i32* %63, align 4, !dbg !1174, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %64, metadata !971, metadata !DIExpression()) #35, !dbg !1176
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1177, !tbaa !548
  %66 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %65) #35, !dbg !1177
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1178, !tbaa !548
  %68 = tail call i32 @fpurge(%struct._IO_FILE* noundef %67) #35, !dbg !1179
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1180, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %69) #35, !dbg !1180
  %70 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1181
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %64, i8* noundef %70) #35, !dbg !1181
  unreachable, !dbg !1181

71:                                               ; preds = %58
  %72 = load i8*, i8** @field_1_buffer, align 8, !dbg !1182, !tbaa !548
  %73 = getelementptr inbounds i8, i8* %72, i64 %51, !dbg !1182
  %74 = load i8, i8* %73, align 1, !dbg !1182, !tbaa !660
  %75 = zext i8 %74 to i32, !dbg !1182
  %76 = load i1, i1* @line_delim, align 1, !dbg !1184
  %77 = select i1 %76, i32 0, i32 10, !dbg !1184
  %78 = icmp eq i32 %77, %75, !dbg !1185
  br i1 %78, label %79, label %83, !dbg !1186

79:                                               ; preds = %71, %90, %96, %335, %291, %283, %289, %56
  %80 = phi i64 [ 1, %56 ], [ 1, %335 ], [ %156, %291 ], [ %284, %283 ], [ %284, %289 ], [ 1, %96 ], [ 1, %90 ], [ 1, %71 ]
  %81 = phi i1 [ %26, %56 ], [ false, %335 ], [ %251, %291 ], [ %251, %283 ], [ %251, %289 ], [ %26, %96 ], [ %26, %90 ], [ %26, %71 ]
  %82 = phi i32 [ 0, %56 ], [ %300, %335 ], [ %252, %291 ], [ %252, %283 ], [ %252, %289 ], [ %98, %96 ], [ %77, %90 ], [ %77, %71 ]
  br label %24, !dbg !1116, !llvm.loop !1187

83:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 %77, metadata !954, metadata !DIExpression()) #35, !dbg !1189
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1193, !tbaa !548
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 5, !dbg !1193
  %86 = load i8*, i8** %85, align 8, !dbg !1193, !tbaa !964
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 6, !dbg !1193
  %88 = load i8*, i8** %87, align 8, !dbg !1193, !tbaa !965
  %89 = icmp ult i8* %86, %88, !dbg !1193
  br i1 %89, label %90, label %93, !dbg !1193, !prof !949

90:                                               ; preds = %83
  %91 = trunc i32 %77 to i8, !dbg !1193
  %92 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1193
  store i8* %92, i8** %85, align 8, !dbg !1193, !tbaa !964
  store i8 %91, i8* %86, align 1, !dbg !1193, !tbaa !660
  br label %79, !dbg !1194

93:                                               ; preds = %83
  %94 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %84, i32 noundef %77) #35, !dbg !1193
  %95 = icmp slt i32 %94, 0, !dbg !1195
  br i1 %95, label %99, label %96, !dbg !1194

96:                                               ; preds = %93
  %97 = load i1, i1* @line_delim, align 1, !dbg !1196
  %98 = select i1 %97, i32 0, i32 10, !dbg !1196
  br label %79, !dbg !1194

99:                                               ; preds = %93
  %100 = tail call i32* @__errno_location() #38, !dbg !1197
  %101 = load i32, i32* %100, align 4, !dbg !1197, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %101, metadata !971, metadata !DIExpression()) #35, !dbg !1199
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1200, !tbaa !548
  %103 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %102) #35, !dbg !1200
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1201, !tbaa !548
  %105 = tail call i32 @fpurge(%struct._IO_FILE* noundef %104) #35, !dbg !1202
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1203, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %106) #35, !dbg !1203
  %107 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1204
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %101, i8* noundef %107) #35, !dbg !1204
  unreachable, !dbg !1204

108:                                              ; preds = %49
  call void @llvm.dbg.value(metadata i64 1, metadata !1026, metadata !DIExpression()), !dbg !1205
  %109 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1207, !tbaa !548
  %110 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %109, i64 0, i32 0, !dbg !1208
  %111 = load i64, i64* %110, align 8, !dbg !1208, !tbaa !1030
  %112 = icmp ult i64 %111, 2, !dbg !1209
  br i1 %112, label %113, label %146, !dbg !1210

113:                                              ; preds = %108
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1211, !tbaa !548
  %115 = tail call i64 @fwrite_unlocked(i8* noundef nonnull %50, i64 noundef 1, i64 noundef %51, %struct._IO_FILE* noundef %114), !dbg !1211
  %116 = icmp eq i64 %115, %51, !dbg !1212
  br i1 %116, label %126, label %117, !dbg !1213

117:                                              ; preds = %113
  %118 = tail call i32* @__errno_location() #38, !dbg !1214
  %119 = load i32, i32* %118, align 4, !dbg !1214, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %119, metadata !971, metadata !DIExpression()) #35, !dbg !1216
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1217, !tbaa !548
  %121 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %120) #35, !dbg !1217
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1218, !tbaa !548
  %123 = tail call i32 @fpurge(%struct._IO_FILE* noundef %122) #35, !dbg !1219
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1220, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %124) #35, !dbg !1220
  %125 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1221
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %119, i8* noundef %125) #35, !dbg !1221
  unreachable, !dbg !1221

126:                                              ; preds = %113
  %127 = load i8, i8* @delim, align 4, !dbg !1222, !tbaa !660
  %128 = zext i8 %127 to i32, !dbg !1222
  %129 = load i1, i1* @line_delim, align 1, !dbg !1223
  %130 = select i1 %129, i32 0, i32 10, !dbg !1223
  %131 = icmp eq i32 %130, %128, !dbg !1224
  br i1 %131, label %132, label %146, !dbg !1225

132:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !943, metadata !DIExpression()) #35, !dbg !1226
  %133 = load i8*, i8** %3, align 8, !dbg !1228, !tbaa !946
  %134 = load i8*, i8** %5, align 8, !dbg !1228, !tbaa !948
  %135 = icmp ult i8* %133, %134, !dbg !1228
  br i1 %135, label %136, label %140, !dbg !1228, !prof !949

136:                                              ; preds = %132
  %137 = getelementptr inbounds i8, i8* %133, i64 1, !dbg !1228
  store i8* %137, i8** %3, align 8, !dbg !1228, !tbaa !946
  %138 = load i8, i8* %133, align 1, !dbg !1228, !tbaa !660
  %139 = zext i8 %138 to i32, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %141, metadata !1100, metadata !DIExpression()), !dbg !1229
  br label %143, !dbg !1230

140:                                              ; preds = %132
  %141 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %141, metadata !1100, metadata !DIExpression()), !dbg !1229
  %142 = icmp eq i32 %141, -1, !dbg !1231
  br i1 %142, label %146, label %143, !dbg !1230

143:                                              ; preds = %136, %140
  %144 = phi i32 [ %139, %136 ], [ %141, %140 ]
  %145 = tail call i32 @ungetc(i32 noundef %144, %struct._IO_FILE* noundef nonnull %0), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, metadata !1075, metadata !DIExpression()), !dbg !1116
  br label %146, !dbg !1235

146:                                              ; preds = %126, %140, %143, %108
  %147 = phi i1 [ %26, %108 ], [ true, %143 ], [ %26, %140 ], [ true, %126 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1075, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64* undef, metadata !1003, metadata !DIExpression()), !dbg !1236
  %148 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1238, !tbaa !548
  %149 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %148, i64 0, i32 1, !dbg !1239
  %150 = load i64, i64* %149, align 8, !dbg !1239, !tbaa !1015
  %151 = icmp ult i64 %150, 2, !dbg !1240
  br i1 %151, label %152, label %154, !dbg !1241

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %148, i64 1, !dbg !1242
  store %struct.field_range_pair* %153, %struct.field_range_pair** @current_rp, align 8, !dbg !1242, !tbaa !548
  br label %154, !dbg !1243

154:                                              ; preds = %30, %152, %146
  %155 = phi %struct.field_range_pair* [ %31, %30 ], [ %148, %146 ], [ %153, %152 ], !dbg !1136
  %156 = phi i64 [ %25, %30 ], [ 2, %146 ], [ 2, %152 ], !dbg !1244
  %157 = phi i1 [ %26, %30 ], [ %147, %146 ], [ %147, %152 ]
  %158 = phi i32 [ %27, %30 ], [ 0, %146 ], [ 0, %152 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %158, metadata !1073, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 poison, metadata !1075, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i32 %158, metadata !1103, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %156, metadata !1074, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %156, metadata !1026, metadata !DIExpression()), !dbg !1247
  %159 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %155, i64 0, i32 0, !dbg !1248
  %160 = load i64, i64* %159, align 8, !dbg !1248, !tbaa !1030
  %161 = icmp ugt i64 %160, %156, !dbg !1249
  br i1 %161, label %226, label %162, !dbg !1250

162:                                              ; preds = %154
  br i1 %157, label %164, label %163, !dbg !1251

163:                                              ; preds = %164, %162
  br label %180, !dbg !1252

164:                                              ; preds = %162
  %165 = load i64, i64* @output_delimiter_length, align 8, !dbg !1253, !tbaa !822
  %166 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1253, !tbaa !548
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1253, !tbaa !548
  %168 = tail call i64 @fwrite_unlocked(i8* noundef %166, i64 noundef 1, i64 noundef %165, %struct._IO_FILE* noundef %167), !dbg !1253
  %169 = load i64, i64* @output_delimiter_length, align 8, !dbg !1254, !tbaa !822
  %170 = icmp eq i64 %168, %169, !dbg !1255
  br i1 %170, label %163, label %171, !dbg !1256

171:                                              ; preds = %164
  %172 = tail call i32* @__errno_location() #38, !dbg !1257
  %173 = load i32, i32* %172, align 4, !dbg !1257, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %173, metadata !971, metadata !DIExpression()) #35, !dbg !1259
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1260, !tbaa !548
  %175 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %174) #35, !dbg !1260
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1261, !tbaa !548
  %177 = tail call i32 @fpurge(%struct._IO_FILE* noundef %176) #35, !dbg !1262
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1263, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %178) #35, !dbg !1263
  %179 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1264
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %173, i8* noundef %179) #35, !dbg !1264
  unreachable, !dbg !1264

180:                                              ; preds = %212, %163
  %181 = phi i32 [ %158, %163 ], [ %192, %212 ], !dbg !1246
  call void @llvm.dbg.value(metadata i32 %181, metadata !1103, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !943, metadata !DIExpression()) #35, !dbg !1265
  %182 = load i8*, i8** %3, align 8, !dbg !1267, !tbaa !946
  %183 = load i8*, i8** %5, align 8, !dbg !1267, !tbaa !948
  %184 = icmp ult i8* %182, %183, !dbg !1267
  br i1 %184, label %187, label %185, !dbg !1267, !prof !949

185:                                              ; preds = %180
  %186 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1267
  br label %191, !dbg !1267

187:                                              ; preds = %180
  %188 = getelementptr inbounds i8, i8* %182, i64 1, !dbg !1267
  store i8* %188, i8** %3, align 8, !dbg !1267, !tbaa !946
  %189 = load i8, i8* %182, align 1, !dbg !1267, !tbaa !660
  %190 = zext i8 %189 to i32, !dbg !1267
  br label %191, !dbg !1267

191:                                              ; preds = %185, %187
  %192 = phi i32 [ %186, %185 ], [ %190, %187 ], !dbg !1267
  call void @llvm.dbg.value(metadata i32 %192, metadata !1073, metadata !DIExpression()), !dbg !1116
  %193 = load i8, i8* @delim, align 4, !dbg !1268, !tbaa !660
  %194 = zext i8 %193 to i32, !dbg !1268
  %195 = icmp eq i32 %192, %194, !dbg !1269
  br i1 %195, label %248, label %196, !dbg !1270

196:                                              ; preds = %191
  %197 = load i1, i1* @line_delim, align 1, !dbg !1271
  %198 = select i1 %197, i32 0, i32 10, !dbg !1271
  %199 = icmp ne i32 %192, %198, !dbg !1272
  %200 = icmp ne i32 %192, -1
  %201 = and i1 %200, %199, !dbg !1273
  br i1 %201, label %202, label %248, !dbg !1273

202:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i32 %192, metadata !954, metadata !DIExpression()) #35, !dbg !1274
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1278, !tbaa !548
  %204 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %203, i64 0, i32 5, !dbg !1278
  %205 = load i8*, i8** %204, align 8, !dbg !1278, !tbaa !964
  %206 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %203, i64 0, i32 6, !dbg !1278
  %207 = load i8*, i8** %206, align 8, !dbg !1278, !tbaa !965
  %208 = icmp ult i8* %205, %207, !dbg !1278
  br i1 %208, label %209, label %213, !dbg !1278, !prof !949

209:                                              ; preds = %202
  %210 = trunc i32 %192 to i8, !dbg !1278
  %211 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !1278
  store i8* %211, i8** %204, align 8, !dbg !1278, !tbaa !964
  store i8 %210, i8* %205, align 1, !dbg !1278, !tbaa !660
  br label %212, !dbg !1279

212:                                              ; preds = %209, %213
  br label %180, !dbg !1246, !llvm.loop !1280

213:                                              ; preds = %202
  %214 = and i32 %192, 255, !dbg !1278
  %215 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %203, i32 noundef %214) #35, !dbg !1278
  %216 = icmp slt i32 %215, 0, !dbg !1282
  br i1 %216, label %217, label %212, !dbg !1279

217:                                              ; preds = %213
  %218 = tail call i32* @__errno_location() #38, !dbg !1283
  %219 = load i32, i32* %218, align 4, !dbg !1283, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %219, metadata !971, metadata !DIExpression()) #35, !dbg !1285
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1286, !tbaa !548
  %221 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %220) #35, !dbg !1286
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1287, !tbaa !548
  %223 = tail call i32 @fpurge(%struct._IO_FILE* noundef %222) #35, !dbg !1288
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1289, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %224) #35, !dbg !1289
  %225 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1290
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %219, i8* noundef %225) #35, !dbg !1290
  unreachable, !dbg !1290

226:                                              ; preds = %154, %242
  %227 = phi i32 [ %238, %242 ], [ %158, %154 ], !dbg !1246
  call void @llvm.dbg.value(metadata i32 %227, metadata !1103, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !943, metadata !DIExpression()) #35, !dbg !1291
  %228 = load i8*, i8** %3, align 8, !dbg !1294, !tbaa !946
  %229 = load i8*, i8** %5, align 8, !dbg !1294, !tbaa !948
  %230 = icmp ult i8* %228, %229, !dbg !1294
  br i1 %230, label %233, label %231, !dbg !1294, !prof !949

231:                                              ; preds = %226
  %232 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1294
  br label %237, !dbg !1294

233:                                              ; preds = %226
  %234 = getelementptr inbounds i8, i8* %228, i64 1, !dbg !1294
  store i8* %234, i8** %3, align 8, !dbg !1294, !tbaa !946
  %235 = load i8, i8* %228, align 1, !dbg !1294, !tbaa !660
  %236 = zext i8 %235 to i32, !dbg !1294
  br label %237, !dbg !1294

237:                                              ; preds = %231, %233
  %238 = phi i32 [ %232, %231 ], [ %236, %233 ], !dbg !1294
  call void @llvm.dbg.value(metadata i32 %238, metadata !1073, metadata !DIExpression()), !dbg !1116
  %239 = load i8, i8* @delim, align 4, !dbg !1295, !tbaa !660
  %240 = zext i8 %239 to i32, !dbg !1295
  %241 = icmp eq i32 %238, %240, !dbg !1296
  br i1 %241, label %248, label %242, !dbg !1297

242:                                              ; preds = %237
  %243 = load i1, i1* @line_delim, align 1, !dbg !1298
  %244 = select i1 %243, i32 0, i32 10, !dbg !1298
  %245 = icmp ne i32 %238, %244, !dbg !1299
  %246 = icmp ne i32 %238, -1
  %247 = and i1 %246, %245, !dbg !1300
  br i1 %247, label %226, label %248, !dbg !1300, !llvm.loop !1301

248:                                              ; preds = %196, %191, %242, %237
  %249 = phi i8 [ %239, %237 ], [ %239, %242 ], [ %193, %191 ], [ %193, %196 ]
  %250 = phi i32 [ %227, %237 ], [ %227, %242 ], [ %181, %191 ], [ %181, %196 ], !dbg !1304
  %251 = phi i1 [ %157, %237 ], [ %157, %242 ], [ true, %191 ], [ true, %196 ]
  %252 = phi i32 [ %238, %237 ], [ %238, %242 ], [ %192, %191 ], [ %192, %196 ], !dbg !1305
  %253 = zext i8 %249 to i32, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %252, metadata !1073, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 poison, metadata !1075, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i32 %250, metadata !1103, metadata !DIExpression()), !dbg !1246
  %254 = load i1, i1* @line_delim, align 1, !dbg !1306
  %255 = select i1 %254, i32 0, i32 10, !dbg !1306
  %256 = icmp eq i32 %255, %253, !dbg !1307
  %257 = icmp eq i32 %252, %253
  %258 = select i1 %256, i1 %257, i1 false, !dbg !1308
  br i1 %258, label %259, label %280, !dbg !1308

259:                                              ; preds = %248
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !943, metadata !DIExpression()) #35, !dbg !1309
  %260 = load i8*, i8** %3, align 8, !dbg !1311, !tbaa !946
  %261 = load i8*, i8** %5, align 8, !dbg !1311, !tbaa !948
  %262 = icmp ult i8* %260, %261, !dbg !1311
  br i1 %262, label %263, label %267, !dbg !1311, !prof !949

263:                                              ; preds = %259
  %264 = getelementptr inbounds i8, i8* %260, i64 1, !dbg !1311
  store i8* %264, i8** %3, align 8, !dbg !1311, !tbaa !946
  %265 = load i8, i8* %260, align 1, !dbg !1311, !tbaa !660
  %266 = zext i8 %265 to i32, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %268, metadata !1113, metadata !DIExpression()), !dbg !1312
  br label %275, !dbg !1313

267:                                              ; preds = %259
  %268 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %268, metadata !1113, metadata !DIExpression()), !dbg !1312
  %269 = icmp eq i32 %268, -1, !dbg !1314
  br i1 %269, label %270, label %275, !dbg !1313

270:                                              ; preds = %267
  call void @llvm.dbg.value(metadata i32 %252, metadata !1073, metadata !DIExpression()), !dbg !1116
  %271 = load i8, i8* @delim, align 4, !dbg !1316, !tbaa !660
  %272 = zext i8 %271 to i32, !dbg !1316
  %273 = load i1, i1* @line_delim, align 1, !dbg !1318
  %274 = select i1 %273, i32 0, i32 10, !dbg !1318
  br label %297, !dbg !1320

275:                                              ; preds = %263, %267
  %276 = phi i32 [ %266, %263 ], [ %268, %267 ]
  %277 = tail call i32 @ungetc(i32 noundef %276, %struct._IO_FILE* noundef nonnull %0), !dbg !1321
  %278 = load i8, i8* @delim, align 4, !dbg !1316, !tbaa !660
  %279 = zext i8 %278 to i32, !dbg !1316
  br label %280, !dbg !1321

280:                                              ; preds = %275, %248
  %281 = phi i32 [ %279, %275 ], [ %253, %248 ], !dbg !1316
  call void @llvm.dbg.value(metadata i32 %252, metadata !1073, metadata !DIExpression()), !dbg !1116
  %282 = icmp eq i32 %252, %281, !dbg !1322
  br i1 %282, label %283, label %291, !dbg !1323

283:                                              ; preds = %280
  call void @llvm.dbg.value(metadata i64* undef, metadata !1003, metadata !DIExpression()), !dbg !1324
  %284 = add i64 %156, 1, !dbg !1326
  %285 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1327, !tbaa !548
  %286 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %285, i64 0, i32 1, !dbg !1328
  %287 = load i64, i64* %286, align 8, !dbg !1328, !tbaa !1015
  %288 = icmp ugt i64 %284, %287, !dbg !1329
  br i1 %288, label %289, label %79, !dbg !1330

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %285, i64 1, !dbg !1331
  store %struct.field_range_pair* %290, %struct.field_range_pair** @current_rp, align 8, !dbg !1331, !tbaa !548
  br label %79, !dbg !1332

291:                                              ; preds = %280
  %292 = load i1, i1* @line_delim, align 1, !dbg !1318
  %293 = select i1 %292, i32 0, i32 10, !dbg !1318
  %294 = icmp eq i32 %252, %293, !dbg !1333
  %295 = icmp eq i32 %252, -1
  %296 = or i1 %295, %294, !dbg !1320
  br i1 %296, label %297, label %79, !dbg !1320

297:                                              ; preds = %270, %291
  %298 = phi i1 [ true, %270 ], [ %295, %291 ]
  %299 = phi i32 [ %274, %270 ], [ %293, %291 ]
  %300 = phi i32 [ -1, %270 ], [ %252, %291 ]
  %301 = phi i32 [ %272, %270 ], [ %281, %291 ]
  br i1 %251, label %306, label %302, !dbg !1334

302:                                              ; preds = %297
  %303 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %156, metadata !1074, metadata !DIExpression()), !dbg !1116
  %304 = icmp eq i64 %156, 1
  %305 = select i1 %303, i1 %304, i1 false, !dbg !1338
  br i1 %305, label %334, label %306, !dbg !1338

306:                                              ; preds = %302, %297
  %307 = icmp eq i32 %300, %299, !dbg !1339
  %308 = icmp ne i32 %250, %299
  %309 = select i1 %307, i1 true, i1 %308, !dbg !1342
  %310 = icmp eq i32 %299, %301
  %311 = select i1 %309, i1 true, i1 %310, !dbg !1342
  br i1 %311, label %312, label %334, !dbg !1342

312:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i32 %293, metadata !954, metadata !DIExpression()) #35, !dbg !1343
  %313 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1347, !tbaa !548
  %314 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %313, i64 0, i32 5, !dbg !1347
  %315 = load i8*, i8** %314, align 8, !dbg !1347, !tbaa !964
  %316 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %313, i64 0, i32 6, !dbg !1347
  %317 = load i8*, i8** %316, align 8, !dbg !1347, !tbaa !965
  %318 = icmp ult i8* %315, %317, !dbg !1347
  br i1 %318, label %319, label %322, !dbg !1347, !prof !949

319:                                              ; preds = %312
  %320 = trunc i32 %299 to i8, !dbg !1347
  %321 = getelementptr inbounds i8, i8* %315, i64 1, !dbg !1347
  store i8* %321, i8** %314, align 8, !dbg !1347, !tbaa !964
  store i8 %320, i8* %315, align 1, !dbg !1347, !tbaa !660
  br i1 %298, label %337, label %335, !dbg !1348

322:                                              ; preds = %312
  %323 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %313, i32 noundef %299) #35, !dbg !1347
  %324 = icmp slt i32 %323, 0, !dbg !1349
  br i1 %324, label %325, label %334, !dbg !1350

325:                                              ; preds = %322
  %326 = tail call i32* @__errno_location() #38, !dbg !1351
  %327 = load i32, i32* %326, align 4, !dbg !1351, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %327, metadata !971, metadata !DIExpression()) #35, !dbg !1353
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1354, !tbaa !548
  %329 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %328) #35, !dbg !1354
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1355, !tbaa !548
  %331 = tail call i32 @fpurge(%struct._IO_FILE* noundef %330) #35, !dbg !1356
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1357, !tbaa !548
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %332) #35, !dbg !1357
  %333 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !1358
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %327, i8* noundef %333) #35, !dbg !1358
  unreachable, !dbg !1358

334:                                              ; preds = %306, %322, %302
  br i1 %298, label %337, label %335, !dbg !1348

335:                                              ; preds = %319, %334
  call void @llvm.dbg.value(metadata i64 1, metadata !1074, metadata !DIExpression()), !dbg !1116
  %336 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1359, !tbaa !548
  store %struct.field_range_pair* %336, %struct.field_range_pair** @current_rp, align 8, !dbg !1360, !tbaa !548
  call void @llvm.dbg.value(metadata i8 0, metadata !1075, metadata !DIExpression()), !dbg !1116
  br label %79, !dbg !1361

337:                                              ; preds = %319, %334, %39, %12
  ret void, !dbg !1362
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @cut_file(i8* noundef %0, void (%struct._IO_FILE*)* nocapture noundef readonly %1) unnamed_addr #12 !dbg !1363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1367, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata void (%struct._IO_FILE*)* %1, metadata !1368, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8* %0, metadata !600, metadata !DIExpression()) #35, !dbg !1372
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), metadata !606, metadata !DIExpression()) #35, !dbg !1372
  %3 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #36, !dbg !1375
  %4 = icmp eq i32 %3, 0, !dbg !1376
  br i1 %4, label %5, label %7, !dbg !1377

5:                                                ; preds = %2
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1378
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1380, !tbaa !548, !nonnull !557
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !1369, metadata !DIExpression()), !dbg !1371
  br label %13, !dbg !1381

7:                                                ; preds = %2
  %8 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)) #35, !dbg !1382
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !1369, metadata !DIExpression()), !dbg !1371
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !1384
  br i1 %9, label %10, label %13, !dbg !1386

10:                                               ; preds = %7
  %11 = tail call i32* @__errno_location() #38, !dbg !1387
  %12 = load i32, i32* %11, align 4, !dbg !1387, !tbaa !651
  br label %33, !dbg !1389

13:                                               ; preds = %7, %5
  %14 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ], !dbg !1390
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1369, metadata !DIExpression()), !dbg !1371
  tail call void @fadvise(%struct._IO_FILE* noundef nonnull %14, i32 noundef 2) #35, !dbg !1391
  tail call void %1(%struct._IO_FILE* noundef nonnull %14) #35, !dbg !1392, !callees !1393
  %15 = tail call i32* @__errno_location() #38, !dbg !1394
  %16 = load i32, i32* %15, align 4, !dbg !1394, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %16, metadata !1370, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1149, metadata !DIExpression()), !dbg !1395
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1398
  %18 = load i32, i32* %17, align 8, !dbg !1398, !tbaa !1156
  %19 = and i32 %18, 32, !dbg !1399
  %20 = icmp eq i32 %19, 0, !dbg !1399
  %21 = select i1 %20, i32 0, i32 %16, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %21, metadata !1370, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8* %0, metadata !600, metadata !DIExpression()) #35, !dbg !1401
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), metadata !606, metadata !DIExpression()) #35, !dbg !1401
  %22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #36, !dbg !1404
  %23 = icmp eq i32 %22, 0, !dbg !1405
  br i1 %23, label %24, label %25, !dbg !1406

24:                                               ; preds = %13
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %14) #35, !dbg !1407
  br label %30, !dbg !1407

25:                                               ; preds = %13
  %26 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %14) #35, !dbg !1408
  %27 = icmp eq i32 %26, -1, !dbg !1410
  br i1 %27, label %28, label %30, !dbg !1411

28:                                               ; preds = %25
  %29 = load i32, i32* %15, align 4, !dbg !1412, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %29, metadata !1370, metadata !DIExpression()), !dbg !1371
  br label %30, !dbg !1413

30:                                               ; preds = %25, %28, %24
  %31 = phi i32 [ %21, %24 ], [ %29, %28 ], [ %21, %25 ], !dbg !1371
  call void @llvm.dbg.value(metadata i32 %31, metadata !1370, metadata !DIExpression()), !dbg !1371
  %32 = icmp eq i32 %31, 0, !dbg !1414
  br i1 %32, label %36, label %33, !dbg !1416

33:                                               ; preds = %30, %10
  %34 = phi i32 [ %12, %10 ], [ %31, %30 ]
  %35 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #35, !dbg !1371
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %34, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i8* noundef %35) #35, !dbg !1371
  br label %36, !dbg !1417

36:                                               ; preds = %33, %30
  %37 = phi i1 [ true, %30 ], [ false, %33 ], !dbg !1371
  ret i1 %37, !dbg !1417
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1418 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1419 noundef i32 @ungetc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

declare !dbg !1422 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @set_fields(i8* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !222, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %1, metadata !223, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 1, metadata !224, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 0, metadata !226, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 0, metadata !227, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 0, metadata !228, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 0, metadata !229, metadata !DIExpression()), !dbg !1423
  %3 = and i32 %1, 1, !dbg !1424
  %4 = icmp eq i32 %3, 0, !dbg !1424
  br i1 %4, label %10, label %5, !dbg !1426

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1427, metadata !DIExpression()) #35, !dbg !1431
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !1430, metadata !DIExpression()) #35, !dbg !1431
  %6 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #36, !dbg !1433
  %7 = icmp eq i32 %6, 0, !dbg !1434
  br i1 %7, label %8, label %10, !dbg !1435

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 1, metadata !225, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 1, metadata !226, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 1, metadata !228, metadata !DIExpression()), !dbg !1423
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1436
  call void @llvm.dbg.value(metadata i8* %9, metadata !222, metadata !DIExpression()), !dbg !1423
  br label %10, !dbg !1438

10:                                               ; preds = %8, %5, %2
  %11 = phi i64 [ 1, %8 ], [ 0, %5 ], [ 0, %2 ], !dbg !1423
  %12 = phi i1 [ true, %8 ], [ false, %5 ], [ false, %2 ]
  %13 = phi i8* [ %9, %8 ], [ %0, %5 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %13, metadata !222, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !228, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !226, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %11, metadata !225, metadata !DIExpression()), !dbg !1423
  %14 = xor i1 %4, true
  br label %15, !dbg !1439

15:                                               ; preds = %173, %10
  %16 = phi i64 [ 1, %10 ], [ %174, %173 ], !dbg !1423
  %17 = phi i64 [ %11, %10 ], [ %175, %173 ], !dbg !1423
  %18 = phi i1 [ %12, %10 ], [ %176, %173 ]
  %19 = phi i1 [ false, %10 ], [ %177, %173 ]
  %20 = phi i1 [ %12, %10 ], [ %178, %173 ]
  %21 = phi i1 [ false, %10 ], [ %179, %173 ]
  %22 = phi i8* [ %13, %10 ], [ %180, %173 ], !dbg !1423
  call void @llvm.dbg.value(metadata i8* %22, metadata !222, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !229, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !228, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !227, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !226, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %17, metadata !225, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %16, metadata !224, metadata !DIExpression()), !dbg !1423
  %23 = load i8, i8* %22, align 1, !dbg !1440, !tbaa !660
  switch i8 %23, label %41 [
    i8 45, label %24
    i8 44, label %51
  ], !dbg !1441

24:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8 0, metadata !229, metadata !DIExpression()), !dbg !1423
  br i1 %20, label %25, label %30, !dbg !1442

25:                                               ; preds = %24
  %26 = and i32 %1, 4, !dbg !1444
  %27 = icmp eq i32 %26, 0, !dbg !1444
  %28 = select i1 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.39, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.40, i64 0, i64 0), !dbg !1444
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %28, i32 noundef 5) #35, !dbg !1444
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %29) #35, !dbg !1444
  tail call void @usage(i32 noundef 1) #37, !dbg !1444
  unreachable, !dbg !1444

30:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8 1, metadata !228, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8* %22, metadata !222, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1423
  %31 = xor i1 %18, true, !dbg !1447
  %32 = icmp ne i64 %17, 0
  %33 = select i1 %31, i1 true, i1 %32, !dbg !1447
  br i1 %33, label %39, label %34, !dbg !1447

34:                                               ; preds = %30
  %35 = and i32 %1, 4, !dbg !1449
  %36 = icmp eq i32 %35, 0, !dbg !1449
  %37 = select i1 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.41, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.42, i64 0, i64 0), !dbg !1449
  %38 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %37, i32 noundef 5) #35, !dbg !1449
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %38) #35, !dbg !1449
  tail call void @usage(i32 noundef 1) #37, !dbg !1449
  unreachable, !dbg !1449

39:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8* %22, metadata !222, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1423
  %40 = select i1 %18, i64 %17, i64 1, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %40, metadata !224, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !1423
  br label %173, !dbg !1452

41:                                               ; preds = %15
  %42 = tail call i16** @__ctype_b_loc() #38, !dbg !1453
  %43 = load i16*, i16** %42, align 8, !dbg !1453, !tbaa !548
  %44 = zext i8 %23 to i64
  %45 = getelementptr inbounds i16, i16* %43, i64 %44, !dbg !1453
  %46 = load i16, i16* %45, align 2, !dbg !1453, !tbaa !685
  %47 = and i16 %46, 1, !dbg !1453
  %48 = icmp ne i16 %47, 0, !dbg !1453
  %49 = icmp eq i8 %23, 0
  %50 = select i1 %48, i1 true, i1 %49, !dbg !1454
  br i1 %50, label %51, label %132, !dbg !1454

51:                                               ; preds = %15, %41
  call void @llvm.dbg.value(metadata i8 0, metadata !229, metadata !DIExpression()), !dbg !1423
  br i1 %20, label %52, label %97, !dbg !1455

52:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i8 0, metadata !228, metadata !DIExpression()), !dbg !1423
  %53 = select i1 %18, i1 true, i1 %19, !dbg !1457
  %54 = or i1 %53, %14, !dbg !1457
  %55 = select i1 %53, i64 %16, i64 1, !dbg !1457
  br i1 %54, label %58, label %56, !dbg !1457

56:                                               ; preds = %52
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.43, i64 0, i64 0), i32 noundef 5) #35, !dbg !1461
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %57) #35, !dbg !1461
  tail call void @usage(i32 noundef 1) #37, !dbg !1461
  unreachable, !dbg !1461

58:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %55, metadata !224, metadata !DIExpression()), !dbg !1423
  br i1 %19, label %76, label %59, !dbg !1465

59:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64 %55, metadata !1466, metadata !DIExpression()) #35, !dbg !1472
  call void @llvm.dbg.value(metadata i64 -1, metadata !1471, metadata !DIExpression()) #35, !dbg !1472
  %60 = load i64, i64* @n_frp, align 8, !dbg !1476, !tbaa !822
  %61 = load i64, i64* @n_frp_allocated, align 8, !dbg !1478, !tbaa !822
  %62 = icmp eq i64 %60, %61, !dbg !1479
  br i1 %62, label %66, label %63, !dbg !1480

63:                                               ; preds = %59
  %64 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1481, !tbaa !548
  %65 = bitcast %struct.field_range_pair* %64 to i8*, !dbg !1480
  br label %71, !dbg !1480

66:                                               ; preds = %59
  %67 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1482, !tbaa !548
  %68 = tail call nonnull i8* @xpalloc(i8* noundef %67, i64* noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #35, !dbg !1483
  store i8* %68, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1484, !tbaa !548
  %69 = bitcast i8* %68 to %struct.field_range_pair*, !dbg !1485
  %70 = load i64, i64* @n_frp, align 8, !dbg !1486, !tbaa !822
  br label %71, !dbg !1485

71:                                               ; preds = %63, %66
  %72 = phi i8* [ %65, %63 ], [ %68, %66 ]
  %73 = phi i64 [ %60, %63 ], [ %70, %66 ], !dbg !1486
  %74 = phi %struct.field_range_pair* [ %64, %63 ], [ %69, %66 ], !dbg !1481
  %75 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %74, i64 %73, i32 0, !dbg !1487
  store i64 %55, i64* %75, align 8, !dbg !1488, !tbaa !1030
  br label %121, !dbg !1489

76:                                               ; preds = %58
  %77 = icmp ult i64 %17, %55, !dbg !1490
  br i1 %77, label %78, label %80, !dbg !1493

78:                                               ; preds = %76
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.44, i64 0, i64 0), i32 noundef 5) #35, !dbg !1494
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %79) #35, !dbg !1494
  tail call void @usage(i32 noundef 1) #37, !dbg !1494
  unreachable, !dbg !1494

80:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 %55, metadata !1466, metadata !DIExpression()) #35, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %17, metadata !1471, metadata !DIExpression()) #35, !dbg !1496
  %81 = load i64, i64* @n_frp, align 8, !dbg !1498, !tbaa !822
  %82 = load i64, i64* @n_frp_allocated, align 8, !dbg !1499, !tbaa !822
  %83 = icmp eq i64 %81, %82, !dbg !1500
  br i1 %83, label %87, label %84, !dbg !1501

84:                                               ; preds = %80
  %85 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1502, !tbaa !548
  %86 = bitcast %struct.field_range_pair* %85 to i8*, !dbg !1501
  br label %92, !dbg !1501

87:                                               ; preds = %80
  %88 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1503, !tbaa !548
  %89 = tail call nonnull i8* @xpalloc(i8* noundef %88, i64* noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #35, !dbg !1504
  store i8* %89, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1505, !tbaa !548
  %90 = bitcast i8* %89 to %struct.field_range_pair*, !dbg !1506
  %91 = load i64, i64* @n_frp, align 8, !dbg !1507, !tbaa !822
  br label %92, !dbg !1506

92:                                               ; preds = %84, %87
  %93 = phi i8* [ %86, %84 ], [ %89, %87 ]
  %94 = phi i64 [ %81, %84 ], [ %91, %87 ], !dbg !1507
  %95 = phi %struct.field_range_pair* [ %85, %84 ], [ %90, %87 ], !dbg !1502
  %96 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %95, i64 %94, i32 0, !dbg !1508
  store i64 %55, i64* %96, align 8, !dbg !1509, !tbaa !1030
  br label %121

97:                                               ; preds = %51
  %98 = icmp eq i64 %17, 0, !dbg !1510
  br i1 %98, label %99, label %104, !dbg !1513

99:                                               ; preds = %97
  %100 = and i32 %1, 4, !dbg !1514
  %101 = icmp eq i32 %100, 0, !dbg !1514
  %102 = select i1 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.41, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.42, i64 0, i64 0), !dbg !1514
  %103 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %102, i32 noundef 5) #35, !dbg !1514
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %103) #35, !dbg !1514
  tail call void @usage(i32 noundef 1) #37, !dbg !1514
  unreachable, !dbg !1514

104:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 %17, metadata !1466, metadata !DIExpression()) #35, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %17, metadata !1471, metadata !DIExpression()) #35, !dbg !1516
  %105 = load i64, i64* @n_frp, align 8, !dbg !1518, !tbaa !822
  %106 = load i64, i64* @n_frp_allocated, align 8, !dbg !1519, !tbaa !822
  %107 = icmp eq i64 %105, %106, !dbg !1520
  br i1 %107, label %111, label %108, !dbg !1521

108:                                              ; preds = %104
  %109 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1522, !tbaa !548
  %110 = bitcast %struct.field_range_pair* %109 to i8*, !dbg !1521
  br label %116, !dbg !1521

111:                                              ; preds = %104
  %112 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1523, !tbaa !548
  %113 = tail call nonnull i8* @xpalloc(i8* noundef %112, i64* noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #35, !dbg !1524
  store i8* %113, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1525, !tbaa !548
  %114 = bitcast i8* %113 to %struct.field_range_pair*, !dbg !1526
  %115 = load i64, i64* @n_frp, align 8, !dbg !1527, !tbaa !822
  br label %116, !dbg !1526

116:                                              ; preds = %108, %111
  %117 = phi i8* [ %110, %108 ], [ %113, %111 ]
  %118 = phi i64 [ %105, %108 ], [ %115, %111 ], !dbg !1527
  %119 = phi %struct.field_range_pair* [ %109, %108 ], [ %114, %111 ], !dbg !1522
  %120 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %119, i64 %118, i32 0, !dbg !1528
  store i64 %17, i64* %120, align 8, !dbg !1529, !tbaa !1030
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !1423
  br label %121

121:                                              ; preds = %71, %92, %116
  %122 = phi %struct.field_range_pair* [ %74, %71 ], [ %95, %92 ], [ %119, %116 ]
  %123 = phi i64 [ -1, %71 ], [ %17, %92 ], [ %17, %116 ]
  %124 = phi i8* [ %72, %71 ], [ %93, %92 ], [ %117, %116 ]
  %125 = phi i64 [ %55, %71 ], [ %55, %92 ], [ %16, %116 ], !dbg !1530
  %126 = load i64, i64* @n_frp, align 8, !dbg !1531, !tbaa !822
  %127 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %122, i64 %126, i32 1, !dbg !1531
  store i64 %123, i64* %127, align 8, !dbg !1531, !tbaa !1015
  %128 = load i64, i64* @n_frp, align 8, !dbg !1531, !tbaa !822
  %129 = add nsw i64 %128, 1, !dbg !1531
  store i64 %129, i64* @n_frp, align 8, !dbg !1531, !tbaa !822
  call void @llvm.dbg.value(metadata i8 poison, metadata !228, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %125, metadata !224, metadata !DIExpression()), !dbg !1423
  %130 = load i8, i8* %22, align 1, !dbg !1532, !tbaa !660
  %131 = icmp eq i8 %130, 0, !dbg !1534
  br i1 %131, label %181, label %173, !dbg !1535

132:                                              ; preds = %41
  %133 = zext i8 %23 to i32, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %133, metadata !1537, metadata !DIExpression()), !dbg !1543
  %134 = add nsw i32 %133, -48, !dbg !1545
  %135 = icmp ult i32 %134, 10, !dbg !1545
  br i1 %135, label %136, label %167, !dbg !1546

136:                                              ; preds = %132
  %137 = load i8*, i8** @set_fields.num_start, align 8
  %138 = icmp ne i8* %137, null
  %139 = select i1 %21, i1 %138, i1 false, !dbg !1547
  br i1 %139, label %141, label %140, !dbg !1547

140:                                              ; preds = %136
  store i8* %22, i8** @set_fields.num_start, align 8, !dbg !1549, !tbaa !548
  br label %141, !dbg !1550

141:                                              ; preds = %136, %140
  %142 = phi i8* [ %137, %136 ], [ %22, %140 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !229, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !227, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !226, metadata !DIExpression()), !dbg !1423
  %143 = icmp ugt i64 %17, 1844674407370955161, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %17, metadata !225, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1423
  br i1 %143, label %159, label %144, !dbg !1551

144:                                              ; preds = %141
  %145 = select i1 %20, i1 true, i1 %19
  %146 = xor i1 %20, true
  %147 = select i1 %146, i1 true, i1 %18
  %148 = mul nuw i64 %17, 10, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %148, metadata !225, metadata !DIExpression()), !dbg !1423
  %149 = zext i64 %148 to i65, !dbg !1551
  %150 = zext i32 %134 to i65, !dbg !1551
  %151 = tail call { i65, i1 } @llvm.sadd.with.overflow.i65(i65 %149, i65 %150), !dbg !1551
  %152 = extractvalue { i65, i1 } %151, 1, !dbg !1551
  %153 = extractvalue { i65, i1 } %151, 0, !dbg !1551
  %154 = trunc i65 %153 to i64, !dbg !1551
  %155 = icmp slt i65 %153, 0, !dbg !1551
  %156 = or i1 %152, %155, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %154, metadata !225, metadata !DIExpression()), !dbg !1423
  %157 = icmp eq i64 %154, -1
  %158 = or i1 %156, %157, !dbg !1552
  br i1 %158, label %159, label %173, !dbg !1552

159:                                              ; preds = %144, %141
  %160 = tail call i64 @strspn(i8* noundef nonnull %142, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.45, i64 0, i64 0)) #36, !dbg !1553
  %161 = tail call noalias nonnull i8* @ximemdup0(i8* noundef nonnull %142, i64 noundef %160) #35, !dbg !1554
  call void @llvm.dbg.value(metadata i8* %161, metadata !230, metadata !DIExpression()), !dbg !1555
  %162 = and i32 %1, 4, !dbg !1556
  %163 = icmp eq i32 %162, 0, !dbg !1556
  %164 = select i1 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.46, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8.47, i64 0, i64 0), !dbg !1556
  %165 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %164, i32 noundef 5) #35, !dbg !1556
  %166 = tail call i8* @quote(i8* noundef nonnull %161) #35, !dbg !1556
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %165, i8* noundef %166) #35, !dbg !1556
  tail call void @free(i8* noundef nonnull %161) #35, !dbg !1557
  tail call void @usage(i32 noundef 1) #37, !dbg !1558
  unreachable, !dbg !1558

167:                                              ; preds = %132
  %168 = and i32 %1, 4, !dbg !1559
  %169 = icmp eq i32 %168, 0, !dbg !1559
  %170 = select i1 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.48, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.49, i64 0, i64 0), !dbg !1559
  %171 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %170, i32 noundef 5) #35, !dbg !1559
  %172 = tail call i8* @quote(i8* noundef nonnull %22) #35, !dbg !1559
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %171, i8* noundef %172) #35, !dbg !1559
  tail call void @usage(i32 noundef 1) #37, !dbg !1561
  unreachable, !dbg !1561

173:                                              ; preds = %144, %121, %39
  %174 = phi i64 [ %40, %39 ], [ %125, %121 ], [ %16, %144 ], !dbg !1423
  %175 = phi i64 [ 0, %39 ], [ 0, %121 ], [ %154, %144 ], !dbg !1562
  %176 = phi i1 [ %18, %39 ], [ false, %121 ], [ %147, %144 ]
  %177 = phi i1 [ %19, %39 ], [ false, %121 ], [ %145, %144 ]
  %178 = phi i1 [ true, %39 ], [ false, %121 ], [ %20, %144 ]
  %179 = phi i1 [ false, %39 ], [ false, %121 ], [ true, %144 ]
  %180 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %180, metadata !222, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 undef, metadata !229, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !228, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !227, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !226, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %175, metadata !225, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %174, metadata !224, metadata !DIExpression()), !dbg !1423
  br label %15, !dbg !1439, !llvm.loop !1563

181:                                              ; preds = %121
  %182 = icmp eq i64 %129, 0, !dbg !1565
  br i1 %182, label %183, label %188, !dbg !1567

183:                                              ; preds = %181
  %184 = and i32 %1, 4, !dbg !1568
  %185 = icmp eq i32 %184, 0, !dbg !1568
  %186 = select i1 %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13.50, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12.51, i64 0, i64 0), !dbg !1568
  %187 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %186, i32 noundef 5) #35, !dbg !1568
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %187) #35, !dbg !1568
  tail call void @usage(i32 noundef 1) #37, !dbg !1568
  unreachable, !dbg !1568

188:                                              ; preds = %181
  tail call void @qsort(i8* noundef %124, i64 noundef %129, i64 noundef 16, i32 (i8*, i8*)* noundef nonnull @compare_ranges) #35, !dbg !1570
  call void @llvm.dbg.value(metadata i64 0, metadata !238, metadata !DIExpression()), !dbg !1571
  %189 = load i64, i64* @n_frp, align 8, !dbg !1572, !tbaa !822
  %190 = icmp sgt i64 %189, 0, !dbg !1573
  br i1 %190, label %195, label %191, !dbg !1574

191:                                              ; preds = %233, %188
  %192 = phi i64 [ %189, %188 ], [ %234, %233 ], !dbg !1572
  %193 = and i32 %1, 2, !dbg !1575
  %194 = icmp eq i32 %193, 0, !dbg !1575
  br i1 %194, label %321, label %236, !dbg !1577

195:                                              ; preds = %188, %233
  %196 = phi i64 [ %234, %233 ], [ %189, %188 ]
  %197 = phi i64 [ %198, %233 ], [ 0, %188 ]
  call void @llvm.dbg.value(metadata i64 %197, metadata !238, metadata !DIExpression()), !dbg !1571
  %198 = add nuw nsw i64 %197, 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %198, metadata !240, metadata !DIExpression()), !dbg !1579
  %199 = icmp slt i64 %198, %196, !dbg !1580
  br i1 %199, label %200, label %233, !dbg !1582

200:                                              ; preds = %195
  %201 = sub nsw i64 1152921504606846974, %197
  %202 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1583, !tbaa !548
  %203 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %202, i64 %198, i32 0, !dbg !1586
  %204 = load i64, i64* %203, align 8, !dbg !1586, !tbaa !1030
  %205 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %202, i64 %197, i32 1, !dbg !1587
  %206 = load i64, i64* %205, align 8, !dbg !1587, !tbaa !1015
  %207 = icmp ugt i64 %204, %206, !dbg !1588
  br i1 %207, label %233, label %215, !dbg !1589

208:                                              ; preds = %215
  %209 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1583, !tbaa !548
  %210 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %209, i64 %198, i32 0, !dbg !1586
  %211 = load i64, i64* %210, align 8, !dbg !1586, !tbaa !1030
  %212 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %209, i64 %197, i32 1, !dbg !1587
  %213 = load i64, i64* %212, align 8, !dbg !1587, !tbaa !1015
  %214 = icmp ugt i64 %211, %213, !dbg !1588
  br i1 %214, label %233, label %215, !dbg !1589, !llvm.loop !1590

215:                                              ; preds = %200, %208
  %216 = phi i64 [ %213, %208 ], [ %206, %200 ]
  %217 = phi i64* [ %212, %208 ], [ %205, %200 ]
  %218 = phi %struct.field_range_pair* [ %209, %208 ], [ %202, %200 ]
  %219 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %218, i64 %198, i32 1, !dbg !1592
  %220 = load i64, i64* %219, align 8, !dbg !1592, !tbaa !1015
  %221 = icmp ugt i64 %220, %216, !dbg !1592
  %222 = select i1 %221, i64 %220, i64 %216, !dbg !1592
  store i64 %222, i64* %217, align 8, !dbg !1594, !tbaa !1015
  %223 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %218, i64 %198, !dbg !1595
  %224 = bitcast %struct.field_range_pair* %223 to i8*, !dbg !1596
  %225 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %223, i64 1, !dbg !1597
  %226 = bitcast %struct.field_range_pair* %225 to i8*, !dbg !1598
  %227 = load i64, i64* @n_frp, align 8, !dbg !1599, !tbaa !822
  %228 = add i64 %201, %227, !dbg !1600
  %229 = shl i64 %228, 4, !dbg !1601
  call void @llvm.dbg.value(metadata i8* %224, metadata !1602, metadata !DIExpression()) #35, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %226, metadata !1608, metadata !DIExpression()) #35, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %229, metadata !1609, metadata !DIExpression()) #35, !dbg !1610
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %224, i8* noundef nonnull align 1 %226, i64 noundef %229, i1 noundef false) #35, !dbg !1612
  %230 = load i64, i64* @n_frp, align 8, !dbg !1613, !tbaa !822
  %231 = add nsw i64 %230, -1, !dbg !1613
  store i64 %231, i64* @n_frp, align 8, !dbg !1613, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %198, metadata !240, metadata !DIExpression()), !dbg !1579
  %232 = icmp slt i64 %198, %231, !dbg !1580
  br i1 %232, label %208, label %233, !dbg !1582, !llvm.loop !1590

233:                                              ; preds = %208, %215, %200, %195
  %234 = phi i64 [ %196, %195 ], [ %196, %200 ], [ %231, %215 ], [ %231, %208 ], !dbg !1572
  call void @llvm.dbg.value(metadata i64 %198, metadata !238, metadata !DIExpression()), !dbg !1571
  %235 = icmp slt i64 %198, %234, !dbg !1573
  br i1 %235, label %195, label %191, !dbg !1574, !llvm.loop !1614

236:                                              ; preds = %191
  %237 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1616, !tbaa !548
  call void @llvm.dbg.value(metadata %struct.field_range_pair* %237, metadata !1619, metadata !DIExpression()) #35, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %192, metadata !1620, metadata !DIExpression()) #35, !dbg !1624
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !1625, !tbaa !548
  store i64 0, i64* @n_frp, align 8, !dbg !1626, !tbaa !822
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1627, !tbaa !822
  %238 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %237, i64 0, i32 0, !dbg !1628
  %239 = load i64, i64* %238, align 8, !dbg !1628, !tbaa !1030
  %240 = icmp ugt i64 %239, 1, !dbg !1630
  br i1 %240, label %241, label %251, !dbg !1631

241:                                              ; preds = %236
  %242 = add i64 %239, -1, !dbg !1632
  call void @llvm.dbg.value(metadata i64 1, metadata !1466, metadata !DIExpression()) #35, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %242, metadata !1471, metadata !DIExpression()) #35, !dbg !1633
  %243 = tail call nonnull i8* @xpalloc(i8* noundef null, i64* noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #35, !dbg !1635
  store i8* %243, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1636, !tbaa !548
  %244 = bitcast i8* %243 to %struct.field_range_pair*, !dbg !1637
  %245 = load i64, i64* @n_frp, align 8, !dbg !1638, !tbaa !822
  %246 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %244, i64 %245, i32 0, !dbg !1639
  store i64 1, i64* %246, align 8, !dbg !1640, !tbaa !1030
  %247 = load i64, i64* @n_frp, align 8, !dbg !1641, !tbaa !822
  %248 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %244, i64 %247, i32 1, !dbg !1642
  store i64 %242, i64* %248, align 8, !dbg !1643, !tbaa !1015
  %249 = load i64, i64* @n_frp, align 8, !dbg !1644, !tbaa !822
  %250 = add nsw i64 %249, 1, !dbg !1644
  store i64 %250, i64* @n_frp, align 8, !dbg !1644, !tbaa !822
  br label %251, !dbg !1645

251:                                              ; preds = %241, %236
  %252 = phi %struct.field_range_pair* [ %244, %241 ], [ null, %236 ]
  %253 = phi i8* [ %243, %241 ], [ null, %236 ]
  %254 = phi i64 [ %250, %241 ], [ 0, %236 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !1621, metadata !DIExpression()) #35, !dbg !1646
  %255 = icmp sgt i64 %192, 1, !dbg !1647
  br i1 %255, label %264, label %256, !dbg !1649

256:                                              ; preds = %295, %251
  %257 = phi i8* [ %253, %251 ], [ %297, %295 ]
  %258 = phi %struct.field_range_pair* [ %252, %251 ], [ %296, %295 ]
  %259 = phi i64 [ %254, %251 ], [ %299, %295 ]
  %260 = add nsw i64 %192, -1, !dbg !1650
  %261 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %237, i64 %260, i32 1, !dbg !1652
  %262 = load i64, i64* %261, align 8, !dbg !1652, !tbaa !1015
  %263 = icmp eq i64 %262, -1, !dbg !1653
  br i1 %263, label %318, label %302, !dbg !1654

264:                                              ; preds = %251, %295
  %265 = phi %struct.field_range_pair* [ %296, %295 ], [ %252, %251 ]
  %266 = phi i8* [ %297, %295 ], [ %253, %251 ]
  %267 = phi %struct.field_range_pair* [ %298, %295 ], [ %252, %251 ]
  %268 = phi i64 [ %299, %295 ], [ %254, %251 ]
  %269 = phi i64 [ %300, %295 ], [ 1, %251 ]
  call void @llvm.dbg.value(metadata i64 %269, metadata !1621, metadata !DIExpression()) #35, !dbg !1646
  %270 = add nsw i64 %269, -1, !dbg !1655
  %271 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %237, i64 %270, i32 1, !dbg !1658
  %272 = load i64, i64* %271, align 8, !dbg !1658, !tbaa !1015
  %273 = add i64 %272, 1, !dbg !1659
  %274 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %237, i64 %269, i32 0, !dbg !1660
  %275 = load i64, i64* %274, align 8, !dbg !1660, !tbaa !1030
  %276 = icmp eq i64 %273, %275, !dbg !1661
  br i1 %276, label %295, label %277, !dbg !1662

277:                                              ; preds = %264
  %278 = add i64 %275, -1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %273, metadata !1466, metadata !DIExpression()) #35, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %278, metadata !1471, metadata !DIExpression()) #35, !dbg !1664
  %279 = load i64, i64* @n_frp_allocated, align 8, !dbg !1666, !tbaa !822
  %280 = icmp eq i64 %268, %279, !dbg !1667
  br i1 %280, label %281, label %285, !dbg !1668

281:                                              ; preds = %277
  %282 = tail call nonnull i8* @xpalloc(i8* noundef %266, i64* noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #35, !dbg !1669
  store i8* %282, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1670, !tbaa !548
  %283 = bitcast i8* %282 to %struct.field_range_pair*, !dbg !1671
  %284 = load i64, i64* @n_frp, align 8, !dbg !1672, !tbaa !822
  br label %285, !dbg !1671

285:                                              ; preds = %281, %277
  %286 = phi %struct.field_range_pair* [ %283, %281 ], [ %265, %277 ]
  %287 = phi i8* [ %282, %281 ], [ %266, %277 ]
  %288 = phi %struct.field_range_pair* [ %283, %281 ], [ %267, %277 ]
  %289 = phi i64 [ %284, %281 ], [ %268, %277 ], !dbg !1672
  %290 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %288, i64 %289, i32 0, !dbg !1673
  store i64 %273, i64* %290, align 8, !dbg !1674, !tbaa !1030
  %291 = load i64, i64* @n_frp, align 8, !dbg !1675, !tbaa !822
  %292 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %288, i64 %291, i32 1, !dbg !1676
  store i64 %278, i64* %292, align 8, !dbg !1677, !tbaa !1015
  %293 = load i64, i64* @n_frp, align 8, !dbg !1678, !tbaa !822
  %294 = add nsw i64 %293, 1, !dbg !1678
  store i64 %294, i64* @n_frp, align 8, !dbg !1678, !tbaa !822
  br label %295, !dbg !1679

295:                                              ; preds = %285, %264
  %296 = phi %struct.field_range_pair* [ %265, %264 ], [ %286, %285 ]
  %297 = phi i8* [ %266, %264 ], [ %287, %285 ]
  %298 = phi %struct.field_range_pair* [ %267, %264 ], [ %288, %285 ]
  %299 = phi i64 [ %268, %264 ], [ %294, %285 ]
  %300 = add nuw nsw i64 %269, 1, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %300, metadata !1621, metadata !DIExpression()) #35, !dbg !1646
  %301 = icmp eq i64 %300, %192, !dbg !1647
  br i1 %301, label %256, label %264, !dbg !1649, !llvm.loop !1681

302:                                              ; preds = %256
  %303 = add nuw i64 %262, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %303, metadata !1466, metadata !DIExpression()) #35, !dbg !1684
  call void @llvm.dbg.value(metadata i64 -1, metadata !1471, metadata !DIExpression()) #35, !dbg !1684
  %304 = load i64, i64* @n_frp_allocated, align 8, !dbg !1686, !tbaa !822
  %305 = icmp eq i64 %259, %304, !dbg !1687
  br i1 %305, label %306, label %310, !dbg !1688

306:                                              ; preds = %302
  %307 = tail call nonnull i8* @xpalloc(i8* noundef %257, i64* noundef nonnull @n_frp_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 16) #35, !dbg !1689
  store i8* %307, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1690, !tbaa !548
  %308 = bitcast i8* %307 to %struct.field_range_pair*, !dbg !1691
  %309 = load i64, i64* @n_frp, align 8, !dbg !1692, !tbaa !822
  br label %310, !dbg !1691

310:                                              ; preds = %306, %302
  %311 = phi i64 [ %309, %306 ], [ %259, %302 ], !dbg !1692
  %312 = phi %struct.field_range_pair* [ %308, %306 ], [ %258, %302 ], !dbg !1693
  %313 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %312, i64 %311, i32 0, !dbg !1694
  store i64 %303, i64* %313, align 8, !dbg !1695, !tbaa !1030
  %314 = load i64, i64* @n_frp, align 8, !dbg !1696, !tbaa !822
  %315 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %312, i64 %314, i32 1, !dbg !1697
  store i64 -1, i64* %315, align 8, !dbg !1698, !tbaa !1015
  %316 = load i64, i64* @n_frp, align 8, !dbg !1699, !tbaa !822
  %317 = add nsw i64 %316, 1, !dbg !1699
  store i64 %317, i64* @n_frp, align 8, !dbg !1699, !tbaa !822
  br label %318, !dbg !1700

318:                                              ; preds = %256, %310
  %319 = bitcast %struct.field_range_pair* %237 to i8*, !dbg !1701
  tail call void @free(i8* noundef %319) #35, !dbg !1702
  %320 = load i64, i64* @n_frp, align 8, !dbg !1703, !tbaa !822
  br label %321, !dbg !1704

321:                                              ; preds = %318, %191
  %322 = phi i64 [ %320, %318 ], [ %192, %191 ], !dbg !1703
  %323 = add nsw i64 %322, 1, !dbg !1703
  store i64 %323, i64* @n_frp, align 8, !dbg !1703, !tbaa !822
  %324 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1705, !tbaa !548
  %325 = shl i64 %323, 4, !dbg !1706
  %326 = tail call i8* @xrealloc(i8* noundef %324, i64 noundef %325) #40, !dbg !1707
  %327 = bitcast i8* %326 to %struct.field_range_pair*, !dbg !1707
  store i8* %326, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1708, !tbaa !548
  %328 = load i64, i64* @n_frp, align 8, !dbg !1709, !tbaa !822
  %329 = add nsw i64 %328, -1, !dbg !1710
  %330 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %327, i64 %329, i32 1, !dbg !1711
  store i64 -1, i64* %330, align 8, !dbg !1712, !tbaa !1015
  %331 = load i64, i64* @n_frp, align 8, !dbg !1713, !tbaa !822
  %332 = add nsw i64 %331, -1, !dbg !1714
  %333 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %327, i64 %332, i32 0, !dbg !1715
  store i64 -1, i64* %333, align 8, !dbg !1716, !tbaa !1030
  ret void, !dbg !1717
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i65, i1 } @llvm.sadd.with.overflow.i65(i65, i65) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @compare_ranges(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #14 !dbg !1718 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1722, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8* %1, metadata !1723, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8* %0, metadata !1724, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8* %1, metadata !1727, metadata !DIExpression()), !dbg !1728
  %3 = bitcast i8* %0 to i64*, !dbg !1729
  %4 = load i64, i64* %3, align 8, !dbg !1729, !tbaa !1030
  %5 = bitcast i8* %1 to i64*, !dbg !1729
  %6 = load i64, i64* %5, align 8, !dbg !1729, !tbaa !1030
  %7 = icmp ugt i64 %4, %6, !dbg !1729
  %8 = zext i1 %7 to i32, !dbg !1729
  %9 = icmp ult i64 %4, %6, !dbg !1729
  %10 = sext i1 %9 to i32, !dbg !1729
  %11 = add nsw i32 %10, %8, !dbg !1729
  ret i32 %11, !dbg !1730
}

; Function Attrs: nofree
declare !dbg !1731 void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #16 !dbg !1736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1738, metadata !DIExpression()), !dbg !1739
  store i8* %0, i8** @file_name, align 8, !dbg !1740, !tbaa !548
  ret void, !dbg !1741
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1742 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1746, metadata !DIExpression()), !dbg !1747
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1748, !tbaa !1749
  ret void, !dbg !1751
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1752 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1757, !tbaa !548
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1758
  %3 = icmp eq i32 %2, 0, !dbg !1759
  br i1 %3, label %22, label %4, !dbg !1760

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1761, !tbaa !1749, !range !1762
  %6 = icmp eq i8 %5, 0, !dbg !1761
  br i1 %6, label %11, label %7, !dbg !1763

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1764
  %9 = load i32, i32* %8, align 4, !dbg !1764, !tbaa !651
  %10 = icmp eq i32 %9, 32, !dbg !1765
  br i1 %10, label %22, label %11, !dbg !1766

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.87, i64 0, i64 0), i32 noundef 5) #35, !dbg !1767
  call void @llvm.dbg.value(metadata i8* %12, metadata !1754, metadata !DIExpression()), !dbg !1768
  %13 = load i8*, i8** @file_name, align 8, !dbg !1769, !tbaa !548
  %14 = icmp eq i8* %13, null, !dbg !1769
  %15 = tail call i32* @__errno_location() #38, !dbg !1771
  %16 = load i32, i32* %15, align 4, !dbg !1771, !tbaa !651
  br i1 %14, label %19, label %17, !dbg !1772

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1773
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.88, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1773
  br label %20, !dbg !1773

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.89, i64 0, i64 0), i8* noundef %12) #35, !dbg !1774
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1775, !tbaa !651
  tail call void @_exit(i32 noundef %21) #37, !dbg !1776
  unreachable, !dbg !1776

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1777, !tbaa !548
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1779
  %25 = icmp eq i32 %24, 0, !dbg !1780
  br i1 %25, label %28, label %26, !dbg !1781

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1782, !tbaa !651
  tail call void @_exit(i32 noundef %27) #37, !dbg !1783
  unreachable, !dbg !1783

28:                                               ; preds = %22
  ret void, !dbg !1784
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1785 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1789, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8* %2, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1792, metadata !DIExpression()), !dbg !1794
  tail call fastcc void @flush_stdout(), !dbg !1795
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1796, !tbaa !548
  %7 = icmp eq void ()* %6, null, !dbg !1796
  br i1 %7, label %9, label %8, !dbg !1798

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1799
  br label %13, !dbg !1799

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1800, !tbaa !548
  %11 = tail call i8* @getprogname() #36, !dbg !1800
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0), i8* noundef %11) #35, !dbg !1800
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1802
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1802
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1802, !tbaa.struct !1803
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1802
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1802
  ret void, !dbg !1804
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1805 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1807, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 1, metadata !1809, metadata !DIExpression()) #35, !dbg !1812
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1815
  %2 = icmp slt i32 %1, 0, !dbg !1816
  br i1 %2, label %6, label %3, !dbg !1817

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1818, !tbaa !548
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1818
  br label %6, !dbg !1818

6:                                                ; preds = %3, %0
  ret void, !dbg !1819
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1820 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1822, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i32 %1, metadata !1823, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i8* %2, metadata !1824, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1825, metadata !DIExpression()), !dbg !1827
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1828, !tbaa !548
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1829
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1830, metadata !DIExpression()) #35, !dbg !1873
  call void @llvm.dbg.value(metadata i8* %2, metadata !1871, metadata !DIExpression()) #35, !dbg !1873
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1875
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1875, !noalias !1876
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1875
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1875
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1875, !noalias !1876
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1880, !tbaa !651
  %12 = add i32 %11, 1, !dbg !1880
  store i32 %12, i32* @error_message_count, align 4, !dbg !1880, !tbaa !651
  %13 = icmp eq i32 %1, 0, !dbg !1881
  br i1 %13, label %24, label %14, !dbg !1883

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1884, metadata !DIExpression()) #35, !dbg !1892
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1894
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1894
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1888, metadata !DIExpression()) #35, !dbg !1895
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1896
  call void @llvm.dbg.value(metadata i8* %16, metadata !1887, metadata !DIExpression()) #35, !dbg !1892
  %17 = icmp eq i8* %16, null, !dbg !1897
  br i1 %17, label %18, label %20, !dbg !1899

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.92, i64 0, i64 0), i32 noundef 5) #35, !dbg !1900
  call void @llvm.dbg.value(metadata i8* %19, metadata !1887, metadata !DIExpression()) #35, !dbg !1892
  br label %20, !dbg !1901

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1892
  call void @llvm.dbg.value(metadata i8* %21, metadata !1887, metadata !DIExpression()) #35, !dbg !1892
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1902, !tbaa !548
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.93, i64 0, i64 0), i8* noundef %21) #35, !dbg !1902
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1903
  br label %24, !dbg !1904

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1905, !tbaa !548
  call void @llvm.dbg.value(metadata i32 10, metadata !1906, metadata !DIExpression()) #35, !dbg !1912
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1911, metadata !DIExpression()) #35, !dbg !1912
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1914
  %27 = load i8*, i8** %26, align 8, !dbg !1914, !tbaa !964
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1914
  %29 = load i8*, i8** %28, align 8, !dbg !1914, !tbaa !965
  %30 = icmp ult i8* %27, %29, !dbg !1914
  br i1 %30, label %33, label %31, !dbg !1914, !prof !949

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1914
  br label %35, !dbg !1914

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1914
  store i8* %34, i8** %26, align 8, !dbg !1914, !tbaa !964
  store i8 10, i8* %27, align 1, !dbg !1914, !tbaa !660
  br label %35, !dbg !1914

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1915, !tbaa !548
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1915
  %38 = icmp eq i32 %0, 0, !dbg !1916
  br i1 %38, label %40, label %39, !dbg !1918

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1919
  unreachable, !dbg !1919

40:                                               ; preds = %35
  ret void, !dbg !1920
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1921 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1925 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1929 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1933, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %1, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* %2, metadata !1935, metadata !DIExpression()), !dbg !1937
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1938
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1938
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1936, metadata !DIExpression()), !dbg !1939
  call void @llvm.va_start(i8* nonnull %6), !dbg !1940
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1941
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1941, !tbaa.struct !1803
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #41, !dbg !1941
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1941
  call void @llvm.va_end(i8* nonnull %6), !dbg !1942
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1943
  ret void, !dbg !1943
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !264 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !282, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %1, metadata !283, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %2, metadata !284, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %3, metadata !285, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %4, metadata !286, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !287, metadata !DIExpression()), !dbg !1945
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1946, !tbaa !651
  %9 = icmp eq i32 %8, 0, !dbg !1946
  br i1 %9, label %24, label %10, !dbg !1948

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1949, !tbaa !651
  %12 = icmp eq i32 %11, %3, !dbg !1952
  br i1 %12, label %13, label %23, !dbg !1953

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1954, !tbaa !548
  %15 = icmp eq i8* %14, %2, !dbg !1955
  br i1 %15, label %39, label %16, !dbg !1956

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1957
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1958
  br i1 %19, label %20, label %23, !dbg !1958

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1959
  %22 = icmp eq i32 %21, 0, !dbg !1960
  br i1 %22, label %39, label %23, !dbg !1961

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1962, !tbaa !548
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1963, !tbaa !651
  br label %24, !dbg !1964

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1965
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1966, !tbaa !548
  %26 = icmp eq void ()* %25, null, !dbg !1966
  br i1 %26, label %28, label %27, !dbg !1968

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1969
  br label %32, !dbg !1969

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1970, !tbaa !548
  %30 = tail call i8* @getprogname() #36, !dbg !1970
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.96, i64 0, i64 0), i8* noundef %30) #35, !dbg !1970
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1972, !tbaa !548
  %34 = icmp eq i8* %2, null, !dbg !1972
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.98, i64 0, i64 0), !dbg !1972
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1972
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1973
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1973
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1973
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1973, !tbaa.struct !1803
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1973
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1973
  br label %39, !dbg !1974

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1974
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1975 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1979, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32 %1, metadata !1980, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8* %2, metadata !1981, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32 %3, metadata !1982, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8* %4, metadata !1983, metadata !DIExpression()), !dbg !1985
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1986
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1986
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1984, metadata !DIExpression()), !dbg !1987
  call void @llvm.va_start(i8* nonnull %8), !dbg !1988
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1989
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1989, !tbaa.struct !1803
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #41, !dbg !1989
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1989
  call void @llvm.va_end(i8* nonnull %8), !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1991
  ret void, !dbg !1991
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1998, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %1, metadata !1999, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %2, metadata !2000, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 %3, metadata !2001, metadata !DIExpression()), !dbg !2002
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #35, !dbg !2003
  ret void, !dbg !2004
}

; Function Attrs: nounwind
declare !dbg !2005 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !2008 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2046, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %1, metadata !2047, metadata !DIExpression()), !dbg !2048
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2049
  br i1 %3, label %7, label %4, !dbg !2051

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %5, metadata !1998, metadata !DIExpression()) #35, !dbg !2053
  call void @llvm.dbg.value(metadata i64 0, metadata !1999, metadata !DIExpression()) #35, !dbg !2053
  call void @llvm.dbg.value(metadata i64 0, metadata !2000, metadata !DIExpression()) #35, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %1, metadata !2001, metadata !DIExpression()) #35, !dbg !2053
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #35, !dbg !2055
  br label %7, !dbg !2056

7:                                                ; preds = %4, %2
  ret void, !dbg !2057
}

; Function Attrs: nofree nounwind
declare !dbg !2058 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2061 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2099, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 0, metadata !2100, metadata !DIExpression()), !dbg !2103
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %2, metadata !2101, metadata !DIExpression()), !dbg !2103
  %3 = icmp slt i32 %2, 0, !dbg !2105
  br i1 %3, label %4, label %6, !dbg !2107

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2108
  br label %24, !dbg !2109

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !2110
  %8 = icmp eq i32 %7, 0, !dbg !2110
  br i1 %8, label %13, label %9, !dbg !2112

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !2113
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !2114
  %12 = icmp eq i64 %11, -1, !dbg !2115
  br i1 %12, label %16, label %13, !dbg !2116

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !2117
  %15 = icmp eq i32 %14, 0, !dbg !2117
  br i1 %15, label %16, label %18, !dbg !2118

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 0, metadata !2102, metadata !DIExpression()), !dbg !2103
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2119
  call void @llvm.dbg.value(metadata i32 %21, metadata !2102, metadata !DIExpression()), !dbg !2103
  br label %24, !dbg !2120

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !2121
  %20 = load i32, i32* %19, align 4, !dbg !2121, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %20, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 0, metadata !2102, metadata !DIExpression()), !dbg !2103
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2119
  call void @llvm.dbg.value(metadata i32 %21, metadata !2102, metadata !DIExpression()), !dbg !2103
  %22 = icmp eq i32 %20, 0, !dbg !2122
  br i1 %22, label %24, label %23, !dbg !2120

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !2124, !tbaa !651
  call void @llvm.dbg.value(metadata i32 -1, metadata !2102, metadata !DIExpression()), !dbg !2103
  br label %24, !dbg !2126

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2103
  ret i32 %25, !dbg !2127
}

; Function Attrs: nofree nounwind
declare !dbg !2128 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2129 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !2133 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2171, metadata !DIExpression()), !dbg !2172
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !2173
  br i1 %2, label %6, label %3, !dbg !2175

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !2176
  %5 = icmp eq i32 %4, 0, !dbg !2176
  br i1 %5, label %6, label %8, !dbg !2177

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !2178
  br label %17, !dbg !2179

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2180, metadata !DIExpression()) #35, !dbg !2185
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2187
  %10 = load i32, i32* %9, align 8, !dbg !2187, !tbaa !1156
  %11 = and i32 %10, 256, !dbg !2189
  %12 = icmp eq i32 %11, 0, !dbg !2189
  br i1 %12, label %15, label %13, !dbg !2190

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !2191
  br label %15, !dbg !2191

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !2192
  br label %17, !dbg !2193

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !2172
  ret i32 %18, !dbg !2194
}

; Function Attrs: nofree nounwind
declare !dbg !2195 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2196 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2234, metadata !DIExpression()), !dbg !2235
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !2236
  ret i32 0, !dbg !2237
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !2238 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2276, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %1, metadata !2277, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 %2, metadata !2278, metadata !DIExpression()), !dbg !2282
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2283
  %5 = load i8*, i8** %4, align 8, !dbg !2283, !tbaa !948
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2284
  %7 = load i8*, i8** %6, align 8, !dbg !2284, !tbaa !946
  %8 = icmp eq i8* %5, %7, !dbg !2285
  br i1 %8, label %9, label %28, !dbg !2286

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2287
  %11 = load i8*, i8** %10, align 8, !dbg !2287, !tbaa !964
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !2288
  %13 = load i8*, i8** %12, align 8, !dbg !2288, !tbaa !2289
  %14 = icmp eq i8* %11, %13, !dbg !2290
  br i1 %14, label %15, label %28, !dbg !2291

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !2292
  %17 = load i8*, i8** %16, align 8, !dbg !2292, !tbaa !2293
  %18 = icmp eq i8* %17, null, !dbg !2294
  br i1 %18, label %19, label %28, !dbg !2295

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !2296
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %21, metadata !2279, metadata !DIExpression()), !dbg !2298
  %22 = icmp eq i64 %21, -1, !dbg !2299
  br i1 %22, label %30, label %23, !dbg !2301

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2302
  %25 = load i32, i32* %24, align 8, !dbg !2303, !tbaa !1156
  %26 = and i32 %25, -17, !dbg !2303
  store i32 %26, i32* %24, align 8, !dbg !2303, !tbaa !1156
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !2304
  store i64 %21, i64* %27, align 8, !dbg !2305, !tbaa !2306
  br label %30, !dbg !2307

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2308
  br label %30, !dbg !2309

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !2282
  ret i32 %31, !dbg !2310
}

; Function Attrs: nofree nounwind
declare !dbg !2311 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @getndelim2(i8** nocapture noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, %struct._IO_FILE* noundef %6) local_unnamed_addr #12 !dbg !2314 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8** %0, metadata !2352, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64* %1, metadata !2353, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %2, metadata !2354, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %3, metadata !2355, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %4, metadata !2356, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %5, metadata !2357, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !2358, metadata !DIExpression()), !dbg !2386
  %9 = load i8*, i8** %0, align 8, !dbg !2387, !tbaa !548
  call void @llvm.dbg.value(metadata i8* %9, metadata !2359, metadata !DIExpression()), !dbg !2386
  %10 = load i64, i64* %1, align 8, !dbg !2388, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %10, metadata !2360, metadata !DIExpression()), !dbg !2386
  %11 = icmp eq i8* %9, null, !dbg !2389
  br i1 %11, label %12, label %17, !dbg !2391

12:                                               ; preds = %7
  %13 = icmp ult i64 %3, 64, !dbg !2392
  %14 = select i1 %13, i64 %3, i64 64, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %14, metadata !2360, metadata !DIExpression()), !dbg !2386
  %15 = tail call noalias i8* @malloc(i64 noundef %14) #35, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %15, metadata !2359, metadata !DIExpression()), !dbg !2386
  %16 = icmp eq i8* %15, null, !dbg !2396
  br i1 %16, label %154, label %17, !dbg !2398

17:                                               ; preds = %12, %7
  %18 = phi i64 [ %10, %7 ], [ %14, %12 ], !dbg !2386
  %19 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !2386
  call void @llvm.dbg.value(metadata i8* %19, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %18, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 -1, metadata !2361, metadata !DIExpression()), !dbg !2386
  %20 = icmp ult i64 %18, %2, !dbg !2399
  br i1 %20, label %141, label %21, !dbg !2401

21:                                               ; preds = %17
  %22 = sub i64 %18, %2, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %22, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata !DIArgList(i8* %19, i64 %2), metadata !2363, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2386
  %23 = icmp ne i64 %22, 0, !dbg !2403
  %24 = icmp ult i64 %18, %3
  %25 = or i1 %24, %23, !dbg !2405
  br i1 %25, label %26, label %141, !dbg !2405

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %19, i64 %2, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %27, metadata !2363, metadata !DIExpression()), !dbg !2386
  %28 = icmp eq i32 %4, -1, !dbg !2407
  %29 = icmp eq i32 %5, -1, !dbg !2409
  %30 = select i1 %29, i32 %4, i32 %5, !dbg !2409
  %31 = select i1 %28, i32 %5, i32 %30, !dbg !2409
  %32 = select i1 %28, i32 %5, i32 %4, !dbg !2409
  call void @llvm.dbg.value(metadata i32 %32, metadata !2356, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %31, metadata !2357, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2364, metadata !DIExpression()), !dbg !2386
  %33 = bitcast i64* %8 to i8*
  %34 = icmp eq i32 %32, -1
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 1
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 2
  %37 = xor i64 %2, -9223372036854775808
  br label %38, !dbg !2410

38:                                               ; preds = %136, %26
  %39 = phi i64 [ %18, %26 ], [ %113, %136 ], !dbg !2386
  %40 = phi i64 [ %22, %26 ], [ %130, %136 ], !dbg !2386
  %41 = phi i8* [ %27, %26 ], [ %131, %136 ], !dbg !2386
  %42 = phi i32 [ undef, %26 ], [ %78, %136 ]
  %43 = phi i8* [ %19, %26 ], [ %116, %136 ], !dbg !2386
  call void @llvm.dbg.value(metadata i8* %43, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %42, metadata !2365, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 poison, metadata !2364, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %41, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %40, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %39, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #35, !dbg !2412
  call void @llvm.dbg.value(metadata i64* %8, metadata !2368, metadata !DIExpression(DW_OP_deref)), !dbg !2411
  %44 = call i8* @freadptr(%struct._IO_FILE* noundef %6, i64* noundef nonnull %8) #35, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %44, metadata !2367, metadata !DIExpression()), !dbg !2411
  %45 = icmp eq i8* %44, null, !dbg !2414
  br i1 %45, label %56, label %46, !dbg !2415

46:                                               ; preds = %38
  %47 = load i64, i64* %8, align 8, !dbg !2411, !tbaa !822
  br i1 %34, label %75, label %48, !dbg !2416

48:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64 %47, metadata !2368, metadata !DIExpression()), !dbg !2411
  %49 = call i8* @memchr2(i8* noundef nonnull %44, i32 noundef %32, i32 noundef %31, i64 noundef %47) #36, !dbg !2417
  call void @llvm.dbg.value(metadata i8* %49, metadata !2369, metadata !DIExpression()), !dbg !2418
  %50 = icmp eq i8* %49, null, !dbg !2419
  br i1 %50, label %75, label %51, !dbg !2421

51:                                               ; preds = %48
  %52 = ptrtoint i8* %49 to i64, !dbg !2422
  %53 = ptrtoint i8* %44 to i64, !dbg !2422
  %54 = sub i64 1, %53, !dbg !2422
  %55 = add i64 %54, %52, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %55, metadata !2368, metadata !DIExpression()), !dbg !2411
  store i64 %55, i64* %8, align 8, !dbg !2425, !tbaa !822
  call void @llvm.dbg.value(metadata i8 1, metadata !2364, metadata !DIExpression()), !dbg !2386
  br label %75, !dbg !2426

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !2427, metadata !DIExpression()) #35, !dbg !2432
  %57 = load i8*, i8** %35, align 8, !dbg !2435, !tbaa !946
  %58 = load i8*, i8** %36, align 8, !dbg !2435, !tbaa !948
  %59 = icmp ult i8* %57, %58, !dbg !2435
  br i1 %59, label %60, label %64, !dbg !2435, !prof !949

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !2435
  store i8* %61, i8** %35, align 8, !dbg !2435, !tbaa !946
  %62 = load i8, i8* %57, align 1, !dbg !2435, !tbaa !660
  %63 = zext i8 %62 to i32, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %65, metadata !2365, metadata !DIExpression()), !dbg !2411
  br label %70, !dbg !2436

64:                                               ; preds = %56
  %65 = call i32 @__uflow(%struct._IO_FILE* noundef nonnull %6) #35, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %65, metadata !2365, metadata !DIExpression()), !dbg !2411
  %66 = icmp eq i32 %65, -1, !dbg !2437
  br i1 %66, label %67, label %70, !dbg !2436

67:                                               ; preds = %64
  %68 = icmp eq i8* %41, %43, !dbg !2439
  br i1 %68, label %137, label %69, !dbg !2442

69:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8* %43, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %78, metadata !2365, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 poison, metadata !2364, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %41, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %40, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %39, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #35, !dbg !2443
  br label %144

70:                                               ; preds = %60, %64
  %71 = phi i32 [ %63, %60 ], [ %65, %64 ]
  %72 = icmp eq i32 %71, %32, !dbg !2444
  %73 = icmp eq i32 %71, %31
  %74 = or i1 %72, %73, !dbg !2446
  call void @llvm.dbg.value(metadata i8 poison, metadata !2364, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 1, metadata !2368, metadata !DIExpression()), !dbg !2411
  store i64 1, i64* %8, align 8, !dbg !2447, !tbaa !822
  br label %75

75:                                               ; preds = %46, %48, %51, %70
  %76 = phi i64 [ 1, %70 ], [ %55, %51 ], [ %47, %48 ], [ %47, %46 ], !dbg !2448
  %77 = phi i1 [ %74, %70 ], [ true, %51 ], [ false, %48 ], [ false, %46 ]
  %78 = phi i32 [ %71, %70 ], [ %42, %51 ], [ %42, %48 ], [ %42, %46 ]
  call void @llvm.dbg.value(metadata i32 %78, metadata !2365, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 poison, metadata !2364, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %76, metadata !2368, metadata !DIExpression()), !dbg !2411
  %79 = add i64 %76, 1, !dbg !2449
  %80 = icmp ult i64 %40, %79, !dbg !2450
  %81 = icmp ult i64 %39, %3
  %82 = select i1 %80, i1 %81, i1 false, !dbg !2451
  br i1 %82, label %83, label %112, !dbg !2451

83:                                               ; preds = %75
  %84 = icmp ult i64 %39, 64, !dbg !2452
  %85 = add i64 %39, 64, !dbg !2453
  %86 = shl i64 %39, 1, !dbg !2453
  %87 = select i1 %84, i64 %85, i64 %86, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %87, metadata !2374, metadata !DIExpression()), !dbg !2454
  %88 = ptrtoint i8* %41 to i64, !dbg !2455
  %89 = ptrtoint i8* %43 to i64, !dbg !2455
  %90 = sub i64 %88, %89, !dbg !2455
  %91 = sub i64 %87, %90, !dbg !2457
  %92 = icmp ult i64 %91, %79, !dbg !2458
  %93 = add i64 %79, %90, !dbg !2459
  %94 = select i1 %92, i64 %93, i64 %87, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %94, metadata !2374, metadata !DIExpression()), !dbg !2454
  %95 = icmp uge i64 %39, %94, !dbg !2460
  %96 = icmp ugt i64 %94, %3
  %97 = or i1 %95, %96, !dbg !2462
  %98 = select i1 %97, i64 %3, i64 %94, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %98, metadata !2374, metadata !DIExpression()), !dbg !2454
  %99 = sub i64 %98, %2, !dbg !2463
  %100 = icmp slt i64 %99, 0, !dbg !2464
  br i1 %100, label %101, label %103, !dbg !2465

101:                                              ; preds = %83
  call void @llvm.dbg.value(metadata i64 %37, metadata !2378, metadata !DIExpression()), !dbg !2466
  %102 = icmp eq i64 %39, %37, !dbg !2467
  call void @llvm.dbg.value(metadata i64 undef, metadata !2374, metadata !DIExpression()), !dbg !2454
  br i1 %102, label %140, label %103

103:                                              ; preds = %101, %83
  %104 = phi i64 [ %37, %101 ], [ %98, %83 ], !dbg !2469
  call void @llvm.dbg.value(metadata i64 %104, metadata !2374, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %104, i64 %90), metadata !2362, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %43, metadata !2470, metadata !DIExpression()) #35, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %104, metadata !2476, metadata !DIExpression()) #35, !dbg !2477
  %105 = icmp eq i64 %104, 0, !dbg !2479
  %106 = select i1 %105, i64 1, i64 %104, !dbg !2479
  %107 = call i8* @realloc(i8* noundef %43, i64 noundef %106) #35, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %107, metadata !2377, metadata !DIExpression()), !dbg !2454
  %108 = icmp eq i8* %107, null, !dbg !2481
  br i1 %108, label %137, label %109, !dbg !2483

109:                                              ; preds = %103
  %110 = sub i64 %104, %90, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %110, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %107, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %104, metadata !2360, metadata !DIExpression()), !dbg !2386
  %111 = getelementptr inbounds i8, i8* %107, i64 %90, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %43, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %41, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %40, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %39, metadata !2360, metadata !DIExpression()), !dbg !2386
  br label %112

112:                                              ; preds = %109, %75
  %113 = phi i64 [ %39, %75 ], [ %104, %109 ], !dbg !2386
  %114 = phi i64 [ %40, %75 ], [ %110, %109 ], !dbg !2386
  %115 = phi i8* [ %41, %75 ], [ %111, %109 ], !dbg !2386
  %116 = phi i8* [ %43, %75 ], [ %107, %109 ], !dbg !2386
  call void @llvm.dbg.value(metadata i8* %116, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %115, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %114, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %113, metadata !2360, metadata !DIExpression()), !dbg !2386
  %117 = icmp ugt i64 %114, 1, !dbg !2486
  br i1 %117, label %118, label %129, !dbg !2487

118:                                              ; preds = %112
  %119 = add i64 %114, -1, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %119, metadata !2381, metadata !DIExpression()), !dbg !2489
  %120 = load i64, i64* %8, align 8, !dbg !2490, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %120, metadata !2368, metadata !DIExpression()), !dbg !2411
  %121 = icmp ult i64 %120, %119, !dbg !2492
  %122 = select i1 %121, i64 %120, i64 %119, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %122, metadata !2381, metadata !DIExpression()), !dbg !2489
  br i1 %45, label %124, label %123, !dbg !2494

123:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8* %115, metadata !2495, metadata !DIExpression()) #35, !dbg !2503
  call void @llvm.dbg.value(metadata i8* %44, metadata !2501, metadata !DIExpression()) #35, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %122, metadata !2502, metadata !DIExpression()) #35, !dbg !2503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %115, i8* noundef nonnull align 1 %44, i64 noundef %122, i1 noundef false) #35, !dbg !2506
  br label %126, !dbg !2507

124:                                              ; preds = %118
  %125 = trunc i32 %78 to i8, !dbg !2508
  store i8 %125, i8* %115, align 1, !dbg !2509, !tbaa !660
  br label %126

126:                                              ; preds = %124, %123
  %127 = getelementptr inbounds i8, i8* %115, i64 %122, !dbg !2510
  call void @llvm.dbg.value(metadata i8* %127, metadata !2363, metadata !DIExpression()), !dbg !2386
  %128 = sub i64 %114, %122, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %128, metadata !2362, metadata !DIExpression()), !dbg !2386
  br label %129, !dbg !2512

129:                                              ; preds = %126, %112
  %130 = phi i64 [ %128, %126 ], [ %114, %112 ], !dbg !2411
  %131 = phi i8* [ %127, %126 ], [ %115, %112 ], !dbg !2411
  call void @llvm.dbg.value(metadata i8* %131, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %130, metadata !2362, metadata !DIExpression()), !dbg !2386
  br i1 %45, label %136, label %132, !dbg !2513

132:                                              ; preds = %129
  %133 = load i64, i64* %8, align 8, !dbg !2515, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %133, metadata !2368, metadata !DIExpression()), !dbg !2411
  %134 = call i32 @freadseek(%struct._IO_FILE* noundef %6, i64 noundef %133) #35, !dbg !2516
  %135 = icmp eq i32 %134, 0, !dbg !2516
  br i1 %135, label %136, label %137, !dbg !2517

136:                                              ; preds = %129, %132
  call void @llvm.dbg.value(metadata i8* %43, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %78, metadata !2365, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 poison, metadata !2364, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %41, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %40, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %39, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #35, !dbg !2443
  br i1 %77, label %144, label %38, !dbg !2518, !llvm.loop !2519

137:                                              ; preds = %132, %103, %67
  %138 = phi i64 [ %39, %67 ], [ %113, %132 ], [ %39, %103 ]
  %139 = phi i8* [ %41, %67 ], [ %116, %132 ], [ %43, %103 ]
  call void @llvm.dbg.value(metadata i8* %43, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %78, metadata !2365, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 poison, metadata !2364, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %41, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %40, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %39, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #35, !dbg !2443
  br label %141

140:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i8* %43, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %78, metadata !2365, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 poison, metadata !2364, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* undef, metadata !2363, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %40, metadata !2362, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %37, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #35, !dbg !2443
  br label %141

141:                                              ; preds = %140, %17, %21, %137
  %142 = phi i64 [ %138, %137 ], [ %18, %21 ], [ %37, %140 ], [ %18, %17 ]
  %143 = phi i8* [ %139, %137 ], [ %19, %21 ], [ %43, %140 ], [ %19, %17 ]
  call void @llvm.dbg.value(metadata i8* %145, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %151, metadata !2361, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %147, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.label(metadata !2385), !dbg !2521
  store i8* %143, i8** %0, align 8, !dbg !2522, !tbaa !548
  store i64 %142, i64* %1, align 8, !dbg !2523, !tbaa !822
  br label %154, !dbg !2524

144:                                              ; preds = %136, %69
  %145 = phi i8* [ %43, %69 ], [ %116, %136 ]
  %146 = phi i8* [ %41, %69 ], [ %131, %136 ]
  %147 = phi i64 [ %39, %69 ], [ %113, %136 ]
  store i8 0, i8* %146, align 1, !dbg !2525, !tbaa !660
  %148 = getelementptr inbounds i8, i8* %145, i64 %2, !dbg !2526
  %149 = ptrtoint i8* %146 to i64, !dbg !2527
  %150 = ptrtoint i8* %148 to i64, !dbg !2527
  %151 = sub i64 %149, %150, !dbg !2527
  call void @llvm.dbg.value(metadata i8* %145, metadata !2359, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %151, metadata !2361, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %147, metadata !2360, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.label(metadata !2385), !dbg !2521
  store i8* %145, i8** %0, align 8, !dbg !2522, !tbaa !548
  store i64 %147, i64* %1, align 8, !dbg !2523, !tbaa !822
  %152 = icmp eq i64 %151, 0, !dbg !2524
  %153 = select i1 %152, i64 -1, i64 %151, !dbg !2524
  br label %154, !dbg !2524

154:                                              ; preds = %144, %141, %12
  %155 = phi i64 [ -1, %12 ], [ -1, %141 ], [ %153, %144 ], !dbg !2386
  ret i64 %155, !dbg !2528
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #14 !dbg !2529 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2531, !tbaa !548
  ret i8* %1, !dbg !2532
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @memchr2(i8* noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #21 !dbg !2533 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %1, metadata !2538, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %2, metadata !2539, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %3, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %1, metadata !2541, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %2, metadata !2542, metadata !DIExpression()), !dbg !2561
  %5 = and i32 %1, 255, !dbg !2562
  %6 = and i32 %2, 255, !dbg !2564
  %7 = icmp eq i32 %5, %6, !dbg !2565
  br i1 %7, label %14, label %8, !dbg !2566

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %0, metadata !2543, metadata !DIExpression()), !dbg !2561
  %9 = icmp eq i64 %3, 0, !dbg !2567
  %10 = ptrtoint i8* %0 to i64
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 0
  %13 = or i1 %9, %12, !dbg !2568
  br i1 %13, label %123, label %16, !dbg !2568

14:                                               ; preds = %4
  %15 = tail call i8* @memchr(i8* noundef %0, i32 noundef %5, i64 noundef %3) #36, !dbg !2569
  br label %168, !dbg !2570

16:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i64 %3, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %0, metadata !2543, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %0, metadata !2544, metadata !DIExpression()), !dbg !2571
  %17 = load i8, i8* %0, align 1, !dbg !2572, !tbaa !660
  %18 = zext i8 %17 to i32, !dbg !2572
  %19 = icmp eq i32 %5, %18, !dbg !2574
  %20 = icmp eq i32 %6, %18
  %21 = or i1 %19, %20, !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2543, metadata !DIExpression()), !dbg !2561
  br i1 %21, label %168, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, i8* %0, i64 1, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %23, metadata !2543, metadata !DIExpression()), !dbg !2561
  %24 = add i64 %3, -1, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %24, metadata !2540, metadata !DIExpression()), !dbg !2561
  %25 = icmp eq i64 %24, 0, !dbg !2567
  %26 = ptrtoint i8* %23 to i64
  %27 = and i64 %26, 7
  %28 = icmp eq i64 %27, 0
  %29 = or i1 %25, %28, !dbg !2568
  br i1 %29, label %123, label %30, !dbg !2568, !llvm.loop !2577

30:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %24, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %23, metadata !2543, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %23, metadata !2544, metadata !DIExpression()), !dbg !2571
  %31 = load i8, i8* %23, align 1, !dbg !2572, !tbaa !660
  %32 = zext i8 %31 to i32, !dbg !2572
  %33 = icmp eq i32 %5, %32, !dbg !2574
  %34 = icmp eq i32 %6, %32
  %35 = or i1 %33, %34, !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2543, metadata !DIExpression()), !dbg !2561
  br i1 %35, label %168, label %36

36:                                               ; preds = %30
  %37 = getelementptr i8, i8* %0, i64 2, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %37, metadata !2543, metadata !DIExpression()), !dbg !2561
  %38 = add i64 %3, -2, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %38, metadata !2540, metadata !DIExpression()), !dbg !2561
  %39 = icmp eq i64 %38, 0, !dbg !2567
  %40 = ptrtoint i8* %37 to i64
  %41 = and i64 %40, 7
  %42 = icmp eq i64 %41, 0
  %43 = or i1 %39, %42, !dbg !2568
  br i1 %43, label %123, label %44, !dbg !2568, !llvm.loop !2577

44:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 %38, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %37, metadata !2543, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %37, metadata !2544, metadata !DIExpression()), !dbg !2571
  %45 = load i8, i8* %37, align 1, !dbg !2572, !tbaa !660
  %46 = zext i8 %45 to i32, !dbg !2572
  %47 = icmp eq i32 %5, %46, !dbg !2574
  %48 = icmp eq i32 %6, %46
  %49 = or i1 %47, %48, !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2543, metadata !DIExpression()), !dbg !2561
  br i1 %49, label %168, label %50

50:                                               ; preds = %44
  %51 = getelementptr i8, i8* %0, i64 3, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %51, metadata !2543, metadata !DIExpression()), !dbg !2561
  %52 = add i64 %3, -3, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %52, metadata !2540, metadata !DIExpression()), !dbg !2561
  %53 = icmp eq i64 %52, 0, !dbg !2567
  %54 = ptrtoint i8* %51 to i64
  %55 = and i64 %54, 7
  %56 = icmp eq i64 %55, 0
  %57 = or i1 %53, %56, !dbg !2568
  br i1 %57, label %123, label %58, !dbg !2568, !llvm.loop !2577

58:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %52, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %51, metadata !2543, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %51, metadata !2544, metadata !DIExpression()), !dbg !2571
  %59 = load i8, i8* %51, align 1, !dbg !2572, !tbaa !660
  %60 = zext i8 %59 to i32, !dbg !2572
  %61 = icmp eq i32 %5, %60, !dbg !2574
  %62 = icmp eq i32 %6, %60
  %63 = or i1 %61, %62, !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2543, metadata !DIExpression()), !dbg !2561
  br i1 %63, label %168, label %64

64:                                               ; preds = %58
  %65 = getelementptr i8, i8* %0, i64 4, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %65, metadata !2543, metadata !DIExpression()), !dbg !2561
  %66 = add i64 %3, -4, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %66, metadata !2540, metadata !DIExpression()), !dbg !2561
  %67 = icmp eq i64 %66, 0, !dbg !2567
  %68 = ptrtoint i8* %65 to i64
  %69 = and i64 %68, 7
  %70 = icmp eq i64 %69, 0
  %71 = or i1 %67, %70, !dbg !2568
  br i1 %71, label %123, label %72, !dbg !2568, !llvm.loop !2577

72:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 %66, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %65, metadata !2543, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %65, metadata !2544, metadata !DIExpression()), !dbg !2571
  %73 = load i8, i8* %65, align 1, !dbg !2572, !tbaa !660
  %74 = zext i8 %73 to i32, !dbg !2572
  %75 = icmp eq i32 %5, %74, !dbg !2574
  %76 = icmp eq i32 %6, %74
  %77 = or i1 %75, %76, !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2543, metadata !DIExpression()), !dbg !2561
  br i1 %77, label %168, label %78

78:                                               ; preds = %72
  %79 = getelementptr i8, i8* %0, i64 5, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %79, metadata !2543, metadata !DIExpression()), !dbg !2561
  %80 = add i64 %3, -5, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %80, metadata !2540, metadata !DIExpression()), !dbg !2561
  %81 = icmp eq i64 %80, 0, !dbg !2567
  %82 = ptrtoint i8* %79 to i64
  %83 = and i64 %82, 7
  %84 = icmp eq i64 %83, 0
  %85 = or i1 %81, %84, !dbg !2568
  br i1 %85, label %123, label %86, !dbg !2568, !llvm.loop !2577

86:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 %80, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %79, metadata !2543, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %79, metadata !2544, metadata !DIExpression()), !dbg !2571
  %87 = load i8, i8* %79, align 1, !dbg !2572, !tbaa !660
  %88 = zext i8 %87 to i32, !dbg !2572
  %89 = icmp eq i32 %5, %88, !dbg !2574
  %90 = icmp eq i32 %6, %88
  %91 = or i1 %89, %90, !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2543, metadata !DIExpression()), !dbg !2561
  br i1 %91, label %168, label %92

92:                                               ; preds = %86
  %93 = getelementptr i8, i8* %0, i64 6, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %93, metadata !2543, metadata !DIExpression()), !dbg !2561
  %94 = add i64 %3, -6, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %94, metadata !2540, metadata !DIExpression()), !dbg !2561
  %95 = icmp eq i64 %94, 0, !dbg !2567
  %96 = ptrtoint i8* %93 to i64
  %97 = and i64 %96, 7
  %98 = icmp eq i64 %97, 0
  %99 = or i1 %95, %98, !dbg !2568
  br i1 %99, label %123, label %100, !dbg !2568, !llvm.loop !2577

100:                                              ; preds = %92
  call void @llvm.dbg.value(metadata i64 %94, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %93, metadata !2543, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %93, metadata !2544, metadata !DIExpression()), !dbg !2571
  %101 = load i8, i8* %93, align 1, !dbg !2572, !tbaa !660
  %102 = zext i8 %101 to i32, !dbg !2572
  %103 = icmp eq i32 %5, %102, !dbg !2574
  %104 = icmp eq i32 %6, %102
  %105 = or i1 %103, %104, !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2543, metadata !DIExpression()), !dbg !2561
  br i1 %105, label %168, label %106

106:                                              ; preds = %100
  %107 = getelementptr i8, i8* %0, i64 7, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %107, metadata !2543, metadata !DIExpression()), !dbg !2561
  %108 = add i64 %3, -7, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %108, metadata !2540, metadata !DIExpression()), !dbg !2561
  %109 = icmp eq i64 %108, 0, !dbg !2567
  %110 = ptrtoint i8* %107 to i64
  %111 = and i64 %110, 7
  %112 = icmp eq i64 %111, 0
  %113 = or i1 %109, %112, !dbg !2568
  br i1 %113, label %123, label %114, !dbg !2568, !llvm.loop !2577

114:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i64 %108, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %107, metadata !2543, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %107, metadata !2544, metadata !DIExpression()), !dbg !2571
  %115 = load i8, i8* %107, align 1, !dbg !2572, !tbaa !660
  %116 = zext i8 %115 to i32, !dbg !2572
  %117 = icmp eq i32 %5, %116, !dbg !2574
  %118 = icmp eq i32 %6, %116
  %119 = or i1 %117, %118, !dbg !2575
  call void @llvm.dbg.value(metadata i8* undef, metadata !2543, metadata !DIExpression()), !dbg !2561
  br i1 %119, label %168, label %120

120:                                              ; preds = %114
  %121 = getelementptr i8, i8* %0, i64 8, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %121, metadata !2543, metadata !DIExpression()), !dbg !2561
  %122 = add i64 %3, -8, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %122, metadata !2540, metadata !DIExpression()), !dbg !2561
  br label %123

123:                                              ; preds = %22, %36, %50, %64, %78, %92, %106, %120, %8
  %124 = phi i8* [ %0, %8 ], [ %23, %22 ], [ %37, %36 ], [ %51, %50 ], [ %65, %64 ], [ %79, %78 ], [ %93, %92 ], [ %107, %106 ], [ %121, %120 ], !dbg !2580
  %125 = phi i64 [ %3, %8 ], [ %24, %22 ], [ %38, %36 ], [ %52, %50 ], [ %66, %64 ], [ %80, %78 ], [ %94, %92 ], [ %108, %106 ], [ %122, %120 ]
  %126 = bitcast i8* %124 to i64*, !dbg !2581
  call void @llvm.dbg.value(metadata i64* %126, metadata !2548, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 16843009, metadata !2552, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %5, metadata !2554, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %6, metadata !2555, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2582
  %127 = mul nuw i32 %5, 16843009, !dbg !2583
  %128 = zext i32 %127 to i64, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %128, metadata !2554, metadata !DIExpression()), !dbg !2582
  %129 = mul nuw i32 %6, 16843009, !dbg !2584
  %130 = zext i32 %129 to i64, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %130, metadata !2555, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 72340172838076673, metadata !2552, metadata !DIExpression()), !dbg !2582
  %131 = mul nuw i64 %128, 4294967297, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %131, metadata !2554, metadata !DIExpression()), !dbg !2582
  %132 = mul nuw i64 %130, 4294967297, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %132, metadata !2555, metadata !DIExpression()), !dbg !2582
  br label %133, !dbg !2589

133:                                              ; preds = %137, %123
  %134 = phi i64* [ %126, %123 ], [ %150, %137 ], !dbg !2590
  %135 = phi i64 [ %125, %123 ], [ %151, %137 ]
  call void @llvm.dbg.value(metadata i64 %135, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64* %134, metadata !2548, metadata !DIExpression()), !dbg !2561
  %136 = icmp ugt i64 %135, 7, !dbg !2591
  br i1 %136, label %137, label %152, !dbg !2589

137:                                              ; preds = %133
  %138 = load i64, i64* %134, align 8, !dbg !2592, !tbaa !822
  %139 = xor i64 %138, %131, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %139, metadata !2556, metadata !DIExpression()), !dbg !2594
  %140 = xor i64 %138, %132, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %140, metadata !2558, metadata !DIExpression()), !dbg !2594
  %141 = add i64 %139, -72340172838076673, !dbg !2596
  %142 = xor i64 %139, -1, !dbg !2598
  %143 = and i64 %141, %142, !dbg !2599
  %144 = add i64 %140, -72340172838076673, !dbg !2600
  %145 = xor i64 %140, -1, !dbg !2601
  %146 = and i64 %144, %145, !dbg !2602
  %147 = or i64 %143, %146, !dbg !2603
  %148 = and i64 %147, -9187201950435737472, !dbg !2604
  %149 = icmp eq i64 %148, 0, !dbg !2605
  %150 = getelementptr inbounds i64, i64* %134, i64 1, !dbg !2606
  %151 = add i64 %135, -8, !dbg !2606
  call void @llvm.dbg.value(metadata i64 undef, metadata !2540, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64* undef, metadata !2548, metadata !DIExpression()), !dbg !2561
  br i1 %149, label %133, label %154

152:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i64* %134, metadata !2548, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64* %134, metadata !2559, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %135, metadata !2540, metadata !DIExpression()), !dbg !2561
  %153 = icmp eq i64 %135, 0, !dbg !2608
  br i1 %153, label %168, label %154, !dbg !2611

154:                                              ; preds = %137, %152
  %155 = bitcast i64* %134 to i8*, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %155, metadata !2559, metadata !DIExpression()), !dbg !2607
  br label %156, !dbg !2611

156:                                              ; preds = %154, %164
  %157 = phi i8* [ %166, %164 ], [ %155, %154 ]
  %158 = phi i64 [ %165, %164 ], [ %135, %154 ]
  call void @llvm.dbg.value(metadata i8* %157, metadata !2559, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %158, metadata !2540, metadata !DIExpression()), !dbg !2561
  %159 = load i8, i8* %157, align 1, !dbg !2613, !tbaa !660
  %160 = zext i8 %159 to i32, !dbg !2613
  %161 = icmp eq i32 %5, %160, !dbg !2616
  %162 = icmp eq i32 %6, %160
  %163 = or i1 %161, %162, !dbg !2617
  br i1 %163, label %168, label %164, !dbg !2617

164:                                              ; preds = %156
  %165 = add i64 %158, -1, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %165, metadata !2540, metadata !DIExpression()), !dbg !2561
  %166 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %166, metadata !2559, metadata !DIExpression()), !dbg !2607
  %167 = icmp eq i64 %165, 0, !dbg !2608
  br i1 %167, label %168, label %156, !dbg !2611, !llvm.loop !2620

168:                                              ; preds = %16, %30, %44, %58, %72, %86, %100, %114, %164, %156, %152, %14
  %169 = phi i8* [ %15, %14 ], [ null, %152 ], [ null, %164 ], [ %157, %156 ], [ %0, %16 ], [ %23, %30 ], [ %37, %44 ], [ %51, %58 ], [ %65, %72 ], [ %79, %86 ], [ %93, %100 ], [ %107, %114 ], !dbg !2561
  ret i8* %169, !dbg !2622
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !2623 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2625, metadata !DIExpression()), !dbg !2628
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %2, metadata !2626, metadata !DIExpression()), !dbg !2628
  %3 = icmp eq i8* %2, null, !dbg !2630
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2630
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2630
  call void @llvm.dbg.value(metadata i8* %5, metadata !2627, metadata !DIExpression()), !dbg !2628
  %6 = ptrtoint i8* %5 to i64, !dbg !2631
  %7 = ptrtoint i8* %0 to i64, !dbg !2631
  %8 = sub i64 %6, %7, !dbg !2631
  %9 = icmp sgt i64 %8, 6, !dbg !2633
  br i1 %9, label %10, label %19, !dbg !2634

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2635
  call void @llvm.dbg.value(metadata i8* %11, metadata !2636, metadata !DIExpression()) #35, !dbg !2643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i64 0, i64 0), metadata !2641, metadata !DIExpression()) #35, !dbg !2643
  call void @llvm.dbg.value(metadata i64 7, metadata !2642, metadata !DIExpression()) #35, !dbg !2643
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i64 0, i64 0), i64 7) #35, !dbg !2645
  %13 = icmp eq i32 %12, 0, !dbg !2646
  br i1 %13, label %14, label %19, !dbg !2647

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2625, metadata !DIExpression()), !dbg !2628
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.122, i64 0, i64 0), i64 noundef 3) #36, !dbg !2648
  %16 = icmp eq i32 %15, 0, !dbg !2651
  %17 = select i1 %16, i64 3, i64 0, !dbg !2652
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2652
  br label %19, !dbg !2652

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2628
  call void @llvm.dbg.value(metadata i8* %21, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %20, metadata !2625, metadata !DIExpression()), !dbg !2628
  store i8* %20, i8** @program_name, align 8, !dbg !2653, !tbaa !548
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2654, !tbaa !548
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2655, !tbaa !548
  ret void, !dbg !2656
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !305 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !312, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8* %1, metadata !313, metadata !DIExpression()), !dbg !2657
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %5, metadata !314, metadata !DIExpression()), !dbg !2657
  %6 = icmp eq i8* %5, %0, !dbg !2659
  br i1 %6, label %7, label %17, !dbg !2661

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2662
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2662
  %10 = bitcast i64* %4 to i8*, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2663
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !320, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2665, metadata !DIExpression()) #35, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %10, metadata !2674, metadata !DIExpression()) #35, !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #35, !dbg !2681
  call void @llvm.dbg.value(metadata i64 8, metadata !2680, metadata !DIExpression()) #35, !dbg !2681
  store i64 0, i64* %4, align 8, !dbg !2683
  call void @llvm.dbg.value(metadata i32* %3, metadata !315, metadata !DIExpression(DW_OP_deref)), !dbg !2657
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !2684
  %12 = icmp eq i64 %11, 2, !dbg !2686
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !315, metadata !DIExpression()), !dbg !2657
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2687
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2657
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2688
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2688
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2657
  ret i8* %18, !dbg !2688
}

; Function Attrs: nounwind
declare !dbg !2689 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2695 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2700, metadata !DIExpression()), !dbg !2703
  %2 = tail call i32* @__errno_location() #38, !dbg !2704
  %3 = load i32, i32* %2, align 4, !dbg !2704, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %3, metadata !2701, metadata !DIExpression()), !dbg !2703
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2705
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2705
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2705
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !2706
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2706
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2702, metadata !DIExpression()), !dbg !2703
  store i32 %3, i32* %2, align 4, !dbg !2707, !tbaa !651
  ret %struct.quoting_options* %8, !dbg !2708
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #14 !dbg !2709 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2715, metadata !DIExpression()), !dbg !2716
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2717
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2717
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2718
  %5 = load i32, i32* %4, align 8, !dbg !2718, !tbaa !2719
  ret i32 %5, !dbg !2721
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 !dbg !2722 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %1, metadata !2727, metadata !DIExpression()), !dbg !2728
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2729
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2729
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2730
  store i32 %1, i32* %5, align 8, !dbg !2731, !tbaa !2719
  ret void, !dbg !2732
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2733 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2737, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8 %1, metadata !2738, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 %2, metadata !2739, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8 %1, metadata !2740, metadata !DIExpression()), !dbg !2745
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2746
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2746
  %6 = lshr i8 %1, 5, !dbg !2747
  %7 = zext i8 %6 to i64, !dbg !2747
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2748
  call void @llvm.dbg.value(metadata i32* %8, metadata !2741, metadata !DIExpression()), !dbg !2745
  %9 = and i8 %1, 31, !dbg !2749
  %10 = zext i8 %9 to i32, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %10, metadata !2743, metadata !DIExpression()), !dbg !2745
  %11 = load i32, i32* %8, align 4, !dbg !2750, !tbaa !651
  %12 = lshr i32 %11, %10, !dbg !2751
  %13 = and i32 %12, 1, !dbg !2752
  call void @llvm.dbg.value(metadata i32 %13, metadata !2744, metadata !DIExpression()), !dbg !2745
  %14 = and i32 %2, 1, !dbg !2753
  %15 = xor i32 %13, %14, !dbg !2754
  %16 = shl i32 %15, %10, !dbg !2755
  %17 = xor i32 %16, %11, !dbg !2756
  store i32 %17, i32* %8, align 4, !dbg !2756, !tbaa !651
  ret i32 %13, !dbg !2757
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2758 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %1, metadata !2763, metadata !DIExpression()), !dbg !2765
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2766
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2768
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2762, metadata !DIExpression()), !dbg !2765
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2769
  %6 = load i32, i32* %5, align 4, !dbg !2769, !tbaa !2770
  call void @llvm.dbg.value(metadata i32 %6, metadata !2764, metadata !DIExpression()), !dbg !2765
  store i32 %1, i32* %5, align 4, !dbg !2771, !tbaa !2770
  ret i32 %6, !dbg !2772
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2773 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2777, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %1, metadata !2778, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %2, metadata !2779, metadata !DIExpression()), !dbg !2780
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2781
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2777, metadata !DIExpression()), !dbg !2780
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2784
  store i32 10, i32* %6, align 8, !dbg !2785, !tbaa !2719
  %7 = icmp ne i8* %1, null, !dbg !2786
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2788
  br i1 %9, label %11, label %10, !dbg !2788

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2789
  unreachable, !dbg !2789

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2790
  store i8* %1, i8** %12, align 8, !dbg !2791, !tbaa !2792
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2793
  store i8* %2, i8** %13, align 8, !dbg !2794, !tbaa !2795
  ret void, !dbg !2796
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %1, metadata !2802, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %2, metadata !2803, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %3, metadata !2804, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2805, metadata !DIExpression()), !dbg !2809
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2810
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2810
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2806, metadata !DIExpression()), !dbg !2809
  %8 = tail call i32* @__errno_location() #38, !dbg !2811
  %9 = load i32, i32* %8, align 4, !dbg !2811, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %9, metadata !2807, metadata !DIExpression()), !dbg !2809
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2812
  %11 = load i32, i32* %10, align 8, !dbg !2812, !tbaa !2719
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2813
  %13 = load i32, i32* %12, align 4, !dbg !2813, !tbaa !2770
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2814
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2815
  %16 = load i8*, i8** %15, align 8, !dbg !2815, !tbaa !2792
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2816
  %18 = load i8*, i8** %17, align 8, !dbg !2816, !tbaa !2795
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %19, metadata !2808, metadata !DIExpression()), !dbg !2809
  store i32 %9, i32* %8, align 4, !dbg !2818, !tbaa !651
  ret i64 %19, !dbg !2819
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2820 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2826, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %1, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %2, metadata !2828, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %3, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %4, metadata !2830, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %5, metadata !2831, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32* %6, metadata !2832, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %7, metadata !2833, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %8, metadata !2834, metadata !DIExpression()), !dbg !2888
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2889
  %18 = icmp eq i64 %17, 1, !dbg !2890
  call void @llvm.dbg.value(metadata i1 %18, metadata !2835, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* null, metadata !2838, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2839, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2840, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %5, metadata !2841, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 1, metadata !2843, metadata !DIExpression()), !dbg !2888
  %19 = and i32 %5, 2, !dbg !2891
  %20 = icmp ne i32 %19, 0, !dbg !2891
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
  br label %36, !dbg !2891

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2892
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2893
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2894
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2843, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2841, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2840, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %43, metadata !2839, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %42, metadata !2838, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %41, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %40, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %39, metadata !2834, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %38, metadata !2833, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %37, metadata !2830, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.label(metadata !2881), !dbg !2895
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2888
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
  ], !dbg !2896

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2841, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 5, metadata !2830, metadata !DIExpression()), !dbg !2888
  br label %111, !dbg !2897

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2841, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 5, metadata !2830, metadata !DIExpression()), !dbg !2888
  br i1 %45, label %111, label %51, !dbg !2897

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2898
  br i1 %52, label %111, label %53, !dbg !2902

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2898, !tbaa !660
  br label %111, !dbg !2898

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.135, i64 0, i64 0), metadata !382, metadata !DIExpression()) #35, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %37, metadata !383, metadata !DIExpression()) #35, !dbg !2903
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.135, i64 0, i64 0), i32 noundef 5) #35, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %55, metadata !384, metadata !DIExpression()) #35, !dbg !2903
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.135, i64 0, i64 0), !dbg !2908
  br i1 %56, label %57, label %66, !dbg !2910

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2911
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2912
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !386, metadata !DIExpression()) #35, !dbg !2913
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2914, metadata !DIExpression()) #35, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %23, metadata !2922, metadata !DIExpression()) #35, !dbg !2927
  call void @llvm.dbg.value(metadata i32 0, metadata !2925, metadata !DIExpression()) #35, !dbg !2927
  call void @llvm.dbg.value(metadata i64 8, metadata !2926, metadata !DIExpression()) #35, !dbg !2927
  store i64 0, i64* %13, align 8, !dbg !2929
  call void @llvm.dbg.value(metadata i32* %12, metadata !385, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2903
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2930
  %59 = icmp eq i64 %58, 3, !dbg !2932
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !385, metadata !DIExpression()) #35, !dbg !2903
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2933
  %63 = icmp eq i32 %37, 9, !dbg !2933
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.137, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), !dbg !2933
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2933
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2934
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2934
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2903
  call void @llvm.dbg.value(metadata i8* %67, metadata !2833, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), metadata !382, metadata !DIExpression()) #35, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %37, metadata !383, metadata !DIExpression()) #35, !dbg !2935
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), i32 noundef 5) #35, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %68, metadata !384, metadata !DIExpression()) #35, !dbg !2935
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), !dbg !2938
  br i1 %69, label %70, label %79, !dbg !2939

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2940
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2941
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !386, metadata !DIExpression()) #35, !dbg !2942
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2914, metadata !DIExpression()) #35, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %26, metadata !2922, metadata !DIExpression()) #35, !dbg !2945
  call void @llvm.dbg.value(metadata i32 0, metadata !2925, metadata !DIExpression()) #35, !dbg !2945
  call void @llvm.dbg.value(metadata i64 8, metadata !2926, metadata !DIExpression()) #35, !dbg !2945
  store i64 0, i64* %11, align 8, !dbg !2947
  call void @llvm.dbg.value(metadata i32* %10, metadata !385, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2935
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2948
  %72 = icmp eq i64 %71, 3, !dbg !2949
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !385, metadata !DIExpression()) #35, !dbg !2935
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2950
  %76 = icmp eq i32 %37, 9, !dbg !2950
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.137, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), !dbg !2950
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2950
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2951
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2951
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2834, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %80, metadata !2833, metadata !DIExpression()), !dbg !2888
  br i1 %45, label %97, label %82, !dbg !2952

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2845, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 0, metadata !2836, metadata !DIExpression()), !dbg !2888
  %83 = load i8, i8* %80, align 1, !dbg !2954, !tbaa !660
  %84 = icmp eq i8 %83, 0, !dbg !2956
  br i1 %84, label %97, label %85, !dbg !2956

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2845, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %88, metadata !2836, metadata !DIExpression()), !dbg !2888
  %89 = icmp ult i64 %88, %48, !dbg !2957
  br i1 %89, label %90, label %92, !dbg !2960

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2957
  store i8 %86, i8* %91, align 1, !dbg !2957, !tbaa !660
  br label %92, !dbg !2957

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %93, metadata !2836, metadata !DIExpression()), !dbg !2888
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %94, metadata !2845, metadata !DIExpression()), !dbg !2953
  %95 = load i8, i8* %94, align 1, !dbg !2954, !tbaa !660
  %96 = icmp eq i8 %95, 0, !dbg !2956
  br i1 %96, label %97, label %85, !dbg !2956, !llvm.loop !2962

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2964
  call void @llvm.dbg.value(metadata i64 %98, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 1, metadata !2840, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %81, metadata !2838, metadata !DIExpression()), !dbg !2888
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2965
  call void @llvm.dbg.value(metadata i64 %99, metadata !2839, metadata !DIExpression()), !dbg !2888
  br label %111, !dbg !2966

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2840, metadata !DIExpression()), !dbg !2888
  br label %102, !dbg !2967

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2841, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2840, metadata !DIExpression()), !dbg !2888
  br i1 %45, label %102, label %105, !dbg !2968

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2841, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2840, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 2, metadata !2830, metadata !DIExpression()), !dbg !2888
  br label %111, !dbg !2969

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2841, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2840, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 2, metadata !2830, metadata !DIExpression()), !dbg !2888
  br i1 %45, label %111, label %105, !dbg !2969

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2970
  br i1 %107, label %111, label %108, !dbg !2974

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2970, !tbaa !660
  br label %111, !dbg !2970

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2841, metadata !DIExpression()), !dbg !2888
  br label %111, !dbg !2975

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2976
  unreachable, !dbg !2976

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2964
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.137, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.137, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.137, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.137, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.138, i64 0, i64 0), %102 ], !dbg !2888
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2888
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2841, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2840, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %117, metadata !2839, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %116, metadata !2838, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %115, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %114, metadata !2834, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %113, metadata !2833, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %112, metadata !2830, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2850, metadata !DIExpression()), !dbg !2977
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
  br label %132, !dbg !2978

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2964
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2892
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2977
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %139, metadata !2850, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2843, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %135, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %134, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %133, metadata !2829, metadata !DIExpression()), !dbg !2888
  %141 = icmp eq i64 %133, -1, !dbg !2979
  br i1 %141, label %142, label %146, !dbg !2980

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2981
  %144 = load i8, i8* %143, align 1, !dbg !2981, !tbaa !660
  %145 = icmp eq i8 %144, 0, !dbg !2982
  br i1 %145, label %596, label %148, !dbg !2983

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2984
  br i1 %147, label %596, label %148, !dbg !2983

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2852, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2856, metadata !DIExpression()), !dbg !2985
  br i1 %123, label %149, label %163, !dbg !2986

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2988
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2989
  br i1 %151, label %152, label %154, !dbg !2989

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %153, metadata !2829, metadata !DIExpression()), !dbg !2888
  br label %154, !dbg !2991

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2991
  call void @llvm.dbg.value(metadata i64 %155, metadata !2829, metadata !DIExpression()), !dbg !2888
  %156 = icmp ugt i64 %150, %155, !dbg !2992
  br i1 %156, label %163, label %157, !dbg !2993

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %158, metadata !2995, metadata !DIExpression()) #35, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %116, metadata !2998, metadata !DIExpression()) #35, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %117, metadata !2999, metadata !DIExpression()) #35, !dbg !3000
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !3002
  %160 = icmp ne i32 %159, 0, !dbg !3003
  %161 = or i1 %160, %125, !dbg !3004
  %162 = xor i1 %160, true, !dbg !3004
  br i1 %161, label %163, label %647, !dbg !3004

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2852, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %164, metadata !2829, metadata !DIExpression()), !dbg !2888
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !3005
  %167 = load i8, i8* %166, align 1, !dbg !3005, !tbaa !660
  call void @llvm.dbg.value(metadata i8 %167, metadata !2857, metadata !DIExpression()), !dbg !2985
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
  ], !dbg !3006

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !3007

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !3008

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2855, metadata !DIExpression()), !dbg !2985
  %171 = select i1 %120, i1 true, i1 %138, !dbg !3012
  br i1 %171, label %188, label %172, !dbg !3012

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !3014
  br i1 %173, label %174, label %176, !dbg !3018

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !3014
  store i8 39, i8* %175, align 1, !dbg !3014, !tbaa !660
  br label %176, !dbg !3014

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %177, metadata !2836, metadata !DIExpression()), !dbg !2888
  %178 = icmp ult i64 %177, %140, !dbg !3019
  br i1 %178, label %179, label %181, !dbg !3022

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !3019
  store i8 36, i8* %180, align 1, !dbg !3019, !tbaa !660
  br label %181, !dbg !3019

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %182, metadata !2836, metadata !DIExpression()), !dbg !2888
  %183 = icmp ult i64 %182, %140, !dbg !3023
  br i1 %183, label %184, label %186, !dbg !3026

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !3023
  store i8 39, i8* %185, align 1, !dbg !3023, !tbaa !660
  br label %186, !dbg !3023

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %187, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 1, metadata !2844, metadata !DIExpression()), !dbg !2888
  br label %188, !dbg !3027

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2888
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %189, metadata !2836, metadata !DIExpression()), !dbg !2888
  %191 = icmp ult i64 %189, %140, !dbg !3028
  br i1 %191, label %192, label %194, !dbg !3031

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3028
  store i8 92, i8* %193, align 1, !dbg !3028, !tbaa !660
  br label %194, !dbg !3028

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %195, metadata !2836, metadata !DIExpression()), !dbg !2888
  br i1 %120, label %196, label %499, !dbg !3032

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !3034
  %198 = icmp ult i64 %197, %164, !dbg !3035
  br i1 %198, label %199, label %456, !dbg !3036

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !3037
  %201 = load i8, i8* %200, align 1, !dbg !3037, !tbaa !660
  %202 = add i8 %201, -48, !dbg !3038
  %203 = icmp ult i8 %202, 10, !dbg !3038
  br i1 %203, label %204, label %456, !dbg !3038

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !3039
  br i1 %205, label %206, label %208, !dbg !3043

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !3039
  store i8 48, i8* %207, align 1, !dbg !3039, !tbaa !660
  br label %208, !dbg !3039

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %209, metadata !2836, metadata !DIExpression()), !dbg !2888
  %210 = icmp ult i64 %209, %140, !dbg !3044
  br i1 %210, label %211, label %213, !dbg !3047

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !3044
  store i8 48, i8* %212, align 1, !dbg !3044, !tbaa !660
  br label %213, !dbg !3044

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %214, metadata !2836, metadata !DIExpression()), !dbg !2888
  br label %456, !dbg !3048

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !3049

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !3050

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !3051

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !3053

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !3055
  %221 = icmp ult i64 %220, %164, !dbg !3056
  br i1 %221, label %222, label %456, !dbg !3057

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !3058
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !3059
  %225 = load i8, i8* %224, align 1, !dbg !3059, !tbaa !660
  %226 = icmp eq i8 %225, 63, !dbg !3060
  br i1 %226, label %227, label %456, !dbg !3061

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !3062
  %229 = load i8, i8* %228, align 1, !dbg !3062, !tbaa !660
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
  ], !dbg !3063

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !3064

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2857, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %220, metadata !2850, metadata !DIExpression()), !dbg !2977
  %232 = icmp ult i64 %134, %140, !dbg !3066
  br i1 %232, label %233, label %235, !dbg !3069

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !3066
  store i8 63, i8* %234, align 1, !dbg !3066, !tbaa !660
  br label %235, !dbg !3066

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %236, metadata !2836, metadata !DIExpression()), !dbg !2888
  %237 = icmp ult i64 %236, %140, !dbg !3070
  br i1 %237, label %238, label %240, !dbg !3073

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3070
  store i8 34, i8* %239, align 1, !dbg !3070, !tbaa !660
  br label %240, !dbg !3070

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %241, metadata !2836, metadata !DIExpression()), !dbg !2888
  %242 = icmp ult i64 %241, %140, !dbg !3074
  br i1 %242, label %243, label %245, !dbg !3077

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3074
  store i8 34, i8* %244, align 1, !dbg !3074, !tbaa !660
  br label %245, !dbg !3074

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %246, metadata !2836, metadata !DIExpression()), !dbg !2888
  %247 = icmp ult i64 %246, %140, !dbg !3078
  br i1 %247, label %248, label %250, !dbg !3081

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !3078
  store i8 63, i8* %249, align 1, !dbg !3078, !tbaa !660
  br label %250, !dbg !3078

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %251, metadata !2836, metadata !DIExpression()), !dbg !2888
  br label %456, !dbg !3082

252:                                              ; preds = %163
  br label %263, !dbg !3083

253:                                              ; preds = %163
  br label %263, !dbg !3084

254:                                              ; preds = %163
  br label %261, !dbg !3085

255:                                              ; preds = %163
  br label %261, !dbg !3086

256:                                              ; preds = %163
  br label %263, !dbg !3087

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !3088

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !3089

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !3092

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !3094

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !3095
  call void @llvm.dbg.label(metadata !2882), !dbg !3096
  br i1 %128, label %263, label %638, !dbg !3097

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !3095
  call void @llvm.dbg.label(metadata !2884), !dbg !3099
  br i1 %118, label %510, label %467, !dbg !3100

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !3101

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !3102, !tbaa !660
  %268 = icmp eq i8 %267, 0, !dbg !3104
  br i1 %268, label %269, label %456, !dbg !3105

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !3106
  br i1 %270, label %271, label %456, !dbg !3108

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2856, metadata !DIExpression()), !dbg !2985
  br label %272, !dbg !3109

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2856, metadata !DIExpression()), !dbg !2985
  br i1 %126, label %274, label %456, !dbg !3110

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !3112

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 1, metadata !2856, metadata !DIExpression()), !dbg !2985
  br i1 %126, label %276, label %456, !dbg !3113

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !3114

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !3117
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !3119
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !3119
  %282 = select i1 %280, i64 %140, i64 0, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %282, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %281, metadata !2837, metadata !DIExpression()), !dbg !2888
  %283 = icmp ult i64 %134, %282, !dbg !3120
  br i1 %283, label %284, label %286, !dbg !3123

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !3120
  store i8 39, i8* %285, align 1, !dbg !3120, !tbaa !660
  br label %286, !dbg !3120

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %287, metadata !2836, metadata !DIExpression()), !dbg !2888
  %288 = icmp ult i64 %287, %282, !dbg !3124
  br i1 %288, label %289, label %291, !dbg !3127

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3124
  store i8 92, i8* %290, align 1, !dbg !3124, !tbaa !660
  br label %291, !dbg !3124

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %292, metadata !2836, metadata !DIExpression()), !dbg !2888
  %293 = icmp ult i64 %292, %282, !dbg !3128
  br i1 %293, label %294, label %296, !dbg !3131

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3128
  store i8 39, i8* %295, align 1, !dbg !3128, !tbaa !660
  br label %296, !dbg !3128

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %297, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2888
  br label %456, !dbg !3132

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !3133

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2858, metadata !DIExpression()), !dbg !3134
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !3135
  %301 = load i16*, i16** %300, align 8, !dbg !3135, !tbaa !548
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3135
  %304 = load i16, i16* %303, align 2, !dbg !3135, !tbaa !685
  %305 = and i16 %304, 16384, !dbg !3135
  %306 = icmp ne i16 %305, 0, !dbg !3137
  call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %349, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %312, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i1 %350, metadata !2856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2985
  br label %352, !dbg !3138

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !3139
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2862, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2914, metadata !DIExpression()) #35, !dbg !3141
  call void @llvm.dbg.value(metadata i8* %32, metadata !2922, metadata !DIExpression()) #35, !dbg !3143
  call void @llvm.dbg.value(metadata i32 0, metadata !2925, metadata !DIExpression()) #35, !dbg !3143
  call void @llvm.dbg.value(metadata i64 8, metadata !2926, metadata !DIExpression()) #35, !dbg !3143
  store i64 0, i64* %14, align 8, !dbg !3145
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8 1, metadata !2861, metadata !DIExpression()), !dbg !3134
  %308 = icmp eq i64 %164, -1, !dbg !3146
  br i1 %308, label %309, label %311, !dbg !3148

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %310, metadata !2829, metadata !DIExpression()), !dbg !2888
  br label %311, !dbg !3150

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2985
  call void @llvm.dbg.value(metadata i64 %312, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !3151
  %313 = sub i64 %312, %139, !dbg !3152
  call void @llvm.dbg.value(metadata i32* %16, metadata !2865, metadata !DIExpression(DW_OP_deref)), !dbg !3153
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %314, metadata !2869, metadata !DIExpression()), !dbg !3153
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !3155

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !3134
  %316 = icmp ugt i64 %312, %139, !dbg !3156
  br i1 %316, label %319, label %317, !dbg !3158

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %349, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %312, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i1 %350, metadata !2856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2985
  br label %352, !dbg !3138

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !3134
  br label %346, !dbg !3161

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2858, metadata !DIExpression()), !dbg !3134
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !3163
  %323 = load i8, i8* %322, align 1, !dbg !3163, !tbaa !660
  %324 = icmp eq i8 %323, 0, !dbg !3158
  br i1 %324, label %348, label %325, !dbg !3164

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %326, metadata !2858, metadata !DIExpression()), !dbg !3134
  %327 = add i64 %326, %139, !dbg !3166
  %328 = icmp eq i64 %326, %313, !dbg !3156
  br i1 %328, label %348, label %319, !dbg !3158, !llvm.loop !3167

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !3168
  call void @llvm.dbg.value(metadata i64 1, metadata !2870, metadata !DIExpression()), !dbg !3169
  br i1 %331, label %332, label %340, !dbg !3168

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2870, metadata !DIExpression()), !dbg !3169
  %334 = add i64 %333, %139, !dbg !3170
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !3172
  %336 = load i8, i8* %335, align 1, !dbg !3172, !tbaa !660
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !3173

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %338, metadata !2870, metadata !DIExpression()), !dbg !3169
  %339 = icmp eq i64 %338, %314, !dbg !3175
  br i1 %339, label %340, label %332, !dbg !3176, !llvm.loop !3177

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !3179, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %341, metadata !2865, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %341, metadata !3181, metadata !DIExpression()) #35, !dbg !3189
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !3191
  %343 = icmp ne i32 %342, 0, !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %314, metadata !2858, metadata !DIExpression()), !dbg !3134
  br label %348, !dbg !3193

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !3160
  call void @llvm.dbg.label(metadata !2887), !dbg !3194
  %345 = select i1 %118, i32 4, i32 2, !dbg !3195
  br label %643, !dbg !3195

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %349, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %312, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i1 %350, metadata !2856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2985
  br label %352, !dbg !3138

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %349, metadata !2858, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %312, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i1 %350, metadata !2856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2985
  %351 = icmp ugt i64 %349, 1, !dbg !3197
  br i1 %351, label %357, label %352, !dbg !3138

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !3198
  br i1 %356, label %456, label %357, !dbg !3198

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %361, metadata !2878, metadata !DIExpression()), !dbg !3200
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !3201

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2888
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2977
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !3202
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2985
  call void @llvm.dbg.value(metadata i8 %369, metadata !2857, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %368, metadata !2855, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2852, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %366, metadata !2850, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %364, metadata !2836, metadata !DIExpression()), !dbg !2888
  br i1 %362, label %414, label %370, !dbg !3203

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !3208

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2855, metadata !DIExpression()), !dbg !2985
  %372 = select i1 %120, i1 true, i1 %365, !dbg !3211
  br i1 %372, label %389, label %373, !dbg !3211

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !3213
  br i1 %374, label %375, label %377, !dbg !3217

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !3213
  store i8 39, i8* %376, align 1, !dbg !3213, !tbaa !660
  br label %377, !dbg !3213

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %378, metadata !2836, metadata !DIExpression()), !dbg !2888
  %379 = icmp ult i64 %378, %140, !dbg !3218
  br i1 %379, label %380, label %382, !dbg !3221

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !3218
  store i8 36, i8* %381, align 1, !dbg !3218, !tbaa !660
  br label %382, !dbg !3218

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %383, metadata !2836, metadata !DIExpression()), !dbg !2888
  %384 = icmp ult i64 %383, %140, !dbg !3222
  br i1 %384, label %385, label %387, !dbg !3225

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3222
  store i8 39, i8* %386, align 1, !dbg !3222, !tbaa !660
  br label %387, !dbg !3222

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %388, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 1, metadata !2844, metadata !DIExpression()), !dbg !2888
  br label %389, !dbg !3226

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2888
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %390, metadata !2836, metadata !DIExpression()), !dbg !2888
  %392 = icmp ult i64 %390, %140, !dbg !3227
  br i1 %392, label %393, label %395, !dbg !3230

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !3227
  store i8 92, i8* %394, align 1, !dbg !3227, !tbaa !660
  br label %395, !dbg !3227

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %396, metadata !2836, metadata !DIExpression()), !dbg !2888
  %397 = icmp ult i64 %396, %140, !dbg !3231
  br i1 %397, label %398, label %402, !dbg !3234

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !3231
  %400 = or i8 %399, 48, !dbg !3231
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3231
  store i8 %400, i8* %401, align 1, !dbg !3231, !tbaa !660
  br label %402, !dbg !3231

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %403, metadata !2836, metadata !DIExpression()), !dbg !2888
  %404 = icmp ult i64 %403, %140, !dbg !3235
  br i1 %404, label %405, label %410, !dbg !3238

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !3235
  %407 = and i8 %406, 7, !dbg !3235
  %408 = or i8 %407, 48, !dbg !3235
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !3235
  store i8 %408, i8* %409, align 1, !dbg !3235, !tbaa !660
  br label %410, !dbg !3235

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %411, metadata !2836, metadata !DIExpression()), !dbg !2888
  %412 = and i8 %369, 7, !dbg !3239
  %413 = or i8 %412, 48, !dbg !3240
  call void @llvm.dbg.value(metadata i8 %413, metadata !2857, metadata !DIExpression()), !dbg !2985
  br label %421, !dbg !3241

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !3242

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !3243
  br i1 %416, label %417, label %419, !dbg !3248

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !3243
  store i8 92, i8* %418, align 1, !dbg !3243, !tbaa !660
  br label %419, !dbg !3243

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %420, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2852, metadata !DIExpression()), !dbg !2985
  br label %421, !dbg !3249

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2888
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2985
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2985
  call void @llvm.dbg.value(metadata i8 %426, metadata !2857, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %425, metadata !2855, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2852, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %422, metadata !2836, metadata !DIExpression()), !dbg !2888
  %427 = add i64 %366, 1, !dbg !3250
  %428 = icmp ugt i64 %361, %427, !dbg !3252
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !3253

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !3254
  %432 = select i1 %423, i1 %431, i1 false, !dbg !3254
  br i1 %432, label %433, label %444, !dbg !3254

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !3257
  br i1 %434, label %435, label %437, !dbg !3261

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !3257
  store i8 39, i8* %436, align 1, !dbg !3257, !tbaa !660
  br label %437, !dbg !3257

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %438, metadata !2836, metadata !DIExpression()), !dbg !2888
  %439 = icmp ult i64 %438, %140, !dbg !3262
  br i1 %439, label %440, label %442, !dbg !3265

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !3262
  store i8 39, i8* %441, align 1, !dbg !3262, !tbaa !660
  br label %442, !dbg !3262

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %443, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2888
  br label %444, !dbg !3266

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !3267
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %445, metadata !2836, metadata !DIExpression()), !dbg !2888
  %447 = icmp ult i64 %445, %140, !dbg !3268
  br i1 %447, label %448, label %450, !dbg !3271

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !3268
  store i8 %426, i8* %449, align 1, !dbg !3268, !tbaa !660
  br label %450, !dbg !3268

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %451, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %427, metadata !2850, metadata !DIExpression()), !dbg !2977
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !3272
  %453 = load i8, i8* %452, align 1, !dbg !3272, !tbaa !660
  call void @llvm.dbg.value(metadata i8 %453, metadata !2857, metadata !DIExpression()), !dbg !2985
  br label %363, !dbg !3273, !llvm.loop !3274

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2857, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i1 %358, metadata !2856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %425, metadata !2855, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2852, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %366, metadata !2850, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %422, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %360, metadata !2829, metadata !DIExpression()), !dbg !2888
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !3277
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2888
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2892
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2977
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2985
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %465, metadata !2857, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2856, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2855, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2852, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %462, metadata !2850, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %459, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %458, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %457, metadata !2829, metadata !DIExpression()), !dbg !2888
  br i1 %121, label %478, label %467, !dbg !3278

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
  br i1 %131, label %479, label %499, !dbg !3280

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !3281

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
  %490 = lshr i8 %481, 5, !dbg !3282
  %491 = zext i8 %490 to i64, !dbg !3282
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3283
  %493 = load i32, i32* %492, align 4, !dbg !3283, !tbaa !651
  %494 = and i8 %481, 31, !dbg !3284
  %495 = zext i8 %494 to i32, !dbg !3284
  %496 = shl nuw i32 1, %495, !dbg !3285
  %497 = and i32 %493, %496, !dbg !3285
  %498 = icmp eq i32 %497, 0, !dbg !3285
  br i1 %498, label %499, label %510, !dbg !3286

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
  br i1 %165, label %510, label %546, !dbg !3287

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !3277
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2888
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2892
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !3288
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2985
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %518, metadata !2857, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2856, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %516, metadata !2850, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %513, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %512, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %511, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.label(metadata !2885), !dbg !3289
  br i1 %119, label %638, label %520, !dbg !3290

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2855, metadata !DIExpression()), !dbg !2985
  %521 = select i1 %120, i1 true, i1 %515, !dbg !3292
  br i1 %521, label %538, label %522, !dbg !3292

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !3294
  br i1 %523, label %524, label %526, !dbg !3298

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3294
  store i8 39, i8* %525, align 1, !dbg !3294, !tbaa !660
  br label %526, !dbg !3294

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %527, metadata !2836, metadata !DIExpression()), !dbg !2888
  %528 = icmp ult i64 %527, %519, !dbg !3299
  br i1 %528, label %529, label %531, !dbg !3302

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3299
  store i8 36, i8* %530, align 1, !dbg !3299, !tbaa !660
  br label %531, !dbg !3299

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %532, metadata !2836, metadata !DIExpression()), !dbg !2888
  %533 = icmp ult i64 %532, %519, !dbg !3303
  br i1 %533, label %534, label %536, !dbg !3306

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !3303
  store i8 39, i8* %535, align 1, !dbg !3303, !tbaa !660
  br label %536, !dbg !3303

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %537, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 1, metadata !2844, metadata !DIExpression()), !dbg !2888
  br label %538, !dbg !3307

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2985
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %539, metadata !2836, metadata !DIExpression()), !dbg !2888
  %541 = icmp ult i64 %539, %519, !dbg !3308
  br i1 %541, label %542, label %544, !dbg !3311

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !3308
  store i8 92, i8* %543, align 1, !dbg !3308, !tbaa !660
  br label %544, !dbg !3308

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %556, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %555, metadata !2857, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2856, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2855, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %552, metadata !2850, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %549, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %548, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %547, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.label(metadata !2886), !dbg !3312
  br label %570, !dbg !3313

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !3277
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2888
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2892
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !3288
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !3316
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %555, metadata !2857, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2856, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 poison, metadata !2855, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %552, metadata !2850, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %549, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %548, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %547, metadata !2829, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.label(metadata !2886), !dbg !3312
  %557 = xor i1 %551, true, !dbg !3313
  %558 = select i1 %557, i1 true, i1 %553, !dbg !3313
  br i1 %558, label %570, label %559, !dbg !3313

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !3317
  br i1 %560, label %561, label %563, !dbg !3321

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3317
  store i8 39, i8* %562, align 1, !dbg !3317, !tbaa !660
  br label %563, !dbg !3317

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %564, metadata !2836, metadata !DIExpression()), !dbg !2888
  %565 = icmp ult i64 %564, %556, !dbg !3322
  br i1 %565, label %566, label %568, !dbg !3325

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3322
  store i8 39, i8* %567, align 1, !dbg !3322, !tbaa !660
  br label %568, !dbg !3322

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %569, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2888
  br label %570, !dbg !3326

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2985
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %578, metadata !2836, metadata !DIExpression()), !dbg !2888
  %580 = icmp ult i64 %578, %571, !dbg !3327
  br i1 %580, label %581, label %583, !dbg !3330

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !3327
  store i8 %572, i8* %582, align 1, !dbg !3327, !tbaa !660
  br label %583, !dbg !3327

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %584, metadata !2836, metadata !DIExpression()), !dbg !2888
  %585 = select i1 %573, i1 %137, i1 false, !dbg !3331
  call void @llvm.dbg.value(metadata i8 poison, metadata !2843, metadata !DIExpression()), !dbg !2888
  br label %586, !dbg !3332

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !3277
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2888
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2892
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !3288
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %593, metadata !2850, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 poison, metadata !2844, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2843, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %589, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %588, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %587, metadata !2829, metadata !DIExpression()), !dbg !2888
  %595 = add i64 %593, 1, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %595, metadata !2850, metadata !DIExpression()), !dbg !2977
  br label %132, !dbg !3334, !llvm.loop !3335

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2827, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2843, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 poison, metadata !2842, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 undef, metadata !2837, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 undef, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 undef, metadata !2829, metadata !DIExpression()), !dbg !2888
  %597 = icmp eq i64 %134, 0, !dbg !3337
  %598 = and i1 %126, %597, !dbg !3339
  %599 = and i1 %598, %119, !dbg !3339
  br i1 %599, label %638, label %600, !dbg !3339

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !3340
  %602 = or i1 %119, %601, !dbg !3340
  %603 = xor i1 %136, true, !dbg !3340
  %604 = select i1 %602, i1 true, i1 %603, !dbg !3340
  br i1 %604, label %612, label %605, !dbg !3340

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !3342

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !3344
  br label %653, !dbg !3346

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !3347
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !3349
  br i1 %611, label %36, label %612, !dbg !3349

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !3350
  %615 = or i1 %614, %613, !dbg !3352
  br i1 %615, label %631, label %616, !dbg !3352

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2838, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %134, metadata !2836, metadata !DIExpression()), !dbg !2888
  %617 = load i8, i8* %116, align 1, !dbg !3353, !tbaa !660
  %618 = icmp eq i8 %617, 0, !dbg !3356
  br i1 %618, label %631, label %619, !dbg !3356

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2838, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %622, metadata !2836, metadata !DIExpression()), !dbg !2888
  %623 = icmp ult i64 %622, %140, !dbg !3357
  br i1 %623, label %624, label %626, !dbg !3360

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3357
  store i8 %620, i8* %625, align 1, !dbg !3357, !tbaa !660
  br label %626, !dbg !3357

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %627, metadata !2836, metadata !DIExpression()), !dbg !2888
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %628, metadata !2838, metadata !DIExpression()), !dbg !2888
  %629 = load i8, i8* %628, align 1, !dbg !3353, !tbaa !660
  %630 = icmp eq i8 %629, 0, !dbg !3356
  br i1 %630, label %631, label %619, !dbg !3356, !llvm.loop !3362

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2964
  call void @llvm.dbg.value(metadata i64 %632, metadata !2836, metadata !DIExpression()), !dbg !2888
  %633 = icmp ult i64 %632, %140, !dbg !3364
  br i1 %633, label %634, label %653, !dbg !3366

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3367
  store i8 0, i8* %635, align 1, !dbg !3368, !tbaa !660
  br label %653, !dbg !3367

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2887), !dbg !3194
  %637 = icmp eq i32 %112, 2, !dbg !3369
  br i1 %637, label %643, label %647, !dbg !3195

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2887), !dbg !3194
  %641 = icmp eq i32 %112, 2, !dbg !3369
  %642 = select i1 %118, i32 4, i32 2, !dbg !3195
  br i1 %641, label %643, label %647, !dbg !3195

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !3195

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2830, metadata !DIExpression()), !dbg !2888
  %651 = and i32 %5, -3, !dbg !3370
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3371
  br label %653, !dbg !3372

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3373
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3374 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !3376 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3380, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %1, metadata !3381, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3382, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8* %0, metadata !3384, metadata !DIExpression()) #35, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %1, metadata !3389, metadata !DIExpression()) #35, !dbg !3397
  call void @llvm.dbg.value(metadata i64* null, metadata !3390, metadata !DIExpression()) #35, !dbg !3397
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3391, metadata !DIExpression()) #35, !dbg !3397
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3399
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3392, metadata !DIExpression()) #35, !dbg !3397
  %6 = tail call i32* @__errno_location() #38, !dbg !3400
  %7 = load i32, i32* %6, align 4, !dbg !3400, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %7, metadata !3393, metadata !DIExpression()) #35, !dbg !3397
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3401
  %9 = load i32, i32* %8, align 4, !dbg !3401, !tbaa !2770
  %10 = or i32 %9, 1, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %10, metadata !3394, metadata !DIExpression()) #35, !dbg !3397
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3403
  %12 = load i32, i32* %11, align 8, !dbg !3403, !tbaa !2719
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3404
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3405
  %15 = load i8*, i8** %14, align 8, !dbg !3405, !tbaa !2792
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3406
  %17 = load i8*, i8** %16, align 8, !dbg !3406, !tbaa !2795
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !3407
  %19 = add i64 %18, 1, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %19, metadata !3395, metadata !DIExpression()) #35, !dbg !3397
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %20, metadata !3396, metadata !DIExpression()) #35, !dbg !3397
  %21 = load i32, i32* %11, align 8, !dbg !3410, !tbaa !2719
  %22 = load i8*, i8** %14, align 8, !dbg !3411, !tbaa !2792
  %23 = load i8*, i8** %16, align 8, !dbg !3412, !tbaa !2795
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !3413
  store i32 %7, i32* %6, align 4, !dbg !3414, !tbaa !651
  ret i8* %20, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !3385 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3384, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %1, metadata !3389, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64* %2, metadata !3390, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3391, metadata !DIExpression()), !dbg !3416
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3417
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3417
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3392, metadata !DIExpression()), !dbg !3416
  %7 = tail call i32* @__errno_location() #38, !dbg !3418
  %8 = load i32, i32* %7, align 4, !dbg !3418, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %8, metadata !3393, metadata !DIExpression()), !dbg !3416
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3419
  %10 = load i32, i32* %9, align 4, !dbg !3419, !tbaa !2770
  %11 = icmp eq i64* %2, null, !dbg !3420
  %12 = zext i1 %11 to i32, !dbg !3420
  %13 = or i32 %10, %12, !dbg !3421
  call void @llvm.dbg.value(metadata i32 %13, metadata !3394, metadata !DIExpression()), !dbg !3416
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3422
  %15 = load i32, i32* %14, align 8, !dbg !3422, !tbaa !2719
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3423
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3424
  %18 = load i8*, i8** %17, align 8, !dbg !3424, !tbaa !2792
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3425
  %20 = load i8*, i8** %19, align 8, !dbg !3425, !tbaa !2795
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3426
  %22 = add i64 %21, 1, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %22, metadata !3395, metadata !DIExpression()), !dbg !3416
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %23, metadata !3396, metadata !DIExpression()), !dbg !3416
  %24 = load i32, i32* %14, align 8, !dbg !3429, !tbaa !2719
  %25 = load i8*, i8** %17, align 8, !dbg !3430, !tbaa !2792
  %26 = load i8*, i8** %19, align 8, !dbg !3431, !tbaa !2795
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3432
  store i32 %8, i32* %7, align 4, !dbg !3433, !tbaa !651
  br i1 %11, label %29, label %28, !dbg !3434

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3435, !tbaa !822
  br label %29, !dbg !3437

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3438
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3439 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3444, !tbaa !548
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3441, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 1, metadata !3442, metadata !DIExpression()), !dbg !3446
  %2 = load i32, i32* @nslots, align 4, !tbaa !651
  call void @llvm.dbg.value(metadata i32 1, metadata !3442, metadata !DIExpression()), !dbg !3446
  %3 = icmp sgt i32 %2, 1, !dbg !3447
  br i1 %3, label %4, label %6, !dbg !3449

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3447
  br label %10, !dbg !3449

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3450
  %8 = load i8*, i8** %7, align 8, !dbg !3450, !tbaa !3452
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3454
  br i1 %9, label %17, label %16, !dbg !3455

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3442, metadata !DIExpression()), !dbg !3446
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3456
  %13 = load i8*, i8** %12, align 8, !dbg !3456, !tbaa !3452
  tail call void @free(i8* noundef %13) #35, !dbg !3457
  %14 = add nuw nsw i64 %11, 1, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %14, metadata !3442, metadata !DIExpression()), !dbg !3446
  %15 = icmp eq i64 %14, %5, !dbg !3447
  br i1 %15, label %6, label %10, !dbg !3449, !llvm.loop !3459

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !3461
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3463, !tbaa !3464
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3465, !tbaa !3452
  br label %17, !dbg !3466

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3467
  br i1 %18, label %21, label %19, !dbg !3469

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3470
  tail call void @free(i8* noundef %20) #35, !dbg !3472
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3473, !tbaa !548
  br label %21, !dbg !3474

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3475, !tbaa !651
  ret void, !dbg !3476
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8* %1, metadata !3480, metadata !DIExpression()), !dbg !3481
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3482
  ret i8* %3, !dbg !3483
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !3484 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3488, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %1, metadata !3489, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %2, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3491, metadata !DIExpression()), !dbg !3504
  %6 = tail call i32* @__errno_location() #38, !dbg !3505
  %7 = load i32, i32* %6, align 4, !dbg !3505, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %7, metadata !3492, metadata !DIExpression()), !dbg !3504
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3506, !tbaa !548
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3493, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3494, metadata !DIExpression()), !dbg !3504
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3507
  br i1 %9, label %10, label %11, !dbg !3507

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3509
  unreachable, !dbg !3509

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3510, !tbaa !651
  %13 = icmp sgt i32 %12, %0, !dbg !3511
  br i1 %13, label %36, label %14, !dbg !3512

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3513
  call void @llvm.dbg.value(metadata i1 %15, metadata !3495, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3514
  %16 = bitcast i64* %5 to i8*, !dbg !3515
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !3515
  %17 = sext i32 %12 to i64, !dbg !3516
  call void @llvm.dbg.value(metadata i64 %17, metadata !3498, metadata !DIExpression()), !dbg !3514
  store i64 %17, i64* %5, align 8, !dbg !3517, !tbaa !822
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3518
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3518
  %20 = add nuw nsw i32 %0, 1, !dbg !3519
  %21 = sub i32 %20, %12, !dbg !3520
  %22 = sext i32 %21 to i64, !dbg !3521
  call void @llvm.dbg.value(metadata i64* %5, metadata !3498, metadata !DIExpression(DW_OP_deref)), !dbg !3514
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !3522
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3493, metadata !DIExpression()), !dbg !3504
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3523, !tbaa !548
  br i1 %15, label %25, label %26, !dbg !3524

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3525, !tbaa.struct !3527
  br label %26, !dbg !3528

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3529, !tbaa !651
  %28 = sext i32 %27 to i64, !dbg !3530
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3530
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3531
  %31 = load i64, i64* %5, align 8, !dbg !3532, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %31, metadata !3498, metadata !DIExpression()), !dbg !3514
  %32 = sub nsw i64 %31, %28, !dbg !3533
  %33 = shl i64 %32, 4, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %30, metadata !2922, metadata !DIExpression()) #35, !dbg !3535
  call void @llvm.dbg.value(metadata i32 0, metadata !2925, metadata !DIExpression()) #35, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %33, metadata !2926, metadata !DIExpression()) #35, !dbg !3535
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !3537
  %34 = load i64, i64* %5, align 8, !dbg !3538, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %34, metadata !3498, metadata !DIExpression()), !dbg !3514
  %35 = trunc i64 %34 to i32, !dbg !3538
  store i32 %35, i32* @nslots, align 4, !dbg !3539, !tbaa !651
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !3540
  br label %36, !dbg !3541

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3504
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3493, metadata !DIExpression()), !dbg !3504
  %38 = zext i32 %0 to i64, !dbg !3542
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3543
  %40 = load i64, i64* %39, align 8, !dbg !3543, !tbaa !3464
  call void @llvm.dbg.value(metadata i64 %40, metadata !3499, metadata !DIExpression()), !dbg !3544
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3545
  %42 = load i8*, i8** %41, align 8, !dbg !3545, !tbaa !3452
  call void @llvm.dbg.value(metadata i8* %42, metadata !3501, metadata !DIExpression()), !dbg !3544
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3546
  %44 = load i32, i32* %43, align 4, !dbg !3546, !tbaa !2770
  %45 = or i32 %44, 1, !dbg !3547
  call void @llvm.dbg.value(metadata i32 %45, metadata !3502, metadata !DIExpression()), !dbg !3544
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3548
  %47 = load i32, i32* %46, align 8, !dbg !3548, !tbaa !2719
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3549
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3550
  %50 = load i8*, i8** %49, align 8, !dbg !3550, !tbaa !2792
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3551
  %52 = load i8*, i8** %51, align 8, !dbg !3551, !tbaa !2795
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %53, metadata !3503, metadata !DIExpression()), !dbg !3544
  %54 = icmp ugt i64 %40, %53, !dbg !3553
  br i1 %54, label %65, label %55, !dbg !3555

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %56, metadata !3499, metadata !DIExpression()), !dbg !3544
  store i64 %56, i64* %39, align 8, !dbg !3558, !tbaa !3464
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3559
  br i1 %57, label %59, label %58, !dbg !3561

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !3562
  br label %59, !dbg !3562

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !3563
  call void @llvm.dbg.value(metadata i8* %60, metadata !3501, metadata !DIExpression()), !dbg !3544
  store i8* %60, i8** %41, align 8, !dbg !3564, !tbaa !3452
  %61 = load i32, i32* %46, align 8, !dbg !3565, !tbaa !2719
  %62 = load i8*, i8** %49, align 8, !dbg !3566, !tbaa !2792
  %63 = load i8*, i8** %51, align 8, !dbg !3567, !tbaa !2795
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3568
  br label %65, !dbg !3569

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3544
  call void @llvm.dbg.value(metadata i8* %66, metadata !3501, metadata !DIExpression()), !dbg !3544
  store i32 %7, i32* %6, align 4, !dbg !3570, !tbaa !651
  ret i8* %66, !dbg !3571
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3572 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3576, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i8* %1, metadata !3577, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 %2, metadata !3578, metadata !DIExpression()), !dbg !3579
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3580
  ret i8* %4, !dbg !3581
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3582 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3584, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 0, metadata !3479, metadata !DIExpression()) #35, !dbg !3586
  call void @llvm.dbg.value(metadata i8* %0, metadata !3480, metadata !DIExpression()) #35, !dbg !3586
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3588
  ret i8* %2, !dbg !3589
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3590 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %1, metadata !3595, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3576, metadata !DIExpression()) #35, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %0, metadata !3577, metadata !DIExpression()) #35, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3578, metadata !DIExpression()) #35, !dbg !3597
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3599
  ret i8* %3, !dbg !3600
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3601 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3605, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 %1, metadata !3606, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i8* %2, metadata !3607, metadata !DIExpression()), !dbg !3609
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3610
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3610
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3608, metadata !DIExpression()), !dbg !3611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3612), !dbg !3615
  call void @llvm.dbg.value(metadata i32 %1, metadata !3616, metadata !DIExpression()) #35, !dbg !3622
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3621, metadata !DIExpression()) #35, !dbg !3624
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3624, !alias.scope !3612
  %6 = icmp eq i32 %1, 10, !dbg !3625
  br i1 %6, label %7, label %8, !dbg !3627

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3628, !noalias !3612
  unreachable, !dbg !3628

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3629
  store i32 %1, i32* %9, align 8, !dbg !3630, !tbaa !2719, !alias.scope !3612
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3631
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3632
  ret i8* %10, !dbg !3633
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3634 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3638, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %1, metadata !3639, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %2, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %3, metadata !3641, metadata !DIExpression()), !dbg !3643
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3644
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3644
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3642, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3646), !dbg !3649
  call void @llvm.dbg.value(metadata i32 %1, metadata !3616, metadata !DIExpression()) #35, !dbg !3650
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3621, metadata !DIExpression()) #35, !dbg !3652
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !3652, !alias.scope !3646
  %7 = icmp eq i32 %1, 10, !dbg !3653
  br i1 %7, label %8, label %9, !dbg !3654

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !3655, !noalias !3646
  unreachable, !dbg !3655

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3656
  store i32 %1, i32* %10, align 8, !dbg !3657, !tbaa !2719, !alias.scope !3646
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3658
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3659
  ret i8* %11, !dbg !3660
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3661 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3665, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %1, metadata !3666, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 0, metadata !3605, metadata !DIExpression()) #35, !dbg !3668
  call void @llvm.dbg.value(metadata i32 %0, metadata !3606, metadata !DIExpression()) #35, !dbg !3668
  call void @llvm.dbg.value(metadata i8* %1, metadata !3607, metadata !DIExpression()) #35, !dbg !3668
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3670
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3670
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3608, metadata !DIExpression()) #35, !dbg !3671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3672) #35, !dbg !3675
  call void @llvm.dbg.value(metadata i32 %0, metadata !3616, metadata !DIExpression()) #35, !dbg !3676
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3621, metadata !DIExpression()) #35, !dbg !3678
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !3678, !alias.scope !3672
  %5 = icmp eq i32 %0, 10, !dbg !3679
  br i1 %5, label %6, label %7, !dbg !3680

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !3681, !noalias !3672
  unreachable, !dbg !3681

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3682
  store i32 %0, i32* %8, align 8, !dbg !3683, !tbaa !2719, !alias.scope !3672
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3684
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3685
  ret i8* %9, !dbg !3686
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3687 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i8* %1, metadata !3692, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %2, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()) #35, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %0, metadata !3639, metadata !DIExpression()) #35, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %1, metadata !3640, metadata !DIExpression()) #35, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %2, metadata !3641, metadata !DIExpression()) #35, !dbg !3695
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3697
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3697
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3642, metadata !DIExpression()) #35, !dbg !3698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3699) #35, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %0, metadata !3616, metadata !DIExpression()) #35, !dbg !3703
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3621, metadata !DIExpression()) #35, !dbg !3705
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3705, !alias.scope !3699
  %6 = icmp eq i32 %0, 10, !dbg !3706
  br i1 %6, label %7, label %8, !dbg !3707

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3708, !noalias !3699
  unreachable, !dbg !3708

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3709
  store i32 %0, i32* %9, align 8, !dbg !3710, !tbaa !2719, !alias.scope !3699
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3711
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3712
  ret i8* %10, !dbg !3713
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3714 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3718, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %1, metadata !3719, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i8 %2, metadata !3720, metadata !DIExpression()), !dbg !3722
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3723
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3723
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3721, metadata !DIExpression()), !dbg !3724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3725, !tbaa.struct !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2737, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i8 %2, metadata !2738, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i32 1, metadata !2739, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i8 %2, metadata !2740, metadata !DIExpression()), !dbg !3727
  %6 = lshr i8 %2, 5, !dbg !3729
  %7 = zext i8 %6 to i64, !dbg !3729
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3730
  call void @llvm.dbg.value(metadata i32* %8, metadata !2741, metadata !DIExpression()), !dbg !3727
  %9 = and i8 %2, 31, !dbg !3731
  %10 = zext i8 %9 to i32, !dbg !3731
  call void @llvm.dbg.value(metadata i32 %10, metadata !2743, metadata !DIExpression()), !dbg !3727
  %11 = load i32, i32* %8, align 4, !dbg !3732, !tbaa !651
  %12 = lshr i32 %11, %10, !dbg !3733
  %13 = and i32 %12, 1, !dbg !3734
  call void @llvm.dbg.value(metadata i32 %13, metadata !2744, metadata !DIExpression()), !dbg !3727
  %14 = xor i32 %13, 1, !dbg !3735
  %15 = shl i32 %14, %10, !dbg !3736
  %16 = xor i32 %15, %11, !dbg !3737
  store i32 %16, i32* %8, align 4, !dbg !3737, !tbaa !651
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3738
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3739
  ret i8* %17, !dbg !3740
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3741 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i8 %1, metadata !3746, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i8* %0, metadata !3718, metadata !DIExpression()) #35, !dbg !3748
  call void @llvm.dbg.value(metadata i64 -1, metadata !3719, metadata !DIExpression()) #35, !dbg !3748
  call void @llvm.dbg.value(metadata i8 %1, metadata !3720, metadata !DIExpression()) #35, !dbg !3748
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3750
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3750
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3721, metadata !DIExpression()) #35, !dbg !3751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3752, !tbaa.struct !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2737, metadata !DIExpression()) #35, !dbg !3753
  call void @llvm.dbg.value(metadata i8 %1, metadata !2738, metadata !DIExpression()) #35, !dbg !3753
  call void @llvm.dbg.value(metadata i32 1, metadata !2739, metadata !DIExpression()) #35, !dbg !3753
  call void @llvm.dbg.value(metadata i8 %1, metadata !2740, metadata !DIExpression()) #35, !dbg !3753
  %5 = lshr i8 %1, 5, !dbg !3755
  %6 = zext i8 %5 to i64, !dbg !3755
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3756
  call void @llvm.dbg.value(metadata i32* %7, metadata !2741, metadata !DIExpression()) #35, !dbg !3753
  %8 = and i8 %1, 31, !dbg !3757
  %9 = zext i8 %8 to i32, !dbg !3757
  call void @llvm.dbg.value(metadata i32 %9, metadata !2743, metadata !DIExpression()) #35, !dbg !3753
  %10 = load i32, i32* %7, align 4, !dbg !3758, !tbaa !651
  %11 = lshr i32 %10, %9, !dbg !3759
  %12 = and i32 %11, 1, !dbg !3760
  call void @llvm.dbg.value(metadata i32 %12, metadata !2744, metadata !DIExpression()) #35, !dbg !3753
  %13 = xor i32 %12, 1, !dbg !3761
  %14 = shl i32 %13, %9, !dbg !3762
  %15 = xor i32 %14, %10, !dbg !3763
  store i32 %15, i32* %7, align 4, !dbg !3763, !tbaa !651
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3765
  ret i8* %16, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3767 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3769, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i8* %0, metadata !3745, metadata !DIExpression()) #35, !dbg !3771
  call void @llvm.dbg.value(metadata i8 58, metadata !3746, metadata !DIExpression()) #35, !dbg !3771
  call void @llvm.dbg.value(metadata i8* %0, metadata !3718, metadata !DIExpression()) #35, !dbg !3773
  call void @llvm.dbg.value(metadata i64 -1, metadata !3719, metadata !DIExpression()) #35, !dbg !3773
  call void @llvm.dbg.value(metadata i8 58, metadata !3720, metadata !DIExpression()) #35, !dbg !3773
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3775
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3775
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3721, metadata !DIExpression()) #35, !dbg !3776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3777, !tbaa.struct !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2737, metadata !DIExpression()) #35, !dbg !3778
  call void @llvm.dbg.value(metadata i8 58, metadata !2738, metadata !DIExpression()) #35, !dbg !3778
  call void @llvm.dbg.value(metadata i32 1, metadata !2739, metadata !DIExpression()) #35, !dbg !3778
  call void @llvm.dbg.value(metadata i8 58, metadata !2740, metadata !DIExpression()) #35, !dbg !3778
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3780
  call void @llvm.dbg.value(metadata i32* %4, metadata !2741, metadata !DIExpression()) #35, !dbg !3778
  call void @llvm.dbg.value(metadata i32 26, metadata !2743, metadata !DIExpression()) #35, !dbg !3778
  %5 = load i32, i32* %4, align 4, !dbg !3781, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %5, metadata !2744, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3778
  %6 = or i32 %5, 67108864, !dbg !3782
  store i32 %6, i32* %4, align 4, !dbg !3782, !tbaa !651
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3783
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3784
  ret i8* %7, !dbg !3785
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3786 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3788, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %1, metadata !3789, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %0, metadata !3718, metadata !DIExpression()) #35, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %1, metadata !3719, metadata !DIExpression()) #35, !dbg !3791
  call void @llvm.dbg.value(metadata i8 58, metadata !3720, metadata !DIExpression()) #35, !dbg !3791
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3793
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3793
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3721, metadata !DIExpression()) #35, !dbg !3794
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3795, !tbaa.struct !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2737, metadata !DIExpression()) #35, !dbg !3796
  call void @llvm.dbg.value(metadata i8 58, metadata !2738, metadata !DIExpression()) #35, !dbg !3796
  call void @llvm.dbg.value(metadata i32 1, metadata !2739, metadata !DIExpression()) #35, !dbg !3796
  call void @llvm.dbg.value(metadata i8 58, metadata !2740, metadata !DIExpression()) #35, !dbg !3796
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3798
  call void @llvm.dbg.value(metadata i32* %5, metadata !2741, metadata !DIExpression()) #35, !dbg !3796
  call void @llvm.dbg.value(metadata i32 26, metadata !2743, metadata !DIExpression()) #35, !dbg !3796
  %6 = load i32, i32* %5, align 4, !dbg !3799, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %6, metadata !2744, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3796
  %7 = or i32 %6, 67108864, !dbg !3800
  store i32 %7, i32* %5, align 4, !dbg !3800, !tbaa !651
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3801
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3802
  ret i8* %8, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3804 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3806, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 %1, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()), !dbg !3810
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3811
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3811
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32 %1, metadata !3616, metadata !DIExpression()) #35, !dbg !3813
  call void @llvm.dbg.value(metadata i32 0, metadata !3621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3813
  %6 = icmp eq i32 %1, 10, !dbg !3815
  br i1 %6, label %7, label %8, !dbg !3816

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3817, !noalias !3818
  unreachable, !dbg !3817

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3813
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3821
  store i32 %1, i32* %9, align 8, !dbg !3821, !tbaa.struct !3726
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3821
  %11 = bitcast i32* %10 to i8*, !dbg !3821
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3821
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2737, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i8 58, metadata !2738, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 1, metadata !2739, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i8 58, metadata !2740, metadata !DIExpression()), !dbg !3822
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3824
  call void @llvm.dbg.value(metadata i32* %12, metadata !2741, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 26, metadata !2743, metadata !DIExpression()), !dbg !3822
  %13 = load i32, i32* %12, align 4, !dbg !3825, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %13, metadata !2744, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3822
  %14 = or i32 %13, 67108864, !dbg !3826
  store i32 %14, i32* %12, align 4, !dbg !3826, !tbaa !651
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3827
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3828
  ret i8* %15, !dbg !3829
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3830 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3834, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8* %1, metadata !3835, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8* %2, metadata !3836, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8* %3, metadata !3837, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()) #35, !dbg !3849
  call void @llvm.dbg.value(metadata i8* %1, metadata !3844, metadata !DIExpression()) #35, !dbg !3849
  call void @llvm.dbg.value(metadata i8* %2, metadata !3845, metadata !DIExpression()) #35, !dbg !3849
  call void @llvm.dbg.value(metadata i8* %3, metadata !3846, metadata !DIExpression()) #35, !dbg !3849
  call void @llvm.dbg.value(metadata i64 -1, metadata !3847, metadata !DIExpression()) #35, !dbg !3849
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3851
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3851
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3848, metadata !DIExpression()) #35, !dbg !3852
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3853, !tbaa.struct !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2777, metadata !DIExpression()) #35, !dbg !3854
  call void @llvm.dbg.value(metadata i8* %1, metadata !2778, metadata !DIExpression()) #35, !dbg !3854
  call void @llvm.dbg.value(metadata i8* %2, metadata !2779, metadata !DIExpression()) #35, !dbg !3854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2777, metadata !DIExpression()) #35, !dbg !3854
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3856
  store i32 10, i32* %7, align 8, !dbg !3857, !tbaa !2719
  %8 = icmp ne i8* %1, null, !dbg !3858
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3859
  br i1 %10, label %12, label %11, !dbg !3859

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3860
  unreachable, !dbg !3860

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3861
  store i8* %1, i8** %13, align 8, !dbg !3862, !tbaa !2792
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3863
  store i8* %2, i8** %14, align 8, !dbg !3864, !tbaa !2795
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3865
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3866
  ret i8* %15, !dbg !3867
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3840 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8* %1, metadata !3844, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8* %2, metadata !3845, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8* %3, metadata !3846, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %4, metadata !3847, metadata !DIExpression()), !dbg !3868
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3869
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3869
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3848, metadata !DIExpression()), !dbg !3870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3871, !tbaa.struct !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2777, metadata !DIExpression()) #35, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %1, metadata !2778, metadata !DIExpression()) #35, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %2, metadata !2779, metadata !DIExpression()) #35, !dbg !3872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2777, metadata !DIExpression()) #35, !dbg !3872
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3874
  store i32 10, i32* %8, align 8, !dbg !3875, !tbaa !2719
  %9 = icmp ne i8* %1, null, !dbg !3876
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3877
  br i1 %11, label %13, label %12, !dbg !3877

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3878
  unreachable, !dbg !3878

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3879
  store i8* %1, i8** %14, align 8, !dbg !3880, !tbaa !2792
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3881
  store i8* %2, i8** %15, align 8, !dbg !3882, !tbaa !2795
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3883
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3884
  ret i8* %16, !dbg !3885
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3886 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %1, metadata !3891, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %2, metadata !3892, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 0, metadata !3834, metadata !DIExpression()) #35, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #35, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %1, metadata !3836, metadata !DIExpression()) #35, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %2, metadata !3837, metadata !DIExpression()) #35, !dbg !3894
  call void @llvm.dbg.value(metadata i32 0, metadata !3839, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %0, metadata !3844, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %1, metadata !3845, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %2, metadata !3846, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i64 -1, metadata !3847, metadata !DIExpression()) #35, !dbg !3896
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3898
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3898
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3848, metadata !DIExpression()) #35, !dbg !3899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3900, !tbaa.struct !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2777, metadata !DIExpression()) #35, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %0, metadata !2778, metadata !DIExpression()) #35, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %1, metadata !2779, metadata !DIExpression()) #35, !dbg !3901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2777, metadata !DIExpression()) #35, !dbg !3901
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3903
  store i32 10, i32* %6, align 8, !dbg !3904, !tbaa !2719
  %7 = icmp ne i8* %0, null, !dbg !3905
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3906
  br i1 %9, label %11, label %10, !dbg !3906

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3907
  unreachable, !dbg !3907

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3908
  store i8* %0, i8** %12, align 8, !dbg !3909, !tbaa !2792
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3910
  store i8* %1, i8** %13, align 8, !dbg !3911, !tbaa !2795
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3912
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3913
  ret i8* %14, !dbg !3914
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3915 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3919, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i8* %1, metadata !3920, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i8* %2, metadata !3921, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i64 %3, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 0, metadata !3839, metadata !DIExpression()) #35, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %0, metadata !3844, metadata !DIExpression()) #35, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %1, metadata !3845, metadata !DIExpression()) #35, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %2, metadata !3846, metadata !DIExpression()) #35, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %3, metadata !3847, metadata !DIExpression()) #35, !dbg !3924
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3926
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3926
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3848, metadata !DIExpression()) #35, !dbg !3927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3928, !tbaa.struct !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2777, metadata !DIExpression()) #35, !dbg !3929
  call void @llvm.dbg.value(metadata i8* %0, metadata !2778, metadata !DIExpression()) #35, !dbg !3929
  call void @llvm.dbg.value(metadata i8* %1, metadata !2779, metadata !DIExpression()) #35, !dbg !3929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2777, metadata !DIExpression()) #35, !dbg !3929
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3931
  store i32 10, i32* %7, align 8, !dbg !3932, !tbaa !2719
  %8 = icmp ne i8* %0, null, !dbg !3933
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3934
  br i1 %10, label %12, label %11, !dbg !3934

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3935
  unreachable, !dbg !3935

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3936
  store i8* %0, i8** %13, align 8, !dbg !3937, !tbaa !2792
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3938
  store i8* %1, i8** %14, align 8, !dbg !3939, !tbaa !2795
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3940
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3941
  ret i8* %15, !dbg !3942
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3943 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3947, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i8* %1, metadata !3948, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %2, metadata !3949, metadata !DIExpression()), !dbg !3950
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3951
  ret i8* %4, !dbg !3952
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3953 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3957, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %1, metadata !3958, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 0, metadata !3947, metadata !DIExpression()) #35, !dbg !3960
  call void @llvm.dbg.value(metadata i8* %0, metadata !3948, metadata !DIExpression()) #35, !dbg !3960
  call void @llvm.dbg.value(metadata i64 %1, metadata !3949, metadata !DIExpression()) #35, !dbg !3960
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3962
  ret i8* %3, !dbg !3963
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %1, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %0, metadata !3947, metadata !DIExpression()) #35, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %1, metadata !3948, metadata !DIExpression()) #35, !dbg !3971
  call void @llvm.dbg.value(metadata i64 -1, metadata !3949, metadata !DIExpression()) #35, !dbg !3971
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3973
  ret i8* %3, !dbg !3974
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3975 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3979, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 0, metadata !3968, metadata !DIExpression()) #35, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()) #35, !dbg !3981
  call void @llvm.dbg.value(metadata i32 0, metadata !3947, metadata !DIExpression()) #35, !dbg !3983
  call void @llvm.dbg.value(metadata i8* %0, metadata !3948, metadata !DIExpression()) #35, !dbg !3983
  call void @llvm.dbg.value(metadata i64 -1, metadata !3949, metadata !DIExpression()) #35, !dbg !3983
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3985
  ret i8* %2, !dbg !3986
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3987 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4026, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i8* %1, metadata !4027, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i8* %2, metadata !4028, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i8* %3, metadata !4029, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i8** %4, metadata !4030, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %5, metadata !4031, metadata !DIExpression()), !dbg !4032
  %7 = icmp eq i8* %1, null, !dbg !4033
  br i1 %7, label %10, label %8, !dbg !4035

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !4036
  br label %12, !dbg !4036

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.146, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !4037
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.148, i64 0, i64 0), i32 noundef 5) #35, !dbg !4038
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !4038
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.149, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !4039
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.150, i64 0, i64 0), i32 noundef 5) #35, !dbg !4040
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.151, i64 0, i64 0)) #35, !dbg !4040
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.149, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !4041
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
  ], !dbg !4042

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.152, i64 0, i64 0), i32 noundef 5) #35, !dbg !4043
  %21 = load i8*, i8** %4, align 8, !dbg !4043, !tbaa !548
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !4043
  br label %147, !dbg !4045

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.153, i64 0, i64 0), i32 noundef 5) #35, !dbg !4046
  %25 = load i8*, i8** %4, align 8, !dbg !4046, !tbaa !548
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4046
  %27 = load i8*, i8** %26, align 8, !dbg !4046, !tbaa !548
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !4046
  br label %147, !dbg !4047

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.154, i64 0, i64 0), i32 noundef 5) #35, !dbg !4048
  %31 = load i8*, i8** %4, align 8, !dbg !4048, !tbaa !548
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4048
  %33 = load i8*, i8** %32, align 8, !dbg !4048, !tbaa !548
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4048
  %35 = load i8*, i8** %34, align 8, !dbg !4048, !tbaa !548
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !4048
  br label %147, !dbg !4049

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.155, i64 0, i64 0), i32 noundef 5) #35, !dbg !4050
  %39 = load i8*, i8** %4, align 8, !dbg !4050, !tbaa !548
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4050
  %41 = load i8*, i8** %40, align 8, !dbg !4050, !tbaa !548
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4050
  %43 = load i8*, i8** %42, align 8, !dbg !4050, !tbaa !548
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4050
  %45 = load i8*, i8** %44, align 8, !dbg !4050, !tbaa !548
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !4050
  br label %147, !dbg !4051

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.156, i64 0, i64 0), i32 noundef 5) #35, !dbg !4052
  %49 = load i8*, i8** %4, align 8, !dbg !4052, !tbaa !548
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4052
  %51 = load i8*, i8** %50, align 8, !dbg !4052, !tbaa !548
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4052
  %53 = load i8*, i8** %52, align 8, !dbg !4052, !tbaa !548
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4052
  %55 = load i8*, i8** %54, align 8, !dbg !4052, !tbaa !548
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4052
  %57 = load i8*, i8** %56, align 8, !dbg !4052, !tbaa !548
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !4052
  br label %147, !dbg !4053

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.157, i64 0, i64 0), i32 noundef 5) #35, !dbg !4054
  %61 = load i8*, i8** %4, align 8, !dbg !4054, !tbaa !548
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4054
  %63 = load i8*, i8** %62, align 8, !dbg !4054, !tbaa !548
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4054
  %65 = load i8*, i8** %64, align 8, !dbg !4054, !tbaa !548
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4054
  %67 = load i8*, i8** %66, align 8, !dbg !4054, !tbaa !548
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4054
  %69 = load i8*, i8** %68, align 8, !dbg !4054, !tbaa !548
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4054
  %71 = load i8*, i8** %70, align 8, !dbg !4054, !tbaa !548
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !4054
  br label %147, !dbg !4055

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.158, i64 0, i64 0), i32 noundef 5) #35, !dbg !4056
  %75 = load i8*, i8** %4, align 8, !dbg !4056, !tbaa !548
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4056
  %77 = load i8*, i8** %76, align 8, !dbg !4056, !tbaa !548
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4056
  %79 = load i8*, i8** %78, align 8, !dbg !4056, !tbaa !548
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4056
  %81 = load i8*, i8** %80, align 8, !dbg !4056, !tbaa !548
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4056
  %83 = load i8*, i8** %82, align 8, !dbg !4056, !tbaa !548
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4056
  %85 = load i8*, i8** %84, align 8, !dbg !4056, !tbaa !548
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4056
  %87 = load i8*, i8** %86, align 8, !dbg !4056, !tbaa !548
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !4056
  br label %147, !dbg !4057

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.159, i64 0, i64 0), i32 noundef 5) #35, !dbg !4058
  %91 = load i8*, i8** %4, align 8, !dbg !4058, !tbaa !548
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4058
  %93 = load i8*, i8** %92, align 8, !dbg !4058, !tbaa !548
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4058
  %95 = load i8*, i8** %94, align 8, !dbg !4058, !tbaa !548
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4058
  %97 = load i8*, i8** %96, align 8, !dbg !4058, !tbaa !548
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4058
  %99 = load i8*, i8** %98, align 8, !dbg !4058, !tbaa !548
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4058
  %101 = load i8*, i8** %100, align 8, !dbg !4058, !tbaa !548
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4058
  %103 = load i8*, i8** %102, align 8, !dbg !4058, !tbaa !548
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4058
  %105 = load i8*, i8** %104, align 8, !dbg !4058, !tbaa !548
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !4058
  br label %147, !dbg !4059

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.160, i64 0, i64 0), i32 noundef 5) #35, !dbg !4060
  %109 = load i8*, i8** %4, align 8, !dbg !4060, !tbaa !548
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4060
  %111 = load i8*, i8** %110, align 8, !dbg !4060, !tbaa !548
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4060
  %113 = load i8*, i8** %112, align 8, !dbg !4060, !tbaa !548
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4060
  %115 = load i8*, i8** %114, align 8, !dbg !4060, !tbaa !548
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4060
  %117 = load i8*, i8** %116, align 8, !dbg !4060, !tbaa !548
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4060
  %119 = load i8*, i8** %118, align 8, !dbg !4060, !tbaa !548
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4060
  %121 = load i8*, i8** %120, align 8, !dbg !4060, !tbaa !548
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4060
  %123 = load i8*, i8** %122, align 8, !dbg !4060, !tbaa !548
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4060
  %125 = load i8*, i8** %124, align 8, !dbg !4060, !tbaa !548
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !4060
  br label %147, !dbg !4061

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.161, i64 0, i64 0), i32 noundef 5) #35, !dbg !4062
  %129 = load i8*, i8** %4, align 8, !dbg !4062, !tbaa !548
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4062
  %131 = load i8*, i8** %130, align 8, !dbg !4062, !tbaa !548
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4062
  %133 = load i8*, i8** %132, align 8, !dbg !4062, !tbaa !548
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4062
  %135 = load i8*, i8** %134, align 8, !dbg !4062, !tbaa !548
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4062
  %137 = load i8*, i8** %136, align 8, !dbg !4062, !tbaa !548
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4062
  %139 = load i8*, i8** %138, align 8, !dbg !4062, !tbaa !548
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4062
  %141 = load i8*, i8** %140, align 8, !dbg !4062, !tbaa !548
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4062
  %143 = load i8*, i8** %142, align 8, !dbg !4062, !tbaa !548
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4062
  %145 = load i8*, i8** %144, align 8, !dbg !4062, !tbaa !548
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !4062
  br label %147, !dbg !4063

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4064
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !4065 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4069, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8* %1, metadata !4070, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8* %2, metadata !4071, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8* %3, metadata !4072, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8** %4, metadata !4073, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 0, metadata !4074, metadata !DIExpression()), !dbg !4075
  br label %6, !dbg !4076

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4078
  call void @llvm.dbg.value(metadata i64 %7, metadata !4074, metadata !DIExpression()), !dbg !4075
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4079
  %9 = load i8*, i8** %8, align 8, !dbg !4079, !tbaa !548
  %10 = icmp eq i8* %9, null, !dbg !4081
  %11 = add i64 %7, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %11, metadata !4074, metadata !DIExpression()), !dbg !4075
  br i1 %10, label %12, label %6, !dbg !4081, !llvm.loop !4083

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !4085
  ret void, !dbg !4086
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !4087 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4102, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8* %1, metadata !4103, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8* %2, metadata !4104, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8* %3, metadata !4105, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !4106, metadata !DIExpression()), !dbg !4111
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4112
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !4112
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4108, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 0, metadata !4107, metadata !DIExpression()), !dbg !4110
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !4107, metadata !DIExpression()), !dbg !4110
  %11 = load i32, i32* %8, align 8, !dbg !4114
  %12 = icmp sgt i32 %11, -1, !dbg !4114
  br i1 %12, label %20, label %13, !dbg !4114

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !4114
  store i32 %14, i32* %8, align 8, !dbg !4114
  %15 = icmp ult i32 %11, -7, !dbg !4114
  br i1 %15, label %16, label %20, !dbg !4114

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !4114
  %18 = sext i32 %11 to i64, !dbg !4114
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !4114
  br label %24, !dbg !4114

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !4114
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !4114
  store i8* %23, i8** %10, align 8, !dbg !4114
  br label %24, !dbg !4114

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !4114
  %28 = load i8*, i8** %27, align 8, !dbg !4114
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4117
  store i8* %28, i8** %29, align 8, !dbg !4118, !tbaa !548
  %30 = icmp eq i8* %28, null, !dbg !4119
  br i1 %30, label %210, label %31, !dbg !4120

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 1, metadata !4107, metadata !DIExpression()), !dbg !4110
  %32 = icmp sgt i32 %25, -1, !dbg !4114
  br i1 %32, label %40, label %33, !dbg !4114

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !4114
  store i32 %34, i32* %8, align 8, !dbg !4114
  %35 = icmp ult i32 %25, -7, !dbg !4114
  br i1 %35, label %36, label %40, !dbg !4114

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !4114
  %38 = sext i32 %25 to i64, !dbg !4114
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !4114
  br label %44, !dbg !4114

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !4114
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !4114
  store i8* %43, i8** %10, align 8, !dbg !4114
  br label %44, !dbg !4114

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !4114
  %48 = load i8*, i8** %47, align 8, !dbg !4114
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4117
  store i8* %48, i8** %49, align 8, !dbg !4118, !tbaa !548
  %50 = icmp eq i8* %48, null, !dbg !4119
  br i1 %50, label %210, label %51, !dbg !4120

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 2, metadata !4107, metadata !DIExpression()), !dbg !4110
  %52 = icmp sgt i32 %45, -1, !dbg !4114
  br i1 %52, label %60, label %53, !dbg !4114

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !4114
  store i32 %54, i32* %8, align 8, !dbg !4114
  %55 = icmp ult i32 %45, -7, !dbg !4114
  br i1 %55, label %56, label %60, !dbg !4114

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !4114
  %58 = sext i32 %45 to i64, !dbg !4114
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !4114
  br label %64, !dbg !4114

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !4114
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !4114
  store i8* %63, i8** %10, align 8, !dbg !4114
  br label %64, !dbg !4114

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !4114
  %68 = load i8*, i8** %67, align 8, !dbg !4114
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4117
  store i8* %68, i8** %69, align 8, !dbg !4118, !tbaa !548
  %70 = icmp eq i8* %68, null, !dbg !4119
  br i1 %70, label %210, label %71, !dbg !4120

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 3, metadata !4107, metadata !DIExpression()), !dbg !4110
  %72 = icmp sgt i32 %65, -1, !dbg !4114
  br i1 %72, label %80, label %73, !dbg !4114

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !4114
  store i32 %74, i32* %8, align 8, !dbg !4114
  %75 = icmp ult i32 %65, -7, !dbg !4114
  br i1 %75, label %76, label %80, !dbg !4114

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !4114
  %78 = sext i32 %65 to i64, !dbg !4114
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !4114
  br label %84, !dbg !4114

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !4114
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !4114
  store i8* %83, i8** %10, align 8, !dbg !4114
  br label %84, !dbg !4114

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !4114
  %88 = load i8*, i8** %87, align 8, !dbg !4114
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4117
  store i8* %88, i8** %89, align 8, !dbg !4118, !tbaa !548
  %90 = icmp eq i8* %88, null, !dbg !4119
  br i1 %90, label %210, label %91, !dbg !4120

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 4, metadata !4107, metadata !DIExpression()), !dbg !4110
  %92 = icmp sgt i32 %85, -1, !dbg !4114
  br i1 %92, label %100, label %93, !dbg !4114

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !4114
  store i32 %94, i32* %8, align 8, !dbg !4114
  %95 = icmp ult i32 %85, -7, !dbg !4114
  br i1 %95, label %96, label %100, !dbg !4114

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !4114
  %98 = sext i32 %85 to i64, !dbg !4114
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !4114
  br label %104, !dbg !4114

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !4114
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !4114
  store i8* %103, i8** %10, align 8, !dbg !4114
  br label %104, !dbg !4114

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !4114
  %108 = load i8*, i8** %107, align 8, !dbg !4114
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4117
  store i8* %108, i8** %109, align 8, !dbg !4118, !tbaa !548
  %110 = icmp eq i8* %108, null, !dbg !4119
  br i1 %110, label %210, label %111, !dbg !4120

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 5, metadata !4107, metadata !DIExpression()), !dbg !4110
  %112 = icmp sgt i32 %105, -1, !dbg !4114
  br i1 %112, label %120, label %113, !dbg !4114

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !4114
  store i32 %114, i32* %8, align 8, !dbg !4114
  %115 = icmp ult i32 %105, -7, !dbg !4114
  br i1 %115, label %116, label %120, !dbg !4114

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !4114
  %118 = sext i32 %105 to i64, !dbg !4114
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !4114
  br label %124, !dbg !4114

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !4114
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !4114
  store i8* %123, i8** %10, align 8, !dbg !4114
  br label %124, !dbg !4114

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !4114
  %128 = load i8*, i8** %127, align 8, !dbg !4114
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4117
  store i8* %128, i8** %129, align 8, !dbg !4118, !tbaa !548
  %130 = icmp eq i8* %128, null, !dbg !4119
  br i1 %130, label %210, label %131, !dbg !4120

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 6, metadata !4107, metadata !DIExpression()), !dbg !4110
  %132 = icmp sgt i32 %125, -1, !dbg !4114
  br i1 %132, label %140, label %133, !dbg !4114

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !4114
  store i32 %134, i32* %8, align 8, !dbg !4114
  %135 = icmp ult i32 %125, -7, !dbg !4114
  br i1 %135, label %136, label %140, !dbg !4114

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !4114
  %138 = sext i32 %125 to i64, !dbg !4114
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !4114
  br label %144, !dbg !4114

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !4114
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !4114
  store i8* %143, i8** %10, align 8, !dbg !4114
  br label %144, !dbg !4114

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !4114
  %148 = load i8*, i8** %147, align 8, !dbg !4114
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4117
  store i8* %148, i8** %149, align 8, !dbg !4118, !tbaa !548
  %150 = icmp eq i8* %148, null, !dbg !4119
  br i1 %150, label %210, label %151, !dbg !4120

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 7, metadata !4107, metadata !DIExpression()), !dbg !4110
  %152 = icmp sgt i32 %145, -1, !dbg !4114
  br i1 %152, label %160, label %153, !dbg !4114

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !4114
  store i32 %154, i32* %8, align 8, !dbg !4114
  %155 = icmp ult i32 %145, -7, !dbg !4114
  br i1 %155, label %156, label %160, !dbg !4114

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !4114
  %158 = sext i32 %145 to i64, !dbg !4114
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !4114
  br label %164, !dbg !4114

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !4114
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !4114
  store i8* %163, i8** %10, align 8, !dbg !4114
  br label %164, !dbg !4114

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !4114
  %168 = load i8*, i8** %167, align 8, !dbg !4114
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4117
  store i8* %168, i8** %169, align 8, !dbg !4118, !tbaa !548
  %170 = icmp eq i8* %168, null, !dbg !4119
  br i1 %170, label %210, label %171, !dbg !4120

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 8, metadata !4107, metadata !DIExpression()), !dbg !4110
  %172 = icmp sgt i32 %165, -1, !dbg !4114
  br i1 %172, label %180, label %173, !dbg !4114

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !4114
  store i32 %174, i32* %8, align 8, !dbg !4114
  %175 = icmp ult i32 %165, -7, !dbg !4114
  br i1 %175, label %176, label %180, !dbg !4114

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !4114
  %178 = sext i32 %165 to i64, !dbg !4114
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !4114
  br label %184, !dbg !4114

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !4114
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !4114
  store i8* %183, i8** %10, align 8, !dbg !4114
  br label %184, !dbg !4114

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !4114
  %188 = load i8*, i8** %187, align 8, !dbg !4114
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4117
  store i8* %188, i8** %189, align 8, !dbg !4118, !tbaa !548
  %190 = icmp eq i8* %188, null, !dbg !4119
  br i1 %190, label %210, label %191, !dbg !4120

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !4107, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 9, metadata !4107, metadata !DIExpression()), !dbg !4110
  %192 = icmp sgt i32 %185, -1, !dbg !4114
  br i1 %192, label %200, label %193, !dbg !4114

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !4114
  store i32 %194, i32* %8, align 8, !dbg !4114
  %195 = icmp ult i32 %185, -7, !dbg !4114
  br i1 %195, label %196, label %200, !dbg !4114

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !4114
  %198 = sext i32 %185 to i64, !dbg !4114
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !4114
  br label %203, !dbg !4114

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !4114
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !4114
  store i8* %202, i8** %10, align 8, !dbg !4114
  br label %203, !dbg !4114

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !4114
  %206 = load i8*, i8** %205, align 8, !dbg !4114
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4117
  store i8* %206, i8** %207, align 8, !dbg !4118, !tbaa !548
  %208 = icmp eq i8* %206, null, !dbg !4119
  %209 = select i1 %208, i64 9, i64 10, !dbg !4120
  br label %210, !dbg !4120

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !4121
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !4122
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !4123
  ret void, !dbg !4123
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !4124 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4128, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i8* %1, metadata !4129, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i8* %2, metadata !4130, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i8* %3, metadata !4131, metadata !DIExpression()), !dbg !4133
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !4134
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !4134
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !4132, metadata !DIExpression()), !dbg !4135
  call void @llvm.va_start(i8* nonnull %7), !dbg !4136
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !4137
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !4137
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !4137, !tbaa.struct !1803
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !4137
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !4137
  call void @llvm.va_end(i8* nonnull %7), !dbg !4138
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !4139
  ret void, !dbg !4139
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !4140 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4141, !tbaa !548
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.149, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4141
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.166, i64 0, i64 0), i32 noundef 5) #35, !dbg !4142
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.167, i64 0, i64 0)) #35, !dbg !4142
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.168, i64 0, i64 0), i32 noundef 5) #35, !dbg !4143
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.170, i64 0, i64 0)) #35, !dbg !4143
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.171, i64 0, i64 0), i32 noundef 5) #35, !dbg !4144
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.172, i64 0, i64 0)) #35, !dbg !4144
  ret void, !dbg !4145
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4151, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %1, metadata !4152, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %2, metadata !4153, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()) #35, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %1, metadata !4158, metadata !DIExpression()) #35, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %2, metadata !4159, metadata !DIExpression()) #35, !dbg !4160
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !4162
  call void @llvm.dbg.value(metadata i8* %4, metadata !4163, metadata !DIExpression()) #35, !dbg !4168
  %5 = icmp eq i8* %4, null, !dbg !4170
  br i1 %5, label %6, label %7, !dbg !4172

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !4173
  unreachable, !dbg !4173

7:                                                ; preds = %3
  ret i8* %4, !dbg !4174
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4156 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i64 %1, metadata !4158, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i64 %2, metadata !4159, metadata !DIExpression()), !dbg !4175
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !4176
  call void @llvm.dbg.value(metadata i8* %4, metadata !4163, metadata !DIExpression()) #35, !dbg !4177
  %5 = icmp eq i8* %4, null, !dbg !4179
  br i1 %5, label %6, label %7, !dbg !4180

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !4181
  unreachable, !dbg !4181

7:                                                ; preds = %3
  ret i8* %4, !dbg !4182
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4183 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4187, metadata !DIExpression()), !dbg !4188
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !4189
  call void @llvm.dbg.value(metadata i8* %2, metadata !4163, metadata !DIExpression()) #35, !dbg !4190
  %3 = icmp eq i8* %2, null, !dbg !4192
  br i1 %3, label %4, label %5, !dbg !4193

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4194
  unreachable, !dbg !4194

5:                                                ; preds = %1
  ret i8* %2, !dbg !4195
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4196 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4200, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()) #35, !dbg !4206
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !4208
  call void @llvm.dbg.value(metadata i8* %2, metadata !4163, metadata !DIExpression()) #35, !dbg !4209
  %3 = icmp eq i8* %2, null, !dbg !4211
  br i1 %3, label %4, label %5, !dbg !4212

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4213
  unreachable, !dbg !4213

5:                                                ; preds = %1
  ret i8* %2, !dbg !4214
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4215 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %0, metadata !4187, metadata !DIExpression()) #35, !dbg !4221
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !4223
  call void @llvm.dbg.value(metadata i8* %2, metadata !4163, metadata !DIExpression()) #35, !dbg !4224
  %3 = icmp eq i8* %2, null, !dbg !4226
  br i1 %3, label %4, label %5, !dbg !4227

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4228
  unreachable, !dbg !4228

5:                                                ; preds = %1
  ret i8* %2, !dbg !4229
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4232, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %1, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()) #35, !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()) #35, !dbg !4239
  %3 = icmp eq i64 %1, 0, !dbg !4241
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4241
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %5, metadata !4163, metadata !DIExpression()) #35, !dbg !4243
  %6 = icmp eq i8* %5, null, !dbg !4245
  br i1 %6, label %7, label %8, !dbg !4246

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4247
  unreachable, !dbg !4247

8:                                                ; preds = %2
  ret i8* %5, !dbg !4248
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4249 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4253, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %1, metadata !4254, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()) #35, !dbg !4260
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()) #35, !dbg !4260
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()) #35, !dbg !4262
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()) #35, !dbg !4262
  %3 = icmp eq i64 %1, 0, !dbg !4264
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4264
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %5, metadata !4163, metadata !DIExpression()) #35, !dbg !4266
  %6 = icmp eq i8* %5, null, !dbg !4268
  br i1 %6, label %7, label %8, !dbg !4269

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4270
  unreachable, !dbg !4270

8:                                                ; preds = %2
  ret i8* %5, !dbg !4271
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4276, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %1, metadata !4277, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %2, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i8* %0, metadata !4280, metadata !DIExpression()) #35, !dbg !4285
  call void @llvm.dbg.value(metadata i64 %1, metadata !4283, metadata !DIExpression()) #35, !dbg !4285
  call void @llvm.dbg.value(metadata i64 %2, metadata !4284, metadata !DIExpression()) #35, !dbg !4285
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !4287
  call void @llvm.dbg.value(metadata i8* %4, metadata !4163, metadata !DIExpression()) #35, !dbg !4288
  %5 = icmp eq i8* %4, null, !dbg !4290
  br i1 %5, label %6, label %7, !dbg !4291

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !4292
  unreachable, !dbg !4292

7:                                                ; preds = %3
  ret i8* %4, !dbg !4293
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4294 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i8* null, metadata !4155, metadata !DIExpression()) #35, !dbg !4301
  call void @llvm.dbg.value(metadata i64 %0, metadata !4158, metadata !DIExpression()) #35, !dbg !4301
  call void @llvm.dbg.value(metadata i64 %1, metadata !4159, metadata !DIExpression()) #35, !dbg !4301
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !4303
  call void @llvm.dbg.value(metadata i8* %3, metadata !4163, metadata !DIExpression()) #35, !dbg !4304
  %4 = icmp eq i8* %3, null, !dbg !4306
  br i1 %4, label %5, label %6, !dbg !4307

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4308
  unreachable, !dbg !4308

6:                                                ; preds = %2
  ret i8* %3, !dbg !4309
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4310 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4314, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %1, metadata !4315, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i8* null, metadata !4276, metadata !DIExpression()) #35, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %0, metadata !4277, metadata !DIExpression()) #35, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4278, metadata !DIExpression()) #35, !dbg !4317
  call void @llvm.dbg.value(metadata i8* null, metadata !4280, metadata !DIExpression()) #35, !dbg !4319
  call void @llvm.dbg.value(metadata i64 %0, metadata !4283, metadata !DIExpression()) #35, !dbg !4319
  call void @llvm.dbg.value(metadata i64 %1, metadata !4284, metadata !DIExpression()) #35, !dbg !4319
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !4321
  call void @llvm.dbg.value(metadata i8* %3, metadata !4163, metadata !DIExpression()) #35, !dbg !4322
  %4 = icmp eq i8* %3, null, !dbg !4324
  br i1 %4, label %5, label %6, !dbg !4325

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4326
  unreachable, !dbg !4326

6:                                                ; preds = %2
  ret i8* %3, !dbg !4327
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !4328 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4332, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64* %1, metadata !4333, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i8* %0, metadata !480, metadata !DIExpression()) #35, !dbg !4335
  call void @llvm.dbg.value(metadata i64* %1, metadata !481, metadata !DIExpression()) #35, !dbg !4335
  call void @llvm.dbg.value(metadata i64 1, metadata !482, metadata !DIExpression()) #35, !dbg !4335
  %3 = load i64, i64* %1, align 8, !dbg !4337, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %3, metadata !483, metadata !DIExpression()) #35, !dbg !4335
  %4 = icmp eq i8* %0, null, !dbg !4338
  br i1 %4, label %5, label %8, !dbg !4340

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4341
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4344
  br label %15, !dbg !4344

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4345
  %10 = add nuw i64 %9, 1, !dbg !4345
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !4345
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4345
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4345
  call void @llvm.dbg.value(metadata i64 %13, metadata !483, metadata !DIExpression()) #35, !dbg !4335
  br i1 %12, label %14, label %15, !dbg !4348

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !4349
  unreachable, !dbg !4349

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4335
  call void @llvm.dbg.value(metadata i64 %16, metadata !483, metadata !DIExpression()) #35, !dbg !4335
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()) #35, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %16, metadata !4158, metadata !DIExpression()) #35, !dbg !4350
  call void @llvm.dbg.value(metadata i64 1, metadata !4159, metadata !DIExpression()) #35, !dbg !4350
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !4352
  call void @llvm.dbg.value(metadata i8* %17, metadata !4163, metadata !DIExpression()) #35, !dbg !4353
  %18 = icmp eq i8* %17, null, !dbg !4355
  br i1 %18, label %19, label %20, !dbg !4356

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !4357
  unreachable, !dbg !4357

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !480, metadata !DIExpression()) #35, !dbg !4335
  store i64 %16, i64* %1, align 8, !dbg !4358, !tbaa !822
  ret i8* %17, !dbg !4359
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !480, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64* %1, metadata !481, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 %2, metadata !482, metadata !DIExpression()), !dbg !4360
  %4 = load i64, i64* %1, align 8, !dbg !4361, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %4, metadata !483, metadata !DIExpression()), !dbg !4360
  %5 = icmp eq i8* %0, null, !dbg !4362
  br i1 %5, label %6, label %13, !dbg !4363

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4364
  br i1 %7, label %8, label %20, !dbg !4365

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4366
  call void @llvm.dbg.value(metadata i64 %9, metadata !483, metadata !DIExpression()), !dbg !4360
  %10 = icmp ugt i64 %2, 128, !dbg !4368
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4369
  call void @llvm.dbg.value(metadata i64 %12, metadata !483, metadata !DIExpression()), !dbg !4360
  br label %20, !dbg !4370

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4371
  %15 = add nuw i64 %14, 1, !dbg !4371
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4371
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4371
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4371
  call void @llvm.dbg.value(metadata i64 %18, metadata !483, metadata !DIExpression()), !dbg !4360
  br i1 %17, label %19, label %20, !dbg !4372

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !4373
  unreachable, !dbg !4373

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4360
  call void @llvm.dbg.value(metadata i64 %21, metadata !483, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()) #35, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %21, metadata !4158, metadata !DIExpression()) #35, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %2, metadata !4159, metadata !DIExpression()) #35, !dbg !4374
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !4376
  call void @llvm.dbg.value(metadata i8* %22, metadata !4163, metadata !DIExpression()) #35, !dbg !4377
  %23 = icmp eq i8* %22, null, !dbg !4379
  br i1 %23, label %24, label %25, !dbg !4380

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !4381
  unreachable, !dbg !4381

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !480, metadata !DIExpression()), !dbg !4360
  store i64 %21, i64* %1, align 8, !dbg !4382, !tbaa !822
  ret i8* %22, !dbg !4383
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !487 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !492, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64* %1, metadata !493, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %2, metadata !494, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %3, metadata !495, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %4, metadata !496, metadata !DIExpression()), !dbg !4384
  %6 = load i64, i64* %1, align 8, !dbg !4385, !tbaa !822
  call void @llvm.dbg.value(metadata i64 %6, metadata !497, metadata !DIExpression()), !dbg !4384
  %7 = ashr i64 %6, 1, !dbg !4386
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4386
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4386
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4386
  call void @llvm.dbg.value(metadata i64 %10, metadata !498, metadata !DIExpression()), !dbg !4384
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4388
  call void @llvm.dbg.value(metadata i64 %11, metadata !498, metadata !DIExpression()), !dbg !4384
  %12 = icmp sgt i64 %3, -1, !dbg !4389
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4391
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %15, metadata !498, metadata !DIExpression()), !dbg !4384
  %16 = icmp slt i64 %4, 0, !dbg !4392
  br i1 %16, label %17, label %30, !dbg !4392

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4392
  br i1 %18, label %19, label %24, !dbg !4392

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4392
  %21 = udiv i64 9223372036854775807, %20, !dbg !4392
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4392
  br i1 %23, label %46, label %43, !dbg !4392

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4392
  br i1 %25, label %43, label %26, !dbg !4392

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4392
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4392
  %29 = icmp ult i64 %28, %15, !dbg !4392
  br i1 %29, label %46, label %43, !dbg !4392

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4392
  br i1 %31, label %43, label %32, !dbg !4392

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4392
  br i1 %33, label %34, label %40, !dbg !4392

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4392
  br i1 %35, label %43, label %36, !dbg !4392

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4392
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4392
  %39 = icmp ult i64 %38, %4, !dbg !4392
  br i1 %39, label %46, label %43, !dbg !4392

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4392
  %42 = icmp ult i64 %41, %15, !dbg !4392
  br i1 %42, label %46, label %43, !dbg !4392

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !499, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4384
  %44 = mul i64 %15, %4, !dbg !4392
  call void @llvm.dbg.value(metadata i64 %44, metadata !499, metadata !DIExpression()), !dbg !4384
  %45 = icmp slt i64 %44, 128, !dbg !4392
  br i1 %45, label %46, label %52, !dbg !4392

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !500, metadata !DIExpression()), !dbg !4384
  %48 = sdiv i64 %47, %4, !dbg !4393
  call void @llvm.dbg.value(metadata i64 %48, metadata !498, metadata !DIExpression()), !dbg !4384
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %51, metadata !499, metadata !DIExpression()), !dbg !4384
  br label %52, !dbg !4397

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4384
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4384
  call void @llvm.dbg.value(metadata i64 %54, metadata !499, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %53, metadata !498, metadata !DIExpression()), !dbg !4384
  %55 = icmp eq i8* %0, null, !dbg !4398
  br i1 %55, label %56, label %57, !dbg !4400

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4401, !tbaa !822
  br label %57, !dbg !4402

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4403
  %59 = icmp slt i64 %58, %2, !dbg !4405
  br i1 %59, label %60, label %97, !dbg !4406

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4407
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4407
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %63, metadata !498, metadata !DIExpression()), !dbg !4384
  br i1 %62, label %96, label %64, !dbg !4408

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4409
  br i1 %66, label %96, label %67, !dbg !4409

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4410

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4410
  br i1 %69, label %70, label %75, !dbg !4410

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4410
  %72 = udiv i64 9223372036854775807, %71, !dbg !4410
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4410
  br i1 %74, label %96, label %94, !dbg !4410

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4410
  br i1 %76, label %94, label %77, !dbg !4410

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4410
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4410
  %80 = icmp ult i64 %79, %63, !dbg !4410
  br i1 %80, label %96, label %94, !dbg !4410

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4410
  br i1 %82, label %94, label %83, !dbg !4410

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4410
  br i1 %84, label %85, label %91, !dbg !4410

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4410
  br i1 %86, label %94, label %87, !dbg !4410

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4410
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4410
  %90 = icmp ult i64 %89, %4, !dbg !4410
  br i1 %90, label %96, label %94, !dbg !4410

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4410
  %93 = icmp ult i64 %92, %63, !dbg !4410
  br i1 %93, label %96, label %94, !dbg !4410

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !499, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4384
  %95 = mul i64 %63, %4, !dbg !4410
  call void @llvm.dbg.value(metadata i64 %95, metadata !499, metadata !DIExpression()), !dbg !4384
  br label %97, !dbg !4411

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !4412
  unreachable, !dbg !4412

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4384
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4384
  call void @llvm.dbg.value(metadata i64 %99, metadata !499, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %98, metadata !498, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i8* %0, metadata !4232, metadata !DIExpression()) #35, !dbg !4413
  call void @llvm.dbg.value(metadata i64 %99, metadata !4233, metadata !DIExpression()) #35, !dbg !4413
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()) #35, !dbg !4415
  call void @llvm.dbg.value(metadata i64 %99, metadata !4238, metadata !DIExpression()) #35, !dbg !4415
  %100 = icmp eq i64 %99, 0, !dbg !4417
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4417
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !4418
  call void @llvm.dbg.value(metadata i8* %102, metadata !4163, metadata !DIExpression()) #35, !dbg !4419
  %103 = icmp eq i8* %102, null, !dbg !4421
  br i1 %103, label %104, label %105, !dbg !4422

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !4423
  unreachable, !dbg !4423

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !492, metadata !DIExpression()), !dbg !4384
  store i64 %98, i64* %1, align 8, !dbg !4424, !tbaa !822
  ret i8* %102, !dbg !4425
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4426 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4428, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %0, metadata !4430, metadata !DIExpression()) #35, !dbg !4434
  call void @llvm.dbg.value(metadata i64 1, metadata !4433, metadata !DIExpression()) #35, !dbg !4434
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4436
  call void @llvm.dbg.value(metadata i8* %2, metadata !4163, metadata !DIExpression()) #35, !dbg !4437
  %3 = icmp eq i8* %2, null, !dbg !4439
  br i1 %3, label %4, label %5, !dbg !4440

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4441
  unreachable, !dbg !4441

5:                                                ; preds = %1
  ret i8* %2, !dbg !4442
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4431 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4430, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %1, metadata !4433, metadata !DIExpression()), !dbg !4443
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4444
  call void @llvm.dbg.value(metadata i8* %3, metadata !4163, metadata !DIExpression()) #35, !dbg !4445
  %4 = icmp eq i8* %3, null, !dbg !4447
  br i1 %4, label %5, label %6, !dbg !4448

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4449
  unreachable, !dbg !4449

6:                                                ; preds = %2
  ret i8* %3, !dbg !4450
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4451 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()) #35, !dbg !4459
  call void @llvm.dbg.value(metadata i64 1, metadata !4458, metadata !DIExpression()) #35, !dbg !4459
  call void @llvm.dbg.value(metadata i64 %0, metadata !4461, metadata !DIExpression()) #35, !dbg !4465
  call void @llvm.dbg.value(metadata i64 1, metadata !4464, metadata !DIExpression()) #35, !dbg !4465
  call void @llvm.dbg.value(metadata i64 %0, metadata !4461, metadata !DIExpression()) #35, !dbg !4465
  call void @llvm.dbg.value(metadata i64 1, metadata !4464, metadata !DIExpression()) #35, !dbg !4465
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4467
  call void @llvm.dbg.value(metadata i8* %2, metadata !4163, metadata !DIExpression()) #35, !dbg !4468
  %3 = icmp eq i8* %2, null, !dbg !4470
  br i1 %3, label %4, label %5, !dbg !4471

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4472
  unreachable, !dbg !4472

5:                                                ; preds = %1
  ret i8* %2, !dbg !4473
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4456 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %1, metadata !4458, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %0, metadata !4461, metadata !DIExpression()) #35, !dbg !4475
  call void @llvm.dbg.value(metadata i64 %1, metadata !4464, metadata !DIExpression()) #35, !dbg !4475
  call void @llvm.dbg.value(metadata i64 %0, metadata !4461, metadata !DIExpression()) #35, !dbg !4475
  call void @llvm.dbg.value(metadata i64 %1, metadata !4464, metadata !DIExpression()) #35, !dbg !4475
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4477
  call void @llvm.dbg.value(metadata i8* %3, metadata !4163, metadata !DIExpression()) #35, !dbg !4478
  %4 = icmp eq i8* %3, null, !dbg !4480
  br i1 %4, label %5, label %6, !dbg !4481

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4482
  unreachable, !dbg !4482

6:                                                ; preds = %2
  ret i8* %3, !dbg !4483
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4484 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4488, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %1, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %1, metadata !4187, metadata !DIExpression()) #35, !dbg !4491
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4493
  call void @llvm.dbg.value(metadata i8* %3, metadata !4163, metadata !DIExpression()) #35, !dbg !4494
  %4 = icmp eq i8* %3, null, !dbg !4496
  br i1 %4, label %5, label %6, !dbg !4497

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4498
  unreachable, !dbg !4498

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4499, metadata !DIExpression()) #35, !dbg !4504
  call void @llvm.dbg.value(metadata i8* %0, metadata !4502, metadata !DIExpression()) #35, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()) #35, !dbg !4504
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4506
  ret i8* %3, !dbg !4507
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4508 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4512, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %1, metadata !4513, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()) #35, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %1, metadata !4202, metadata !DIExpression()) #35, !dbg !4517
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4519
  call void @llvm.dbg.value(metadata i8* %3, metadata !4163, metadata !DIExpression()) #35, !dbg !4520
  %4 = icmp eq i8* %3, null, !dbg !4522
  br i1 %4, label %5, label %6, !dbg !4523

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4524
  unreachable, !dbg !4524

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4499, metadata !DIExpression()) #35, !dbg !4525
  call void @llvm.dbg.value(metadata i8* %0, metadata !4502, metadata !DIExpression()) #35, !dbg !4525
  call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()) #35, !dbg !4525
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4527
  ret i8* %3, !dbg !4528
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4533, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i64 %1, metadata !4534, metadata !DIExpression()), !dbg !4536
  %3 = add nsw i64 %1, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i64 %3, metadata !4200, metadata !DIExpression()) #35, !dbg !4538
  call void @llvm.dbg.value(metadata i64 %3, metadata !4202, metadata !DIExpression()) #35, !dbg !4540
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4542
  call void @llvm.dbg.value(metadata i8* %4, metadata !4163, metadata !DIExpression()) #35, !dbg !4543
  %5 = icmp eq i8* %4, null, !dbg !4545
  br i1 %5, label %6, label %7, !dbg !4546

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4547
  unreachable, !dbg !4547

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4535, metadata !DIExpression()), !dbg !4536
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4548
  store i8 0, i8* %8, align 1, !dbg !4549, !tbaa !660
  call void @llvm.dbg.value(metadata i8* %4, metadata !4499, metadata !DIExpression()) #35, !dbg !4550
  call void @llvm.dbg.value(metadata i8* %0, metadata !4502, metadata !DIExpression()) #35, !dbg !4550
  call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()) #35, !dbg !4550
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4552
  ret i8* %4, !dbg !4553
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4554 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4556, metadata !DIExpression()), !dbg !4557
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !4558
  %3 = add i64 %2, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i8* %0, metadata !4488, metadata !DIExpression()) #35, !dbg !4560
  call void @llvm.dbg.value(metadata i64 %3, metadata !4489, metadata !DIExpression()) #35, !dbg !4560
  call void @llvm.dbg.value(metadata i64 %3, metadata !4187, metadata !DIExpression()) #35, !dbg !4562
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4564
  call void @llvm.dbg.value(metadata i8* %4, metadata !4163, metadata !DIExpression()) #35, !dbg !4565
  %5 = icmp eq i8* %4, null, !dbg !4567
  br i1 %5, label %6, label %7, !dbg !4568

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4569
  unreachable, !dbg !4569

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4499, metadata !DIExpression()) #35, !dbg !4570
  call void @llvm.dbg.value(metadata i8* %0, metadata !4502, metadata !DIExpression()) #35, !dbg !4570
  call void @llvm.dbg.value(metadata i64 %3, metadata !4503, metadata !DIExpression()) #35, !dbg !4570
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !4572
  ret i8* %4, !dbg !4573
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4574 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4579, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %1, metadata !4576, metadata !DIExpression()), !dbg !4580
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.187, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.188, i64 0, i64 0), i32 noundef 5) #35, !dbg !4579
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.189, i64 0, i64 0), i8* noundef %2) #35, !dbg !4579
  %3 = icmp eq i32 %1, 0, !dbg !4579
  tail call void @llvm.assume(i1 %3), !dbg !4579
  tail call void @abort() #37, !dbg !4581
  unreachable, !dbg !4581
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4582 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4620, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i8* %1, metadata !4621, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i32 0, metadata !4622, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i32 0, metadata !4623, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i8 0, metadata !4624, metadata !DIExpression()), !dbg !4644
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4645
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #35, !dbg !4645
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4625, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i8* %1, metadata !4629, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8* %4, metadata !4631, metadata !DIExpression()), !dbg !4647
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4648

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4647
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4649
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4644
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4650
  call void @llvm.dbg.value(metadata i32 %11, metadata !4622, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i32 %10, metadata !4623, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i8* %9, metadata !4631, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8* %8, metadata !4629, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8 poison, metadata !4624, metadata !DIExpression()), !dbg !4644
  %12 = load i8, i8* %8, align 1, !dbg !4651, !tbaa !660
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4652

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4622, metadata !DIExpression()), !dbg !4644
  %14 = icmp ult i8* %9, %5, !dbg !4653
  br i1 %14, label %15, label %47, !dbg !4656

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4657
  call void @llvm.dbg.value(metadata i8* %16, metadata !4631, metadata !DIExpression()), !dbg !4647
  store i8 114, i8* %9, align 1, !dbg !4658, !tbaa !660
  br label %47, !dbg !4659

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4622, metadata !DIExpression()), !dbg !4644
  %18 = or i32 %10, 576, !dbg !4660
  call void @llvm.dbg.value(metadata i32 %18, metadata !4623, metadata !DIExpression()), !dbg !4644
  %19 = icmp ult i8* %9, %5, !dbg !4661
  br i1 %19, label %20, label %47, !dbg !4663

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4664
  call void @llvm.dbg.value(metadata i8* %21, metadata !4631, metadata !DIExpression()), !dbg !4647
  store i8 119, i8* %9, align 1, !dbg !4665, !tbaa !660
  br label %47, !dbg !4666

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4622, metadata !DIExpression()), !dbg !4644
  %23 = or i32 %10, 1088, !dbg !4667
  call void @llvm.dbg.value(metadata i32 %23, metadata !4623, metadata !DIExpression()), !dbg !4644
  %24 = icmp ult i8* %9, %5, !dbg !4668
  br i1 %24, label %25, label %47, !dbg !4670

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4671
  call void @llvm.dbg.value(metadata i8* %26, metadata !4631, metadata !DIExpression()), !dbg !4647
  store i8 97, i8* %9, align 1, !dbg !4672, !tbaa !660
  br label %47, !dbg !4673

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4623, metadata !DIExpression()), !dbg !4644
  %28 = icmp ult i8* %9, %5, !dbg !4674
  br i1 %28, label %29, label %47, !dbg !4676

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4677
  call void @llvm.dbg.value(metadata i8* %30, metadata !4631, metadata !DIExpression()), !dbg !4647
  store i8 98, i8* %9, align 1, !dbg !4678, !tbaa !660
  br label %47, !dbg !4679

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4622, metadata !DIExpression()), !dbg !4644
  %32 = icmp ult i8* %9, %5, !dbg !4680
  br i1 %32, label %33, label %47, !dbg !4682

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4683
  call void @llvm.dbg.value(metadata i8* %34, metadata !4631, metadata !DIExpression()), !dbg !4647
  store i8 43, i8* %9, align 1, !dbg !4684, !tbaa !660
  br label %47, !dbg !4685

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4686
  call void @llvm.dbg.value(metadata i32 %36, metadata !4623, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i8 1, metadata !4624, metadata !DIExpression()), !dbg !4644
  br label %47, !dbg !4687

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4688
  call void @llvm.dbg.value(metadata i32 %38, metadata !4623, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i8 1, metadata !4624, metadata !DIExpression()), !dbg !4644
  br label %47, !dbg !4689

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #36, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %40, metadata !4632, metadata !DIExpression()), !dbg !4691
  %41 = ptrtoint i8* %5 to i64, !dbg !4692
  %42 = ptrtoint i8* %9 to i64, !dbg !4692
  %43 = sub i64 %41, %42, !dbg !4692
  %44 = icmp ugt i64 %40, %43, !dbg !4694
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4695
  call void @llvm.dbg.value(metadata i64 %45, metadata !4632, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i8* %9, metadata !4696, metadata !DIExpression()) #35, !dbg !4701
  call void @llvm.dbg.value(metadata i8* %8, metadata !4699, metadata !DIExpression()) #35, !dbg !4701
  call void @llvm.dbg.value(metadata i64 %45, metadata !4700, metadata !DIExpression()) #35, !dbg !4701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #35, !dbg !4703
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4704
  call void @llvm.dbg.value(metadata i8* %46, metadata !4631, metadata !DIExpression()), !dbg !4647
  br label %53, !dbg !4705

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4647
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4644
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4644
  call void @llvm.dbg.value(metadata i32 %51, metadata !4622, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i32 %50, metadata !4623, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i8* %49, metadata !4631, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8 poison, metadata !4624, metadata !DIExpression()), !dbg !4644
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4706
  call void @llvm.dbg.value(metadata i8* %52, metadata !4629, metadata !DIExpression()), !dbg !4647
  br label %6, !dbg !4707, !llvm.loop !4708

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4647
  call void @llvm.dbg.value(metadata i8* %54, metadata !4631, metadata !DIExpression()), !dbg !4647
  store i8 0, i8* %54, align 1, !dbg !4710, !tbaa !660
  br i1 %7, label %55, label %66, !dbg !4711

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4712
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #35, !dbg !4713
  call void @llvm.dbg.value(metadata i32 %57, metadata !4637, metadata !DIExpression()), !dbg !4714
  %58 = icmp slt i32 %57, 0, !dbg !4715
  br i1 %58, label %68, label %59, !dbg !4717

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #35, !dbg !4718
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4640, metadata !DIExpression()), !dbg !4714
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4719
  br i1 %61, label %62, label %68, !dbg !4720

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #38, !dbg !4721
  %64 = load i32, i32* %63, align 4, !dbg !4721, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %64, metadata !4641, metadata !DIExpression()), !dbg !4722
  %65 = call i32 @close(i32 noundef %57) #35, !dbg !4723
  store i32 %64, i32* %63, align 4, !dbg !4724, !tbaa !651
  br label %68, !dbg !4725

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4726, metadata !DIExpression()) #35, !dbg !4730
  call void @llvm.dbg.value(metadata i8* %1, metadata !4729, metadata !DIExpression()) #35, !dbg !4730
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #35, !dbg !4732
  br label %68, !dbg !4733

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4644
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #35, !dbg !4734
  ret %struct._IO_FILE* %69, !dbg !4734
}

; Function Attrs: nofree
declare !dbg !4735 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare !dbg !4738 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4741 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4742 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4780, metadata !DIExpression()), !dbg !4785
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4786
  call void @llvm.dbg.value(metadata i1 undef, metadata !4781, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4785
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4787, metadata !DIExpression()), !dbg !4790
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4792
  %4 = load i32, i32* %3, align 8, !dbg !4792, !tbaa !1156
  %5 = and i32 %4, 32, !dbg !4793
  %6 = icmp eq i32 %5, 0, !dbg !4793
  call void @llvm.dbg.value(metadata i1 %6, metadata !4783, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4785
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4794
  %8 = icmp eq i32 %7, 0, !dbg !4795
  call void @llvm.dbg.value(metadata i1 %8, metadata !4784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4785
  br i1 %6, label %9, label %19, !dbg !4796

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4798
  call void @llvm.dbg.value(metadata i1 %10, metadata !4781, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4785
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4799
  %12 = xor i1 %8, true, !dbg !4799
  %13 = sext i1 %12 to i32, !dbg !4799
  br i1 %11, label %22, label %14, !dbg !4799

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4800
  %16 = load i32, i32* %15, align 4, !dbg !4800, !tbaa !651
  %17 = icmp ne i32 %16, 9, !dbg !4801
  %18 = sext i1 %17 to i32, !dbg !4802
  br label %22, !dbg !4802

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4803

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4805
  store i32 0, i32* %21, align 4, !dbg !4807, !tbaa !651
  br label %22, !dbg !4805

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4785
  ret i32 %23, !dbg !4808
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i8* @freadptr(%struct._IO_FILE* nocapture noundef readonly %0, i64* nocapture noundef writeonly %1) local_unnamed_addr #24 !dbg !4809 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4847, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i64* %1, metadata !4848, metadata !DIExpression()), !dbg !4850
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4851
  %4 = load i8*, i8** %3, align 8, !dbg !4851, !tbaa !964
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4853
  %6 = load i8*, i8** %5, align 8, !dbg !4853, !tbaa !2289
  %7 = icmp ugt i8* %4, %6, !dbg !4854
  br i1 %7, label %18, label %8, !dbg !4855

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4856
  %10 = load i8*, i8** %9, align 8, !dbg !4856, !tbaa !948
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4857
  %12 = load i8*, i8** %11, align 8, !dbg !4857, !tbaa !946
  %13 = ptrtoint i8* %10 to i64, !dbg !4858
  %14 = ptrtoint i8* %12 to i64, !dbg !4858
  %15 = sub i64 %13, %14, !dbg !4858
  call void @llvm.dbg.value(metadata i64 %15, metadata !4849, metadata !DIExpression()), !dbg !4850
  %16 = icmp eq i64 %15, 0, !dbg !4859
  br i1 %16, label %18, label %17, !dbg !4861

17:                                               ; preds = %8
  store i64 %15, i64* %1, align 8, !dbg !4862, !tbaa !822
  br label %18, !dbg !4863

18:                                               ; preds = %8, %2, %17
  %19 = phi i8* [ %12, %17 ], [ null, %2 ], [ null, %8 ], !dbg !4850
  ret i8* %19, !dbg !4864
}

; Function Attrs: nounwind uwtable
define dso_local i32 @freadseek(%struct._IO_FILE* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4865 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4903, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %1, metadata !4904, metadata !DIExpression()), !dbg !4921
  %5 = icmp eq i64 %1, 0, !dbg !4922
  br i1 %5, label %70, label %6, !dbg !4924

6:                                                ; preds = %2
  %7 = tail call i64 @freadahead(%struct._IO_FILE* noundef %0) #36, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %7, metadata !4905, metadata !DIExpression()), !dbg !4921
  %8 = bitcast i64* %3 to i8*
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  br label %10, !dbg !4926

10:                                               ; preds = %42, %6
  %11 = phi i64 [ %7, %6 ], [ %43, %42 ], !dbg !4927
  %12 = phi i64 [ %1, %6 ], [ %45, %42 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !4904, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %11, metadata !4905, metadata !DIExpression()), !dbg !4921
  %13 = icmp eq i64 %11, 0, !dbg !4928
  br i1 %13, label %46, label %14, !dbg !4926

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #35, !dbg !4929
  call void @llvm.dbg.value(metadata i64* %3, metadata !4906, metadata !DIExpression(DW_OP_deref)), !dbg !4930
  %15 = call i8* @freadptr(%struct._IO_FILE* noundef %0, i64* noundef nonnull %3) #35, !dbg !4931
  %16 = icmp ne i8* %15, null, !dbg !4932
  %17 = load i64, i64* %3, align 8
  call void @llvm.dbg.value(metadata i64 %17, metadata !4906, metadata !DIExpression()), !dbg !4930
  %18 = icmp ne i64 %17, 0
  %19 = select i1 %16, i1 %18, i1 false, !dbg !4933
  br i1 %19, label %20, label %30, !dbg !4933

20:                                               ; preds = %14
  %21 = icmp ult i64 %17, %12, !dbg !4934
  %22 = select i1 %21, i64 %17, i64 %12, !dbg !4935
  call void @llvm.dbg.value(metadata i64 %22, metadata !4908, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4937, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i64 %22, metadata !4942, metadata !DIExpression()), !dbg !4943
  %23 = load i8*, i8** %9, align 8, !dbg !4945, !tbaa !946
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !4945
  store i8* %24, i8** %9, align 8, !dbg !4945, !tbaa !946
  %25 = sub i64 %12, %22, !dbg !4946
  call void @llvm.dbg.value(metadata i64 %25, metadata !4904, metadata !DIExpression()), !dbg !4921
  %26 = icmp eq i64 %25, 0, !dbg !4947
  br i1 %26, label %41, label %27, !dbg !4949

27:                                               ; preds = %20
  %28 = sub i64 %11, %22, !dbg !4950
  call void @llvm.dbg.value(metadata i64 %28, metadata !4905, metadata !DIExpression()), !dbg !4921
  %29 = icmp eq i64 %28, 0, !dbg !4951
  br i1 %29, label %42, label %30

30:                                               ; preds = %27, %14
  %31 = phi i64 [ %28, %27 ], [ %11, %14 ], !dbg !4927
  %32 = phi i64 [ %25, %27 ], [ %12, %14 ]
  call void @llvm.dbg.value(metadata i64 %32, metadata !4904, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %31, metadata !4905, metadata !DIExpression()), !dbg !4921
  %33 = call i32 @fgetc(%struct._IO_FILE* noundef %0), !dbg !4953
  %34 = icmp eq i32 %33, -1, !dbg !4955
  br i1 %34, label %35, label %36, !dbg !4956

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i64 %45, metadata !4904, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %43, metadata !4905, metadata !DIExpression()), !dbg !4921
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #35, !dbg !4957
  br label %66

36:                                               ; preds = %30
  %37 = add i64 %32, -1, !dbg !4958
  call void @llvm.dbg.value(metadata i64 %37, metadata !4904, metadata !DIExpression()), !dbg !4921
  %38 = icmp eq i64 %37, 0, !dbg !4959
  br i1 %38, label %41, label %39, !dbg !4961

39:                                               ; preds = %36
  %40 = add i64 %31, -1, !dbg !4962
  call void @llvm.dbg.value(metadata i64 %40, metadata !4905, metadata !DIExpression()), !dbg !4921
  br label %42, !dbg !4957

41:                                               ; preds = %36, %20
  call void @llvm.dbg.value(metadata i64 %45, metadata !4904, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %43, metadata !4905, metadata !DIExpression()), !dbg !4921
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #35, !dbg !4957
  br label %70

42:                                               ; preds = %27, %39
  %43 = phi i64 [ %40, %39 ], [ 0, %27 ], !dbg !4921
  %44 = phi i32 [ 0, %39 ], [ 3, %27 ]
  %45 = phi i64 [ %37, %39 ], [ %25, %27 ], !dbg !4930
  call void @llvm.dbg.value(metadata i64 %45, metadata !4904, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %43, metadata !4905, metadata !DIExpression()), !dbg !4921
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #35, !dbg !4957
  switch i32 %44, label %70 [
    i32 0, label %10
    i32 3, label %46
  ], !llvm.loop !4963

46:                                               ; preds = %42, %10
  %47 = phi i64 [ %45, %42 ], [ %12, %10 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !4904, metadata !DIExpression()), !dbg !4921
  %48 = call i32 @fileno(%struct._IO_FILE* noundef %0) #35, !dbg !4964
  call void @llvm.dbg.value(metadata i32 %48, metadata !4911, metadata !DIExpression()), !dbg !4921
  %49 = icmp sgt i32 %48, -1, !dbg !4965
  br i1 %49, label %50, label %55, !dbg !4966

50:                                               ; preds = %46
  %51 = call i64 @lseek(i32 noundef %48, i64 noundef 0, i32 noundef 1) #35, !dbg !4967
  %52 = icmp sgt i64 %51, -1, !dbg !4968
  br i1 %52, label %53, label %55, !dbg !4969

53:                                               ; preds = %50
  %54 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %0, i64 noundef %47, i32 noundef 1) #35, !dbg !4970
  br label %70, !dbg !4972

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  br label %57, !dbg !4973

57:                                               ; preds = %64, %55
  %58 = phi i64 [ %47, %55 ], [ %63, %64 ], !dbg !4946
  call void @llvm.dbg.value(metadata i64 %58, metadata !4904, metadata !DIExpression()), !dbg !4921
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %56) #35, !dbg !4974
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !4912, metadata !DIExpression()), !dbg !4975
  %59 = icmp ult i64 %58, 4096, !dbg !4976
  %60 = select i1 %59, i64 %58, i64 4096, !dbg !4976
  call void @llvm.dbg.value(metadata i64 %60, metadata !4919, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i8* %56, metadata !4978, metadata !DIExpression()) #35, !dbg !4988
  call void @llvm.dbg.value(metadata i64 1, metadata !4984, metadata !DIExpression()) #35, !dbg !4988
  call void @llvm.dbg.value(metadata i64 %60, metadata !4985, metadata !DIExpression()) #35, !dbg !4988
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4986, metadata !DIExpression()) #35, !dbg !4988
  call void @llvm.dbg.value(metadata i64 4096, metadata !4987, metadata !DIExpression()) #35, !dbg !4988
  %61 = call i64 @fread(i8* noundef nonnull %56, i64 noundef 1, i64 noundef %60, %struct._IO_FILE* noundef %0) #35, !dbg !4991
  %62 = icmp ult i64 %61, %60, !dbg !4993
  %63 = sub i64 %58, %60, !dbg !4994
  call void @llvm.dbg.value(metadata i64 undef, metadata !4904, metadata !DIExpression()), !dbg !4921
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %56) #35, !dbg !4995
  br i1 %62, label %66, label %64

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 %63, metadata !4904, metadata !DIExpression()), !dbg !4921
  %65 = icmp eq i64 %63, 0, !dbg !4996
  br i1 %65, label %70, label %57, !dbg !4997, !llvm.loop !4998

66:                                               ; preds = %57, %35
  call void @llvm.dbg.label(metadata !4920), !dbg !5000
  %67 = call i32 @ferror(%struct._IO_FILE* noundef %0) #35, !dbg !5001
  %68 = icmp ne i32 %67, 0, !dbg !5001
  %69 = sext i1 %68 to i32, !dbg !5003
  br label %70, !dbg !5003

70:                                               ; preds = %42, %64, %41, %53, %66, %2
  %71 = phi i32 [ 0, %2 ], [ %54, %53 ], [ %69, %66 ], [ 0, %41 ], [ 0, %64 ], [ 0, %42 ], !dbg !4921
  ret i32 %71, !dbg !5004
}

; Function Attrs: nofree nounwind
declare !dbg !5005 noundef i32 @fgetc(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: alwaysinline nobuiltin nounwind uwtable
declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #32

; Function Attrs: nofree nounwind readonly
declare !dbg !5008 noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !5009 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5014, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i8* %1, metadata !5015, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i64 %2, metadata !5016, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5017, metadata !DIExpression()), !dbg !5019
  %5 = icmp eq i8* %1, null, !dbg !5020
  %6 = select i1 %5, i32* null, i32* %0, !dbg !5022
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.200, i64 0, i64 0), i8* %1, !dbg !5022
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5022
  call void @llvm.dbg.value(metadata i64 %8, metadata !5016, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i8* %7, metadata !5015, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i32* %6, metadata !5014, metadata !DIExpression()), !dbg !5019
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !5023
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !5025
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !5017, metadata !DIExpression()), !dbg !5019
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !5026
  call void @llvm.dbg.value(metadata i64 %11, metadata !5018, metadata !DIExpression()), !dbg !5019
  %12 = icmp ult i64 %11, -3, !dbg !5027
  br i1 %12, label %13, label %18, !dbg !5029

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !5030
  %15 = icmp eq i32 %14, 0, !dbg !5030
  br i1 %15, label %16, label %30, !dbg !5031

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !5032, metadata !DIExpression()) #35, !dbg !5037
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !5039, metadata !DIExpression()) #35, !dbg !5044
  call void @llvm.dbg.value(metadata i32 0, metadata !5042, metadata !DIExpression()) #35, !dbg !5044
  call void @llvm.dbg.value(metadata i64 8, metadata !5043, metadata !DIExpression()) #35, !dbg !5044
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !5046
  store i64 0, i64* %17, align 1, !dbg !5046
  br label %30, !dbg !5047

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !5048
  br i1 %19, label %20, label %21, !dbg !5050

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !5051
  unreachable, !dbg !5051

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !5052

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !5054
  br i1 %24, label %30, label %25, !dbg !5055

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !5056
  br i1 %26, label %30, label %27, !dbg !5059

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !5060, !tbaa !660
  %29 = zext i8 %28 to i32, !dbg !5061
  store i32 %29, i32* %6, align 4, !dbg !5062, !tbaa !651
  br label %30, !dbg !5063

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !5019
  ret i64 %31, !dbg !5064
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !5065 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !5071 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5073, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i64 %1, metadata !5074, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i64 %2, metadata !5075, metadata !DIExpression()), !dbg !5077
  %4 = icmp eq i64 %2, 0, !dbg !5078
  br i1 %4, label %8, label %5, !dbg !5078

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5078
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5078
  br i1 %7, label %13, label %8, !dbg !5078

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5076, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5076, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5077
  %9 = mul i64 %2, %1, !dbg !5078
  call void @llvm.dbg.value(metadata i64 %9, metadata !5076, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i8* %0, metadata !5080, metadata !DIExpression()) #35, !dbg !5084
  call void @llvm.dbg.value(metadata i64 %9, metadata !5083, metadata !DIExpression()) #35, !dbg !5084
  %10 = icmp eq i64 %9, 0, !dbg !5086
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5086
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !5087
  br label %15, !dbg !5088

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5076, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5077
  %14 = tail call i32* @__errno_location() #38, !dbg !5089
  store i32 12, i32* %14, align 4, !dbg !5091, !tbaa !651
  br label %15, !dbg !5092

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !5077
  ret i8* %16, !dbg !5093
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @freadahead(%struct._IO_FILE* nocapture noundef readonly %0) local_unnamed_addr #14 !dbg !5094 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5132, metadata !DIExpression()), !dbg !5133
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5134
  %3 = load i8*, i8** %2, align 8, !dbg !5134, !tbaa !964
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5136
  %5 = load i8*, i8** %4, align 8, !dbg !5136, !tbaa !2289
  %6 = icmp ugt i8* %3, %5, !dbg !5137
  br i1 %6, label %30, label %7, !dbg !5138

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5139
  %9 = load i8*, i8** %8, align 8, !dbg !5139, !tbaa !948
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5140
  %11 = load i8*, i8** %10, align 8, !dbg !5140, !tbaa !946
  %12 = ptrtoint i8* %9 to i64, !dbg !5141
  %13 = ptrtoint i8* %11 to i64, !dbg !5141
  %14 = sub i64 %12, %13, !dbg !5141
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5142
  %16 = load i32, i32* %15, align 8, !dbg !5142, !tbaa !1156
  %17 = and i32 %16, 256, !dbg !5143
  %18 = icmp eq i32 %17, 0, !dbg !5143
  br i1 %18, label %27, label %19, !dbg !5144

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11, !dbg !5145
  %21 = load i8*, i8** %20, align 8, !dbg !5145, !tbaa !5146
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5147
  %23 = load i8*, i8** %22, align 8, !dbg !5147, !tbaa !2293
  %24 = ptrtoint i8* %21 to i64, !dbg !5148
  %25 = ptrtoint i8* %23 to i64, !dbg !5148
  %26 = sub i64 %24, %25, !dbg !5148
  br label %27, !dbg !5144

27:                                               ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ], !dbg !5144
  %29 = add nsw i64 %14, %28, !dbg !5149
  br label %30, !dbg !5150

30:                                               ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ], !dbg !5133
  ret i64 %31, !dbg !5151
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !5152 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5154, metadata !DIExpression()), !dbg !5159
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5160
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !5160
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !5155, metadata !DIExpression()), !dbg !5161
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !5162
  %5 = icmp eq i32 %4, 0, !dbg !5162
  br i1 %5, label %6, label %13, !dbg !5164

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !5165, metadata !DIExpression()) #35, !dbg !5169
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.207, i64 0, i64 0), metadata !5168, metadata !DIExpression()) #35, !dbg !5169
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.207, i64 0, i64 0), i64 2), !dbg !5172
  %8 = icmp eq i32 %7, 0, !dbg !5173
  br i1 %8, label %12, label %9, !dbg !5174

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !5165, metadata !DIExpression()) #35, !dbg !5175
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.208, i64 0, i64 0), metadata !5168, metadata !DIExpression()) #35, !dbg !5175
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.208, i64 0, i64 0), i64 6), !dbg !5177
  %11 = icmp eq i32 %10, 0, !dbg !5178
  br i1 %11, label %12, label %13, !dbg !5179

12:                                               ; preds = %9, %6
  br label %13, !dbg !5180

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !5159
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !5181
  ret i1 %14, !dbg !5181
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !5182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5186, metadata !DIExpression()), !dbg !5189
  call void @llvm.dbg.value(metadata i8* %1, metadata !5187, metadata !DIExpression()), !dbg !5189
  call void @llvm.dbg.value(metadata i64 %2, metadata !5188, metadata !DIExpression()), !dbg !5189
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !5190
  ret i32 %4, !dbg !5191
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !5192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5196, metadata !DIExpression()), !dbg !5197
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !5198
  ret i8* %2, !dbg !5199
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !5200 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5202, metadata !DIExpression()), !dbg !5204
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !5205
  call void @llvm.dbg.value(metadata i8* %2, metadata !5203, metadata !DIExpression()), !dbg !5204
  ret i8* %2, !dbg !5206
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !5207 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5209, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i8* %1, metadata !5210, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i64 %2, metadata !5211, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i32 %0, metadata !5202, metadata !DIExpression()) #35, !dbg !5217
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !5219
  call void @llvm.dbg.value(metadata i8* %4, metadata !5203, metadata !DIExpression()) #35, !dbg !5217
  call void @llvm.dbg.value(metadata i8* %4, metadata !5212, metadata !DIExpression()), !dbg !5216
  %5 = icmp eq i8* %4, null, !dbg !5220
  br i1 %5, label %6, label %9, !dbg !5221

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5222
  br i1 %7, label %19, label %8, !dbg !5225

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5226, !tbaa !660
  br label %19, !dbg !5227

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !5228
  call void @llvm.dbg.value(metadata i64 %10, metadata !5213, metadata !DIExpression()), !dbg !5229
  %11 = icmp ult i64 %10, %2, !dbg !5230
  br i1 %11, label %12, label %14, !dbg !5232

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5233
  call void @llvm.dbg.value(metadata i8* %1, metadata !5235, metadata !DIExpression()) #35, !dbg !5240
  call void @llvm.dbg.value(metadata i8* %4, metadata !5238, metadata !DIExpression()) #35, !dbg !5240
  call void @llvm.dbg.value(metadata i64 %13, metadata !5239, metadata !DIExpression()) #35, !dbg !5240
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !5242
  br label %19, !dbg !5243

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5244
  br i1 %15, label %19, label %16, !dbg !5247

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5248
  call void @llvm.dbg.value(metadata i8* %1, metadata !5235, metadata !DIExpression()) #35, !dbg !5250
  call void @llvm.dbg.value(metadata i8* %4, metadata !5238, metadata !DIExpression()) #35, !dbg !5250
  call void @llvm.dbg.value(metadata i64 %17, metadata !5239, metadata !DIExpression()) #35, !dbg !5250
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !5252
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5253
  store i8 0, i8* %18, align 1, !dbg !5254, !tbaa !660
  br label %19, !dbg !5255

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5256
  ret i32 %20, !dbg !5257
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
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nofree nosync nounwind willreturn }
attributes #20 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { argmemonly nofree nounwind willreturn writeonly }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { alwaysinline nobuiltin nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { nounwind allocsize(1) }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !203, !246, !251, !258, !422, !442, !445, !447, !450, !452, !454, !457, !459, !299, !309, !341, !465, !414, !471, !502, !504, !506, !508, !511, !428, !514, !517, !519, !521, !523}
!llvm.ident = !{!525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525, !525}
!llvm.module.flags = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 109, type: !181, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !63, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/cut.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b9f2457426dca29db9725f5b9c21ca1")
!4 = !{!5, !12, !27, !41}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 33, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/set-fields.h", directory: "/src", checksumkind: CSK_MD5, checksum: "e845057753a5660d0a0c171d86abf414")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "SETFLD_ALLOW_DASH", value: 1)
!10 = !DIEnumerator(name: "SETFLD_COMPLEMENT", value: 2)
!11 = !DIEnumerator(name: "SETFLD_ERRMSG_USE_POS", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!15 = !DIEnumerator(name: "_ISupper", value: 256)
!16 = !DIEnumerator(name: "_ISlower", value: 512)
!17 = !DIEnumerator(name: "_ISalpha", value: 1024)
!18 = !DIEnumerator(name: "_ISdigit", value: 2048)
!19 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!20 = !DIEnumerator(name: "_ISspace", value: 8192)
!21 = !DIEnumerator(name: "_ISprint", value: 16384)
!22 = !DIEnumerator(name: "_ISgraph", value: 32768)
!23 = !DIEnumerator(name: "_ISblank", value: 1)
!24 = !DIEnumerator(name: "_IScntrl", value: 2)
!25 = !DIEnumerator(name: "_ISpunct", value: 4)
!26 = !DIEnumerator(name: "_ISalnum", value: 8)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !28, line: 42, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!30 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!31 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!32 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!33 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!34 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!35 = !DIEnumerator(name: "c_quoting_style", value: 5)
!36 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!37 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!38 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!39 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!40 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 44, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!45 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!46 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!47 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!48 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!49 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!50 = !{!51, !53, !54, !55, !56, !59, !61, !62}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 46, baseType: !58)
!57 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!63 = !{!64, !67, !69, !71, !73, !75, !80, !82, !0, !165, !167, !177, !179}
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "suppress_non_delimited", scope: !2, file: !3, line: 76, type: !66, isLocal: true, isDefinition: true)
!66 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "complement", scope: !2, file: !3, line: 80, type: !66, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 83, type: !61, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "output_delimiter_length", scope: !2, file: !3, line: 89, type: !56, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "output_delimiter_string", scope: !2, file: !3, line: 93, type: !51, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "output_delimiter_default", scope: !2, file: !3, line: 96, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 99, type: !66, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !84, file: !85, line: 575, type: !54, isLocal: true, isDefinition: true)
!84 = distinct !DISubprogram(name: "oputs_", scope: !85, file: !85, line: 573, type: !86, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!85 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!86 = !DISubroutineType(types: !87)
!87 = !{null, !59, !59}
!88 = !{!89, !90, !91, !94, !95, !96, !97, !101, !102, !103, !104, !106, !159, !160, !161, !163, !164}
!89 = !DILocalVariable(name: "program", arg: 1, scope: !84, file: !85, line: 573, type: !59)
!90 = !DILocalVariable(name: "option", arg: 2, scope: !84, file: !85, line: 573, type: !59)
!91 = !DILocalVariable(name: "term", scope: !92, file: !85, line: 585, type: !59)
!92 = distinct !DILexicalBlock(scope: !93, file: !85, line: 582, column: 5)
!93 = distinct !DILexicalBlock(scope: !84, file: !85, line: 581, column: 7)
!94 = !DILocalVariable(name: "double_space", scope: !84, file: !85, line: 594, type: !66)
!95 = !DILocalVariable(name: "first_word", scope: !84, file: !85, line: 595, type: !59)
!96 = !DILocalVariable(name: "option_text", scope: !84, file: !85, line: 596, type: !59)
!97 = !DILocalVariable(name: "s", scope: !98, file: !85, line: 608, type: !59)
!98 = distinct !DILexicalBlock(scope: !99, file: !85, line: 605, column: 5)
!99 = distinct !DILexicalBlock(scope: !100, file: !85, line: 604, column: 12)
!100 = distinct !DILexicalBlock(scope: !84, file: !85, line: 597, column: 7)
!101 = !DILocalVariable(name: "spaces", scope: !98, file: !85, line: 609, type: !56)
!102 = !DILocalVariable(name: "anchor_len", scope: !84, file: !85, line: 620, type: !56)
!103 = !DILocalVariable(name: "desc_text", scope: !84, file: !85, line: 625, type: !59)
!104 = !DILocalVariable(name: "__ptr", scope: !105, file: !85, line: 644, type: !59)
!105 = distinct !DILexicalBlock(scope: !84, file: !85, line: 644, column: 3)
!106 = !DILocalVariable(name: "__stream", scope: !105, file: !85, line: 644, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !110)
!109 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !112)
!111 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !128, !130, !131, !132, !136, !137, !139, !140, !143, !145, !148, !151, !152, !153, !154, !155}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !110, file: !111, line: 51, baseType: !54, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !110, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !110, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !110, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !110, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !110, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !110, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !110, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !110, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !110, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !110, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !110, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !110, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 36, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !110, file: !111, line: 70, baseType: !129, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !110, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !110, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !110, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !134, line: 152, baseType: !135)
!134 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!135 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !110, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !110, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!138 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !110, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !110, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !111, line: 43, baseType: null)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !110, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !134, line: 153, baseType: !135)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !110, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !111, line: 37, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !110, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !111, line: 38, flags: DIFlagFwdDecl)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !110, file: !111, line: 93, baseType: !129, size: 64, offset: 1344)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !110, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !110, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !110, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !110, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 20)
!159 = !DILocalVariable(name: "__cnt", scope: !105, file: !85, line: 644, type: !56)
!160 = !DILocalVariable(name: "url_program", scope: !84, file: !85, line: 648, type: !59)
!161 = !DILocalVariable(name: "__ptr", scope: !162, file: !85, line: 686, type: !59)
!162 = distinct !DILexicalBlock(scope: !84, file: !85, line: 686, column: 3)
!163 = !DILocalVariable(name: "__stream", scope: !162, file: !85, line: 686, type: !107)
!164 = !DILocalVariable(name: "__cnt", scope: !162, file: !85, line: 686, type: !56)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 86, type: !61, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "current_rp", scope: !2, file: !3, line: 59, type: !169, isLocal: true, isDefinition: true)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !6, line: 20, size: 128, elements: !171)
!171 = !{!172, !176}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !170, file: !6, line: 22, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !174, line: 102, baseType: !175)
!174 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !134, line: 73, baseType: !58)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !170, file: !6, line: 23, baseType: !173, size: 64, offset: 64)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "field_1_buffer", scope: !2, file: !3, line: 68, type: !51, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "field_1_bufsize", scope: !2, file: !3, line: 71, type: !56, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 2816, elements: !191)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !184, line: 50, size: 256, elements: !185)
!184 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!185 = !{!186, !187, !188, !190}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !184, line: 52, baseType: !59, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !183, file: !184, line: 55, baseType: !54, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !183, file: !184, line: 56, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !183, file: !184, line: 57, baseType: !54, size: 32, offset: 192)
!191 = !{!192}
!192 = !DISubrange(count: 11)
!193 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!194 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!195 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!196 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "num_start", scope: !199, file: !200, line: 237, type: !59, isLocal: true, isDefinition: true)
!199 = distinct !DISubprogram(name: "set_fields", scope: !200, file: !200, line: 136, type: !201, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !221)
!200 = !DIFile(filename: "src/set-fields.c", directory: "/src", checksumkind: CSK_MD5, checksum: "014157063ff9565a7e56051a9de2b9a1")
!201 = !DISubroutineType(types: !202)
!202 = !{null, !59, !7}
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !204, retainedTypes: !205, globals: !206, splitDebugInlining: false, nameTableKind: None)
!204 = !{!5, !12}
!205 = !{!54, !55, !66, !58}
!206 = !{!197, !207, !214, !219}
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "frp", scope: !203, file: !200, line: 27, type: !209, isLocal: false, isDefinition: true)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !6, line: 20, size: 128, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !210, file: !6, line: 22, baseType: !173, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !210, file: !6, line: 23, baseType: !173, size: 64, offset: 64)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "n_frp", scope: !203, file: !200, line: 30, type: !216, isLocal: false, isDefinition: true)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !217, line: 130, baseType: !218)
!217 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !57, line: 35, baseType: !135)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "n_frp_allocated", scope: !203, file: !200, line: 33, type: !216, isLocal: true, isDefinition: true)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !238, !240}
!222 = !DILocalVariable(name: "fieldstr", arg: 1, scope: !199, file: !200, line: 136, type: !59)
!223 = !DILocalVariable(name: "options", arg: 2, scope: !199, file: !200, line: 136, type: !7)
!224 = !DILocalVariable(name: "initial", scope: !199, file: !200, line: 138, type: !173)
!225 = !DILocalVariable(name: "value", scope: !199, file: !200, line: 139, type: !173)
!226 = !DILocalVariable(name: "lhs_specified", scope: !199, file: !200, line: 140, type: !66)
!227 = !DILocalVariable(name: "rhs_specified", scope: !199, file: !200, line: 141, type: !66)
!228 = !DILocalVariable(name: "dash_found", scope: !199, file: !200, line: 142, type: !66)
!229 = !DILocalVariable(name: "in_digits", scope: !199, file: !200, line: 144, type: !66)
!230 = !DILocalVariable(name: "bad_num", scope: !231, file: !200, line: 253, type: !51)
!231 = distinct !DILexicalBlock(scope: !232, file: !200, line: 250, column: 13)
!232 = distinct !DILexicalBlock(scope: !233, file: !200, line: 248, column: 15)
!233 = distinct !DILexicalBlock(scope: !234, file: !200, line: 234, column: 9)
!234 = distinct !DILexicalBlock(scope: !235, file: !200, line: 233, column: 16)
!235 = distinct !DILexicalBlock(scope: !236, file: !200, line: 179, column: 16)
!236 = distinct !DILexicalBlock(scope: !237, file: !200, line: 159, column: 11)
!237 = distinct !DILexicalBlock(scope: !199, file: !200, line: 158, column: 5)
!238 = !DILocalVariable(name: "i", scope: !239, file: !200, line: 283, type: !216)
!239 = distinct !DILexicalBlock(scope: !199, file: !200, line: 283, column: 3)
!240 = !DILocalVariable(name: "j", scope: !241, file: !200, line: 285, type: !216)
!241 = distinct !DILexicalBlock(scope: !242, file: !200, line: 285, column: 7)
!242 = distinct !DILexicalBlock(scope: !243, file: !200, line: 284, column: 5)
!243 = distinct !DILexicalBlock(scope: !239, file: !200, line: 283, column: 3)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "Version", scope: !246, file: !247, line: 3, type: !59, isLocal: false, isDefinition: true)
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !248, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!248 = !{!244}
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "file_name", scope: !251, file: !252, line: 45, type: !59, isLocal: true, isDefinition: true)
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !253, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!253 = !{!249, !254}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !251, file: !252, line: 55, type: !66, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !258, file: !259, line: 66, type: !294, isLocal: false, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !260, globals: !261, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!260 = !{!53, !61}
!261 = !{!262, !288, !256, !290, !292}
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "old_file_name", scope: !264, file: !259, line: 304, type: !59, isLocal: true, isDefinition: true)
!264 = distinct !DISubprogram(name: "verror_at_line", scope: !259, file: !259, line: 298, type: !265, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !281)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !54, !54, !59, !7, !59, !267}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !268, line: 52, baseType: !269)
!268 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !270, line: 32, baseType: !271)
!270 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !272, baseType: !273)
!272 = !DIFile(filename: "lib/error.c", directory: "/src")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !274, size: 256, elements: !275)
!274 = !DINamespace(name: "std", scope: null)
!275 = !{!276, !277, !278, !279, !280}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !273, file: !272, baseType: !53, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !273, file: !272, baseType: !53, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !273, file: !272, baseType: !53, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !273, file: !272, baseType: !54, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !273, file: !272, baseType: !54, size: 32, offset: 224)
!281 = !{!282, !283, !284, !285, !286, !287}
!282 = !DILocalVariable(name: "status", arg: 1, scope: !264, file: !259, line: 298, type: !54)
!283 = !DILocalVariable(name: "errnum", arg: 2, scope: !264, file: !259, line: 298, type: !54)
!284 = !DILocalVariable(name: "file_name", arg: 3, scope: !264, file: !259, line: 298, type: !59)
!285 = !DILocalVariable(name: "line_number", arg: 4, scope: !264, file: !259, line: 298, type: !7)
!286 = !DILocalVariable(name: "message", arg: 5, scope: !264, file: !259, line: 298, type: !59)
!287 = !DILocalVariable(name: "args", arg: 6, scope: !264, file: !259, line: 298, type: !267)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "old_line_number", scope: !264, file: !259, line: 305, type: !7, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "error_message_count", scope: !258, file: !259, line: 69, type: !7, isLocal: false, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !258, file: !259, line: 295, type: !54, isLocal: false, isDefinition: true)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "program_name", scope: !299, file: !300, line: 31, type: !59, isLocal: false, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !301, globals: !302, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!301 = !{!51}
!302 = !{!297}
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "utf07FF", scope: !305, file: !306, line: 46, type: !336, isLocal: true, isDefinition: true)
!305 = distinct !DISubprogram(name: "proper_name_lite", scope: !306, file: !306, line: 38, type: !307, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !309, retainedNodes: !311)
!306 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!307 = !DISubroutineType(types: !308)
!308 = !{!59, !59, !59}
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !310, splitDebugInlining: false, nameTableKind: None)
!310 = !{!303}
!311 = !{!312, !313, !314, !315, !320}
!312 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !305, file: !306, line: 38, type: !59)
!313 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !305, file: !306, line: 38, type: !59)
!314 = !DILocalVariable(name: "translation", scope: !305, file: !306, line: 40, type: !59)
!315 = !DILocalVariable(name: "w", scope: !305, file: !306, line: 47, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !317, line: 37, baseType: !318)
!317 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !134, line: 57, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !134, line: 42, baseType: !7)
!320 = !DILocalVariable(name: "mbs", scope: !305, file: !306, line: 48, type: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !322, line: 6, baseType: !323)
!322 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !324, line: 21, baseType: !325)
!324 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 13, size: 64, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !325, file: !324, line: 15, baseType: !54, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !325, file: !324, line: 20, baseType: !329, size: 32, offset: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !324, line: 16, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !329, file: !324, line: 18, baseType: !7, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !329, file: !324, line: 19, baseType: !333, size: 32)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 4)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 16, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 2)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !341, file: !342, line: 76, type: !410, isLocal: false, isDefinition: true)
!341 = distinct !DICompileUnit(language: DW_LANG_C99, file: !342, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !343, retainedTypes: !349, globals: !350, splitDebugInlining: false, nameTableKind: None)
!342 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!343 = !{!27, !344, !12}
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !28, line: 254, baseType: !7, size: 32, elements: !345)
!345 = !{!346, !347, !348}
!346 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!347 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!348 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!349 = !{!54, !55, !56}
!350 = !{!339, !351, !357, !369, !371, !376, !399, !406, !408}
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !341, file: !342, line: 92, type: !353, isLocal: false, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 320, elements: !355)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!355 = !{!356}
!356 = !DISubrange(count: 10)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !341, file: !342, line: 1040, type: !359, isLocal: false, isDefinition: true)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !342, line: 56, size: 448, elements: !360)
!360 = !{!361, !362, !363, !367, !368}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !359, file: !342, line: 59, baseType: !27, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !342, line: 62, baseType: !54, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !359, file: !342, line: 66, baseType: !364, size: 256, offset: 64)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !359, file: !342, line: 69, baseType: !59, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !359, file: !342, line: 72, baseType: !59, size: 64, offset: 384)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !341, file: !342, line: 107, type: !359, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "slot0", scope: !341, file: !342, line: 831, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 256)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "quote", scope: !378, file: !342, line: 228, type: !397, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "gettext_quote", scope: !342, file: !342, line: 197, type: !379, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!59, !59, !27}
!381 = !{!382, !383, !384, !385, !386}
!382 = !DILocalVariable(name: "msgid", arg: 1, scope: !378, file: !342, line: 197, type: !59)
!383 = !DILocalVariable(name: "s", arg: 2, scope: !378, file: !342, line: 197, type: !27)
!384 = !DILocalVariable(name: "translation", scope: !378, file: !342, line: 199, type: !59)
!385 = !DILocalVariable(name: "w", scope: !378, file: !342, line: 229, type: !316)
!386 = !DILocalVariable(name: "mbs", scope: !378, file: !342, line: 230, type: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !322, line: 6, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !324, line: 21, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 13, size: 64, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !389, file: !324, line: 15, baseType: !54, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !389, file: !324, line: 20, baseType: !393, size: 32, offset: 32)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !324, line: 16, size: 32, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !393, file: !324, line: 18, baseType: !7, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !393, file: !324, line: 19, baseType: !333, size: 32)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !398)
!398 = !{!338, !335}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "slotvec", scope: !341, file: !342, line: 834, type: !401, isLocal: true, isDefinition: true)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !342, line: 823, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !402, file: !342, line: 825, baseType: !56, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !402, file: !342, line: 826, baseType: !51, size: 64, offset: 64)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "nslots", scope: !341, file: !342, line: 832, type: !54, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "slotvec0", scope: !341, file: !342, line: 833, type: !402, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 704, elements: !191)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !414, file: !415, line: 26, type: !417, isLocal: false, isDefinition: true)
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !416, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!416 = !{!412}
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 376, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 47)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "exit_failure", scope: !422, file: !423, line: 24, type: !425, isLocal: false, isDefinition: true)
!422 = distinct !DICompileUnit(language: DW_LANG_C99, file: !423, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !424, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!424 = !{!420}
!425 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "internal_state", scope: !428, file: !429, line: 97, type: !432, isLocal: true, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, globals: !431, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!430 = !{!53, !56, !61}
!431 = !{!426}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !322, line: 6, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !324, line: 21, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 13, size: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !434, file: !324, line: 15, baseType: !54, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !434, file: !324, line: 20, baseType: !438, size: 32, offset: 32)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !324, line: 16, size: 32, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !438, file: !324, line: 18, baseType: !7, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !438, file: !324, line: 19, baseType: !333, size: 32)
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !444, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!444 = !{!41}
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !449, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!449 = !{!53}
!450 = distinct !DICompileUnit(language: DW_LANG_C99, file: !451, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!451 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!452 = distinct !DICompileUnit(language: DW_LANG_C99, file: !453, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !449, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !456, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/getndelim2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d286772550dcd0d4e4164dd1f736b40f")
!456 = !{!62}
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !461, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/memchr2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "02120b13899f3db9fd2d834284ba56fe")
!461 = !{!61, !53, !462, !463}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !174, line: 90, baseType: !58)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !467, retainedTypes: !449, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!467 = !{!468}
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !466, line: 40, baseType: !7, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!471 = distinct !DICompileUnit(language: DW_LANG_C99, file: !472, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !473, retainedTypes: !501, splitDebugInlining: false, nameTableKind: None)
!472 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!473 = !{!474, !486}
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !475, file: !472, line: 188, baseType: !7, size: 32, elements: !484)
!475 = distinct !DISubprogram(name: "x2nrealloc", scope: !472, file: !472, line: 176, type: !476, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !479)
!476 = !DISubroutineType(types: !477)
!477 = !{!53, !53, !478, !56}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!479 = !{!480, !481, !482, !483}
!480 = !DILocalVariable(name: "p", arg: 1, scope: !475, file: !472, line: 176, type: !53)
!481 = !DILocalVariable(name: "pn", arg: 2, scope: !475, file: !472, line: 176, type: !478)
!482 = !DILocalVariable(name: "s", arg: 3, scope: !475, file: !472, line: 176, type: !56)
!483 = !DILocalVariable(name: "n", scope: !475, file: !472, line: 178, type: !56)
!484 = !{!485}
!485 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !487, file: !472, line: 228, baseType: !7, size: 32, elements: !484)
!487 = distinct !DISubprogram(name: "xpalloc", scope: !472, file: !472, line: 223, type: !488, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !491)
!488 = !DISubroutineType(types: !489)
!489 = !{!53, !53, !490, !216, !218, !216}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500}
!492 = !DILocalVariable(name: "pa", arg: 1, scope: !487, file: !472, line: 223, type: !53)
!493 = !DILocalVariable(name: "pn", arg: 2, scope: !487, file: !472, line: 223, type: !490)
!494 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !487, file: !472, line: 223, type: !216)
!495 = !DILocalVariable(name: "n_max", arg: 4, scope: !487, file: !472, line: 223, type: !218)
!496 = !DILocalVariable(name: "s", arg: 5, scope: !487, file: !472, line: 223, type: !216)
!497 = !DILocalVariable(name: "n0", scope: !487, file: !472, line: 230, type: !216)
!498 = !DILocalVariable(name: "n", scope: !487, file: !472, line: 237, type: !216)
!499 = !DILocalVariable(name: "nbytes", scope: !487, file: !472, line: 248, type: !216)
!500 = !DILocalVariable(name: "adjusted_nbytes", scope: !487, file: !472, line: 252, type: !216)
!501 = !{!51, !53, !66, !135, !58}
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!504 = distinct !DICompileUnit(language: DW_LANG_C99, file: !505, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !449, splitDebugInlining: false, nameTableKind: None)
!505 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !510, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/freadptr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c5958d0c7223ea506787ed1086f8c77f")
!510 = !{!59}
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !512, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !513, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/freadseek.c", directory: "/src", checksumkind: CSK_MD5, checksum: "65aa8ebe67d000642bdd4080692a0013")
!513 = !{!53, !58}
!514 = distinct !DICompileUnit(language: DW_LANG_C99, file: !515, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !516, splitDebugInlining: false, nameTableKind: None)
!515 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!516 = !{!66, !58, !53}
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/freadahead.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0335573db6cc583acb894a308e230b2b")
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !449, splitDebugInlining: false, nameTableKind: None)
!524 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!525 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!526 = !{i32 7, !"Dwarf Version", i32 5}
!527 = !{i32 2, !"Debug Info Version", i32 3}
!528 = !{i32 1, !"wchar_size", i32 4}
!529 = !{i32 1, !"branch-target-enforcement", i32 0}
!530 = !{i32 1, !"sign-return-address", i32 0}
!531 = !{i32 1, !"sign-return-address-all", i32 0}
!532 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!533 = !{i32 7, !"PIC Level", i32 2}
!534 = !{i32 7, !"PIE Level", i32 2}
!535 = !{i32 7, !"uwtable", i32 1}
!536 = !{i32 7, !"frame-pointer", i32 1}
!537 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 125, type: !538, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !54}
!540 = !{!541}
!541 = !DILocalVariable(name: "status", arg: 1, scope: !537, file: !3, line: 125, type: !54)
!542 = !DILocation(line: 0, scope: !537)
!543 = !DILocation(line: 127, column: 14, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !3, line: 127, column: 7)
!545 = !DILocation(line: 127, column: 7, scope: !537)
!546 = !DILocation(line: 128, column: 5, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !3, line: 128, column: 5)
!548 = !{!549, !549, i64 0}
!549 = !{!"any pointer", !550, i64 0}
!550 = !{!"omnipotent char", !551, i64 0}
!551 = !{!"Simple C/C++ TBAA"}
!552 = !DILocation(line: 131, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !544, file: !3, line: 130, column: 5)
!554 = !DILocation(line: 135, column: 7, scope: !553)
!555 = !DILocation(line: 729, column: 3, scope: !556, inlinedAt: !558)
!556 = distinct !DISubprogram(name: "emit_stdin_note", scope: !85, file: !85, line: 727, type: !295, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!557 = !{}
!558 = distinct !DILocation(line: 139, column: 7, scope: !553)
!559 = !DILocation(line: 736, column: 3, scope: !560, inlinedAt: !561)
!560 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !85, file: !85, line: 734, type: !295, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!561 = distinct !DILocation(line: 140, column: 7, scope: !553)
!562 = !DILocation(line: 142, column: 7, scope: !553)
!563 = !DILocation(line: 146, column: 7, scope: !553)
!564 = !DILocation(line: 150, column: 7, scope: !553)
!565 = !DILocation(line: 154, column: 7, scope: !553)
!566 = !DILocation(line: 159, column: 7, scope: !553)
!567 = !DILocation(line: 163, column: 7, scope: !553)
!568 = !DILocation(line: 167, column: 7, scope: !553)
!569 = !DILocation(line: 171, column: 7, scope: !553)
!570 = !DILocation(line: 176, column: 7, scope: !553)
!571 = !DILocation(line: 180, column: 7, scope: !553)
!572 = !DILocation(line: 181, column: 7, scope: !553)
!573 = !DILocation(line: 182, column: 7, scope: !553)
!574 = !DILocation(line: 188, column: 7, scope: !553)
!575 = !DILocalVariable(name: "program", arg: 1, scope: !576, file: !85, line: 836, type: !59)
!576 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !85, file: !85, line: 836, type: !577, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !59}
!579 = !{!575, !580, !589, !590, !592, !593}
!580 = !DILocalVariable(name: "infomap", scope: !576, file: !85, line: 838, type: !581)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 896, elements: !587)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !576, file: !85, line: 838, size: 128, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !583, file: !85, line: 838, baseType: !59, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !583, file: !85, line: 838, baseType: !59, size: 64, offset: 64)
!587 = !{!588}
!588 = !DISubrange(count: 7)
!589 = !DILocalVariable(name: "node", scope: !576, file: !85, line: 848, type: !59)
!590 = !DILocalVariable(name: "map_prog", scope: !576, file: !85, line: 849, type: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!592 = !DILocalVariable(name: "lc_messages", scope: !576, file: !85, line: 861, type: !59)
!593 = !DILocalVariable(name: "url_program", scope: !576, file: !85, line: 874, type: !59)
!594 = !DILocation(line: 0, scope: !576, inlinedAt: !595)
!595 = distinct !DILocation(line: 196, column: 7, scope: !553)
!596 = !DILocation(line: 838, column: 3, scope: !576, inlinedAt: !595)
!597 = !DILocation(line: 838, column: 67, scope: !576, inlinedAt: !595)
!598 = !DILocation(line: 849, column: 36, scope: !576, inlinedAt: !595)
!599 = !DILocation(line: 851, column: 3, scope: !576, inlinedAt: !595)
!600 = !DILocalVariable(name: "__s1", arg: 1, scope: !601, file: !602, line: 1359, type: !59)
!601 = distinct !DISubprogram(name: "streq", scope: !602, file: !602, line: 1359, type: !603, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !605)
!602 = !DIFile(filename: "./lib/string.h", directory: "/src")
!603 = !DISubroutineType(types: !604)
!604 = !{!66, !59, !59}
!605 = !{!600, !606}
!606 = !DILocalVariable(name: "__s2", arg: 2, scope: !601, file: !602, line: 1359, type: !59)
!607 = !DILocation(line: 0, scope: !601, inlinedAt: !608)
!608 = distinct !DILocation(line: 851, column: 33, scope: !576, inlinedAt: !595)
!609 = !DILocation(line: 1361, column: 11, scope: !601, inlinedAt: !608)
!610 = !DILocation(line: 1361, column: 10, scope: !601, inlinedAt: !608)
!611 = !DILocation(line: 852, column: 13, scope: !576, inlinedAt: !595)
!612 = !DILocation(line: 851, column: 20, scope: !576, inlinedAt: !595)
!613 = !{!614, !549, i64 0}
!614 = !{!"infomap", !549, i64 0, !549, i64 8}
!615 = !DILocation(line: 851, column: 10, scope: !576, inlinedAt: !595)
!616 = !DILocation(line: 851, column: 28, scope: !576, inlinedAt: !595)
!617 = distinct !{!617, !599, !611, !618}
!618 = !{!"llvm.loop.mustprogress"}
!619 = !DILocation(line: 854, column: 17, scope: !620, inlinedAt: !595)
!620 = distinct !DILexicalBlock(scope: !576, file: !85, line: 854, column: 7)
!621 = !{!614, !549, i64 8}
!622 = !DILocation(line: 854, column: 7, scope: !620, inlinedAt: !595)
!623 = !DILocation(line: 854, column: 7, scope: !576, inlinedAt: !595)
!624 = !DILocation(line: 857, column: 3, scope: !576, inlinedAt: !595)
!625 = !DILocation(line: 861, column: 29, scope: !576, inlinedAt: !595)
!626 = !DILocation(line: 862, column: 7, scope: !627, inlinedAt: !595)
!627 = distinct !DILexicalBlock(scope: !576, file: !85, line: 862, column: 7)
!628 = !DILocation(line: 862, column: 19, scope: !627, inlinedAt: !595)
!629 = !DILocation(line: 862, column: 22, scope: !627, inlinedAt: !595)
!630 = !DILocation(line: 862, column: 7, scope: !576, inlinedAt: !595)
!631 = !DILocation(line: 868, column: 7, scope: !632, inlinedAt: !595)
!632 = distinct !DILexicalBlock(scope: !627, file: !85, line: 863, column: 5)
!633 = !DILocation(line: 870, column: 5, scope: !632, inlinedAt: !595)
!634 = !DILocation(line: 0, scope: !601, inlinedAt: !635)
!635 = distinct !DILocation(line: 874, column: 29, scope: !576, inlinedAt: !595)
!636 = !DILocation(line: 875, column: 3, scope: !576, inlinedAt: !595)
!637 = !DILocation(line: 877, column: 3, scope: !576, inlinedAt: !595)
!638 = !DILocation(line: 879, column: 1, scope: !576, inlinedAt: !595)
!639 = !DILocation(line: 198, column: 3, scope: !537)
!640 = !DISubprogram(name: "dcgettext", scope: !641, file: !641, line: 51, type: !642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!641 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!642 = !DISubroutineType(types: !643)
!643 = !{!51, !59, !59, !54}
!644 = !DISubprogram(name: "fputs_unlocked", scope: !268, file: !268, line: 691, type: !645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!645 = !DISubroutineType(types: !646)
!646 = !{!54, !647, !648}
!647 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!648 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!649 = !DILocation(line: 0, scope: !84)
!650 = !DILocation(line: 581, column: 7, scope: !93)
!651 = !{!652, !652, i64 0}
!652 = !{!"int", !550, i64 0}
!653 = !DILocation(line: 581, column: 19, scope: !93)
!654 = !DILocation(line: 581, column: 7, scope: !84)
!655 = !DILocation(line: 585, column: 26, scope: !92)
!656 = !DILocation(line: 0, scope: !92)
!657 = !DILocation(line: 586, column: 23, scope: !92)
!658 = !DILocation(line: 586, column: 28, scope: !92)
!659 = !DILocation(line: 586, column: 32, scope: !92)
!660 = !{!550, !550, i64 0}
!661 = !DILocation(line: 586, column: 38, scope: !92)
!662 = !DILocation(line: 0, scope: !601, inlinedAt: !663)
!663 = distinct !DILocation(line: 586, column: 41, scope: !92)
!664 = !DILocation(line: 1361, column: 11, scope: !601, inlinedAt: !663)
!665 = !DILocation(line: 1361, column: 10, scope: !601, inlinedAt: !663)
!666 = !DILocation(line: 586, column: 19, scope: !92)
!667 = !DILocation(line: 587, column: 5, scope: !92)
!668 = !DILocation(line: 588, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !84, file: !85, line: 588, column: 7)
!670 = !DILocation(line: 588, column: 7, scope: !84)
!671 = !DILocation(line: 590, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !669, file: !85, line: 589, column: 5)
!673 = !DILocation(line: 591, column: 7, scope: !672)
!674 = !DILocation(line: 595, column: 37, scope: !84)
!675 = !DILocation(line: 595, column: 35, scope: !84)
!676 = !DILocation(line: 596, column: 29, scope: !84)
!677 = !DILocation(line: 597, column: 8, scope: !100)
!678 = !DILocation(line: 597, column: 7, scope: !84)
!679 = !DILocation(line: 604, column: 24, scope: !99)
!680 = !DILocation(line: 604, column: 12, scope: !100)
!681 = !DILocation(line: 0, scope: !98)
!682 = !DILocation(line: 610, column: 16, scope: !98)
!683 = !DILocation(line: 610, column: 7, scope: !98)
!684 = !DILocation(line: 611, column: 21, scope: !98)
!685 = !{!686, !686, i64 0}
!686 = !{!"short", !550, i64 0}
!687 = !DILocation(line: 611, column: 19, scope: !98)
!688 = !DILocation(line: 611, column: 16, scope: !98)
!689 = !DILocation(line: 610, column: 30, scope: !98)
!690 = distinct !{!690, !683, !684, !618}
!691 = !DILocation(line: 612, column: 18, scope: !692)
!692 = distinct !DILexicalBlock(scope: !98, file: !85, line: 612, column: 11)
!693 = !DILocation(line: 612, column: 11, scope: !98)
!694 = !DILocation(line: 620, column: 23, scope: !84)
!695 = !DILocation(line: 625, column: 39, scope: !84)
!696 = !DILocation(line: 626, column: 3, scope: !84)
!697 = !DILocation(line: 626, column: 10, scope: !84)
!698 = !DILocation(line: 626, column: 21, scope: !84)
!699 = !DILocation(line: 628, column: 44, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !85, line: 628, column: 11)
!701 = distinct !DILexicalBlock(scope: !84, file: !85, line: 627, column: 5)
!702 = !DILocation(line: 628, column: 32, scope: !700)
!703 = !DILocation(line: 628, column: 49, scope: !700)
!704 = !DILocation(line: 628, column: 11, scope: !701)
!705 = !DILocation(line: 630, column: 11, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !85, line: 630, column: 11)
!707 = !DILocation(line: 630, column: 11, scope: !701)
!708 = !DILocation(line: 632, column: 26, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !85, line: 632, column: 15)
!710 = distinct !DILexicalBlock(scope: !706, file: !85, line: 631, column: 9)
!711 = !DILocation(line: 632, column: 34, scope: !709)
!712 = !DILocation(line: 632, column: 37, scope: !709)
!713 = !DILocation(line: 632, column: 15, scope: !710)
!714 = !DILocation(line: 636, column: 29, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !85, line: 636, column: 15)
!716 = !DILocation(line: 640, column: 16, scope: !701)
!717 = distinct !{!717, !696, !718, !618}
!718 = !DILocation(line: 641, column: 5, scope: !84)
!719 = !DILocation(line: 644, column: 3, scope: !84)
!720 = !DILocation(line: 0, scope: !601, inlinedAt: !721)
!721 = distinct !DILocation(line: 648, column: 31, scope: !84)
!722 = !DILocation(line: 0, scope: !601, inlinedAt: !723)
!723 = distinct !DILocation(line: 649, column: 31, scope: !84)
!724 = !DILocation(line: 0, scope: !601, inlinedAt: !725)
!725 = distinct !DILocation(line: 650, column: 31, scope: !84)
!726 = !DILocation(line: 0, scope: !601, inlinedAt: !727)
!727 = distinct !DILocation(line: 651, column: 31, scope: !84)
!728 = !DILocation(line: 0, scope: !601, inlinedAt: !729)
!729 = distinct !DILocation(line: 652, column: 31, scope: !84)
!730 = !DILocation(line: 0, scope: !601, inlinedAt: !731)
!731 = distinct !DILocation(line: 653, column: 31, scope: !84)
!732 = !DILocation(line: 0, scope: !601, inlinedAt: !733)
!733 = distinct !DILocation(line: 654, column: 31, scope: !84)
!734 = !DILocation(line: 0, scope: !601, inlinedAt: !735)
!735 = distinct !DILocation(line: 655, column: 31, scope: !84)
!736 = !DILocation(line: 0, scope: !601, inlinedAt: !737)
!737 = distinct !DILocation(line: 656, column: 31, scope: !84)
!738 = !DILocation(line: 0, scope: !601, inlinedAt: !739)
!739 = distinct !DILocation(line: 657, column: 31, scope: !84)
!740 = !DILocation(line: 663, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !84, file: !85, line: 663, column: 7)
!742 = !DILocation(line: 664, column: 7, scope: !741)
!743 = !DILocation(line: 664, column: 10, scope: !741)
!744 = !DILocation(line: 663, column: 7, scope: !84)
!745 = !DILocation(line: 669, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !741, file: !85, line: 665, column: 5)
!747 = !DILocation(line: 671, column: 5, scope: !746)
!748 = !DILocation(line: 676, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !741, file: !85, line: 673, column: 5)
!750 = !DILocation(line: 679, column: 3, scope: !84)
!751 = !DILocation(line: 683, column: 3, scope: !84)
!752 = !DILocation(line: 686, column: 3, scope: !84)
!753 = !DILocation(line: 688, column: 3, scope: !84)
!754 = !DILocation(line: 691, column: 3, scope: !84)
!755 = !DILocation(line: 695, column: 3, scope: !84)
!756 = !DILocation(line: 696, column: 1, scope: !84)
!757 = !DISubprogram(name: "setlocale", scope: !758, file: !758, line: 122, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!758 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!759 = !DISubroutineType(types: !760)
!760 = !{!51, !54, !59}
!761 = !DISubprogram(name: "getenv", scope: !762, file: !762, line: 641, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!762 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!763 = !DISubroutineType(types: !764)
!764 = !{!51, !59}
!765 = !DISubprogram(name: "fwrite_unlocked", scope: !268, file: !268, line: 704, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!766 = !DISubroutineType(types: !767)
!767 = !{!56, !768, !56, !56, !648}
!768 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!771 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 495, type: !772, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !775)
!772 = !DISubroutineType(types: !773)
!773 = !{!54, !54, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783}
!776 = !DILocalVariable(name: "argc", arg: 1, scope: !771, file: !3, line: 495, type: !54)
!777 = !DILocalVariable(name: "argv", arg: 2, scope: !771, file: !3, line: 495, type: !774)
!778 = !DILocalVariable(name: "optc", scope: !771, file: !3, line: 497, type: !54)
!779 = !DILocalVariable(name: "ok", scope: !771, file: !3, line: 498, type: !66)
!780 = !DILocalVariable(name: "delim_specified", scope: !771, file: !3, line: 499, type: !66)
!781 = !DILocalVariable(name: "byte_mode", scope: !771, file: !3, line: 500, type: !66)
!782 = !DILocalVariable(name: "spec_list_string", scope: !771, file: !3, line: 501, type: !51)
!783 = !DILocalVariable(name: "cut_stream", scope: !771, file: !3, line: 595, type: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !107}
!787 = !DILocation(line: 0, scope: !771)
!788 = !DILocation(line: 504, column: 21, scope: !771)
!789 = !DILocation(line: 504, column: 3, scope: !771)
!790 = !DILocation(line: 505, column: 3, scope: !771)
!791 = !DILocation(line: 506, column: 3, scope: !771)
!792 = !DILocation(line: 507, column: 3, scope: !771)
!793 = !DILocation(line: 509, column: 3, scope: !771)
!794 = !DILocation(line: 511, column: 3, scope: !771)
!795 = !DILocation(line: 511, column: 18, scope: !771)
!796 = distinct !{!796, !794, !797, !618}
!797 = !DILocation(line: 565, column: 5, scope: !771)
!798 = !DILocation(line: 523, column: 15, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 523, column: 15)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 515, column: 9)
!801 = distinct !DILexicalBlock(scope: !771, file: !3, line: 513, column: 5)
!802 = !DILocation(line: 523, column: 15, scope: !800)
!803 = !DILocation(line: 524, column: 13, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !3, line: 524, column: 13)
!805 = !DILocation(line: 525, column: 30, scope: !800)
!806 = !DILocation(line: 526, column: 11, scope: !800)
!807 = !DILocation(line: 531, column: 15, scope: !808)
!808 = distinct !DILexicalBlock(scope: !800, file: !3, line: 531, column: 15)
!809 = !DILocation(line: 531, column: 25, scope: !808)
!810 = !DILocation(line: 531, column: 33, scope: !808)
!811 = !DILocation(line: 531, column: 36, scope: !808)
!812 = !DILocation(line: 531, column: 46, scope: !808)
!813 = !DILocation(line: 531, column: 15, scope: !800)
!814 = !DILocation(line: 532, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !808, file: !3, line: 532, column: 13)
!816 = !DILocation(line: 533, column: 17, scope: !800)
!817 = !DILocation(line: 535, column: 11, scope: !800)
!818 = !DILocation(line: 540, column: 38, scope: !800)
!819 = !DILocation(line: 540, column: 48, scope: !800)
!820 = !DILocation(line: 541, column: 44, scope: !800)
!821 = !DILocation(line: 540, column: 35, scope: !800)
!822 = !{!823, !823, i64 0}
!823 = !{!"long", !550, i64 0}
!824 = !DILocation(line: 542, column: 35, scope: !800)
!825 = !DILocation(line: 543, column: 11, scope: !800)
!826 = !DILocation(line: 549, column: 34, scope: !800)
!827 = !DILocation(line: 550, column: 11, scope: !800)
!828 = !DILocation(line: 553, column: 22, scope: !800)
!829 = !DILocation(line: 554, column: 11, scope: !800)
!830 = !DILocation(line: 557, column: 22, scope: !800)
!831 = !DILocation(line: 558, column: 11, scope: !800)
!832 = !DILocation(line: 560, column: 9, scope: !800)
!833 = !DILocation(line: 561, column: 9, scope: !800)
!834 = !DILocation(line: 563, column: 11, scope: !800)
!835 = !DILocation(line: 567, column: 8, scope: !836)
!836 = distinct !DILexicalBlock(scope: !771, file: !3, line: 567, column: 7)
!837 = !DILocation(line: 567, column: 7, scope: !771)
!838 = !DILocation(line: 568, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !3, line: 568, column: 5)
!840 = !DILocation(line: 570, column: 7, scope: !771)
!841 = !DILocation(line: 572, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 571, column: 5)
!843 = distinct !DILexicalBlock(scope: !771, file: !3, line: 570, column: 7)
!844 = !DILocation(line: 573, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 573, column: 9)
!846 = distinct !DILexicalBlock(scope: !842, file: !3, line: 572, column: 11)
!847 = !DILocation(line: 576, column: 11, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !3, line: 576, column: 11)
!849 = !DILocation(line: 576, column: 11, scope: !842)
!850 = !DILocation(line: 577, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 577, column: 9)
!852 = !DILocation(line: 582, column: 17, scope: !771)
!853 = !DILocation(line: 583, column: 19, scope: !771)
!854 = !DILocation(line: 583, column: 16, scope: !771)
!855 = !DILocation(line: 581, column: 3, scope: !771)
!856 = !DILocation(line: 585, column: 7, scope: !771)
!857 = !DILocation(line: 586, column: 11, scope: !858)
!858 = distinct !DILexicalBlock(scope: !771, file: !3, line: 585, column: 7)
!859 = !DILocation(line: 586, column: 5, scope: !858)
!860 = !DILocation(line: 588, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !771, file: !3, line: 588, column: 7)
!862 = !DILocation(line: 588, column: 31, scope: !861)
!863 = !DILocation(line: 588, column: 7, scope: !771)
!864 = !DILocation(line: 590, column: 37, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 589, column: 5)
!866 = !DILocation(line: 590, column: 35, scope: !865)
!867 = !DILocation(line: 591, column: 31, scope: !865)
!868 = !DILocation(line: 592, column: 31, scope: !865)
!869 = !DILocation(line: 593, column: 5, scope: !865)
!870 = !DILocation(line: 595, column: 33, scope: !771)
!871 = !DILocation(line: 596, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !771, file: !3, line: 596, column: 7)
!873 = !DILocation(line: 596, column: 14, scope: !872)
!874 = !DILocation(line: 596, column: 7, scope: !771)
!875 = !DILocation(line: 599, column: 28, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 599, column: 5)
!877 = distinct !DILexicalBlock(scope: !872, file: !3, line: 599, column: 5)
!878 = !DILocation(line: 599, column: 5, scope: !877)
!879 = !DILocation(line: 597, column: 10, scope: !872)
!880 = !DILocation(line: 597, column: 5, scope: !872)
!881 = !DILocation(line: 600, column: 23, scope: !876)
!882 = !DILocation(line: 600, column: 13, scope: !876)
!883 = !DILocation(line: 600, column: 10, scope: !876)
!884 = !DILocation(line: 599, column: 42, scope: !876)
!885 = distinct !{!885, !878, !886, !618}
!886 = !DILocation(line: 600, column: 47, scope: !877)
!887 = !DILocation(line: 603, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !771, file: !3, line: 603, column: 7)
!889 = !DILocation(line: 603, column: 23, scope: !888)
!890 = !DILocation(line: 603, column: 34, scope: !888)
!891 = !DILocation(line: 603, column: 26, scope: !888)
!892 = !DILocation(line: 603, column: 41, scope: !888)
!893 = !DILocation(line: 603, column: 7, scope: !771)
!894 = !DILocation(line: 605, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !888, file: !3, line: 604, column: 5)
!896 = !DILocation(line: 607, column: 5, scope: !895)
!897 = !DILocation(line: 609, column: 10, scope: !771)
!898 = !DILocation(line: 610, column: 1, scope: !771)
!899 = !DISubprogram(name: "bindtextdomain", scope: !641, file: !641, line: 86, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!900 = !DISubroutineType(types: !901)
!901 = !{!51, !59, !59}
!902 = !DISubprogram(name: "textdomain", scope: !641, file: !641, line: 82, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!903 = !DISubprogram(name: "atexit", scope: !762, file: !762, line: 602, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!904 = !DISubroutineType(types: !905)
!905 = !{!54, !294}
!906 = !DISubprogram(name: "getopt_long", scope: !184, file: !184, line: 66, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!907 = !DISubroutineType(types: !908)
!908 = !{!54, !54, !909, !59, !911, !189}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!912 = distinct !DISubprogram(name: "cut_bytes", scope: !3, file: !3, line: 232, type: !785, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!913 = !{!914, !915, !916, !917, !919, !931, !932}
!914 = !DILocalVariable(name: "stream", arg: 1, scope: !912, file: !3, line: 232, type: !107)
!915 = !DILocalVariable(name: "byte_idx", scope: !912, file: !3, line: 234, type: !173)
!916 = !DILocalVariable(name: "print_delimiter", scope: !912, file: !3, line: 237, type: !66)
!917 = !DILocalVariable(name: "c", scope: !918, file: !3, line: 244, type: !54)
!918 = distinct !DILexicalBlock(scope: !912, file: !3, line: 243, column: 5)
!919 = !DILocalVariable(name: "__ptr", scope: !920, file: !3, line: 274, type: !59)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 274, column: 27)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 274, column: 27)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 273, column: 21)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 272, column: 23)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 271, column: 17)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 270, column: 19)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 269, column: 13)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 268, column: 15)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 266, column: 9)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 256, column: 16)
!930 = distinct !DILexicalBlock(scope: !918, file: !3, line: 248, column: 11)
!931 = !DILocalVariable(name: "__stream", scope: !920, file: !3, line: 274, type: !107)
!932 = !DILocalVariable(name: "__cnt", scope: !920, file: !3, line: 274, type: !56)
!933 = !DILocation(line: 0, scope: !912)
!934 = !DILocation(line: 241, column: 16, scope: !912)
!935 = !DILocation(line: 241, column: 14, scope: !912)
!936 = !DILocation(line: 242, column: 3, scope: !912)
!937 = !DILocation(line: 68, column: 10, scope: !938, inlinedAt: !944)
!938 = distinct !DISubprogram(name: "getc_unlocked", scope: !939, file: !939, line: 66, type: !940, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !942)
!939 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!940 = !DISubroutineType(types: !941)
!941 = !{!54, !107}
!942 = !{!943}
!943 = !DILocalVariable(name: "__fp", arg: 1, scope: !938, file: !939, line: 66, type: !107)
!944 = distinct !DILocation(line: 246, column: 11, scope: !918)
!945 = !DILocation(line: 0, scope: !938, inlinedAt: !944)
!946 = !{!947, !549, i64 8}
!947 = !{!"_IO_FILE", !652, i64 0, !549, i64 8, !549, i64 16, !549, i64 24, !549, i64 32, !549, i64 40, !549, i64 48, !549, i64 56, !549, i64 64, !549, i64 72, !549, i64 80, !549, i64 88, !549, i64 96, !549, i64 104, !652, i64 112, !652, i64 116, !823, i64 120, !686, i64 128, !550, i64 130, !550, i64 131, !549, i64 136, !823, i64 144, !549, i64 152, !549, i64 160, !549, i64 168, !549, i64 176, !823, i64 184, !652, i64 192, !550, i64 196}
!948 = !{!947, !549, i64 16}
!949 = !{!"branch_weights", i32 2000, i32 1}
!950 = !DILocation(line: 0, scope: !918)
!951 = !DILocation(line: 248, column: 16, scope: !930)
!952 = !DILocation(line: 248, column: 13, scope: !930)
!953 = !DILocation(line: 248, column: 11, scope: !918)
!954 = !DILocalVariable(name: "__c", arg: 1, scope: !955, file: !939, line: 108, type: !54)
!955 = distinct !DISubprogram(name: "putchar_unlocked", scope: !939, file: !939, line: 108, type: !956, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{!54, !54}
!958 = !{!954}
!959 = !DILocation(line: 0, scope: !955, inlinedAt: !960)
!960 = distinct !DILocation(line: 250, column: 15, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 250, column: 15)
!962 = distinct !DILexicalBlock(scope: !930, file: !3, line: 249, column: 9)
!963 = !DILocation(line: 110, column: 10, scope: !955, inlinedAt: !960)
!964 = !{!947, !549, i64 40}
!965 = !{!947, !549, i64 48}
!966 = !DILocation(line: 250, column: 15, scope: !962)
!967 = !DILocation(line: 250, column: 27, scope: !961)
!968 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !972)
!969 = distinct !DISubprogram(name: "write_error", scope: !85, file: !85, line: 946, type: !295, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!970 = !{!971}
!971 = !DILocalVariable(name: "saved_errno", scope: !969, file: !85, line: 948, type: !54)
!972 = distinct !DILocation(line: 251, column: 13, scope: !961)
!973 = !DILocation(line: 0, scope: !969, inlinedAt: !972)
!974 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !972)
!975 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !972)
!976 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !972)
!977 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !972)
!978 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !972)
!979 = !DILocation(line: 254, column: 24, scope: !962)
!980 = !DILocation(line: 254, column: 22, scope: !962)
!981 = !DILocation(line: 255, column: 9, scope: !962)
!982 = !DILocation(line: 256, column: 18, scope: !929)
!983 = !DILocation(line: 256, column: 16, scope: !930)
!984 = !DILocation(line: 258, column: 24, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 258, column: 15)
!986 = distinct !DILexicalBlock(scope: !929, file: !3, line: 257, column: 9)
!987 = !DILocation(line: 258, column: 15, scope: !986)
!988 = !DILocation(line: 0, scope: !955, inlinedAt: !989)
!989 = distinct !DILocation(line: 260, column: 17, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 260, column: 17)
!991 = distinct !DILexicalBlock(scope: !985, file: !3, line: 259, column: 11)
!992 = !DILocation(line: 110, column: 10, scope: !955, inlinedAt: !989)
!993 = !DILocation(line: 260, column: 17, scope: !991)
!994 = !DILocation(line: 260, column: 38, scope: !990)
!995 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !996)
!996 = distinct !DILocation(line: 261, column: 15, scope: !990)
!997 = !DILocation(line: 0, scope: !969, inlinedAt: !996)
!998 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !996)
!999 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !996)
!1000 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !996)
!1001 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !996)
!1002 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !996)
!1003 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1004, file: !3, line: 206, type: !1007)
!1004 = distinct !DISubprogram(name: "next_item", scope: !3, file: !3, line: 206, type: !1005, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!1008 = !{!1003}
!1009 = !DILocation(line: 0, scope: !1004, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 267, column: 11, scope: !928)
!1011 = !DILocation(line: 208, column: 14, scope: !1004, inlinedAt: !1010)
!1012 = !DILocation(line: 209, column: 21, scope: !1013, inlinedAt: !1010)
!1013 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 209, column: 7)
!1014 = !DILocation(line: 209, column: 33, scope: !1013, inlinedAt: !1010)
!1015 = !{!1016, !823, i64 8}
!1016 = !{!"field_range_pair", !823, i64 0, !823, i64 8}
!1017 = !DILocation(line: 209, column: 19, scope: !1013, inlinedAt: !1010)
!1018 = !DILocation(line: 209, column: 7, scope: !1004, inlinedAt: !1010)
!1019 = !DILocation(line: 210, column: 15, scope: !1013, inlinedAt: !1010)
!1020 = !DILocation(line: 210, column: 5, scope: !1013, inlinedAt: !1010)
!1021 = !DILocation(line: 218, column: 10, scope: !1022, inlinedAt: !1027)
!1022 = distinct !DISubprogram(name: "print_kth", scope: !3, file: !3, line: 216, type: !1023, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1025)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!66, !173}
!1025 = !{!1026}
!1026 = !DILocalVariable(name: "k", arg: 1, scope: !1022, file: !3, line: 216, type: !173)
!1027 = distinct !DILocation(line: 268, column: 15, scope: !927)
!1028 = !DILocation(line: 0, scope: !1022, inlinedAt: !1027)
!1029 = !DILocation(line: 218, column: 22, scope: !1022, inlinedAt: !1027)
!1030 = !{!1016, !823, i64 0}
!1031 = !DILocation(line: 218, column: 25, scope: !1022, inlinedAt: !1027)
!1032 = !DILocation(line: 268, column: 15, scope: !928)
!1033 = !DILocation(line: 270, column: 19, scope: !925)
!1034 = !DILocation(line: 270, column: 43, scope: !925)
!1035 = !DILocation(line: 270, column: 19, scope: !926)
!1036 = !DILocalVariable(name: "k", arg: 1, scope: !1037, file: !3, line: 224, type: !173)
!1037 = distinct !DISubprogram(name: "is_range_start_index", scope: !3, file: !3, line: 224, type: !1023, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1038)
!1038 = !{!1036}
!1039 = !DILocation(line: 0, scope: !1037, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 272, column: 42, scope: !923)
!1041 = !DILocation(line: 226, column: 12, scope: !1037, inlinedAt: !1040)
!1042 = !DILocation(line: 272, column: 23, scope: !924)
!1043 = !DILocation(line: 274, column: 27, scope: !921)
!1044 = !DILocation(line: 276, column: 30, scope: !921)
!1045 = !DILocation(line: 276, column: 27, scope: !921)
!1046 = !DILocation(line: 274, column: 27, scope: !922)
!1047 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 277, column: 25, scope: !921)
!1049 = !DILocation(line: 0, scope: !969, inlinedAt: !1048)
!1050 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !1048)
!1051 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !1048)
!1052 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !1048)
!1053 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !1048)
!1054 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !1048)
!1055 = !DILocation(line: 0, scope: !955, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 282, column: 19, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !926, file: !3, line: 282, column: 19)
!1058 = !DILocation(line: 110, column: 10, scope: !955, inlinedAt: !1056)
!1059 = !DILocation(line: 282, column: 19, scope: !926)
!1060 = !DILocation(line: 282, column: 31, scope: !1057)
!1061 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 283, column: 17, scope: !1057)
!1063 = !DILocation(line: 0, scope: !969, inlinedAt: !1062)
!1064 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !1062)
!1065 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !1062)
!1066 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !1062)
!1067 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !1062)
!1068 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !1062)
!1069 = !DILocation(line: 287, column: 1, scope: !912)
!1070 = distinct !DISubprogram(name: "cut_fields", scope: !3, file: !3, line: 292, type: !785, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1083, !1084, !1091, !1092, !1093, !1098, !1099, !1100, !1103, !1104, !1111, !1112, !1113}
!1072 = !DILocalVariable(name: "stream", arg: 1, scope: !1070, file: !3, line: 292, type: !107)
!1073 = !DILocalVariable(name: "c", scope: !1070, file: !3, line: 294, type: !54)
!1074 = !DILocalVariable(name: "field_idx", scope: !1070, file: !3, line: 295, type: !173)
!1075 = !DILocalVariable(name: "found_any_selected_field", scope: !1070, file: !3, line: 296, type: !66)
!1076 = !DILocalVariable(name: "buffer_first_field", scope: !1070, file: !3, line: 297, type: !66)
!1077 = !DILocalVariable(name: "len", scope: !1078, file: !3, line: 320, type: !1081)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 319, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 318, column: 11)
!1080 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 317, column: 5)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !268, line: 77, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !134, line: 194, baseType: !135)
!1083 = !DILocalVariable(name: "n_bytes", scope: !1078, file: !3, line: 321, type: !56)
!1084 = !DILocalVariable(name: "__ptr", scope: !1085, file: !3, line: 350, type: !59)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 350, column: 23)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 350, column: 23)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 349, column: 17)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 344, column: 19)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 343, column: 13)
!1090 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 342, column: 15)
!1091 = !DILocalVariable(name: "__stream", scope: !1085, file: !3, line: 350, type: !107)
!1092 = !DILocalVariable(name: "__cnt", scope: !1085, file: !3, line: 350, type: !56)
!1093 = !DILocalVariable(name: "__ptr", scope: !1094, file: !3, line: 367, type: !59)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 367, column: 19)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 367, column: 19)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 365, column: 13)
!1097 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 364, column: 15)
!1098 = !DILocalVariable(name: "__stream", scope: !1094, file: !3, line: 367, type: !107)
!1099 = !DILocalVariable(name: "__cnt", scope: !1094, file: !3, line: 367, type: !56)
!1100 = !DILocalVariable(name: "last_c", scope: !1101, file: !3, line: 374, type: !54)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 373, column: 17)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 372, column: 19)
!1103 = !DILocalVariable(name: "prev_c", scope: !1080, file: !3, line: 389, type: !54)
!1104 = !DILocalVariable(name: "__ptr", scope: !1105, file: !3, line: 395, type: !59)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 395, column: 19)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 395, column: 19)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 394, column: 13)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 393, column: 15)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 392, column: 9)
!1110 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 391, column: 11)
!1111 = !DILocalVariable(name: "__stream", scope: !1105, file: !3, line: 395, type: !107)
!1112 = !DILocalVariable(name: "__cnt", scope: !1105, file: !3, line: 395, type: !56)
!1113 = !DILocalVariable(name: "last_c", scope: !1114, file: !3, line: 418, type: !54)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 417, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 416, column: 11)
!1116 = !DILocation(line: 0, scope: !1070)
!1117 = !DILocation(line: 299, column: 16, scope: !1070)
!1118 = !DILocation(line: 299, column: 14, scope: !1070)
!1119 = !DILocation(line: 0, scope: !938, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 301, column: 7, scope: !1070)
!1121 = !DILocation(line: 68, column: 10, scope: !938, inlinedAt: !1120)
!1122 = !DILocation(line: 302, column: 7, scope: !1070)
!1123 = !DILocation(line: 302, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 302, column: 7)
!1125 = !DILocation(line: 305, column: 3, scope: !1070)
!1126 = !DILocation(line: 314, column: 25, scope: !1070)
!1127 = !DILocation(line: 0, scope: !1022, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 314, column: 51, scope: !1070)
!1129 = !DILocation(line: 218, column: 10, scope: !1022, inlinedAt: !1128)
!1130 = !DILocation(line: 218, column: 22, scope: !1022, inlinedAt: !1128)
!1131 = !DILocation(line: 218, column: 25, scope: !1022, inlinedAt: !1128)
!1132 = !DILocation(line: 314, column: 48, scope: !1070)
!1133 = !DILocation(line: 316, column: 3, scope: !1070)
!1134 = !DILocation(line: 318, column: 21, scope: !1079)
!1135 = !DILocation(line: 318, column: 26, scope: !1079)
!1136 = !DILocation(line: 218, column: 10, scope: !1022, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 391, column: 11, scope: !1110)
!1138 = !DILocation(line: 324, column: 48, scope: !1078)
!1139 = !DILocation(line: 324, column: 55, scope: !1078)
!1140 = !DILocation(line: 323, column: 17, scope: !1078)
!1141 = !DILocation(line: 0, scope: !1078)
!1142 = !DILocation(line: 325, column: 19, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 325, column: 15)
!1144 = !DILocation(line: 325, column: 15, scope: !1078)
!1145 = !DILocation(line: 327, column: 21, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 326, column: 13)
!1147 = !DILocation(line: 327, column: 15, scope: !1146)
!1148 = !DILocation(line: 328, column: 30, scope: !1146)
!1149 = !DILocalVariable(name: "__stream", arg: 1, scope: !1150, file: !939, line: 135, type: !107)
!1150 = distinct !DISubprogram(name: "ferror_unlocked", scope: !939, file: !939, line: 135, type: !940, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1151)
!1151 = !{!1149}
!1152 = !DILocation(line: 0, scope: !1150, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 329, column: 19, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 329, column: 19)
!1155 = !DILocation(line: 137, column: 10, scope: !1150, inlinedAt: !1153)
!1156 = !{!947, !652, i64 0}
!1157 = !DILocation(line: 329, column: 35, scope: !1154)
!1158 = !DILocation(line: 331, column: 15, scope: !1146)
!1159 = !DILocation(line: 335, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 335, column: 11)
!1161 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 335, column: 11)
!1162 = !DILocation(line: 335, column: 11, scope: !1161)
!1163 = !DILocation(line: 342, column: 25, scope: !1090)
!1164 = !DILocation(line: 342, column: 48, scope: !1090)
!1165 = !DILocation(line: 342, column: 57, scope: !1090)
!1166 = !DILocation(line: 342, column: 54, scope: !1090)
!1167 = !DILocation(line: 342, column: 15, scope: !1078)
!1168 = !DILocation(line: 344, column: 19, scope: !1088)
!1169 = !DILocation(line: 344, column: 19, scope: !1089)
!1170 = !DILocation(line: 0, scope: !1086)
!1171 = !DILocation(line: 350, column: 23, scope: !1086)
!1172 = !DILocation(line: 351, column: 23, scope: !1086)
!1173 = !DILocation(line: 350, column: 23, scope: !1087)
!1174 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 352, column: 21, scope: !1086)
!1176 = !DILocation(line: 0, scope: !969, inlinedAt: !1175)
!1177 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !1175)
!1178 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !1175)
!1179 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !1175)
!1180 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !1175)
!1181 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !1175)
!1182 = !DILocation(line: 354, column: 23, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 354, column: 23)
!1184 = !DILocation(line: 354, column: 54, scope: !1183)
!1185 = !DILocation(line: 354, column: 51, scope: !1183)
!1186 = !DILocation(line: 354, column: 23, scope: !1087)
!1187 = distinct !{!1187, !1133, !1188}
!1188 = !DILocation(line: 448, column: 5, scope: !1070)
!1189 = !DILocation(line: 0, scope: !955, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 356, column: 27, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 356, column: 27)
!1192 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 355, column: 21)
!1193 = !DILocation(line: 110, column: 10, scope: !955, inlinedAt: !1190)
!1194 = !DILocation(line: 356, column: 27, scope: !1192)
!1195 = !DILocation(line: 356, column: 48, scope: !1191)
!1196 = !DILocation(line: 359, column: 23, scope: !1087)
!1197 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 357, column: 25, scope: !1191)
!1199 = !DILocation(line: 0, scope: !969, inlinedAt: !1198)
!1200 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !1198)
!1201 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !1198)
!1202 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !1198)
!1203 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !1198)
!1204 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !1198)
!1205 = !DILocation(line: 0, scope: !1022, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 364, column: 15, scope: !1097)
!1207 = !DILocation(line: 218, column: 10, scope: !1022, inlinedAt: !1206)
!1208 = !DILocation(line: 218, column: 22, scope: !1022, inlinedAt: !1206)
!1209 = !DILocation(line: 218, column: 25, scope: !1022, inlinedAt: !1206)
!1210 = !DILocation(line: 364, column: 15, scope: !1078)
!1211 = !DILocation(line: 367, column: 19, scope: !1095)
!1212 = !DILocation(line: 368, column: 19, scope: !1095)
!1213 = !DILocation(line: 367, column: 19, scope: !1096)
!1214 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 369, column: 17, scope: !1095)
!1216 = !DILocation(line: 0, scope: !969, inlinedAt: !1215)
!1217 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !1215)
!1218 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !1215)
!1219 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !1215)
!1220 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !1215)
!1221 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !1215)
!1222 = !DILocation(line: 372, column: 19, scope: !1102)
!1223 = !DILocation(line: 372, column: 28, scope: !1102)
!1224 = !DILocation(line: 372, column: 25, scope: !1102)
!1225 = !DILocation(line: 372, column: 19, scope: !1096)
!1226 = !DILocation(line: 0, scope: !938, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 374, column: 32, scope: !1101)
!1228 = !DILocation(line: 68, column: 10, scope: !938, inlinedAt: !1227)
!1229 = !DILocation(line: 0, scope: !1101)
!1230 = !DILocation(line: 375, column: 23, scope: !1101)
!1231 = !DILocation(line: 375, column: 30, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 375, column: 23)
!1233 = !DILocation(line: 377, column: 23, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 376, column: 21)
!1235 = !DILocation(line: 379, column: 21, scope: !1234)
!1236 = !DILocation(line: 0, scope: !1004, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 386, column: 11, scope: !1078)
!1238 = !DILocation(line: 209, column: 21, scope: !1013, inlinedAt: !1237)
!1239 = !DILocation(line: 209, column: 33, scope: !1013, inlinedAt: !1237)
!1240 = !DILocation(line: 209, column: 19, scope: !1013, inlinedAt: !1237)
!1241 = !DILocation(line: 209, column: 7, scope: !1004, inlinedAt: !1237)
!1242 = !DILocation(line: 210, column: 15, scope: !1013, inlinedAt: !1237)
!1243 = !DILocation(line: 210, column: 5, scope: !1013, inlinedAt: !1237)
!1244 = !DILocation(line: 295, column: 13, scope: !1070)
!1245 = !DILocation(line: 306, column: 5, scope: !1070)
!1246 = !DILocation(line: 0, scope: !1080)
!1247 = !DILocation(line: 0, scope: !1022, inlinedAt: !1137)
!1248 = !DILocation(line: 218, column: 22, scope: !1022, inlinedAt: !1137)
!1249 = !DILocation(line: 218, column: 25, scope: !1022, inlinedAt: !1137)
!1250 = !DILocation(line: 391, column: 11, scope: !1080)
!1251 = !DILocation(line: 393, column: 15, scope: !1109)
!1252 = !DILocation(line: 402, column: 11, scope: !1109)
!1253 = !DILocation(line: 395, column: 19, scope: !1106)
!1254 = !DILocation(line: 397, column: 22, scope: !1106)
!1255 = !DILocation(line: 397, column: 19, scope: !1106)
!1256 = !DILocation(line: 395, column: 19, scope: !1107)
!1257 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 398, column: 17, scope: !1106)
!1259 = !DILocation(line: 0, scope: !969, inlinedAt: !1258)
!1260 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !1258)
!1261 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !1258)
!1262 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !1258)
!1263 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !1258)
!1264 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !1258)
!1265 = !DILocation(line: 0, scope: !938, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 402, column: 23, scope: !1109)
!1267 = !DILocation(line: 68, column: 10, scope: !938, inlinedAt: !1266)
!1268 = !DILocation(line: 402, column: 41, scope: !1109)
!1269 = !DILocation(line: 402, column: 38, scope: !1109)
!1270 = !DILocation(line: 402, column: 47, scope: !1109)
!1271 = !DILocation(line: 402, column: 55, scope: !1109)
!1272 = !DILocation(line: 402, column: 52, scope: !1109)
!1273 = !DILocation(line: 402, column: 66, scope: !1109)
!1274 = !DILocation(line: 0, scope: !955, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 404, column: 19, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 404, column: 19)
!1277 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 403, column: 13)
!1278 = !DILocation(line: 110, column: 10, scope: !955, inlinedAt: !1275)
!1279 = !DILocation(line: 404, column: 19, scope: !1277)
!1280 = distinct !{!1280, !1252, !1281, !618}
!1281 = !DILocation(line: 407, column: 13, scope: !1109)
!1282 = !DILocation(line: 404, column: 31, scope: !1276)
!1283 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 405, column: 17, scope: !1276)
!1285 = !DILocation(line: 0, scope: !969, inlinedAt: !1284)
!1286 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !1284)
!1287 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !1284)
!1288 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !1284)
!1289 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !1284)
!1290 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !1284)
!1291 = !DILocation(line: 0, scope: !938, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 411, column: 23, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 410, column: 9)
!1294 = !DILocation(line: 68, column: 10, scope: !938, inlinedAt: !1292)
!1295 = !DILocation(line: 411, column: 41, scope: !1293)
!1296 = !DILocation(line: 411, column: 38, scope: !1293)
!1297 = !DILocation(line: 411, column: 47, scope: !1293)
!1298 = !DILocation(line: 411, column: 55, scope: !1293)
!1299 = !DILocation(line: 411, column: 52, scope: !1293)
!1300 = !DILocation(line: 411, column: 66, scope: !1293)
!1301 = distinct !{!1301, !1302, !1303, !618}
!1302 = !DILocation(line: 411, column: 11, scope: !1293)
!1303 = !DILocation(line: 412, column: 22, scope: !1293)
!1304 = !DILocation(line: 389, column: 11, scope: !1080)
!1305 = !DILocation(line: 0, scope: !1110)
!1306 = !DILocation(line: 416, column: 20, scope: !1115)
!1307 = !DILocation(line: 416, column: 17, scope: !1115)
!1308 = !DILocation(line: 416, column: 31, scope: !1115)
!1309 = !DILocation(line: 0, scope: !938, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 418, column: 24, scope: !1114)
!1311 = !DILocation(line: 68, column: 10, scope: !938, inlinedAt: !1310)
!1312 = !DILocation(line: 0, scope: !1114)
!1313 = !DILocation(line: 419, column: 15, scope: !1114)
!1314 = !DILocation(line: 419, column: 22, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 419, column: 15)
!1316 = !DILocation(line: 425, column: 16, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 425, column: 11)
!1318 = !DILocation(line: 427, column: 21, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 427, column: 16)
!1320 = !DILocation(line: 427, column: 32, scope: !1319)
!1321 = !DILocation(line: 420, column: 13, scope: !1315)
!1322 = !DILocation(line: 425, column: 13, scope: !1317)
!1323 = !DILocation(line: 425, column: 11, scope: !1080)
!1324 = !DILocation(line: 0, scope: !1004, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 426, column: 9, scope: !1317)
!1326 = !DILocation(line: 208, column: 14, scope: !1004, inlinedAt: !1325)
!1327 = !DILocation(line: 209, column: 21, scope: !1013, inlinedAt: !1325)
!1328 = !DILocation(line: 209, column: 33, scope: !1013, inlinedAt: !1325)
!1329 = !DILocation(line: 209, column: 19, scope: !1013, inlinedAt: !1325)
!1330 = !DILocation(line: 209, column: 7, scope: !1004, inlinedAt: !1325)
!1331 = !DILocation(line: 210, column: 15, scope: !1013, inlinedAt: !1325)
!1332 = !DILocation(line: 210, column: 5, scope: !1013, inlinedAt: !1325)
!1333 = !DILocation(line: 427, column: 18, scope: !1319)
!1334 = !DILocation(line: 430, column: 15, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 429, column: 15)
!1336 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 428, column: 9)
!1337 = !DILocation(line: 430, column: 20, scope: !1335)
!1338 = !DILocation(line: 430, column: 43, scope: !1335)
!1339 = !DILocation(line: 433, column: 21, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 433, column: 19)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 431, column: 13)
!1342 = !DILocation(line: 433, column: 35, scope: !1340)
!1343 = !DILocation(line: 0, scope: !955, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 436, column: 23, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 436, column: 23)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 435, column: 17)
!1347 = !DILocation(line: 110, column: 10, scope: !955, inlinedAt: !1344)
!1348 = !DILocation(line: 440, column: 15, scope: !1336)
!1349 = !DILocation(line: 436, column: 44, scope: !1345)
!1350 = !DILocation(line: 436, column: 23, scope: !1346)
!1351 = !DILocation(line: 948, column: 21, scope: !969, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 437, column: 21, scope: !1345)
!1353 = !DILocation(line: 0, scope: !969, inlinedAt: !1352)
!1354 = !DILocation(line: 949, column: 3, scope: !969, inlinedAt: !1352)
!1355 = !DILocation(line: 950, column: 11, scope: !969, inlinedAt: !1352)
!1356 = !DILocation(line: 950, column: 3, scope: !969, inlinedAt: !1352)
!1357 = !DILocation(line: 951, column: 3, scope: !969, inlinedAt: !1352)
!1358 = !DILocation(line: 952, column: 3, scope: !969, inlinedAt: !1352)
!1359 = !DILocation(line: 445, column: 24, scope: !1336)
!1360 = !DILocation(line: 445, column: 22, scope: !1336)
!1361 = !DILocation(line: 447, column: 9, scope: !1336)
!1362 = !DILocation(line: 449, column: 1, scope: !1070)
!1363 = distinct !DISubprogram(name: "cut_file", scope: !3, file: !3, line: 455, type: !1364, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!66, !59, !784}
!1366 = !{!1367, !1368, !1369, !1370}
!1367 = !DILocalVariable(name: "file", arg: 1, scope: !1363, file: !3, line: 455, type: !59)
!1368 = !DILocalVariable(name: "cut_stream", arg: 2, scope: !1363, file: !3, line: 455, type: !784)
!1369 = !DILocalVariable(name: "stream", scope: !1363, file: !3, line: 457, type: !107)
!1370 = !DILocalVariable(name: "err", scope: !1363, file: !3, line: 479, type: !54)
!1371 = !DILocation(line: 0, scope: !1363)
!1372 = !DILocation(line: 0, scope: !601, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 459, column: 7, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 459, column: 7)
!1375 = !DILocation(line: 1361, column: 11, scope: !601, inlinedAt: !1373)
!1376 = !DILocation(line: 1361, column: 10, scope: !601, inlinedAt: !1373)
!1377 = !DILocation(line: 459, column: 7, scope: !1363)
!1378 = !DILocation(line: 461, column: 23, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 460, column: 5)
!1380 = !DILocation(line: 462, column: 16, scope: !1379)
!1381 = !DILocation(line: 464, column: 5, scope: !1379)
!1382 = !DILocation(line: 467, column: 16, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 466, column: 5)
!1384 = !DILocation(line: 468, column: 18, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 468, column: 11)
!1386 = !DILocation(line: 468, column: 11, scope: !1383)
!1387 = !DILocation(line: 470, column: 11, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 469, column: 9)
!1389 = !DILocation(line: 471, column: 11, scope: !1388)
!1390 = !DILocation(line: 0, scope: !1374)
!1391 = !DILocation(line: 475, column: 3, scope: !1363)
!1392 = !DILocation(line: 477, column: 3, scope: !1363)
!1393 = !{void (%struct._IO_FILE*)* @cut_bytes, void (%struct._IO_FILE*)* @cut_fields}
!1394 = !DILocation(line: 479, column: 13, scope: !1363)
!1395 = !DILocation(line: 0, scope: !1150, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 480, column: 8, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 480, column: 7)
!1398 = !DILocation(line: 137, column: 10, scope: !1150, inlinedAt: !1396)
!1399 = !DILocation(line: 480, column: 8, scope: !1397)
!1400 = !DILocation(line: 480, column: 7, scope: !1363)
!1401 = !DILocation(line: 0, scope: !601, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 482, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 482, column: 7)
!1404 = !DILocation(line: 1361, column: 11, scope: !601, inlinedAt: !1402)
!1405 = !DILocation(line: 1361, column: 10, scope: !601, inlinedAt: !1402)
!1406 = !DILocation(line: 482, column: 7, scope: !1363)
!1407 = !DILocation(line: 483, column: 5, scope: !1403)
!1408 = !DILocation(line: 484, column: 12, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 484, column: 12)
!1410 = !DILocation(line: 484, column: 28, scope: !1409)
!1411 = !DILocation(line: 484, column: 12, scope: !1403)
!1412 = !DILocation(line: 485, column: 11, scope: !1409)
!1413 = !DILocation(line: 485, column: 5, scope: !1409)
!1414 = !DILocation(line: 486, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 486, column: 7)
!1416 = !DILocation(line: 486, column: 7, scope: !1363)
!1417 = !DILocation(line: 492, column: 1, scope: !1363)
!1418 = !DISubprogram(name: "clearerr_unlocked", scope: !268, file: !268, line: 794, type: !785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!1419 = !DISubprogram(name: "ungetc", scope: !268, file: !268, line: 668, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!54, !54, !107}
!1422 = !DISubprogram(name: "fflush_unlocked", scope: !268, file: !268, line: 239, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!1423 = !DILocation(line: 0, scope: !199)
!1424 = !DILocation(line: 149, column: 16, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !199, file: !200, line: 149, column: 7)
!1426 = !DILocation(line: 149, column: 37, scope: !1425)
!1427 = !DILocalVariable(name: "__s1", arg: 1, scope: !1428, file: !602, line: 1359, type: !59)
!1428 = distinct !DISubprogram(name: "streq", scope: !602, file: !602, line: 1359, type: !603, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1429)
!1429 = !{!1427, !1430}
!1430 = !DILocalVariable(name: "__s2", arg: 2, scope: !1428, file: !602, line: 1359, type: !59)
!1431 = !DILocation(line: 0, scope: !1428, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 149, column: 40, scope: !1425)
!1433 = !DILocation(line: 1361, column: 11, scope: !1428, inlinedAt: !1432)
!1434 = !DILocation(line: 1361, column: 10, scope: !1428, inlinedAt: !1432)
!1435 = !DILocation(line: 149, column: 7, scope: !199)
!1436 = !DILocation(line: 154, column: 15, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1425, file: !200, line: 150, column: 5)
!1438 = !DILocation(line: 155, column: 5, scope: !1437)
!1439 = !DILocation(line: 157, column: 3, scope: !199)
!1440 = !DILocation(line: 159, column: 11, scope: !236)
!1441 = !DILocation(line: 159, column: 11, scope: !237)
!1442 = !DILocation(line: 163, column: 15, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !236, file: !200, line: 160, column: 9)
!1444 = !DILocation(line: 164, column: 13, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !200, line: 164, column: 13)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !200, line: 163, column: 15)
!1447 = !DILocation(line: 171, column: 29, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !200, line: 171, column: 15)
!1449 = !DILocation(line: 172, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1448, file: !200, line: 172, column: 13)
!1451 = !DILocation(line: 176, column: 22, scope: !1443)
!1452 = !DILocation(line: 178, column: 9, scope: !1443)
!1453 = !DILocation(line: 180, column: 19, scope: !235)
!1454 = !DILocation(line: 180, column: 50, scope: !235)
!1455 = !DILocation(line: 184, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !235, file: !200, line: 181, column: 9)
!1457 = !DILocation(line: 188, column: 34, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !200, line: 188, column: 19)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !200, line: 185, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !200, line: 184, column: 15)
!1461 = !DILocation(line: 194, column: 21, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !200, line: 194, column: 21)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !200, line: 191, column: 23)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !200, line: 189, column: 17)
!1465 = !DILocation(line: 199, column: 19, scope: !1459)
!1466 = !DILocalVariable(name: "lo", arg: 1, scope: !1467, file: !200, line: 47, type: !173)
!1467 = distinct !DISubprogram(name: "add_range_pair", scope: !200, file: !200, line: 47, type: !1468, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !173, !173}
!1470 = !{!1466, !1471}
!1471 = !DILocalVariable(name: "hi", arg: 2, scope: !1467, file: !200, line: 47, type: !173)
!1472 = !DILocation(line: 0, scope: !1467, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 202, column: 19, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !200, line: 200, column: 17)
!1475 = distinct !DILexicalBlock(scope: !1459, file: !200, line: 199, column: 19)
!1476 = !DILocation(line: 49, column: 7, scope: !1477, inlinedAt: !1473)
!1477 = distinct !DILexicalBlock(scope: !1467, file: !200, line: 49, column: 7)
!1478 = !DILocation(line: 49, column: 16, scope: !1477, inlinedAt: !1473)
!1479 = !DILocation(line: 49, column: 13, scope: !1477, inlinedAt: !1473)
!1480 = !DILocation(line: 49, column: 7, scope: !1467, inlinedAt: !1473)
!1481 = !DILocation(line: 51, column: 3, scope: !1467, inlinedAt: !1473)
!1482 = !DILocation(line: 50, column: 20, scope: !1477, inlinedAt: !1473)
!1483 = !DILocation(line: 50, column: 11, scope: !1477, inlinedAt: !1473)
!1484 = !DILocation(line: 50, column: 9, scope: !1477, inlinedAt: !1473)
!1485 = !DILocation(line: 50, column: 5, scope: !1477, inlinedAt: !1473)
!1486 = !DILocation(line: 51, column: 7, scope: !1467, inlinedAt: !1473)
!1487 = !DILocation(line: 51, column: 14, scope: !1467, inlinedAt: !1473)
!1488 = !DILocation(line: 51, column: 17, scope: !1467, inlinedAt: !1473)
!1489 = !DILocation(line: 203, column: 17, scope: !1474)
!1490 = !DILocation(line: 207, column: 29, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !200, line: 207, column: 23)
!1492 = distinct !DILexicalBlock(scope: !1475, file: !200, line: 205, column: 17)
!1493 = !DILocation(line: 207, column: 23, scope: !1492)
!1494 = !DILocation(line: 208, column: 21, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !200, line: 208, column: 21)
!1496 = !DILocation(line: 0, scope: !1467, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 210, column: 19, scope: !1492)
!1498 = !DILocation(line: 49, column: 7, scope: !1477, inlinedAt: !1497)
!1499 = !DILocation(line: 49, column: 16, scope: !1477, inlinedAt: !1497)
!1500 = !DILocation(line: 49, column: 13, scope: !1477, inlinedAt: !1497)
!1501 = !DILocation(line: 49, column: 7, scope: !1467, inlinedAt: !1497)
!1502 = !DILocation(line: 51, column: 3, scope: !1467, inlinedAt: !1497)
!1503 = !DILocation(line: 50, column: 20, scope: !1477, inlinedAt: !1497)
!1504 = !DILocation(line: 50, column: 11, scope: !1477, inlinedAt: !1497)
!1505 = !DILocation(line: 50, column: 9, scope: !1477, inlinedAt: !1497)
!1506 = !DILocation(line: 50, column: 5, scope: !1477, inlinedAt: !1497)
!1507 = !DILocation(line: 51, column: 7, scope: !1467, inlinedAt: !1497)
!1508 = !DILocation(line: 51, column: 14, scope: !1467, inlinedAt: !1497)
!1509 = !DILocation(line: 51, column: 17, scope: !1467, inlinedAt: !1497)
!1510 = !DILocation(line: 217, column: 25, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !200, line: 217, column: 19)
!1512 = distinct !DILexicalBlock(scope: !1460, file: !200, line: 215, column: 13)
!1513 = !DILocation(line: 217, column: 19, scope: !1512)
!1514 = !DILocation(line: 218, column: 17, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !200, line: 218, column: 17)
!1516 = !DILocation(line: 0, scope: !1467, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 222, column: 15, scope: !1512)
!1518 = !DILocation(line: 49, column: 7, scope: !1477, inlinedAt: !1517)
!1519 = !DILocation(line: 49, column: 16, scope: !1477, inlinedAt: !1517)
!1520 = !DILocation(line: 49, column: 13, scope: !1477, inlinedAt: !1517)
!1521 = !DILocation(line: 49, column: 7, scope: !1467, inlinedAt: !1517)
!1522 = !DILocation(line: 51, column: 3, scope: !1467, inlinedAt: !1517)
!1523 = !DILocation(line: 50, column: 20, scope: !1477, inlinedAt: !1517)
!1524 = !DILocation(line: 50, column: 11, scope: !1477, inlinedAt: !1517)
!1525 = !DILocation(line: 50, column: 9, scope: !1477, inlinedAt: !1517)
!1526 = !DILocation(line: 50, column: 5, scope: !1477, inlinedAt: !1517)
!1527 = !DILocation(line: 51, column: 7, scope: !1467, inlinedAt: !1517)
!1528 = !DILocation(line: 51, column: 14, scope: !1467, inlinedAt: !1517)
!1529 = !DILocation(line: 51, column: 17, scope: !1467, inlinedAt: !1517)
!1530 = !DILocation(line: 138, column: 13, scope: !199)
!1531 = !DILocation(line: 0, scope: !1460)
!1532 = !DILocation(line: 226, column: 15, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1456, file: !200, line: 226, column: 15)
!1534 = !DILocation(line: 226, column: 25, scope: !1533)
!1535 = !DILocation(line: 226, column: 15, scope: !1456)
!1536 = !DILocation(line: 180, column: 53, scope: !235)
!1537 = !DILocalVariable(name: "c", arg: 1, scope: !1538, file: !1539, line: 233, type: !54)
!1538 = distinct !DISubprogram(name: "c_isdigit", scope: !1539, file: !1539, line: 233, type: !1540, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1542)
!1539 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!66, !54}
!1542 = !{!1537}
!1543 = !DILocation(line: 0, scope: !1538, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 233, column: 16, scope: !234)
!1545 = !DILocation(line: 235, column: 3, scope: !1538, inlinedAt: !1544)
!1546 = !DILocation(line: 233, column: 16, scope: !235)
!1547 = !DILocation(line: 238, column: 26, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !233, file: !200, line: 238, column: 15)
!1549 = !DILocation(line: 239, column: 23, scope: !1548)
!1550 = !DILocation(line: 239, column: 13, scope: !1548)
!1551 = !DILocation(line: 248, column: 16, scope: !232)
!1552 = !DILocation(line: 249, column: 15, scope: !232)
!1553 = !DILocation(line: 254, column: 42, scope: !231)
!1554 = !DILocation(line: 253, column: 31, scope: !231)
!1555 = !DILocation(line: 0, scope: !231)
!1556 = !DILocation(line: 255, column: 15, scope: !231)
!1557 = !DILocation(line: 259, column: 15, scope: !231)
!1558 = !DILocation(line: 260, column: 15, scope: !231)
!1559 = !DILocation(line: 267, column: 11, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !234, file: !200, line: 266, column: 9)
!1561 = !DILocation(line: 271, column: 11, scope: !1560)
!1562 = !DILocation(line: 0, scope: !236)
!1563 = distinct !{!1563, !1439, !1564}
!1564 = !DILocation(line: 273, column: 5, scope: !199)
!1565 = !DILocation(line: 275, column: 8, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !199, file: !200, line: 275, column: 7)
!1567 = !DILocation(line: 275, column: 7, scope: !199)
!1568 = !DILocation(line: 276, column: 5, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !200, line: 276, column: 5)
!1570 = !DILocation(line: 280, column: 3, scope: !199)
!1571 = !DILocation(line: 0, scope: !239)
!1572 = !DILocation(line: 283, column: 25, scope: !243)
!1573 = !DILocation(line: 283, column: 23, scope: !243)
!1574 = !DILocation(line: 283, column: 3, scope: !239)
!1575 = !DILocation(line: 299, column: 15, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !199, file: !200, line: 299, column: 7)
!1577 = !DILocation(line: 299, column: 7, scope: !199)
!1578 = !DILocation(line: 285, column: 24, scope: !241)
!1579 = !DILocation(line: 0, scope: !241)
!1580 = !DILocation(line: 285, column: 31, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !241, file: !200, line: 285, column: 7)
!1582 = !DILocation(line: 285, column: 7, scope: !241)
!1583 = !DILocation(line: 287, column: 15, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !200, line: 287, column: 15)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !200, line: 286, column: 9)
!1586 = !DILocation(line: 287, column: 22, scope: !1584)
!1587 = !DILocation(line: 287, column: 35, scope: !1584)
!1588 = !DILocation(line: 287, column: 25, scope: !1584)
!1589 = !DILocation(line: 287, column: 15, scope: !1585)
!1590 = distinct !{!1590, !1582, !1591, !618}
!1591 = !DILocation(line: 296, column: 9, scope: !241)
!1592 = !DILocation(line: 289, column: 27, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1584, file: !200, line: 288, column: 13)
!1594 = !DILocation(line: 289, column: 25, scope: !1593)
!1595 = !DILocation(line: 290, column: 28, scope: !1593)
!1596 = !DILocation(line: 290, column: 24, scope: !1593)
!1597 = !DILocation(line: 290, column: 41, scope: !1593)
!1598 = !DILocation(line: 290, column: 33, scope: !1593)
!1599 = !DILocation(line: 290, column: 47, scope: !1593)
!1600 = !DILocation(line: 290, column: 57, scope: !1593)
!1601 = !DILocation(line: 290, column: 62, scope: !1593)
!1602 = !DILocalVariable(name: "__dest", arg: 1, scope: !1603, file: !1604, line: 34, type: !53)
!1603 = distinct !DISubprogram(name: "memmove", scope: !1604, file: !1604, line: 34, type: !1605, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1607)
!1604 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!53, !53, !769, !56}
!1607 = !{!1602, !1608, !1609}
!1608 = !DILocalVariable(name: "__src", arg: 2, scope: !1603, file: !1604, line: 34, type: !769)
!1609 = !DILocalVariable(name: "__len", arg: 3, scope: !1603, file: !1604, line: 34, type: !56)
!1610 = !DILocation(line: 0, scope: !1603, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 290, column: 15, scope: !1593)
!1612 = !DILocation(line: 36, column: 10, scope: !1603, inlinedAt: !1611)
!1613 = !DILocation(line: 291, column: 20, scope: !1593)
!1614 = distinct !{!1614, !1574, !1615, !618}
!1615 = !DILocation(line: 297, column: 5, scope: !239)
!1616 = !DILocation(line: 72, column: 32, scope: !1617, inlinedAt: !1623)
!1617 = distinct !DISubprogram(name: "complement_rp", scope: !200, file: !200, line: 70, type: !295, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1618)
!1618 = !{!1619, !1620, !1621}
!1619 = !DILocalVariable(name: "c", scope: !1617, file: !200, line: 72, type: !209)
!1620 = !DILocalVariable(name: "n", scope: !1617, file: !200, line: 73, type: !216)
!1621 = !DILocalVariable(name: "i", scope: !1622, file: !200, line: 82, type: !216)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !200, line: 82, column: 3)
!1623 = distinct !DILocation(line: 300, column: 5, scope: !1576)
!1624 = !DILocation(line: 0, scope: !1617, inlinedAt: !1623)
!1625 = !DILocation(line: 75, column: 7, scope: !1617, inlinedAt: !1623)
!1626 = !DILocation(line: 76, column: 9, scope: !1617, inlinedAt: !1623)
!1627 = !DILocation(line: 77, column: 19, scope: !1617, inlinedAt: !1623)
!1628 = !DILocation(line: 79, column: 12, scope: !1629, inlinedAt: !1623)
!1629 = distinct !DILexicalBlock(scope: !1617, file: !200, line: 79, column: 7)
!1630 = !DILocation(line: 79, column: 15, scope: !1629, inlinedAt: !1623)
!1631 = !DILocation(line: 79, column: 7, scope: !1617, inlinedAt: !1623)
!1632 = !DILocation(line: 80, column: 32, scope: !1629, inlinedAt: !1623)
!1633 = !DILocation(line: 0, scope: !1467, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 80, column: 5, scope: !1629, inlinedAt: !1623)
!1635 = !DILocation(line: 50, column: 11, scope: !1477, inlinedAt: !1634)
!1636 = !DILocation(line: 50, column: 9, scope: !1477, inlinedAt: !1634)
!1637 = !DILocation(line: 50, column: 5, scope: !1477, inlinedAt: !1634)
!1638 = !DILocation(line: 51, column: 7, scope: !1467, inlinedAt: !1634)
!1639 = !DILocation(line: 51, column: 14, scope: !1467, inlinedAt: !1634)
!1640 = !DILocation(line: 51, column: 17, scope: !1467, inlinedAt: !1634)
!1641 = !DILocation(line: 52, column: 7, scope: !1467, inlinedAt: !1634)
!1642 = !DILocation(line: 52, column: 14, scope: !1467, inlinedAt: !1634)
!1643 = !DILocation(line: 52, column: 17, scope: !1467, inlinedAt: !1634)
!1644 = !DILocation(line: 53, column: 3, scope: !1467, inlinedAt: !1634)
!1645 = !DILocation(line: 80, column: 5, scope: !1629, inlinedAt: !1623)
!1646 = !DILocation(line: 0, scope: !1622, inlinedAt: !1623)
!1647 = !DILocation(line: 82, column: 23, scope: !1648, inlinedAt: !1623)
!1648 = distinct !DILexicalBlock(scope: !1622, file: !200, line: 82, column: 3)
!1649 = !DILocation(line: 82, column: 3, scope: !1622, inlinedAt: !1623)
!1650 = !DILocation(line: 90, column: 11, scope: !1651, inlinedAt: !1623)
!1651 = distinct !DILexicalBlock(scope: !1617, file: !200, line: 90, column: 7)
!1652 = !DILocation(line: 90, column: 16, scope: !1651, inlinedAt: !1623)
!1653 = !DILocation(line: 90, column: 19, scope: !1651, inlinedAt: !1623)
!1654 = !DILocation(line: 90, column: 7, scope: !1617, inlinedAt: !1623)
!1655 = !DILocation(line: 84, column: 15, scope: !1656, inlinedAt: !1623)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !200, line: 84, column: 11)
!1657 = distinct !DILexicalBlock(scope: !1648, file: !200, line: 83, column: 5)
!1658 = !DILocation(line: 84, column: 20, scope: !1656, inlinedAt: !1623)
!1659 = !DILocation(line: 84, column: 23, scope: !1656, inlinedAt: !1623)
!1660 = !DILocation(line: 84, column: 35, scope: !1656, inlinedAt: !1623)
!1661 = !DILocation(line: 84, column: 27, scope: !1656, inlinedAt: !1623)
!1662 = !DILocation(line: 84, column: 11, scope: !1657, inlinedAt: !1623)
!1663 = !DILocation(line: 87, column: 48, scope: !1657, inlinedAt: !1623)
!1664 = !DILocation(line: 0, scope: !1467, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 87, column: 7, scope: !1657, inlinedAt: !1623)
!1666 = !DILocation(line: 49, column: 16, scope: !1477, inlinedAt: !1665)
!1667 = !DILocation(line: 49, column: 13, scope: !1477, inlinedAt: !1665)
!1668 = !DILocation(line: 49, column: 7, scope: !1467, inlinedAt: !1665)
!1669 = !DILocation(line: 50, column: 11, scope: !1477, inlinedAt: !1665)
!1670 = !DILocation(line: 50, column: 9, scope: !1477, inlinedAt: !1665)
!1671 = !DILocation(line: 50, column: 5, scope: !1477, inlinedAt: !1665)
!1672 = !DILocation(line: 51, column: 7, scope: !1467, inlinedAt: !1665)
!1673 = !DILocation(line: 51, column: 14, scope: !1467, inlinedAt: !1665)
!1674 = !DILocation(line: 51, column: 17, scope: !1467, inlinedAt: !1665)
!1675 = !DILocation(line: 52, column: 7, scope: !1467, inlinedAt: !1665)
!1676 = !DILocation(line: 52, column: 14, scope: !1467, inlinedAt: !1665)
!1677 = !DILocation(line: 52, column: 17, scope: !1467, inlinedAt: !1665)
!1678 = !DILocation(line: 53, column: 3, scope: !1467, inlinedAt: !1665)
!1679 = !DILocation(line: 88, column: 5, scope: !1657, inlinedAt: !1623)
!1680 = !DILocation(line: 82, column: 28, scope: !1648, inlinedAt: !1623)
!1681 = distinct !{!1681, !1649, !1682, !618}
!1682 = !DILocation(line: 88, column: 5, scope: !1622, inlinedAt: !1623)
!1683 = !DILocation(line: 91, column: 33, scope: !1651, inlinedAt: !1623)
!1684 = !DILocation(line: 0, scope: !1467, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 91, column: 5, scope: !1651, inlinedAt: !1623)
!1686 = !DILocation(line: 49, column: 16, scope: !1477, inlinedAt: !1685)
!1687 = !DILocation(line: 49, column: 13, scope: !1477, inlinedAt: !1685)
!1688 = !DILocation(line: 49, column: 7, scope: !1467, inlinedAt: !1685)
!1689 = !DILocation(line: 50, column: 11, scope: !1477, inlinedAt: !1685)
!1690 = !DILocation(line: 50, column: 9, scope: !1477, inlinedAt: !1685)
!1691 = !DILocation(line: 50, column: 5, scope: !1477, inlinedAt: !1685)
!1692 = !DILocation(line: 51, column: 7, scope: !1467, inlinedAt: !1685)
!1693 = !DILocation(line: 51, column: 3, scope: !1467, inlinedAt: !1685)
!1694 = !DILocation(line: 51, column: 14, scope: !1467, inlinedAt: !1685)
!1695 = !DILocation(line: 51, column: 17, scope: !1467, inlinedAt: !1685)
!1696 = !DILocation(line: 52, column: 7, scope: !1467, inlinedAt: !1685)
!1697 = !DILocation(line: 52, column: 14, scope: !1467, inlinedAt: !1685)
!1698 = !DILocation(line: 52, column: 17, scope: !1467, inlinedAt: !1685)
!1699 = !DILocation(line: 53, column: 3, scope: !1467, inlinedAt: !1685)
!1700 = !DILocation(line: 91, column: 5, scope: !1651, inlinedAt: !1623)
!1701 = !DILocation(line: 93, column: 9, scope: !1617, inlinedAt: !1623)
!1702 = !DILocation(line: 93, column: 3, scope: !1617, inlinedAt: !1623)
!1703 = !DILocation(line: 305, column: 3, scope: !199)
!1704 = !DILocation(line: 300, column: 5, scope: !1576)
!1705 = !DILocation(line: 306, column: 19, scope: !199)
!1706 = !DILocation(line: 306, column: 30, scope: !199)
!1707 = !DILocation(line: 306, column: 9, scope: !199)
!1708 = !DILocation(line: 306, column: 7, scope: !199)
!1709 = !DILocation(line: 307, column: 27, scope: !199)
!1710 = !DILocation(line: 307, column: 33, scope: !199)
!1711 = !DILocation(line: 307, column: 38, scope: !199)
!1712 = !DILocation(line: 307, column: 41, scope: !199)
!1713 = !DILocation(line: 307, column: 7, scope: !199)
!1714 = !DILocation(line: 307, column: 13, scope: !199)
!1715 = !DILocation(line: 307, column: 18, scope: !199)
!1716 = !DILocation(line: 307, column: 21, scope: !199)
!1717 = !DILocation(line: 308, column: 1, scope: !199)
!1718 = distinct !DISubprogram(name: "compare_ranges", scope: !200, file: !200, line: 60, type: !1719, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1721)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!54, !769, !769}
!1721 = !{!1722, !1723, !1724, !1727}
!1722 = !DILocalVariable(name: "a", arg: 1, scope: !1718, file: !200, line: 60, type: !769)
!1723 = !DILocalVariable(name: "b", arg: 2, scope: !1718, file: !200, line: 60, type: !769)
!1724 = !DILocalVariable(name: "ap", scope: !1718, file: !200, line: 62, type: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!1727 = !DILocalVariable(name: "bp", scope: !1718, file: !200, line: 62, type: !1725)
!1728 = !DILocation(line: 0, scope: !1718)
!1729 = !DILocation(line: 63, column: 10, scope: !1718)
!1730 = !DILocation(line: 63, column: 3, scope: !1718)
!1731 = !DISubprogram(name: "qsort", scope: !762, file: !762, line: 838, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !53, !56, !56, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !762, line: 816, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1736 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !252, file: !252, line: 50, type: !577, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !1737)
!1737 = !{!1738}
!1738 = !DILocalVariable(name: "file", arg: 1, scope: !1736, file: !252, line: 50, type: !59)
!1739 = !DILocation(line: 0, scope: !1736)
!1740 = !DILocation(line: 52, column: 13, scope: !1736)
!1741 = !DILocation(line: 53, column: 1, scope: !1736)
!1742 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !252, file: !252, line: 87, type: !1743, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !66}
!1745 = !{!1746}
!1746 = !DILocalVariable(name: "ignore", arg: 1, scope: !1742, file: !252, line: 87, type: !66)
!1747 = !DILocation(line: 0, scope: !1742)
!1748 = !DILocation(line: 89, column: 16, scope: !1742)
!1749 = !{!1750, !1750, i64 0}
!1750 = !{!"_Bool", !550, i64 0}
!1751 = !DILocation(line: 90, column: 1, scope: !1742)
!1752 = distinct !DISubprogram(name: "close_stdout", scope: !252, file: !252, line: 116, type: !295, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !1753)
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "write_error", scope: !1755, file: !252, line: 121, type: !59)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !252, line: 120, column: 5)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !252, line: 118, column: 7)
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
!1770 = distinct !DILexicalBlock(scope: !1755, file: !252, line: 122, column: 11)
!1771 = !DILocation(line: 0, scope: !1770)
!1772 = !DILocation(line: 122, column: 11, scope: !1755)
!1773 = !DILocation(line: 123, column: 9, scope: !1770)
!1774 = !DILocation(line: 126, column: 9, scope: !1770)
!1775 = !DILocation(line: 128, column: 14, scope: !1755)
!1776 = !DILocation(line: 128, column: 7, scope: !1755)
!1777 = !DILocation(line: 133, column: 42, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1752, file: !252, line: 133, column: 7)
!1779 = !DILocation(line: 133, column: 28, scope: !1778)
!1780 = !DILocation(line: 133, column: 50, scope: !1778)
!1781 = !DILocation(line: 133, column: 7, scope: !1752)
!1782 = !DILocation(line: 134, column: 12, scope: !1778)
!1783 = !DILocation(line: 134, column: 5, scope: !1778)
!1784 = !DILocation(line: 135, column: 1, scope: !1752)
!1785 = distinct !DISubprogram(name: "verror", scope: !259, file: !259, line: 251, type: !1786, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !54, !54, !59, !267}
!1788 = !{!1789, !1790, !1791, !1792}
!1789 = !DILocalVariable(name: "status", arg: 1, scope: !1785, file: !259, line: 251, type: !54)
!1790 = !DILocalVariable(name: "errnum", arg: 2, scope: !1785, file: !259, line: 251, type: !54)
!1791 = !DILocalVariable(name: "message", arg: 3, scope: !1785, file: !259, line: 251, type: !59)
!1792 = !DILocalVariable(name: "args", arg: 4, scope: !1785, file: !259, line: 251, type: !267)
!1793 = !DILocation(line: 0, scope: !1785)
!1794 = !DILocation(line: 251, column: 1, scope: !1785)
!1795 = !DILocation(line: 261, column: 3, scope: !1785)
!1796 = !DILocation(line: 265, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1785, file: !259, line: 265, column: 7)
!1798 = !DILocation(line: 265, column: 7, scope: !1785)
!1799 = !DILocation(line: 266, column: 5, scope: !1797)
!1800 = !DILocation(line: 272, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !259, line: 268, column: 5)
!1802 = !DILocation(line: 276, column: 3, scope: !1785)
!1803 = !{i64 0, i64 8, !548, i64 8, i64 8, !548, i64 16, i64 8, !548, i64 24, i64 4, !651, i64 28, i64 4, !651}
!1804 = !DILocation(line: 282, column: 1, scope: !1785)
!1805 = distinct !DISubprogram(name: "flush_stdout", scope: !259, file: !259, line: 163, type: !295, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1806)
!1806 = !{!1807}
!1807 = !DILocalVariable(name: "stdout_fd", scope: !1805, file: !259, line: 166, type: !54)
!1808 = !DILocation(line: 0, scope: !1805)
!1809 = !DILocalVariable(name: "fd", arg: 1, scope: !1810, file: !259, line: 145, type: !54)
!1810 = distinct !DISubprogram(name: "is_open", scope: !259, file: !259, line: 145, type: !956, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1811)
!1811 = !{!1809}
!1812 = !DILocation(line: 0, scope: !1810, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 182, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !259, line: 182, column: 7)
!1815 = !DILocation(line: 157, column: 15, scope: !1810, inlinedAt: !1813)
!1816 = !DILocation(line: 182, column: 25, scope: !1814)
!1817 = !DILocation(line: 182, column: 7, scope: !1805)
!1818 = !DILocation(line: 184, column: 5, scope: !1814)
!1819 = !DILocation(line: 185, column: 1, scope: !1805)
!1820 = distinct !DISubprogram(name: "error_tail", scope: !259, file: !259, line: 219, type: !1786, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1821)
!1821 = !{!1822, !1823, !1824, !1825}
!1822 = !DILocalVariable(name: "status", arg: 1, scope: !1820, file: !259, line: 219, type: !54)
!1823 = !DILocalVariable(name: "errnum", arg: 2, scope: !1820, file: !259, line: 219, type: !54)
!1824 = !DILocalVariable(name: "message", arg: 3, scope: !1820, file: !259, line: 219, type: !59)
!1825 = !DILocalVariable(name: "args", arg: 4, scope: !1820, file: !259, line: 219, type: !267)
!1826 = !DILocation(line: 0, scope: !1820)
!1827 = !DILocation(line: 219, column: 1, scope: !1820)
!1828 = !DILocation(line: 229, column: 13, scope: !1820)
!1829 = !DILocation(line: 229, column: 3, scope: !1820)
!1830 = !DILocalVariable(name: "__stream", arg: 1, scope: !1831, file: !1832, line: 132, type: !1835)
!1831 = distinct !DISubprogram(name: "vfprintf", scope: !1832, file: !1832, line: 132, type: !1833, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1870)
!1832 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!54, !1835, !647, !269}
!1835 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1838, file: !111, line: 51, baseType: !54, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1838, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1838, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1838, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1838, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1838, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1838, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1838, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1838, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1838, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1838, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1838, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1838, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1838, file: !111, line: 70, baseType: !1854, size: 64, offset: 832)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1838, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1838, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1838, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1838, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1838, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1838, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1838, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1838, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1838, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1838, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1838, file: !111, line: 93, baseType: !1854, size: 64, offset: 1344)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1838, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1838, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1838, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1838, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!1870 = !{!1830, !1871, !1872}
!1871 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1831, file: !1832, line: 133, type: !647)
!1872 = !DILocalVariable(name: "__ap", arg: 3, scope: !1831, file: !1832, line: 133, type: !269)
!1873 = !DILocation(line: 0, scope: !1831, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 229, column: 3, scope: !1820)
!1875 = !DILocation(line: 135, column: 10, scope: !1831, inlinedAt: !1874)
!1876 = !{!1877, !1879}
!1877 = distinct !{!1877, !1878, !"vfprintf.inline: argument 0"}
!1878 = distinct !{!1878, !"vfprintf.inline"}
!1879 = distinct !{!1879, !1878, !"vfprintf.inline: argument 1"}
!1880 = !DILocation(line: 232, column: 3, scope: !1820)
!1881 = !DILocation(line: 233, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1820, file: !259, line: 233, column: 7)
!1883 = !DILocation(line: 233, column: 7, scope: !1820)
!1884 = !DILocalVariable(name: "errnum", arg: 1, scope: !1885, file: !259, line: 188, type: !54)
!1885 = distinct !DISubprogram(name: "print_errno_message", scope: !259, file: !259, line: 188, type: !538, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1886)
!1886 = !{!1884, !1887, !1888}
!1887 = !DILocalVariable(name: "s", scope: !1885, file: !259, line: 190, type: !59)
!1888 = !DILocalVariable(name: "errbuf", scope: !1885, file: !259, line: 193, type: !1889)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8192, elements: !1890)
!1890 = !{!1891}
!1891 = !DISubrange(count: 1024)
!1892 = !DILocation(line: 0, scope: !1885, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 234, column: 5, scope: !1882)
!1894 = !DILocation(line: 193, column: 3, scope: !1885, inlinedAt: !1893)
!1895 = !DILocation(line: 193, column: 8, scope: !1885, inlinedAt: !1893)
!1896 = !DILocation(line: 195, column: 7, scope: !1885, inlinedAt: !1893)
!1897 = !DILocation(line: 207, column: 9, scope: !1898, inlinedAt: !1893)
!1898 = distinct !DILexicalBlock(scope: !1885, file: !259, line: 207, column: 7)
!1899 = !DILocation(line: 207, column: 7, scope: !1885, inlinedAt: !1893)
!1900 = !DILocation(line: 208, column: 9, scope: !1898, inlinedAt: !1893)
!1901 = !DILocation(line: 208, column: 5, scope: !1898, inlinedAt: !1893)
!1902 = !DILocation(line: 214, column: 3, scope: !1885, inlinedAt: !1893)
!1903 = !DILocation(line: 216, column: 1, scope: !1885, inlinedAt: !1893)
!1904 = !DILocation(line: 234, column: 5, scope: !1882)
!1905 = !DILocation(line: 238, column: 3, scope: !1820)
!1906 = !DILocalVariable(name: "__c", arg: 1, scope: !1907, file: !939, line: 101, type: !54)
!1907 = distinct !DISubprogram(name: "putc_unlocked", scope: !939, file: !939, line: 101, type: !1908, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!54, !54, !1836}
!1910 = !{!1906, !1911}
!1911 = !DILocalVariable(name: "__stream", arg: 2, scope: !1907, file: !939, line: 101, type: !1836)
!1912 = !DILocation(line: 0, scope: !1907, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 238, column: 3, scope: !1820)
!1914 = !DILocation(line: 103, column: 10, scope: !1907, inlinedAt: !1913)
!1915 = !DILocation(line: 240, column: 3, scope: !1820)
!1916 = !DILocation(line: 241, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1820, file: !259, line: 241, column: 7)
!1918 = !DILocation(line: 241, column: 7, scope: !1820)
!1919 = !DILocation(line: 242, column: 5, scope: !1917)
!1920 = !DILocation(line: 243, column: 1, scope: !1820)
!1921 = !DISubprogram(name: "strerror_r", scope: !1922, file: !1922, line: 444, type: !1923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!1922 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!51, !54, !51, !56}
!1925 = !DISubprogram(name: "fcntl", scope: !1926, file: !1926, line: 149, type: !1927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!1926 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!54, !54, !54, null}
!1929 = distinct !DISubprogram(name: "error", scope: !259, file: !259, line: 285, type: !1930, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !54, !54, !59, null}
!1932 = !{!1933, !1934, !1935, !1936}
!1933 = !DILocalVariable(name: "status", arg: 1, scope: !1929, file: !259, line: 285, type: !54)
!1934 = !DILocalVariable(name: "errnum", arg: 2, scope: !1929, file: !259, line: 285, type: !54)
!1935 = !DILocalVariable(name: "message", arg: 3, scope: !1929, file: !259, line: 285, type: !59)
!1936 = !DILocalVariable(name: "ap", scope: !1929, file: !259, line: 287, type: !267)
!1937 = !DILocation(line: 0, scope: !1929)
!1938 = !DILocation(line: 287, column: 3, scope: !1929)
!1939 = !DILocation(line: 287, column: 11, scope: !1929)
!1940 = !DILocation(line: 288, column: 3, scope: !1929)
!1941 = !DILocation(line: 289, column: 3, scope: !1929)
!1942 = !DILocation(line: 290, column: 3, scope: !1929)
!1943 = !DILocation(line: 291, column: 1, scope: !1929)
!1944 = !DILocation(line: 0, scope: !264)
!1945 = !DILocation(line: 298, column: 1, scope: !264)
!1946 = !DILocation(line: 302, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !264, file: !259, line: 302, column: 7)
!1948 = !DILocation(line: 302, column: 7, scope: !264)
!1949 = !DILocation(line: 307, column: 11, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !259, line: 307, column: 11)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !259, line: 303, column: 5)
!1952 = !DILocation(line: 307, column: 27, scope: !1950)
!1953 = !DILocation(line: 308, column: 11, scope: !1950)
!1954 = !DILocation(line: 308, column: 28, scope: !1950)
!1955 = !DILocation(line: 308, column: 25, scope: !1950)
!1956 = !DILocation(line: 309, column: 15, scope: !1950)
!1957 = !DILocation(line: 309, column: 33, scope: !1950)
!1958 = !DILocation(line: 310, column: 19, scope: !1950)
!1959 = !DILocation(line: 311, column: 22, scope: !1950)
!1960 = !DILocation(line: 311, column: 56, scope: !1950)
!1961 = !DILocation(line: 307, column: 11, scope: !1951)
!1962 = !DILocation(line: 316, column: 21, scope: !1951)
!1963 = !DILocation(line: 317, column: 23, scope: !1951)
!1964 = !DILocation(line: 318, column: 5, scope: !1951)
!1965 = !DILocation(line: 327, column: 3, scope: !264)
!1966 = !DILocation(line: 331, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !264, file: !259, line: 331, column: 7)
!1968 = !DILocation(line: 331, column: 7, scope: !264)
!1969 = !DILocation(line: 332, column: 5, scope: !1967)
!1970 = !DILocation(line: 338, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !259, line: 334, column: 5)
!1972 = !DILocation(line: 346, column: 3, scope: !264)
!1973 = !DILocation(line: 350, column: 3, scope: !264)
!1974 = !DILocation(line: 356, column: 1, scope: !264)
!1975 = distinct !DISubprogram(name: "error_at_line", scope: !259, file: !259, line: 359, type: !1976, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !54, !54, !59, !7, !59, null}
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984}
!1979 = !DILocalVariable(name: "status", arg: 1, scope: !1975, file: !259, line: 359, type: !54)
!1980 = !DILocalVariable(name: "errnum", arg: 2, scope: !1975, file: !259, line: 359, type: !54)
!1981 = !DILocalVariable(name: "file_name", arg: 3, scope: !1975, file: !259, line: 359, type: !59)
!1982 = !DILocalVariable(name: "line_number", arg: 4, scope: !1975, file: !259, line: 360, type: !7)
!1983 = !DILocalVariable(name: "message", arg: 5, scope: !1975, file: !259, line: 360, type: !59)
!1984 = !DILocalVariable(name: "ap", scope: !1975, file: !259, line: 362, type: !267)
!1985 = !DILocation(line: 0, scope: !1975)
!1986 = !DILocation(line: 362, column: 3, scope: !1975)
!1987 = !DILocation(line: 362, column: 11, scope: !1975)
!1988 = !DILocation(line: 363, column: 3, scope: !1975)
!1989 = !DILocation(line: 364, column: 3, scope: !1975)
!1990 = !DILocation(line: 366, column: 3, scope: !1975)
!1991 = !DILocation(line: 367, column: 1, scope: !1975)
!1992 = distinct !DISubprogram(name: "fdadvise", scope: !443, file: !443, line: 25, type: !1993, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1997)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !54, !1995, !1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !268, line: 63, baseType: !133)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !42, line: 51, baseType: !41)
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DILocalVariable(name: "fd", arg: 1, scope: !1992, file: !443, line: 25, type: !54)
!1999 = !DILocalVariable(name: "offset", arg: 2, scope: !1992, file: !443, line: 25, type: !1995)
!2000 = !DILocalVariable(name: "len", arg: 3, scope: !1992, file: !443, line: 25, type: !1995)
!2001 = !DILocalVariable(name: "advice", arg: 4, scope: !1992, file: !443, line: 25, type: !1996)
!2002 = !DILocation(line: 0, scope: !1992)
!2003 = !DILocation(line: 28, column: 3, scope: !1992)
!2004 = !DILocation(line: 30, column: 1, scope: !1992)
!2005 = !DISubprogram(name: "posix_fadvise", scope: !1926, file: !1926, line: 273, type: !2006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!54, !54, !1995, !1995, !54}
!2008 = distinct !DISubprogram(name: "fadvise", scope: !443, file: !443, line: 33, type: !2009, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2045)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !2011, !1996}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2013, file: !111, line: 51, baseType: !54, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2013, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2013, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2013, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2013, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2013, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2013, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2013, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2013, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2013, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2013, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2013, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2013, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2013, file: !111, line: 70, baseType: !2029, size: 64, offset: 832)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2013, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2013, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2013, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2013, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2013, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2013, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2013, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2013, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2013, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2013, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2013, file: !111, line: 93, baseType: !2029, size: 64, offset: 1344)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2013, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2013, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2013, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2013, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!2045 = !{!2046, !2047}
!2046 = !DILocalVariable(name: "fp", arg: 1, scope: !2008, file: !443, line: 33, type: !2011)
!2047 = !DILocalVariable(name: "advice", arg: 2, scope: !2008, file: !443, line: 33, type: !1996)
!2048 = !DILocation(line: 0, scope: !2008)
!2049 = !DILocation(line: 35, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2008, file: !443, line: 35, column: 7)
!2051 = !DILocation(line: 35, column: 7, scope: !2008)
!2052 = !DILocation(line: 36, column: 15, scope: !2050)
!2053 = !DILocation(line: 0, scope: !1992, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 36, column: 5, scope: !2050)
!2055 = !DILocation(line: 28, column: 3, scope: !1992, inlinedAt: !2054)
!2056 = !DILocation(line: 36, column: 5, scope: !2050)
!2057 = !DILocation(line: 37, column: 1, scope: !2008)
!2058 = !DISubprogram(name: "fileno", scope: !268, file: !268, line: 809, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!54, !2011}
!2061 = distinct !DISubprogram(name: "rpl_fclose", scope: !446, file: !446, line: 58, type: !2062, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !2098)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!54, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2066, file: !111, line: 51, baseType: !54, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2066, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2066, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2066, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2066, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2066, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2066, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2066, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2066, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2066, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2066, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2066, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2066, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2066, file: !111, line: 70, baseType: !2082, size: 64, offset: 832)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2066, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2066, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2066, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2066, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2066, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2066, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2066, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2066, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2066, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2066, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2066, file: !111, line: 93, baseType: !2082, size: 64, offset: 1344)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2066, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2066, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2066, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2066, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!2098 = !{!2099, !2100, !2101, !2102}
!2099 = !DILocalVariable(name: "fp", arg: 1, scope: !2061, file: !446, line: 58, type: !2064)
!2100 = !DILocalVariable(name: "saved_errno", scope: !2061, file: !446, line: 60, type: !54)
!2101 = !DILocalVariable(name: "fd", scope: !2061, file: !446, line: 63, type: !54)
!2102 = !DILocalVariable(name: "result", scope: !2061, file: !446, line: 74, type: !54)
!2103 = !DILocation(line: 0, scope: !2061)
!2104 = !DILocation(line: 63, column: 12, scope: !2061)
!2105 = !DILocation(line: 64, column: 10, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2061, file: !446, line: 64, column: 7)
!2107 = !DILocation(line: 64, column: 7, scope: !2061)
!2108 = !DILocation(line: 65, column: 12, scope: !2106)
!2109 = !DILocation(line: 65, column: 5, scope: !2106)
!2110 = !DILocation(line: 70, column: 9, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2061, file: !446, line: 70, column: 7)
!2112 = !DILocation(line: 70, column: 23, scope: !2111)
!2113 = !DILocation(line: 70, column: 33, scope: !2111)
!2114 = !DILocation(line: 70, column: 26, scope: !2111)
!2115 = !DILocation(line: 70, column: 59, scope: !2111)
!2116 = !DILocation(line: 71, column: 7, scope: !2111)
!2117 = !DILocation(line: 71, column: 10, scope: !2111)
!2118 = !DILocation(line: 70, column: 7, scope: !2061)
!2119 = !DILocation(line: 100, column: 12, scope: !2061)
!2120 = !DILocation(line: 105, column: 7, scope: !2061)
!2121 = !DILocation(line: 72, column: 19, scope: !2111)
!2122 = !DILocation(line: 105, column: 19, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2061, file: !446, line: 105, column: 7)
!2124 = !DILocation(line: 107, column: 13, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2123, file: !446, line: 106, column: 5)
!2126 = !DILocation(line: 109, column: 5, scope: !2125)
!2127 = !DILocation(line: 112, column: 1, scope: !2061)
!2128 = !DISubprogram(name: "fclose", scope: !268, file: !268, line: 178, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!2129 = !DISubprogram(name: "lseek", scope: !2130, file: !2130, line: 339, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!2130 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!133, !54, !133, !54}
!2133 = distinct !DISubprogram(name: "rpl_fflush", scope: !448, file: !448, line: 130, type: !2134, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !2170)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!54, !2136}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !2139)
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2138, file: !111, line: 51, baseType: !54, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2138, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2138, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2138, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2138, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2138, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2138, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2138, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2138, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2138, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2138, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2138, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2138, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2138, file: !111, line: 70, baseType: !2154, size: 64, offset: 832)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2138, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2138, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2138, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2138, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2138, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2138, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2138, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2138, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2138, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2138, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2138, file: !111, line: 93, baseType: !2154, size: 64, offset: 1344)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2138, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2138, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2138, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2138, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!2170 = !{!2171}
!2171 = !DILocalVariable(name: "stream", arg: 1, scope: !2133, file: !448, line: 130, type: !2136)
!2172 = !DILocation(line: 0, scope: !2133)
!2173 = !DILocation(line: 151, column: 14, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2133, file: !448, line: 151, column: 7)
!2175 = !DILocation(line: 151, column: 22, scope: !2174)
!2176 = !DILocation(line: 151, column: 27, scope: !2174)
!2177 = !DILocation(line: 151, column: 7, scope: !2133)
!2178 = !DILocation(line: 152, column: 12, scope: !2174)
!2179 = !DILocation(line: 152, column: 5, scope: !2174)
!2180 = !DILocalVariable(name: "fp", arg: 1, scope: !2181, file: !448, line: 42, type: !2136)
!2181 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !448, file: !448, line: 42, type: !2182, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null, !2136}
!2184 = !{!2180}
!2185 = !DILocation(line: 0, scope: !2181, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 157, column: 3, scope: !2133)
!2187 = !DILocation(line: 44, column: 12, scope: !2188, inlinedAt: !2186)
!2188 = distinct !DILexicalBlock(scope: !2181, file: !448, line: 44, column: 7)
!2189 = !DILocation(line: 44, column: 19, scope: !2188, inlinedAt: !2186)
!2190 = !DILocation(line: 44, column: 7, scope: !2181, inlinedAt: !2186)
!2191 = !DILocation(line: 46, column: 5, scope: !2188, inlinedAt: !2186)
!2192 = !DILocation(line: 159, column: 10, scope: !2133)
!2193 = !DILocation(line: 159, column: 3, scope: !2133)
!2194 = !DILocation(line: 236, column: 1, scope: !2133)
!2195 = !DISubprogram(name: "fflush", scope: !268, file: !268, line: 230, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!2196 = distinct !DISubprogram(name: "fpurge", scope: !451, file: !451, line: 32, type: !2197, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !2233)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!54, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2201, file: !111, line: 51, baseType: !54, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2201, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2201, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2201, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2201, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2201, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2201, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2201, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2201, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2201, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2201, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2201, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2201, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2201, file: !111, line: 70, baseType: !2217, size: 64, offset: 832)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2201, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2201, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2201, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2201, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2201, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2201, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2201, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2201, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2201, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2201, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2201, file: !111, line: 93, baseType: !2217, size: 64, offset: 1344)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2201, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2201, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2201, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2201, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!2233 = !{!2234}
!2234 = !DILocalVariable(name: "fp", arg: 1, scope: !2196, file: !451, line: 32, type: !2199)
!2235 = !DILocation(line: 0, scope: !2196)
!2236 = !DILocation(line: 36, column: 3, scope: !2196)
!2237 = !DILocation(line: 38, column: 3, scope: !2196)
!2238 = distinct !DISubprogram(name: "rpl_fseeko", scope: !453, file: !453, line: 28, type: !2239, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !2275)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!54, !2241, !1995, !54}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2243, file: !111, line: 51, baseType: !54, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2243, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2243, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2243, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2243, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2243, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2243, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2243, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2243, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2243, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2243, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2243, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2243, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2243, file: !111, line: 70, baseType: !2259, size: 64, offset: 832)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2243, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2243, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2243, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2243, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2243, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2243, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2243, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2243, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2243, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2243, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2243, file: !111, line: 93, baseType: !2259, size: 64, offset: 1344)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2243, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2243, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2243, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2243, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!2275 = !{!2276, !2277, !2278, !2279}
!2276 = !DILocalVariable(name: "fp", arg: 1, scope: !2238, file: !453, line: 28, type: !2241)
!2277 = !DILocalVariable(name: "offset", arg: 2, scope: !2238, file: !453, line: 28, type: !1995)
!2278 = !DILocalVariable(name: "whence", arg: 3, scope: !2238, file: !453, line: 28, type: !54)
!2279 = !DILocalVariable(name: "pos", scope: !2280, file: !453, line: 123, type: !1995)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !453, line: 119, column: 5)
!2281 = distinct !DILexicalBlock(scope: !2238, file: !453, line: 55, column: 7)
!2282 = !DILocation(line: 0, scope: !2238)
!2283 = !DILocation(line: 55, column: 12, scope: !2281)
!2284 = !DILocation(line: 55, column: 33, scope: !2281)
!2285 = !DILocation(line: 55, column: 25, scope: !2281)
!2286 = !DILocation(line: 56, column: 7, scope: !2281)
!2287 = !DILocation(line: 56, column: 15, scope: !2281)
!2288 = !DILocation(line: 56, column: 37, scope: !2281)
!2289 = !{!947, !549, i64 32}
!2290 = !DILocation(line: 56, column: 29, scope: !2281)
!2291 = !DILocation(line: 57, column: 7, scope: !2281)
!2292 = !DILocation(line: 57, column: 15, scope: !2281)
!2293 = !{!947, !549, i64 72}
!2294 = !DILocation(line: 57, column: 29, scope: !2281)
!2295 = !DILocation(line: 55, column: 7, scope: !2238)
!2296 = !DILocation(line: 123, column: 26, scope: !2280)
!2297 = !DILocation(line: 123, column: 19, scope: !2280)
!2298 = !DILocation(line: 0, scope: !2280)
!2299 = !DILocation(line: 124, column: 15, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2280, file: !453, line: 124, column: 11)
!2301 = !DILocation(line: 124, column: 11, scope: !2280)
!2302 = !DILocation(line: 135, column: 12, scope: !2280)
!2303 = !DILocation(line: 135, column: 19, scope: !2280)
!2304 = !DILocation(line: 136, column: 12, scope: !2280)
!2305 = !DILocation(line: 136, column: 20, scope: !2280)
!2306 = !{!947, !823, i64 144}
!2307 = !DILocation(line: 167, column: 7, scope: !2280)
!2308 = !DILocation(line: 169, column: 10, scope: !2238)
!2309 = !DILocation(line: 169, column: 3, scope: !2238)
!2310 = !DILocation(line: 170, column: 1, scope: !2238)
!2311 = !DISubprogram(name: "fseeko", scope: !268, file: !268, line: 736, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!54, !2241, !133, !54}
!2314 = distinct !DISubprogram(name: "getndelim2", scope: !455, file: !455, line: 66, type: !2315, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2351)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!1081, !774, !478, !56, !56, !54, !54, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !2319)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2319, file: !111, line: 51, baseType: !54, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2319, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2319, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2319, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2319, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2319, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2319, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2319, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2319, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2319, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2319, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2319, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2319, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2319, file: !111, line: 70, baseType: !2335, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2319, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2319, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2319, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2319, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2319, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2319, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2319, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2319, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2319, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2319, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2319, file: !111, line: 93, baseType: !2335, size: 64, offset: 1344)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2319, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2319, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2319, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2319, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!2351 = !{!2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2367, !2368, !2369, !2374, !2377, !2378, !2381, !2384, !2385}
!2352 = !DILocalVariable(name: "lineptr", arg: 1, scope: !2314, file: !455, line: 66, type: !774)
!2353 = !DILocalVariable(name: "linesize", arg: 2, scope: !2314, file: !455, line: 66, type: !478)
!2354 = !DILocalVariable(name: "offset", arg: 3, scope: !2314, file: !455, line: 66, type: !56)
!2355 = !DILocalVariable(name: "nmax", arg: 4, scope: !2314, file: !455, line: 66, type: !56)
!2356 = !DILocalVariable(name: "delim1", arg: 5, scope: !2314, file: !455, line: 67, type: !54)
!2357 = !DILocalVariable(name: "delim2", arg: 6, scope: !2314, file: !455, line: 67, type: !54)
!2358 = !DILocalVariable(name: "stream", arg: 7, scope: !2314, file: !455, line: 67, type: !2317)
!2359 = !DILocalVariable(name: "ptr", scope: !2314, file: !455, line: 69, type: !51)
!2360 = !DILocalVariable(name: "size", scope: !2314, file: !455, line: 70, type: !56)
!2361 = !DILocalVariable(name: "bytes_stored", scope: !2314, file: !455, line: 79, type: !1081)
!2362 = !DILocalVariable(name: "nbytes_avail", scope: !2314, file: !455, line: 84, type: !56)
!2363 = !DILocalVariable(name: "read_pos", scope: !2314, file: !455, line: 86, type: !51)
!2364 = !DILocalVariable(name: "found_delimiter", scope: !2314, file: !455, line: 99, type: !66)
!2365 = !DILocalVariable(name: "c", scope: !2366, file: !455, line: 105, type: !54)
!2366 = distinct !DILexicalBlock(scope: !2314, file: !455, line: 101, column: 5)
!2367 = !DILocalVariable(name: "buffer", scope: !2366, file: !455, line: 106, type: !59)
!2368 = !DILocalVariable(name: "buffer_len", scope: !2366, file: !455, line: 107, type: !56)
!2369 = !DILocalVariable(name: "end", scope: !2370, file: !455, line: 114, type: !59)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !455, line: 113, column: 13)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !455, line: 112, column: 15)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !455, line: 111, column: 9)
!2373 = distinct !DILexicalBlock(scope: !2366, file: !455, line: 110, column: 11)
!2374 = !DILocalVariable(name: "newsize", scope: !2375, file: !455, line: 146, type: !56)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !455, line: 143, column: 9)
!2376 = distinct !DILexicalBlock(scope: !2366, file: !455, line: 142, column: 11)
!2377 = !DILocalVariable(name: "newptr", scope: !2375, file: !455, line: 147, type: !51)
!2378 = !DILocalVariable(name: "newsizemax", scope: !2379, file: !455, line: 159, type: !56)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !455, line: 158, column: 13)
!2380 = distinct !DILexicalBlock(scope: !2375, file: !455, line: 157, column: 15)
!2381 = !DILocalVariable(name: "copy_len", scope: !2382, file: !455, line: 179, type: !56)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !455, line: 178, column: 9)
!2383 = distinct !DILexicalBlock(scope: !2366, file: !455, line: 177, column: 11)
!2384 = !DILabel(scope: !2314, name: "unlock_done", file: !455, line: 203)
!2385 = !DILabel(scope: !2314, name: "done", file: !455, line: 206)
!2386 = !DILocation(line: 0, scope: !2314)
!2387 = !DILocation(line: 69, column: 15, scope: !2314)
!2388 = !DILocation(line: 70, column: 17, scope: !2314)
!2389 = !DILocation(line: 71, column: 8, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2314, file: !455, line: 71, column: 7)
!2391 = !DILocation(line: 71, column: 7, scope: !2314)
!2392 = !DILocation(line: 73, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !455, line: 72, column: 5)
!2394 = !DILocation(line: 73, column: 14, scope: !2393)
!2395 = !DILocation(line: 74, column: 13, scope: !2393)
!2396 = !DILocation(line: 75, column: 12, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !455, line: 75, column: 11)
!2398 = !DILocation(line: 75, column: 11, scope: !2393)
!2399 = !DILocation(line: 81, column: 12, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2314, file: !455, line: 81, column: 7)
!2401 = !DILocation(line: 81, column: 7, scope: !2314)
!2402 = !DILocation(line: 85, column: 10, scope: !2314)
!2403 = !DILocation(line: 88, column: 20, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2314, file: !455, line: 88, column: 7)
!2405 = !DILocation(line: 88, column: 25, scope: !2404)
!2406 = !DILocation(line: 86, column: 24, scope: !2314)
!2407 = !DILocation(line: 92, column: 14, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2314, file: !455, line: 92, column: 7)
!2409 = !DILocation(line: 92, column: 7, scope: !2314)
!2410 = !DILocation(line: 100, column: 3, scope: !2314)
!2411 = !DILocation(line: 0, scope: !2366)
!2412 = !DILocation(line: 107, column: 7, scope: !2366)
!2413 = !DILocation(line: 109, column: 16, scope: !2366)
!2414 = !DILocation(line: 110, column: 11, scope: !2373)
!2415 = !DILocation(line: 110, column: 11, scope: !2366)
!2416 = !DILocation(line: 112, column: 15, scope: !2372)
!2417 = !DILocation(line: 114, column: 33, scope: !2370)
!2418 = !DILocation(line: 0, scope: !2370)
!2419 = !DILocation(line: 115, column: 19, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2370, file: !455, line: 115, column: 19)
!2421 = !DILocation(line: 115, column: 19, scope: !2370)
!2422 = !DILocation(line: 117, column: 36, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2420, file: !455, line: 116, column: 17)
!2424 = !DILocation(line: 117, column: 45, scope: !2423)
!2425 = !DILocation(line: 117, column: 30, scope: !2423)
!2426 = !DILocation(line: 119, column: 17, scope: !2423)
!2427 = !DILocalVariable(name: "__fp", arg: 1, scope: !2428, file: !939, line: 66, type: !2317)
!2428 = distinct !DISubprogram(name: "getc_unlocked", scope: !939, file: !939, line: 66, type: !2429, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!54, !2317}
!2431 = !{!2427}
!2432 = !DILocation(line: 0, scope: !2428, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 124, column: 15, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2373, file: !455, line: 123, column: 9)
!2435 = !DILocation(line: 68, column: 10, scope: !2428, inlinedAt: !2433)
!2436 = !DILocation(line: 125, column: 15, scope: !2434)
!2437 = !DILocation(line: 125, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !455, line: 125, column: 15)
!2439 = !DILocation(line: 128, column: 28, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !455, line: 128, column: 19)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !455, line: 126, column: 13)
!2442 = !DILocation(line: 0, scope: !2440)
!2443 = !DILocation(line: 194, column: 5, scope: !2314)
!2444 = !DILocation(line: 133, column: 17, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2434, file: !455, line: 133, column: 15)
!2446 = !DILocation(line: 133, column: 27, scope: !2445)
!2447 = !DILocation(line: 135, column: 22, scope: !2434)
!2448 = !DILocation(line: 142, column: 26, scope: !2376)
!2449 = !DILocation(line: 142, column: 37, scope: !2376)
!2450 = !DILocation(line: 142, column: 24, scope: !2376)
!2451 = !DILocation(line: 142, column: 41, scope: !2376)
!2452 = !DILocation(line: 146, column: 33, scope: !2375)
!2453 = !DILocation(line: 146, column: 28, scope: !2375)
!2454 = !DILocation(line: 0, scope: !2375)
!2455 = !DILocation(line: 151, column: 35, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2375, file: !455, line: 151, column: 15)
!2457 = !DILocation(line: 151, column: 23, scope: !2456)
!2458 = !DILocation(line: 151, column: 42, scope: !2456)
!2459 = !DILocation(line: 151, column: 15, scope: !2375)
!2460 = !DILocation(line: 154, column: 23, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2375, file: !455, line: 154, column: 15)
!2462 = !DILocation(line: 154, column: 33, scope: !2461)
!2463 = !DILocation(line: 157, column: 44, scope: !2380)
!2464 = !DILocation(line: 157, column: 34, scope: !2380)
!2465 = !DILocation(line: 157, column: 15, scope: !2375)
!2466 = !DILocation(line: 0, scope: !2379)
!2467 = !DILocation(line: 160, column: 24, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2379, file: !455, line: 160, column: 19)
!2469 = !DILocation(line: 152, column: 21, scope: !2456)
!2470 = !DILocalVariable(name: "ptr", arg: 1, scope: !2471, file: !2472, line: 2057, type: !53)
!2471 = distinct !DISubprogram(name: "rpl_realloc", scope: !2472, file: !2472, line: 2057, type: !2473, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2475)
!2472 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!53, !53, !56}
!2475 = !{!2470, !2476}
!2476 = !DILocalVariable(name: "size", arg: 2, scope: !2471, file: !2472, line: 2057, type: !56)
!2477 = !DILocation(line: 0, scope: !2471, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 166, column: 20, scope: !2375)
!2479 = !DILocation(line: 2059, column: 24, scope: !2471, inlinedAt: !2478)
!2480 = !DILocation(line: 2059, column: 10, scope: !2471, inlinedAt: !2478)
!2481 = !DILocation(line: 167, column: 16, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2375, file: !455, line: 167, column: 15)
!2483 = !DILocation(line: 167, column: 15, scope: !2375)
!2484 = !DILocation(line: 165, column: 34, scope: !2375)
!2485 = !DILocation(line: 171, column: 42, scope: !2375)
!2486 = !DILocation(line: 177, column: 13, scope: !2383)
!2487 = !DILocation(line: 177, column: 11, scope: !2366)
!2488 = !DILocation(line: 179, column: 42, scope: !2382)
!2489 = !DILocation(line: 0, scope: !2382)
!2490 = !DILocation(line: 180, column: 15, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2382, file: !455, line: 180, column: 15)
!2492 = !DILocation(line: 180, column: 26, scope: !2491)
!2493 = !DILocation(line: 180, column: 15, scope: !2382)
!2494 = !DILocation(line: 182, column: 15, scope: !2382)
!2495 = !DILocalVariable(name: "__dest", arg: 1, scope: !2496, file: !1604, line: 26, type: !2499)
!2496 = distinct !DISubprogram(name: "memcpy", scope: !1604, file: !1604, line: 26, type: !2497, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2500)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!53, !2499, !768, !56}
!2499 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!2500 = !{!2495, !2501, !2502}
!2501 = !DILocalVariable(name: "__src", arg: 2, scope: !2496, file: !1604, line: 26, type: !768)
!2502 = !DILocalVariable(name: "__len", arg: 3, scope: !2496, file: !1604, line: 26, type: !56)
!2503 = !DILocation(line: 0, scope: !2496, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 183, column: 13, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2382, file: !455, line: 182, column: 15)
!2506 = !DILocation(line: 29, column: 10, scope: !2496, inlinedAt: !2504)
!2507 = !DILocation(line: 183, column: 13, scope: !2505)
!2508 = !DILocation(line: 185, column: 25, scope: !2505)
!2509 = !DILocation(line: 185, column: 23, scope: !2505)
!2510 = !DILocation(line: 186, column: 20, scope: !2382)
!2511 = !DILocation(line: 187, column: 24, scope: !2382)
!2512 = !DILocation(line: 188, column: 9, scope: !2382)
!2513 = !DILocation(line: 192, column: 18, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2366, file: !455, line: 192, column: 11)
!2515 = !DILocation(line: 192, column: 40, scope: !2514)
!2516 = !DILocation(line: 192, column: 21, scope: !2514)
!2517 = !DILocation(line: 192, column: 11, scope: !2366)
!2518 = !DILocation(line: 194, column: 5, scope: !2366)
!2519 = distinct !{!2519, !2410, !2520, !618}
!2520 = !DILocation(line: 195, column: 26, scope: !2314)
!2521 = !DILocation(line: 206, column: 2, scope: !2314)
!2522 = !DILocation(line: 207, column: 12, scope: !2314)
!2523 = !DILocation(line: 208, column: 13, scope: !2314)
!2524 = !DILocation(line: 209, column: 10, scope: !2314)
!2525 = !DILocation(line: 199, column: 13, scope: !2314)
!2526 = !DILocation(line: 201, column: 34, scope: !2314)
!2527 = !DILocation(line: 201, column: 27, scope: !2314)
!2528 = !DILocation(line: 210, column: 1, scope: !2314)
!2529 = distinct !DISubprogram(name: "getprogname", scope: !458, file: !458, line: 54, type: !2530, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !557)
!2530 = !DISubroutineType(types: !510)
!2531 = !DILocation(line: 58, column: 10, scope: !2529)
!2532 = !DILocation(line: 58, column: 3, scope: !2529)
!2533 = distinct !DISubprogram(name: "memchr2", scope: !460, file: !460, line: 36, type: !2534, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!53, !769, !54, !54, !56}
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2548, !2552, !2554, !2555, !2556, !2558, !2559}
!2537 = !DILocalVariable(name: "s", arg: 1, scope: !2533, file: !460, line: 36, type: !769)
!2538 = !DILocalVariable(name: "c1_in", arg: 2, scope: !2533, file: !460, line: 36, type: !54)
!2539 = !DILocalVariable(name: "c2_in", arg: 3, scope: !2533, file: !460, line: 36, type: !54)
!2540 = !DILocalVariable(name: "n", arg: 4, scope: !2533, file: !460, line: 36, type: !56)
!2541 = !DILocalVariable(name: "c1", scope: !2533, file: !460, line: 45, type: !61)
!2542 = !DILocalVariable(name: "c2", scope: !2533, file: !460, line: 46, type: !61)
!2543 = !DILocalVariable(name: "void_ptr", scope: !2533, file: !460, line: 53, type: !769)
!2544 = !DILocalVariable(name: "char_ptr", scope: !2545, file: !460, line: 58, type: !463)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !460, line: 57, column: 5)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !460, line: 54, column: 3)
!2547 = distinct !DILexicalBlock(scope: !2533, file: !460, line: 54, column: 3)
!2548 = !DILocalVariable(name: "longword_ptr", scope: !2533, file: !460, line: 64, type: !2549)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !2533, file: !460, line: 43, baseType: !58)
!2552 = !DILocalVariable(name: "repeated_one", scope: !2553, file: !460, line: 73, type: !2551)
!2553 = distinct !DILexicalBlock(scope: !2533, file: !460, line: 68, column: 3)
!2554 = !DILocalVariable(name: "repeated_c1", scope: !2553, file: !460, line: 74, type: !2551)
!2555 = !DILocalVariable(name: "repeated_c2", scope: !2553, file: !460, line: 75, type: !2551)
!2556 = !DILocalVariable(name: "longword1", scope: !2557, file: !460, line: 130, type: !2551)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !460, line: 129, column: 7)
!2558 = !DILocalVariable(name: "longword2", scope: !2557, file: !460, line: 131, type: !2551)
!2559 = !DILocalVariable(name: "char_ptr", scope: !2560, file: !460, line: 143, type: !463)
!2560 = distinct !DILexicalBlock(scope: !2533, file: !460, line: 142, column: 3)
!2561 = !DILocation(line: 0, scope: !2533)
!2562 = !DILocation(line: 48, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2533, file: !460, line: 48, column: 7)
!2564 = !DILocation(line: 48, column: 13, scope: !2563)
!2565 = !DILocation(line: 48, column: 10, scope: !2563)
!2566 = !DILocation(line: 48, column: 7, scope: !2533)
!2567 = !DILocation(line: 55, column: 10, scope: !2546)
!2568 = !DILocation(line: 55, column: 14, scope: !2546)
!2569 = !DILocation(line: 49, column: 21, scope: !2563)
!2570 = !DILocation(line: 49, column: 5, scope: !2563)
!2571 = !DILocation(line: 0, scope: !2545)
!2572 = !DILocation(line: 59, column: 11, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2545, file: !460, line: 59, column: 11)
!2574 = !DILocation(line: 59, column: 21, scope: !2573)
!2575 = !DILocation(line: 59, column: 27, scope: !2573)
!2576 = !DILocation(line: 56, column: 8, scope: !2546)
!2577 = distinct !{!2577, !2578, !2579, !618}
!2578 = !DILocation(line: 54, column: 3, scope: !2547)
!2579 = !DILocation(line: 62, column: 5, scope: !2547)
!2580 = !DILocation(line: 54, column: 17, scope: !2547)
!2581 = !DILocation(line: 64, column: 34, scope: !2533)
!2582 = !DILocation(line: 0, scope: !2553)
!2583 = !DILocation(line: 76, column: 17, scope: !2553)
!2584 = !DILocation(line: 77, column: 17, scope: !2553)
!2585 = !DILocation(line: 81, column: 21, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !460, line: 79, column: 7)
!2587 = distinct !DILexicalBlock(scope: !2553, file: !460, line: 78, column: 9)
!2588 = !DILocation(line: 82, column: 21, scope: !2586)
!2589 = !DILocation(line: 128, column: 5, scope: !2553)
!2590 = !DILocation(line: 64, column: 19, scope: !2533)
!2591 = !DILocation(line: 128, column: 14, scope: !2553)
!2592 = !DILocation(line: 130, column: 30, scope: !2557)
!2593 = !DILocation(line: 130, column: 44, scope: !2557)
!2594 = !DILocation(line: 0, scope: !2557)
!2595 = !DILocation(line: 131, column: 44, scope: !2557)
!2596 = !DILocation(line: 133, column: 27, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2557, file: !460, line: 133, column: 13)
!2598 = !DILocation(line: 133, column: 45, scope: !2597)
!2599 = !DILocation(line: 133, column: 43, scope: !2597)
!2600 = !DILocation(line: 134, column: 29, scope: !2597)
!2601 = !DILocation(line: 134, column: 47, scope: !2597)
!2602 = !DILocation(line: 134, column: 45, scope: !2597)
!2603 = !DILocation(line: 134, column: 15, scope: !2597)
!2604 = !DILocation(line: 135, column: 14, scope: !2597)
!2605 = !DILocation(line: 135, column: 37, scope: !2597)
!2606 = !DILocation(line: 133, column: 13, scope: !2557)
!2607 = !DILocation(line: 0, scope: !2560)
!2608 = !DILocation(line: 152, column: 14, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !460, line: 152, column: 5)
!2610 = distinct !DILexicalBlock(scope: !2560, file: !460, line: 152, column: 5)
!2611 = !DILocation(line: 152, column: 5, scope: !2610)
!2612 = !DILocation(line: 143, column: 37, scope: !2560)
!2613 = !DILocation(line: 154, column: 13, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !460, line: 154, column: 13)
!2615 = distinct !DILexicalBlock(scope: !2609, file: !460, line: 153, column: 7)
!2616 = !DILocation(line: 154, column: 23, scope: !2614)
!2617 = !DILocation(line: 154, column: 29, scope: !2614)
!2618 = !DILocation(line: 152, column: 19, scope: !2609)
!2619 = !DILocation(line: 152, column: 24, scope: !2609)
!2620 = distinct !{!2620, !2611, !2621, !618}
!2621 = !DILocation(line: 156, column: 7, scope: !2610)
!2622 = !DILocation(line: 160, column: 1, scope: !2533)
!2623 = distinct !DISubprogram(name: "set_program_name", scope: !300, file: !300, line: 37, type: !577, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2624)
!2624 = !{!2625, !2626, !2627}
!2625 = !DILocalVariable(name: "argv0", arg: 1, scope: !2623, file: !300, line: 37, type: !59)
!2626 = !DILocalVariable(name: "slash", scope: !2623, file: !300, line: 44, type: !59)
!2627 = !DILocalVariable(name: "base", scope: !2623, file: !300, line: 45, type: !59)
!2628 = !DILocation(line: 0, scope: !2623)
!2629 = !DILocation(line: 44, column: 23, scope: !2623)
!2630 = !DILocation(line: 45, column: 22, scope: !2623)
!2631 = !DILocation(line: 46, column: 17, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2623, file: !300, line: 46, column: 7)
!2633 = !DILocation(line: 46, column: 9, scope: !2632)
!2634 = !DILocation(line: 46, column: 25, scope: !2632)
!2635 = !DILocation(line: 46, column: 40, scope: !2632)
!2636 = !DILocalVariable(name: "__s1", arg: 1, scope: !2637, file: !602, line: 974, type: !769)
!2637 = distinct !DISubprogram(name: "memeq", scope: !602, file: !602, line: 974, type: !2638, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!66, !769, !769, !56}
!2640 = !{!2636, !2641, !2642}
!2641 = !DILocalVariable(name: "__s2", arg: 2, scope: !2637, file: !602, line: 974, type: !769)
!2642 = !DILocalVariable(name: "__n", arg: 3, scope: !2637, file: !602, line: 974, type: !56)
!2643 = !DILocation(line: 0, scope: !2637, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 46, column: 28, scope: !2632)
!2645 = !DILocation(line: 976, column: 11, scope: !2637, inlinedAt: !2644)
!2646 = !DILocation(line: 976, column: 10, scope: !2637, inlinedAt: !2644)
!2647 = !DILocation(line: 46, column: 7, scope: !2623)
!2648 = !DILocation(line: 49, column: 11, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !300, line: 49, column: 11)
!2650 = distinct !DILexicalBlock(scope: !2632, file: !300, line: 47, column: 5)
!2651 = !DILocation(line: 49, column: 36, scope: !2649)
!2652 = !DILocation(line: 49, column: 11, scope: !2650)
!2653 = !DILocation(line: 65, column: 16, scope: !2623)
!2654 = !DILocation(line: 71, column: 27, scope: !2623)
!2655 = !DILocation(line: 74, column: 33, scope: !2623)
!2656 = !DILocation(line: 76, column: 1, scope: !2623)
!2657 = !DILocation(line: 0, scope: !305)
!2658 = !DILocation(line: 40, column: 29, scope: !305)
!2659 = !DILocation(line: 41, column: 19, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !305, file: !306, line: 41, column: 7)
!2661 = !DILocation(line: 41, column: 7, scope: !305)
!2662 = !DILocation(line: 47, column: 3, scope: !305)
!2663 = !DILocation(line: 48, column: 3, scope: !305)
!2664 = !DILocation(line: 48, column: 13, scope: !305)
!2665 = !DILocalVariable(name: "ps", arg: 1, scope: !2666, file: !2667, line: 1135, type: !2670)
!2666 = distinct !DISubprogram(name: "mbszero", scope: !2667, file: !2667, line: 1135, type: !2668, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !309, retainedNodes: !2671)
!2667 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!2671 = !{!2665}
!2672 = !DILocation(line: 0, scope: !2666, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 48, column: 18, scope: !305)
!2674 = !DILocalVariable(name: "__dest", arg: 1, scope: !2675, file: !1604, line: 57, type: !53)
!2675 = distinct !DISubprogram(name: "memset", scope: !1604, file: !1604, line: 57, type: !2676, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !309, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!53, !53, !54, !56}
!2678 = !{!2674, !2679, !2680}
!2679 = !DILocalVariable(name: "__ch", arg: 2, scope: !2675, file: !1604, line: 57, type: !54)
!2680 = !DILocalVariable(name: "__len", arg: 3, scope: !2675, file: !1604, line: 57, type: !56)
!2681 = !DILocation(line: 0, scope: !2675, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1137, column: 3, scope: !2666, inlinedAt: !2673)
!2683 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !2682)
!2684 = !DILocation(line: 49, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !305, file: !306, line: 49, column: 7)
!2686 = !DILocation(line: 49, column: 39, scope: !2685)
!2687 = !DILocation(line: 49, column: 44, scope: !2685)
!2688 = !DILocation(line: 54, column: 1, scope: !305)
!2689 = !DISubprogram(name: "mbrtoc32", scope: !317, file: !317, line: 57, type: !2690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!56, !2692, !647, !56, !2694}
!2692 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2693)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2670)
!2695 = distinct !DISubprogram(name: "clone_quoting_options", scope: !342, file: !342, line: 113, type: !2696, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2699)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2698, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!2699 = !{!2700, !2701, !2702}
!2700 = !DILocalVariable(name: "o", arg: 1, scope: !2695, file: !342, line: 113, type: !2698)
!2701 = !DILocalVariable(name: "saved_errno", scope: !2695, file: !342, line: 115, type: !54)
!2702 = !DILocalVariable(name: "p", scope: !2695, file: !342, line: 116, type: !2698)
!2703 = !DILocation(line: 0, scope: !2695)
!2704 = !DILocation(line: 115, column: 21, scope: !2695)
!2705 = !DILocation(line: 116, column: 40, scope: !2695)
!2706 = !DILocation(line: 116, column: 31, scope: !2695)
!2707 = !DILocation(line: 118, column: 9, scope: !2695)
!2708 = !DILocation(line: 119, column: 3, scope: !2695)
!2709 = distinct !DISubprogram(name: "get_quoting_style", scope: !342, file: !342, line: 124, type: !2710, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2714)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!27, !2712}
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!2714 = !{!2715}
!2715 = !DILocalVariable(name: "o", arg: 1, scope: !2709, file: !342, line: 124, type: !2712)
!2716 = !DILocation(line: 0, scope: !2709)
!2717 = !DILocation(line: 126, column: 11, scope: !2709)
!2718 = !DILocation(line: 126, column: 46, scope: !2709)
!2719 = !{!2720, !550, i64 0}
!2720 = !{!"quoting_options", !550, i64 0, !652, i64 4, !550, i64 8, !549, i64 40, !549, i64 48}
!2721 = !DILocation(line: 126, column: 3, scope: !2709)
!2722 = distinct !DISubprogram(name: "set_quoting_style", scope: !342, file: !342, line: 132, type: !2723, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2698, !27}
!2725 = !{!2726, !2727}
!2726 = !DILocalVariable(name: "o", arg: 1, scope: !2722, file: !342, line: 132, type: !2698)
!2727 = !DILocalVariable(name: "s", arg: 2, scope: !2722, file: !342, line: 132, type: !27)
!2728 = !DILocation(line: 0, scope: !2722)
!2729 = !DILocation(line: 134, column: 4, scope: !2722)
!2730 = !DILocation(line: 134, column: 39, scope: !2722)
!2731 = !DILocation(line: 134, column: 45, scope: !2722)
!2732 = !DILocation(line: 135, column: 1, scope: !2722)
!2733 = distinct !DISubprogram(name: "set_char_quoting", scope: !342, file: !342, line: 143, type: !2734, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!54, !2698, !52, !54}
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2743, !2744}
!2737 = !DILocalVariable(name: "o", arg: 1, scope: !2733, file: !342, line: 143, type: !2698)
!2738 = !DILocalVariable(name: "c", arg: 2, scope: !2733, file: !342, line: 143, type: !52)
!2739 = !DILocalVariable(name: "i", arg: 3, scope: !2733, file: !342, line: 143, type: !54)
!2740 = !DILocalVariable(name: "uc", scope: !2733, file: !342, line: 145, type: !61)
!2741 = !DILocalVariable(name: "p", scope: !2733, file: !342, line: 146, type: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2743 = !DILocalVariable(name: "shift", scope: !2733, file: !342, line: 148, type: !54)
!2744 = !DILocalVariable(name: "r", scope: !2733, file: !342, line: 149, type: !7)
!2745 = !DILocation(line: 0, scope: !2733)
!2746 = !DILocation(line: 147, column: 6, scope: !2733)
!2747 = !DILocation(line: 147, column: 62, scope: !2733)
!2748 = !DILocation(line: 147, column: 57, scope: !2733)
!2749 = !DILocation(line: 148, column: 15, scope: !2733)
!2750 = !DILocation(line: 149, column: 21, scope: !2733)
!2751 = !DILocation(line: 149, column: 24, scope: !2733)
!2752 = !DILocation(line: 149, column: 34, scope: !2733)
!2753 = !DILocation(line: 150, column: 13, scope: !2733)
!2754 = !DILocation(line: 150, column: 19, scope: !2733)
!2755 = !DILocation(line: 150, column: 24, scope: !2733)
!2756 = !DILocation(line: 150, column: 6, scope: !2733)
!2757 = !DILocation(line: 151, column: 3, scope: !2733)
!2758 = distinct !DISubprogram(name: "set_quoting_flags", scope: !342, file: !342, line: 159, type: !2759, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!54, !2698, !54}
!2761 = !{!2762, !2763, !2764}
!2762 = !DILocalVariable(name: "o", arg: 1, scope: !2758, file: !342, line: 159, type: !2698)
!2763 = !DILocalVariable(name: "i", arg: 2, scope: !2758, file: !342, line: 159, type: !54)
!2764 = !DILocalVariable(name: "r", scope: !2758, file: !342, line: 163, type: !54)
!2765 = !DILocation(line: 0, scope: !2758)
!2766 = !DILocation(line: 161, column: 8, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2758, file: !342, line: 161, column: 7)
!2768 = !DILocation(line: 161, column: 7, scope: !2758)
!2769 = !DILocation(line: 163, column: 14, scope: !2758)
!2770 = !{!2720, !652, i64 4}
!2771 = !DILocation(line: 164, column: 12, scope: !2758)
!2772 = !DILocation(line: 165, column: 3, scope: !2758)
!2773 = distinct !DISubprogram(name: "set_custom_quoting", scope: !342, file: !342, line: 169, type: !2774, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !2698, !59, !59}
!2776 = !{!2777, !2778, !2779}
!2777 = !DILocalVariable(name: "o", arg: 1, scope: !2773, file: !342, line: 169, type: !2698)
!2778 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2773, file: !342, line: 170, type: !59)
!2779 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2773, file: !342, line: 170, type: !59)
!2780 = !DILocation(line: 0, scope: !2773)
!2781 = !DILocation(line: 172, column: 8, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2773, file: !342, line: 172, column: 7)
!2783 = !DILocation(line: 172, column: 7, scope: !2773)
!2784 = !DILocation(line: 174, column: 6, scope: !2773)
!2785 = !DILocation(line: 174, column: 12, scope: !2773)
!2786 = !DILocation(line: 175, column: 8, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2773, file: !342, line: 175, column: 7)
!2788 = !DILocation(line: 175, column: 19, scope: !2787)
!2789 = !DILocation(line: 176, column: 5, scope: !2787)
!2790 = !DILocation(line: 177, column: 6, scope: !2773)
!2791 = !DILocation(line: 177, column: 17, scope: !2773)
!2792 = !{!2720, !549, i64 40}
!2793 = !DILocation(line: 178, column: 6, scope: !2773)
!2794 = !DILocation(line: 178, column: 18, scope: !2773)
!2795 = !{!2720, !549, i64 48}
!2796 = !DILocation(line: 179, column: 1, scope: !2773)
!2797 = distinct !DISubprogram(name: "quotearg_buffer", scope: !342, file: !342, line: 774, type: !2798, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!56, !51, !56, !59, !56, !2712}
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808}
!2801 = !DILocalVariable(name: "buffer", arg: 1, scope: !2797, file: !342, line: 774, type: !51)
!2802 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2797, file: !342, line: 774, type: !56)
!2803 = !DILocalVariable(name: "arg", arg: 3, scope: !2797, file: !342, line: 775, type: !59)
!2804 = !DILocalVariable(name: "argsize", arg: 4, scope: !2797, file: !342, line: 775, type: !56)
!2805 = !DILocalVariable(name: "o", arg: 5, scope: !2797, file: !342, line: 776, type: !2712)
!2806 = !DILocalVariable(name: "p", scope: !2797, file: !342, line: 778, type: !2712)
!2807 = !DILocalVariable(name: "saved_errno", scope: !2797, file: !342, line: 779, type: !54)
!2808 = !DILocalVariable(name: "r", scope: !2797, file: !342, line: 780, type: !56)
!2809 = !DILocation(line: 0, scope: !2797)
!2810 = !DILocation(line: 778, column: 37, scope: !2797)
!2811 = !DILocation(line: 779, column: 21, scope: !2797)
!2812 = !DILocation(line: 781, column: 43, scope: !2797)
!2813 = !DILocation(line: 781, column: 53, scope: !2797)
!2814 = !DILocation(line: 781, column: 60, scope: !2797)
!2815 = !DILocation(line: 782, column: 43, scope: !2797)
!2816 = !DILocation(line: 782, column: 58, scope: !2797)
!2817 = !DILocation(line: 780, column: 14, scope: !2797)
!2818 = !DILocation(line: 783, column: 9, scope: !2797)
!2819 = !DILocation(line: 784, column: 3, scope: !2797)
!2820 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !342, file: !342, line: 251, type: !2821, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2825)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!56, !51, !56, !59, !56, !27, !54, !2823, !59, !59}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2850, !2852, !2855, !2856, !2857, !2858, !2861, !2862, !2865, !2869, !2870, !2878, !2881, !2882, !2884, !2885, !2886, !2887}
!2826 = !DILocalVariable(name: "buffer", arg: 1, scope: !2820, file: !342, line: 251, type: !51)
!2827 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2820, file: !342, line: 251, type: !56)
!2828 = !DILocalVariable(name: "arg", arg: 3, scope: !2820, file: !342, line: 252, type: !59)
!2829 = !DILocalVariable(name: "argsize", arg: 4, scope: !2820, file: !342, line: 252, type: !56)
!2830 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2820, file: !342, line: 253, type: !27)
!2831 = !DILocalVariable(name: "flags", arg: 6, scope: !2820, file: !342, line: 253, type: !54)
!2832 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2820, file: !342, line: 254, type: !2823)
!2833 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2820, file: !342, line: 255, type: !59)
!2834 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2820, file: !342, line: 256, type: !59)
!2835 = !DILocalVariable(name: "unibyte_locale", scope: !2820, file: !342, line: 258, type: !66)
!2836 = !DILocalVariable(name: "len", scope: !2820, file: !342, line: 260, type: !56)
!2837 = !DILocalVariable(name: "orig_buffersize", scope: !2820, file: !342, line: 261, type: !56)
!2838 = !DILocalVariable(name: "quote_string", scope: !2820, file: !342, line: 262, type: !59)
!2839 = !DILocalVariable(name: "quote_string_len", scope: !2820, file: !342, line: 263, type: !56)
!2840 = !DILocalVariable(name: "backslash_escapes", scope: !2820, file: !342, line: 264, type: !66)
!2841 = !DILocalVariable(name: "elide_outer_quotes", scope: !2820, file: !342, line: 265, type: !66)
!2842 = !DILocalVariable(name: "encountered_single_quote", scope: !2820, file: !342, line: 266, type: !66)
!2843 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2820, file: !342, line: 267, type: !66)
!2844 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2820, file: !342, line: 309, type: !66)
!2845 = !DILocalVariable(name: "lq", scope: !2846, file: !342, line: 361, type: !59)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !342, line: 361, column: 11)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !342, line: 360, column: 13)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !342, line: 333, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2820, file: !342, line: 312, column: 5)
!2850 = !DILocalVariable(name: "i", scope: !2851, file: !342, line: 395, type: !56)
!2851 = distinct !DILexicalBlock(scope: !2820, file: !342, line: 395, column: 3)
!2852 = !DILocalVariable(name: "is_right_quote", scope: !2853, file: !342, line: 397, type: !66)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !342, line: 396, column: 5)
!2854 = distinct !DILexicalBlock(scope: !2851, file: !342, line: 395, column: 3)
!2855 = !DILocalVariable(name: "escaping", scope: !2853, file: !342, line: 398, type: !66)
!2856 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2853, file: !342, line: 399, type: !66)
!2857 = !DILocalVariable(name: "c", scope: !2853, file: !342, line: 417, type: !61)
!2858 = !DILocalVariable(name: "m", scope: !2859, file: !342, line: 598, type: !56)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !342, line: 596, column: 11)
!2860 = distinct !DILexicalBlock(scope: !2853, file: !342, line: 419, column: 9)
!2861 = !DILocalVariable(name: "printable", scope: !2859, file: !342, line: 600, type: !66)
!2862 = !DILocalVariable(name: "mbs", scope: !2863, file: !342, line: 609, type: !387)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !342, line: 608, column: 15)
!2864 = distinct !DILexicalBlock(scope: !2859, file: !342, line: 602, column: 17)
!2865 = !DILocalVariable(name: "w", scope: !2866, file: !342, line: 618, type: !316)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !342, line: 617, column: 19)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !342, line: 616, column: 17)
!2868 = distinct !DILexicalBlock(scope: !2863, file: !342, line: 616, column: 17)
!2869 = !DILocalVariable(name: "bytes", scope: !2866, file: !342, line: 619, type: !56)
!2870 = !DILocalVariable(name: "j", scope: !2871, file: !342, line: 648, type: !56)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !342, line: 648, column: 29)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !342, line: 647, column: 27)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !342, line: 645, column: 29)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !342, line: 636, column: 23)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !342, line: 628, column: 30)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !342, line: 623, column: 30)
!2877 = distinct !DILexicalBlock(scope: !2866, file: !342, line: 621, column: 25)
!2878 = !DILocalVariable(name: "ilim", scope: !2879, file: !342, line: 674, type: !56)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !342, line: 671, column: 15)
!2880 = distinct !DILexicalBlock(scope: !2859, file: !342, line: 670, column: 17)
!2881 = !DILabel(scope: !2820, name: "process_input", file: !342, line: 308)
!2882 = !DILabel(scope: !2883, name: "c_and_shell_escape", file: !342, line: 502)
!2883 = distinct !DILexicalBlock(scope: !2860, file: !342, line: 478, column: 9)
!2884 = !DILabel(scope: !2883, name: "c_escape", file: !342, line: 507)
!2885 = !DILabel(scope: !2853, name: "store_escape", file: !342, line: 709)
!2886 = !DILabel(scope: !2853, name: "store_c", file: !342, line: 712)
!2887 = !DILabel(scope: !2820, name: "force_outer_quoting_style", file: !342, line: 753)
!2888 = !DILocation(line: 0, scope: !2820)
!2889 = !DILocation(line: 258, column: 25, scope: !2820)
!2890 = !DILocation(line: 258, column: 36, scope: !2820)
!2891 = !DILocation(line: 267, column: 3, scope: !2820)
!2892 = !DILocation(line: 261, column: 10, scope: !2820)
!2893 = !DILocation(line: 262, column: 15, scope: !2820)
!2894 = !DILocation(line: 263, column: 10, scope: !2820)
!2895 = !DILocation(line: 308, column: 2, scope: !2820)
!2896 = !DILocation(line: 311, column: 3, scope: !2820)
!2897 = !DILocation(line: 318, column: 11, scope: !2849)
!2898 = !DILocation(line: 319, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !342, line: 319, column: 9)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !342, line: 319, column: 9)
!2901 = distinct !DILexicalBlock(scope: !2849, file: !342, line: 318, column: 11)
!2902 = !DILocation(line: 319, column: 9, scope: !2900)
!2903 = !DILocation(line: 0, scope: !378, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 357, column: 26, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !342, line: 335, column: 11)
!2906 = distinct !DILexicalBlock(scope: !2848, file: !342, line: 334, column: 13)
!2907 = !DILocation(line: 199, column: 29, scope: !378, inlinedAt: !2904)
!2908 = !DILocation(line: 201, column: 19, scope: !2909, inlinedAt: !2904)
!2909 = distinct !DILexicalBlock(scope: !378, file: !342, line: 201, column: 7)
!2910 = !DILocation(line: 201, column: 7, scope: !378, inlinedAt: !2904)
!2911 = !DILocation(line: 229, column: 3, scope: !378, inlinedAt: !2904)
!2912 = !DILocation(line: 230, column: 3, scope: !378, inlinedAt: !2904)
!2913 = !DILocation(line: 230, column: 13, scope: !378, inlinedAt: !2904)
!2914 = !DILocalVariable(name: "ps", arg: 1, scope: !2915, file: !2667, line: 1135, type: !2918)
!2915 = distinct !DISubprogram(name: "mbszero", scope: !2667, file: !2667, line: 1135, type: !2916, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2919)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{null, !2918}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!2919 = !{!2914}
!2920 = !DILocation(line: 0, scope: !2915, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 230, column: 18, scope: !378, inlinedAt: !2904)
!2922 = !DILocalVariable(name: "__dest", arg: 1, scope: !2923, file: !1604, line: 57, type: !53)
!2923 = distinct !DISubprogram(name: "memset", scope: !1604, file: !1604, line: 57, type: !2676, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2924)
!2924 = !{!2922, !2925, !2926}
!2925 = !DILocalVariable(name: "__ch", arg: 2, scope: !2923, file: !1604, line: 57, type: !54)
!2926 = !DILocalVariable(name: "__len", arg: 3, scope: !2923, file: !1604, line: 57, type: !56)
!2927 = !DILocation(line: 0, scope: !2923, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 1137, column: 3, scope: !2915, inlinedAt: !2921)
!2929 = !DILocation(line: 59, column: 10, scope: !2923, inlinedAt: !2928)
!2930 = !DILocation(line: 231, column: 7, scope: !2931, inlinedAt: !2904)
!2931 = distinct !DILexicalBlock(scope: !378, file: !342, line: 231, column: 7)
!2932 = !DILocation(line: 231, column: 40, scope: !2931, inlinedAt: !2904)
!2933 = !DILocation(line: 231, column: 45, scope: !2931, inlinedAt: !2904)
!2934 = !DILocation(line: 235, column: 1, scope: !378, inlinedAt: !2904)
!2935 = !DILocation(line: 0, scope: !378, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 358, column: 27, scope: !2905)
!2937 = !DILocation(line: 199, column: 29, scope: !378, inlinedAt: !2936)
!2938 = !DILocation(line: 201, column: 19, scope: !2909, inlinedAt: !2936)
!2939 = !DILocation(line: 201, column: 7, scope: !378, inlinedAt: !2936)
!2940 = !DILocation(line: 229, column: 3, scope: !378, inlinedAt: !2936)
!2941 = !DILocation(line: 230, column: 3, scope: !378, inlinedAt: !2936)
!2942 = !DILocation(line: 230, column: 13, scope: !378, inlinedAt: !2936)
!2943 = !DILocation(line: 0, scope: !2915, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 230, column: 18, scope: !378, inlinedAt: !2936)
!2945 = !DILocation(line: 0, scope: !2923, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 1137, column: 3, scope: !2915, inlinedAt: !2944)
!2947 = !DILocation(line: 59, column: 10, scope: !2923, inlinedAt: !2946)
!2948 = !DILocation(line: 231, column: 7, scope: !2931, inlinedAt: !2936)
!2949 = !DILocation(line: 231, column: 40, scope: !2931, inlinedAt: !2936)
!2950 = !DILocation(line: 231, column: 45, scope: !2931, inlinedAt: !2936)
!2951 = !DILocation(line: 235, column: 1, scope: !378, inlinedAt: !2936)
!2952 = !DILocation(line: 360, column: 13, scope: !2848)
!2953 = !DILocation(line: 0, scope: !2846)
!2954 = !DILocation(line: 361, column: 45, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2846, file: !342, line: 361, column: 11)
!2956 = !DILocation(line: 361, column: 11, scope: !2846)
!2957 = !DILocation(line: 362, column: 13, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !342, line: 362, column: 13)
!2959 = distinct !DILexicalBlock(scope: !2955, file: !342, line: 362, column: 13)
!2960 = !DILocation(line: 362, column: 13, scope: !2959)
!2961 = !DILocation(line: 361, column: 52, scope: !2955)
!2962 = distinct !{!2962, !2956, !2963, !618}
!2963 = !DILocation(line: 362, column: 13, scope: !2846)
!2964 = !DILocation(line: 260, column: 10, scope: !2820)
!2965 = !DILocation(line: 365, column: 28, scope: !2848)
!2966 = !DILocation(line: 367, column: 7, scope: !2849)
!2967 = !DILocation(line: 370, column: 7, scope: !2849)
!2968 = !DILocation(line: 376, column: 11, scope: !2849)
!2969 = !DILocation(line: 381, column: 11, scope: !2849)
!2970 = !DILocation(line: 382, column: 9, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !342, line: 382, column: 9)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !342, line: 382, column: 9)
!2973 = distinct !DILexicalBlock(scope: !2849, file: !342, line: 381, column: 11)
!2974 = !DILocation(line: 382, column: 9, scope: !2972)
!2975 = !DILocation(line: 389, column: 7, scope: !2849)
!2976 = !DILocation(line: 392, column: 7, scope: !2849)
!2977 = !DILocation(line: 0, scope: !2851)
!2978 = !DILocation(line: 395, column: 8, scope: !2851)
!2979 = !DILocation(line: 395, column: 34, scope: !2854)
!2980 = !DILocation(line: 395, column: 26, scope: !2854)
!2981 = !DILocation(line: 395, column: 48, scope: !2854)
!2982 = !DILocation(line: 395, column: 55, scope: !2854)
!2983 = !DILocation(line: 395, column: 3, scope: !2851)
!2984 = !DILocation(line: 395, column: 67, scope: !2854)
!2985 = !DILocation(line: 0, scope: !2853)
!2986 = !DILocation(line: 402, column: 11, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2853, file: !342, line: 401, column: 11)
!2988 = !DILocation(line: 404, column: 17, scope: !2987)
!2989 = !DILocation(line: 405, column: 39, scope: !2987)
!2990 = !DILocation(line: 409, column: 32, scope: !2987)
!2991 = !DILocation(line: 405, column: 19, scope: !2987)
!2992 = !DILocation(line: 405, column: 15, scope: !2987)
!2993 = !DILocation(line: 410, column: 11, scope: !2987)
!2994 = !DILocation(line: 410, column: 25, scope: !2987)
!2995 = !DILocalVariable(name: "__s1", arg: 1, scope: !2996, file: !602, line: 974, type: !769)
!2996 = distinct !DISubprogram(name: "memeq", scope: !602, file: !602, line: 974, type: !2638, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !2997)
!2997 = !{!2995, !2998, !2999}
!2998 = !DILocalVariable(name: "__s2", arg: 2, scope: !2996, file: !602, line: 974, type: !769)
!2999 = !DILocalVariable(name: "__n", arg: 3, scope: !2996, file: !602, line: 974, type: !56)
!3000 = !DILocation(line: 0, scope: !2996, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 410, column: 14, scope: !2987)
!3002 = !DILocation(line: 976, column: 11, scope: !2996, inlinedAt: !3001)
!3003 = !DILocation(line: 976, column: 10, scope: !2996, inlinedAt: !3001)
!3004 = !DILocation(line: 401, column: 11, scope: !2853)
!3005 = !DILocation(line: 417, column: 25, scope: !2853)
!3006 = !DILocation(line: 418, column: 7, scope: !2853)
!3007 = !DILocation(line: 421, column: 15, scope: !2860)
!3008 = !DILocation(line: 423, column: 15, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !342, line: 423, column: 15)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !342, line: 422, column: 13)
!3011 = distinct !DILexicalBlock(scope: !2860, file: !342, line: 421, column: 15)
!3012 = !DILocation(line: 423, column: 15, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !342, line: 423, column: 15)
!3014 = !DILocation(line: 423, column: 15, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !342, line: 423, column: 15)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !342, line: 423, column: 15)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !342, line: 423, column: 15)
!3018 = !DILocation(line: 423, column: 15, scope: !3016)
!3019 = !DILocation(line: 423, column: 15, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !342, line: 423, column: 15)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !342, line: 423, column: 15)
!3022 = !DILocation(line: 423, column: 15, scope: !3021)
!3023 = !DILocation(line: 423, column: 15, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !342, line: 423, column: 15)
!3025 = distinct !DILexicalBlock(scope: !3017, file: !342, line: 423, column: 15)
!3026 = !DILocation(line: 423, column: 15, scope: !3025)
!3027 = !DILocation(line: 423, column: 15, scope: !3017)
!3028 = !DILocation(line: 423, column: 15, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !342, line: 423, column: 15)
!3030 = distinct !DILexicalBlock(scope: !3009, file: !342, line: 423, column: 15)
!3031 = !DILocation(line: 423, column: 15, scope: !3030)
!3032 = !DILocation(line: 431, column: 19, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3010, file: !342, line: 430, column: 19)
!3034 = !DILocation(line: 431, column: 24, scope: !3033)
!3035 = !DILocation(line: 431, column: 28, scope: !3033)
!3036 = !DILocation(line: 431, column: 38, scope: !3033)
!3037 = !DILocation(line: 431, column: 48, scope: !3033)
!3038 = !DILocation(line: 431, column: 59, scope: !3033)
!3039 = !DILocation(line: 433, column: 19, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !342, line: 433, column: 19)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !342, line: 433, column: 19)
!3042 = distinct !DILexicalBlock(scope: !3033, file: !342, line: 432, column: 17)
!3043 = !DILocation(line: 433, column: 19, scope: !3041)
!3044 = !DILocation(line: 434, column: 19, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !342, line: 434, column: 19)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !342, line: 434, column: 19)
!3047 = !DILocation(line: 434, column: 19, scope: !3046)
!3048 = !DILocation(line: 435, column: 17, scope: !3042)
!3049 = !DILocation(line: 442, column: 20, scope: !3011)
!3050 = !DILocation(line: 447, column: 11, scope: !2860)
!3051 = !DILocation(line: 450, column: 19, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2860, file: !342, line: 448, column: 13)
!3053 = !DILocation(line: 456, column: 19, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3052, file: !342, line: 455, column: 19)
!3055 = !DILocation(line: 456, column: 24, scope: !3054)
!3056 = !DILocation(line: 456, column: 28, scope: !3054)
!3057 = !DILocation(line: 456, column: 38, scope: !3054)
!3058 = !DILocation(line: 456, column: 47, scope: !3054)
!3059 = !DILocation(line: 456, column: 41, scope: !3054)
!3060 = !DILocation(line: 456, column: 52, scope: !3054)
!3061 = !DILocation(line: 455, column: 19, scope: !3052)
!3062 = !DILocation(line: 457, column: 25, scope: !3054)
!3063 = !DILocation(line: 457, column: 17, scope: !3054)
!3064 = !DILocation(line: 464, column: 25, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3054, file: !342, line: 458, column: 19)
!3066 = !DILocation(line: 468, column: 21, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !342, line: 468, column: 21)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !342, line: 468, column: 21)
!3069 = !DILocation(line: 468, column: 21, scope: !3068)
!3070 = !DILocation(line: 469, column: 21, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !342, line: 469, column: 21)
!3072 = distinct !DILexicalBlock(scope: !3065, file: !342, line: 469, column: 21)
!3073 = !DILocation(line: 469, column: 21, scope: !3072)
!3074 = !DILocation(line: 470, column: 21, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !342, line: 470, column: 21)
!3076 = distinct !DILexicalBlock(scope: !3065, file: !342, line: 470, column: 21)
!3077 = !DILocation(line: 470, column: 21, scope: !3076)
!3078 = !DILocation(line: 471, column: 21, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !342, line: 471, column: 21)
!3080 = distinct !DILexicalBlock(scope: !3065, file: !342, line: 471, column: 21)
!3081 = !DILocation(line: 471, column: 21, scope: !3080)
!3082 = !DILocation(line: 472, column: 21, scope: !3065)
!3083 = !DILocation(line: 482, column: 33, scope: !2883)
!3084 = !DILocation(line: 483, column: 33, scope: !2883)
!3085 = !DILocation(line: 485, column: 33, scope: !2883)
!3086 = !DILocation(line: 486, column: 33, scope: !2883)
!3087 = !DILocation(line: 487, column: 33, scope: !2883)
!3088 = !DILocation(line: 490, column: 17, scope: !2883)
!3089 = !DILocation(line: 492, column: 21, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !342, line: 491, column: 15)
!3091 = distinct !DILexicalBlock(scope: !2883, file: !342, line: 490, column: 17)
!3092 = !DILocation(line: 499, column: 35, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2883, file: !342, line: 499, column: 17)
!3094 = !DILocation(line: 499, column: 57, scope: !3093)
!3095 = !DILocation(line: 0, scope: !2883)
!3096 = !DILocation(line: 502, column: 11, scope: !2883)
!3097 = !DILocation(line: 504, column: 17, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2883, file: !342, line: 503, column: 17)
!3099 = !DILocation(line: 507, column: 11, scope: !2883)
!3100 = !DILocation(line: 508, column: 17, scope: !2883)
!3101 = !DILocation(line: 517, column: 15, scope: !2860)
!3102 = !DILocation(line: 517, column: 40, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !2860, file: !342, line: 517, column: 15)
!3104 = !DILocation(line: 517, column: 47, scope: !3103)
!3105 = !DILocation(line: 517, column: 18, scope: !3103)
!3106 = !DILocation(line: 521, column: 17, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2860, file: !342, line: 521, column: 15)
!3108 = !DILocation(line: 521, column: 15, scope: !2860)
!3109 = !DILocation(line: 525, column: 11, scope: !2860)
!3110 = !DILocation(line: 537, column: 15, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !2860, file: !342, line: 536, column: 15)
!3112 = !DILocation(line: 536, column: 15, scope: !2860)
!3113 = !DILocation(line: 544, column: 15, scope: !2860)
!3114 = !DILocation(line: 546, column: 19, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !342, line: 545, column: 13)
!3116 = distinct !DILexicalBlock(scope: !2860, file: !342, line: 544, column: 15)
!3117 = !DILocation(line: 549, column: 19, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3115, file: !342, line: 549, column: 19)
!3119 = !DILocation(line: 549, column: 30, scope: !3118)
!3120 = !DILocation(line: 558, column: 15, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !342, line: 558, column: 15)
!3122 = distinct !DILexicalBlock(scope: !3115, file: !342, line: 558, column: 15)
!3123 = !DILocation(line: 558, column: 15, scope: !3122)
!3124 = !DILocation(line: 559, column: 15, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !342, line: 559, column: 15)
!3126 = distinct !DILexicalBlock(scope: !3115, file: !342, line: 559, column: 15)
!3127 = !DILocation(line: 559, column: 15, scope: !3126)
!3128 = !DILocation(line: 560, column: 15, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !342, line: 560, column: 15)
!3130 = distinct !DILexicalBlock(scope: !3115, file: !342, line: 560, column: 15)
!3131 = !DILocation(line: 560, column: 15, scope: !3130)
!3132 = !DILocation(line: 562, column: 13, scope: !3115)
!3133 = !DILocation(line: 602, column: 17, scope: !2859)
!3134 = !DILocation(line: 0, scope: !2859)
!3135 = !DILocation(line: 605, column: 29, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !2864, file: !342, line: 603, column: 15)
!3137 = !DILocation(line: 605, column: 41, scope: !3136)
!3138 = !DILocation(line: 670, column: 23, scope: !2880)
!3139 = !DILocation(line: 609, column: 17, scope: !2863)
!3140 = !DILocation(line: 609, column: 27, scope: !2863)
!3141 = !DILocation(line: 0, scope: !2915, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 609, column: 32, scope: !2863)
!3143 = !DILocation(line: 0, scope: !2923, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 1137, column: 3, scope: !2915, inlinedAt: !3142)
!3145 = !DILocation(line: 59, column: 10, scope: !2923, inlinedAt: !3144)
!3146 = !DILocation(line: 613, column: 29, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !2863, file: !342, line: 613, column: 21)
!3148 = !DILocation(line: 613, column: 21, scope: !2863)
!3149 = !DILocation(line: 614, column: 29, scope: !3147)
!3150 = !DILocation(line: 614, column: 19, scope: !3147)
!3151 = !DILocation(line: 618, column: 21, scope: !2866)
!3152 = !DILocation(line: 620, column: 54, scope: !2866)
!3153 = !DILocation(line: 0, scope: !2866)
!3154 = !DILocation(line: 619, column: 36, scope: !2866)
!3155 = !DILocation(line: 621, column: 25, scope: !2866)
!3156 = !DILocation(line: 631, column: 38, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !2875, file: !342, line: 629, column: 23)
!3158 = !DILocation(line: 631, column: 48, scope: !3157)
!3159 = !DILocation(line: 665, column: 19, scope: !2867)
!3160 = !DILocation(line: 666, column: 15, scope: !2864)
!3161 = !DILocation(line: 626, column: 25, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !2876, file: !342, line: 624, column: 23)
!3163 = !DILocation(line: 631, column: 51, scope: !3157)
!3164 = !DILocation(line: 631, column: 25, scope: !3157)
!3165 = !DILocation(line: 632, column: 28, scope: !3157)
!3166 = !DILocation(line: 631, column: 34, scope: !3157)
!3167 = distinct !{!3167, !3164, !3165, !618}
!3168 = !DILocation(line: 646, column: 29, scope: !2873)
!3169 = !DILocation(line: 0, scope: !2871)
!3170 = !DILocation(line: 649, column: 49, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !2871, file: !342, line: 648, column: 29)
!3172 = !DILocation(line: 649, column: 39, scope: !3171)
!3173 = !DILocation(line: 649, column: 31, scope: !3171)
!3174 = !DILocation(line: 648, column: 60, scope: !3171)
!3175 = !DILocation(line: 648, column: 50, scope: !3171)
!3176 = !DILocation(line: 648, column: 29, scope: !2871)
!3177 = distinct !{!3177, !3176, !3178, !618}
!3178 = !DILocation(line: 654, column: 33, scope: !2871)
!3179 = !DILocation(line: 657, column: 43, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !2874, file: !342, line: 657, column: 29)
!3181 = !DILocalVariable(name: "wc", arg: 1, scope: !3182, file: !3183, line: 865, type: !3186)
!3182 = distinct !DISubprogram(name: "c32isprint", scope: !3183, file: !3183, line: 865, type: !3184, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3188)
!3183 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!54, !3186}
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3187, line: 20, baseType: !7)
!3187 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3188 = !{!3181}
!3189 = !DILocation(line: 0, scope: !3182, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 657, column: 31, scope: !3180)
!3191 = !DILocation(line: 871, column: 10, scope: !3182, inlinedAt: !3190)
!3192 = !DILocation(line: 657, column: 31, scope: !3180)
!3193 = !DILocation(line: 664, column: 23, scope: !2866)
!3194 = !DILocation(line: 753, column: 2, scope: !2820)
!3195 = !DILocation(line: 756, column: 51, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !2820, file: !342, line: 756, column: 7)
!3197 = !DILocation(line: 670, column: 19, scope: !2880)
!3198 = !DILocation(line: 670, column: 45, scope: !2880)
!3199 = !DILocation(line: 674, column: 33, scope: !2879)
!3200 = !DILocation(line: 0, scope: !2879)
!3201 = !DILocation(line: 676, column: 17, scope: !2879)
!3202 = !DILocation(line: 398, column: 12, scope: !2853)
!3203 = !DILocation(line: 678, column: 43, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !342, line: 678, column: 25)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !342, line: 677, column: 19)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !342, line: 676, column: 17)
!3207 = distinct !DILexicalBlock(scope: !2879, file: !342, line: 676, column: 17)
!3208 = !DILocation(line: 680, column: 25, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !342, line: 680, column: 25)
!3210 = distinct !DILexicalBlock(scope: !3204, file: !342, line: 679, column: 23)
!3211 = !DILocation(line: 680, column: 25, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3209, file: !342, line: 680, column: 25)
!3213 = !DILocation(line: 680, column: 25, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !342, line: 680, column: 25)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !342, line: 680, column: 25)
!3216 = distinct !DILexicalBlock(scope: !3212, file: !342, line: 680, column: 25)
!3217 = !DILocation(line: 680, column: 25, scope: !3215)
!3218 = !DILocation(line: 680, column: 25, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !342, line: 680, column: 25)
!3220 = distinct !DILexicalBlock(scope: !3216, file: !342, line: 680, column: 25)
!3221 = !DILocation(line: 680, column: 25, scope: !3220)
!3222 = !DILocation(line: 680, column: 25, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !342, line: 680, column: 25)
!3224 = distinct !DILexicalBlock(scope: !3216, file: !342, line: 680, column: 25)
!3225 = !DILocation(line: 680, column: 25, scope: !3224)
!3226 = !DILocation(line: 680, column: 25, scope: !3216)
!3227 = !DILocation(line: 680, column: 25, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !342, line: 680, column: 25)
!3229 = distinct !DILexicalBlock(scope: !3209, file: !342, line: 680, column: 25)
!3230 = !DILocation(line: 680, column: 25, scope: !3229)
!3231 = !DILocation(line: 681, column: 25, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !342, line: 681, column: 25)
!3233 = distinct !DILexicalBlock(scope: !3210, file: !342, line: 681, column: 25)
!3234 = !DILocation(line: 681, column: 25, scope: !3233)
!3235 = !DILocation(line: 682, column: 25, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !342, line: 682, column: 25)
!3237 = distinct !DILexicalBlock(scope: !3210, file: !342, line: 682, column: 25)
!3238 = !DILocation(line: 682, column: 25, scope: !3237)
!3239 = !DILocation(line: 683, column: 38, scope: !3210)
!3240 = !DILocation(line: 683, column: 33, scope: !3210)
!3241 = !DILocation(line: 684, column: 23, scope: !3210)
!3242 = !DILocation(line: 685, column: 30, scope: !3204)
!3243 = !DILocation(line: 687, column: 25, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !342, line: 687, column: 25)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !342, line: 687, column: 25)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !342, line: 686, column: 23)
!3247 = distinct !DILexicalBlock(scope: !3204, file: !342, line: 685, column: 30)
!3248 = !DILocation(line: 687, column: 25, scope: !3245)
!3249 = !DILocation(line: 689, column: 23, scope: !3246)
!3250 = !DILocation(line: 690, column: 35, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3205, file: !342, line: 690, column: 25)
!3252 = !DILocation(line: 690, column: 30, scope: !3251)
!3253 = !DILocation(line: 690, column: 25, scope: !3205)
!3254 = !DILocation(line: 692, column: 21, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !342, line: 692, column: 21)
!3256 = distinct !DILexicalBlock(scope: !3205, file: !342, line: 692, column: 21)
!3257 = !DILocation(line: 692, column: 21, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !342, line: 692, column: 21)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !342, line: 692, column: 21)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !342, line: 692, column: 21)
!3261 = !DILocation(line: 692, column: 21, scope: !3259)
!3262 = !DILocation(line: 692, column: 21, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !342, line: 692, column: 21)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !342, line: 692, column: 21)
!3265 = !DILocation(line: 692, column: 21, scope: !3264)
!3266 = !DILocation(line: 692, column: 21, scope: !3260)
!3267 = !DILocation(line: 0, scope: !3205)
!3268 = !DILocation(line: 693, column: 21, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !342, line: 693, column: 21)
!3270 = distinct !DILexicalBlock(scope: !3205, file: !342, line: 693, column: 21)
!3271 = !DILocation(line: 693, column: 21, scope: !3270)
!3272 = !DILocation(line: 694, column: 25, scope: !3205)
!3273 = !DILocation(line: 676, column: 17, scope: !3206)
!3274 = distinct !{!3274, !3275, !3276}
!3275 = !DILocation(line: 676, column: 17, scope: !3207)
!3276 = !DILocation(line: 695, column: 19, scope: !3207)
!3277 = !DILocation(line: 409, column: 30, scope: !2987)
!3278 = !DILocation(line: 702, column: 34, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !2853, file: !342, line: 702, column: 11)
!3280 = !DILocation(line: 704, column: 14, scope: !3279)
!3281 = !DILocation(line: 705, column: 14, scope: !3279)
!3282 = !DILocation(line: 705, column: 35, scope: !3279)
!3283 = !DILocation(line: 705, column: 17, scope: !3279)
!3284 = !DILocation(line: 705, column: 47, scope: !3279)
!3285 = !DILocation(line: 705, column: 65, scope: !3279)
!3286 = !DILocation(line: 706, column: 11, scope: !3279)
!3287 = !DILocation(line: 702, column: 11, scope: !2853)
!3288 = !DILocation(line: 395, column: 15, scope: !2851)
!3289 = !DILocation(line: 709, column: 5, scope: !2853)
!3290 = !DILocation(line: 710, column: 7, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !2853, file: !342, line: 710, column: 7)
!3292 = !DILocation(line: 710, column: 7, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3291, file: !342, line: 710, column: 7)
!3294 = !DILocation(line: 710, column: 7, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !342, line: 710, column: 7)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !342, line: 710, column: 7)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !342, line: 710, column: 7)
!3298 = !DILocation(line: 710, column: 7, scope: !3296)
!3299 = !DILocation(line: 710, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !342, line: 710, column: 7)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !342, line: 710, column: 7)
!3302 = !DILocation(line: 710, column: 7, scope: !3301)
!3303 = !DILocation(line: 710, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !342, line: 710, column: 7)
!3305 = distinct !DILexicalBlock(scope: !3297, file: !342, line: 710, column: 7)
!3306 = !DILocation(line: 710, column: 7, scope: !3305)
!3307 = !DILocation(line: 710, column: 7, scope: !3297)
!3308 = !DILocation(line: 710, column: 7, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !342, line: 710, column: 7)
!3310 = distinct !DILexicalBlock(scope: !3291, file: !342, line: 710, column: 7)
!3311 = !DILocation(line: 710, column: 7, scope: !3310)
!3312 = !DILocation(line: 712, column: 5, scope: !2853)
!3313 = !DILocation(line: 713, column: 7, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !342, line: 713, column: 7)
!3315 = distinct !DILexicalBlock(scope: !2853, file: !342, line: 713, column: 7)
!3316 = !DILocation(line: 417, column: 21, scope: !2853)
!3317 = !DILocation(line: 713, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !342, line: 713, column: 7)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !342, line: 713, column: 7)
!3320 = distinct !DILexicalBlock(scope: !3314, file: !342, line: 713, column: 7)
!3321 = !DILocation(line: 713, column: 7, scope: !3319)
!3322 = !DILocation(line: 713, column: 7, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !342, line: 713, column: 7)
!3324 = distinct !DILexicalBlock(scope: !3320, file: !342, line: 713, column: 7)
!3325 = !DILocation(line: 713, column: 7, scope: !3324)
!3326 = !DILocation(line: 713, column: 7, scope: !3320)
!3327 = !DILocation(line: 714, column: 7, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !342, line: 714, column: 7)
!3329 = distinct !DILexicalBlock(scope: !2853, file: !342, line: 714, column: 7)
!3330 = !DILocation(line: 714, column: 7, scope: !3329)
!3331 = !DILocation(line: 716, column: 11, scope: !2853)
!3332 = !DILocation(line: 718, column: 5, scope: !2854)
!3333 = !DILocation(line: 395, column: 82, scope: !2854)
!3334 = !DILocation(line: 395, column: 3, scope: !2854)
!3335 = distinct !{!3335, !2983, !3336, !618}
!3336 = !DILocation(line: 718, column: 5, scope: !2851)
!3337 = !DILocation(line: 720, column: 11, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !2820, file: !342, line: 720, column: 7)
!3339 = !DILocation(line: 720, column: 16, scope: !3338)
!3340 = !DILocation(line: 728, column: 51, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !2820, file: !342, line: 728, column: 7)
!3342 = !DILocation(line: 731, column: 11, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3341, file: !342, line: 730, column: 5)
!3344 = !DILocation(line: 732, column: 16, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3343, file: !342, line: 731, column: 11)
!3346 = !DILocation(line: 732, column: 9, scope: !3345)
!3347 = !DILocation(line: 736, column: 18, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3345, file: !342, line: 736, column: 16)
!3349 = !DILocation(line: 736, column: 29, scope: !3348)
!3350 = !DILocation(line: 745, column: 7, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !2820, file: !342, line: 745, column: 7)
!3352 = !DILocation(line: 745, column: 20, scope: !3351)
!3353 = !DILocation(line: 746, column: 12, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !342, line: 746, column: 5)
!3355 = distinct !DILexicalBlock(scope: !3351, file: !342, line: 746, column: 5)
!3356 = !DILocation(line: 746, column: 5, scope: !3355)
!3357 = !DILocation(line: 747, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !342, line: 747, column: 7)
!3359 = distinct !DILexicalBlock(scope: !3354, file: !342, line: 747, column: 7)
!3360 = !DILocation(line: 747, column: 7, scope: !3359)
!3361 = !DILocation(line: 746, column: 39, scope: !3354)
!3362 = distinct !{!3362, !3356, !3363, !618}
!3363 = !DILocation(line: 747, column: 7, scope: !3355)
!3364 = !DILocation(line: 749, column: 11, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !2820, file: !342, line: 749, column: 7)
!3366 = !DILocation(line: 749, column: 7, scope: !2820)
!3367 = !DILocation(line: 750, column: 5, scope: !3365)
!3368 = !DILocation(line: 750, column: 17, scope: !3365)
!3369 = !DILocation(line: 756, column: 21, scope: !3196)
!3370 = !DILocation(line: 760, column: 42, scope: !2820)
!3371 = !DILocation(line: 758, column: 10, scope: !2820)
!3372 = !DILocation(line: 758, column: 3, scope: !2820)
!3373 = !DILocation(line: 762, column: 1, scope: !2820)
!3374 = !DISubprogram(name: "iswprint", scope: !3375, file: !3375, line: 120, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!3375 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3376 = distinct !DISubprogram(name: "quotearg_alloc", scope: !342, file: !342, line: 788, type: !3377, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!51, !59, !56, !2712}
!3379 = !{!3380, !3381, !3382}
!3380 = !DILocalVariable(name: "arg", arg: 1, scope: !3376, file: !342, line: 788, type: !59)
!3381 = !DILocalVariable(name: "argsize", arg: 2, scope: !3376, file: !342, line: 788, type: !56)
!3382 = !DILocalVariable(name: "o", arg: 3, scope: !3376, file: !342, line: 789, type: !2712)
!3383 = !DILocation(line: 0, scope: !3376)
!3384 = !DILocalVariable(name: "arg", arg: 1, scope: !3385, file: !342, line: 801, type: !59)
!3385 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !342, file: !342, line: 801, type: !3386, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!51, !59, !56, !478, !2712}
!3388 = !{!3384, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396}
!3389 = !DILocalVariable(name: "argsize", arg: 2, scope: !3385, file: !342, line: 801, type: !56)
!3390 = !DILocalVariable(name: "size", arg: 3, scope: !3385, file: !342, line: 801, type: !478)
!3391 = !DILocalVariable(name: "o", arg: 4, scope: !3385, file: !342, line: 802, type: !2712)
!3392 = !DILocalVariable(name: "p", scope: !3385, file: !342, line: 804, type: !2712)
!3393 = !DILocalVariable(name: "saved_errno", scope: !3385, file: !342, line: 805, type: !54)
!3394 = !DILocalVariable(name: "flags", scope: !3385, file: !342, line: 807, type: !54)
!3395 = !DILocalVariable(name: "bufsize", scope: !3385, file: !342, line: 808, type: !56)
!3396 = !DILocalVariable(name: "buf", scope: !3385, file: !342, line: 812, type: !51)
!3397 = !DILocation(line: 0, scope: !3385, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 791, column: 10, scope: !3376)
!3399 = !DILocation(line: 804, column: 37, scope: !3385, inlinedAt: !3398)
!3400 = !DILocation(line: 805, column: 21, scope: !3385, inlinedAt: !3398)
!3401 = !DILocation(line: 807, column: 18, scope: !3385, inlinedAt: !3398)
!3402 = !DILocation(line: 807, column: 24, scope: !3385, inlinedAt: !3398)
!3403 = !DILocation(line: 808, column: 72, scope: !3385, inlinedAt: !3398)
!3404 = !DILocation(line: 809, column: 53, scope: !3385, inlinedAt: !3398)
!3405 = !DILocation(line: 810, column: 49, scope: !3385, inlinedAt: !3398)
!3406 = !DILocation(line: 811, column: 49, scope: !3385, inlinedAt: !3398)
!3407 = !DILocation(line: 808, column: 20, scope: !3385, inlinedAt: !3398)
!3408 = !DILocation(line: 811, column: 62, scope: !3385, inlinedAt: !3398)
!3409 = !DILocation(line: 812, column: 15, scope: !3385, inlinedAt: !3398)
!3410 = !DILocation(line: 813, column: 60, scope: !3385, inlinedAt: !3398)
!3411 = !DILocation(line: 815, column: 32, scope: !3385, inlinedAt: !3398)
!3412 = !DILocation(line: 815, column: 47, scope: !3385, inlinedAt: !3398)
!3413 = !DILocation(line: 813, column: 3, scope: !3385, inlinedAt: !3398)
!3414 = !DILocation(line: 816, column: 9, scope: !3385, inlinedAt: !3398)
!3415 = !DILocation(line: 791, column: 3, scope: !3376)
!3416 = !DILocation(line: 0, scope: !3385)
!3417 = !DILocation(line: 804, column: 37, scope: !3385)
!3418 = !DILocation(line: 805, column: 21, scope: !3385)
!3419 = !DILocation(line: 807, column: 18, scope: !3385)
!3420 = !DILocation(line: 807, column: 27, scope: !3385)
!3421 = !DILocation(line: 807, column: 24, scope: !3385)
!3422 = !DILocation(line: 808, column: 72, scope: !3385)
!3423 = !DILocation(line: 809, column: 53, scope: !3385)
!3424 = !DILocation(line: 810, column: 49, scope: !3385)
!3425 = !DILocation(line: 811, column: 49, scope: !3385)
!3426 = !DILocation(line: 808, column: 20, scope: !3385)
!3427 = !DILocation(line: 811, column: 62, scope: !3385)
!3428 = !DILocation(line: 812, column: 15, scope: !3385)
!3429 = !DILocation(line: 813, column: 60, scope: !3385)
!3430 = !DILocation(line: 815, column: 32, scope: !3385)
!3431 = !DILocation(line: 815, column: 47, scope: !3385)
!3432 = !DILocation(line: 813, column: 3, scope: !3385)
!3433 = !DILocation(line: 816, column: 9, scope: !3385)
!3434 = !DILocation(line: 817, column: 7, scope: !3385)
!3435 = !DILocation(line: 818, column: 11, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3385, file: !342, line: 817, column: 7)
!3437 = !DILocation(line: 818, column: 5, scope: !3436)
!3438 = !DILocation(line: 819, column: 3, scope: !3385)
!3439 = distinct !DISubprogram(name: "quotearg_free", scope: !342, file: !342, line: 837, type: !295, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3440)
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "sv", scope: !3439, file: !342, line: 839, type: !401)
!3442 = !DILocalVariable(name: "i", scope: !3443, file: !342, line: 840, type: !54)
!3443 = distinct !DILexicalBlock(scope: !3439, file: !342, line: 840, column: 3)
!3444 = !DILocation(line: 839, column: 24, scope: !3439)
!3445 = !DILocation(line: 0, scope: !3439)
!3446 = !DILocation(line: 0, scope: !3443)
!3447 = !DILocation(line: 840, column: 21, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3443, file: !342, line: 840, column: 3)
!3449 = !DILocation(line: 840, column: 3, scope: !3443)
!3450 = !DILocation(line: 842, column: 13, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3439, file: !342, line: 842, column: 7)
!3452 = !{!3453, !549, i64 8}
!3453 = !{!"slotvec", !823, i64 0, !549, i64 8}
!3454 = !DILocation(line: 842, column: 17, scope: !3451)
!3455 = !DILocation(line: 842, column: 7, scope: !3439)
!3456 = !DILocation(line: 841, column: 17, scope: !3448)
!3457 = !DILocation(line: 841, column: 5, scope: !3448)
!3458 = !DILocation(line: 840, column: 32, scope: !3448)
!3459 = distinct !{!3459, !3449, !3460, !618}
!3460 = !DILocation(line: 841, column: 20, scope: !3443)
!3461 = !DILocation(line: 844, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3451, file: !342, line: 843, column: 5)
!3463 = !DILocation(line: 845, column: 21, scope: !3462)
!3464 = !{!3453, !823, i64 0}
!3465 = !DILocation(line: 846, column: 20, scope: !3462)
!3466 = !DILocation(line: 847, column: 5, scope: !3462)
!3467 = !DILocation(line: 848, column: 10, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3439, file: !342, line: 848, column: 7)
!3469 = !DILocation(line: 848, column: 7, scope: !3439)
!3470 = !DILocation(line: 850, column: 13, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !342, line: 849, column: 5)
!3472 = !DILocation(line: 850, column: 7, scope: !3471)
!3473 = !DILocation(line: 851, column: 15, scope: !3471)
!3474 = !DILocation(line: 852, column: 5, scope: !3471)
!3475 = !DILocation(line: 853, column: 10, scope: !3439)
!3476 = !DILocation(line: 854, column: 1, scope: !3439)
!3477 = distinct !DISubprogram(name: "quotearg_n", scope: !342, file: !342, line: 919, type: !759, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3478)
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "n", arg: 1, scope: !3477, file: !342, line: 919, type: !54)
!3480 = !DILocalVariable(name: "arg", arg: 2, scope: !3477, file: !342, line: 919, type: !59)
!3481 = !DILocation(line: 0, scope: !3477)
!3482 = !DILocation(line: 921, column: 10, scope: !3477)
!3483 = !DILocation(line: 921, column: 3, scope: !3477)
!3484 = distinct !DISubprogram(name: "quotearg_n_options", scope: !342, file: !342, line: 866, type: !3485, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!51, !54, !59, !56, !2712}
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3498, !3499, !3501, !3502, !3503}
!3488 = !DILocalVariable(name: "n", arg: 1, scope: !3484, file: !342, line: 866, type: !54)
!3489 = !DILocalVariable(name: "arg", arg: 2, scope: !3484, file: !342, line: 866, type: !59)
!3490 = !DILocalVariable(name: "argsize", arg: 3, scope: !3484, file: !342, line: 866, type: !56)
!3491 = !DILocalVariable(name: "options", arg: 4, scope: !3484, file: !342, line: 867, type: !2712)
!3492 = !DILocalVariable(name: "saved_errno", scope: !3484, file: !342, line: 869, type: !54)
!3493 = !DILocalVariable(name: "sv", scope: !3484, file: !342, line: 871, type: !401)
!3494 = !DILocalVariable(name: "nslots_max", scope: !3484, file: !342, line: 873, type: !54)
!3495 = !DILocalVariable(name: "preallocated", scope: !3496, file: !342, line: 879, type: !66)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !342, line: 878, column: 5)
!3497 = distinct !DILexicalBlock(scope: !3484, file: !342, line: 877, column: 7)
!3498 = !DILocalVariable(name: "new_nslots", scope: !3496, file: !342, line: 880, type: !216)
!3499 = !DILocalVariable(name: "size", scope: !3500, file: !342, line: 891, type: !56)
!3500 = distinct !DILexicalBlock(scope: !3484, file: !342, line: 890, column: 3)
!3501 = !DILocalVariable(name: "val", scope: !3500, file: !342, line: 892, type: !51)
!3502 = !DILocalVariable(name: "flags", scope: !3500, file: !342, line: 894, type: !54)
!3503 = !DILocalVariable(name: "qsize", scope: !3500, file: !342, line: 895, type: !56)
!3504 = !DILocation(line: 0, scope: !3484)
!3505 = !DILocation(line: 869, column: 21, scope: !3484)
!3506 = !DILocation(line: 871, column: 24, scope: !3484)
!3507 = !DILocation(line: 874, column: 17, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3484, file: !342, line: 874, column: 7)
!3509 = !DILocation(line: 875, column: 5, scope: !3508)
!3510 = !DILocation(line: 877, column: 7, scope: !3497)
!3511 = !DILocation(line: 877, column: 14, scope: !3497)
!3512 = !DILocation(line: 877, column: 7, scope: !3484)
!3513 = !DILocation(line: 879, column: 31, scope: !3496)
!3514 = !DILocation(line: 0, scope: !3496)
!3515 = !DILocation(line: 880, column: 7, scope: !3496)
!3516 = !DILocation(line: 880, column: 26, scope: !3496)
!3517 = !DILocation(line: 880, column: 13, scope: !3496)
!3518 = !DILocation(line: 882, column: 31, scope: !3496)
!3519 = !DILocation(line: 883, column: 33, scope: !3496)
!3520 = !DILocation(line: 883, column: 42, scope: !3496)
!3521 = !DILocation(line: 883, column: 31, scope: !3496)
!3522 = !DILocation(line: 882, column: 22, scope: !3496)
!3523 = !DILocation(line: 882, column: 15, scope: !3496)
!3524 = !DILocation(line: 884, column: 11, scope: !3496)
!3525 = !DILocation(line: 885, column: 15, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3496, file: !342, line: 884, column: 11)
!3527 = !{i64 0, i64 8, !822, i64 8, i64 8, !548}
!3528 = !DILocation(line: 885, column: 9, scope: !3526)
!3529 = !DILocation(line: 886, column: 20, scope: !3496)
!3530 = !DILocation(line: 886, column: 18, scope: !3496)
!3531 = !DILocation(line: 886, column: 15, scope: !3496)
!3532 = !DILocation(line: 886, column: 32, scope: !3496)
!3533 = !DILocation(line: 886, column: 43, scope: !3496)
!3534 = !DILocation(line: 886, column: 53, scope: !3496)
!3535 = !DILocation(line: 0, scope: !2923, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 886, column: 7, scope: !3496)
!3537 = !DILocation(line: 59, column: 10, scope: !2923, inlinedAt: !3536)
!3538 = !DILocation(line: 887, column: 16, scope: !3496)
!3539 = !DILocation(line: 887, column: 14, scope: !3496)
!3540 = !DILocation(line: 888, column: 5, scope: !3497)
!3541 = !DILocation(line: 888, column: 5, scope: !3496)
!3542 = !DILocation(line: 891, column: 19, scope: !3500)
!3543 = !DILocation(line: 891, column: 25, scope: !3500)
!3544 = !DILocation(line: 0, scope: !3500)
!3545 = !DILocation(line: 892, column: 23, scope: !3500)
!3546 = !DILocation(line: 894, column: 26, scope: !3500)
!3547 = !DILocation(line: 894, column: 32, scope: !3500)
!3548 = !DILocation(line: 896, column: 55, scope: !3500)
!3549 = !DILocation(line: 897, column: 46, scope: !3500)
!3550 = !DILocation(line: 898, column: 55, scope: !3500)
!3551 = !DILocation(line: 899, column: 55, scope: !3500)
!3552 = !DILocation(line: 895, column: 20, scope: !3500)
!3553 = !DILocation(line: 901, column: 14, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3500, file: !342, line: 901, column: 9)
!3555 = !DILocation(line: 901, column: 9, scope: !3500)
!3556 = !DILocation(line: 903, column: 35, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3554, file: !342, line: 902, column: 7)
!3558 = !DILocation(line: 903, column: 20, scope: !3557)
!3559 = !DILocation(line: 904, column: 17, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3557, file: !342, line: 904, column: 13)
!3561 = !DILocation(line: 904, column: 13, scope: !3557)
!3562 = !DILocation(line: 905, column: 11, scope: !3560)
!3563 = !DILocation(line: 906, column: 27, scope: !3557)
!3564 = !DILocation(line: 906, column: 19, scope: !3557)
!3565 = !DILocation(line: 907, column: 69, scope: !3557)
!3566 = !DILocation(line: 909, column: 44, scope: !3557)
!3567 = !DILocation(line: 910, column: 44, scope: !3557)
!3568 = !DILocation(line: 907, column: 9, scope: !3557)
!3569 = !DILocation(line: 911, column: 7, scope: !3557)
!3570 = !DILocation(line: 913, column: 11, scope: !3500)
!3571 = !DILocation(line: 914, column: 5, scope: !3500)
!3572 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !342, file: !342, line: 925, type: !3573, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!51, !54, !59, !56}
!3575 = !{!3576, !3577, !3578}
!3576 = !DILocalVariable(name: "n", arg: 1, scope: !3572, file: !342, line: 925, type: !54)
!3577 = !DILocalVariable(name: "arg", arg: 2, scope: !3572, file: !342, line: 925, type: !59)
!3578 = !DILocalVariable(name: "argsize", arg: 3, scope: !3572, file: !342, line: 925, type: !56)
!3579 = !DILocation(line: 0, scope: !3572)
!3580 = !DILocation(line: 927, column: 10, scope: !3572)
!3581 = !DILocation(line: 927, column: 3, scope: !3572)
!3582 = distinct !DISubprogram(name: "quotearg", scope: !342, file: !342, line: 931, type: !763, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3583)
!3583 = !{!3584}
!3584 = !DILocalVariable(name: "arg", arg: 1, scope: !3582, file: !342, line: 931, type: !59)
!3585 = !DILocation(line: 0, scope: !3582)
!3586 = !DILocation(line: 0, scope: !3477, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 933, column: 10, scope: !3582)
!3588 = !DILocation(line: 921, column: 10, scope: !3477, inlinedAt: !3587)
!3589 = !DILocation(line: 933, column: 3, scope: !3582)
!3590 = distinct !DISubprogram(name: "quotearg_mem", scope: !342, file: !342, line: 937, type: !3591, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!51, !59, !56}
!3593 = !{!3594, !3595}
!3594 = !DILocalVariable(name: "arg", arg: 1, scope: !3590, file: !342, line: 937, type: !59)
!3595 = !DILocalVariable(name: "argsize", arg: 2, scope: !3590, file: !342, line: 937, type: !56)
!3596 = !DILocation(line: 0, scope: !3590)
!3597 = !DILocation(line: 0, scope: !3572, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 939, column: 10, scope: !3590)
!3599 = !DILocation(line: 927, column: 10, scope: !3572, inlinedAt: !3598)
!3600 = !DILocation(line: 939, column: 3, scope: !3590)
!3601 = distinct !DISubprogram(name: "quotearg_n_style", scope: !342, file: !342, line: 943, type: !3602, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!51, !54, !27, !59}
!3604 = !{!3605, !3606, !3607, !3608}
!3605 = !DILocalVariable(name: "n", arg: 1, scope: !3601, file: !342, line: 943, type: !54)
!3606 = !DILocalVariable(name: "s", arg: 2, scope: !3601, file: !342, line: 943, type: !27)
!3607 = !DILocalVariable(name: "arg", arg: 3, scope: !3601, file: !342, line: 943, type: !59)
!3608 = !DILocalVariable(name: "o", scope: !3601, file: !342, line: 945, type: !2713)
!3609 = !DILocation(line: 0, scope: !3601)
!3610 = !DILocation(line: 945, column: 3, scope: !3601)
!3611 = !DILocation(line: 945, column: 32, scope: !3601)
!3612 = !{!3613}
!3613 = distinct !{!3613, !3614, !"quoting_options_from_style: argument 0"}
!3614 = distinct !{!3614, !"quoting_options_from_style"}
!3615 = !DILocation(line: 945, column: 36, scope: !3601)
!3616 = !DILocalVariable(name: "style", arg: 1, scope: !3617, file: !342, line: 183, type: !27)
!3617 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !342, file: !342, line: 183, type: !3618, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!359, !27}
!3620 = !{!3616, !3621}
!3621 = !DILocalVariable(name: "o", scope: !3617, file: !342, line: 185, type: !359)
!3622 = !DILocation(line: 0, scope: !3617, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 945, column: 36, scope: !3601)
!3624 = !DILocation(line: 185, column: 26, scope: !3617, inlinedAt: !3623)
!3625 = !DILocation(line: 186, column: 13, scope: !3626, inlinedAt: !3623)
!3626 = distinct !DILexicalBlock(scope: !3617, file: !342, line: 186, column: 7)
!3627 = !DILocation(line: 186, column: 7, scope: !3617, inlinedAt: !3623)
!3628 = !DILocation(line: 187, column: 5, scope: !3626, inlinedAt: !3623)
!3629 = !DILocation(line: 188, column: 5, scope: !3617, inlinedAt: !3623)
!3630 = !DILocation(line: 188, column: 11, scope: !3617, inlinedAt: !3623)
!3631 = !DILocation(line: 946, column: 10, scope: !3601)
!3632 = !DILocation(line: 947, column: 1, scope: !3601)
!3633 = !DILocation(line: 946, column: 3, scope: !3601)
!3634 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !342, file: !342, line: 950, type: !3635, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!51, !54, !27, !59, !56}
!3637 = !{!3638, !3639, !3640, !3641, !3642}
!3638 = !DILocalVariable(name: "n", arg: 1, scope: !3634, file: !342, line: 950, type: !54)
!3639 = !DILocalVariable(name: "s", arg: 2, scope: !3634, file: !342, line: 950, type: !27)
!3640 = !DILocalVariable(name: "arg", arg: 3, scope: !3634, file: !342, line: 951, type: !59)
!3641 = !DILocalVariable(name: "argsize", arg: 4, scope: !3634, file: !342, line: 951, type: !56)
!3642 = !DILocalVariable(name: "o", scope: !3634, file: !342, line: 953, type: !2713)
!3643 = !DILocation(line: 0, scope: !3634)
!3644 = !DILocation(line: 953, column: 3, scope: !3634)
!3645 = !DILocation(line: 953, column: 32, scope: !3634)
!3646 = !{!3647}
!3647 = distinct !{!3647, !3648, !"quoting_options_from_style: argument 0"}
!3648 = distinct !{!3648, !"quoting_options_from_style"}
!3649 = !DILocation(line: 953, column: 36, scope: !3634)
!3650 = !DILocation(line: 0, scope: !3617, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 953, column: 36, scope: !3634)
!3652 = !DILocation(line: 185, column: 26, scope: !3617, inlinedAt: !3651)
!3653 = !DILocation(line: 186, column: 13, scope: !3626, inlinedAt: !3651)
!3654 = !DILocation(line: 186, column: 7, scope: !3617, inlinedAt: !3651)
!3655 = !DILocation(line: 187, column: 5, scope: !3626, inlinedAt: !3651)
!3656 = !DILocation(line: 188, column: 5, scope: !3617, inlinedAt: !3651)
!3657 = !DILocation(line: 188, column: 11, scope: !3617, inlinedAt: !3651)
!3658 = !DILocation(line: 954, column: 10, scope: !3634)
!3659 = !DILocation(line: 955, column: 1, scope: !3634)
!3660 = !DILocation(line: 954, column: 3, scope: !3634)
!3661 = distinct !DISubprogram(name: "quotearg_style", scope: !342, file: !342, line: 958, type: !3662, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!51, !27, !59}
!3664 = !{!3665, !3666}
!3665 = !DILocalVariable(name: "s", arg: 1, scope: !3661, file: !342, line: 958, type: !27)
!3666 = !DILocalVariable(name: "arg", arg: 2, scope: !3661, file: !342, line: 958, type: !59)
!3667 = !DILocation(line: 0, scope: !3661)
!3668 = !DILocation(line: 0, scope: !3601, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 960, column: 10, scope: !3661)
!3670 = !DILocation(line: 945, column: 3, scope: !3601, inlinedAt: !3669)
!3671 = !DILocation(line: 945, column: 32, scope: !3601, inlinedAt: !3669)
!3672 = !{!3673}
!3673 = distinct !{!3673, !3674, !"quoting_options_from_style: argument 0"}
!3674 = distinct !{!3674, !"quoting_options_from_style"}
!3675 = !DILocation(line: 945, column: 36, scope: !3601, inlinedAt: !3669)
!3676 = !DILocation(line: 0, scope: !3617, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 945, column: 36, scope: !3601, inlinedAt: !3669)
!3678 = !DILocation(line: 185, column: 26, scope: !3617, inlinedAt: !3677)
!3679 = !DILocation(line: 186, column: 13, scope: !3626, inlinedAt: !3677)
!3680 = !DILocation(line: 186, column: 7, scope: !3617, inlinedAt: !3677)
!3681 = !DILocation(line: 187, column: 5, scope: !3626, inlinedAt: !3677)
!3682 = !DILocation(line: 188, column: 5, scope: !3617, inlinedAt: !3677)
!3683 = !DILocation(line: 188, column: 11, scope: !3617, inlinedAt: !3677)
!3684 = !DILocation(line: 946, column: 10, scope: !3601, inlinedAt: !3669)
!3685 = !DILocation(line: 947, column: 1, scope: !3601, inlinedAt: !3669)
!3686 = !DILocation(line: 960, column: 3, scope: !3661)
!3687 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !342, file: !342, line: 964, type: !3688, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!51, !27, !59, !56}
!3690 = !{!3691, !3692, !3693}
!3691 = !DILocalVariable(name: "s", arg: 1, scope: !3687, file: !342, line: 964, type: !27)
!3692 = !DILocalVariable(name: "arg", arg: 2, scope: !3687, file: !342, line: 964, type: !59)
!3693 = !DILocalVariable(name: "argsize", arg: 3, scope: !3687, file: !342, line: 964, type: !56)
!3694 = !DILocation(line: 0, scope: !3687)
!3695 = !DILocation(line: 0, scope: !3634, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 966, column: 10, scope: !3687)
!3697 = !DILocation(line: 953, column: 3, scope: !3634, inlinedAt: !3696)
!3698 = !DILocation(line: 953, column: 32, scope: !3634, inlinedAt: !3696)
!3699 = !{!3700}
!3700 = distinct !{!3700, !3701, !"quoting_options_from_style: argument 0"}
!3701 = distinct !{!3701, !"quoting_options_from_style"}
!3702 = !DILocation(line: 953, column: 36, scope: !3634, inlinedAt: !3696)
!3703 = !DILocation(line: 0, scope: !3617, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 953, column: 36, scope: !3634, inlinedAt: !3696)
!3705 = !DILocation(line: 185, column: 26, scope: !3617, inlinedAt: !3704)
!3706 = !DILocation(line: 186, column: 13, scope: !3626, inlinedAt: !3704)
!3707 = !DILocation(line: 186, column: 7, scope: !3617, inlinedAt: !3704)
!3708 = !DILocation(line: 187, column: 5, scope: !3626, inlinedAt: !3704)
!3709 = !DILocation(line: 188, column: 5, scope: !3617, inlinedAt: !3704)
!3710 = !DILocation(line: 188, column: 11, scope: !3617, inlinedAt: !3704)
!3711 = !DILocation(line: 954, column: 10, scope: !3634, inlinedAt: !3696)
!3712 = !DILocation(line: 955, column: 1, scope: !3634, inlinedAt: !3696)
!3713 = !DILocation(line: 966, column: 3, scope: !3687)
!3714 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !342, file: !342, line: 970, type: !3715, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!51, !59, !56, !52}
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DILocalVariable(name: "arg", arg: 1, scope: !3714, file: !342, line: 970, type: !59)
!3719 = !DILocalVariable(name: "argsize", arg: 2, scope: !3714, file: !342, line: 970, type: !56)
!3720 = !DILocalVariable(name: "ch", arg: 3, scope: !3714, file: !342, line: 970, type: !52)
!3721 = !DILocalVariable(name: "options", scope: !3714, file: !342, line: 972, type: !359)
!3722 = !DILocation(line: 0, scope: !3714)
!3723 = !DILocation(line: 972, column: 3, scope: !3714)
!3724 = !DILocation(line: 972, column: 26, scope: !3714)
!3725 = !DILocation(line: 973, column: 13, scope: !3714)
!3726 = !{i64 0, i64 4, !660, i64 4, i64 4, !651, i64 8, i64 32, !660, i64 40, i64 8, !548, i64 48, i64 8, !548}
!3727 = !DILocation(line: 0, scope: !2733, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 974, column: 3, scope: !3714)
!3729 = !DILocation(line: 147, column: 62, scope: !2733, inlinedAt: !3728)
!3730 = !DILocation(line: 147, column: 57, scope: !2733, inlinedAt: !3728)
!3731 = !DILocation(line: 148, column: 15, scope: !2733, inlinedAt: !3728)
!3732 = !DILocation(line: 149, column: 21, scope: !2733, inlinedAt: !3728)
!3733 = !DILocation(line: 149, column: 24, scope: !2733, inlinedAt: !3728)
!3734 = !DILocation(line: 149, column: 34, scope: !2733, inlinedAt: !3728)
!3735 = !DILocation(line: 150, column: 19, scope: !2733, inlinedAt: !3728)
!3736 = !DILocation(line: 150, column: 24, scope: !2733, inlinedAt: !3728)
!3737 = !DILocation(line: 150, column: 6, scope: !2733, inlinedAt: !3728)
!3738 = !DILocation(line: 975, column: 10, scope: !3714)
!3739 = !DILocation(line: 976, column: 1, scope: !3714)
!3740 = !DILocation(line: 975, column: 3, scope: !3714)
!3741 = distinct !DISubprogram(name: "quotearg_char", scope: !342, file: !342, line: 979, type: !3742, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!51, !59, !52}
!3744 = !{!3745, !3746}
!3745 = !DILocalVariable(name: "arg", arg: 1, scope: !3741, file: !342, line: 979, type: !59)
!3746 = !DILocalVariable(name: "ch", arg: 2, scope: !3741, file: !342, line: 979, type: !52)
!3747 = !DILocation(line: 0, scope: !3741)
!3748 = !DILocation(line: 0, scope: !3714, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 981, column: 10, scope: !3741)
!3750 = !DILocation(line: 972, column: 3, scope: !3714, inlinedAt: !3749)
!3751 = !DILocation(line: 972, column: 26, scope: !3714, inlinedAt: !3749)
!3752 = !DILocation(line: 973, column: 13, scope: !3714, inlinedAt: !3749)
!3753 = !DILocation(line: 0, scope: !2733, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 974, column: 3, scope: !3714, inlinedAt: !3749)
!3755 = !DILocation(line: 147, column: 62, scope: !2733, inlinedAt: !3754)
!3756 = !DILocation(line: 147, column: 57, scope: !2733, inlinedAt: !3754)
!3757 = !DILocation(line: 148, column: 15, scope: !2733, inlinedAt: !3754)
!3758 = !DILocation(line: 149, column: 21, scope: !2733, inlinedAt: !3754)
!3759 = !DILocation(line: 149, column: 24, scope: !2733, inlinedAt: !3754)
!3760 = !DILocation(line: 149, column: 34, scope: !2733, inlinedAt: !3754)
!3761 = !DILocation(line: 150, column: 19, scope: !2733, inlinedAt: !3754)
!3762 = !DILocation(line: 150, column: 24, scope: !2733, inlinedAt: !3754)
!3763 = !DILocation(line: 150, column: 6, scope: !2733, inlinedAt: !3754)
!3764 = !DILocation(line: 975, column: 10, scope: !3714, inlinedAt: !3749)
!3765 = !DILocation(line: 976, column: 1, scope: !3714, inlinedAt: !3749)
!3766 = !DILocation(line: 981, column: 3, scope: !3741)
!3767 = distinct !DISubprogram(name: "quotearg_colon", scope: !342, file: !342, line: 985, type: !763, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3768)
!3768 = !{!3769}
!3769 = !DILocalVariable(name: "arg", arg: 1, scope: !3767, file: !342, line: 985, type: !59)
!3770 = !DILocation(line: 0, scope: !3767)
!3771 = !DILocation(line: 0, scope: !3741, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 987, column: 10, scope: !3767)
!3773 = !DILocation(line: 0, scope: !3714, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 981, column: 10, scope: !3741, inlinedAt: !3772)
!3775 = !DILocation(line: 972, column: 3, scope: !3714, inlinedAt: !3774)
!3776 = !DILocation(line: 972, column: 26, scope: !3714, inlinedAt: !3774)
!3777 = !DILocation(line: 973, column: 13, scope: !3714, inlinedAt: !3774)
!3778 = !DILocation(line: 0, scope: !2733, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 974, column: 3, scope: !3714, inlinedAt: !3774)
!3780 = !DILocation(line: 147, column: 57, scope: !2733, inlinedAt: !3779)
!3781 = !DILocation(line: 149, column: 21, scope: !2733, inlinedAt: !3779)
!3782 = !DILocation(line: 150, column: 6, scope: !2733, inlinedAt: !3779)
!3783 = !DILocation(line: 975, column: 10, scope: !3714, inlinedAt: !3774)
!3784 = !DILocation(line: 976, column: 1, scope: !3714, inlinedAt: !3774)
!3785 = !DILocation(line: 987, column: 3, scope: !3767)
!3786 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !342, file: !342, line: 991, type: !3591, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3787)
!3787 = !{!3788, !3789}
!3788 = !DILocalVariable(name: "arg", arg: 1, scope: !3786, file: !342, line: 991, type: !59)
!3789 = !DILocalVariable(name: "argsize", arg: 2, scope: !3786, file: !342, line: 991, type: !56)
!3790 = !DILocation(line: 0, scope: !3786)
!3791 = !DILocation(line: 0, scope: !3714, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 993, column: 10, scope: !3786)
!3793 = !DILocation(line: 972, column: 3, scope: !3714, inlinedAt: !3792)
!3794 = !DILocation(line: 972, column: 26, scope: !3714, inlinedAt: !3792)
!3795 = !DILocation(line: 973, column: 13, scope: !3714, inlinedAt: !3792)
!3796 = !DILocation(line: 0, scope: !2733, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 974, column: 3, scope: !3714, inlinedAt: !3792)
!3798 = !DILocation(line: 147, column: 57, scope: !2733, inlinedAt: !3797)
!3799 = !DILocation(line: 149, column: 21, scope: !2733, inlinedAt: !3797)
!3800 = !DILocation(line: 150, column: 6, scope: !2733, inlinedAt: !3797)
!3801 = !DILocation(line: 975, column: 10, scope: !3714, inlinedAt: !3792)
!3802 = !DILocation(line: 976, column: 1, scope: !3714, inlinedAt: !3792)
!3803 = !DILocation(line: 993, column: 3, scope: !3786)
!3804 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !342, file: !342, line: 997, type: !3602, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3805)
!3805 = !{!3806, !3807, !3808, !3809}
!3806 = !DILocalVariable(name: "n", arg: 1, scope: !3804, file: !342, line: 997, type: !54)
!3807 = !DILocalVariable(name: "s", arg: 2, scope: !3804, file: !342, line: 997, type: !27)
!3808 = !DILocalVariable(name: "arg", arg: 3, scope: !3804, file: !342, line: 997, type: !59)
!3809 = !DILocalVariable(name: "options", scope: !3804, file: !342, line: 999, type: !359)
!3810 = !DILocation(line: 0, scope: !3804)
!3811 = !DILocation(line: 999, column: 3, scope: !3804)
!3812 = !DILocation(line: 999, column: 26, scope: !3804)
!3813 = !DILocation(line: 0, scope: !3617, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 1000, column: 13, scope: !3804)
!3815 = !DILocation(line: 186, column: 13, scope: !3626, inlinedAt: !3814)
!3816 = !DILocation(line: 186, column: 7, scope: !3617, inlinedAt: !3814)
!3817 = !DILocation(line: 187, column: 5, scope: !3626, inlinedAt: !3814)
!3818 = !{!3819}
!3819 = distinct !{!3819, !3820, !"quoting_options_from_style: argument 0"}
!3820 = distinct !{!3820, !"quoting_options_from_style"}
!3821 = !DILocation(line: 1000, column: 13, scope: !3804)
!3822 = !DILocation(line: 0, scope: !2733, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 1001, column: 3, scope: !3804)
!3824 = !DILocation(line: 147, column: 57, scope: !2733, inlinedAt: !3823)
!3825 = !DILocation(line: 149, column: 21, scope: !2733, inlinedAt: !3823)
!3826 = !DILocation(line: 150, column: 6, scope: !2733, inlinedAt: !3823)
!3827 = !DILocation(line: 1002, column: 10, scope: !3804)
!3828 = !DILocation(line: 1003, column: 1, scope: !3804)
!3829 = !DILocation(line: 1002, column: 3, scope: !3804)
!3830 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !342, file: !342, line: 1006, type: !3831, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!51, !54, !59, !59, !59}
!3833 = !{!3834, !3835, !3836, !3837}
!3834 = !DILocalVariable(name: "n", arg: 1, scope: !3830, file: !342, line: 1006, type: !54)
!3835 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3830, file: !342, line: 1006, type: !59)
!3836 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3830, file: !342, line: 1007, type: !59)
!3837 = !DILocalVariable(name: "arg", arg: 4, scope: !3830, file: !342, line: 1007, type: !59)
!3838 = !DILocation(line: 0, scope: !3830)
!3839 = !DILocalVariable(name: "n", arg: 1, scope: !3840, file: !342, line: 1014, type: !54)
!3840 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !342, file: !342, line: 1014, type: !3841, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!51, !54, !59, !59, !59, !56}
!3843 = !{!3839, !3844, !3845, !3846, !3847, !3848}
!3844 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3840, file: !342, line: 1014, type: !59)
!3845 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3840, file: !342, line: 1015, type: !59)
!3846 = !DILocalVariable(name: "arg", arg: 4, scope: !3840, file: !342, line: 1016, type: !59)
!3847 = !DILocalVariable(name: "argsize", arg: 5, scope: !3840, file: !342, line: 1016, type: !56)
!3848 = !DILocalVariable(name: "o", scope: !3840, file: !342, line: 1018, type: !359)
!3849 = !DILocation(line: 0, scope: !3840, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 1009, column: 10, scope: !3830)
!3851 = !DILocation(line: 1018, column: 3, scope: !3840, inlinedAt: !3850)
!3852 = !DILocation(line: 1018, column: 26, scope: !3840, inlinedAt: !3850)
!3853 = !DILocation(line: 1018, column: 30, scope: !3840, inlinedAt: !3850)
!3854 = !DILocation(line: 0, scope: !2773, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 1019, column: 3, scope: !3840, inlinedAt: !3850)
!3856 = !DILocation(line: 174, column: 6, scope: !2773, inlinedAt: !3855)
!3857 = !DILocation(line: 174, column: 12, scope: !2773, inlinedAt: !3855)
!3858 = !DILocation(line: 175, column: 8, scope: !2787, inlinedAt: !3855)
!3859 = !DILocation(line: 175, column: 19, scope: !2787, inlinedAt: !3855)
!3860 = !DILocation(line: 176, column: 5, scope: !2787, inlinedAt: !3855)
!3861 = !DILocation(line: 177, column: 6, scope: !2773, inlinedAt: !3855)
!3862 = !DILocation(line: 177, column: 17, scope: !2773, inlinedAt: !3855)
!3863 = !DILocation(line: 178, column: 6, scope: !2773, inlinedAt: !3855)
!3864 = !DILocation(line: 178, column: 18, scope: !2773, inlinedAt: !3855)
!3865 = !DILocation(line: 1020, column: 10, scope: !3840, inlinedAt: !3850)
!3866 = !DILocation(line: 1021, column: 1, scope: !3840, inlinedAt: !3850)
!3867 = !DILocation(line: 1009, column: 3, scope: !3830)
!3868 = !DILocation(line: 0, scope: !3840)
!3869 = !DILocation(line: 1018, column: 3, scope: !3840)
!3870 = !DILocation(line: 1018, column: 26, scope: !3840)
!3871 = !DILocation(line: 1018, column: 30, scope: !3840)
!3872 = !DILocation(line: 0, scope: !2773, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 1019, column: 3, scope: !3840)
!3874 = !DILocation(line: 174, column: 6, scope: !2773, inlinedAt: !3873)
!3875 = !DILocation(line: 174, column: 12, scope: !2773, inlinedAt: !3873)
!3876 = !DILocation(line: 175, column: 8, scope: !2787, inlinedAt: !3873)
!3877 = !DILocation(line: 175, column: 19, scope: !2787, inlinedAt: !3873)
!3878 = !DILocation(line: 176, column: 5, scope: !2787, inlinedAt: !3873)
!3879 = !DILocation(line: 177, column: 6, scope: !2773, inlinedAt: !3873)
!3880 = !DILocation(line: 177, column: 17, scope: !2773, inlinedAt: !3873)
!3881 = !DILocation(line: 178, column: 6, scope: !2773, inlinedAt: !3873)
!3882 = !DILocation(line: 178, column: 18, scope: !2773, inlinedAt: !3873)
!3883 = !DILocation(line: 1020, column: 10, scope: !3840)
!3884 = !DILocation(line: 1021, column: 1, scope: !3840)
!3885 = !DILocation(line: 1020, column: 3, scope: !3840)
!3886 = distinct !DISubprogram(name: "quotearg_custom", scope: !342, file: !342, line: 1024, type: !3887, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!51, !59, !59, !59}
!3889 = !{!3890, !3891, !3892}
!3890 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3886, file: !342, line: 1024, type: !59)
!3891 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3886, file: !342, line: 1024, type: !59)
!3892 = !DILocalVariable(name: "arg", arg: 3, scope: !3886, file: !342, line: 1025, type: !59)
!3893 = !DILocation(line: 0, scope: !3886)
!3894 = !DILocation(line: 0, scope: !3830, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 1027, column: 10, scope: !3886)
!3896 = !DILocation(line: 0, scope: !3840, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 1009, column: 10, scope: !3830, inlinedAt: !3895)
!3898 = !DILocation(line: 1018, column: 3, scope: !3840, inlinedAt: !3897)
!3899 = !DILocation(line: 1018, column: 26, scope: !3840, inlinedAt: !3897)
!3900 = !DILocation(line: 1018, column: 30, scope: !3840, inlinedAt: !3897)
!3901 = !DILocation(line: 0, scope: !2773, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 1019, column: 3, scope: !3840, inlinedAt: !3897)
!3903 = !DILocation(line: 174, column: 6, scope: !2773, inlinedAt: !3902)
!3904 = !DILocation(line: 174, column: 12, scope: !2773, inlinedAt: !3902)
!3905 = !DILocation(line: 175, column: 8, scope: !2787, inlinedAt: !3902)
!3906 = !DILocation(line: 175, column: 19, scope: !2787, inlinedAt: !3902)
!3907 = !DILocation(line: 176, column: 5, scope: !2787, inlinedAt: !3902)
!3908 = !DILocation(line: 177, column: 6, scope: !2773, inlinedAt: !3902)
!3909 = !DILocation(line: 177, column: 17, scope: !2773, inlinedAt: !3902)
!3910 = !DILocation(line: 178, column: 6, scope: !2773, inlinedAt: !3902)
!3911 = !DILocation(line: 178, column: 18, scope: !2773, inlinedAt: !3902)
!3912 = !DILocation(line: 1020, column: 10, scope: !3840, inlinedAt: !3897)
!3913 = !DILocation(line: 1021, column: 1, scope: !3840, inlinedAt: !3897)
!3914 = !DILocation(line: 1027, column: 3, scope: !3886)
!3915 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !342, file: !342, line: 1031, type: !3916, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3918)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!51, !59, !59, !59, !56}
!3918 = !{!3919, !3920, !3921, !3922}
!3919 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3915, file: !342, line: 1031, type: !59)
!3920 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3915, file: !342, line: 1031, type: !59)
!3921 = !DILocalVariable(name: "arg", arg: 3, scope: !3915, file: !342, line: 1032, type: !59)
!3922 = !DILocalVariable(name: "argsize", arg: 4, scope: !3915, file: !342, line: 1032, type: !56)
!3923 = !DILocation(line: 0, scope: !3915)
!3924 = !DILocation(line: 0, scope: !3840, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 1034, column: 10, scope: !3915)
!3926 = !DILocation(line: 1018, column: 3, scope: !3840, inlinedAt: !3925)
!3927 = !DILocation(line: 1018, column: 26, scope: !3840, inlinedAt: !3925)
!3928 = !DILocation(line: 1018, column: 30, scope: !3840, inlinedAt: !3925)
!3929 = !DILocation(line: 0, scope: !2773, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 1019, column: 3, scope: !3840, inlinedAt: !3925)
!3931 = !DILocation(line: 174, column: 6, scope: !2773, inlinedAt: !3930)
!3932 = !DILocation(line: 174, column: 12, scope: !2773, inlinedAt: !3930)
!3933 = !DILocation(line: 175, column: 8, scope: !2787, inlinedAt: !3930)
!3934 = !DILocation(line: 175, column: 19, scope: !2787, inlinedAt: !3930)
!3935 = !DILocation(line: 176, column: 5, scope: !2787, inlinedAt: !3930)
!3936 = !DILocation(line: 177, column: 6, scope: !2773, inlinedAt: !3930)
!3937 = !DILocation(line: 177, column: 17, scope: !2773, inlinedAt: !3930)
!3938 = !DILocation(line: 178, column: 6, scope: !2773, inlinedAt: !3930)
!3939 = !DILocation(line: 178, column: 18, scope: !2773, inlinedAt: !3930)
!3940 = !DILocation(line: 1020, column: 10, scope: !3840, inlinedAt: !3925)
!3941 = !DILocation(line: 1021, column: 1, scope: !3840, inlinedAt: !3925)
!3942 = !DILocation(line: 1034, column: 3, scope: !3915)
!3943 = distinct !DISubprogram(name: "quote_n_mem", scope: !342, file: !342, line: 1049, type: !3944, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!59, !54, !59, !56}
!3946 = !{!3947, !3948, !3949}
!3947 = !DILocalVariable(name: "n", arg: 1, scope: !3943, file: !342, line: 1049, type: !54)
!3948 = !DILocalVariable(name: "arg", arg: 2, scope: !3943, file: !342, line: 1049, type: !59)
!3949 = !DILocalVariable(name: "argsize", arg: 3, scope: !3943, file: !342, line: 1049, type: !56)
!3950 = !DILocation(line: 0, scope: !3943)
!3951 = !DILocation(line: 1051, column: 10, scope: !3943)
!3952 = !DILocation(line: 1051, column: 3, scope: !3943)
!3953 = distinct !DISubprogram(name: "quote_mem", scope: !342, file: !342, line: 1055, type: !3954, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!59, !59, !56}
!3956 = !{!3957, !3958}
!3957 = !DILocalVariable(name: "arg", arg: 1, scope: !3953, file: !342, line: 1055, type: !59)
!3958 = !DILocalVariable(name: "argsize", arg: 2, scope: !3953, file: !342, line: 1055, type: !56)
!3959 = !DILocation(line: 0, scope: !3953)
!3960 = !DILocation(line: 0, scope: !3943, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 1057, column: 10, scope: !3953)
!3962 = !DILocation(line: 1051, column: 10, scope: !3943, inlinedAt: !3961)
!3963 = !DILocation(line: 1057, column: 3, scope: !3953)
!3964 = distinct !DISubprogram(name: "quote_n", scope: !342, file: !342, line: 1061, type: !3965, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!59, !54, !59}
!3967 = !{!3968, !3969}
!3968 = !DILocalVariable(name: "n", arg: 1, scope: !3964, file: !342, line: 1061, type: !54)
!3969 = !DILocalVariable(name: "arg", arg: 2, scope: !3964, file: !342, line: 1061, type: !59)
!3970 = !DILocation(line: 0, scope: !3964)
!3971 = !DILocation(line: 0, scope: !3943, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 1063, column: 10, scope: !3964)
!3973 = !DILocation(line: 1051, column: 10, scope: !3943, inlinedAt: !3972)
!3974 = !DILocation(line: 1063, column: 3, scope: !3964)
!3975 = distinct !DISubprogram(name: "quote", scope: !342, file: !342, line: 1067, type: !3976, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!59, !59}
!3978 = !{!3979}
!3979 = !DILocalVariable(name: "arg", arg: 1, scope: !3975, file: !342, line: 1067, type: !59)
!3980 = !DILocation(line: 0, scope: !3975)
!3981 = !DILocation(line: 0, scope: !3964, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 1069, column: 10, scope: !3975)
!3983 = !DILocation(line: 0, scope: !3943, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 1063, column: 10, scope: !3964, inlinedAt: !3982)
!3985 = !DILocation(line: 1051, column: 10, scope: !3943, inlinedAt: !3984)
!3986 = !DILocation(line: 1069, column: 3, scope: !3975)
!3987 = distinct !DISubprogram(name: "version_etc_arn", scope: !466, file: !466, line: 61, type: !3988, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !4025)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{null, !3990, !59, !59, !59, !4024, !56}
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3992)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3992, file: !111, line: 51, baseType: !54, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3992, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3992, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3992, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3992, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3992, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3992, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3992, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3992, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3992, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3992, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3992, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3992, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3992, file: !111, line: 70, baseType: !4008, size: 64, offset: 832)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3992, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3992, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3992, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3992, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3992, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3992, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3992, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3992, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3992, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3992, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3992, file: !111, line: 93, baseType: !4008, size: 64, offset: 1344)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3992, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3992, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3992, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3992, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031}
!4026 = !DILocalVariable(name: "stream", arg: 1, scope: !3987, file: !466, line: 61, type: !3990)
!4027 = !DILocalVariable(name: "command_name", arg: 2, scope: !3987, file: !466, line: 62, type: !59)
!4028 = !DILocalVariable(name: "package", arg: 3, scope: !3987, file: !466, line: 62, type: !59)
!4029 = !DILocalVariable(name: "version", arg: 4, scope: !3987, file: !466, line: 63, type: !59)
!4030 = !DILocalVariable(name: "authors", arg: 5, scope: !3987, file: !466, line: 64, type: !4024)
!4031 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3987, file: !466, line: 64, type: !56)
!4032 = !DILocation(line: 0, scope: !3987)
!4033 = !DILocation(line: 66, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !3987, file: !466, line: 66, column: 7)
!4035 = !DILocation(line: 66, column: 7, scope: !3987)
!4036 = !DILocation(line: 67, column: 5, scope: !4034)
!4037 = !DILocation(line: 69, column: 5, scope: !4034)
!4038 = !DILocation(line: 83, column: 3, scope: !3987)
!4039 = !DILocation(line: 85, column: 3, scope: !3987)
!4040 = !DILocation(line: 88, column: 3, scope: !3987)
!4041 = !DILocation(line: 95, column: 3, scope: !3987)
!4042 = !DILocation(line: 97, column: 3, scope: !3987)
!4043 = !DILocation(line: 105, column: 7, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !3987, file: !466, line: 98, column: 5)
!4045 = !DILocation(line: 106, column: 7, scope: !4044)
!4046 = !DILocation(line: 109, column: 7, scope: !4044)
!4047 = !DILocation(line: 110, column: 7, scope: !4044)
!4048 = !DILocation(line: 113, column: 7, scope: !4044)
!4049 = !DILocation(line: 115, column: 7, scope: !4044)
!4050 = !DILocation(line: 120, column: 7, scope: !4044)
!4051 = !DILocation(line: 122, column: 7, scope: !4044)
!4052 = !DILocation(line: 127, column: 7, scope: !4044)
!4053 = !DILocation(line: 129, column: 7, scope: !4044)
!4054 = !DILocation(line: 134, column: 7, scope: !4044)
!4055 = !DILocation(line: 137, column: 7, scope: !4044)
!4056 = !DILocation(line: 142, column: 7, scope: !4044)
!4057 = !DILocation(line: 145, column: 7, scope: !4044)
!4058 = !DILocation(line: 150, column: 7, scope: !4044)
!4059 = !DILocation(line: 154, column: 7, scope: !4044)
!4060 = !DILocation(line: 159, column: 7, scope: !4044)
!4061 = !DILocation(line: 163, column: 7, scope: !4044)
!4062 = !DILocation(line: 170, column: 7, scope: !4044)
!4063 = !DILocation(line: 174, column: 7, scope: !4044)
!4064 = !DILocation(line: 176, column: 1, scope: !3987)
!4065 = distinct !DISubprogram(name: "version_etc_ar", scope: !466, file: !466, line: 183, type: !4066, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{null, !3990, !59, !59, !59, !4024}
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074}
!4069 = !DILocalVariable(name: "stream", arg: 1, scope: !4065, file: !466, line: 183, type: !3990)
!4070 = !DILocalVariable(name: "command_name", arg: 2, scope: !4065, file: !466, line: 184, type: !59)
!4071 = !DILocalVariable(name: "package", arg: 3, scope: !4065, file: !466, line: 184, type: !59)
!4072 = !DILocalVariable(name: "version", arg: 4, scope: !4065, file: !466, line: 185, type: !59)
!4073 = !DILocalVariable(name: "authors", arg: 5, scope: !4065, file: !466, line: 185, type: !4024)
!4074 = !DILocalVariable(name: "n_authors", scope: !4065, file: !466, line: 187, type: !56)
!4075 = !DILocation(line: 0, scope: !4065)
!4076 = !DILocation(line: 189, column: 8, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4065, file: !466, line: 189, column: 3)
!4078 = !DILocation(line: 0, scope: !4077)
!4079 = !DILocation(line: 189, column: 23, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4077, file: !466, line: 189, column: 3)
!4081 = !DILocation(line: 189, column: 3, scope: !4077)
!4082 = !DILocation(line: 189, column: 52, scope: !4080)
!4083 = distinct !{!4083, !4081, !4084, !618}
!4084 = !DILocation(line: 190, column: 5, scope: !4077)
!4085 = !DILocation(line: 191, column: 3, scope: !4065)
!4086 = !DILocation(line: 192, column: 1, scope: !4065)
!4087 = distinct !DISubprogram(name: "version_etc_va", scope: !466, file: !466, line: 199, type: !4088, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !4101)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !3990, !59, !59, !59, !4090}
!4090 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !268, line: 52, baseType: !4091)
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !270, line: 32, baseType: !4092)
!4092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4093, baseType: !4094)
!4093 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !274, size: 256, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099, !4100}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4094, file: !4093, line: 192, baseType: !53, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4094, file: !4093, line: 192, baseType: !53, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4094, file: !4093, line: 192, baseType: !53, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4094, file: !4093, line: 192, baseType: !54, size: 32, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4094, file: !4093, line: 192, baseType: !54, size: 32, offset: 224)
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108}
!4102 = !DILocalVariable(name: "stream", arg: 1, scope: !4087, file: !466, line: 199, type: !3990)
!4103 = !DILocalVariable(name: "command_name", arg: 2, scope: !4087, file: !466, line: 200, type: !59)
!4104 = !DILocalVariable(name: "package", arg: 3, scope: !4087, file: !466, line: 200, type: !59)
!4105 = !DILocalVariable(name: "version", arg: 4, scope: !4087, file: !466, line: 201, type: !59)
!4106 = !DILocalVariable(name: "authors", arg: 5, scope: !4087, file: !466, line: 201, type: !4090)
!4107 = !DILocalVariable(name: "n_authors", scope: !4087, file: !466, line: 203, type: !56)
!4108 = !DILocalVariable(name: "authtab", scope: !4087, file: !466, line: 204, type: !4109)
!4109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 640, elements: !355)
!4110 = !DILocation(line: 0, scope: !4087)
!4111 = !DILocation(line: 201, column: 46, scope: !4087)
!4112 = !DILocation(line: 204, column: 3, scope: !4087)
!4113 = !DILocation(line: 204, column: 15, scope: !4087)
!4114 = !DILocation(line: 208, column: 35, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !466, line: 206, column: 3)
!4116 = distinct !DILexicalBlock(scope: !4087, file: !466, line: 206, column: 3)
!4117 = !DILocation(line: 208, column: 14, scope: !4115)
!4118 = !DILocation(line: 208, column: 33, scope: !4115)
!4119 = !DILocation(line: 208, column: 67, scope: !4115)
!4120 = !DILocation(line: 206, column: 3, scope: !4116)
!4121 = !DILocation(line: 0, scope: !4116)
!4122 = !DILocation(line: 211, column: 3, scope: !4087)
!4123 = !DILocation(line: 213, column: 1, scope: !4087)
!4124 = distinct !DISubprogram(name: "version_etc", scope: !466, file: !466, line: 230, type: !4125, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !3990, !59, !59, !59, null}
!4127 = !{!4128, !4129, !4130, !4131, !4132}
!4128 = !DILocalVariable(name: "stream", arg: 1, scope: !4124, file: !466, line: 230, type: !3990)
!4129 = !DILocalVariable(name: "command_name", arg: 2, scope: !4124, file: !466, line: 231, type: !59)
!4130 = !DILocalVariable(name: "package", arg: 3, scope: !4124, file: !466, line: 231, type: !59)
!4131 = !DILocalVariable(name: "version", arg: 4, scope: !4124, file: !466, line: 232, type: !59)
!4132 = !DILocalVariable(name: "authors", scope: !4124, file: !466, line: 234, type: !4090)
!4133 = !DILocation(line: 0, scope: !4124)
!4134 = !DILocation(line: 234, column: 3, scope: !4124)
!4135 = !DILocation(line: 234, column: 11, scope: !4124)
!4136 = !DILocation(line: 235, column: 3, scope: !4124)
!4137 = !DILocation(line: 236, column: 3, scope: !4124)
!4138 = !DILocation(line: 237, column: 3, scope: !4124)
!4139 = !DILocation(line: 238, column: 1, scope: !4124)
!4140 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !466, file: !466, line: 241, type: !295, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !557)
!4141 = !DILocation(line: 243, column: 3, scope: !4140)
!4142 = !DILocation(line: 248, column: 3, scope: !4140)
!4143 = !DILocation(line: 254, column: 3, scope: !4140)
!4144 = !DILocation(line: 259, column: 3, scope: !4140)
!4145 = !DILocation(line: 261, column: 1, scope: !4140)
!4146 = distinct !DISubprogram(name: "xnrealloc", scope: !4147, file: !4147, line: 147, type: !4148, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4150)
!4147 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!53, !53, !56, !56}
!4150 = !{!4151, !4152, !4153}
!4151 = !DILocalVariable(name: "p", arg: 1, scope: !4146, file: !4147, line: 147, type: !53)
!4152 = !DILocalVariable(name: "n", arg: 2, scope: !4146, file: !4147, line: 147, type: !56)
!4153 = !DILocalVariable(name: "s", arg: 3, scope: !4146, file: !4147, line: 147, type: !56)
!4154 = !DILocation(line: 0, scope: !4146)
!4155 = !DILocalVariable(name: "p", arg: 1, scope: !4156, file: !472, line: 83, type: !53)
!4156 = distinct !DISubprogram(name: "xreallocarray", scope: !472, file: !472, line: 83, type: !4148, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4157)
!4157 = !{!4155, !4158, !4159}
!4158 = !DILocalVariable(name: "n", arg: 2, scope: !4156, file: !472, line: 83, type: !56)
!4159 = !DILocalVariable(name: "s", arg: 3, scope: !4156, file: !472, line: 83, type: !56)
!4160 = !DILocation(line: 0, scope: !4156, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 149, column: 10, scope: !4146)
!4162 = !DILocation(line: 85, column: 25, scope: !4156, inlinedAt: !4161)
!4163 = !DILocalVariable(name: "p", arg: 1, scope: !4164, file: !472, line: 37, type: !53)
!4164 = distinct !DISubprogram(name: "check_nonnull", scope: !472, file: !472, line: 37, type: !4165, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4167)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!53, !53}
!4167 = !{!4163}
!4168 = !DILocation(line: 0, scope: !4164, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 85, column: 10, scope: !4156, inlinedAt: !4161)
!4170 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4169)
!4171 = distinct !DILexicalBlock(scope: !4164, file: !472, line: 39, column: 7)
!4172 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4169)
!4173 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4169)
!4174 = !DILocation(line: 149, column: 3, scope: !4146)
!4175 = !DILocation(line: 0, scope: !4156)
!4176 = !DILocation(line: 85, column: 25, scope: !4156)
!4177 = !DILocation(line: 0, scope: !4164, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 85, column: 10, scope: !4156)
!4179 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4178)
!4180 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4178)
!4181 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4178)
!4182 = !DILocation(line: 85, column: 3, scope: !4156)
!4183 = distinct !DISubprogram(name: "xmalloc", scope: !472, file: !472, line: 47, type: !4184, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4186)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!53, !56}
!4186 = !{!4187}
!4187 = !DILocalVariable(name: "s", arg: 1, scope: !4183, file: !472, line: 47, type: !56)
!4188 = !DILocation(line: 0, scope: !4183)
!4189 = !DILocation(line: 49, column: 25, scope: !4183)
!4190 = !DILocation(line: 0, scope: !4164, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 49, column: 10, scope: !4183)
!4192 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4191)
!4195 = !DILocation(line: 49, column: 3, scope: !4183)
!4196 = distinct !DISubprogram(name: "ximalloc", scope: !472, file: !472, line: 53, type: !4197, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!53, !216}
!4199 = !{!4200}
!4200 = !DILocalVariable(name: "s", arg: 1, scope: !4196, file: !472, line: 53, type: !216)
!4201 = !DILocation(line: 0, scope: !4196)
!4202 = !DILocalVariable(name: "s", arg: 1, scope: !4203, file: !4204, line: 55, type: !216)
!4203 = distinct !DISubprogram(name: "imalloc", scope: !4204, file: !4204, line: 55, type: !4197, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4205)
!4204 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4205 = !{!4202}
!4206 = !DILocation(line: 0, scope: !4203, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 55, column: 25, scope: !4196)
!4208 = !DILocation(line: 57, column: 26, scope: !4203, inlinedAt: !4207)
!4209 = !DILocation(line: 0, scope: !4164, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 55, column: 10, scope: !4196)
!4211 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4210)
!4212 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4210)
!4213 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4210)
!4214 = !DILocation(line: 55, column: 3, scope: !4196)
!4215 = distinct !DISubprogram(name: "xcharalloc", scope: !472, file: !472, line: 59, type: !4216, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4218)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!51, !56}
!4218 = !{!4219}
!4219 = !DILocalVariable(name: "n", arg: 1, scope: !4215, file: !472, line: 59, type: !56)
!4220 = !DILocation(line: 0, scope: !4215)
!4221 = !DILocation(line: 0, scope: !4183, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 61, column: 10, scope: !4215)
!4223 = !DILocation(line: 49, column: 25, scope: !4183, inlinedAt: !4222)
!4224 = !DILocation(line: 0, scope: !4164, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 49, column: 10, scope: !4183, inlinedAt: !4222)
!4226 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4225)
!4227 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4225)
!4228 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4225)
!4229 = !DILocation(line: 61, column: 3, scope: !4215)
!4230 = distinct !DISubprogram(name: "xrealloc", scope: !472, file: !472, line: 68, type: !2473, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4231)
!4231 = !{!4232, !4233}
!4232 = !DILocalVariable(name: "p", arg: 1, scope: !4230, file: !472, line: 68, type: !53)
!4233 = !DILocalVariable(name: "s", arg: 2, scope: !4230, file: !472, line: 68, type: !56)
!4234 = !DILocation(line: 0, scope: !4230)
!4235 = !DILocalVariable(name: "ptr", arg: 1, scope: !4236, file: !2472, line: 2057, type: !53)
!4236 = distinct !DISubprogram(name: "rpl_realloc", scope: !2472, file: !2472, line: 2057, type: !2473, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4237)
!4237 = !{!4235, !4238}
!4238 = !DILocalVariable(name: "size", arg: 2, scope: !4236, file: !2472, line: 2057, type: !56)
!4239 = !DILocation(line: 0, scope: !4236, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 70, column: 25, scope: !4230)
!4241 = !DILocation(line: 2059, column: 24, scope: !4236, inlinedAt: !4240)
!4242 = !DILocation(line: 2059, column: 10, scope: !4236, inlinedAt: !4240)
!4243 = !DILocation(line: 0, scope: !4164, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 70, column: 10, scope: !4230)
!4245 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4244)
!4246 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4244)
!4247 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4244)
!4248 = !DILocation(line: 70, column: 3, scope: !4230)
!4249 = distinct !DISubprogram(name: "xirealloc", scope: !472, file: !472, line: 74, type: !4250, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!53, !53, !216}
!4252 = !{!4253, !4254}
!4253 = !DILocalVariable(name: "p", arg: 1, scope: !4249, file: !472, line: 74, type: !53)
!4254 = !DILocalVariable(name: "s", arg: 2, scope: !4249, file: !472, line: 74, type: !216)
!4255 = !DILocation(line: 0, scope: !4249)
!4256 = !DILocalVariable(name: "p", arg: 1, scope: !4257, file: !4204, line: 66, type: !53)
!4257 = distinct !DISubprogram(name: "irealloc", scope: !4204, file: !4204, line: 66, type: !4250, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4258)
!4258 = !{!4256, !4259}
!4259 = !DILocalVariable(name: "s", arg: 2, scope: !4257, file: !4204, line: 66, type: !216)
!4260 = !DILocation(line: 0, scope: !4257, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 76, column: 25, scope: !4249)
!4262 = !DILocation(line: 0, scope: !4236, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 68, column: 26, scope: !4257, inlinedAt: !4261)
!4264 = !DILocation(line: 2059, column: 24, scope: !4236, inlinedAt: !4263)
!4265 = !DILocation(line: 2059, column: 10, scope: !4236, inlinedAt: !4263)
!4266 = !DILocation(line: 0, scope: !4164, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 76, column: 10, scope: !4249)
!4268 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4267)
!4269 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4267)
!4270 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4267)
!4271 = !DILocation(line: 76, column: 3, scope: !4249)
!4272 = distinct !DISubprogram(name: "xireallocarray", scope: !472, file: !472, line: 89, type: !4273, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!53, !53, !216, !216}
!4275 = !{!4276, !4277, !4278}
!4276 = !DILocalVariable(name: "p", arg: 1, scope: !4272, file: !472, line: 89, type: !53)
!4277 = !DILocalVariable(name: "n", arg: 2, scope: !4272, file: !472, line: 89, type: !216)
!4278 = !DILocalVariable(name: "s", arg: 3, scope: !4272, file: !472, line: 89, type: !216)
!4279 = !DILocation(line: 0, scope: !4272)
!4280 = !DILocalVariable(name: "p", arg: 1, scope: !4281, file: !4204, line: 98, type: !53)
!4281 = distinct !DISubprogram(name: "ireallocarray", scope: !4204, file: !4204, line: 98, type: !4273, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4282)
!4282 = !{!4280, !4283, !4284}
!4283 = !DILocalVariable(name: "n", arg: 2, scope: !4281, file: !4204, line: 98, type: !216)
!4284 = !DILocalVariable(name: "s", arg: 3, scope: !4281, file: !4204, line: 98, type: !216)
!4285 = !DILocation(line: 0, scope: !4281, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 91, column: 25, scope: !4272)
!4287 = !DILocation(line: 101, column: 13, scope: !4281, inlinedAt: !4286)
!4288 = !DILocation(line: 0, scope: !4164, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 91, column: 10, scope: !4272)
!4290 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4289)
!4291 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4289)
!4292 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4289)
!4293 = !DILocation(line: 91, column: 3, scope: !4272)
!4294 = distinct !DISubprogram(name: "xnmalloc", scope: !472, file: !472, line: 98, type: !4295, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!53, !56, !56}
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "n", arg: 1, scope: !4294, file: !472, line: 98, type: !56)
!4299 = !DILocalVariable(name: "s", arg: 2, scope: !4294, file: !472, line: 98, type: !56)
!4300 = !DILocation(line: 0, scope: !4294)
!4301 = !DILocation(line: 0, scope: !4156, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 100, column: 10, scope: !4294)
!4303 = !DILocation(line: 85, column: 25, scope: !4156, inlinedAt: !4302)
!4304 = !DILocation(line: 0, scope: !4164, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 85, column: 10, scope: !4156, inlinedAt: !4302)
!4306 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4305)
!4307 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4305)
!4308 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4305)
!4309 = !DILocation(line: 100, column: 3, scope: !4294)
!4310 = distinct !DISubprogram(name: "xinmalloc", scope: !472, file: !472, line: 104, type: !4311, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!53, !216, !216}
!4313 = !{!4314, !4315}
!4314 = !DILocalVariable(name: "n", arg: 1, scope: !4310, file: !472, line: 104, type: !216)
!4315 = !DILocalVariable(name: "s", arg: 2, scope: !4310, file: !472, line: 104, type: !216)
!4316 = !DILocation(line: 0, scope: !4310)
!4317 = !DILocation(line: 0, scope: !4272, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 106, column: 10, scope: !4310)
!4319 = !DILocation(line: 0, scope: !4281, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 91, column: 25, scope: !4272, inlinedAt: !4318)
!4321 = !DILocation(line: 101, column: 13, scope: !4281, inlinedAt: !4320)
!4322 = !DILocation(line: 0, scope: !4164, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 91, column: 10, scope: !4272, inlinedAt: !4318)
!4324 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4323)
!4325 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4323)
!4326 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4323)
!4327 = !DILocation(line: 106, column: 3, scope: !4310)
!4328 = distinct !DISubprogram(name: "x2realloc", scope: !472, file: !472, line: 116, type: !4329, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!53, !53, !478}
!4331 = !{!4332, !4333}
!4332 = !DILocalVariable(name: "p", arg: 1, scope: !4328, file: !472, line: 116, type: !53)
!4333 = !DILocalVariable(name: "ps", arg: 2, scope: !4328, file: !472, line: 116, type: !478)
!4334 = !DILocation(line: 0, scope: !4328)
!4335 = !DILocation(line: 0, scope: !475, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 118, column: 10, scope: !4328)
!4337 = !DILocation(line: 178, column: 14, scope: !475, inlinedAt: !4336)
!4338 = !DILocation(line: 180, column: 9, scope: !4339, inlinedAt: !4336)
!4339 = distinct !DILexicalBlock(scope: !475, file: !472, line: 180, column: 7)
!4340 = !DILocation(line: 180, column: 7, scope: !475, inlinedAt: !4336)
!4341 = !DILocation(line: 182, column: 13, scope: !4342, inlinedAt: !4336)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !472, line: 182, column: 11)
!4343 = distinct !DILexicalBlock(scope: !4339, file: !472, line: 181, column: 5)
!4344 = !DILocation(line: 182, column: 11, scope: !4343, inlinedAt: !4336)
!4345 = !DILocation(line: 197, column: 11, scope: !4346, inlinedAt: !4336)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !472, line: 197, column: 11)
!4347 = distinct !DILexicalBlock(scope: !4339, file: !472, line: 195, column: 5)
!4348 = !DILocation(line: 197, column: 11, scope: !4347, inlinedAt: !4336)
!4349 = !DILocation(line: 198, column: 9, scope: !4346, inlinedAt: !4336)
!4350 = !DILocation(line: 0, scope: !4156, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 201, column: 7, scope: !475, inlinedAt: !4336)
!4352 = !DILocation(line: 85, column: 25, scope: !4156, inlinedAt: !4351)
!4353 = !DILocation(line: 0, scope: !4164, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 85, column: 10, scope: !4156, inlinedAt: !4351)
!4355 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4354)
!4356 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4354)
!4357 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4354)
!4358 = !DILocation(line: 202, column: 7, scope: !475, inlinedAt: !4336)
!4359 = !DILocation(line: 118, column: 3, scope: !4328)
!4360 = !DILocation(line: 0, scope: !475)
!4361 = !DILocation(line: 178, column: 14, scope: !475)
!4362 = !DILocation(line: 180, column: 9, scope: !4339)
!4363 = !DILocation(line: 180, column: 7, scope: !475)
!4364 = !DILocation(line: 182, column: 13, scope: !4342)
!4365 = !DILocation(line: 182, column: 11, scope: !4343)
!4366 = !DILocation(line: 190, column: 30, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4342, file: !472, line: 183, column: 9)
!4368 = !DILocation(line: 191, column: 16, scope: !4367)
!4369 = !DILocation(line: 191, column: 13, scope: !4367)
!4370 = !DILocation(line: 192, column: 9, scope: !4367)
!4371 = !DILocation(line: 197, column: 11, scope: !4346)
!4372 = !DILocation(line: 197, column: 11, scope: !4347)
!4373 = !DILocation(line: 198, column: 9, scope: !4346)
!4374 = !DILocation(line: 0, scope: !4156, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 201, column: 7, scope: !475)
!4376 = !DILocation(line: 85, column: 25, scope: !4156, inlinedAt: !4375)
!4377 = !DILocation(line: 0, scope: !4164, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 85, column: 10, scope: !4156, inlinedAt: !4375)
!4379 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4378)
!4380 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4378)
!4381 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4378)
!4382 = !DILocation(line: 202, column: 7, scope: !475)
!4383 = !DILocation(line: 203, column: 3, scope: !475)
!4384 = !DILocation(line: 0, scope: !487)
!4385 = !DILocation(line: 230, column: 14, scope: !487)
!4386 = !DILocation(line: 238, column: 7, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !487, file: !472, line: 238, column: 7)
!4388 = !DILocation(line: 238, column: 7, scope: !487)
!4389 = !DILocation(line: 240, column: 9, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !487, file: !472, line: 240, column: 7)
!4391 = !DILocation(line: 240, column: 18, scope: !4390)
!4392 = !DILocation(line: 253, column: 8, scope: !487)
!4393 = !DILocation(line: 258, column: 27, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !472, line: 257, column: 5)
!4395 = distinct !DILexicalBlock(scope: !487, file: !472, line: 256, column: 7)
!4396 = !DILocation(line: 259, column: 32, scope: !4394)
!4397 = !DILocation(line: 260, column: 5, scope: !4394)
!4398 = !DILocation(line: 262, column: 9, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !487, file: !472, line: 262, column: 7)
!4400 = !DILocation(line: 262, column: 7, scope: !487)
!4401 = !DILocation(line: 263, column: 9, scope: !4399)
!4402 = !DILocation(line: 263, column: 5, scope: !4399)
!4403 = !DILocation(line: 264, column: 9, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !487, file: !472, line: 264, column: 7)
!4405 = !DILocation(line: 264, column: 14, scope: !4404)
!4406 = !DILocation(line: 265, column: 7, scope: !4404)
!4407 = !DILocation(line: 265, column: 11, scope: !4404)
!4408 = !DILocation(line: 266, column: 11, scope: !4404)
!4409 = !DILocation(line: 266, column: 26, scope: !4404)
!4410 = !DILocation(line: 267, column: 14, scope: !4404)
!4411 = !DILocation(line: 264, column: 7, scope: !487)
!4412 = !DILocation(line: 268, column: 5, scope: !4404)
!4413 = !DILocation(line: 0, scope: !4230, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 269, column: 8, scope: !487)
!4415 = !DILocation(line: 0, scope: !4236, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 70, column: 25, scope: !4230, inlinedAt: !4414)
!4417 = !DILocation(line: 2059, column: 24, scope: !4236, inlinedAt: !4416)
!4418 = !DILocation(line: 2059, column: 10, scope: !4236, inlinedAt: !4416)
!4419 = !DILocation(line: 0, scope: !4164, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 70, column: 10, scope: !4230, inlinedAt: !4414)
!4421 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4420)
!4422 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4420)
!4423 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4420)
!4424 = !DILocation(line: 270, column: 7, scope: !487)
!4425 = !DILocation(line: 271, column: 3, scope: !487)
!4426 = distinct !DISubprogram(name: "xzalloc", scope: !472, file: !472, line: 279, type: !4184, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4427)
!4427 = !{!4428}
!4428 = !DILocalVariable(name: "s", arg: 1, scope: !4426, file: !472, line: 279, type: !56)
!4429 = !DILocation(line: 0, scope: !4426)
!4430 = !DILocalVariable(name: "n", arg: 1, scope: !4431, file: !472, line: 294, type: !56)
!4431 = distinct !DISubprogram(name: "xcalloc", scope: !472, file: !472, line: 294, type: !4295, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4432)
!4432 = !{!4430, !4433}
!4433 = !DILocalVariable(name: "s", arg: 2, scope: !4431, file: !472, line: 294, type: !56)
!4434 = !DILocation(line: 0, scope: !4431, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 281, column: 10, scope: !4426)
!4436 = !DILocation(line: 296, column: 25, scope: !4431, inlinedAt: !4435)
!4437 = !DILocation(line: 0, scope: !4164, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 296, column: 10, scope: !4431, inlinedAt: !4435)
!4439 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4438)
!4440 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4438)
!4441 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4438)
!4442 = !DILocation(line: 281, column: 3, scope: !4426)
!4443 = !DILocation(line: 0, scope: !4431)
!4444 = !DILocation(line: 296, column: 25, scope: !4431)
!4445 = !DILocation(line: 0, scope: !4164, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 296, column: 10, scope: !4431)
!4447 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4446)
!4448 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4446)
!4449 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4446)
!4450 = !DILocation(line: 296, column: 3, scope: !4431)
!4451 = distinct !DISubprogram(name: "xizalloc", scope: !472, file: !472, line: 285, type: !4197, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4452)
!4452 = !{!4453}
!4453 = !DILocalVariable(name: "s", arg: 1, scope: !4451, file: !472, line: 285, type: !216)
!4454 = !DILocation(line: 0, scope: !4451)
!4455 = !DILocalVariable(name: "n", arg: 1, scope: !4456, file: !472, line: 300, type: !216)
!4456 = distinct !DISubprogram(name: "xicalloc", scope: !472, file: !472, line: 300, type: !4311, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4457)
!4457 = !{!4455, !4458}
!4458 = !DILocalVariable(name: "s", arg: 2, scope: !4456, file: !472, line: 300, type: !216)
!4459 = !DILocation(line: 0, scope: !4456, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 287, column: 10, scope: !4451)
!4461 = !DILocalVariable(name: "n", arg: 1, scope: !4462, file: !4204, line: 77, type: !216)
!4462 = distinct !DISubprogram(name: "icalloc", scope: !4204, file: !4204, line: 77, type: !4311, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4463)
!4463 = !{!4461, !4464}
!4464 = !DILocalVariable(name: "s", arg: 2, scope: !4462, file: !4204, line: 77, type: !216)
!4465 = !DILocation(line: 0, scope: !4462, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 302, column: 25, scope: !4456, inlinedAt: !4460)
!4467 = !DILocation(line: 91, column: 10, scope: !4462, inlinedAt: !4466)
!4468 = !DILocation(line: 0, scope: !4164, inlinedAt: !4469)
!4469 = distinct !DILocation(line: 302, column: 10, scope: !4456, inlinedAt: !4460)
!4470 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4469)
!4471 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4469)
!4472 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4469)
!4473 = !DILocation(line: 287, column: 3, scope: !4451)
!4474 = !DILocation(line: 0, scope: !4456)
!4475 = !DILocation(line: 0, scope: !4462, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 302, column: 25, scope: !4456)
!4477 = !DILocation(line: 91, column: 10, scope: !4462, inlinedAt: !4476)
!4478 = !DILocation(line: 0, scope: !4164, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 302, column: 10, scope: !4456)
!4480 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4479)
!4481 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4479)
!4482 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4479)
!4483 = !DILocation(line: 302, column: 3, scope: !4456)
!4484 = distinct !DISubprogram(name: "xmemdup", scope: !472, file: !472, line: 310, type: !4485, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!53, !769, !56}
!4487 = !{!4488, !4489}
!4488 = !DILocalVariable(name: "p", arg: 1, scope: !4484, file: !472, line: 310, type: !769)
!4489 = !DILocalVariable(name: "s", arg: 2, scope: !4484, file: !472, line: 310, type: !56)
!4490 = !DILocation(line: 0, scope: !4484)
!4491 = !DILocation(line: 0, scope: !4183, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 312, column: 18, scope: !4484)
!4493 = !DILocation(line: 49, column: 25, scope: !4183, inlinedAt: !4492)
!4494 = !DILocation(line: 0, scope: !4164, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 49, column: 10, scope: !4183, inlinedAt: !4492)
!4496 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4495)
!4497 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4495)
!4498 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4495)
!4499 = !DILocalVariable(name: "__dest", arg: 1, scope: !4500, file: !1604, line: 26, type: !2499)
!4500 = distinct !DISubprogram(name: "memcpy", scope: !1604, file: !1604, line: 26, type: !2497, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4501)
!4501 = !{!4499, !4502, !4503}
!4502 = !DILocalVariable(name: "__src", arg: 2, scope: !4500, file: !1604, line: 26, type: !768)
!4503 = !DILocalVariable(name: "__len", arg: 3, scope: !4500, file: !1604, line: 26, type: !56)
!4504 = !DILocation(line: 0, scope: !4500, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 312, column: 10, scope: !4484)
!4506 = !DILocation(line: 29, column: 10, scope: !4500, inlinedAt: !4505)
!4507 = !DILocation(line: 312, column: 3, scope: !4484)
!4508 = distinct !DISubprogram(name: "ximemdup", scope: !472, file: !472, line: 316, type: !4509, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4511)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!53, !769, !216}
!4511 = !{!4512, !4513}
!4512 = !DILocalVariable(name: "p", arg: 1, scope: !4508, file: !472, line: 316, type: !769)
!4513 = !DILocalVariable(name: "s", arg: 2, scope: !4508, file: !472, line: 316, type: !216)
!4514 = !DILocation(line: 0, scope: !4508)
!4515 = !DILocation(line: 0, scope: !4196, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 318, column: 18, scope: !4508)
!4517 = !DILocation(line: 0, scope: !4203, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 55, column: 25, scope: !4196, inlinedAt: !4516)
!4519 = !DILocation(line: 57, column: 26, scope: !4203, inlinedAt: !4518)
!4520 = !DILocation(line: 0, scope: !4164, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 55, column: 10, scope: !4196, inlinedAt: !4516)
!4522 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4521)
!4523 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4521)
!4524 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4521)
!4525 = !DILocation(line: 0, scope: !4500, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 318, column: 10, scope: !4508)
!4527 = !DILocation(line: 29, column: 10, scope: !4500, inlinedAt: !4526)
!4528 = !DILocation(line: 318, column: 3, scope: !4508)
!4529 = distinct !DISubprogram(name: "ximemdup0", scope: !472, file: !472, line: 325, type: !4530, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!51, !769, !216}
!4532 = !{!4533, !4534, !4535}
!4533 = !DILocalVariable(name: "p", arg: 1, scope: !4529, file: !472, line: 325, type: !769)
!4534 = !DILocalVariable(name: "s", arg: 2, scope: !4529, file: !472, line: 325, type: !216)
!4535 = !DILocalVariable(name: "result", scope: !4529, file: !472, line: 327, type: !51)
!4536 = !DILocation(line: 0, scope: !4529)
!4537 = !DILocation(line: 327, column: 30, scope: !4529)
!4538 = !DILocation(line: 0, scope: !4196, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 327, column: 18, scope: !4529)
!4540 = !DILocation(line: 0, scope: !4203, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 55, column: 25, scope: !4196, inlinedAt: !4539)
!4542 = !DILocation(line: 57, column: 26, scope: !4203, inlinedAt: !4541)
!4543 = !DILocation(line: 0, scope: !4164, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 55, column: 10, scope: !4196, inlinedAt: !4539)
!4545 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4544)
!4546 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4544)
!4547 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4544)
!4548 = !DILocation(line: 328, column: 3, scope: !4529)
!4549 = !DILocation(line: 328, column: 13, scope: !4529)
!4550 = !DILocation(line: 0, scope: !4500, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 329, column: 10, scope: !4529)
!4552 = !DILocation(line: 29, column: 10, scope: !4500, inlinedAt: !4551)
!4553 = !DILocation(line: 329, column: 3, scope: !4529)
!4554 = distinct !DISubprogram(name: "xstrdup", scope: !472, file: !472, line: 335, type: !763, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !4555)
!4555 = !{!4556}
!4556 = !DILocalVariable(name: "string", arg: 1, scope: !4554, file: !472, line: 335, type: !59)
!4557 = !DILocation(line: 0, scope: !4554)
!4558 = !DILocation(line: 337, column: 27, scope: !4554)
!4559 = !DILocation(line: 337, column: 43, scope: !4554)
!4560 = !DILocation(line: 0, scope: !4484, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 337, column: 10, scope: !4554)
!4562 = !DILocation(line: 0, scope: !4183, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 312, column: 18, scope: !4484, inlinedAt: !4561)
!4564 = !DILocation(line: 49, column: 25, scope: !4183, inlinedAt: !4563)
!4565 = !DILocation(line: 0, scope: !4164, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 49, column: 10, scope: !4183, inlinedAt: !4563)
!4567 = !DILocation(line: 39, column: 8, scope: !4171, inlinedAt: !4566)
!4568 = !DILocation(line: 39, column: 7, scope: !4164, inlinedAt: !4566)
!4569 = !DILocation(line: 40, column: 5, scope: !4171, inlinedAt: !4566)
!4570 = !DILocation(line: 0, scope: !4500, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 312, column: 10, scope: !4484, inlinedAt: !4561)
!4572 = !DILocation(line: 29, column: 10, scope: !4500, inlinedAt: !4571)
!4573 = !DILocation(line: 337, column: 3, scope: !4554)
!4574 = distinct !DISubprogram(name: "xalloc_die", scope: !503, file: !503, line: 32, type: !295, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !4575)
!4575 = !{!4576}
!4576 = !DILocalVariable(name: "__errstatus", scope: !4577, file: !503, line: 34, type: !4578)
!4577 = distinct !DILexicalBlock(scope: !4574, file: !503, line: 34, column: 3)
!4578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!4579 = !DILocation(line: 34, column: 3, scope: !4577)
!4580 = !DILocation(line: 0, scope: !4577)
!4581 = !DILocation(line: 40, column: 3, scope: !4574)
!4582 = distinct !DISubprogram(name: "rpl_fopen", scope: !505, file: !505, line: 46, type: !4583, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4619)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!4585, !59, !59}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !4587)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4587, file: !111, line: 51, baseType: !54, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4587, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4587, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4587, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4587, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4587, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4587, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4587, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4587, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4587, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4587, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4587, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4587, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4587, file: !111, line: 70, baseType: !4603, size: 64, offset: 832)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4587, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4587, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4587, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4587, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4587, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4587, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4587, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4587, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4587, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4587, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4587, file: !111, line: 93, baseType: !4603, size: 64, offset: 1344)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4587, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4587, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4587, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4587, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!4619 = !{!4620, !4621, !4622, !4623, !4624, !4625, !4629, !4631, !4632, !4637, !4640, !4641}
!4620 = !DILocalVariable(name: "filename", arg: 1, scope: !4582, file: !505, line: 46, type: !59)
!4621 = !DILocalVariable(name: "mode", arg: 2, scope: !4582, file: !505, line: 46, type: !59)
!4622 = !DILocalVariable(name: "open_direction", scope: !4582, file: !505, line: 54, type: !54)
!4623 = !DILocalVariable(name: "open_flags", scope: !4582, file: !505, line: 55, type: !54)
!4624 = !DILocalVariable(name: "open_flags_gnu", scope: !4582, file: !505, line: 57, type: !66)
!4625 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4582, file: !505, line: 59, type: !4626)
!4626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 648, elements: !4627)
!4627 = !{!4628}
!4628 = !DISubrange(count: 81)
!4629 = !DILocalVariable(name: "p", scope: !4630, file: !505, line: 62, type: !59)
!4630 = distinct !DILexicalBlock(scope: !4582, file: !505, line: 61, column: 3)
!4631 = !DILocalVariable(name: "q", scope: !4630, file: !505, line: 64, type: !51)
!4632 = !DILocalVariable(name: "len", scope: !4633, file: !505, line: 128, type: !56)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !505, line: 127, column: 9)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !505, line: 68, column: 7)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !505, line: 67, column: 5)
!4636 = distinct !DILexicalBlock(scope: !4630, file: !505, line: 67, column: 5)
!4637 = !DILocalVariable(name: "fd", scope: !4638, file: !505, line: 199, type: !54)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !505, line: 198, column: 5)
!4639 = distinct !DILexicalBlock(scope: !4582, file: !505, line: 197, column: 7)
!4640 = !DILocalVariable(name: "fp", scope: !4638, file: !505, line: 204, type: !4585)
!4641 = !DILocalVariable(name: "saved_errno", scope: !4642, file: !505, line: 207, type: !54)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !505, line: 206, column: 9)
!4643 = distinct !DILexicalBlock(scope: !4638, file: !505, line: 205, column: 11)
!4644 = !DILocation(line: 0, scope: !4582)
!4645 = !DILocation(line: 59, column: 3, scope: !4582)
!4646 = !DILocation(line: 59, column: 8, scope: !4582)
!4647 = !DILocation(line: 0, scope: !4630)
!4648 = !DILocation(line: 67, column: 5, scope: !4630)
!4649 = !DILocation(line: 64, column: 11, scope: !4630)
!4650 = !DILocation(line: 54, column: 7, scope: !4582)
!4651 = !DILocation(line: 67, column: 12, scope: !4635)
!4652 = !DILocation(line: 67, column: 5, scope: !4636)
!4653 = !DILocation(line: 74, column: 19, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !505, line: 74, column: 17)
!4655 = distinct !DILexicalBlock(scope: !4634, file: !505, line: 70, column: 11)
!4656 = !DILocation(line: 74, column: 17, scope: !4655)
!4657 = !DILocation(line: 75, column: 17, scope: !4654)
!4658 = !DILocation(line: 75, column: 20, scope: !4654)
!4659 = !DILocation(line: 75, column: 15, scope: !4654)
!4660 = !DILocation(line: 80, column: 24, scope: !4655)
!4661 = !DILocation(line: 82, column: 19, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4655, file: !505, line: 82, column: 17)
!4663 = !DILocation(line: 82, column: 17, scope: !4655)
!4664 = !DILocation(line: 83, column: 17, scope: !4662)
!4665 = !DILocation(line: 83, column: 20, scope: !4662)
!4666 = !DILocation(line: 83, column: 15, scope: !4662)
!4667 = !DILocation(line: 88, column: 24, scope: !4655)
!4668 = !DILocation(line: 90, column: 19, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4655, file: !505, line: 90, column: 17)
!4670 = !DILocation(line: 90, column: 17, scope: !4655)
!4671 = !DILocation(line: 91, column: 17, scope: !4669)
!4672 = !DILocation(line: 91, column: 20, scope: !4669)
!4673 = !DILocation(line: 91, column: 15, scope: !4669)
!4674 = !DILocation(line: 100, column: 19, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4655, file: !505, line: 100, column: 17)
!4676 = !DILocation(line: 100, column: 17, scope: !4655)
!4677 = !DILocation(line: 101, column: 17, scope: !4675)
!4678 = !DILocation(line: 101, column: 20, scope: !4675)
!4679 = !DILocation(line: 101, column: 15, scope: !4675)
!4680 = !DILocation(line: 107, column: 19, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4655, file: !505, line: 107, column: 17)
!4682 = !DILocation(line: 107, column: 17, scope: !4655)
!4683 = !DILocation(line: 108, column: 17, scope: !4681)
!4684 = !DILocation(line: 108, column: 20, scope: !4681)
!4685 = !DILocation(line: 108, column: 15, scope: !4681)
!4686 = !DILocation(line: 113, column: 24, scope: !4655)
!4687 = !DILocation(line: 115, column: 13, scope: !4655)
!4688 = !DILocation(line: 117, column: 24, scope: !4655)
!4689 = !DILocation(line: 119, column: 13, scope: !4655)
!4690 = !DILocation(line: 128, column: 24, scope: !4633)
!4691 = !DILocation(line: 0, scope: !4633)
!4692 = !DILocation(line: 129, column: 48, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4633, file: !505, line: 129, column: 15)
!4694 = !DILocation(line: 129, column: 19, scope: !4693)
!4695 = !DILocation(line: 129, column: 15, scope: !4633)
!4696 = !DILocalVariable(name: "__dest", arg: 1, scope: !4697, file: !1604, line: 26, type: !2499)
!4697 = distinct !DISubprogram(name: "memcpy", scope: !1604, file: !1604, line: 26, type: !2497, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4698)
!4698 = !{!4696, !4699, !4700}
!4699 = !DILocalVariable(name: "__src", arg: 2, scope: !4697, file: !1604, line: 26, type: !768)
!4700 = !DILocalVariable(name: "__len", arg: 3, scope: !4697, file: !1604, line: 26, type: !56)
!4701 = !DILocation(line: 0, scope: !4697, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 131, column: 11, scope: !4633)
!4703 = !DILocation(line: 29, column: 10, scope: !4697, inlinedAt: !4702)
!4704 = !DILocation(line: 132, column: 13, scope: !4633)
!4705 = !DILocation(line: 135, column: 9, scope: !4634)
!4706 = !DILocation(line: 67, column: 25, scope: !4635)
!4707 = !DILocation(line: 67, column: 5, scope: !4635)
!4708 = distinct !{!4708, !4652, !4709, !618}
!4709 = !DILocation(line: 136, column: 7, scope: !4636)
!4710 = !DILocation(line: 138, column: 8, scope: !4630)
!4711 = !DILocation(line: 197, column: 7, scope: !4582)
!4712 = !DILocation(line: 199, column: 47, scope: !4638)
!4713 = !DILocation(line: 199, column: 16, scope: !4638)
!4714 = !DILocation(line: 0, scope: !4638)
!4715 = !DILocation(line: 201, column: 14, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4638, file: !505, line: 201, column: 11)
!4717 = !DILocation(line: 201, column: 11, scope: !4638)
!4718 = !DILocation(line: 204, column: 18, scope: !4638)
!4719 = !DILocation(line: 205, column: 14, scope: !4643)
!4720 = !DILocation(line: 205, column: 11, scope: !4638)
!4721 = !DILocation(line: 207, column: 29, scope: !4642)
!4722 = !DILocation(line: 0, scope: !4642)
!4723 = !DILocation(line: 208, column: 11, scope: !4642)
!4724 = !DILocation(line: 209, column: 17, scope: !4642)
!4725 = !DILocation(line: 210, column: 9, scope: !4642)
!4726 = !DILocalVariable(name: "filename", arg: 1, scope: !4727, file: !505, line: 30, type: !59)
!4727 = distinct !DISubprogram(name: "orig_fopen", scope: !505, file: !505, line: 30, type: !4583, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4728)
!4728 = !{!4726, !4729}
!4729 = !DILocalVariable(name: "mode", arg: 2, scope: !4727, file: !505, line: 30, type: !59)
!4730 = !DILocation(line: 0, scope: !4727, inlinedAt: !4731)
!4731 = distinct !DILocation(line: 219, column: 10, scope: !4582)
!4732 = !DILocation(line: 32, column: 10, scope: !4727, inlinedAt: !4731)
!4733 = !DILocation(line: 219, column: 3, scope: !4582)
!4734 = !DILocation(line: 220, column: 1, scope: !4582)
!4735 = !DISubprogram(name: "open", scope: !1926, file: !1926, line: 181, type: !4736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!54, !59, !54, null}
!4738 = !DISubprogram(name: "fdopen", scope: !268, file: !268, line: 293, type: !4739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!4585, !54, !59}
!4741 = !DISubprogram(name: "close", scope: !2130, file: !2130, line: 358, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!4742 = distinct !DISubprogram(name: "close_stream", scope: !507, file: !507, line: 55, type: !4743, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4779)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!54, !4745}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !4747)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !4748)
!4748 = !{!4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4747, file: !111, line: 51, baseType: !54, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4747, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4747, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4747, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4747, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4747, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4747, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4747, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4747, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4747, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4747, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4747, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4747, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4747, file: !111, line: 70, baseType: !4763, size: 64, offset: 832)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4747, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4747, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4747, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4747, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4747, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4747, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4747, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4747, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4747, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4747, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4747, file: !111, line: 93, baseType: !4763, size: 64, offset: 1344)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4747, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4747, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4747, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4747, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!4779 = !{!4780, !4781, !4783, !4784}
!4780 = !DILocalVariable(name: "stream", arg: 1, scope: !4742, file: !507, line: 55, type: !4745)
!4781 = !DILocalVariable(name: "some_pending", scope: !4742, file: !507, line: 57, type: !4782)
!4782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!4783 = !DILocalVariable(name: "prev_fail", scope: !4742, file: !507, line: 58, type: !4782)
!4784 = !DILocalVariable(name: "fclose_fail", scope: !4742, file: !507, line: 59, type: !4782)
!4785 = !DILocation(line: 0, scope: !4742)
!4786 = !DILocation(line: 57, column: 30, scope: !4742)
!4787 = !DILocalVariable(name: "__stream", arg: 1, scope: !4788, file: !939, line: 135, type: !4745)
!4788 = distinct !DISubprogram(name: "ferror_unlocked", scope: !939, file: !939, line: 135, type: !4743, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4789)
!4789 = !{!4787}
!4790 = !DILocation(line: 0, scope: !4788, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 58, column: 27, scope: !4742)
!4792 = !DILocation(line: 137, column: 10, scope: !4788, inlinedAt: !4791)
!4793 = !DILocation(line: 58, column: 43, scope: !4742)
!4794 = !DILocation(line: 59, column: 29, scope: !4742)
!4795 = !DILocation(line: 59, column: 45, scope: !4742)
!4796 = !DILocation(line: 69, column: 17, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4742, file: !507, line: 69, column: 7)
!4798 = !DILocation(line: 57, column: 50, scope: !4742)
!4799 = !DILocation(line: 69, column: 33, scope: !4797)
!4800 = !DILocation(line: 69, column: 53, scope: !4797)
!4801 = !DILocation(line: 69, column: 59, scope: !4797)
!4802 = !DILocation(line: 69, column: 7, scope: !4742)
!4803 = !DILocation(line: 71, column: 11, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4797, file: !507, line: 70, column: 5)
!4805 = !DILocation(line: 72, column: 9, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4804, file: !507, line: 71, column: 11)
!4807 = !DILocation(line: 72, column: 15, scope: !4806)
!4808 = !DILocation(line: 77, column: 1, scope: !4742)
!4809 = distinct !DISubprogram(name: "freadptr", scope: !509, file: !509, line: 30, type: !4810, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4846)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!59, !4812, !478}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !4814)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4814, file: !111, line: 51, baseType: !54, size: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4814, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4814, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4814, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4814, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4814, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4814, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4814, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4814, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4814, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4814, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4814, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4814, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4814, file: !111, line: 70, baseType: !4830, size: 64, offset: 832)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4814, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4814, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4814, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4814, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4814, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4814, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4814, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4814, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4814, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4814, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4814, file: !111, line: 93, baseType: !4830, size: 64, offset: 1344)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4814, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4814, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4814, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4814, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!4846 = !{!4847, !4848, !4849}
!4847 = !DILocalVariable(name: "fp", arg: 1, scope: !4809, file: !509, line: 30, type: !4812)
!4848 = !DILocalVariable(name: "sizep", arg: 2, scope: !4809, file: !509, line: 30, type: !478)
!4849 = !DILocalVariable(name: "size", scope: !4809, file: !509, line: 32, type: !56)
!4850 = !DILocation(line: 0, scope: !4809)
!4851 = !DILocation(line: 37, column: 11, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4809, file: !509, line: 37, column: 7)
!4853 = !DILocation(line: 37, column: 31, scope: !4852)
!4854 = !DILocation(line: 37, column: 25, scope: !4852)
!4855 = !DILocation(line: 37, column: 7, scope: !4809)
!4856 = !DILocation(line: 39, column: 14, scope: !4809)
!4857 = !DILocation(line: 39, column: 33, scope: !4809)
!4858 = !DILocation(line: 39, column: 27, scope: !4809)
!4859 = !DILocation(line: 40, column: 12, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4809, file: !509, line: 40, column: 7)
!4861 = !DILocation(line: 40, column: 7, scope: !4809)
!4862 = !DILocation(line: 42, column: 10, scope: !4809)
!4863 = !DILocation(line: 43, column: 3, scope: !4809)
!4864 = !DILocation(line: 125, column: 1, scope: !4809)
!4865 = distinct !DISubprogram(name: "freadseek", scope: !512, file: !512, line: 74, type: !4866, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4902)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!54, !4868, !56}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !4870)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !4871)
!4871 = !{!4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4870, file: !111, line: 51, baseType: !54, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4870, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4870, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4870, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4870, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4870, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4870, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4870, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4870, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4870, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4870, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4870, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4870, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4870, file: !111, line: 70, baseType: !4886, size: 64, offset: 832)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4870, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4870, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4870, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4870, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4870, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4870, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4870, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4870, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4870, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4870, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4870, file: !111, line: 93, baseType: !4886, size: 64, offset: 1344)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4870, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4870, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4870, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4870, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!4902 = !{!4903, !4904, !4905, !4906, !4908, !4911, !4912, !4919, !4920}
!4903 = !DILocalVariable(name: "fp", arg: 1, scope: !4865, file: !512, line: 74, type: !4868)
!4904 = !DILocalVariable(name: "offset", arg: 2, scope: !4865, file: !512, line: 74, type: !56)
!4905 = !DILocalVariable(name: "total_buffered", scope: !4865, file: !512, line: 81, type: !56)
!4906 = !DILocalVariable(name: "buffered", scope: !4907, file: !512, line: 86, type: !56)
!4907 = distinct !DILexicalBlock(scope: !4865, file: !512, line: 85, column: 5)
!4908 = !DILocalVariable(name: "increment", scope: !4909, file: !512, line: 90, type: !56)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !512, line: 89, column: 9)
!4910 = distinct !DILexicalBlock(scope: !4907, file: !512, line: 88, column: 11)
!4911 = !DILocalVariable(name: "fd", scope: !4865, file: !512, line: 111, type: !54)
!4912 = !DILocalVariable(name: "buf", scope: !4913, file: !512, line: 123, type: !4916)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !512, line: 122, column: 9)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !512, line: 118, column: 5)
!4915 = distinct !DILexicalBlock(scope: !4865, file: !512, line: 112, column: 7)
!4916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32768, elements: !4917)
!4917 = !{!4918}
!4918 = !DISubrange(count: 4096)
!4919 = !DILocalVariable(name: "count", scope: !4913, file: !512, line: 124, type: !56)
!4920 = !DILabel(scope: !4865, name: "eof", file: !512, line: 134)
!4921 = !DILocation(line: 0, scope: !4865)
!4922 = !DILocation(line: 76, column: 14, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4865, file: !512, line: 76, column: 7)
!4924 = !DILocation(line: 76, column: 7, scope: !4865)
!4925 = !DILocation(line: 81, column: 27, scope: !4865)
!4926 = !DILocation(line: 84, column: 3, scope: !4865)
!4927 = !DILocation(line: 81, column: 10, scope: !4865)
!4928 = !DILocation(line: 84, column: 25, scope: !4865)
!4929 = !DILocation(line: 86, column: 7, scope: !4907)
!4930 = !DILocation(line: 0, scope: !4907)
!4931 = !DILocation(line: 88, column: 11, scope: !4910)
!4932 = !DILocation(line: 88, column: 36, scope: !4910)
!4933 = !DILocation(line: 88, column: 44, scope: !4910)
!4934 = !DILocation(line: 90, column: 40, scope: !4909)
!4935 = !DILocation(line: 90, column: 31, scope: !4909)
!4936 = !DILocation(line: 0, scope: !4909)
!4937 = !DILocalVariable(name: "fp", arg: 1, scope: !4938, file: !512, line: 34, type: !4868)
!4938 = distinct !DISubprogram(name: "freadptrinc", scope: !512, file: !512, line: 34, type: !4939, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4941)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !4868, !56}
!4941 = !{!4937, !4942}
!4942 = !DILocalVariable(name: "increment", arg: 2, scope: !4938, file: !512, line: 34, type: !56)
!4943 = !DILocation(line: 0, scope: !4938, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 92, column: 11, scope: !4909)
!4945 = !DILocation(line: 41, column: 20, scope: !4938, inlinedAt: !4944)
!4946 = !DILocation(line: 93, column: 18, scope: !4909)
!4947 = !DILocation(line: 94, column: 22, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4909, file: !512, line: 94, column: 15)
!4949 = !DILocation(line: 94, column: 15, scope: !4909)
!4950 = !DILocation(line: 96, column: 26, scope: !4909)
!4951 = !DILocation(line: 97, column: 30, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4909, file: !512, line: 97, column: 15)
!4953 = !DILocation(line: 102, column: 11, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4907, file: !512, line: 102, column: 11)
!4955 = !DILocation(line: 102, column: 22, scope: !4954)
!4956 = !DILocation(line: 102, column: 11, scope: !4907)
!4957 = !DILocation(line: 108, column: 5, scope: !4865)
!4958 = !DILocation(line: 104, column: 13, scope: !4907)
!4959 = !DILocation(line: 105, column: 18, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4907, file: !512, line: 105, column: 11)
!4961 = !DILocation(line: 105, column: 11, scope: !4907)
!4962 = !DILocation(line: 107, column: 21, scope: !4907)
!4963 = distinct !{!4963, !4926, !4957, !618}
!4964 = !DILocation(line: 111, column: 12, scope: !4865)
!4965 = !DILocation(line: 112, column: 10, scope: !4915)
!4966 = !DILocation(line: 112, column: 15, scope: !4915)
!4967 = !DILocation(line: 112, column: 18, scope: !4915)
!4968 = !DILocation(line: 112, column: 42, scope: !4915)
!4969 = !DILocation(line: 112, column: 7, scope: !4865)
!4970 = !DILocation(line: 115, column: 14, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4915, file: !512, line: 113, column: 5)
!4972 = !DILocation(line: 115, column: 7, scope: !4971)
!4973 = !DILocation(line: 121, column: 7, scope: !4914)
!4974 = !DILocation(line: 123, column: 11, scope: !4913)
!4975 = !DILocation(line: 123, column: 16, scope: !4913)
!4976 = !DILocation(line: 124, column: 27, scope: !4913)
!4977 = !DILocation(line: 0, scope: !4913)
!4978 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4979, file: !1832, line: 288, type: !2499)
!4979 = distinct !DISubprogram(name: "fread", scope: !1832, file: !1832, line: 288, type: !4980, scopeLine: 290, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4983)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!58, !2499, !56, !56, !4982}
!4982 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4868)
!4983 = !{!4978, !4984, !4985, !4986, !4987}
!4984 = !DILocalVariable(name: "__size", arg: 2, scope: !4979, file: !1832, line: 288, type: !56)
!4985 = !DILocalVariable(name: "__n", arg: 3, scope: !4979, file: !1832, line: 288, type: !56)
!4986 = !DILocalVariable(name: "__stream", arg: 4, scope: !4979, file: !1832, line: 289, type: !4982)
!4987 = !DILocalVariable(name: "sz", scope: !4979, file: !1832, line: 291, type: !56)
!4988 = !DILocation(line: 0, scope: !4979, inlinedAt: !4989)
!4989 = distinct !DILocation(line: 125, column: 15, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4913, file: !512, line: 125, column: 15)
!4991 = !DILocation(line: 293, column: 12, scope: !4992, inlinedAt: !4989)
!4992 = distinct !DILexicalBlock(scope: !4979, file: !1832, line: 292, column: 7)
!4993 = !DILocation(line: 125, column: 41, scope: !4990)
!4994 = !DILocation(line: 125, column: 15, scope: !4913)
!4995 = !DILocation(line: 128, column: 9, scope: !4914)
!4996 = !DILocation(line: 129, column: 21, scope: !4914)
!4997 = !DILocation(line: 128, column: 9, scope: !4913)
!4998 = distinct !{!4998, !4973, !4999, !618}
!4999 = !DILocation(line: 129, column: 24, scope: !4914)
!5000 = !DILocation(line: 134, column: 2, scope: !4865)
!5001 = !DILocation(line: 136, column: 7, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4865, file: !512, line: 136, column: 7)
!5003 = !DILocation(line: 0, scope: !5002)
!5004 = !DILocation(line: 141, column: 1, scope: !4865)
!5005 = !DISubprogram(name: "fgetc", scope: !268, file: !268, line: 513, type: !5006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!54, !4868}
!5008 = !DISubprogram(name: "ferror", scope: !268, file: !268, line: 790, type: !5006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!5009 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !429, file: !429, line: 100, type: !5010, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !5013)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!56, !2693, !59, !56, !5012}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!5013 = !{!5014, !5015, !5016, !5017, !5018}
!5014 = !DILocalVariable(name: "pwc", arg: 1, scope: !5009, file: !429, line: 100, type: !2693)
!5015 = !DILocalVariable(name: "s", arg: 2, scope: !5009, file: !429, line: 100, type: !59)
!5016 = !DILocalVariable(name: "n", arg: 3, scope: !5009, file: !429, line: 100, type: !56)
!5017 = !DILocalVariable(name: "ps", arg: 4, scope: !5009, file: !429, line: 100, type: !5012)
!5018 = !DILocalVariable(name: "ret", scope: !5009, file: !429, line: 130, type: !56)
!5019 = !DILocation(line: 0, scope: !5009)
!5020 = !DILocation(line: 105, column: 9, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5009, file: !429, line: 105, column: 7)
!5022 = !DILocation(line: 105, column: 7, scope: !5009)
!5023 = !DILocation(line: 117, column: 10, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5009, file: !429, line: 117, column: 7)
!5025 = !DILocation(line: 117, column: 7, scope: !5009)
!5026 = !DILocation(line: 130, column: 16, scope: !5009)
!5027 = !DILocation(line: 135, column: 11, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5009, file: !429, line: 135, column: 7)
!5029 = !DILocation(line: 135, column: 25, scope: !5028)
!5030 = !DILocation(line: 135, column: 30, scope: !5028)
!5031 = !DILocation(line: 135, column: 7, scope: !5009)
!5032 = !DILocalVariable(name: "ps", arg: 1, scope: !5033, file: !2667, line: 1135, type: !5012)
!5033 = distinct !DISubprogram(name: "mbszero", scope: !2667, file: !2667, line: 1135, type: !5034, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !5036)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{null, !5012}
!5036 = !{!5032}
!5037 = !DILocation(line: 0, scope: !5033, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 137, column: 5, scope: !5028)
!5039 = !DILocalVariable(name: "__dest", arg: 1, scope: !5040, file: !1604, line: 57, type: !53)
!5040 = distinct !DISubprogram(name: "memset", scope: !1604, file: !1604, line: 57, type: !2676, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !5041)
!5041 = !{!5039, !5042, !5043}
!5042 = !DILocalVariable(name: "__ch", arg: 2, scope: !5040, file: !1604, line: 57, type: !54)
!5043 = !DILocalVariable(name: "__len", arg: 3, scope: !5040, file: !1604, line: 57, type: !56)
!5044 = !DILocation(line: 0, scope: !5040, inlinedAt: !5045)
!5045 = distinct !DILocation(line: 1137, column: 3, scope: !5033, inlinedAt: !5038)
!5046 = !DILocation(line: 59, column: 10, scope: !5040, inlinedAt: !5045)
!5047 = !DILocation(line: 137, column: 5, scope: !5028)
!5048 = !DILocation(line: 138, column: 11, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5009, file: !429, line: 138, column: 7)
!5050 = !DILocation(line: 138, column: 7, scope: !5009)
!5051 = !DILocation(line: 139, column: 5, scope: !5049)
!5052 = !DILocation(line: 143, column: 26, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5009, file: !429, line: 143, column: 7)
!5054 = !DILocation(line: 143, column: 41, scope: !5053)
!5055 = !DILocation(line: 143, column: 7, scope: !5009)
!5056 = !DILocation(line: 145, column: 15, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !429, line: 145, column: 11)
!5058 = distinct !DILexicalBlock(scope: !5053, file: !429, line: 144, column: 5)
!5059 = !DILocation(line: 145, column: 11, scope: !5058)
!5060 = !DILocation(line: 146, column: 32, scope: !5057)
!5061 = !DILocation(line: 146, column: 16, scope: !5057)
!5062 = !DILocation(line: 146, column: 14, scope: !5057)
!5063 = !DILocation(line: 146, column: 9, scope: !5057)
!5064 = !DILocation(line: 286, column: 1, scope: !5009)
!5065 = !DISubprogram(name: "mbsinit", scope: !5066, file: !5066, line: 293, type: !5067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !557)
!5066 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!54, !5069}
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!5071 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !515, file: !515, line: 27, type: !4148, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !5072)
!5072 = !{!5073, !5074, !5075, !5076}
!5073 = !DILocalVariable(name: "ptr", arg: 1, scope: !5071, file: !515, line: 27, type: !53)
!5074 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5071, file: !515, line: 27, type: !56)
!5075 = !DILocalVariable(name: "size", arg: 3, scope: !5071, file: !515, line: 27, type: !56)
!5076 = !DILocalVariable(name: "nbytes", scope: !5071, file: !515, line: 29, type: !56)
!5077 = !DILocation(line: 0, scope: !5071)
!5078 = !DILocation(line: 30, column: 7, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5071, file: !515, line: 30, column: 7)
!5080 = !DILocalVariable(name: "ptr", arg: 1, scope: !5081, file: !2472, line: 2057, type: !53)
!5081 = distinct !DISubprogram(name: "rpl_realloc", scope: !2472, file: !2472, line: 2057, type: !2473, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !5082)
!5082 = !{!5080, !5083}
!5083 = !DILocalVariable(name: "size", arg: 2, scope: !5081, file: !2472, line: 2057, type: !56)
!5084 = !DILocation(line: 0, scope: !5081, inlinedAt: !5085)
!5085 = distinct !DILocation(line: 37, column: 10, scope: !5071)
!5086 = !DILocation(line: 2059, column: 24, scope: !5081, inlinedAt: !5085)
!5087 = !DILocation(line: 2059, column: 10, scope: !5081, inlinedAt: !5085)
!5088 = !DILocation(line: 37, column: 3, scope: !5071)
!5089 = !DILocation(line: 32, column: 7, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5079, file: !515, line: 31, column: 5)
!5091 = !DILocation(line: 32, column: 13, scope: !5090)
!5092 = !DILocation(line: 33, column: 7, scope: !5090)
!5093 = !DILocation(line: 38, column: 1, scope: !5071)
!5094 = distinct !DISubprogram(name: "freadahead", scope: !518, file: !518, line: 34, type: !5095, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !5131)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!56, !5097}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !5099)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !5100)
!5100 = !{!5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5099, file: !111, line: 51, baseType: !54, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5099, file: !111, line: 54, baseType: !51, size: 64, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5099, file: !111, line: 55, baseType: !51, size: 64, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5099, file: !111, line: 56, baseType: !51, size: 64, offset: 192)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5099, file: !111, line: 57, baseType: !51, size: 64, offset: 256)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5099, file: !111, line: 58, baseType: !51, size: 64, offset: 320)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5099, file: !111, line: 59, baseType: !51, size: 64, offset: 384)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5099, file: !111, line: 60, baseType: !51, size: 64, offset: 448)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5099, file: !111, line: 61, baseType: !51, size: 64, offset: 512)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5099, file: !111, line: 64, baseType: !51, size: 64, offset: 576)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5099, file: !111, line: 65, baseType: !51, size: 64, offset: 640)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5099, file: !111, line: 66, baseType: !51, size: 64, offset: 704)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5099, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5099, file: !111, line: 70, baseType: !5115, size: 64, offset: 832)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5099, file: !111, line: 72, baseType: !54, size: 32, offset: 896)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5099, file: !111, line: 73, baseType: !54, size: 32, offset: 928)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5099, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5099, file: !111, line: 77, baseType: !55, size: 16, offset: 1024)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5099, file: !111, line: 78, baseType: !138, size: 8, offset: 1040)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5099, file: !111, line: 79, baseType: !77, size: 8, offset: 1048)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5099, file: !111, line: 81, baseType: !141, size: 64, offset: 1088)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5099, file: !111, line: 89, baseType: !144, size: 64, offset: 1152)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5099, file: !111, line: 91, baseType: !146, size: 64, offset: 1216)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5099, file: !111, line: 92, baseType: !149, size: 64, offset: 1280)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5099, file: !111, line: 93, baseType: !5115, size: 64, offset: 1344)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5099, file: !111, line: 94, baseType: !53, size: 64, offset: 1408)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5099, file: !111, line: 95, baseType: !56, size: 64, offset: 1472)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5099, file: !111, line: 96, baseType: !54, size: 32, offset: 1536)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5099, file: !111, line: 98, baseType: !156, size: 160, offset: 1568)
!5131 = !{!5132}
!5132 = !DILocalVariable(name: "fp", arg: 1, scope: !5094, file: !518, line: 34, type: !5097)
!5133 = !DILocation(line: 0, scope: !5094)
!5134 = !DILocation(line: 38, column: 11, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5094, file: !518, line: 38, column: 7)
!5136 = !DILocation(line: 38, column: 31, scope: !5135)
!5137 = !DILocation(line: 38, column: 25, scope: !5135)
!5138 = !DILocation(line: 38, column: 7, scope: !5094)
!5139 = !DILocation(line: 40, column: 15, scope: !5094)
!5140 = !DILocation(line: 40, column: 34, scope: !5094)
!5141 = !DILocation(line: 40, column: 28, scope: !5094)
!5142 = !DILocation(line: 41, column: 17, scope: !5094)
!5143 = !DILocation(line: 41, column: 24, scope: !5094)
!5144 = !DILocation(line: 41, column: 13, scope: !5094)
!5145 = !DILocation(line: 41, column: 46, scope: !5094)
!5146 = !{!947, !549, i64 88}
!5147 = !DILocation(line: 41, column: 65, scope: !5094)
!5148 = !DILocation(line: 41, column: 59, scope: !5094)
!5149 = !DILocation(line: 41, column: 10, scope: !5094)
!5150 = !DILocation(line: 40, column: 3, scope: !5094)
!5151 = !DILocation(line: 103, column: 1, scope: !5094)
!5152 = distinct !DISubprogram(name: "hard_locale", scope: !520, file: !520, line: 28, type: !1540, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !5153)
!5153 = !{!5154, !5155}
!5154 = !DILocalVariable(name: "category", arg: 1, scope: !5152, file: !520, line: 28, type: !54)
!5155 = !DILocalVariable(name: "locale", scope: !5152, file: !520, line: 30, type: !5156)
!5156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2056, elements: !5157)
!5157 = !{!5158}
!5158 = !DISubrange(count: 257)
!5159 = !DILocation(line: 0, scope: !5152)
!5160 = !DILocation(line: 30, column: 3, scope: !5152)
!5161 = !DILocation(line: 30, column: 8, scope: !5152)
!5162 = !DILocation(line: 32, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5152, file: !520, line: 32, column: 7)
!5164 = !DILocation(line: 32, column: 7, scope: !5152)
!5165 = !DILocalVariable(name: "__s1", arg: 1, scope: !5166, file: !602, line: 1359, type: !59)
!5166 = distinct !DISubprogram(name: "streq", scope: !602, file: !602, line: 1359, type: !603, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !5167)
!5167 = !{!5165, !5168}
!5168 = !DILocalVariable(name: "__s2", arg: 2, scope: !5166, file: !602, line: 1359, type: !59)
!5169 = !DILocation(line: 0, scope: !5166, inlinedAt: !5170)
!5170 = distinct !DILocation(line: 35, column: 9, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5152, file: !520, line: 35, column: 7)
!5172 = !DILocation(line: 1361, column: 11, scope: !5166, inlinedAt: !5170)
!5173 = !DILocation(line: 1361, column: 10, scope: !5166, inlinedAt: !5170)
!5174 = !DILocation(line: 35, column: 29, scope: !5171)
!5175 = !DILocation(line: 0, scope: !5166, inlinedAt: !5176)
!5176 = distinct !DILocation(line: 35, column: 32, scope: !5171)
!5177 = !DILocation(line: 1361, column: 11, scope: !5166, inlinedAt: !5176)
!5178 = !DILocation(line: 1361, column: 10, scope: !5166, inlinedAt: !5176)
!5179 = !DILocation(line: 35, column: 7, scope: !5152)
!5180 = !DILocation(line: 46, column: 3, scope: !5152)
!5181 = !DILocation(line: 47, column: 1, scope: !5152)
!5182 = distinct !DISubprogram(name: "setlocale_null_r", scope: !522, file: !522, line: 154, type: !5183, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !5185)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!54, !54, !51, !56}
!5185 = !{!5186, !5187, !5188}
!5186 = !DILocalVariable(name: "category", arg: 1, scope: !5182, file: !522, line: 154, type: !54)
!5187 = !DILocalVariable(name: "buf", arg: 2, scope: !5182, file: !522, line: 154, type: !51)
!5188 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5182, file: !522, line: 154, type: !56)
!5189 = !DILocation(line: 0, scope: !5182)
!5190 = !DILocation(line: 159, column: 10, scope: !5182)
!5191 = !DILocation(line: 159, column: 3, scope: !5182)
!5192 = distinct !DISubprogram(name: "setlocale_null", scope: !522, file: !522, line: 186, type: !5193, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !5195)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!59, !54}
!5195 = !{!5196}
!5196 = !DILocalVariable(name: "category", arg: 1, scope: !5192, file: !522, line: 186, type: !54)
!5197 = !DILocation(line: 0, scope: !5192)
!5198 = !DILocation(line: 189, column: 10, scope: !5192)
!5199 = !DILocation(line: 189, column: 3, scope: !5192)
!5200 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !524, file: !524, line: 35, type: !5193, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !5201)
!5201 = !{!5202, !5203}
!5202 = !DILocalVariable(name: "category", arg: 1, scope: !5200, file: !524, line: 35, type: !54)
!5203 = !DILocalVariable(name: "result", scope: !5200, file: !524, line: 37, type: !59)
!5204 = !DILocation(line: 0, scope: !5200)
!5205 = !DILocation(line: 37, column: 24, scope: !5200)
!5206 = !DILocation(line: 62, column: 3, scope: !5200)
!5207 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !524, file: !524, line: 66, type: !5183, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !5208)
!5208 = !{!5209, !5210, !5211, !5212, !5213}
!5209 = !DILocalVariable(name: "category", arg: 1, scope: !5207, file: !524, line: 66, type: !54)
!5210 = !DILocalVariable(name: "buf", arg: 2, scope: !5207, file: !524, line: 66, type: !51)
!5211 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5207, file: !524, line: 66, type: !56)
!5212 = !DILocalVariable(name: "result", scope: !5207, file: !524, line: 111, type: !59)
!5213 = !DILocalVariable(name: "length", scope: !5214, file: !524, line: 125, type: !56)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !524, line: 124, column: 5)
!5215 = distinct !DILexicalBlock(scope: !5207, file: !524, line: 113, column: 7)
!5216 = !DILocation(line: 0, scope: !5207)
!5217 = !DILocation(line: 0, scope: !5200, inlinedAt: !5218)
!5218 = distinct !DILocation(line: 111, column: 24, scope: !5207)
!5219 = !DILocation(line: 37, column: 24, scope: !5200, inlinedAt: !5218)
!5220 = !DILocation(line: 113, column: 14, scope: !5215)
!5221 = !DILocation(line: 113, column: 7, scope: !5207)
!5222 = !DILocation(line: 116, column: 19, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !524, line: 116, column: 11)
!5224 = distinct !DILexicalBlock(scope: !5215, file: !524, line: 114, column: 5)
!5225 = !DILocation(line: 116, column: 11, scope: !5224)
!5226 = !DILocation(line: 120, column: 16, scope: !5223)
!5227 = !DILocation(line: 120, column: 9, scope: !5223)
!5228 = !DILocation(line: 125, column: 23, scope: !5214)
!5229 = !DILocation(line: 0, scope: !5214)
!5230 = !DILocation(line: 126, column: 18, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5214, file: !524, line: 126, column: 11)
!5232 = !DILocation(line: 126, column: 11, scope: !5214)
!5233 = !DILocation(line: 128, column: 39, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5231, file: !524, line: 127, column: 9)
!5235 = !DILocalVariable(name: "__dest", arg: 1, scope: !5236, file: !1604, line: 26, type: !2499)
!5236 = distinct !DISubprogram(name: "memcpy", scope: !1604, file: !1604, line: 26, type: !2497, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !5237)
!5237 = !{!5235, !5238, !5239}
!5238 = !DILocalVariable(name: "__src", arg: 2, scope: !5236, file: !1604, line: 26, type: !768)
!5239 = !DILocalVariable(name: "__len", arg: 3, scope: !5236, file: !1604, line: 26, type: !56)
!5240 = !DILocation(line: 0, scope: !5236, inlinedAt: !5241)
!5241 = distinct !DILocation(line: 128, column: 11, scope: !5234)
!5242 = !DILocation(line: 29, column: 10, scope: !5236, inlinedAt: !5241)
!5243 = !DILocation(line: 129, column: 11, scope: !5234)
!5244 = !DILocation(line: 133, column: 23, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5246, file: !524, line: 133, column: 15)
!5246 = distinct !DILexicalBlock(scope: !5231, file: !524, line: 132, column: 9)
!5247 = !DILocation(line: 133, column: 15, scope: !5246)
!5248 = !DILocation(line: 138, column: 44, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5245, file: !524, line: 134, column: 13)
!5250 = !DILocation(line: 0, scope: !5236, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 138, column: 15, scope: !5249)
!5252 = !DILocation(line: 29, column: 10, scope: !5236, inlinedAt: !5251)
!5253 = !DILocation(line: 139, column: 15, scope: !5249)
!5254 = !DILocation(line: 139, column: 32, scope: !5249)
!5255 = !DILocation(line: 140, column: 13, scope: !5249)
!5256 = !DILocation(line: 0, scope: !5215)
!5257 = !DILocation(line: 145, column: 1, scope: !5207)
