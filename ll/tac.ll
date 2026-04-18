; ModuleID = 'src/tac.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.infomap = type { i8*, i8* }
%struct.re_registers = type { i32, i32*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Write each FILE to standard output, last line first.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tac\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"  -b, --before             attach the separator before instead of after\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"  -r, --regex              interpret the separator as a regular expression\0A\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"  -s, --separator=STRING   use STRING as the separator instead of newline\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"\0ANon-seekable input is buffered to $TMPDIR, defaulting to /tmp.\0A\00", align 1
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null], align 8, !dbg !0
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"brs:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !178
@separator_ends_record = internal unnamed_addr global i1 false, align 1, !dbg !244
@sentinel_length = internal unnamed_addr global i64 1, align 8, !dbg !194
@optarg = external local_unnamed_addr global i8*, align 8
@separator = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), align 8, !dbg !196
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Jay Lepreau\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"separator cannot be empty\00", align 1
@compiled_separator = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !62
@compiled_separator_fastmap = internal global [256 x i8] zeroinitializer, align 1, !dbg !86
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@match_length = internal unnamed_addr global i64 0, align 8, !dbg !54
@read_size = internal unnamed_addr global i64 0, align 8, !dbg !58
@G_buffer_size = internal unnamed_addr global i64 0, align 8, !dbg !60
@G_buffer = internal unnamed_addr global i8* null, align 8, !dbg !56
@optind = external local_unnamed_addr global i32, align 4
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !245
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !91
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"failed to open %s for reading\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"%s: write error\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"%s: seek failed\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"record too large\00", align 1
@regs = internal global %struct.re_registers zeroinitializer, align 8, !dbg !198
@.str.69 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@output.buffer = internal global [8192 x i8] zeroinitializer, align 1, !dbg !208
@output.bytes_in_buffer = internal unnamed_addr global i64 0, align 8, !dbg !226
@.str.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@temp_stream.tempfile = internal unnamed_addr global i8* null, align 8, !dbg !246
@temp_stream.tmp_fp = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !291
@.str.27 = private unnamed_addr constant [35 x i8] c"failed to make temporary file name\00", align 1
@.str.1.3 = private unnamed_addr constant [6 x i8] c"cutmp\00", align 1
@.str.2.28 = private unnamed_addr constant [35 x i8] c"failed to create temporary file %s\00", align 1
@.str.3.29 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.4.30 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1
@.str.5.31 = private unnamed_addr constant [31 x i8] c"failed to rewind stream for %s\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !304
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !309
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !314
@.str.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.72 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.73 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.74 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !316
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.75 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !352
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !322
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !348
@.str.1.81 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.83 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.82 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !350
@.str.4.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.77 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.78 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !357
@.str.98 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.99 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !363
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
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.104, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.105, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.106, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.109, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.111, i32 0, i32 0), i8* null], align 8, !dbg !397
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !409
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !427
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !454
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !461
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !429
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !463
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !415
@.str.10.114 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.112 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !431
@.str.128 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.129 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.2.130 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.3.131 = private unnamed_addr constant [12 x i8] c"/%.*sXXXXXX\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.135 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.137 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.138 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.139 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.140 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.141 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.142 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.143 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.144 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.145 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.146 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.147 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.148 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.149 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.150 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.155 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.156 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.157 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.158 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.159 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.160 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.161 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !468
@exit_failure = dso_local global i32 1, align 4, !dbg !476
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.176 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.191 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !482
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !498
@.str.200 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.201 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !614 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !618, metadata !DIExpression()), !dbg !619
  %3 = icmp eq i32 %0, 0, !dbg !620
  br i1 %3, label %9, label %4, !dbg !622

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !623, !tbaa !625
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !623
  %7 = load i8*, i8** @program_name, align 8, !dbg !623, !tbaa !625
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !623
  br label %64, !dbg !623

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !629
  %11 = load i8*, i8** @program_name, align 8, !dbg !629, !tbaa !625
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !629
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !631
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !625
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !631
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #35, !dbg !632
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !625
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #35, !dbg !632
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !636
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !625
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #35, !dbg !636
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !639
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !639
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !640
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !640
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !641
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !641
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !642
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !642
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !643
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !643
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !644
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !625
  %29 = tail call i32 @fputs_unlocked(i8* noundef %27, %struct._IO_FILE* noundef %28), !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !645, metadata !DIExpression()) #35, !dbg !664
  %30 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !666
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %30) #35, !dbg !666
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !650, metadata !DIExpression()) #35, !dbg !667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %30, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !667
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !659, metadata !DIExpression()) #35, !dbg !664
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !660, metadata !DIExpression()) #35, !dbg !664
  %31 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !668
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !660, metadata !DIExpression()) #35, !dbg !664
  br label %32, !dbg !669

32:                                               ; preds = %37, %9
  %33 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), %9 ]
  %34 = phi %struct.infomap* [ %38, %37 ], [ %31, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !660, metadata !DIExpression()) #35, !dbg !664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !677
  call void @llvm.dbg.value(metadata i8* %33, metadata !676, metadata !DIExpression()) #35, !dbg !677
  %35 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %33) #36, !dbg !679
  %36 = icmp eq i32 %35, 0, !dbg !680
  br i1 %36, label %42, label %37, !dbg !669

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 1, !dbg !681
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !660, metadata !DIExpression()) #35, !dbg !664
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 0, !dbg !682
  %40 = load i8*, i8** %39, align 8, !dbg !682, !tbaa !683
  %41 = icmp eq i8* %40, null, !dbg !685
  br i1 %41, label %42, label %32, !dbg !686, !llvm.loop !687

42:                                               ; preds = %37, %32
  %43 = phi %struct.infomap* [ %34, %32 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 0, i32 1, !dbg !689
  %45 = load i8*, i8** %44, align 8, !dbg !689, !tbaa !691
  %46 = icmp eq i8* %45, null, !dbg !692
  %47 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %45, !dbg !693
  call void @llvm.dbg.value(metadata i8* %47, metadata !659, metadata !DIExpression()) #35, !dbg !664
  tail call void @emit_bug_reporting_address() #35, !dbg !694
  %48 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !695
  call void @llvm.dbg.value(metadata i8* %48, metadata !662, metadata !DIExpression()) #35, !dbg !664
  %49 = icmp eq i8* %48, null, !dbg !696
  br i1 %49, label %57, label %50, !dbg !698

50:                                               ; preds = %42
  %51 = tail call i32 @strncmp(i8* noundef nonnull %48, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 noundef 3) #36, !dbg !699
  %52 = icmp eq i32 %51, 0, !dbg !699
  br i1 %52, label %57, label %53, !dbg !700

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0), i32 noundef 5) #35, !dbg !701
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !625
  %56 = tail call i32 @fputs_unlocked(i8* noundef %54, %struct._IO_FILE* noundef %55) #35, !dbg !701
  br label %57, !dbg !703

57:                                               ; preds = %42, %50, %53
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !704
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !676, metadata !DIExpression()) #35, !dbg !704
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !663, metadata !DIExpression()) #35, !dbg !664
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #35, !dbg !706
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %58, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !706
  %60 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #35, !dbg !707
  %61 = icmp eq i8* %47, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !707
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !707
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %60, i8* noundef %47, i8* noundef %62) #35, !dbg !707
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %30) #35, !dbg !708
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !709
  unreachable, !dbg !709
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !710 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !714 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !93 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !98, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8* %0, metadata !99, metadata !DIExpression()), !dbg !719
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !720, !tbaa !721
  %3 = icmp eq i32 %2, -1, !dbg !723
  br i1 %3, label %4, label %16, !dbg !724

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #35, !dbg !725
  call void @llvm.dbg.value(metadata i8* %5, metadata !100, metadata !DIExpression()), !dbg !726
  %6 = icmp eq i8* %5, null, !dbg !727
  br i1 %6, label %14, label %7, !dbg !728

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !729, !tbaa !730
  %9 = icmp eq i8 %8, 0, !dbg !729
  br i1 %9, label %14, label %10, !dbg !731

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !670, metadata !DIExpression()) #35, !dbg !732
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), metadata !676, metadata !DIExpression()) #35, !dbg !732
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #36, !dbg !734
  %12 = icmp eq i32 %11, 0, !dbg !735
  %13 = zext i1 %12 to i32, !dbg !731
  br label %14, !dbg !731

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !736, !tbaa !721
  br label %16, !dbg !737

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !738
  %18 = icmp eq i32 %17, 0, !dbg !738
  br i1 %18, label %22, label %19, !dbg !740

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !625
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !741
  br label %121, !dbg !743

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !103, metadata !DIExpression()), !dbg !719
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #36, !dbg !744
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !745
  call void @llvm.dbg.value(metadata i8* %24, metadata !105, metadata !DIExpression()), !dbg !719
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !746
  call void @llvm.dbg.value(metadata i8* %25, metadata !106, metadata !DIExpression()), !dbg !719
  %26 = icmp eq i8* %25, null, !dbg !747
  br i1 %26, label %53, label %27, !dbg !748

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !749
  br i1 %28, label %53, label %29, !dbg !750

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !107, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 0, metadata !111, metadata !DIExpression()), !dbg !751
  %30 = icmp ult i8* %24, %25, !dbg !752
  br i1 %30, label %31, label %53, !dbg !753

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !719
  %33 = load i16*, i16** %32, align 8, !tbaa !625
  br label %34, !dbg !753

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !107, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 %36, metadata !111, metadata !DIExpression()), !dbg !751
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !754
  call void @llvm.dbg.value(metadata i8* %37, metadata !107, metadata !DIExpression()), !dbg !751
  %38 = load i8, i8* %35, align 1, !dbg !754, !tbaa !730
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !754
  %41 = load i16, i16* %40, align 2, !dbg !754, !tbaa !755
  %42 = lshr i16 %41, 13, !dbg !757
  %43 = and i16 %42, 1, !dbg !757
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !758
  call void @llvm.dbg.value(metadata i64 %45, metadata !111, metadata !DIExpression()), !dbg !751
  %46 = icmp ult i8* %37, %25, !dbg !752
  %47 = icmp ult i64 %45, 2, !dbg !759
  %48 = select i1 %46, i1 %47, i1 false, !dbg !759
  br i1 %48, label %34, label %49, !dbg !753, !llvm.loop !760

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !761
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !763
  %52 = xor i1 %50, true, !dbg !763
  br label %53, !dbg !763

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !719
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !103, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8* %54, metadata !106, metadata !DIExpression()), !dbg !719
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #36, !dbg !764
  call void @llvm.dbg.value(metadata i64 %56, metadata !112, metadata !DIExpression()), !dbg !719
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !765
  call void @llvm.dbg.value(metadata i8* %57, metadata !113, metadata !DIExpression()), !dbg !719
  br label %58, !dbg !766

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !719
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !103, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8* %59, metadata !113, metadata !DIExpression()), !dbg !719
  %61 = load i8, i8* %59, align 1, !dbg !767, !tbaa !730
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !768

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !769
  %64 = load i8, i8* %63, align 1, !dbg !772, !tbaa !730
  %65 = icmp ne i8 %64, 45, !dbg !773
  %66 = select i1 %65, i1 %60, i1 false, !dbg !774
  br label %67, !dbg !774

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !103, metadata !DIExpression()), !dbg !719
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !775
  %70 = load i16*, i16** %69, align 8, !dbg !775, !tbaa !625
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !775
  %73 = load i16, i16* %72, align 2, !dbg !775, !tbaa !755
  %74 = and i16 %73, 8192, !dbg !775
  %75 = icmp eq i16 %74, 0, !dbg !775
  br i1 %75, label %89, label %76, !dbg !777

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !778
  br i1 %77, label %91, label %78, !dbg !781

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !782
  %80 = load i8, i8* %79, align 1, !dbg !782, !tbaa !730
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !782
  %83 = load i16, i16* %82, align 2, !dbg !782, !tbaa !755
  %84 = and i16 %83, 8192, !dbg !782
  %85 = icmp eq i16 %84, 0, !dbg !782
  br i1 %85, label %86, label %91, !dbg !783

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !784
  br i1 %88, label %89, label %91, !dbg !784

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !786
  call void @llvm.dbg.value(metadata i8* %90, metadata !113, metadata !DIExpression()), !dbg !719
  br label %58, !dbg !766, !llvm.loop !787

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !789
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !789, !tbaa !625
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !790
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !676, metadata !DIExpression()) #35, !dbg !790
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !792
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !794
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !796
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !798
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !800
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !802
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !804
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !806
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !670, metadata !DIExpression()) #35, !dbg !808
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !173, metadata !DIExpression()), !dbg !719
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i64 noundef 6) #36, !dbg !810
  %96 = icmp eq i32 %95, 0, !dbg !810
  br i1 %96, label %100, label %97, !dbg !812

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i64 noundef 9) #36, !dbg !813
  %99 = icmp eq i32 %98, 0, !dbg !813
  br i1 %99, label %100, label %103, !dbg !814

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !815
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !815
  br label %106, !dbg !817

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !818
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !818
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !820, !tbaa !625
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !820
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821, !tbaa !625
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !821
  %111 = ptrtoint i8* %59 to i64, !dbg !822
  %112 = sub i64 %111, %92, !dbg !822
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !822, !tbaa !625
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !822
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !823, !tbaa !625
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !823
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !824, !tbaa !625
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !824
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !825, !tbaa !625
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !825
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !826
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
declare !dbg !827 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !831 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !835 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !2 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !231, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8** %1, metadata !232, metadata !DIExpression()), !dbg !841
  %5 = load i8*, i8** %1, align 8, !dbg !842, !tbaa !625
  tail call void @set_program_name(i8* noundef %5) #35, !dbg !843
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #35, !dbg !844
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #35, !dbg !845
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #35, !dbg !846
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !847
  br label %10, !dbg !848

10:                                               ; preds = %16, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #35, !dbg !849
  call void @llvm.dbg.value(metadata i32 %11, metadata !234, metadata !DIExpression()), !dbg !841
  switch i32 %11, label %23 [
    i32 -1, label %24
    i32 98, label %12
    i32 114, label %13
    i32 115, label %14
    i32 -2, label %17
    i32 -3, label %18
  ], !dbg !848

12:                                               ; preds = %10
  store i1 true, i1* @separator_ends_record, align 1, !dbg !850
  br label %16, !dbg !853

13:                                               ; preds = %10
  store i64 0, i64* @sentinel_length, align 8, !dbg !854, !tbaa !855
  br label %16, !dbg !857

14:                                               ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !dbg !858, !tbaa !625
  store i8* %15, i8** @separator, align 8, !dbg !859, !tbaa !625
  br label %16, !dbg !860

16:                                               ; preds = %14, %13, %12
  br label %10, !dbg !849, !llvm.loop !861

17:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #39, !dbg !863
  unreachable, !dbg !863

18:                                               ; preds = %10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !864, !tbaa !625
  %20 = load i8*, i8** @Version, align 8, !dbg !864, !tbaa !625
  %21 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !864
  %22 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #35, !dbg !864
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef %20, i8* noundef %21, i8* noundef %22, i8* noundef null) #35, !dbg !864
  tail call void @exit(i32 noundef 0) #37, !dbg !864
  unreachable, !dbg !864

23:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #39, !dbg !865
  unreachable, !dbg !865

24:                                               ; preds = %10
  %25 = load i64, i64* @sentinel_length, align 8, !dbg !866, !tbaa !855
  %26 = icmp eq i64 %25, 0, !dbg !868
  %27 = load i8*, i8** @separator, align 8, !dbg !869, !tbaa !625
  %28 = load i8, i8* %27, align 1, !dbg !869, !tbaa !730
  %29 = icmp eq i8 %28, 0, !dbg !869
  br i1 %26, label %30, label %40, !dbg !870

30:                                               ; preds = %24
  br i1 %29, label %31, label %33, !dbg !871

31:                                               ; preds = %30
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #35, !dbg !873
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %32) #35, !dbg !873
  unreachable, !dbg !873

33:                                               ; preds = %30
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.re_pattern_buffer* @compiled_separator to i8*), i8 0, i64 16, i1 false), !dbg !875
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @compiled_separator_fastmap, i64 0, i64 0), i8** getelementptr inbounds (%struct.re_pattern_buffer, %struct.re_pattern_buffer* @compiled_separator, i64 0, i32 4), align 8, !dbg !876, !tbaa !877
  store i8* null, i8** getelementptr inbounds (%struct.re_pattern_buffer, %struct.re_pattern_buffer* @compiled_separator, i64 0, i32 5), align 8, !dbg !879, !tbaa !880
  %34 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %27) #36, !dbg !881
  %35 = tail call i8* @re_compile_pattern(i8* noundef nonnull %27, i64 noundef %34, %struct.re_pattern_buffer* noundef nonnull @compiled_separator) #35, !dbg !882
  call void @llvm.dbg.value(metadata i8* %35, metadata !233, metadata !DIExpression()), !dbg !841
  %36 = icmp eq i8* %35, null, !dbg !883
  br i1 %36, label %37, label %39, !dbg !885

37:                                               ; preds = %33
  %38 = load i64, i64* @sentinel_length, align 8, !tbaa !855
  br label %45, !dbg !885

39:                                               ; preds = %33
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %35) #35, !dbg !886
  unreachable, !dbg !886

40:                                               ; preds = %24
  br i1 %29, label %43, label %41, !dbg !887

41:                                               ; preds = %40
  %42 = tail call i64 @strlen(i8* noundef nonnull %27) #36, !dbg !888
  br label %43, !dbg !887

43:                                               ; preds = %40, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %40 ], !dbg !887
  store i64 %44, i64* @sentinel_length, align 8, !dbg !889, !tbaa !855
  store i64 %44, i64* @match_length, align 8, !dbg !890, !tbaa !855
  br label %45

45:                                               ; preds = %37, %43
  %46 = phi i64 [ %38, %37 ], [ %44, %43 ]
  %47 = icmp ult i64 %46, 4096, !dbg !891
  br i1 %47, label %55, label %48, !dbg !892

48:                                               ; preds = %45, %52
  %49 = phi i64 [ %53, %52 ], [ 8192, %45 ]
  %50 = icmp slt i64 %49, 0, !dbg !893
  br i1 %50, label %51, label %52, !dbg !896

51:                                               ; preds = %48
  store i64 %49, i64* @read_size, align 8, !dbg !841, !tbaa !855
  tail call void @xalloc_die() #37, !dbg !897
  unreachable, !dbg !897

52:                                               ; preds = %48
  %53 = shl nuw i64 %49, 1, !dbg !898
  %54 = icmp ult i64 %46, %49, !dbg !891
  br i1 %54, label %55, label %48, !dbg !892, !llvm.loop !899

55:                                               ; preds = %52, %45
  %56 = phi i64 [ 8192, %45 ], [ %53, %52 ]
  store i64 %56, i64* @read_size, align 8, !dbg !841, !tbaa !855
  %57 = or i64 %56, 1, !dbg !901
  %58 = add i64 %57, %46, !dbg !902
  call void @llvm.dbg.value(metadata i64 %58, metadata !236, metadata !DIExpression()), !dbg !841
  %59 = shl i64 %58, 1, !dbg !903
  store i64 %59, i64* @G_buffer_size, align 8, !dbg !904, !tbaa !855
  %60 = icmp ult i64 %56, %58, !dbg !905
  %61 = icmp ult i64 %58, %59
  %62 = and i1 %60, %61, !dbg !907
  br i1 %62, label %64, label %63, !dbg !907

63:                                               ; preds = %55
  tail call void @xalloc_die() #37, !dbg !908
  unreachable, !dbg !908

64:                                               ; preds = %55
  %65 = tail call noalias nonnull i8* @xmalloc(i64 noundef %59) #40, !dbg !909
  %66 = load i64, i64* @sentinel_length, align 8, !dbg !910, !tbaa !855
  %67 = icmp eq i64 %66, 0, !dbg !910
  br i1 %67, label %74, label %68, !dbg !912

68:                                               ; preds = %64
  %69 = load i8*, i8** @separator, align 8, !dbg !913, !tbaa !625
  %70 = load i8, i8* %69, align 1, !dbg !915, !tbaa !730
  %71 = icmp ne i8 %70, 0, !dbg !916
  %72 = zext i1 %71 to i64
  %73 = add i64 %66, %72, !dbg !917
  call void @llvm.dbg.value(metadata i8* %65, metadata !918, metadata !DIExpression()) #35, !dbg !927
  call void @llvm.dbg.value(metadata i8* %69, metadata !925, metadata !DIExpression()) #35, !dbg !927
  call void @llvm.dbg.value(metadata i64 %73, metadata !926, metadata !DIExpression()) #35, !dbg !927
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %65, i8* noundef nonnull align 1 %69, i64 noundef %73, i1 noundef false) #35, !dbg !929
  br label %74, !dbg !930

74:                                               ; preds = %64, %68
  %75 = phi i64 [ %66, %68 ], [ 1, %64 ]
  %76 = getelementptr inbounds i8, i8* %65, i64 %75, !dbg !931
  store i8* %76, i8** @G_buffer, align 8, !dbg !931, !tbaa !625
  %77 = load i32, i32* @optind, align 4, !dbg !932, !tbaa !721
  %78 = icmp slt i32 %77, %0, !dbg !933
  %79 = sext i32 %77 to i64, !dbg !932
  %80 = getelementptr inbounds i8*, i8** %1, i64 %79, !dbg !932
  %81 = select i1 %78, i8** %80, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !932
  call void @llvm.dbg.value(metadata i8** %81, metadata !237, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 0, metadata !238, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8 poison, metadata !235, metadata !DIExpression()), !dbg !841
  %82 = load i8*, i8** %81, align 8, !dbg !935, !tbaa !625
  %83 = icmp eq i8* %82, null, !dbg !937
  br i1 %83, label %87, label %84, !dbg !937

84:                                               ; preds = %74
  %85 = bitcast %struct._IO_FILE** %3 to i8*
  %86 = bitcast i8** %4 to i8*
  br label %90, !dbg !937

87:                                               ; preds = %178, %74
  %88 = phi i1 [ true, %74 ], [ %180, %178 ]
  call fastcc void @output(i8* noundef null, i8* noundef null), !dbg !938
  %89 = load i1, i1* @have_read_stdin, align 1, !dbg !939
  br i1 %89, label %185, label %191, !dbg !941

90:                                               ; preds = %84, %178
  %91 = phi i8* [ %82, %84 ], [ %183, %178 ]
  %92 = phi i64 [ 0, %84 ], [ %181, %178 ]
  %93 = phi i1 [ true, %84 ], [ %180, %178 ]
  call void @llvm.dbg.value(metadata i64 %92, metadata !238, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8* %91, metadata !942, metadata !DIExpression()) #35, !dbg !952
  call void @llvm.dbg.value(metadata i8* %91, metadata !670, metadata !DIExpression()) #35, !dbg !954
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), metadata !676, metadata !DIExpression()) #35, !dbg !954
  %94 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %91, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #36, !dbg !956
  %95 = icmp eq i32 %94, 0, !dbg !957
  call void @llvm.dbg.value(metadata i1 %95, metadata !951, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !952
  br i1 %95, label %96, label %98, !dbg !958

96:                                               ; preds = %90
  store i1 true, i1* @have_read_stdin, align 1, !dbg !959
  call void @llvm.dbg.value(metadata i32 0, metadata !950, metadata !DIExpression()) #35, !dbg !952
  %97 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i32 noundef 5) #35, !dbg !962
  call void @llvm.dbg.value(metadata i8* %97, metadata !942, metadata !DIExpression()) #35, !dbg !952
  br label %106, !dbg !963

98:                                               ; preds = %90
  %99 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %91, i32 noundef 0) #35, !dbg !964
  call void @llvm.dbg.value(metadata i32 %99, metadata !950, metadata !DIExpression()) #35, !dbg !952
  %100 = icmp slt i32 %99, 0, !dbg !966
  br i1 %100, label %101, label %106, !dbg !968

101:                                              ; preds = %98
  %102 = tail call i32* @__errno_location() #38, !dbg !969
  %103 = load i32, i32* %102, align 4, !dbg !969, !tbaa !721
  %104 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #35, !dbg !969
  %105 = call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %91) #35, !dbg !969
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %103, i8* noundef %104, i8* noundef %105) #35, !dbg !969
  br label %178, !dbg !971

106:                                              ; preds = %98, %96
  %107 = phi i8* [ %97, %96 ], [ %91, %98 ]
  %108 = phi i32 [ 0, %96 ], [ %99, %98 ], !dbg !972
  call void @llvm.dbg.value(metadata i32 %108, metadata !950, metadata !DIExpression()) #35, !dbg !952
  call void @llvm.dbg.value(metadata i8* %107, metadata !942, metadata !DIExpression()) #35, !dbg !952
  %109 = call i64 @lseek(i32 noundef %108, i64 noundef 0, i32 noundef 2) #35, !dbg !973
  call void @llvm.dbg.value(metadata i64 %109, metadata !948, metadata !DIExpression()) #35, !dbg !952
  %110 = icmp slt i64 %109, 0, !dbg !974
  br i1 %110, label %114, label %111, !dbg !975

111:                                              ; preds = %106
  %112 = call i32 @isatty(i32 noundef %108) #35, !dbg !976
  %113 = icmp eq i32 %112, 0, !dbg !976
  br i1 %113, label %166, label %114, !dbg !977

114:                                              ; preds = %111, %106
  call void @llvm.dbg.value(metadata i32 %108, metadata !978, metadata !DIExpression()) #35, !dbg !988
  call void @llvm.dbg.value(metadata i8* %107, metadata !983, metadata !DIExpression()) #35, !dbg !988
  call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, metadata !990, metadata !DIExpression()) #35, !dbg !1014
  call void @llvm.dbg.value(metadata i8** undef, metadata !996, metadata !DIExpression()) #35, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %108, metadata !997, metadata !DIExpression()) #35, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %107, metadata !998, metadata !DIExpression()) #35, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #35, !dbg !1016
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86) #35, !dbg !1017
  call void @llvm.dbg.value(metadata i64 0, metadata !1001, metadata !DIExpression()) #35, !dbg !1014
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %3, metadata !999, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1014
  call void @llvm.dbg.value(metadata i8** %4, metadata !1000, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1014
  %115 = call i1 @temp_stream(%struct._IO_FILE** noundef nonnull %3, i8** noundef nonnull %4) #35, !dbg !1018
  br i1 %115, label %116, label %158, !dbg !1020

116:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 0, metadata !1001, metadata !DIExpression()) #35, !dbg !1014
  %117 = load i8*, i8** @G_buffer, align 8, !dbg !1021, !tbaa !625
  %118 = load i64, i64* @read_size, align 8, !dbg !1022, !tbaa !855
  %119 = call i64 @read(i32 noundef %108, i8* noundef %117, i64 noundef %118) #35, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %119, metadata !1005, metadata !DIExpression()) #35, !dbg !1024
  %120 = icmp eq i64 %119, 0, !dbg !1025
  br i1 %120, label %147, label %126, !dbg !1027

121:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 %140, metadata !1001, metadata !DIExpression()) #35, !dbg !1014
  %122 = load i8*, i8** @G_buffer, align 8, !dbg !1021, !tbaa !625
  %123 = load i64, i64* @read_size, align 8, !dbg !1022, !tbaa !855
  %124 = call i64 @read(i32 noundef %108, i8* noundef %122, i64 noundef %123) #35, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %124, metadata !1005, metadata !DIExpression()) #35, !dbg !1024
  %125 = icmp eq i64 %124, 0, !dbg !1025
  br i1 %125, label %147, label %126, !dbg !1027

126:                                              ; preds = %116, %121
  %127 = phi i64 [ %124, %121 ], [ %119, %116 ]
  %128 = phi i64 [ %140, %121 ], [ 0, %116 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !1001, metadata !DIExpression()) #35, !dbg !1014
  %129 = icmp slt i64 %127, 0, !dbg !1028
  br i1 %129, label %130, label %135, !dbg !1030

130:                                              ; preds = %126
  %131 = tail call i32* @__errno_location() #38, !dbg !1031
  %132 = load i32, i32* %131, align 4, !dbg !1031, !tbaa !721
  %133 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #35, !dbg !1031
  %134 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %107) #35, !dbg !1031
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %132, i8* noundef %133, i8* noundef %134) #35, !dbg !1031
  br label %158, !dbg !1033

135:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !999, metadata !DIExpression()) #35, !dbg !1014
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1034, !tbaa !625
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %136, metadata !999, metadata !DIExpression()) #35, !dbg !1014
  %137 = load i8*, i8** @G_buffer, align 8, !dbg !1034, !tbaa !625
  %138 = call i64 @fwrite_unlocked(i8* noundef %137, i64 noundef 1, i64 noundef %127, %struct._IO_FILE* noundef %136) #35, !dbg !1035
  %139 = icmp eq i64 %138, %127, !dbg !1036
  %140 = add i64 %128, %127, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %140, metadata !1001, metadata !DIExpression()) #35, !dbg !1014
  br i1 %139, label %121, label %141, !dbg !1038

141:                                              ; preds = %135
  %142 = tail call i32* @__errno_location() #38, !dbg !1039
  %143 = load i32, i32* %142, align 4, !dbg !1039, !tbaa !721
  %144 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #35, !dbg !1039
  %145 = load i8*, i8** %4, align 8, !dbg !1039, !tbaa !625
  call void @llvm.dbg.value(metadata i8* %145, metadata !1000, metadata !DIExpression()) #35, !dbg !1014
  %146 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %145) #35, !dbg !1039
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %143, i8* noundef %144, i8* noundef %146) #35, !dbg !1039
  br label %158, !dbg !1041

147:                                              ; preds = %121, %116
  %148 = phi i64 [ 0, %116 ], [ %140, %121 ], !dbg !1042
  call void @llvm.dbg.value(metadata i64 %140, metadata !1001, metadata !DIExpression()) #35, !dbg !1014
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1043, !tbaa !625
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %149, metadata !999, metadata !DIExpression()) #35, !dbg !1014
  %150 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %149) #35, !dbg !1043
  %151 = icmp eq i32 %150, 0, !dbg !1045
  br i1 %151, label %159, label %152, !dbg !1046

152:                                              ; preds = %147
  %153 = tail call i32* @__errno_location() #38, !dbg !1047
  %154 = load i32, i32* %153, align 4, !dbg !1047, !tbaa !721
  %155 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #35, !dbg !1047
  %156 = load i8*, i8** %4, align 8, !dbg !1047, !tbaa !625
  call void @llvm.dbg.value(metadata i8* %156, metadata !1000, metadata !DIExpression()) #35, !dbg !1014
  %157 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %156) #35, !dbg !1047
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %154, i8* noundef %155, i8* noundef %157) #35, !dbg !1047
  br label %158, !dbg !1049

158:                                              ; preds = %152, %141, %130, %114
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86) #35, !dbg !1050
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #35, !dbg !1050
  br label %168, !dbg !1051

159:                                              ; preds = %147
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1052, !tbaa !625
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %160, metadata !999, metadata !DIExpression()) #35, !dbg !1014
  %161 = load i8*, i8** %4, align 8, !dbg !1053, !tbaa !625
  call void @llvm.dbg.value(metadata i8* %161, metadata !1000, metadata !DIExpression()) #35, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86) #35, !dbg !1050
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #35, !dbg !1050
  call void @llvm.dbg.value(metadata i64 %148, metadata !986, metadata !DIExpression()) #35, !dbg !988
  %162 = icmp slt i64 %148, 0, !dbg !1054
  br i1 %162, label %168, label %163, !dbg !1051

163:                                              ; preds = %159
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %160, metadata !984, metadata !DIExpression()) #35, !dbg !988
  %164 = call i32 @fileno_unlocked(%struct._IO_FILE* noundef %160) #35, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %161, metadata !985, metadata !DIExpression()) #35, !dbg !988
  %165 = call fastcc i1 @tac_seekable(i32 noundef %164, i8* noundef %161, i64 noundef %148) #35, !dbg !1057
  call void @llvm.dbg.value(metadata i1 %165, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !988
  br label %168

166:                                              ; preds = %111
  %167 = call fastcc i1 @tac_seekable(i32 noundef %108, i8* noundef %107, i64 noundef %109) #35, !dbg !1058
  br label %168, !dbg !977

168:                                              ; preds = %166, %163, %159, %158
  %169 = phi i1 [ %167, %166 ], [ %165, %163 ], [ false, %159 ], [ false, %158 ]
  call void @llvm.dbg.value(metadata i1 %169, metadata !947, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !952
  br i1 %95, label %178, label %170, !dbg !1059

170:                                              ; preds = %168
  %171 = call i32 @close(i32 noundef %108) #35, !dbg !1061
  %172 = icmp eq i32 %171, 0, !dbg !1062
  br i1 %172, label %178, label %173, !dbg !1063

173:                                              ; preds = %170
  %174 = tail call i32* @__errno_location() #38, !dbg !1064
  %175 = load i32, i32* %174, align 4, !dbg !1064, !tbaa !721
  %176 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #35, !dbg !1064
  %177 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %107) #35, !dbg !1064
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %175, i8* noundef %176, i8* noundef %177) #35, !dbg !1064
  call void @llvm.dbg.value(metadata i8 0, metadata !947, metadata !DIExpression()) #35, !dbg !952
  br label %178, !dbg !1066

178:                                              ; preds = %101, %168, %170, %173
  %179 = phi i1 [ false, %101 ], [ %169, %168 ], [ false, %173 ], [ %169, %170 ], !dbg !952
  %180 = and i1 %93, %179, !dbg !1067
  call void @llvm.dbg.value(metadata i1 %180, metadata !235, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !841
  %181 = add i64 %92, 1, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %181, metadata !238, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8 poison, metadata !235, metadata !DIExpression()), !dbg !841
  %182 = getelementptr inbounds i8*, i8** %81, i64 %181, !dbg !935
  %183 = load i8*, i8** %182, align 8, !dbg !935, !tbaa !625
  %184 = icmp eq i8* %183, null, !dbg !937
  br i1 %184, label %87, label %90, !dbg !937, !llvm.loop !1069

185:                                              ; preds = %87
  %186 = call i32 @close(i32 noundef 0) #35, !dbg !1071
  %187 = icmp slt i32 %186, 0, !dbg !1072
  br i1 %187, label %188, label %191, !dbg !1073

188:                                              ; preds = %185
  %189 = tail call i32* @__errno_location() #38, !dbg !1074
  %190 = load i32, i32* %189, align 4, !dbg !1074, !tbaa !721
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %190, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #35, !dbg !1074
  call void @llvm.dbg.value(metadata i8 0, metadata !235, metadata !DIExpression()), !dbg !841
  br label %191, !dbg !1076

191:                                              ; preds = %188, %185, %87
  %192 = phi i1 [ false, %188 ], [ %88, %185 ], [ %88, %87 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !235, metadata !DIExpression()), !dbg !841
  %193 = xor i1 %192, true, !dbg !1077
  %194 = zext i1 %193 to i32, !dbg !1077
  ret i32 %194, !dbg !1078
}

; Function Attrs: nounwind
declare !dbg !1079 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1082 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1083 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1086 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

declare !dbg !1092 i8* @re_compile_pattern(i8* noundef, i64 noundef, %struct.re_pattern_buffer* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @output(i8* noundef %0, i8* noundef %1) unnamed_addr #12 !dbg !210 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !212, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %1, metadata !213, metadata !DIExpression()), !dbg !1096
  %3 = ptrtoint i8* %1 to i64, !dbg !1097
  %4 = ptrtoint i8* %0 to i64, !dbg !1097
  %5 = sub i64 %3, %4, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %5, metadata !214, metadata !DIExpression()), !dbg !1096
  %6 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1098, !tbaa !855
  %7 = sub i64 8192, %6, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %7, metadata !215, metadata !DIExpression()), !dbg !1096
  %8 = icmp eq i8* %0, null, !dbg !1100
  br i1 %8, label %20, label %9, !dbg !1101

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !212, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %5, metadata !214, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %7, metadata !215, metadata !DIExpression()), !dbg !1096
  %10 = icmp ult i64 %5, %7, !dbg !1102
  br i1 %10, label %53, label %11, !dbg !1103

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %0, metadata !212, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %5, metadata !214, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %7, metadata !215, metadata !DIExpression()), !dbg !1096
  %12 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %6, !dbg !1104
  call void @llvm.dbg.value(metadata i8* %12, metadata !918, metadata !DIExpression()) #35, !dbg !1106
  call void @llvm.dbg.value(metadata i8* %0, metadata !925, metadata !DIExpression()) #35, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %7, metadata !926, metadata !DIExpression()) #35, !dbg !1106
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %12, i8* noundef nonnull align 1 %0, i64 noundef %7, i1 noundef false) #35, !dbg !1108
  call void @llvm.dbg.value(metadata !DIArgList(i64 %5, i64 %7), metadata !214, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1096
  call void @llvm.dbg.value(metadata !DIArgList(i8* %0, i64 %7), metadata !212, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1096
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1109, !tbaa !625
  %14 = tail call i64 @fwrite_unlocked(i8* noundef getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef %13), !dbg !1109
  %15 = icmp eq i64 %14, 8192, !dbg !1111
  br i1 %15, label %16, label %40, !dbg !1112

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %17, metadata !212, metadata !DIExpression()), !dbg !1096
  %18 = sub i64 %5, %7, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()), !dbg !1096
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1115, !tbaa !855
  call void @llvm.dbg.value(metadata i64 8192, metadata !215, metadata !DIExpression()), !dbg !1096
  %19 = icmp ult i64 %18, 8192, !dbg !1102
  br i1 %19, label %53, label %34, !dbg !1103

20:                                               ; preds = %2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1116, !tbaa !625
  %22 = tail call i64 @fwrite_unlocked(i8* noundef getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 noundef 1, i64 noundef %6, %struct._IO_FILE* noundef %21), !dbg !1116
  %23 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1117, !tbaa !855
  %24 = icmp eq i64 %22, %23, !dbg !1118
  br i1 %24, label %59, label %25, !dbg !1119

25:                                               ; preds = %20
  %26 = tail call i32* @__errno_location() #38, !dbg !1120
  %27 = load i32, i32* %26, align 4, !dbg !1120, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %27, metadata !1123, metadata !DIExpression()) #35, !dbg !1125
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1126, !tbaa !625
  %29 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %28) #35, !dbg !1126
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1127, !tbaa !625
  %31 = tail call i32 @fpurge(%struct._IO_FILE* noundef %30) #35, !dbg !1128
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1129, !tbaa !625
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %32) #35, !dbg !1129
  %33 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i32 noundef 5) #35, !dbg !1130
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %27, i8* noundef %33) #35, !dbg !1130
  unreachable, !dbg !1130

34:                                               ; preds = %16, %49
  %35 = phi i8* [ %50, %49 ], [ %17, %16 ]
  %36 = phi i64 [ %51, %49 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !212, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %36, metadata !214, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 8192, metadata !215, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), metadata !918, metadata !DIExpression()) #35, !dbg !1106
  call void @llvm.dbg.value(metadata i8* %35, metadata !925, metadata !DIExpression()) #35, !dbg !1106
  call void @llvm.dbg.value(metadata i64 8192, metadata !926, metadata !DIExpression()) #35, !dbg !1106
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(8192) getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(8192) %35, i64 noundef 8192, i1 noundef false) #35, !dbg !1108
  call void @llvm.dbg.value(metadata !DIArgList(i64 %36, i64 8192), metadata !214, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1096
  call void @llvm.dbg.value(metadata !DIArgList(i8* %35, i64 8192), metadata !212, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1096
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1109, !tbaa !625
  %38 = tail call i64 @fwrite_unlocked(i8* noundef getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 noundef 1, i64 noundef 8192, %struct._IO_FILE* noundef %37), !dbg !1109
  %39 = icmp eq i64 %38, 8192, !dbg !1111
  br i1 %39, label %49, label %40, !dbg !1112

40:                                               ; preds = %34, %11
  %41 = tail call i32* @__errno_location() #38, !dbg !1131
  %42 = load i32, i32* %41, align 4, !dbg !1131, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %42, metadata !1123, metadata !DIExpression()) #35, !dbg !1133
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1134, !tbaa !625
  %44 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %43) #35, !dbg !1134
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1135, !tbaa !625
  %46 = tail call i32 @fpurge(%struct._IO_FILE* noundef %45) #35, !dbg !1136
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !625
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %47) #35, !dbg !1137
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i32 noundef 5) #35, !dbg !1138
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %42, i8* noundef %48) #35, !dbg !1138
  unreachable, !dbg !1138

49:                                               ; preds = %34
  %50 = getelementptr inbounds i8, i8* %35, i64 8192, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %50, metadata !212, metadata !DIExpression()), !dbg !1096
  %51 = add i64 %36, -8192, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %51, metadata !214, metadata !DIExpression()), !dbg !1096
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1115, !tbaa !855
  call void @llvm.dbg.value(metadata i64 8192, metadata !215, metadata !DIExpression()), !dbg !1096
  %52 = icmp ult i64 %51, 8192, !dbg !1102
  br i1 %52, label %53, label %34, !dbg !1103, !llvm.loop !1139

53:                                               ; preds = %49, %16, %9
  %54 = phi i64 [ %6, %9 ], [ 0, %16 ], [ 0, %49 ], !dbg !1142
  %55 = phi i64 [ %5, %9 ], [ %18, %16 ], [ %51, %49 ], !dbg !1096
  %56 = phi i8* [ %0, %9 ], [ %17, %16 ], [ %50, %49 ]
  %57 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %54, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %57, metadata !918, metadata !DIExpression()) #35, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %56, metadata !925, metadata !DIExpression()) #35, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %55, metadata !926, metadata !DIExpression()) #35, !dbg !1144
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %57, i8* noundef nonnull align 1 %56, i64 noundef %55, i1 noundef false) #35, !dbg !1146
  %58 = add i64 %54, %55, !dbg !1147
  br label %59, !dbg !1148

59:                                               ; preds = %20, %53
  %60 = phi i64 [ %58, %53 ], [ 0, %20 ], !dbg !1096
  store i64 %60, i64* @output.bytes_in_buffer, align 8, !dbg !1096, !tbaa !855
  ret void, !dbg !1148
}

; Function Attrs: nofree
declare !dbg !1149 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1153 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1157 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

declare !dbg !1160 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1163 i32 @fileno_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i1 @tac_seekable(i32 noundef %0, i8* noundef %1, i64 noundef %2) unnamed_addr #12 !dbg !1164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1168, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %1, metadata !1169, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %2, metadata !1170, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 1, metadata !1174, metadata !DIExpression()), !dbg !1201
  %4 = load i8*, i8** @separator, align 8, !dbg !1202, !tbaa !625
  %5 = load i8, i8* %4, align 1, !dbg !1203, !tbaa !730
  call void @llvm.dbg.value(metadata i8 %5, metadata !1175, metadata !DIExpression()), !dbg !1201
  %6 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %6, metadata !1176, metadata !DIExpression()), !dbg !1201
  %7 = load i64, i64* @match_length, align 8, !dbg !1205, !tbaa !855
  %8 = add i64 %7, -1, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %8, metadata !1177, metadata !DIExpression()), !dbg !1201
  %9 = load i64, i64* @read_size, align 8, !dbg !1207, !tbaa !855
  %10 = urem i64 %2, %9, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %10, metadata !1178, metadata !DIExpression()), !dbg !1201
  %11 = icmp eq i64 %10, 0, !dbg !1209
  br i1 %11, label %21, label %12, !dbg !1211

12:                                               ; preds = %3
  %13 = sub i64 %2, %10, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %13, metadata !1170, metadata !DIExpression()), !dbg !1201
  %14 = tail call i64 @lseek(i32 noundef %0, i64 noundef %13, i32 noundef 0) #35, !dbg !1214
  %15 = icmp slt i64 %14, 0, !dbg !1216
  br i1 %15, label %16, label %21, !dbg !1217

16:                                               ; preds = %12
  %17 = tail call i32* @__errno_location() #38, !dbg !1218
  %18 = load i32, i32* %17, align 4, !dbg !1218, !tbaa !721
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !1218
  %20 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #35, !dbg !1218
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef %19, i8* noundef %20) #35, !dbg !1218
  br label %21, !dbg !1218

21:                                               ; preds = %12, %16, %3
  %22 = phi i64 [ %13, %16 ], [ %13, %12 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1170, metadata !DIExpression()), !dbg !1201
  %23 = load i8*, i8** @G_buffer, align 8, !dbg !1219, !tbaa !625
  %24 = load i64, i64* @read_size, align 8, !dbg !1220, !tbaa !855
  %25 = tail call i64 @read(i32 noundef %0, i8* noundef %23, i64 noundef %24) #35, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %25, metadata !1173, metadata !DIExpression()), !dbg !1201
  %26 = icmp eq i64 %25, 0, !dbg !1222
  %27 = icmp ne i64 %22, 0, !dbg !1223
  %28 = and i1 %26, %27, !dbg !1223
  br i1 %28, label %29, label %48, !dbg !1224

29:                                               ; preds = %21, %40
  %30 = phi i64 [ %42, %40 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !1170, metadata !DIExpression()), !dbg !1201
  %31 = load i64, i64* @read_size, align 8, !dbg !1225, !tbaa !855
  call void @llvm.dbg.value(metadata i64 %31, metadata !1179, metadata !DIExpression()), !dbg !1226
  %32 = sub nsw i64 0, %31, !dbg !1227
  %33 = tail call i64 @lseek(i32 noundef %0, i64 noundef %32, i32 noundef 1) #35, !dbg !1229
  %34 = icmp slt i64 %33, 0, !dbg !1230
  br i1 %34, label %35, label %40, !dbg !1231

35:                                               ; preds = %29
  %36 = tail call i32* @__errno_location() #38, !dbg !1232
  %37 = load i32, i32* %36, align 4, !dbg !1232, !tbaa !721
  %38 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !1232
  %39 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #35, !dbg !1232
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %37, i8* noundef %38, i8* noundef %39) #35, !dbg !1232
  br label %40, !dbg !1232

40:                                               ; preds = %35, %29
  %41 = load i64, i64* @read_size, align 8, !dbg !1233, !tbaa !855
  %42 = sub i64 %30, %41, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %42, metadata !1170, metadata !DIExpression()), !dbg !1201
  %43 = load i8*, i8** @G_buffer, align 8, !dbg !1219, !tbaa !625
  %44 = tail call i64 @read(i32 noundef %0, i8* noundef %43, i64 noundef %41) #35, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %44, metadata !1173, metadata !DIExpression()), !dbg !1201
  %45 = icmp eq i64 %44, 0, !dbg !1222
  %46 = icmp ne i64 %42, 0, !dbg !1223
  %47 = select i1 %45, i1 %46, i1 false, !dbg !1223
  br i1 %47, label %29, label %48, !dbg !1224, !llvm.loop !1235

48:                                               ; preds = %40, %21
  %49 = phi i64 [ %25, %21 ], [ %44, %40 ]
  %50 = phi i64 [ %22, %21 ], [ %42, %40 ]
  br label %51, !dbg !1237

51:                                               ; preds = %48, %56
  %52 = phi i64 [ %61, %56 ], [ %49, %48 ], !dbg !1238
  %53 = phi i64 [ %63, %56 ], [ %50, %48 ], !dbg !1212
  call void @llvm.dbg.value(metadata i64 %53, metadata !1170, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %52, metadata !1173, metadata !DIExpression()), !dbg !1201
  %54 = load i64, i64* @read_size, align 8, !dbg !1239, !tbaa !855
  %55 = icmp eq i64 %52, %54, !dbg !1240
  br i1 %55, label %56, label %64, !dbg !1237

56:                                               ; preds = %51
  %57 = load i8*, i8** @G_buffer, align 8, !dbg !1241, !tbaa !625
  %58 = tail call i64 @read(i32 noundef %0, i8* noundef %57, i64 noundef %52) #35, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %58, metadata !1181, metadata !DIExpression()), !dbg !1243
  %59 = icmp eq i64 %58, 0, !dbg !1244
  %60 = icmp sgt i64 %58, 0, !dbg !1246
  %61 = select i1 %59, i64 %52, i64 %58, !dbg !1246
  %62 = select i1 %60, i64 %58, i64 0, !dbg !1246
  %63 = add nsw i64 %62, %53, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %63, metadata !1170, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %61, metadata !1173, metadata !DIExpression()), !dbg !1201
  br i1 %60, label %51, label %64

64:                                               ; preds = %56, %51
  %65 = phi i64 [ %61, %56 ], [ %52, %51 ], !dbg !1238
  %66 = phi i64 [ %63, %56 ], [ %53, %51 ], !dbg !1212
  call void @llvm.dbg.value(metadata i64 %66, metadata !1170, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %65, metadata !1173, metadata !DIExpression()), !dbg !1201
  %67 = icmp slt i64 %65, 0, !dbg !1247
  br i1 %67, label %68, label %73, !dbg !1249

68:                                               ; preds = %64
  %69 = tail call i32* @__errno_location() #38, !dbg !1250
  %70 = load i32, i32* %69, align 4, !dbg !1250, !tbaa !721
  %71 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #35, !dbg !1250
  %72 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #35, !dbg !1250
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %70, i8* noundef %71, i8* noundef %72) #35, !dbg !1250
  br label %220, !dbg !1252

73:                                               ; preds = %64
  %74 = load i8*, i8** @G_buffer, align 8, !dbg !1253, !tbaa !625
  %75 = getelementptr inbounds i8, i8* %74, i64 %65, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %75, metadata !1172, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %75, metadata !1171, metadata !DIExpression()), !dbg !1201
  %76 = load i64, i64* @sentinel_length, align 8, !dbg !1255, !tbaa !855
  %77 = icmp eq i64 %76, 0, !dbg !1255
  %78 = sub i64 1, %7, !dbg !1257
  %79 = select i1 %77, i64 0, i64 %78, !dbg !1257
  %80 = getelementptr i8, i8* %75, i64 %79, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %80, metadata !1171, metadata !DIExpression()), !dbg !1201
  %81 = icmp eq i64 %8, 0
  br label %82, !dbg !1258

82:                                               ; preds = %210, %73
  %83 = phi i64 [ %76, %73 ], [ %218, %210 ]
  %84 = phi i1 [ true, %73 ], [ %211, %210 ]
  %85 = phi i8* [ %75, %73 ], [ %212, %210 ]
  %86 = phi i8* [ %80, %73 ], [ %219, %210 ]
  %87 = phi i64 [ %66, %73 ], [ %92, %210 ]
  br label %88, !dbg !1258

88:                                               ; preds = %82, %191
  %89 = phi i64 [ %194, %191 ], [ %83, %82 ], !dbg !1259
  %90 = phi i8* [ %186, %191 ], [ %85, %82 ], !dbg !1201
  %91 = phi i8* [ %193, %191 ], [ %86, %82 ], !dbg !1201
  %92 = phi i64 [ %173, %191 ], [ %87, %82 ], !dbg !1201
  call void @llvm.dbg.value(metadata i64 %92, metadata !1170, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %91, metadata !1171, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %90, metadata !1172, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1174, metadata !DIExpression()), !dbg !1201
  %93 = icmp eq i64 %89, 0, !dbg !1260
  br i1 %93, label %94, label %123, !dbg !1261

94:                                               ; preds = %88
  %95 = load i8*, i8** @G_buffer, align 8, !dbg !1262, !tbaa !625
  %96 = ptrtoint i8* %91 to i64, !dbg !1263
  %97 = ptrtoint i8* %95 to i64, !dbg !1263
  %98 = sub i64 %96, %97, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %98, metadata !1183, metadata !DIExpression()), !dbg !1264
  %99 = trunc i64 %98 to i32, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %99, metadata !1187, metadata !DIExpression()), !dbg !1264
  %100 = sub nsw i32 1, %99, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %100, metadata !1188, metadata !DIExpression()), !dbg !1264
  %101 = icmp slt i32 %99, 0, !dbg !1267
  br i1 %101, label %102, label %104, !dbg !1269

102:                                              ; preds = %94
  %103 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #35, !dbg !1270
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %103) #35, !dbg !1270
  unreachable, !dbg !1270

104:                                              ; preds = %94
  %105 = icmp eq i32 %99, 0, !dbg !1271
  br i1 %105, label %139, label %106, !dbg !1273

106:                                              ; preds = %104
  %107 = add nsw i32 %99, -1, !dbg !1274
  %108 = tail call i32 @re_search(%struct.re_pattern_buffer* noundef nonnull @compiled_separator, i8* noundef %95, i32 noundef %99, i32 noundef %107, i32 noundef %100, %struct.re_registers* noundef nonnull @regs) #35, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %108, metadata !1189, metadata !DIExpression()), !dbg !1264
  switch i32 %108, label %113 [
    i32 -1, label %109
    i32 -2, label %111
  ], !dbg !1276

109:                                              ; preds = %106
  %110 = load i8*, i8** @G_buffer, align 8, !dbg !1277, !tbaa !625
  br label %139, !dbg !1276

111:                                              ; preds = %106
  %112 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i64 0, i64 0), i32 noundef 5) #35, !dbg !1278
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %112) #35, !dbg !1278
  unreachable, !dbg !1278

113:                                              ; preds = %106
  %114 = load i8*, i8** @G_buffer, align 8, !dbg !1280, !tbaa !625
  %115 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @regs, i64 0, i32 1), align 8, !dbg !1282, !tbaa !1283
  %116 = load i32, i32* %115, align 4, !dbg !1285, !tbaa !721
  %117 = sext i32 %116 to i64, !dbg !1286
  %118 = getelementptr inbounds i8, i8* %114, i64 %117, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %118, metadata !1171, metadata !DIExpression()), !dbg !1201
  %119 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @regs, i64 0, i32 2), align 8, !dbg !1287, !tbaa !1288
  %120 = load i32, i32* %119, align 4, !dbg !1289, !tbaa !721
  %121 = sub nsw i32 %120, %116, !dbg !1290
  %122 = sext i32 %121 to i64, !dbg !1289
  store i64 %122, i64* @match_length, align 8, !dbg !1291, !tbaa !855
  br label %135

123:                                              ; preds = %88, %128
  %124 = phi i8* [ %125, %128 ], [ %91, %88 ], !dbg !1201
  call void @llvm.dbg.value(metadata i8* %124, metadata !1171, metadata !DIExpression()), !dbg !1201
  %125 = getelementptr inbounds i8, i8* %124, i64 -1, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %125, metadata !1171, metadata !DIExpression()), !dbg !1201
  %126 = load i8, i8* %125, align 1, !dbg !1294, !tbaa !730
  %127 = icmp eq i8 %126, %5, !dbg !1295
  br i1 %127, label %129, label %128, !dbg !1296

128:                                              ; preds = %123, %130
  br label %123, !dbg !1201, !llvm.loop !1297

129:                                              ; preds = %123
  br i1 %81, label %133, label %130, !dbg !1300

130:                                              ; preds = %129
  %131 = tail call i32 @strncmp(i8* noundef nonnull %124, i8* noundef nonnull %6, i64 noundef %8) #36, !dbg !1301
  %132 = icmp eq i32 %131, 0, !dbg !1301
  br i1 %132, label %133, label %128, !dbg !1298

133:                                              ; preds = %129, %130
  %134 = load i8*, i8** @G_buffer, align 8, !dbg !1302, !tbaa !625
  br label %135, !dbg !1302

135:                                              ; preds = %133, %113
  %136 = phi i8* [ %114, %113 ], [ %134, %133 ], !dbg !1302
  %137 = phi i8* [ %118, %113 ], [ %125, %133 ], !dbg !1303
  call void @llvm.dbg.value(metadata i8* %137, metadata !1171, metadata !DIExpression()), !dbg !1201
  %138 = icmp ult i8* %137, %136, !dbg !1304
  br i1 %138, label %139, label %200, !dbg !1305

139:                                              ; preds = %109, %104, %135
  %140 = phi i8* [ %136, %135 ], [ %110, %109 ], [ %95, %104 ]
  %141 = icmp eq i64 %92, 0, !dbg !1306
  br i1 %141, label %142, label %143, !dbg !1308

142:                                              ; preds = %139
  tail call fastcc void @output(i8* noundef nonnull %140, i8* noundef %90), !dbg !1309
  br label %220, !dbg !1311

143:                                              ; preds = %139
  %144 = ptrtoint i8* %90 to i64, !dbg !1312
  %145 = ptrtoint i8* %140 to i64, !dbg !1312
  %146 = sub i64 %144, %145, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %146, metadata !1173, metadata !DIExpression()), !dbg !1201
  %147 = load i64, i64* @read_size, align 8, !dbg !1313, !tbaa !855
  %148 = icmp ugt i64 %146, %147, !dbg !1314
  br i1 %148, label %149, label %166, !dbg !1315

149:                                              ; preds = %143
  %150 = load i64, i64* @sentinel_length, align 8, !dbg !1316, !tbaa !855
  %151 = icmp eq i64 %150, 0, !dbg !1316
  %152 = select i1 %151, i64 1, i64 %150, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %152, metadata !1195, metadata !DIExpression()), !dbg !1317
  %153 = load i64, i64* @G_buffer_size, align 8, !dbg !1318, !tbaa !855
  call void @llvm.dbg.value(metadata i64 %153, metadata !1196, metadata !DIExpression()), !dbg !1317
  %154 = shl i64 %147, 1, !dbg !1319
  store i64 %154, i64* @read_size, align 8, !dbg !1319, !tbaa !855
  %155 = shl i64 %147, 2, !dbg !1320
  %156 = or i64 %155, 2, !dbg !1321
  %157 = add i64 %156, %150, !dbg !1322
  store i64 %157, i64* @G_buffer_size, align 8, !dbg !1323, !tbaa !855
  %158 = icmp ult i64 %157, %153, !dbg !1324
  br i1 %158, label %159, label %160, !dbg !1326

159:                                              ; preds = %149
  tail call void @xalloc_die() #37, !dbg !1327
  unreachable, !dbg !1327

160:                                              ; preds = %149
  %161 = sub i64 0, %152, !dbg !1328
  %162 = getelementptr inbounds i8, i8* %140, i64 %161, !dbg !1328
  %163 = tail call i8* @xrealloc(i8* noundef nonnull %162, i64 noundef %157) #41, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %163, metadata !1190, metadata !DIExpression()), !dbg !1317
  %164 = getelementptr inbounds i8, i8* %163, i64 %152, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %164, metadata !1190, metadata !DIExpression()), !dbg !1317
  store i8* %164, i8** @G_buffer, align 8, !dbg !1331, !tbaa !625
  %165 = load i64, i64* @read_size, align 8, !dbg !1332, !tbaa !855
  br label %166, !dbg !1334

166:                                              ; preds = %160, %143
  %167 = phi i64 [ %165, %160 ], [ %147, %143 ], !dbg !1332
  %168 = icmp ult i64 %92, %167, !dbg !1335
  br i1 %168, label %171, label %169, !dbg !1336

169:                                              ; preds = %166
  %170 = sub i64 %92, %167, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %170, metadata !1170, metadata !DIExpression()), !dbg !1201
  br label %172, !dbg !1338

171:                                              ; preds = %166
  store i64 %92, i64* @read_size, align 8, !dbg !1339, !tbaa !855
  call void @llvm.dbg.value(metadata i64 0, metadata !1170, metadata !DIExpression()), !dbg !1201
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i64 [ %170, %169 ], [ 0, %171 ], !dbg !1341
  call void @llvm.dbg.value(metadata i64 %173, metadata !1170, metadata !DIExpression()), !dbg !1201
  %174 = tail call i64 @lseek(i32 noundef %0, i64 noundef %173, i32 noundef 0) #35, !dbg !1342
  %175 = icmp slt i64 %174, 0, !dbg !1344
  br i1 %175, label %176, label %181, !dbg !1345

176:                                              ; preds = %172
  %177 = tail call i32* @__errno_location() #38, !dbg !1346
  %178 = load i32, i32* %177, align 4, !dbg !1346, !tbaa !721
  %179 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !1346
  %180 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #35, !dbg !1346
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %178, i8* noundef %179, i8* noundef %180) #35, !dbg !1346
  br label %181, !dbg !1346

181:                                              ; preds = %176, %172
  %182 = load i8*, i8** @G_buffer, align 8, !dbg !1347, !tbaa !625
  %183 = load i64, i64* @read_size, align 8, !dbg !1348, !tbaa !855
  %184 = getelementptr inbounds i8, i8* %182, i64 %183, !dbg !1349
  call void @llvm.dbg.value(metadata i8* %184, metadata !1350, metadata !DIExpression()) #35, !dbg !1357
  call void @llvm.dbg.value(metadata i8* %182, metadata !1355, metadata !DIExpression()) #35, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %146, metadata !1356, metadata !DIExpression()) #35, !dbg !1357
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %184, i8* noundef nonnull align 1 %182, i64 noundef %146, i1 noundef false) #35, !dbg !1359
  %185 = getelementptr inbounds i8, i8* %182, i64 %183, !dbg !1360
  %186 = getelementptr inbounds i8, i8* %185, i64 %146, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %186, metadata !1172, metadata !DIExpression()), !dbg !1201
  %187 = load i64, i64* @sentinel_length, align 8, !dbg !1362, !tbaa !855
  call void @llvm.dbg.value(metadata i8* undef, metadata !1171, metadata !DIExpression()), !dbg !1201
  %188 = tail call i64 @full_read(i32 noundef %0, i8* noundef %182, i64 noundef %183) #35, !dbg !1364
  %189 = load i64, i64* @read_size, align 8, !dbg !1366, !tbaa !855
  %190 = icmp eq i64 %188, %189, !dbg !1367
  br i1 %190, label %191, label %195, !dbg !1368

191:                                              ; preds = %181
  %192 = icmp eq i64 %187, 0, !dbg !1362
  %193 = select i1 %192, i8* %186, i8* %185
  call void @llvm.dbg.value(metadata i8* %193, metadata !1171, metadata !DIExpression()), !dbg !1201
  %194 = load i64, i64* @sentinel_length, align 8, !dbg !1259, !tbaa !855
  br label %88, !dbg !1368, !llvm.loop !1369

195:                                              ; preds = %181
  %196 = tail call i32* @__errno_location() #38, !dbg !1371
  %197 = load i32, i32* %196, align 4, !dbg !1371, !tbaa !721
  %198 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #35, !dbg !1371
  %199 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #35, !dbg !1371
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %197, i8* noundef %198, i8* noundef %199) #35, !dbg !1371
  br label %220, !dbg !1373

200:                                              ; preds = %135
  %201 = load i1, i1* @separator_ends_record, align 1, !dbg !1374
  br i1 %201, label %207, label %202, !dbg !1375

202:                                              ; preds = %200
  %203 = load i64, i64* @match_length, align 8, !dbg !1376, !tbaa !855
  %204 = getelementptr inbounds i8, i8* %137, i64 %203, !dbg !1377
  call void @llvm.dbg.value(metadata i8* %204, metadata !1197, metadata !DIExpression()), !dbg !1378
  %205 = icmp eq i8* %204, %90
  %206 = select i1 %84, i1 %205, i1 false, !dbg !1379
  br i1 %206, label %210, label %207, !dbg !1379

207:                                              ; preds = %200, %202
  %208 = phi i8* [ %204, %202 ], [ %137, %200 ]
  %209 = phi i1 [ false, %202 ], [ %84, %200 ]
  tail call fastcc void @output(i8* noundef %208, i8* noundef %90), !dbg !1381
  br label %210, !dbg !1382

210:                                              ; preds = %207, %202
  %211 = phi i1 [ false, %202 ], [ %209, %207 ]
  %212 = phi i8* [ %90, %202 ], [ %208, %207 ], !dbg !1381
  call void @llvm.dbg.value(metadata i8* %212, metadata !1172, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1174, metadata !DIExpression()), !dbg !1201
  %213 = load i64, i64* @sentinel_length, align 8, !dbg !1382, !tbaa !855
  %214 = icmp eq i64 %213, 0, !dbg !1384
  %215 = load i64, i64* @match_length, align 8, !dbg !1385
  %216 = sub i64 1, %215, !dbg !1385
  %217 = getelementptr inbounds i8, i8* %137, i64 %216, !dbg !1385
  %218 = select i1 %214, i64 0, i64 1, !dbg !1385
  %219 = select i1 %214, i8* %137, i8* %217, !dbg !1385
  br label %82, !dbg !1258, !llvm.loop !1369

220:                                              ; preds = %195, %142, %68
  %221 = phi i1 [ false, %68 ], [ true, %142 ], [ false, %195 ], !dbg !1201
  ret i1 %221, !dbg !1386
}

declare !dbg !1387 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !1388 i32 @re_search(%struct.re_pattern_buffer* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.re_registers* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare !dbg !1392 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i1 @temp_stream(%struct._IO_FILE** nocapture noundef writeonly %0, i8** noundef writeonly %1) local_unnamed_addr #12 !dbg !248 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %0, metadata !294, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8** %1, metadata !295, metadata !DIExpression()), !dbg !1395
  %3 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1396, !tbaa !625
  %4 = icmp eq i8* %3, null, !dbg !1397
  br i1 %4, label %5, label %102, !dbg !1398

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 128, metadata !299, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* null, metadata !296, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* null, metadata !1400, metadata !DIExpression()) #35, !dbg !1407
  call void @llvm.dbg.value(metadata i64 128, metadata !1406, metadata !DIExpression()) #35, !dbg !1407
  %6 = tail call dereferenceable_or_null(128) i8* @malloc(i64 128), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %6, metadata !296, metadata !DIExpression()), !dbg !1399
  %7 = icmp eq i8* %6, null, !dbg !1412
  br i1 %7, label %8, label %63, !dbg !1413

8:                                                ; preds = %5
  %9 = tail call i32* @__errno_location() #38, !dbg !1414
  br label %59, !dbg !1413

10:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 256, metadata !299, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %6, metadata !296, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %6, metadata !1400, metadata !DIExpression()) #35, !dbg !1407
  call void @llvm.dbg.value(metadata i64 256, metadata !1406, metadata !DIExpression()) #35, !dbg !1407
  %11 = tail call dereferenceable_or_null(256) i8* @realloc(i8* noundef nonnull %6, i64 noundef 256) #35, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %11, metadata !296, metadata !DIExpression()), !dbg !1399
  %12 = icmp eq i8* %11, null, !dbg !1412
  br i1 %12, label %59, label %13, !dbg !1413, !llvm.loop !1416

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 256, metadata !299, metadata !DIExpression()), !dbg !1399
  %14 = tail call i32 @path_search(i8* noundef nonnull %11, i64 noundef 256, i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.3, i64 0, i64 0), i1 noundef true) #35, !dbg !1419
  %15 = icmp eq i32 %14, 0, !dbg !1421
  br i1 %15, label %75, label %16, !dbg !1422

16:                                               ; preds = %13
  %17 = tail call i32* @__errno_location() #38, !dbg !1423
  %18 = load i32, i32* %17, align 4, !dbg !1423, !tbaa !721
  %19 = icmp eq i32 %18, 22, !dbg !1425
  call void @llvm.dbg.value(metadata i64 512, metadata !299, metadata !DIExpression()), !dbg !1399
  br i1 %19, label %20, label %70, !dbg !1426

20:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 512, metadata !299, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %11, metadata !296, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %11, metadata !1400, metadata !DIExpression()) #35, !dbg !1407
  call void @llvm.dbg.value(metadata i64 512, metadata !1406, metadata !DIExpression()) #35, !dbg !1407
  %21 = tail call dereferenceable_or_null(512) i8* @realloc(i8* noundef nonnull %11, i64 noundef 512) #35, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %21, metadata !296, metadata !DIExpression()), !dbg !1399
  %22 = icmp eq i8* %21, null, !dbg !1412
  br i1 %22, label %59, label %23, !dbg !1413, !llvm.loop !1416

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 512, metadata !299, metadata !DIExpression()), !dbg !1399
  %24 = tail call i32 @path_search(i8* noundef nonnull %21, i64 noundef 512, i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.3, i64 0, i64 0), i1 noundef true) #35, !dbg !1419
  %25 = icmp eq i32 %24, 0, !dbg !1421
  br i1 %25, label %75, label %26, !dbg !1422

26:                                               ; preds = %23
  %27 = tail call i32* @__errno_location() #38, !dbg !1423
  %28 = load i32, i32* %27, align 4, !dbg !1423, !tbaa !721
  %29 = icmp eq i32 %28, 22, !dbg !1425
  call void @llvm.dbg.value(metadata i64 1024, metadata !299, metadata !DIExpression()), !dbg !1399
  br i1 %29, label %30, label %70, !dbg !1426

30:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 1024, metadata !299, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %21, metadata !296, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %21, metadata !1400, metadata !DIExpression()) #35, !dbg !1407
  call void @llvm.dbg.value(metadata i64 1024, metadata !1406, metadata !DIExpression()) #35, !dbg !1407
  %31 = tail call dereferenceable_or_null(1024) i8* @realloc(i8* noundef nonnull %21, i64 noundef 1024) #35, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %31, metadata !296, metadata !DIExpression()), !dbg !1399
  %32 = icmp eq i8* %31, null, !dbg !1412
  br i1 %32, label %59, label %33, !dbg !1413, !llvm.loop !1416

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i64 1024, metadata !299, metadata !DIExpression()), !dbg !1399
  %34 = tail call i32 @path_search(i8* noundef nonnull %31, i64 noundef 1024, i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.3, i64 0, i64 0), i1 noundef true) #35, !dbg !1419
  %35 = icmp eq i32 %34, 0, !dbg !1421
  br i1 %35, label %75, label %36, !dbg !1422

36:                                               ; preds = %33
  %37 = tail call i32* @__errno_location() #38, !dbg !1423
  %38 = load i32, i32* %37, align 4, !dbg !1423, !tbaa !721
  %39 = icmp eq i32 %38, 22, !dbg !1425
  call void @llvm.dbg.value(metadata i64 2048, metadata !299, metadata !DIExpression()), !dbg !1399
  br i1 %39, label %40, label %70, !dbg !1426

40:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 2048, metadata !299, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %31, metadata !296, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %31, metadata !1400, metadata !DIExpression()) #35, !dbg !1407
  call void @llvm.dbg.value(metadata i64 2048, metadata !1406, metadata !DIExpression()) #35, !dbg !1407
  %41 = tail call dereferenceable_or_null(2048) i8* @realloc(i8* noundef nonnull %31, i64 noundef 2048) #35, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %41, metadata !296, metadata !DIExpression()), !dbg !1399
  %42 = icmp eq i8* %41, null, !dbg !1412
  br i1 %42, label %59, label %43, !dbg !1413, !llvm.loop !1416

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2048, metadata !299, metadata !DIExpression()), !dbg !1399
  %44 = tail call i32 @path_search(i8* noundef nonnull %41, i64 noundef 2048, i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.3, i64 0, i64 0), i1 noundef true) #35, !dbg !1419
  %45 = icmp eq i32 %44, 0, !dbg !1421
  br i1 %45, label %75, label %46, !dbg !1422

46:                                               ; preds = %43
  %47 = tail call i32* @__errno_location() #38, !dbg !1423
  %48 = load i32, i32* %47, align 4, !dbg !1423, !tbaa !721
  %49 = icmp eq i32 %48, 22, !dbg !1425
  call void @llvm.dbg.value(metadata i64 4096, metadata !299, metadata !DIExpression()), !dbg !1399
  br i1 %49, label %50, label %70, !dbg !1426

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64 4096, metadata !299, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %41, metadata !296, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8* %41, metadata !1400, metadata !DIExpression()) #35, !dbg !1407
  call void @llvm.dbg.value(metadata i64 4096, metadata !1406, metadata !DIExpression()) #35, !dbg !1407
  %51 = tail call dereferenceable_or_null(4096) i8* @realloc(i8* noundef nonnull %41, i64 noundef 4096) #35, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %51, metadata !296, metadata !DIExpression()), !dbg !1399
  %52 = icmp eq i8* %51, null, !dbg !1412
  br i1 %52, label %59, label %53, !dbg !1413, !llvm.loop !1416

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 4096, metadata !299, metadata !DIExpression()), !dbg !1399
  %54 = tail call i32 @path_search(i8* noundef nonnull %51, i64 noundef 4096, i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.3, i64 0, i64 0), i1 noundef true) #35, !dbg !1419
  %55 = icmp eq i32 %54, 0, !dbg !1421
  br i1 %55, label %75, label %56, !dbg !1422

56:                                               ; preds = %53
  %57 = tail call i32* @__errno_location() #38, !dbg !1423
  %58 = load i32, i32* %57, align 4, !dbg !1423, !tbaa !721
  call void @llvm.dbg.value(metadata i64 8192, metadata !299, metadata !DIExpression()), !dbg !1399
  br label %70, !dbg !1426

59:                                               ; preds = %10, %20, %30, %40, %50, %8
  %60 = phi i32* [ %9, %8 ], [ %67, %10 ], [ %17, %20 ], [ %27, %30 ], [ %37, %40 ], [ %47, %50 ], !dbg !1414
  %61 = load i32, i32* %60, align 4, !dbg !1414, !tbaa !721
  %62 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #35, !dbg !1414
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %61, i8* noundef %62) #35, !dbg !1414
  br label %123, !dbg !1427

63:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 128, metadata !299, metadata !DIExpression()), !dbg !1399
  %64 = tail call i32 @path_search(i8* noundef nonnull %6, i64 noundef 128, i8* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.3, i64 0, i64 0), i1 noundef true) #35, !dbg !1419
  %65 = icmp eq i32 %64, 0, !dbg !1421
  br i1 %65, label %75, label %66, !dbg !1422

66:                                               ; preds = %63
  %67 = tail call i32* @__errno_location() #38, !dbg !1423
  %68 = load i32, i32* %67, align 4, !dbg !1423, !tbaa !721
  %69 = icmp eq i32 %68, 22, !dbg !1425
  call void @llvm.dbg.value(metadata i64 256, metadata !299, metadata !DIExpression()), !dbg !1399
  br i1 %69, label %10, label %70, !dbg !1426

70:                                               ; preds = %56, %46, %36, %26, %16, %66
  %71 = phi i32 [ %68, %66 ], [ %18, %16 ], [ %28, %26 ], [ %38, %36 ], [ %48, %46 ], [ %58, %56 ], !dbg !1423
  %72 = icmp eq i32 %71, 22, !dbg !1428
  %73 = select i1 %72, i32 36, i32 %71, !dbg !1428
  %74 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #35, !dbg !1428
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %73, i8* noundef %74) #35, !dbg !1428
  br label %123, !dbg !1430

75:                                               ; preds = %53, %43, %33, %23, %13, %63
  %76 = phi i8* [ %6, %63 ], [ %11, %13 ], [ %21, %23 ], [ %31, %33 ], [ %41, %43 ], [ %51, %53 ]
  store i8* %76, i8** @temp_stream.tempfile, align 8, !dbg !1431, !tbaa !625
  %77 = tail call i32 @mkstemp_safer(i8* noundef nonnull %76) #35, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %77, metadata !300, metadata !DIExpression()), !dbg !1399
  %78 = icmp slt i32 %77, 0, !dbg !1433
  br i1 %78, label %79, label %85, !dbg !1435

79:                                               ; preds = %75
  %80 = tail call i32* @__errno_location() #38, !dbg !1436
  %81 = load i32, i32* %80, align 4, !dbg !1436, !tbaa !721
  %82 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2.28, i64 0, i64 0), i32 noundef 5) #35, !dbg !1436
  %83 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1436, !tbaa !625
  %84 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %83) #35, !dbg !1436
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %81, i8* noundef %82, i8* noundef %84) #35, !dbg !1436
  br label %97, !dbg !1438

85:                                               ; preds = %75
  %86 = tail call noalias %struct._IO_FILE* @fdopen(i32 noundef %77, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.29, i64 0, i64 0)) #35, !dbg !1439
  store %struct._IO_FILE* %86, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1440, !tbaa !625
  %87 = icmp eq %struct._IO_FILE* %86, null, !dbg !1441
  br i1 %87, label %88, label %99, !dbg !1442

88:                                               ; preds = %85
  %89 = tail call i32* @__errno_location() #38, !dbg !1443
  %90 = load i32, i32* %89, align 4, !dbg !1443, !tbaa !721
  %91 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.30, i64 0, i64 0), i32 noundef 5) #35, !dbg !1443
  %92 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1443, !tbaa !625
  %93 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %92) #35, !dbg !1443
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %90, i8* noundef %91, i8* noundef %93) #35, !dbg !1443
  %94 = tail call i32 @close(i32 noundef %77) #35, !dbg !1444
  %95 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1445, !tbaa !625
  %96 = tail call i32 @unlink(i8* noundef %95) #35, !dbg !1446
  br label %97, !dbg !1446

97:                                               ; preds = %88, %79
  call void @llvm.dbg.label(metadata !301), !dbg !1447
  %98 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1448, !tbaa !625
  tail call void @free(i8* noundef %98) #35, !dbg !1449
  store i8* null, i8** @temp_stream.tempfile, align 8, !dbg !1450, !tbaa !625
  br label %123, !dbg !1451

99:                                               ; preds = %85
  %100 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1452, !tbaa !625
  call void @llvm.dbg.value(metadata i8* %100, metadata !1453, metadata !DIExpression()) #35, !dbg !1459
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1458, metadata !DIExpression()) #35, !dbg !1459
  %101 = tail call i32 @unlink(i8* noundef %100) #35, !dbg !1461
  br label %118

102:                                              ; preds = %2
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1462, !tbaa !625
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %103) #35, !dbg !1462
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1464, !tbaa !625
  %105 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef %104, i64 noundef 0, i32 noundef 0) #35, !dbg !1466
  %106 = icmp slt i32 %105, 0, !dbg !1467
  br i1 %106, label %112, label %107, !dbg !1468

107:                                              ; preds = %102
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1469, !tbaa !625
  %109 = tail call i32 @fileno_unlocked(%struct._IO_FILE* noundef %108) #35, !dbg !1469
  %110 = tail call i32 @ftruncate(i32 noundef %109, i64 noundef 0) #35, !dbg !1470
  %111 = icmp slt i32 %110, 0, !dbg !1471
  br i1 %111, label %112, label %118, !dbg !1472

112:                                              ; preds = %107, %102
  %113 = tail call i32* @__errno_location() #38, !dbg !1473
  %114 = load i32, i32* %113, align 4, !dbg !1473, !tbaa !721
  %115 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.31, i64 0, i64 0), i32 noundef 5) #35, !dbg !1473
  %116 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1473, !tbaa !625
  %117 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %116) #35, !dbg !1473
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %114, i8* noundef %115, i8* noundef %117) #35, !dbg !1473
  br label %123, !dbg !1475

118:                                              ; preds = %99, %107
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1476, !tbaa !625
  store %struct._IO_FILE* %119, %struct._IO_FILE** %0, align 8, !dbg !1477, !tbaa !625
  %120 = icmp eq i8** %1, null, !dbg !1478
  br i1 %120, label %123, label %121, !dbg !1480

121:                                              ; preds = %118
  %122 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1481, !tbaa !625
  store i8* %122, i8** %1, align 8, !dbg !1482, !tbaa !625
  br label %123, !dbg !1483

123:                                              ; preds = %97, %59, %70, %118, %121, %112
  %124 = phi i1 [ false, %112 ], [ true, %121 ], [ true, %118 ], [ false, %70 ], [ false, %59 ], [ false, %97 ], !dbg !1395
  ret i1 %124, !dbg !1484
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare !dbg !1485 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1488 noundef i32 @unlink(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !1491 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #17 !dbg !1494 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1496, metadata !DIExpression()), !dbg !1497
  store i8* %0, i8** @file_name, align 8, !dbg !1498, !tbaa !625
  ret void, !dbg !1499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !1500 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1506, !tbaa !1507
  ret void, !dbg !1509
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1510 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1515, !tbaa !625
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1516
  %3 = icmp eq i32 %2, 0, !dbg !1517
  br i1 %3, label %22, label %4, !dbg !1518

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1519, !tbaa !1507, !range !1520
  %6 = icmp eq i8 %5, 0, !dbg !1519
  br i1 %6, label %11, label %7, !dbg !1521

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1522
  %9 = load i32, i32* %8, align 4, !dbg !1522, !tbaa !721
  %10 = icmp eq i32 %9, 32, !dbg !1523
  br i1 %10, label %22, label %11, !dbg !1524

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.72, i64 0, i64 0), i32 noundef 5) #35, !dbg !1525
  call void @llvm.dbg.value(metadata i8* %12, metadata !1512, metadata !DIExpression()), !dbg !1526
  %13 = load i8*, i8** @file_name, align 8, !dbg !1527, !tbaa !625
  %14 = icmp eq i8* %13, null, !dbg !1527
  %15 = tail call i32* @__errno_location() #38, !dbg !1529
  %16 = load i32, i32* %15, align 4, !dbg !1529, !tbaa !721
  br i1 %14, label %19, label %17, !dbg !1530

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1531
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.73, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1531
  br label %20, !dbg !1531

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.74, i64 0, i64 0), i8* noundef %12) #35, !dbg !1532
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1533, !tbaa !721
  tail call void @_exit(i32 noundef %21) #37, !dbg !1534
  unreachable, !dbg !1534

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1535, !tbaa !625
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1537
  %25 = icmp eq i32 %24, 0, !dbg !1538
  br i1 %25, label %28, label %26, !dbg !1539

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1540, !tbaa !721
  tail call void @_exit(i32 noundef %27) #37, !dbg !1541
  unreachable, !dbg !1541

28:                                               ; preds = %22
  ret void, !dbg !1542
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !1543 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1547, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %1, metadata !1548, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %2, metadata !1549, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1550, metadata !DIExpression()), !dbg !1552
  tail call fastcc void @flush_stdout(), !dbg !1553
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1554, !tbaa !625
  %7 = icmp eq void ()* %6, null, !dbg !1554
  br i1 %7, label %9, label %8, !dbg !1556

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1557
  br label %13, !dbg !1557

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1558, !tbaa !625
  %11 = tail call i8* @getprogname() #36, !dbg !1558
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %11) #35, !dbg !1558
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1560
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1560, !tbaa.struct !1561
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1560
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1560
  ret void, !dbg !1562
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1563 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1565, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 1, metadata !1567, metadata !DIExpression()) #35, !dbg !1570
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1573
  %2 = icmp slt i32 %1, 0, !dbg !1574
  br i1 %2, label %6, label %3, !dbg !1575

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1576, !tbaa !625
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1576
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
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1586, !tbaa !625
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1587
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1588, metadata !DIExpression()) #35, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %2, metadata !1629, metadata !DIExpression()) #35, !dbg !1631
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1633
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1633, !noalias !1634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1633
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1633
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1633, !noalias !1634
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1638, !tbaa !721
  %12 = add i32 %11, 1, !dbg !1638
  store i32 %12, i32* @error_message_count, align 4, !dbg !1638, !tbaa !721
  %13 = icmp eq i32 %1, 0, !dbg !1639
  br i1 %13, label %24, label %14, !dbg !1641

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1642, metadata !DIExpression()) #35, !dbg !1650
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1652
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1652
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1646, metadata !DIExpression()) #35, !dbg !1653
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1654
  call void @llvm.dbg.value(metadata i8* %16, metadata !1645, metadata !DIExpression()) #35, !dbg !1650
  %17 = icmp eq i8* %16, null, !dbg !1655
  br i1 %17, label %18, label %20, !dbg !1657

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.77, i64 0, i64 0), i32 noundef 5) #35, !dbg !1658
  call void @llvm.dbg.value(metadata i8* %19, metadata !1645, metadata !DIExpression()) #35, !dbg !1650
  br label %20, !dbg !1659

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1650
  call void @llvm.dbg.value(metadata i8* %21, metadata !1645, metadata !DIExpression()) #35, !dbg !1650
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1660, !tbaa !625
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.78, i64 0, i64 0), i8* noundef %21) #35, !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1661
  br label %24, !dbg !1662

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1663, !tbaa !625
  call void @llvm.dbg.value(metadata i32 10, metadata !1664, metadata !DIExpression()) #35, !dbg !1671
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1670, metadata !DIExpression()) #35, !dbg !1671
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1673
  %27 = load i8*, i8** %26, align 8, !dbg !1673, !tbaa !1674
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1673
  %29 = load i8*, i8** %28, align 8, !dbg !1673, !tbaa !1676
  %30 = icmp ult i8* %27, %29, !dbg !1673
  br i1 %30, label %33, label %31, !dbg !1673, !prof !1677

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1673
  br label %35, !dbg !1673

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1673
  store i8* %34, i8** %26, align 8, !dbg !1673, !tbaa !1674
  store i8 10, i8* %27, align 1, !dbg !1673, !tbaa !730
  br label %35, !dbg !1673

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1678, !tbaa !625
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1678
  %38 = icmp eq i32 %0, 0, !dbg !1679
  br i1 %38, label %40, label %39, !dbg !1681

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1682
  unreachable, !dbg !1682

40:                                               ; preds = %35
  ret void, !dbg !1683
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1684 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1688 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1691 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1695, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 %1, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8* %2, metadata !1697, metadata !DIExpression()), !dbg !1699
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1700
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1700
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1698, metadata !DIExpression()), !dbg !1701
  call void @llvm.va_start(i8* nonnull %6), !dbg !1702
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1703
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1703
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1703, !tbaa.struct !1561
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #42, !dbg !1703
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1703
  call void @llvm.va_end(i8* nonnull %6), !dbg !1704
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1705
  ret void, !dbg !1705
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !324 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !342, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %1, metadata !343, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8* %2, metadata !344, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %3, metadata !345, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8* %4, metadata !346, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !347, metadata !DIExpression()), !dbg !1707
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1708, !tbaa !721
  %9 = icmp eq i32 %8, 0, !dbg !1708
  br i1 %9, label %24, label %10, !dbg !1710

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1711, !tbaa !721
  %12 = icmp eq i32 %11, %3, !dbg !1714
  br i1 %12, label %13, label %23, !dbg !1715

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1716, !tbaa !625
  %15 = icmp eq i8* %14, %2, !dbg !1717
  br i1 %15, label %39, label %16, !dbg !1718

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1719
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1720
  br i1 %19, label %20, label %23, !dbg !1720

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1721
  %22 = icmp eq i32 %21, 0, !dbg !1722
  br i1 %22, label %39, label %23, !dbg !1723

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1724, !tbaa !625
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1725, !tbaa !721
  br label %24, !dbg !1726

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1727
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1728, !tbaa !625
  %26 = icmp eq void ()* %25, null, !dbg !1728
  br i1 %26, label %28, label %27, !dbg !1730

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1731
  br label %32, !dbg !1731

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1732, !tbaa !625
  %30 = tail call i8* @getprogname() #36, !dbg !1732
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.81, i64 0, i64 0), i8* noundef %30) #35, !dbg !1732
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1734, !tbaa !625
  %34 = icmp eq i8* %2, null, !dbg !1734
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.83, i64 0, i64 0), !dbg !1734
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1734
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1735
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1735
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1735, !tbaa.struct !1561
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1735
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1735
  br label %39, !dbg !1736

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1736
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1737 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1741, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %1, metadata !1742, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %2, metadata !1743, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %3, metadata !1744, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %4, metadata !1745, metadata !DIExpression()), !dbg !1747
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1748
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1748
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1746, metadata !DIExpression()), !dbg !1749
  call void @llvm.va_start(i8* nonnull %8), !dbg !1750
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1751
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1751, !tbaa.struct !1561
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #42, !dbg !1751
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1751
  call void @llvm.va_end(i8* nonnull %8), !dbg !1752
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1753
  ret void, !dbg !1753
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1754 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1792, metadata !DIExpression()), !dbg !1793
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1794
  ret i32 0, !dbg !1795
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !1796 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1834, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %1, metadata !1835, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %2, metadata !1836, metadata !DIExpression()), !dbg !1840
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1841
  %5 = load i8*, i8** %4, align 8, !dbg !1841, !tbaa !1842
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1843
  %7 = load i8*, i8** %6, align 8, !dbg !1843, !tbaa !1844
  %8 = icmp eq i8* %5, %7, !dbg !1845
  br i1 %8, label %9, label %28, !dbg !1846

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1847
  %11 = load i8*, i8** %10, align 8, !dbg !1847, !tbaa !1674
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !1848
  %13 = load i8*, i8** %12, align 8, !dbg !1848, !tbaa !1849
  %14 = icmp eq i8* %11, %13, !dbg !1850
  br i1 %14, label %15, label %28, !dbg !1851

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !1852
  %17 = load i8*, i8** %16, align 8, !dbg !1852, !tbaa !1853
  %18 = icmp eq i8* %17, null, !dbg !1854
  br i1 %18, label %19, label %28, !dbg !1855

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1856
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %21, metadata !1837, metadata !DIExpression()), !dbg !1858
  %22 = icmp eq i64 %21, -1, !dbg !1859
  br i1 %22, label %30, label %23, !dbg !1861

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1862
  %25 = load i32, i32* %24, align 8, !dbg !1863, !tbaa !1864
  %26 = and i32 %25, -17, !dbg !1863
  store i32 %26, i32* %24, align 8, !dbg !1863, !tbaa !1864
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !1865
  store i64 %21, i64* %27, align 8, !dbg !1866, !tbaa !1867
  br label %30, !dbg !1868

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !1869
  br label %30, !dbg !1870

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !1840
  ret i32 %31, !dbg !1871
}

; Function Attrs: nofree nounwind
declare !dbg !1872 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1875 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @full_read(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1883, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %1, metadata !1884, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %2, metadata !1885, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1886, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %1, metadata !1887, metadata !DIExpression()), !dbg !1890
  %4 = icmp sgt i64 %2, 0, !dbg !1891
  br i1 %4, label %5, label %20, !dbg !1892

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi i8* [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1885, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %7, metadata !1887, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %8, metadata !1886, metadata !DIExpression()), !dbg !1890
  %9 = tail call i64 @safe_read(i32 noundef %0, i8* noundef %7, i64 noundef %6) #35, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %9, metadata !1888, metadata !DIExpression()), !dbg !1894
  %10 = icmp slt i64 %9, 0, !dbg !1895
  br i1 %10, label %20, label %11, !dbg !1897

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !1898
  br i1 %12, label %13, label %15, !dbg !1900

13:                                               ; preds = %11
  %14 = tail call i32* @__errno_location() #38, !dbg !1901
  store i32 0, i32* %14, align 4, !dbg !1903, !tbaa !721
  br label %20, !dbg !1904

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %16, metadata !1886, metadata !DIExpression()), !dbg !1890
  %17 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %17, metadata !1887, metadata !DIExpression()), !dbg !1890
  %18 = sub nsw i64 %6, %9, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %18, metadata !1885, metadata !DIExpression()), !dbg !1890
  %19 = icmp sgt i64 %18, 0, !dbg !1891
  br i1 %19, label %5, label %20, !dbg !1892

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1886, metadata !DIExpression()), !dbg !1890
  ret i64 %21, !dbg !1908
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #21 !dbg !1909 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1912, !tbaa !625
  ret i8* %1, !dbg !1913
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !1914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1916, metadata !DIExpression()), !dbg !1919
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %2, metadata !1917, metadata !DIExpression()), !dbg !1919
  %3 = icmp eq i8* %2, null, !dbg !1921
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1921
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1921
  call void @llvm.dbg.value(metadata i8* %5, metadata !1918, metadata !DIExpression()), !dbg !1919
  %6 = ptrtoint i8* %5 to i64, !dbg !1922
  %7 = ptrtoint i8* %0 to i64, !dbg !1922
  %8 = sub i64 %6, %7, !dbg !1922
  %9 = icmp sgt i64 %8, 6, !dbg !1924
  br i1 %9, label %10, label %19, !dbg !1925

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1926
  call void @llvm.dbg.value(metadata i8* %11, metadata !1927, metadata !DIExpression()) #35, !dbg !1934
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i64 0, i64 0), metadata !1932, metadata !DIExpression()) #35, !dbg !1934
  call void @llvm.dbg.value(metadata i64 7, metadata !1933, metadata !DIExpression()) #35, !dbg !1934
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i64 0, i64 0), i64 7) #35, !dbg !1936
  %13 = icmp eq i32 %12, 0, !dbg !1937
  br i1 %13, label %14, label %19, !dbg !1938

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1916, metadata !DIExpression()), !dbg !1919
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.99, i64 0, i64 0), i64 noundef 3) #36, !dbg !1939
  %16 = icmp eq i32 %15, 0, !dbg !1942
  %17 = select i1 %16, i64 3, i64 0, !dbg !1943
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1943
  br label %19, !dbg !1943

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1919
  call void @llvm.dbg.value(metadata i8* %21, metadata !1918, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8* %20, metadata !1916, metadata !DIExpression()), !dbg !1919
  store i8* %20, i8** @program_name, align 8, !dbg !1944, !tbaa !625
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1945, !tbaa !625
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1946, !tbaa !625
  ret void, !dbg !1947
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !365 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !372, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8* %1, metadata !373, metadata !DIExpression()), !dbg !1948
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !1949
  call void @llvm.dbg.value(metadata i8* %5, metadata !374, metadata !DIExpression()), !dbg !1948
  %6 = icmp eq i8* %5, %0, !dbg !1950
  br i1 %6, label %7, label %17, !dbg !1952

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1953
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1953
  %10 = bitcast i64* %4 to i8*, !dbg !1954
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1954
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !380, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1956, metadata !DIExpression()) #35, !dbg !1963
  call void @llvm.dbg.value(metadata i8* %10, metadata !1965, metadata !DIExpression()) #35, !dbg !1972
  call void @llvm.dbg.value(metadata i32 0, metadata !1970, metadata !DIExpression()) #35, !dbg !1972
  call void @llvm.dbg.value(metadata i64 8, metadata !1971, metadata !DIExpression()) #35, !dbg !1972
  store i64 0, i64* %4, align 8, !dbg !1974
  call void @llvm.dbg.value(metadata i32* %3, metadata !375, metadata !DIExpression(DW_OP_deref)), !dbg !1948
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !1975
  %12 = icmp eq i64 %11, 2, !dbg !1977
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !375, metadata !DIExpression()), !dbg !1948
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1978
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1979
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1979
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1948
  ret i8* %18, !dbg !1979
}

; Function Attrs: nounwind
declare !dbg !1980 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1986 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1991, metadata !DIExpression()), !dbg !1994
  %2 = tail call i32* @__errno_location() #38, !dbg !1995
  %3 = load i32, i32* %2, align 4, !dbg !1995, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %3, metadata !1992, metadata !DIExpression()), !dbg !1994
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1996
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1996
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1996
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !1997
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1997
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1993, metadata !DIExpression()), !dbg !1994
  store i32 %3, i32* %2, align 4, !dbg !1998, !tbaa !721
  ret %struct.quoting_options* %8, !dbg !1999
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #21 !dbg !2000 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2006, metadata !DIExpression()), !dbg !2007
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2008
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2008
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2009
  %5 = load i32, i32* %4, align 8, !dbg !2009, !tbaa !2010
  ret i32 %5, !dbg !2012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 !dbg !2013 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2017, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %1, metadata !2018, metadata !DIExpression()), !dbg !2019
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2020
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2020
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2021
  store i32 %1, i32* %5, align 8, !dbg !2022, !tbaa !2010
  ret void, !dbg !2023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2024 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2028, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %1, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %2, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %1, metadata !2031, metadata !DIExpression()), !dbg !2036
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2037
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2037
  %6 = lshr i8 %1, 5, !dbg !2038
  %7 = zext i8 %6 to i64, !dbg !2038
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2039
  call void @llvm.dbg.value(metadata i32* %8, metadata !2032, metadata !DIExpression()), !dbg !2036
  %9 = and i8 %1, 31, !dbg !2040
  %10 = zext i8 %9 to i32, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %10, metadata !2034, metadata !DIExpression()), !dbg !2036
  %11 = load i32, i32* %8, align 4, !dbg !2041, !tbaa !721
  %12 = lshr i32 %11, %10, !dbg !2042
  %13 = and i32 %12, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %13, metadata !2035, metadata !DIExpression()), !dbg !2036
  %14 = and i32 %2, 1, !dbg !2044
  %15 = xor i32 %13, %14, !dbg !2045
  %16 = shl i32 %15, %10, !dbg !2046
  %17 = xor i32 %16, %11, !dbg !2047
  store i32 %17, i32* %8, align 4, !dbg !2047, !tbaa !721
  ret i32 %13, !dbg !2048
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2049 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2053, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression()), !dbg !2056
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2057
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2053, metadata !DIExpression()), !dbg !2056
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2060
  %6 = load i32, i32* %5, align 4, !dbg !2060, !tbaa !2061
  call void @llvm.dbg.value(metadata i32 %6, metadata !2055, metadata !DIExpression()), !dbg !2056
  store i32 %1, i32* %5, align 4, !dbg !2062, !tbaa !2061
  ret i32 %6, !dbg !2063
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2064 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2068, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* %1, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* %2, metadata !2070, metadata !DIExpression()), !dbg !2071
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2072
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2074
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2068, metadata !DIExpression()), !dbg !2071
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2075
  store i32 10, i32* %6, align 8, !dbg !2076, !tbaa !2010
  %7 = icmp ne i8* %1, null, !dbg !2077
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2079
  br i1 %9, label %11, label %10, !dbg !2079

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2080
  unreachable, !dbg !2080

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2081
  store i8* %1, i8** %12, align 8, !dbg !2082, !tbaa !2083
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2084
  store i8* %2, i8** %13, align 8, !dbg !2085, !tbaa !2086
  ret void, !dbg !2087
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2088 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2092, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %1, metadata !2093, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %2, metadata !2094, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %3, metadata !2095, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2096, metadata !DIExpression()), !dbg !2100
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2101
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2101
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2097, metadata !DIExpression()), !dbg !2100
  %8 = tail call i32* @__errno_location() #38, !dbg !2102
  %9 = load i32, i32* %8, align 4, !dbg !2102, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %9, metadata !2098, metadata !DIExpression()), !dbg !2100
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2103
  %11 = load i32, i32* %10, align 8, !dbg !2103, !tbaa !2010
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2104
  %13 = load i32, i32* %12, align 4, !dbg !2104, !tbaa !2061
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2105
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2106
  %16 = load i8*, i8** %15, align 8, !dbg !2106, !tbaa !2083
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2107
  %18 = load i8*, i8** %17, align 8, !dbg !2107, !tbaa !2086
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %19, metadata !2099, metadata !DIExpression()), !dbg !2100
  store i32 %9, i32* %8, align 4, !dbg !2109, !tbaa !721
  ret i64 %19, !dbg !2110
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2111 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2117, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %1, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %2, metadata !2119, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %3, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 %4, metadata !2121, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 %5, metadata !2122, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32* %6, metadata !2123, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %7, metadata !2124, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %8, metadata !2125, metadata !DIExpression()), !dbg !2179
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2180
  %18 = icmp eq i64 %17, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i1 %18, metadata !2126, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2179
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 0, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* null, metadata !2129, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 0, metadata !2130, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 %5, metadata !2132, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 1, metadata !2134, metadata !DIExpression()), !dbg !2179
  %19 = and i32 %5, 2, !dbg !2182
  %20 = icmp ne i32 %19, 0, !dbg !2182
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
  br label %36, !dbg !2182

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2183
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2184
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2185
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %43, metadata !2130, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %42, metadata !2129, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %41, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %40, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %39, metadata !2125, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %38, metadata !2124, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 %37, metadata !2121, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.label(metadata !2172), !dbg !2186
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2179
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
  ], !dbg !2187

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 5, metadata !2121, metadata !DIExpression()), !dbg !2179
  br label %111, !dbg !2188

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 5, metadata !2121, metadata !DIExpression()), !dbg !2179
  br i1 %45, label %111, label %51, !dbg !2188

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2189
  br i1 %52, label %111, label %53, !dbg !2193

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2189, !tbaa !730
  br label %111, !dbg !2189

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.112, i64 0, i64 0), metadata !437, metadata !DIExpression()) #35, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %37, metadata !438, metadata !DIExpression()) #35, !dbg !2194
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.112, i64 0, i64 0), i32 noundef 5) #35, !dbg !2198
  call void @llvm.dbg.value(metadata i8* %55, metadata !439, metadata !DIExpression()) #35, !dbg !2194
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.112, i64 0, i64 0), !dbg !2199
  br i1 %56, label %57, label %66, !dbg !2201

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2202
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2203
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !441, metadata !DIExpression()) #35, !dbg !2204
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2205, metadata !DIExpression()) #35, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %23, metadata !2213, metadata !DIExpression()) #35, !dbg !2218
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()) #35, !dbg !2218
  call void @llvm.dbg.value(metadata i64 8, metadata !2217, metadata !DIExpression()) #35, !dbg !2218
  store i64 0, i64* %13, align 8, !dbg !2220
  call void @llvm.dbg.value(metadata i32* %12, metadata !440, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2194
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2221
  %59 = icmp eq i64 %58, 3, !dbg !2223
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !440, metadata !DIExpression()) #35, !dbg !2194
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2224
  %63 = icmp eq i32 %37, 9, !dbg !2224
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !2224
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2224
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2225
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2194
  call void @llvm.dbg.value(metadata i8* %67, metadata !2124, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), metadata !437, metadata !DIExpression()) #35, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %37, metadata !438, metadata !DIExpression()) #35, !dbg !2226
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 noundef 5) #35, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %68, metadata !439, metadata !DIExpression()) #35, !dbg !2226
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !2229
  br i1 %69, label %70, label %79, !dbg !2230

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2232
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !441, metadata !DIExpression()) #35, !dbg !2233
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2205, metadata !DIExpression()) #35, !dbg !2234
  call void @llvm.dbg.value(metadata i8* %26, metadata !2213, metadata !DIExpression()) #35, !dbg !2236
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()) #35, !dbg !2236
  call void @llvm.dbg.value(metadata i64 8, metadata !2217, metadata !DIExpression()) #35, !dbg !2236
  store i64 0, i64* %11, align 8, !dbg !2238
  call void @llvm.dbg.value(metadata i32* %10, metadata !440, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2226
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2239
  %72 = icmp eq i64 %71, 3, !dbg !2240
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !440, metadata !DIExpression()) #35, !dbg !2226
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2241
  %76 = icmp eq i32 %37, 9, !dbg !2241
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !2241
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2241
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2242
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2125, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %80, metadata !2124, metadata !DIExpression()), !dbg !2179
  br i1 %45, label %97, label %82, !dbg !2243

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2136, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 0, metadata !2127, metadata !DIExpression()), !dbg !2179
  %83 = load i8, i8* %80, align 1, !dbg !2245, !tbaa !730
  %84 = icmp eq i8 %83, 0, !dbg !2247
  br i1 %84, label %97, label %85, !dbg !2247

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2136, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %88, metadata !2127, metadata !DIExpression()), !dbg !2179
  %89 = icmp ult i64 %88, %48, !dbg !2248
  br i1 %89, label %90, label %92, !dbg !2251

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2248
  store i8 %86, i8* %91, align 1, !dbg !2248, !tbaa !730
  br label %92, !dbg !2248

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %93, metadata !2127, metadata !DIExpression()), !dbg !2179
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %94, metadata !2136, metadata !DIExpression()), !dbg !2244
  %95 = load i8, i8* %94, align 1, !dbg !2245, !tbaa !730
  %96 = icmp eq i8 %95, 0, !dbg !2247
  br i1 %96, label %97, label %85, !dbg !2247, !llvm.loop !2253

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2255
  call void @llvm.dbg.value(metadata i64 %98, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 1, metadata !2131, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %81, metadata !2129, metadata !DIExpression()), !dbg !2179
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %99, metadata !2130, metadata !DIExpression()), !dbg !2179
  br label %111, !dbg !2257

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2131, metadata !DIExpression()), !dbg !2179
  br label %102, !dbg !2258

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2179
  br i1 %45, label %102, label %105, !dbg !2259

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 2, metadata !2121, metadata !DIExpression()), !dbg !2179
  br label %111, !dbg !2260

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 2, metadata !2121, metadata !DIExpression()), !dbg !2179
  br i1 %45, label %111, label %105, !dbg !2260

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2261
  br i1 %107, label %111, label %108, !dbg !2265

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2261, !tbaa !730
  br label %111, !dbg !2261

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2179
  br label %111, !dbg !2266

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2267
  unreachable, !dbg !2267

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2255
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.114, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %102 ], !dbg !2179
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2179
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2131, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %117, metadata !2130, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %116, metadata !2129, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %115, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %114, metadata !2125, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %113, metadata !2124, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 %112, metadata !2121, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 0, metadata !2141, metadata !DIExpression()), !dbg !2268
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
  br label %132, !dbg !2269

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2255
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2183
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2268
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %139, metadata !2141, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %135, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %134, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %133, metadata !2120, metadata !DIExpression()), !dbg !2179
  %141 = icmp eq i64 %133, -1, !dbg !2270
  br i1 %141, label %142, label %146, !dbg !2271

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2272
  %144 = load i8, i8* %143, align 1, !dbg !2272, !tbaa !730
  %145 = icmp eq i8 %144, 0, !dbg !2273
  br i1 %145, label %596, label %148, !dbg !2274

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2275
  br i1 %147, label %596, label %148, !dbg !2274

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2143, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 0, metadata !2147, metadata !DIExpression()), !dbg !2276
  br i1 %123, label %149, label %163, !dbg !2277

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2279
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2280
  br i1 %151, label %152, label %154, !dbg !2280

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %153, metadata !2120, metadata !DIExpression()), !dbg !2179
  br label %154, !dbg !2282

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2282
  call void @llvm.dbg.value(metadata i64 %155, metadata !2120, metadata !DIExpression()), !dbg !2179
  %156 = icmp ugt i64 %150, %155, !dbg !2283
  br i1 %156, label %163, label %157, !dbg !2284

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2285
  call void @llvm.dbg.value(metadata i8* %158, metadata !2286, metadata !DIExpression()) #35, !dbg !2291
  call void @llvm.dbg.value(metadata i8* %116, metadata !2289, metadata !DIExpression()) #35, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %117, metadata !2290, metadata !DIExpression()) #35, !dbg !2291
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2293
  %160 = icmp ne i32 %159, 0, !dbg !2294
  %161 = or i1 %160, %125, !dbg !2295
  %162 = xor i1 %160, true, !dbg !2295
  br i1 %161, label %163, label %647, !dbg !2295

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2143, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %164, metadata !2120, metadata !DIExpression()), !dbg !2179
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2296
  %167 = load i8, i8* %166, align 1, !dbg !2296, !tbaa !730
  call void @llvm.dbg.value(metadata i8 %167, metadata !2148, metadata !DIExpression()), !dbg !2276
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
  ], !dbg !2297

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2298

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2299

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2146, metadata !DIExpression()), !dbg !2276
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2303
  br i1 %171, label %188, label %172, !dbg !2303

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2305
  br i1 %173, label %174, label %176, !dbg !2309

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2305
  store i8 39, i8* %175, align 1, !dbg !2305, !tbaa !730
  br label %176, !dbg !2305

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %177, metadata !2127, metadata !DIExpression()), !dbg !2179
  %178 = icmp ult i64 %177, %140, !dbg !2310
  br i1 %178, label %179, label %181, !dbg !2313

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2310
  store i8 36, i8* %180, align 1, !dbg !2310, !tbaa !730
  br label %181, !dbg !2310

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %182, metadata !2127, metadata !DIExpression()), !dbg !2179
  %183 = icmp ult i64 %182, %140, !dbg !2314
  br i1 %183, label %184, label %186, !dbg !2317

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2314
  store i8 39, i8* %185, align 1, !dbg !2314, !tbaa !730
  br label %186, !dbg !2314

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %187, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 1, metadata !2135, metadata !DIExpression()), !dbg !2179
  br label %188, !dbg !2318

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2179
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %189, metadata !2127, metadata !DIExpression()), !dbg !2179
  %191 = icmp ult i64 %189, %140, !dbg !2319
  br i1 %191, label %192, label %194, !dbg !2322

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2319
  store i8 92, i8* %193, align 1, !dbg !2319, !tbaa !730
  br label %194, !dbg !2319

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %195, metadata !2127, metadata !DIExpression()), !dbg !2179
  br i1 %120, label %196, label %499, !dbg !2323

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2325
  %198 = icmp ult i64 %197, %164, !dbg !2326
  br i1 %198, label %199, label %456, !dbg !2327

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2328
  %201 = load i8, i8* %200, align 1, !dbg !2328, !tbaa !730
  %202 = add i8 %201, -48, !dbg !2329
  %203 = icmp ult i8 %202, 10, !dbg !2329
  br i1 %203, label %204, label %456, !dbg !2329

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2330
  br i1 %205, label %206, label %208, !dbg !2334

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2330
  store i8 48, i8* %207, align 1, !dbg !2330, !tbaa !730
  br label %208, !dbg !2330

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %209, metadata !2127, metadata !DIExpression()), !dbg !2179
  %210 = icmp ult i64 %209, %140, !dbg !2335
  br i1 %210, label %211, label %213, !dbg !2338

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2335
  store i8 48, i8* %212, align 1, !dbg !2335, !tbaa !730
  br label %213, !dbg !2335

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %214, metadata !2127, metadata !DIExpression()), !dbg !2179
  br label %456, !dbg !2339

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2340

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2341

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2342

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2344

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2346
  %221 = icmp ult i64 %220, %164, !dbg !2347
  br i1 %221, label %222, label %456, !dbg !2348

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2349
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2350
  %225 = load i8, i8* %224, align 1, !dbg !2350, !tbaa !730
  %226 = icmp eq i8 %225, 63, !dbg !2351
  br i1 %226, label %227, label %456, !dbg !2352

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2353
  %229 = load i8, i8* %228, align 1, !dbg !2353, !tbaa !730
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
  ], !dbg !2354

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2355

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2148, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %220, metadata !2141, metadata !DIExpression()), !dbg !2268
  %232 = icmp ult i64 %134, %140, !dbg !2357
  br i1 %232, label %233, label %235, !dbg !2360

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2357
  store i8 63, i8* %234, align 1, !dbg !2357, !tbaa !730
  br label %235, !dbg !2357

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %236, metadata !2127, metadata !DIExpression()), !dbg !2179
  %237 = icmp ult i64 %236, %140, !dbg !2361
  br i1 %237, label %238, label %240, !dbg !2364

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2361
  store i8 34, i8* %239, align 1, !dbg !2361, !tbaa !730
  br label %240, !dbg !2361

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %241, metadata !2127, metadata !DIExpression()), !dbg !2179
  %242 = icmp ult i64 %241, %140, !dbg !2365
  br i1 %242, label %243, label %245, !dbg !2368

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2365
  store i8 34, i8* %244, align 1, !dbg !2365, !tbaa !730
  br label %245, !dbg !2365

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %246, metadata !2127, metadata !DIExpression()), !dbg !2179
  %247 = icmp ult i64 %246, %140, !dbg !2369
  br i1 %247, label %248, label %250, !dbg !2372

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2369
  store i8 63, i8* %249, align 1, !dbg !2369, !tbaa !730
  br label %250, !dbg !2369

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %251, metadata !2127, metadata !DIExpression()), !dbg !2179
  br label %456, !dbg !2373

252:                                              ; preds = %163
  br label %263, !dbg !2374

253:                                              ; preds = %163
  br label %263, !dbg !2375

254:                                              ; preds = %163
  br label %261, !dbg !2376

255:                                              ; preds = %163
  br label %261, !dbg !2377

256:                                              ; preds = %163
  br label %263, !dbg !2378

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2379

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2380

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2383

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2385

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2386
  call void @llvm.dbg.label(metadata !2173), !dbg !2387
  br i1 %128, label %263, label %638, !dbg !2388

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2386
  call void @llvm.dbg.label(metadata !2175), !dbg !2390
  br i1 %118, label %510, label %467, !dbg !2391

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2392

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2393, !tbaa !730
  %268 = icmp eq i8 %267, 0, !dbg !2395
  br i1 %268, label %269, label %456, !dbg !2396

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2397
  br i1 %270, label %271, label %456, !dbg !2399

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2147, metadata !DIExpression()), !dbg !2276
  br label %272, !dbg !2400

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2147, metadata !DIExpression()), !dbg !2276
  br i1 %126, label %274, label %456, !dbg !2401

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2403

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 1, metadata !2147, metadata !DIExpression()), !dbg !2276
  br i1 %126, label %276, label %456, !dbg !2404

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2405

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2408
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2410
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2410
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %282, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %281, metadata !2128, metadata !DIExpression()), !dbg !2179
  %283 = icmp ult i64 %134, %282, !dbg !2411
  br i1 %283, label %284, label %286, !dbg !2414

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2411
  store i8 39, i8* %285, align 1, !dbg !2411, !tbaa !730
  br label %286, !dbg !2411

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %287, metadata !2127, metadata !DIExpression()), !dbg !2179
  %288 = icmp ult i64 %287, %282, !dbg !2415
  br i1 %288, label %289, label %291, !dbg !2418

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2415
  store i8 92, i8* %290, align 1, !dbg !2415, !tbaa !730
  br label %291, !dbg !2415

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %292, metadata !2127, metadata !DIExpression()), !dbg !2179
  %293 = icmp ult i64 %292, %282, !dbg !2419
  br i1 %293, label %294, label %296, !dbg !2422

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2419
  store i8 39, i8* %295, align 1, !dbg !2419, !tbaa !730
  br label %296, !dbg !2419

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %297, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2179
  br label %456, !dbg !2423

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2424

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2149, metadata !DIExpression()), !dbg !2425
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2426
  %301 = load i16*, i16** %300, align 8, !dbg !2426, !tbaa !625
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2426
  %304 = load i16, i16* %303, align 2, !dbg !2426, !tbaa !755
  %305 = and i16 %304, 16384, !dbg !2426
  %306 = icmp ne i16 %305, 0, !dbg !2428
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %349, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %312, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i1 %350, metadata !2147, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2276
  br label %352, !dbg !2429

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2430
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2153, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2205, metadata !DIExpression()) #35, !dbg !2432
  call void @llvm.dbg.value(metadata i8* %32, metadata !2213, metadata !DIExpression()) #35, !dbg !2434
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()) #35, !dbg !2434
  call void @llvm.dbg.value(metadata i64 8, metadata !2217, metadata !DIExpression()) #35, !dbg !2434
  store i64 0, i64* %14, align 8, !dbg !2436
  call void @llvm.dbg.value(metadata i64 0, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 1, metadata !2152, metadata !DIExpression()), !dbg !2425
  %308 = icmp eq i64 %164, -1, !dbg !2437
  br i1 %308, label %309, label %311, !dbg !2439

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %310, metadata !2120, metadata !DIExpression()), !dbg !2179
  br label %311, !dbg !2441

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2276
  call void @llvm.dbg.value(metadata i64 %312, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2442
  %313 = sub i64 %312, %139, !dbg !2443
  call void @llvm.dbg.value(metadata i32* %16, metadata !2156, metadata !DIExpression(DW_OP_deref)), !dbg !2444
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %314, metadata !2160, metadata !DIExpression()), !dbg !2444
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2446

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2149, metadata !DIExpression()), !dbg !2425
  %316 = icmp ugt i64 %312, %139, !dbg !2447
  br i1 %316, label %319, label %317, !dbg !2449

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 0, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %349, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %312, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i1 %350, metadata !2147, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2276
  br label %352, !dbg !2429

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2425
  br label %346, !dbg !2452

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2149, metadata !DIExpression()), !dbg !2425
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2454
  %323 = load i8, i8* %322, align 1, !dbg !2454, !tbaa !730
  %324 = icmp eq i8 %323, 0, !dbg !2449
  br i1 %324, label %348, label %325, !dbg !2455

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %326, metadata !2149, metadata !DIExpression()), !dbg !2425
  %327 = add i64 %326, %139, !dbg !2457
  %328 = icmp eq i64 %326, %313, !dbg !2447
  br i1 %328, label %348, label %319, !dbg !2449, !llvm.loop !2458

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2459
  call void @llvm.dbg.value(metadata i64 1, metadata !2161, metadata !DIExpression()), !dbg !2460
  br i1 %331, label %332, label %340, !dbg !2459

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2161, metadata !DIExpression()), !dbg !2460
  %334 = add i64 %333, %139, !dbg !2461
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2463
  %336 = load i8, i8* %335, align 1, !dbg !2463, !tbaa !730
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2464

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %338, metadata !2161, metadata !DIExpression()), !dbg !2460
  %339 = icmp eq i64 %338, %314, !dbg !2466
  br i1 %339, label %340, label %332, !dbg !2467, !llvm.loop !2468

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2470, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %341, metadata !2156, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %341, metadata !2472, metadata !DIExpression()) #35, !dbg !2480
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2482
  %343 = icmp ne i32 %342, 0, !dbg !2483
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %314, metadata !2149, metadata !DIExpression()), !dbg !2425
  br label %348, !dbg !2484

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 0, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2451
  call void @llvm.dbg.label(metadata !2178), !dbg !2485
  %345 = select i1 %118, i32 4, i32 2, !dbg !2486
  br label %643, !dbg !2486

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 0, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %349, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %312, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i1 %350, metadata !2147, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2276
  br label %352, !dbg !2429

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2152, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 0, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %349, metadata !2149, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %312, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i1 %350, metadata !2147, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2276
  %351 = icmp ugt i64 %349, 1, !dbg !2488
  br i1 %351, label %357, label %352, !dbg !2429

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2489
  br i1 %356, label %456, label %357, !dbg !2489

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %361, metadata !2169, metadata !DIExpression()), !dbg !2491
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2492

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2179
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2268
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2493
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2276
  call void @llvm.dbg.value(metadata i8 %369, metadata !2148, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %368, metadata !2146, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2143, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %366, metadata !2141, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %364, metadata !2127, metadata !DIExpression()), !dbg !2179
  br i1 %362, label %414, label %370, !dbg !2494

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2499

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2146, metadata !DIExpression()), !dbg !2276
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2502
  br i1 %372, label %389, label %373, !dbg !2502

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2504
  br i1 %374, label %375, label %377, !dbg !2508

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2504
  store i8 39, i8* %376, align 1, !dbg !2504, !tbaa !730
  br label %377, !dbg !2504

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %378, metadata !2127, metadata !DIExpression()), !dbg !2179
  %379 = icmp ult i64 %378, %140, !dbg !2509
  br i1 %379, label %380, label %382, !dbg !2512

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2509
  store i8 36, i8* %381, align 1, !dbg !2509, !tbaa !730
  br label %382, !dbg !2509

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %383, metadata !2127, metadata !DIExpression()), !dbg !2179
  %384 = icmp ult i64 %383, %140, !dbg !2513
  br i1 %384, label %385, label %387, !dbg !2516

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2513
  store i8 39, i8* %386, align 1, !dbg !2513, !tbaa !730
  br label %387, !dbg !2513

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %388, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 1, metadata !2135, metadata !DIExpression()), !dbg !2179
  br label %389, !dbg !2517

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2179
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %390, metadata !2127, metadata !DIExpression()), !dbg !2179
  %392 = icmp ult i64 %390, %140, !dbg !2518
  br i1 %392, label %393, label %395, !dbg !2521

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2518
  store i8 92, i8* %394, align 1, !dbg !2518, !tbaa !730
  br label %395, !dbg !2518

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %396, metadata !2127, metadata !DIExpression()), !dbg !2179
  %397 = icmp ult i64 %396, %140, !dbg !2522
  br i1 %397, label %398, label %402, !dbg !2525

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2522
  %400 = or i8 %399, 48, !dbg !2522
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2522
  store i8 %400, i8* %401, align 1, !dbg !2522, !tbaa !730
  br label %402, !dbg !2522

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %403, metadata !2127, metadata !DIExpression()), !dbg !2179
  %404 = icmp ult i64 %403, %140, !dbg !2526
  br i1 %404, label %405, label %410, !dbg !2529

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2526
  %407 = and i8 %406, 7, !dbg !2526
  %408 = or i8 %407, 48, !dbg !2526
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2526
  store i8 %408, i8* %409, align 1, !dbg !2526, !tbaa !730
  br label %410, !dbg !2526

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %411, metadata !2127, metadata !DIExpression()), !dbg !2179
  %412 = and i8 %369, 7, !dbg !2530
  %413 = or i8 %412, 48, !dbg !2531
  call void @llvm.dbg.value(metadata i8 %413, metadata !2148, metadata !DIExpression()), !dbg !2276
  br label %421, !dbg !2532

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2533

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2534
  br i1 %416, label %417, label %419, !dbg !2539

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2534
  store i8 92, i8* %418, align 1, !dbg !2534, !tbaa !730
  br label %419, !dbg !2534

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %420, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2143, metadata !DIExpression()), !dbg !2276
  br label %421, !dbg !2540

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2179
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2276
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2276
  call void @llvm.dbg.value(metadata i8 %426, metadata !2148, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %425, metadata !2146, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2143, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %422, metadata !2127, metadata !DIExpression()), !dbg !2179
  %427 = add i64 %366, 1, !dbg !2541
  %428 = icmp ugt i64 %361, %427, !dbg !2543
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2544

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2545
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2545
  br i1 %432, label %433, label %444, !dbg !2545

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2548
  br i1 %434, label %435, label %437, !dbg !2552

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2548
  store i8 39, i8* %436, align 1, !dbg !2548, !tbaa !730
  br label %437, !dbg !2548

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %438, metadata !2127, metadata !DIExpression()), !dbg !2179
  %439 = icmp ult i64 %438, %140, !dbg !2553
  br i1 %439, label %440, label %442, !dbg !2556

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2553
  store i8 39, i8* %441, align 1, !dbg !2553, !tbaa !730
  br label %442, !dbg !2553

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %443, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2179
  br label %444, !dbg !2557

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2558
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %445, metadata !2127, metadata !DIExpression()), !dbg !2179
  %447 = icmp ult i64 %445, %140, !dbg !2559
  br i1 %447, label %448, label %450, !dbg !2562

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2559
  store i8 %426, i8* %449, align 1, !dbg !2559, !tbaa !730
  br label %450, !dbg !2559

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %451, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %427, metadata !2141, metadata !DIExpression()), !dbg !2268
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2563
  %453 = load i8, i8* %452, align 1, !dbg !2563, !tbaa !730
  call void @llvm.dbg.value(metadata i8 %453, metadata !2148, metadata !DIExpression()), !dbg !2276
  br label %363, !dbg !2564, !llvm.loop !2565

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2148, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i1 %358, metadata !2147, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %425, metadata !2146, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2143, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %366, metadata !2141, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %422, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %360, metadata !2120, metadata !DIExpression()), !dbg !2179
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2568
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2179
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2183
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2268
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2276
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %465, metadata !2148, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2143, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %462, metadata !2141, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %459, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %458, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %457, metadata !2120, metadata !DIExpression()), !dbg !2179
  br i1 %121, label %478, label %467, !dbg !2569

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
  br i1 %131, label %479, label %499, !dbg !2571

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2572

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
  %490 = lshr i8 %481, 5, !dbg !2573
  %491 = zext i8 %490 to i64, !dbg !2573
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2574
  %493 = load i32, i32* %492, align 4, !dbg !2574, !tbaa !721
  %494 = and i8 %481, 31, !dbg !2575
  %495 = zext i8 %494 to i32, !dbg !2575
  %496 = shl nuw i32 1, %495, !dbg !2576
  %497 = and i32 %493, %496, !dbg !2576
  %498 = icmp eq i32 %497, 0, !dbg !2576
  br i1 %498, label %499, label %510, !dbg !2577

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
  br i1 %165, label %510, label %546, !dbg !2578

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2568
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2179
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2183
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2579
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2276
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %518, metadata !2148, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %516, metadata !2141, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %513, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %512, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %511, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.label(metadata !2176), !dbg !2580
  br i1 %119, label %638, label %520, !dbg !2581

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2146, metadata !DIExpression()), !dbg !2276
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2583
  br i1 %521, label %538, label %522, !dbg !2583

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2585
  br i1 %523, label %524, label %526, !dbg !2589

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2585
  store i8 39, i8* %525, align 1, !dbg !2585, !tbaa !730
  br label %526, !dbg !2585

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %527, metadata !2127, metadata !DIExpression()), !dbg !2179
  %528 = icmp ult i64 %527, %519, !dbg !2590
  br i1 %528, label %529, label %531, !dbg !2593

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2590
  store i8 36, i8* %530, align 1, !dbg !2590, !tbaa !730
  br label %531, !dbg !2590

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %532, metadata !2127, metadata !DIExpression()), !dbg !2179
  %533 = icmp ult i64 %532, %519, !dbg !2594
  br i1 %533, label %534, label %536, !dbg !2597

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2594
  store i8 39, i8* %535, align 1, !dbg !2594, !tbaa !730
  br label %536, !dbg !2594

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %537, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 1, metadata !2135, metadata !DIExpression()), !dbg !2179
  br label %538, !dbg !2598

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2276
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %539, metadata !2127, metadata !DIExpression()), !dbg !2179
  %541 = icmp ult i64 %539, %519, !dbg !2599
  br i1 %541, label %542, label %544, !dbg !2602

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2599
  store i8 92, i8* %543, align 1, !dbg !2599, !tbaa !730
  br label %544, !dbg !2599

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %556, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %555, metadata !2148, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %552, metadata !2141, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %549, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %548, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %547, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.label(metadata !2177), !dbg !2603
  br label %570, !dbg !2604

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2568
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2179
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2183
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2579
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2607
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %555, metadata !2148, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %552, metadata !2141, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %549, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %548, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %547, metadata !2120, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.label(metadata !2177), !dbg !2603
  %557 = xor i1 %551, true, !dbg !2604
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2604
  br i1 %558, label %570, label %559, !dbg !2604

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2608
  br i1 %560, label %561, label %563, !dbg !2612

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2608
  store i8 39, i8* %562, align 1, !dbg !2608, !tbaa !730
  br label %563, !dbg !2608

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %564, metadata !2127, metadata !DIExpression()), !dbg !2179
  %565 = icmp ult i64 %564, %556, !dbg !2613
  br i1 %565, label %566, label %568, !dbg !2616

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2613
  store i8 39, i8* %567, align 1, !dbg !2613, !tbaa !730
  br label %568, !dbg !2613

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %569, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2179
  br label %570, !dbg !2617

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2276
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %578, metadata !2127, metadata !DIExpression()), !dbg !2179
  %580 = icmp ult i64 %578, %571, !dbg !2618
  br i1 %580, label %581, label %583, !dbg !2621

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2618
  store i8 %572, i8* %582, align 1, !dbg !2618, !tbaa !730
  br label %583, !dbg !2618

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %584, metadata !2127, metadata !DIExpression()), !dbg !2179
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2622
  call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2179
  br label %586, !dbg !2623

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2568
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2179
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2183
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2579
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %593, metadata !2141, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %589, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %588, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %587, metadata !2120, metadata !DIExpression()), !dbg !2179
  %595 = add i64 %593, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %595, metadata !2141, metadata !DIExpression()), !dbg !2268
  br label %132, !dbg !2625, !llvm.loop !2626

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2118, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 undef, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 undef, metadata !2127, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 undef, metadata !2120, metadata !DIExpression()), !dbg !2179
  %597 = icmp eq i64 %134, 0, !dbg !2628
  %598 = and i1 %126, %597, !dbg !2630
  %599 = and i1 %598, %119, !dbg !2630
  br i1 %599, label %638, label %600, !dbg !2630

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2631
  %602 = or i1 %119, %601, !dbg !2631
  %603 = xor i1 %136, true, !dbg !2631
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2631
  br i1 %604, label %612, label %605, !dbg !2631

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2633

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2635
  br label %653, !dbg !2637

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2638
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2640
  br i1 %611, label %36, label %612, !dbg !2640

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2641
  %615 = or i1 %614, %613, !dbg !2643
  br i1 %615, label %631, label %616, !dbg !2643

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2129, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %134, metadata !2127, metadata !DIExpression()), !dbg !2179
  %617 = load i8, i8* %116, align 1, !dbg !2644, !tbaa !730
  %618 = icmp eq i8 %617, 0, !dbg !2647
  br i1 %618, label %631, label %619, !dbg !2647

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2129, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %622, metadata !2127, metadata !DIExpression()), !dbg !2179
  %623 = icmp ult i64 %622, %140, !dbg !2648
  br i1 %623, label %624, label %626, !dbg !2651

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2648
  store i8 %620, i8* %625, align 1, !dbg !2648, !tbaa !730
  br label %626, !dbg !2648

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %627, metadata !2127, metadata !DIExpression()), !dbg !2179
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %628, metadata !2129, metadata !DIExpression()), !dbg !2179
  %629 = load i8, i8* %628, align 1, !dbg !2644, !tbaa !730
  %630 = icmp eq i8 %629, 0, !dbg !2647
  br i1 %630, label %631, label %619, !dbg !2647, !llvm.loop !2653

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2255
  call void @llvm.dbg.value(metadata i64 %632, metadata !2127, metadata !DIExpression()), !dbg !2179
  %633 = icmp ult i64 %632, %140, !dbg !2655
  br i1 %633, label %634, label %653, !dbg !2657

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2658
  store i8 0, i8* %635, align 1, !dbg !2659, !tbaa !730
  br label %653, !dbg !2658

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2178), !dbg !2485
  %637 = icmp eq i32 %112, 2, !dbg !2660
  br i1 %637, label %643, label %647, !dbg !2486

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2178), !dbg !2485
  %641 = icmp eq i32 %112, 2, !dbg !2660
  %642 = select i1 %118, i32 4, i32 2, !dbg !2486
  br i1 %641, label %643, label %647, !dbg !2486

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2486

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2121, metadata !DIExpression()), !dbg !2179
  %651 = and i32 %5, -3, !dbg !2661
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2662
  br label %653, !dbg !2663

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2664
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2665 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2667 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 %1, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()) #35, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()) #35, !dbg !2688
  call void @llvm.dbg.value(metadata i64* null, metadata !2681, metadata !DIExpression()) #35, !dbg !2688
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2682, metadata !DIExpression()) #35, !dbg !2688
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2690
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2690
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2683, metadata !DIExpression()) #35, !dbg !2688
  %6 = tail call i32* @__errno_location() #38, !dbg !2691
  %7 = load i32, i32* %6, align 4, !dbg !2691, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %7, metadata !2684, metadata !DIExpression()) #35, !dbg !2688
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2692
  %9 = load i32, i32* %8, align 4, !dbg !2692, !tbaa !2061
  %10 = or i32 %9, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %10, metadata !2685, metadata !DIExpression()) #35, !dbg !2688
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2694
  %12 = load i32, i32* %11, align 8, !dbg !2694, !tbaa !2010
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2695
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2696
  %15 = load i8*, i8** %14, align 8, !dbg !2696, !tbaa !2083
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2697
  %17 = load i8*, i8** %16, align 8, !dbg !2697, !tbaa !2086
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2698
  %19 = add i64 %18, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %19, metadata !2686, metadata !DIExpression()) #35, !dbg !2688
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #40, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %20, metadata !2687, metadata !DIExpression()) #35, !dbg !2688
  %21 = load i32, i32* %11, align 8, !dbg !2701, !tbaa !2010
  %22 = load i8*, i8** %14, align 8, !dbg !2702, !tbaa !2083
  %23 = load i8*, i8** %16, align 8, !dbg !2703, !tbaa !2086
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2704
  store i32 %7, i32* %6, align 4, !dbg !2705, !tbaa !721
  ret i8* %20, !dbg !2706
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2676 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64* %2, metadata !2681, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2682, metadata !DIExpression()), !dbg !2707
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2708
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2683, metadata !DIExpression()), !dbg !2707
  %7 = tail call i32* @__errno_location() #38, !dbg !2709
  %8 = load i32, i32* %7, align 4, !dbg !2709, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %8, metadata !2684, metadata !DIExpression()), !dbg !2707
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2710
  %10 = load i32, i32* %9, align 4, !dbg !2710, !tbaa !2061
  %11 = icmp eq i64* %2, null, !dbg !2711
  %12 = zext i1 %11 to i32, !dbg !2711
  %13 = or i32 %10, %12, !dbg !2712
  call void @llvm.dbg.value(metadata i32 %13, metadata !2685, metadata !DIExpression()), !dbg !2707
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2713
  %15 = load i32, i32* %14, align 8, !dbg !2713, !tbaa !2010
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2714
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2715
  %18 = load i8*, i8** %17, align 8, !dbg !2715, !tbaa !2083
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2716
  %20 = load i8*, i8** %19, align 8, !dbg !2716, !tbaa !2086
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2717
  %22 = add i64 %21, 1, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %22, metadata !2686, metadata !DIExpression()), !dbg !2707
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #40, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %23, metadata !2687, metadata !DIExpression()), !dbg !2707
  %24 = load i32, i32* %14, align 8, !dbg !2720, !tbaa !2010
  %25 = load i8*, i8** %17, align 8, !dbg !2721, !tbaa !2083
  %26 = load i8*, i8** %19, align 8, !dbg !2722, !tbaa !2086
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2723
  store i32 %8, i32* %7, align 4, !dbg !2724, !tbaa !721
  br i1 %11, label %29, label %28, !dbg !2725

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2726, !tbaa !855
  br label %29, !dbg !2728

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2730 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2735, !tbaa !625
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2732, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 1, metadata !2733, metadata !DIExpression()), !dbg !2737
  %2 = load i32, i32* @nslots, align 4, !tbaa !721
  call void @llvm.dbg.value(metadata i32 1, metadata !2733, metadata !DIExpression()), !dbg !2737
  %3 = icmp sgt i32 %2, 1, !dbg !2738
  br i1 %3, label %4, label %6, !dbg !2740

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2738
  br label %10, !dbg !2740

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2741
  %8 = load i8*, i8** %7, align 8, !dbg !2741, !tbaa !2743
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2745
  br i1 %9, label %17, label %16, !dbg !2746

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2733, metadata !DIExpression()), !dbg !2737
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2747
  %13 = load i8*, i8** %12, align 8, !dbg !2747, !tbaa !2743
  tail call void @free(i8* noundef %13) #35, !dbg !2748
  %14 = add nuw nsw i64 %11, 1, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %14, metadata !2733, metadata !DIExpression()), !dbg !2737
  %15 = icmp eq i64 %14, %5, !dbg !2738
  br i1 %15, label %6, label %10, !dbg !2740, !llvm.loop !2750

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2752
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2754, !tbaa !2755
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2756, !tbaa !2743
  br label %17, !dbg !2757

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2758
  br i1 %18, label %21, label %19, !dbg !2760

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2761
  tail call void @free(i8* noundef %20) #35, !dbg !2763
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2764, !tbaa !625
  br label %21, !dbg !2765

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2766, !tbaa !721
  ret void, !dbg !2767
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %1, metadata !2771, metadata !DIExpression()), !dbg !2772
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2773
  ret i8* %3, !dbg !2774
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2775 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %1, metadata !2780, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %2, metadata !2781, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2782, metadata !DIExpression()), !dbg !2795
  %6 = tail call i32* @__errno_location() #38, !dbg !2796
  %7 = load i32, i32* %6, align 4, !dbg !2796, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %7, metadata !2783, metadata !DIExpression()), !dbg !2795
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2797, !tbaa !625
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2784, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2785, metadata !DIExpression()), !dbg !2795
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2798
  br i1 %9, label %10, label %11, !dbg !2798

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2800
  unreachable, !dbg !2800

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2801, !tbaa !721
  %13 = icmp sgt i32 %12, %0, !dbg !2802
  br i1 %13, label %36, label %14, !dbg !2803

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2804
  call void @llvm.dbg.value(metadata i1 %15, metadata !2786, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2805
  %16 = bitcast i64* %5 to i8*, !dbg !2806
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2806
  %17 = sext i32 %12 to i64, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %17, metadata !2789, metadata !DIExpression()), !dbg !2805
  store i64 %17, i64* %5, align 8, !dbg !2808, !tbaa !855
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2809
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2809
  %20 = add nuw nsw i32 %0, 1, !dbg !2810
  %21 = sub i32 %20, %12, !dbg !2811
  %22 = sext i32 %21 to i64, !dbg !2812
  call void @llvm.dbg.value(metadata i64* %5, metadata !2789, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2813
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2813
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2784, metadata !DIExpression()), !dbg !2795
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2814, !tbaa !625
  br i1 %15, label %25, label %26, !dbg !2815

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2816, !tbaa.struct !2818
  br label %26, !dbg !2819

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2820, !tbaa !721
  %28 = sext i32 %27 to i64, !dbg !2821
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2821
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2822
  %31 = load i64, i64* %5, align 8, !dbg !2823, !tbaa !855
  call void @llvm.dbg.value(metadata i64 %31, metadata !2789, metadata !DIExpression()), !dbg !2805
  %32 = sub nsw i64 %31, %28, !dbg !2824
  %33 = shl i64 %32, 4, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %30, metadata !2213, metadata !DIExpression()) #35, !dbg !2826
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()) #35, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %33, metadata !2217, metadata !DIExpression()) #35, !dbg !2826
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2828
  %34 = load i64, i64* %5, align 8, !dbg !2829, !tbaa !855
  call void @llvm.dbg.value(metadata i64 %34, metadata !2789, metadata !DIExpression()), !dbg !2805
  %35 = trunc i64 %34 to i32, !dbg !2829
  store i32 %35, i32* @nslots, align 4, !dbg !2830, !tbaa !721
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2831
  br label %36, !dbg !2832

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2795
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2784, metadata !DIExpression()), !dbg !2795
  %38 = zext i32 %0 to i64, !dbg !2833
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2834
  %40 = load i64, i64* %39, align 8, !dbg !2834, !tbaa !2755
  call void @llvm.dbg.value(metadata i64 %40, metadata !2790, metadata !DIExpression()), !dbg !2835
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2836
  %42 = load i8*, i8** %41, align 8, !dbg !2836, !tbaa !2743
  call void @llvm.dbg.value(metadata i8* %42, metadata !2792, metadata !DIExpression()), !dbg !2835
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2837
  %44 = load i32, i32* %43, align 4, !dbg !2837, !tbaa !2061
  %45 = or i32 %44, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %45, metadata !2793, metadata !DIExpression()), !dbg !2835
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2839
  %47 = load i32, i32* %46, align 8, !dbg !2839, !tbaa !2010
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2840
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2841
  %50 = load i8*, i8** %49, align 8, !dbg !2841, !tbaa !2083
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2842
  %52 = load i8*, i8** %51, align 8, !dbg !2842, !tbaa !2086
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %53, metadata !2794, metadata !DIExpression()), !dbg !2835
  %54 = icmp ugt i64 %40, %53, !dbg !2844
  br i1 %54, label %65, label %55, !dbg !2846

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %56, metadata !2790, metadata !DIExpression()), !dbg !2835
  store i64 %56, i64* %39, align 8, !dbg !2849, !tbaa !2755
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2850
  br i1 %57, label %59, label %58, !dbg !2852

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2853
  br label %59, !dbg !2853

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #40, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %60, metadata !2792, metadata !DIExpression()), !dbg !2835
  store i8* %60, i8** %41, align 8, !dbg !2855, !tbaa !2743
  %61 = load i32, i32* %46, align 8, !dbg !2856, !tbaa !2010
  %62 = load i8*, i8** %49, align 8, !dbg !2857, !tbaa !2083
  %63 = load i8*, i8** %51, align 8, !dbg !2858, !tbaa !2086
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2859
  br label %65, !dbg !2860

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2835
  call void @llvm.dbg.value(metadata i8* %66, metadata !2792, metadata !DIExpression()), !dbg !2835
  store i32 %7, i32* %6, align 4, !dbg !2861, !tbaa !721
  ret i8* %66, !dbg !2862
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8* %1, metadata !2868, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %2, metadata !2869, metadata !DIExpression()), !dbg !2870
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2871
  ret i8* %4, !dbg !2872
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2873 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 0, metadata !2770, metadata !DIExpression()) #35, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %0, metadata !2771, metadata !DIExpression()) #35, !dbg !2877
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2879
  ret i8* %2, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2881 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %1, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 0, metadata !2867, metadata !DIExpression()) #35, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()) #35, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %1, metadata !2869, metadata !DIExpression()) #35, !dbg !2888
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2890
  ret i8* %3, !dbg !2891
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2892 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2896, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 %1, metadata !2897, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %2, metadata !2898, metadata !DIExpression()), !dbg !2900
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2901
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2901
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2899, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %1, metadata !2907, metadata !DIExpression()) #35, !dbg !2913
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2912, metadata !DIExpression()) #35, !dbg !2915
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2915, !alias.scope !2903
  %6 = icmp eq i32 %1, 10, !dbg !2916
  br i1 %6, label %7, label %8, !dbg !2918

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2919, !noalias !2903
  unreachable, !dbg !2919

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2920
  store i32 %1, i32* %9, align 8, !dbg !2921, !tbaa !2010, !alias.scope !2903
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2922
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2923
  ret i8* %10, !dbg !2924
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2925 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2929, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %1, metadata !2930, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* %2, metadata !2931, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %3, metadata !2932, metadata !DIExpression()), !dbg !2934
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2935
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2935
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2933, metadata !DIExpression()), !dbg !2936
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2937), !dbg !2940
  call void @llvm.dbg.value(metadata i32 %1, metadata !2907, metadata !DIExpression()) #35, !dbg !2941
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2912, metadata !DIExpression()) #35, !dbg !2943
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !2943, !alias.scope !2937
  %7 = icmp eq i32 %1, 10, !dbg !2944
  br i1 %7, label %8, label %9, !dbg !2945

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2946, !noalias !2937
  unreachable, !dbg !2946

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2947
  store i32 %1, i32* %10, align 8, !dbg !2948, !tbaa !2010, !alias.scope !2937
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2950
  ret i8* %11, !dbg !2951
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2952 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8* %1, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i32 0, metadata !2896, metadata !DIExpression()) #35, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %0, metadata !2897, metadata !DIExpression()) #35, !dbg !2959
  call void @llvm.dbg.value(metadata i8* %1, metadata !2898, metadata !DIExpression()) #35, !dbg !2959
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2961
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2899, metadata !DIExpression()) #35, !dbg !2962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2963) #35, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()) #35, !dbg !2967
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2912, metadata !DIExpression()) #35, !dbg !2969
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !2969, !alias.scope !2963
  %5 = icmp eq i32 %0, 10, !dbg !2970
  br i1 %5, label %6, label %7, !dbg !2971

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2972, !noalias !2963
  unreachable, !dbg !2972

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2973
  store i32 %0, i32* %8, align 8, !dbg !2974, !tbaa !2010, !alias.scope !2963
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2975
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2976
  ret i8* %9, !dbg !2977
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2978 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* %1, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %2, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 0, metadata !2929, metadata !DIExpression()) #35, !dbg !2986
  call void @llvm.dbg.value(metadata i32 %0, metadata !2930, metadata !DIExpression()) #35, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()) #35, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %2, metadata !2932, metadata !DIExpression()) #35, !dbg !2986
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2988
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2988
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2933, metadata !DIExpression()) #35, !dbg !2989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2990) #35, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()) #35, !dbg !2994
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2912, metadata !DIExpression()) #35, !dbg !2996
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2996, !alias.scope !2990
  %6 = icmp eq i32 %0, 10, !dbg !2997
  br i1 %6, label %7, label %8, !dbg !2998

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2999, !noalias !2990
  unreachable, !dbg !2999

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3000
  store i32 %0, i32* %9, align 8, !dbg !3001, !tbaa !2010, !alias.scope !2990
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3002
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3003
  ret i8* %10, !dbg !3004
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3005 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8 %2, metadata !3011, metadata !DIExpression()), !dbg !3013
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3014
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3014
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3012, metadata !DIExpression()), !dbg !3015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3016, !tbaa.struct !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2028, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8 %2, metadata !2029, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 1, metadata !2030, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8 %2, metadata !2031, metadata !DIExpression()), !dbg !3018
  %6 = lshr i8 %2, 5, !dbg !3020
  %7 = zext i8 %6 to i64, !dbg !3020
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3021
  call void @llvm.dbg.value(metadata i32* %8, metadata !2032, metadata !DIExpression()), !dbg !3018
  %9 = and i8 %2, 31, !dbg !3022
  %10 = zext i8 %9 to i32, !dbg !3022
  call void @llvm.dbg.value(metadata i32 %10, metadata !2034, metadata !DIExpression()), !dbg !3018
  %11 = load i32, i32* %8, align 4, !dbg !3023, !tbaa !721
  %12 = lshr i32 %11, %10, !dbg !3024
  %13 = and i32 %12, 1, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %13, metadata !2035, metadata !DIExpression()), !dbg !3018
  %14 = xor i32 %13, 1, !dbg !3026
  %15 = shl i32 %14, %10, !dbg !3027
  %16 = xor i32 %15, %11, !dbg !3028
  store i32 %16, i32* %8, align 4, !dbg !3028, !tbaa !721
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3029
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3030
  ret i8* %17, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3032 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 %1, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()) #35, !dbg !3039
  call void @llvm.dbg.value(metadata i64 -1, metadata !3010, metadata !DIExpression()) #35, !dbg !3039
  call void @llvm.dbg.value(metadata i8 %1, metadata !3011, metadata !DIExpression()) #35, !dbg !3039
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3041
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3041
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3012, metadata !DIExpression()) #35, !dbg !3042
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3043, !tbaa.struct !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2028, metadata !DIExpression()) #35, !dbg !3044
  call void @llvm.dbg.value(metadata i8 %1, metadata !2029, metadata !DIExpression()) #35, !dbg !3044
  call void @llvm.dbg.value(metadata i32 1, metadata !2030, metadata !DIExpression()) #35, !dbg !3044
  call void @llvm.dbg.value(metadata i8 %1, metadata !2031, metadata !DIExpression()) #35, !dbg !3044
  %5 = lshr i8 %1, 5, !dbg !3046
  %6 = zext i8 %5 to i64, !dbg !3046
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3047
  call void @llvm.dbg.value(metadata i32* %7, metadata !2032, metadata !DIExpression()) #35, !dbg !3044
  %8 = and i8 %1, 31, !dbg !3048
  %9 = zext i8 %8 to i32, !dbg !3048
  call void @llvm.dbg.value(metadata i32 %9, metadata !2034, metadata !DIExpression()) #35, !dbg !3044
  %10 = load i32, i32* %7, align 4, !dbg !3049, !tbaa !721
  %11 = lshr i32 %10, %9, !dbg !3050
  %12 = and i32 %11, 1, !dbg !3051
  call void @llvm.dbg.value(metadata i32 %12, metadata !2035, metadata !DIExpression()) #35, !dbg !3044
  %13 = xor i32 %12, 1, !dbg !3052
  %14 = shl i32 %13, %9, !dbg !3053
  %15 = xor i32 %14, %10, !dbg !3054
  store i32 %15, i32* %7, align 4, !dbg !3054, !tbaa !721
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3055
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3056
  ret i8* %16, !dbg !3057
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3058 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3060, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()) #35, !dbg !3062
  call void @llvm.dbg.value(metadata i8 58, metadata !3037, metadata !DIExpression()) #35, !dbg !3062
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()) #35, !dbg !3064
  call void @llvm.dbg.value(metadata i64 -1, metadata !3010, metadata !DIExpression()) #35, !dbg !3064
  call void @llvm.dbg.value(metadata i8 58, metadata !3011, metadata !DIExpression()) #35, !dbg !3064
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3066
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3066
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3012, metadata !DIExpression()) #35, !dbg !3067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3068, !tbaa.struct !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2028, metadata !DIExpression()) #35, !dbg !3069
  call void @llvm.dbg.value(metadata i8 58, metadata !2029, metadata !DIExpression()) #35, !dbg !3069
  call void @llvm.dbg.value(metadata i32 1, metadata !2030, metadata !DIExpression()) #35, !dbg !3069
  call void @llvm.dbg.value(metadata i8 58, metadata !2031, metadata !DIExpression()) #35, !dbg !3069
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3071
  call void @llvm.dbg.value(metadata i32* %4, metadata !2032, metadata !DIExpression()) #35, !dbg !3069
  call void @llvm.dbg.value(metadata i32 26, metadata !2034, metadata !DIExpression()) #35, !dbg !3069
  %5 = load i32, i32* %4, align 4, !dbg !3072, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %5, metadata !2035, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3069
  %6 = or i32 %5, 67108864, !dbg !3073
  store i32 %6, i32* %4, align 4, !dbg !3073, !tbaa !721
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3074
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3075
  ret i8* %7, !dbg !3076
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3077 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3079, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()) #35, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()) #35, !dbg !3082
  call void @llvm.dbg.value(metadata i8 58, metadata !3011, metadata !DIExpression()) #35, !dbg !3082
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3084
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3084
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3012, metadata !DIExpression()) #35, !dbg !3085
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3086, !tbaa.struct !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2028, metadata !DIExpression()) #35, !dbg !3087
  call void @llvm.dbg.value(metadata i8 58, metadata !2029, metadata !DIExpression()) #35, !dbg !3087
  call void @llvm.dbg.value(metadata i32 1, metadata !2030, metadata !DIExpression()) #35, !dbg !3087
  call void @llvm.dbg.value(metadata i8 58, metadata !2031, metadata !DIExpression()) #35, !dbg !3087
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3089
  call void @llvm.dbg.value(metadata i32* %5, metadata !2032, metadata !DIExpression()) #35, !dbg !3087
  call void @llvm.dbg.value(metadata i32 26, metadata !2034, metadata !DIExpression()) #35, !dbg !3087
  %6 = load i32, i32* %5, align 4, !dbg !3090, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %6, metadata !2035, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3087
  %7 = or i32 %6, 67108864, !dbg !3091
  store i32 %7, i32* %5, align 4, !dbg !3091, !tbaa !721
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3092
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3093
  ret i8* %8, !dbg !3094
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3095 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3097, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 %1, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8* %2, metadata !3099, metadata !DIExpression()), !dbg !3101
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3102
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3100, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 %1, metadata !2907, metadata !DIExpression()) #35, !dbg !3104
  call void @llvm.dbg.value(metadata i32 0, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3104
  %6 = icmp eq i32 %1, 10, !dbg !3106
  br i1 %6, label %7, label %8, !dbg !3107

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3108, !noalias !3109
  unreachable, !dbg !3108

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2912, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3104
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3112
  store i32 %1, i32* %9, align 8, !dbg !3112, !tbaa.struct !3017
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3112
  %11 = bitcast i32* %10 to i8*, !dbg !3112
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2028, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8 58, metadata !2029, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 1, metadata !2030, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8 58, metadata !2031, metadata !DIExpression()), !dbg !3113
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3115
  call void @llvm.dbg.value(metadata i32* %12, metadata !2032, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 26, metadata !2034, metadata !DIExpression()), !dbg !3113
  %13 = load i32, i32* %12, align 4, !dbg !3116, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %13, metadata !2035, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3113
  %14 = or i32 %13, 67108864, !dbg !3117
  store i32 %14, i32* %12, align 4, !dbg !3117, !tbaa !721
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3118
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3119
  ret i8* %15, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3121 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8* %1, metadata !3126, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8* %2, metadata !3127, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8* %3, metadata !3128, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i32 %0, metadata !3130, metadata !DIExpression()) #35, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %1, metadata !3135, metadata !DIExpression()) #35, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %2, metadata !3136, metadata !DIExpression()) #35, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %3, metadata !3137, metadata !DIExpression()) #35, !dbg !3140
  call void @llvm.dbg.value(metadata i64 -1, metadata !3138, metadata !DIExpression()) #35, !dbg !3140
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3142
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3142
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3139, metadata !DIExpression()) #35, !dbg !3143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3144, !tbaa.struct !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2068, metadata !DIExpression()) #35, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %1, metadata !2069, metadata !DIExpression()) #35, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %2, metadata !2070, metadata !DIExpression()) #35, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2068, metadata !DIExpression()) #35, !dbg !3145
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3147
  store i32 10, i32* %7, align 8, !dbg !3148, !tbaa !2010
  %8 = icmp ne i8* %1, null, !dbg !3149
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3150
  br i1 %10, label %12, label %11, !dbg !3150

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3151
  unreachable, !dbg !3151

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3152
  store i8* %1, i8** %13, align 8, !dbg !3153, !tbaa !2083
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3154
  store i8* %2, i8** %14, align 8, !dbg !3155, !tbaa !2086
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3156
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3157
  ret i8* %15, !dbg !3158
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3131 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3130, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %1, metadata !3135, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %2, metadata !3136, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %3, metadata !3137, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %4, metadata !3138, metadata !DIExpression()), !dbg !3159
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3160
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3160
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3139, metadata !DIExpression()), !dbg !3161
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3162, !tbaa.struct !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2068, metadata !DIExpression()) #35, !dbg !3163
  call void @llvm.dbg.value(metadata i8* %1, metadata !2069, metadata !DIExpression()) #35, !dbg !3163
  call void @llvm.dbg.value(metadata i8* %2, metadata !2070, metadata !DIExpression()) #35, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2068, metadata !DIExpression()) #35, !dbg !3163
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3165
  store i32 10, i32* %8, align 8, !dbg !3166, !tbaa !2010
  %9 = icmp ne i8* %1, null, !dbg !3167
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3168
  br i1 %11, label %13, label %12, !dbg !3168

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3169
  unreachable, !dbg !3169

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3170
  store i8* %1, i8** %14, align 8, !dbg !3171, !tbaa !2083
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3172
  store i8* %2, i8** %15, align 8, !dbg !3173, !tbaa !2086
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3175
  ret i8* %16, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3177 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3181, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i8* %1, metadata !3182, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i8* %2, metadata !3183, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 0, metadata !3125, metadata !DIExpression()) #35, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %0, metadata !3126, metadata !DIExpression()) #35, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %1, metadata !3127, metadata !DIExpression()) #35, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %2, metadata !3128, metadata !DIExpression()) #35, !dbg !3185
  call void @llvm.dbg.value(metadata i32 0, metadata !3130, metadata !DIExpression()) #35, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %0, metadata !3135, metadata !DIExpression()) #35, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()) #35, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %2, metadata !3137, metadata !DIExpression()) #35, !dbg !3187
  call void @llvm.dbg.value(metadata i64 -1, metadata !3138, metadata !DIExpression()) #35, !dbg !3187
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3189
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3189
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3139, metadata !DIExpression()) #35, !dbg !3190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3191, !tbaa.struct !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2068, metadata !DIExpression()) #35, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %0, metadata !2069, metadata !DIExpression()) #35, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %1, metadata !2070, metadata !DIExpression()) #35, !dbg !3192
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2068, metadata !DIExpression()) #35, !dbg !3192
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3194
  store i32 10, i32* %6, align 8, !dbg !3195, !tbaa !2010
  %7 = icmp ne i8* %0, null, !dbg !3196
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3197
  br i1 %9, label %11, label %10, !dbg !3197

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3198
  unreachable, !dbg !3198

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3199
  store i8* %0, i8** %12, align 8, !dbg !3200, !tbaa !2083
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3201
  store i8* %1, i8** %13, align 8, !dbg !3202, !tbaa !2086
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3203
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3204
  ret i8* %14, !dbg !3205
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3206 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3210, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i8* %1, metadata !3211, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i8* %2, metadata !3212, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %3, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 0, metadata !3130, metadata !DIExpression()) #35, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %0, metadata !3135, metadata !DIExpression()) #35, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()) #35, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %2, metadata !3137, metadata !DIExpression()) #35, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %3, metadata !3138, metadata !DIExpression()) #35, !dbg !3215
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3217
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3217
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3139, metadata !DIExpression()) #35, !dbg !3218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3219, !tbaa.struct !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2068, metadata !DIExpression()) #35, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %0, metadata !2069, metadata !DIExpression()) #35, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %1, metadata !2070, metadata !DIExpression()) #35, !dbg !3220
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2068, metadata !DIExpression()) #35, !dbg !3220
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3222
  store i32 10, i32* %7, align 8, !dbg !3223, !tbaa !2010
  %8 = icmp ne i8* %0, null, !dbg !3224
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3225
  br i1 %10, label %12, label %11, !dbg !3225

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3226
  unreachable, !dbg !3226

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3227
  store i8* %0, i8** %13, align 8, !dbg !3228, !tbaa !2083
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3229
  store i8* %1, i8** %14, align 8, !dbg !3230, !tbaa !2086
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3231
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3232
  ret i8* %15, !dbg !3233
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3238, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8* %1, metadata !3239, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %2, metadata !3240, metadata !DIExpression()), !dbg !3241
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3242
  ret i8* %4, !dbg !3243
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3248, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()) #35, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()) #35, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %1, metadata !3240, metadata !DIExpression()) #35, !dbg !3251
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3253
  ret i8* %3, !dbg !3254
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3259, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i32 %0, metadata !3238, metadata !DIExpression()) #35, !dbg !3262
  call void @llvm.dbg.value(metadata i8* %1, metadata !3239, metadata !DIExpression()) #35, !dbg !3262
  call void @llvm.dbg.value(metadata i64 -1, metadata !3240, metadata !DIExpression()) #35, !dbg !3262
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3264
  ret i8* %3, !dbg !3265
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3266 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 0, metadata !3259, metadata !DIExpression()) #35, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #35, !dbg !3272
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()) #35, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()) #35, !dbg !3274
  call void @llvm.dbg.value(metadata i64 -1, metadata !3240, metadata !DIExpression()) #35, !dbg !3274
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3276
  ret i8* %2, !dbg !3277
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_read(i32 noundef %0, i8* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3284, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %2, metadata !3285, metadata !DIExpression()), !dbg !3292
  br label %4, !dbg !3293

4:                                                ; preds = %22, %3
  %5 = phi i64 [ %2, %3 ], [ %23, %22 ]
  %6 = phi i64 [ undef, %3 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3285, metadata !DIExpression()), !dbg !3292
  %7 = tail call i64 @read(i32 noundef %0, i8* noundef %1, i64 noundef %5) #35, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %7, metadata !3286, metadata !DIExpression()), !dbg !3295
  %8 = icmp sgt i64 %7, -1, !dbg !3296
  br i1 %8, label %27, label %9, !dbg !3298

9:                                                ; preds = %4
  %10 = tail call i32* @__errno_location() #38, !dbg !3299
  %11 = load i32, i32* %10, align 4, !dbg !3299, !tbaa !721
  %12 = icmp eq i32 %11, 4, !dbg !3299
  br i1 %12, label %22, label %13, !dbg !3301, !llvm.loop !3302

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3305
  %15 = icmp sgt i64 %5, 2146435072
  %16 = and i1 %15, %14, !dbg !3307
  %17 = select i1 %16, i64 2146435072, i64 %5, !dbg !3308
  %18 = select i1 %16, i64 %6, i64 %7, !dbg !3308
  %19 = and i1 %15, %14, !dbg !3308
  %20 = xor i1 %19, true, !dbg !3308
  %21 = zext i1 %20 to i32, !dbg !3308
  br label %22, !dbg !3308

22:                                               ; preds = %13, %9
  %23 = phi i64 [ %5, %9 ], [ %17, %13 ]
  %24 = phi i64 [ %6, %9 ], [ %18, %13 ]
  %25 = phi i32 [ 3, %9 ], [ %21, %13 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !3285, metadata !DIExpression()), !dbg !3292
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %4

27:                                               ; preds = %4, %22
  %28 = phi i64 [ %24, %22 ], [ %7, %4 ]
  ret i64 %28, !dbg !3309
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mkstemp_safer(i8* noundef %0) local_unnamed_addr #12 !dbg !3310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3314, metadata !DIExpression()), !dbg !3315
  %2 = tail call i32 @mkstemp(i8* noundef %0) #35, !dbg !3316
  %3 = tail call i32 @fd_safer(i32 noundef %2) #35, !dbg !3317
  ret i32 %3, !dbg !3318
}

declare !dbg !3319 i32 @mkstemp(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mkostemp_safer(i8* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !3320 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3324, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %1, metadata !3325, metadata !DIExpression()), !dbg !3326
  %3 = tail call i32 @mkostemp(i8* noundef %0, i32 noundef %1) #35, !dbg !3327
  %4 = tail call i32 @fd_safer_flag(i32 noundef %3, i32 noundef %1) #35, !dbg !3328
  ret i32 %4, !dbg !3329
}

declare !dbg !3330 i32 @mkostemp(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @path_search(i8* noundef %0, i64 noundef %1, i8* noundef readonly %2, i8* noundef %3, i1 noundef %4) local_unnamed_addr #12 !dbg !3331 {
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3335, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8* %2, metadata !3337, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8* %3, metadata !3338, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i1 %4, metadata !3339, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3346
  %9 = icmp eq i8* %3, null, !dbg !3347
  br i1 %9, label %17, label %10, !dbg !3349

10:                                               ; preds = %5
  %11 = load i8, i8* %3, align 1, !dbg !3350, !tbaa !730
  %12 = icmp eq i8 %11, 0, !dbg !3350
  br i1 %12, label %17, label %13, !dbg !3351

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(i8* noundef nonnull %3) #36, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %14, metadata !3340, metadata !DIExpression()), !dbg !3346
  %15 = icmp ult i64 %14, 5, !dbg !3354
  %16 = select i1 %15, i64 %14, i64 5, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %16, metadata !3340, metadata !DIExpression()), !dbg !3346
  br label %17

17:                                               ; preds = %5, %10, %13
  %18 = phi i64 [ %16, %13 ], [ 4, %10 ], [ 4, %5 ], !dbg !3355
  %19 = phi i8* [ %3, %13 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), %10 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), %5 ]
  call void @llvm.dbg.value(metadata i8* %19, metadata !3338, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %18, metadata !3340, metadata !DIExpression()), !dbg !3346
  br i1 %4, label %20, label %43, !dbg !3356

20:                                               ; preds = %17
  %21 = tail call i8* @secure_getenv(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.129, i64 0, i64 0)) #35, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %21, metadata !3341, metadata !DIExpression()), !dbg !3358
  %22 = icmp eq i8* %21, null, !dbg !3359
  br i1 %22, label %32, label %23, !dbg !3361

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %21, metadata !3362, metadata !DIExpression()) #35, !dbg !3401
  %24 = bitcast %struct.stat* %8 to i8*, !dbg !3403
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %24) #35, !dbg !3403
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !3365, metadata !DIExpression()) #35, !dbg !3404
  %25 = call i32 @stat(i8* noundef nonnull %21, %struct.stat* noundef nonnull %8) #35, !dbg !3405
  %26 = icmp eq i32 %25, 0, !dbg !3406
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 2, !dbg !3407
  %28 = load i32, i32* %27, align 8, !dbg !3407
  %29 = and i32 %28, 61440, !dbg !3407
  %30 = icmp eq i32 %29, 16384, !dbg !3407
  %31 = select i1 %26, i1 %30, i1 false, !dbg !3407
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %24) #35, !dbg !3408
  br i1 %31, label %56, label %32, !dbg !3409

32:                                               ; preds = %23, %20
  %33 = icmp eq i8* %2, null, !dbg !3410
  br i1 %33, label %45, label %34, !dbg !3412

34:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8* %2, metadata !3362, metadata !DIExpression()) #35, !dbg !3413
  %35 = bitcast %struct.stat* %7 to i8*, !dbg !3415
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %35) #35, !dbg !3415
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !3365, metadata !DIExpression()) #35, !dbg !3416
  %36 = call i32 @stat(i8* noundef nonnull %2, %struct.stat* noundef nonnull %7) #35, !dbg !3417
  %37 = icmp eq i32 %36, 0, !dbg !3418
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 2, !dbg !3419
  %39 = load i32, i32* %38, align 8, !dbg !3419
  %40 = and i32 %39, 61440, !dbg !3419
  %41 = icmp eq i32 %40, 16384, !dbg !3419
  %42 = select i1 %37, i1 %41, i1 false, !dbg !3419
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %35) #35, !dbg !3420
  br i1 %42, label %56, label %45, !dbg !3421

43:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %2, metadata !3337, metadata !DIExpression()), !dbg !3346
  %44 = icmp eq i8* %2, null, !dbg !3422
  br i1 %44, label %45, label %56, !dbg !3424

45:                                               ; preds = %34, %32, %43
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.130, i64 0, i64 0), metadata !3362, metadata !DIExpression()) #35, !dbg !3425
  %46 = bitcast %struct.stat* %6 to i8*, !dbg !3429
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %46) #35, !dbg !3429
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !3365, metadata !DIExpression()) #35, !dbg !3430
  %47 = call i32 @stat(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.130, i64 0, i64 0), %struct.stat* noundef nonnull %6) #35, !dbg !3431
  %48 = icmp eq i32 %47, 0, !dbg !3432
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 2, !dbg !3433
  %50 = load i32, i32* %49, align 8, !dbg !3433
  %51 = and i32 %50, 61440, !dbg !3433
  %52 = icmp eq i32 %51, 16384, !dbg !3433
  %53 = select i1 %48, i1 %52, i1 false, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %46) #35, !dbg !3434
  br i1 %53, label %56, label %54, !dbg !3435

54:                                               ; preds = %45
  %55 = tail call i32* @__errno_location() #38, !dbg !3436
  store i32 2, i32* %55, align 4, !dbg !3436, !tbaa !721
  br label %81, !dbg !3439

56:                                               ; preds = %23, %34, %45, %43
  %57 = phi i8* [ %2, %43 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.130, i64 0, i64 0), %45 ], [ %21, %23 ], [ %2, %34 ], !dbg !3346
  call void @llvm.dbg.value(metadata i8* %57, metadata !3337, metadata !DIExpression()), !dbg !3346
  %58 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #36, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %58, metadata !3344, metadata !DIExpression()), !dbg !3346
  %59 = icmp eq i64 %58, 0, !dbg !3441
  br i1 %59, label %65, label %60, !dbg !3442

60:                                               ; preds = %56
  %61 = add i64 %58, -1, !dbg !3443
  %62 = getelementptr inbounds i8, i8* %57, i64 %61, !dbg !3443
  %63 = load i8, i8* %62, align 1, !dbg !3443, !tbaa !730
  %64 = icmp ne i8 %63, 47, !dbg !3443
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ], !dbg !3346
  call void @llvm.dbg.value(metadata i1 %66, metadata !3345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3346
  %67 = zext i1 %66 to i64, !dbg !3444
  %68 = add nuw nsw i64 %18, 7, !dbg !3446
  %69 = add i64 %68, %58, !dbg !3447
  %70 = add i64 %69, %67, !dbg !3448
  %71 = icmp ugt i64 %70, %1, !dbg !3449
  br i1 %71, label %72, label %74, !dbg !3450

72:                                               ; preds = %65
  %73 = tail call i32* @__errno_location() #38, !dbg !3451
  store i32 22, i32* %73, align 4, !dbg !3451, !tbaa !721
  br label %81, !dbg !3453

74:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8* %0, metadata !3454, metadata !DIExpression()) #35, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %57, metadata !3457, metadata !DIExpression()) #35, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %58, metadata !3458, metadata !DIExpression()) #35, !dbg !3459
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %0, i8* noundef nonnull align 1 %57, i64 noundef %58, i1 noundef false) #35, !dbg !3461
  %75 = getelementptr inbounds i8, i8* %0, i64 %58, !dbg !3462
  %76 = xor i1 %66, true, !dbg !3462
  %77 = zext i1 %76 to i64
  %78 = getelementptr inbounds [12 x i8], [12 x i8]* @.str.3.131, i64 0, i64 %77, !dbg !3462
  %79 = trunc i64 %18 to i32, !dbg !3462
  %80 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %75, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %78, i32 noundef %79, i8* noundef %19) #35, !dbg !3462
  br label %81, !dbg !3463

81:                                               ; preds = %72, %74, %54
  %82 = phi i32 [ -1, %54 ], [ -1, %72 ], [ 0, %74 ], !dbg !3346
  ret i32 %82, !dbg !3464
}

; Function Attrs: nounwind
declare !dbg !3465 i8* @secure_getenv(i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !3466 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !3472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3479
  %2 = icmp ult i32 %0, 3, !dbg !3480
  br i1 %2, label %3, label %8, !dbg !3480

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #35, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %4, metadata !3475, metadata !DIExpression()), !dbg !3482
  %5 = tail call i32* @__errno_location() #38, !dbg !3483
  %6 = load i32, i32* %5, align 4, !dbg !3483, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %6, metadata !3478, metadata !DIExpression()), !dbg !3482
  %7 = tail call i32 @close(i32 noundef %0) #35, !dbg !3484
  store i32 %6, i32* %5, align 4, !dbg !3485, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %4, metadata !3474, metadata !DIExpression()), !dbg !3479
  br label %8, !dbg !3486

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3474, metadata !DIExpression()), !dbg !3479
  ret i32 %9, !dbg !3487
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3488 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3526, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8* %1, metadata !3527, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8* %2, metadata !3528, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8* %3, metadata !3529, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8** %4, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %5, metadata !3531, metadata !DIExpression()), !dbg !3532
  %7 = icmp eq i8* %1, null, !dbg !3533
  br i1 %7, label %10, label %8, !dbg !3535

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.134, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3536
  br label %12, !dbg !3536

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.135, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3537
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.137, i64 0, i64 0), i32 noundef 5) #35, !dbg !3538
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3538
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.138, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3539
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.139, i64 0, i64 0), i32 noundef 5) #35, !dbg !3540
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.140, i64 0, i64 0)) #35, !dbg !3540
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.138, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3541
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
  ], !dbg !3542

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.141, i64 0, i64 0), i32 noundef 5) #35, !dbg !3543
  %21 = load i8*, i8** %4, align 8, !dbg !3543, !tbaa !625
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3543
  br label %147, !dbg !3545

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.142, i64 0, i64 0), i32 noundef 5) #35, !dbg !3546
  %25 = load i8*, i8** %4, align 8, !dbg !3546, !tbaa !625
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3546
  %27 = load i8*, i8** %26, align 8, !dbg !3546, !tbaa !625
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3546
  br label %147, !dbg !3547

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.143, i64 0, i64 0), i32 noundef 5) #35, !dbg !3548
  %31 = load i8*, i8** %4, align 8, !dbg !3548, !tbaa !625
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3548
  %33 = load i8*, i8** %32, align 8, !dbg !3548, !tbaa !625
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3548
  %35 = load i8*, i8** %34, align 8, !dbg !3548, !tbaa !625
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3548
  br label %147, !dbg !3549

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.144, i64 0, i64 0), i32 noundef 5) #35, !dbg !3550
  %39 = load i8*, i8** %4, align 8, !dbg !3550, !tbaa !625
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3550
  %41 = load i8*, i8** %40, align 8, !dbg !3550, !tbaa !625
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3550
  %43 = load i8*, i8** %42, align 8, !dbg !3550, !tbaa !625
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3550
  %45 = load i8*, i8** %44, align 8, !dbg !3550, !tbaa !625
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3550
  br label %147, !dbg !3551

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.145, i64 0, i64 0), i32 noundef 5) #35, !dbg !3552
  %49 = load i8*, i8** %4, align 8, !dbg !3552, !tbaa !625
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3552
  %51 = load i8*, i8** %50, align 8, !dbg !3552, !tbaa !625
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3552
  %53 = load i8*, i8** %52, align 8, !dbg !3552, !tbaa !625
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3552
  %55 = load i8*, i8** %54, align 8, !dbg !3552, !tbaa !625
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3552
  %57 = load i8*, i8** %56, align 8, !dbg !3552, !tbaa !625
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3552
  br label %147, !dbg !3553

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.146, i64 0, i64 0), i32 noundef 5) #35, !dbg !3554
  %61 = load i8*, i8** %4, align 8, !dbg !3554, !tbaa !625
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3554
  %63 = load i8*, i8** %62, align 8, !dbg !3554, !tbaa !625
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3554
  %65 = load i8*, i8** %64, align 8, !dbg !3554, !tbaa !625
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3554
  %67 = load i8*, i8** %66, align 8, !dbg !3554, !tbaa !625
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3554
  %69 = load i8*, i8** %68, align 8, !dbg !3554, !tbaa !625
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3554
  %71 = load i8*, i8** %70, align 8, !dbg !3554, !tbaa !625
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3554
  br label %147, !dbg !3555

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.147, i64 0, i64 0), i32 noundef 5) #35, !dbg !3556
  %75 = load i8*, i8** %4, align 8, !dbg !3556, !tbaa !625
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3556
  %77 = load i8*, i8** %76, align 8, !dbg !3556, !tbaa !625
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3556
  %79 = load i8*, i8** %78, align 8, !dbg !3556, !tbaa !625
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3556
  %81 = load i8*, i8** %80, align 8, !dbg !3556, !tbaa !625
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3556
  %83 = load i8*, i8** %82, align 8, !dbg !3556, !tbaa !625
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3556
  %85 = load i8*, i8** %84, align 8, !dbg !3556, !tbaa !625
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3556
  %87 = load i8*, i8** %86, align 8, !dbg !3556, !tbaa !625
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3556
  br label %147, !dbg !3557

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.148, i64 0, i64 0), i32 noundef 5) #35, !dbg !3558
  %91 = load i8*, i8** %4, align 8, !dbg !3558, !tbaa !625
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3558
  %93 = load i8*, i8** %92, align 8, !dbg !3558, !tbaa !625
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3558
  %95 = load i8*, i8** %94, align 8, !dbg !3558, !tbaa !625
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3558
  %97 = load i8*, i8** %96, align 8, !dbg !3558, !tbaa !625
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3558
  %99 = load i8*, i8** %98, align 8, !dbg !3558, !tbaa !625
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3558
  %101 = load i8*, i8** %100, align 8, !dbg !3558, !tbaa !625
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3558
  %103 = load i8*, i8** %102, align 8, !dbg !3558, !tbaa !625
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3558
  %105 = load i8*, i8** %104, align 8, !dbg !3558, !tbaa !625
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3558
  br label %147, !dbg !3559

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.149, i64 0, i64 0), i32 noundef 5) #35, !dbg !3560
  %109 = load i8*, i8** %4, align 8, !dbg !3560, !tbaa !625
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3560
  %111 = load i8*, i8** %110, align 8, !dbg !3560, !tbaa !625
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3560
  %113 = load i8*, i8** %112, align 8, !dbg !3560, !tbaa !625
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3560
  %115 = load i8*, i8** %114, align 8, !dbg !3560, !tbaa !625
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3560
  %117 = load i8*, i8** %116, align 8, !dbg !3560, !tbaa !625
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3560
  %119 = load i8*, i8** %118, align 8, !dbg !3560, !tbaa !625
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3560
  %121 = load i8*, i8** %120, align 8, !dbg !3560, !tbaa !625
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3560
  %123 = load i8*, i8** %122, align 8, !dbg !3560, !tbaa !625
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3560
  %125 = load i8*, i8** %124, align 8, !dbg !3560, !tbaa !625
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3560
  br label %147, !dbg !3561

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.150, i64 0, i64 0), i32 noundef 5) #35, !dbg !3562
  %129 = load i8*, i8** %4, align 8, !dbg !3562, !tbaa !625
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3562
  %131 = load i8*, i8** %130, align 8, !dbg !3562, !tbaa !625
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3562
  %133 = load i8*, i8** %132, align 8, !dbg !3562, !tbaa !625
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3562
  %135 = load i8*, i8** %134, align 8, !dbg !3562, !tbaa !625
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3562
  %137 = load i8*, i8** %136, align 8, !dbg !3562, !tbaa !625
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3562
  %139 = load i8*, i8** %138, align 8, !dbg !3562, !tbaa !625
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3562
  %141 = load i8*, i8** %140, align 8, !dbg !3562, !tbaa !625
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3562
  %143 = load i8*, i8** %142, align 8, !dbg !3562, !tbaa !625
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3562
  %145 = load i8*, i8** %144, align 8, !dbg !3562, !tbaa !625
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3562
  br label %147, !dbg !3563

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3564
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3565 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3569, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %1, metadata !3570, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %2, metadata !3571, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %3, metadata !3572, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8** %4, metadata !3573, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 0, metadata !3574, metadata !DIExpression()), !dbg !3575
  br label %6, !dbg !3576

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3578
  call void @llvm.dbg.value(metadata i64 %7, metadata !3574, metadata !DIExpression()), !dbg !3575
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3579
  %9 = load i8*, i8** %8, align 8, !dbg !3579, !tbaa !625
  %10 = icmp eq i8* %9, null, !dbg !3581
  %11 = add i64 %7, 1, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %11, metadata !3574, metadata !DIExpression()), !dbg !3575
  br i1 %10, label %12, label %6, !dbg !3581, !llvm.loop !3583

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3585
  ret void, !dbg !3586
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3587 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3602, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %1, metadata !3603, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %2, metadata !3604, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %3, metadata !3605, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3606, metadata !DIExpression()), !dbg !3611
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3612
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3612
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3608, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 0, metadata !3607, metadata !DIExpression()), !dbg !3610
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3607, metadata !DIExpression()), !dbg !3610
  %11 = load i32, i32* %8, align 8, !dbg !3614
  %12 = icmp sgt i32 %11, -1, !dbg !3614
  br i1 %12, label %20, label %13, !dbg !3614

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3614
  store i32 %14, i32* %8, align 8, !dbg !3614
  %15 = icmp ult i32 %11, -7, !dbg !3614
  br i1 %15, label %16, label %20, !dbg !3614

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3614
  %18 = sext i32 %11 to i64, !dbg !3614
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3614
  br label %24, !dbg !3614

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3614
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3614
  store i8* %23, i8** %10, align 8, !dbg !3614
  br label %24, !dbg !3614

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3614
  %28 = load i8*, i8** %27, align 8, !dbg !3614
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3617
  store i8* %28, i8** %29, align 8, !dbg !3618, !tbaa !625
  %30 = icmp eq i8* %28, null, !dbg !3619
  br i1 %30, label %210, label %31, !dbg !3620

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 1, metadata !3607, metadata !DIExpression()), !dbg !3610
  %32 = icmp sgt i32 %25, -1, !dbg !3614
  br i1 %32, label %40, label %33, !dbg !3614

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3614
  store i32 %34, i32* %8, align 8, !dbg !3614
  %35 = icmp ult i32 %25, -7, !dbg !3614
  br i1 %35, label %36, label %40, !dbg !3614

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3614
  %38 = sext i32 %25 to i64, !dbg !3614
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3614
  br label %44, !dbg !3614

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3614
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3614
  store i8* %43, i8** %10, align 8, !dbg !3614
  br label %44, !dbg !3614

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3614
  %48 = load i8*, i8** %47, align 8, !dbg !3614
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3617
  store i8* %48, i8** %49, align 8, !dbg !3618, !tbaa !625
  %50 = icmp eq i8* %48, null, !dbg !3619
  br i1 %50, label %210, label %51, !dbg !3620

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 2, metadata !3607, metadata !DIExpression()), !dbg !3610
  %52 = icmp sgt i32 %45, -1, !dbg !3614
  br i1 %52, label %60, label %53, !dbg !3614

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3614
  store i32 %54, i32* %8, align 8, !dbg !3614
  %55 = icmp ult i32 %45, -7, !dbg !3614
  br i1 %55, label %56, label %60, !dbg !3614

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3614
  %58 = sext i32 %45 to i64, !dbg !3614
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3614
  br label %64, !dbg !3614

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3614
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3614
  store i8* %63, i8** %10, align 8, !dbg !3614
  br label %64, !dbg !3614

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3614
  %68 = load i8*, i8** %67, align 8, !dbg !3614
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3617
  store i8* %68, i8** %69, align 8, !dbg !3618, !tbaa !625
  %70 = icmp eq i8* %68, null, !dbg !3619
  br i1 %70, label %210, label %71, !dbg !3620

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 3, metadata !3607, metadata !DIExpression()), !dbg !3610
  %72 = icmp sgt i32 %65, -1, !dbg !3614
  br i1 %72, label %80, label %73, !dbg !3614

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3614
  store i32 %74, i32* %8, align 8, !dbg !3614
  %75 = icmp ult i32 %65, -7, !dbg !3614
  br i1 %75, label %76, label %80, !dbg !3614

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3614
  %78 = sext i32 %65 to i64, !dbg !3614
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3614
  br label %84, !dbg !3614

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3614
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3614
  store i8* %83, i8** %10, align 8, !dbg !3614
  br label %84, !dbg !3614

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3614
  %88 = load i8*, i8** %87, align 8, !dbg !3614
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3617
  store i8* %88, i8** %89, align 8, !dbg !3618, !tbaa !625
  %90 = icmp eq i8* %88, null, !dbg !3619
  br i1 %90, label %210, label %91, !dbg !3620

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 4, metadata !3607, metadata !DIExpression()), !dbg !3610
  %92 = icmp sgt i32 %85, -1, !dbg !3614
  br i1 %92, label %100, label %93, !dbg !3614

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3614
  store i32 %94, i32* %8, align 8, !dbg !3614
  %95 = icmp ult i32 %85, -7, !dbg !3614
  br i1 %95, label %96, label %100, !dbg !3614

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3614
  %98 = sext i32 %85 to i64, !dbg !3614
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3614
  br label %104, !dbg !3614

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3614
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3614
  store i8* %103, i8** %10, align 8, !dbg !3614
  br label %104, !dbg !3614

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3614
  %108 = load i8*, i8** %107, align 8, !dbg !3614
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3617
  store i8* %108, i8** %109, align 8, !dbg !3618, !tbaa !625
  %110 = icmp eq i8* %108, null, !dbg !3619
  br i1 %110, label %210, label %111, !dbg !3620

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 5, metadata !3607, metadata !DIExpression()), !dbg !3610
  %112 = icmp sgt i32 %105, -1, !dbg !3614
  br i1 %112, label %120, label %113, !dbg !3614

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3614
  store i32 %114, i32* %8, align 8, !dbg !3614
  %115 = icmp ult i32 %105, -7, !dbg !3614
  br i1 %115, label %116, label %120, !dbg !3614

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3614
  %118 = sext i32 %105 to i64, !dbg !3614
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3614
  br label %124, !dbg !3614

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3614
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3614
  store i8* %123, i8** %10, align 8, !dbg !3614
  br label %124, !dbg !3614

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3614
  %128 = load i8*, i8** %127, align 8, !dbg !3614
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3617
  store i8* %128, i8** %129, align 8, !dbg !3618, !tbaa !625
  %130 = icmp eq i8* %128, null, !dbg !3619
  br i1 %130, label %210, label %131, !dbg !3620

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 6, metadata !3607, metadata !DIExpression()), !dbg !3610
  %132 = icmp sgt i32 %125, -1, !dbg !3614
  br i1 %132, label %140, label %133, !dbg !3614

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3614
  store i32 %134, i32* %8, align 8, !dbg !3614
  %135 = icmp ult i32 %125, -7, !dbg !3614
  br i1 %135, label %136, label %140, !dbg !3614

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3614
  %138 = sext i32 %125 to i64, !dbg !3614
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3614
  br label %144, !dbg !3614

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3614
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3614
  store i8* %143, i8** %10, align 8, !dbg !3614
  br label %144, !dbg !3614

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3614
  %148 = load i8*, i8** %147, align 8, !dbg !3614
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3617
  store i8* %148, i8** %149, align 8, !dbg !3618, !tbaa !625
  %150 = icmp eq i8* %148, null, !dbg !3619
  br i1 %150, label %210, label %151, !dbg !3620

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 7, metadata !3607, metadata !DIExpression()), !dbg !3610
  %152 = icmp sgt i32 %145, -1, !dbg !3614
  br i1 %152, label %160, label %153, !dbg !3614

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3614
  store i32 %154, i32* %8, align 8, !dbg !3614
  %155 = icmp ult i32 %145, -7, !dbg !3614
  br i1 %155, label %156, label %160, !dbg !3614

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3614
  %158 = sext i32 %145 to i64, !dbg !3614
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3614
  br label %164, !dbg !3614

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3614
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3614
  store i8* %163, i8** %10, align 8, !dbg !3614
  br label %164, !dbg !3614

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3614
  %168 = load i8*, i8** %167, align 8, !dbg !3614
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3617
  store i8* %168, i8** %169, align 8, !dbg !3618, !tbaa !625
  %170 = icmp eq i8* %168, null, !dbg !3619
  br i1 %170, label %210, label %171, !dbg !3620

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 8, metadata !3607, metadata !DIExpression()), !dbg !3610
  %172 = icmp sgt i32 %165, -1, !dbg !3614
  br i1 %172, label %180, label %173, !dbg !3614

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3614
  store i32 %174, i32* %8, align 8, !dbg !3614
  %175 = icmp ult i32 %165, -7, !dbg !3614
  br i1 %175, label %176, label %180, !dbg !3614

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3614
  %178 = sext i32 %165 to i64, !dbg !3614
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3614
  br label %184, !dbg !3614

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3614
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3614
  store i8* %183, i8** %10, align 8, !dbg !3614
  br label %184, !dbg !3614

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3614
  %188 = load i8*, i8** %187, align 8, !dbg !3614
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3617
  store i8* %188, i8** %189, align 8, !dbg !3618, !tbaa !625
  %190 = icmp eq i8* %188, null, !dbg !3619
  br i1 %190, label %210, label %191, !dbg !3620

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 9, metadata !3607, metadata !DIExpression()), !dbg !3610
  %192 = icmp sgt i32 %185, -1, !dbg !3614
  br i1 %192, label %200, label %193, !dbg !3614

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3614
  store i32 %194, i32* %8, align 8, !dbg !3614
  %195 = icmp ult i32 %185, -7, !dbg !3614
  br i1 %195, label %196, label %200, !dbg !3614

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3614
  %198 = sext i32 %185 to i64, !dbg !3614
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3614
  br label %203, !dbg !3614

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3614
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3614
  store i8* %202, i8** %10, align 8, !dbg !3614
  br label %203, !dbg !3614

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3614
  %206 = load i8*, i8** %205, align 8, !dbg !3614
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3617
  store i8* %206, i8** %207, align 8, !dbg !3618, !tbaa !625
  %208 = icmp eq i8* %206, null, !dbg !3619
  %209 = select i1 %208, i64 9, i64 10, !dbg !3620
  br label %210, !dbg !3620

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3621
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3622
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3623
  ret void, !dbg !3623
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3624 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3628, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8* %1, metadata !3629, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8* %2, metadata !3630, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8* %3, metadata !3631, metadata !DIExpression()), !dbg !3633
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3634
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3634
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3632, metadata !DIExpression()), !dbg !3635
  call void @llvm.va_start(i8* nonnull %7), !dbg !3636
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3637
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3637, !tbaa.struct !1561
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3637
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3637
  call void @llvm.va_end(i8* nonnull %7), !dbg !3638
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3639
  ret void, !dbg !3639
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3640 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3641, !tbaa !625
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.138, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3641
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.155, i64 0, i64 0), i32 noundef 5) #35, !dbg !3642
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.156, i64 0, i64 0)) #35, !dbg !3642
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.157, i64 0, i64 0), i32 noundef 5) #35, !dbg !3643
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.159, i64 0, i64 0)) #35, !dbg !3643
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.160, i64 0, i64 0), i32 noundef 5) #35, !dbg !3644
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.161, i64 0, i64 0)) #35, !dbg !3644
  ret void, !dbg !3645
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3651, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %1, metadata !3652, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %2, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8* %0, metadata !3655, metadata !DIExpression()) #35, !dbg !3660
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()) #35, !dbg !3660
  call void @llvm.dbg.value(metadata i64 %2, metadata !3659, metadata !DIExpression()) #35, !dbg !3660
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3662
  call void @llvm.dbg.value(metadata i8* %4, metadata !3663, metadata !DIExpression()) #35, !dbg !3668
  %5 = icmp eq i8* %4, null, !dbg !3670
  br i1 %5, label %6, label %7, !dbg !3672

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3673
  unreachable, !dbg !3673

7:                                                ; preds = %3
  ret i8* %4, !dbg !3674
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3655, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %2, metadata !3659, metadata !DIExpression()), !dbg !3675
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %4, metadata !3663, metadata !DIExpression()) #35, !dbg !3677
  %5 = icmp eq i8* %4, null, !dbg !3679
  br i1 %5, label %6, label %7, !dbg !3680

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3681
  unreachable, !dbg !3681

7:                                                ; preds = %3
  ret i8* %4, !dbg !3682
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3683 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3687, metadata !DIExpression()), !dbg !3688
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %2, metadata !3663, metadata !DIExpression()) #35, !dbg !3690
  %3 = icmp eq i8* %2, null, !dbg !3692
  br i1 %3, label %4, label %5, !dbg !3693

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3694
  unreachable, !dbg !3694

5:                                                ; preds = %1
  ret i8* %2, !dbg !3695
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3696 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %0, metadata !3702, metadata !DIExpression()) #35, !dbg !3706
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3708
  call void @llvm.dbg.value(metadata i8* %2, metadata !3663, metadata !DIExpression()) #35, !dbg !3709
  %3 = icmp eq i8* %2, null, !dbg !3711
  br i1 %3, label %4, label %5, !dbg !3712

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3713
  unreachable, !dbg !3713

5:                                                ; preds = %1
  ret i8* %2, !dbg !3714
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3715 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %0, metadata !3687, metadata !DIExpression()) #35, !dbg !3721
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3723
  call void @llvm.dbg.value(metadata i8* %2, metadata !3663, metadata !DIExpression()) #35, !dbg !3724
  %3 = icmp eq i8* %2, null, !dbg !3726
  br i1 %3, label %4, label %5, !dbg !3727

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3728
  unreachable, !dbg !3728

5:                                                ; preds = %1
  ret i8* %2, !dbg !3729
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3732, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 %1, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8* %0, metadata !3735, metadata !DIExpression()) #35, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3738, metadata !DIExpression()) #35, !dbg !3739
  %3 = icmp eq i64 %1, 0, !dbg !3741
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3741
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3742
  call void @llvm.dbg.value(metadata i8* %5, metadata !3663, metadata !DIExpression()) #35, !dbg !3743
  %6 = icmp eq i8* %5, null, !dbg !3745
  br i1 %6, label %7, label %8, !dbg !3746

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3747
  unreachable, !dbg !3747

8:                                                ; preds = %2
  ret i8* %5, !dbg !3748
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3749 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3753, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 %1, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* %0, metadata !3756, metadata !DIExpression()) #35, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %1, metadata !3759, metadata !DIExpression()) #35, !dbg !3760
  call void @llvm.dbg.value(metadata i8* %0, metadata !3735, metadata !DIExpression()) #35, !dbg !3762
  call void @llvm.dbg.value(metadata i64 %1, metadata !3738, metadata !DIExpression()) #35, !dbg !3762
  %3 = icmp eq i64 %1, 0, !dbg !3764
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3764
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3765
  call void @llvm.dbg.value(metadata i8* %5, metadata !3663, metadata !DIExpression()) #35, !dbg !3766
  %6 = icmp eq i8* %5, null, !dbg !3768
  br i1 %6, label %7, label %8, !dbg !3769

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3770
  unreachable, !dbg !3770

8:                                                ; preds = %2
  ret i8* %5, !dbg !3771
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3776, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %1, metadata !3777, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %2, metadata !3778, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %0, metadata !3780, metadata !DIExpression()) #35, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %1, metadata !3783, metadata !DIExpression()) #35, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %2, metadata !3784, metadata !DIExpression()) #35, !dbg !3785
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3787
  call void @llvm.dbg.value(metadata i8* %4, metadata !3663, metadata !DIExpression()) #35, !dbg !3788
  %5 = icmp eq i8* %4, null, !dbg !3790
  br i1 %5, label %6, label %7, !dbg !3791

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3792
  unreachable, !dbg !3792

7:                                                ; preds = %3
  ret i8* %4, !dbg !3793
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3794 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3798, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %1, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i8* null, metadata !3655, metadata !DIExpression()) #35, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %0, metadata !3658, metadata !DIExpression()) #35, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %1, metadata !3659, metadata !DIExpression()) #35, !dbg !3801
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3803
  call void @llvm.dbg.value(metadata i8* %3, metadata !3663, metadata !DIExpression()) #35, !dbg !3804
  %4 = icmp eq i8* %3, null, !dbg !3806
  br i1 %4, label %5, label %6, !dbg !3807

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3808
  unreachable, !dbg !3808

6:                                                ; preds = %2
  ret i8* %3, !dbg !3809
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3810 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3814, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i64 %1, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i8* null, metadata !3776, metadata !DIExpression()) #35, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %0, metadata !3777, metadata !DIExpression()) #35, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %1, metadata !3778, metadata !DIExpression()) #35, !dbg !3817
  call void @llvm.dbg.value(metadata i8* null, metadata !3780, metadata !DIExpression()) #35, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %0, metadata !3783, metadata !DIExpression()) #35, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %1, metadata !3784, metadata !DIExpression()) #35, !dbg !3819
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3821
  call void @llvm.dbg.value(metadata i8* %3, metadata !3663, metadata !DIExpression()) #35, !dbg !3822
  %4 = icmp eq i8* %3, null, !dbg !3824
  br i1 %4, label %5, label %6, !dbg !3825

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3826
  unreachable, !dbg !3826

6:                                                ; preds = %2
  ret i8* %3, !dbg !3827
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i64* %1, metadata !3833, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8* %0, metadata !554, metadata !DIExpression()) #35, !dbg !3835
  call void @llvm.dbg.value(metadata i64* %1, metadata !555, metadata !DIExpression()) #35, !dbg !3835
  call void @llvm.dbg.value(metadata i64 1, metadata !556, metadata !DIExpression()) #35, !dbg !3835
  %3 = load i64, i64* %1, align 8, !dbg !3837, !tbaa !855
  call void @llvm.dbg.value(metadata i64 %3, metadata !557, metadata !DIExpression()) #35, !dbg !3835
  %4 = icmp eq i8* %0, null, !dbg !3838
  br i1 %4, label %5, label %8, !dbg !3840

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3841
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3844
  br label %15, !dbg !3844

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3845
  %10 = add nuw i64 %9, 1, !dbg !3845
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3845
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3845
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3845
  call void @llvm.dbg.value(metadata i64 %13, metadata !557, metadata !DIExpression()) #35, !dbg !3835
  br i1 %12, label %14, label %15, !dbg !3848

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3849
  unreachable, !dbg !3849

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3835
  call void @llvm.dbg.value(metadata i64 %16, metadata !557, metadata !DIExpression()) #35, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %0, metadata !3655, metadata !DIExpression()) #35, !dbg !3850
  call void @llvm.dbg.value(metadata i64 %16, metadata !3658, metadata !DIExpression()) #35, !dbg !3850
  call void @llvm.dbg.value(metadata i64 1, metadata !3659, metadata !DIExpression()) #35, !dbg !3850
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3852
  call void @llvm.dbg.value(metadata i8* %17, metadata !3663, metadata !DIExpression()) #35, !dbg !3853
  %18 = icmp eq i8* %17, null, !dbg !3855
  br i1 %18, label %19, label %20, !dbg !3856

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3857
  unreachable, !dbg !3857

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !554, metadata !DIExpression()) #35, !dbg !3835
  store i64 %16, i64* %1, align 8, !dbg !3858, !tbaa !855
  ret i8* %17, !dbg !3859
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !549 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !554, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64* %1, metadata !555, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %2, metadata !556, metadata !DIExpression()), !dbg !3860
  %4 = load i64, i64* %1, align 8, !dbg !3861, !tbaa !855
  call void @llvm.dbg.value(metadata i64 %4, metadata !557, metadata !DIExpression()), !dbg !3860
  %5 = icmp eq i8* %0, null, !dbg !3862
  br i1 %5, label %6, label %13, !dbg !3863

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3864
  br i1 %7, label %8, label %20, !dbg !3865

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %9, metadata !557, metadata !DIExpression()), !dbg !3860
  %10 = icmp ugt i64 %2, 128, !dbg !3868
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %12, metadata !557, metadata !DIExpression()), !dbg !3860
  br label %20, !dbg !3870

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3871
  %15 = add nuw i64 %14, 1, !dbg !3871
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3871
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3871
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %18, metadata !557, metadata !DIExpression()), !dbg !3860
  br i1 %17, label %19, label %20, !dbg !3872

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3873
  unreachable, !dbg !3873

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3860
  call void @llvm.dbg.value(metadata i64 %21, metadata !557, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i8* %0, metadata !3655, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %21, metadata !3658, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %2, metadata !3659, metadata !DIExpression()) #35, !dbg !3874
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i8* %22, metadata !3663, metadata !DIExpression()) #35, !dbg !3877
  %23 = icmp eq i8* %22, null, !dbg !3879
  br i1 %23, label %24, label %25, !dbg !3880

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3881
  unreachable, !dbg !3881

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !554, metadata !DIExpression()), !dbg !3860
  store i64 %21, i64* %1, align 8, !dbg !3882, !tbaa !855
  ret i8* %22, !dbg !3883
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !561 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !569, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64* %1, metadata !570, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %2, metadata !571, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %3, metadata !572, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %4, metadata !573, metadata !DIExpression()), !dbg !3884
  %6 = load i64, i64* %1, align 8, !dbg !3885, !tbaa !855
  call void @llvm.dbg.value(metadata i64 %6, metadata !574, metadata !DIExpression()), !dbg !3884
  %7 = ashr i64 %6, 1, !dbg !3886
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3886
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3886
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %10, metadata !575, metadata !DIExpression()), !dbg !3884
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3888
  call void @llvm.dbg.value(metadata i64 %11, metadata !575, metadata !DIExpression()), !dbg !3884
  %12 = icmp sgt i64 %3, -1, !dbg !3889
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3891
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3891
  call void @llvm.dbg.value(metadata i64 %15, metadata !575, metadata !DIExpression()), !dbg !3884
  %16 = icmp slt i64 %4, 0, !dbg !3892
  br i1 %16, label %17, label %30, !dbg !3892

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3892
  br i1 %18, label %19, label %24, !dbg !3892

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3892
  %21 = udiv i64 9223372036854775807, %20, !dbg !3892
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3892
  br i1 %23, label %46, label %43, !dbg !3892

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3892
  br i1 %25, label %43, label %26, !dbg !3892

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3892
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3892
  %29 = icmp ult i64 %28, %15, !dbg !3892
  br i1 %29, label %46, label %43, !dbg !3892

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3892
  br i1 %31, label %43, label %32, !dbg !3892

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3892
  br i1 %33, label %34, label %40, !dbg !3892

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3892
  br i1 %35, label %43, label %36, !dbg !3892

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3892
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3892
  %39 = icmp ult i64 %38, %4, !dbg !3892
  br i1 %39, label %46, label %43, !dbg !3892

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3892
  %42 = icmp ult i64 %41, %15, !dbg !3892
  br i1 %42, label %46, label %43, !dbg !3892

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !576, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3884
  %44 = mul i64 %15, %4, !dbg !3892
  call void @llvm.dbg.value(metadata i64 %44, metadata !576, metadata !DIExpression()), !dbg !3884
  %45 = icmp slt i64 %44, 128, !dbg !3892
  br i1 %45, label %46, label %52, !dbg !3892

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !577, metadata !DIExpression()), !dbg !3884
  %48 = sdiv i64 %47, %4, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %48, metadata !575, metadata !DIExpression()), !dbg !3884
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %51, metadata !576, metadata !DIExpression()), !dbg !3884
  br label %52, !dbg !3897

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3884
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3884
  call void @llvm.dbg.value(metadata i64 %54, metadata !576, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %53, metadata !575, metadata !DIExpression()), !dbg !3884
  %55 = icmp eq i8* %0, null, !dbg !3898
  br i1 %55, label %56, label %57, !dbg !3900

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3901, !tbaa !855
  br label %57, !dbg !3902

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3903
  %59 = icmp slt i64 %58, %2, !dbg !3905
  br i1 %59, label %60, label %97, !dbg !3906

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3907
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3907
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %63, metadata !575, metadata !DIExpression()), !dbg !3884
  br i1 %62, label %96, label %64, !dbg !3908

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3909
  br i1 %66, label %96, label %67, !dbg !3909

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3910

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3910
  br i1 %69, label %70, label %75, !dbg !3910

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3910
  %72 = udiv i64 9223372036854775807, %71, !dbg !3910
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3910
  br i1 %74, label %96, label %94, !dbg !3910

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3910
  br i1 %76, label %94, label %77, !dbg !3910

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3910
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3910
  %80 = icmp ult i64 %79, %63, !dbg !3910
  br i1 %80, label %96, label %94, !dbg !3910

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3910
  br i1 %82, label %94, label %83, !dbg !3910

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3910
  br i1 %84, label %85, label %91, !dbg !3910

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3910
  br i1 %86, label %94, label %87, !dbg !3910

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3910
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3910
  %90 = icmp ult i64 %89, %4, !dbg !3910
  br i1 %90, label %96, label %94, !dbg !3910

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3910
  %93 = icmp ult i64 %92, %63, !dbg !3910
  br i1 %93, label %96, label %94, !dbg !3910

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !576, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3884
  %95 = mul i64 %63, %4, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %95, metadata !576, metadata !DIExpression()), !dbg !3884
  br label %97, !dbg !3911

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3912
  unreachable, !dbg !3912

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3884
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3884
  call void @llvm.dbg.value(metadata i64 %99, metadata !576, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %98, metadata !575, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8* %0, metadata !3732, metadata !DIExpression()) #35, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %99, metadata !3733, metadata !DIExpression()) #35, !dbg !3913
  call void @llvm.dbg.value(metadata i8* %0, metadata !3735, metadata !DIExpression()) #35, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %99, metadata !3738, metadata !DIExpression()) #35, !dbg !3915
  %100 = icmp eq i64 %99, 0, !dbg !3917
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3917
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3918
  call void @llvm.dbg.value(metadata i8* %102, metadata !3663, metadata !DIExpression()) #35, !dbg !3919
  %103 = icmp eq i8* %102, null, !dbg !3921
  br i1 %103, label %104, label %105, !dbg !3922

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3923
  unreachable, !dbg !3923

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !569, metadata !DIExpression()), !dbg !3884
  store i64 %98, i64* %1, align 8, !dbg !3924, !tbaa !855
  ret i8* %102, !dbg !3925
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3926 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %0, metadata !3930, metadata !DIExpression()) #35, !dbg !3934
  call void @llvm.dbg.value(metadata i64 1, metadata !3933, metadata !DIExpression()) #35, !dbg !3934
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3936
  call void @llvm.dbg.value(metadata i8* %2, metadata !3663, metadata !DIExpression()) #35, !dbg !3937
  %3 = icmp eq i8* %2, null, !dbg !3939
  br i1 %3, label %4, label %5, !dbg !3940

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3941
  unreachable, !dbg !3941

5:                                                ; preds = %1
  ret i8* %2, !dbg !3942
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3931 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3930, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %1, metadata !3933, metadata !DIExpression()), !dbg !3943
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3944
  call void @llvm.dbg.value(metadata i8* %3, metadata !3663, metadata !DIExpression()) #35, !dbg !3945
  %4 = icmp eq i8* %3, null, !dbg !3947
  br i1 %4, label %5, label %6, !dbg !3948

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3949
  unreachable, !dbg !3949

6:                                                ; preds = %2
  ret i8* %3, !dbg !3950
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3951 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3953, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()) #35, !dbg !3959
  call void @llvm.dbg.value(metadata i64 1, metadata !3958, metadata !DIExpression()) #35, !dbg !3959
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()) #35, !dbg !3965
  call void @llvm.dbg.value(metadata i64 1, metadata !3964, metadata !DIExpression()) #35, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()) #35, !dbg !3965
  call void @llvm.dbg.value(metadata i64 1, metadata !3964, metadata !DIExpression()) #35, !dbg !3965
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3967
  call void @llvm.dbg.value(metadata i8* %2, metadata !3663, metadata !DIExpression()) #35, !dbg !3968
  %3 = icmp eq i8* %2, null, !dbg !3970
  br i1 %3, label %4, label %5, !dbg !3971

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3972
  unreachable, !dbg !3972

5:                                                ; preds = %1
  ret i8* %2, !dbg !3973
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i64 %1, metadata !3958, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()) #35, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %1, metadata !3964, metadata !DIExpression()) #35, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()) #35, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %1, metadata !3964, metadata !DIExpression()) #35, !dbg !3975
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3977
  call void @llvm.dbg.value(metadata i8* %3, metadata !3663, metadata !DIExpression()) #35, !dbg !3978
  %4 = icmp eq i8* %3, null, !dbg !3980
  br i1 %4, label %5, label %6, !dbg !3981

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3982
  unreachable, !dbg !3982

6:                                                ; preds = %2
  ret i8* %3, !dbg !3983
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3984 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3988, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()) #35, !dbg !3991
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %3, metadata !3663, metadata !DIExpression()) #35, !dbg !3994
  %4 = icmp eq i8* %3, null, !dbg !3996
  br i1 %4, label %5, label %6, !dbg !3997

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3998
  unreachable, !dbg !3998

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3999, metadata !DIExpression()) #35, !dbg !4004
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()) #35, !dbg !4004
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()) #35, !dbg !4004
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4006
  ret i8* %3, !dbg !4007
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4008 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4012, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %1, metadata !3700, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3702, metadata !DIExpression()) #35, !dbg !4017
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %3, metadata !3663, metadata !DIExpression()) #35, !dbg !4020
  %4 = icmp eq i8* %3, null, !dbg !4022
  br i1 %4, label %5, label %6, !dbg !4023

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4024
  unreachable, !dbg !4024

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3999, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()) #35, !dbg !4025
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4027
  ret i8* %3, !dbg !4028
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4033, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()), !dbg !4036
  %3 = add nsw i64 %1, 1, !dbg !4037
  call void @llvm.dbg.value(metadata i64 %3, metadata !3700, metadata !DIExpression()) #35, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %3, metadata !3702, metadata !DIExpression()) #35, !dbg !4040
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4042
  call void @llvm.dbg.value(metadata i8* %4, metadata !3663, metadata !DIExpression()) #35, !dbg !4043
  %5 = icmp eq i8* %4, null, !dbg !4045
  br i1 %5, label %6, label %7, !dbg !4046

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4047
  unreachable, !dbg !4047

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4035, metadata !DIExpression()), !dbg !4036
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4048
  store i8 0, i8* %8, align 1, !dbg !4049, !tbaa !730
  call void @llvm.dbg.value(metadata i8* %4, metadata !3999, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()) #35, !dbg !4050
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4052
  ret i8* %4, !dbg !4053
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4054 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4056, metadata !DIExpression()), !dbg !4057
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !4058
  %3 = add i64 %2, 1, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %0, metadata !3988, metadata !DIExpression()) #35, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %3, metadata !3989, metadata !DIExpression()) #35, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %3, metadata !3687, metadata !DIExpression()) #35, !dbg !4062
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4064
  call void @llvm.dbg.value(metadata i8* %4, metadata !3663, metadata !DIExpression()) #35, !dbg !4065
  %5 = icmp eq i8* %4, null, !dbg !4067
  br i1 %5, label %6, label %7, !dbg !4068

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4069
  unreachable, !dbg !4069

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3999, metadata !DIExpression()) #35, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()) #35, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %3, metadata !4003, metadata !DIExpression()) #35, !dbg !4070
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !4072
  ret i8* %4, !dbg !4073
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4074 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4079, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %1, metadata !4076, metadata !DIExpression()), !dbg !4080
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.176, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.177, i64 0, i64 0), i32 noundef 5) #35, !dbg !4079
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i64 0, i64 0), i8* noundef %2) #35, !dbg !4079
  %3 = icmp eq i32 %1, 0, !dbg !4079
  tail call void @llvm.assume(i1 %3), !dbg !4079
  tail call void @abort() #37, !dbg !4081
  unreachable, !dbg !4081
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4082 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4120, metadata !DIExpression()), !dbg !4125
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4126
  call void @llvm.dbg.value(metadata i1 undef, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4125
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4127, metadata !DIExpression()), !dbg !4130
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4132
  %4 = load i32, i32* %3, align 8, !dbg !4132, !tbaa !1864
  %5 = and i32 %4, 32, !dbg !4133
  %6 = icmp eq i32 %5, 0, !dbg !4133
  call void @llvm.dbg.value(metadata i1 %6, metadata !4123, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4125
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4134
  %8 = icmp eq i32 %7, 0, !dbg !4135
  call void @llvm.dbg.value(metadata i1 %8, metadata !4124, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4125
  br i1 %6, label %9, label %19, !dbg !4136

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4138
  call void @llvm.dbg.value(metadata i1 %10, metadata !4121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4125
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4139
  %12 = xor i1 %8, true, !dbg !4139
  %13 = sext i1 %12 to i32, !dbg !4139
  br i1 %11, label %22, label %14, !dbg !4139

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4140
  %16 = load i32, i32* %15, align 4, !dbg !4140, !tbaa !721
  %17 = icmp ne i32 %16, 9, !dbg !4141
  %18 = sext i1 %17 to i32, !dbg !4142
  br label %22, !dbg !4142

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4143

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4145
  store i32 0, i32* %21, align 4, !dbg !4147, !tbaa !721
  br label %22, !dbg !4145

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4125
  ret i32 %23, !dbg !4148
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4149 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4187, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()), !dbg !4191
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4192
  call void @llvm.dbg.value(metadata i32 %2, metadata !4189, metadata !DIExpression()), !dbg !4191
  %3 = icmp slt i32 %2, 0, !dbg !4193
  br i1 %3, label %4, label %6, !dbg !4195

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4196
  br label %24, !dbg !4197

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4198
  %8 = icmp eq i32 %7, 0, !dbg !4198
  br i1 %8, label %13, label %9, !dbg !4200

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4201
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4202
  %12 = icmp eq i64 %11, -1, !dbg !4203
  br i1 %12, label %16, label %13, !dbg !4204

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4205
  %15 = icmp eq i32 %14, 0, !dbg !4205
  br i1 %15, label %16, label %18, !dbg !4206

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4188, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 0, metadata !4190, metadata !DIExpression()), !dbg !4191
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %21, metadata !4190, metadata !DIExpression()), !dbg !4191
  br label %24, !dbg !4208

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4209
  %20 = load i32, i32* %19, align 4, !dbg !4209, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %20, metadata !4188, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 0, metadata !4190, metadata !DIExpression()), !dbg !4191
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %21, metadata !4190, metadata !DIExpression()), !dbg !4191
  %22 = icmp eq i32 %20, 0, !dbg !4210
  br i1 %22, label %24, label %23, !dbg !4208

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4212, !tbaa !721
  call void @llvm.dbg.value(metadata i32 -1, metadata !4190, metadata !DIExpression()), !dbg !4191
  br label %24, !dbg !4214

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4191
  ret i32 %25, !dbg !4215
}

; Function Attrs: nofree nounwind
declare !dbg !4216 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !4217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4219, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 %1, metadata !4220, metadata !DIExpression()), !dbg !4225
  %3 = icmp ult i32 %0, 3, !dbg !4226
  br i1 %3, label %4, label %9, !dbg !4226

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #35, !dbg !4227
  call void @llvm.dbg.value(metadata i32 %5, metadata !4221, metadata !DIExpression()), !dbg !4228
  %6 = tail call i32* @__errno_location() #38, !dbg !4229
  %7 = load i32, i32* %6, align 4, !dbg !4229, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %7, metadata !4224, metadata !DIExpression()), !dbg !4228
  %8 = tail call i32 @close(i32 noundef %0) #35, !dbg !4230
  store i32 %7, i32* %6, align 4, !dbg !4231, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %5, metadata !4219, metadata !DIExpression()), !dbg !4225
  br label %9, !dbg !4232

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4219, metadata !DIExpression()), !dbg !4225
  ret i32 %10, !dbg !4233
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !4234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4236, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 %1, metadata !4237, metadata !DIExpression()), !dbg !4238
  %3 = and i32 %1, 524288, !dbg !4239
  %4 = icmp eq i32 %3, 0, !dbg !4240
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4240
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #35, !dbg !4241
  ret i32 %6, !dbg !4242
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4243 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4281, metadata !DIExpression()), !dbg !4282
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4283
  br i1 %2, label %6, label %3, !dbg !4285

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4286
  %5 = icmp eq i32 %4, 0, !dbg !4286
  br i1 %5, label %6, label %8, !dbg !4287

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4288
  br label %17, !dbg !4289

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4290, metadata !DIExpression()) #35, !dbg !4295
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4297
  %10 = load i32, i32* %9, align 8, !dbg !4297, !tbaa !1864
  %11 = and i32 %10, 256, !dbg !4299
  %12 = icmp eq i32 %11, 0, !dbg !4299
  br i1 %12, label %15, label %13, !dbg !4300

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4301
  br label %15, !dbg !4301

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4302
  br label %17, !dbg !4303

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4282
  ret i32 %18, !dbg !4304
}

; Function Attrs: nofree nounwind
declare !dbg !4305 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4306 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4311, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i8* %1, metadata !4312, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %2, metadata !4313, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4314, metadata !DIExpression()), !dbg !4316
  %5 = icmp eq i8* %1, null, !dbg !4317
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4319
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.191, i64 0, i64 0), i8* %1, !dbg !4319
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4319
  call void @llvm.dbg.value(metadata i64 %8, metadata !4313, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i8* %7, metadata !4312, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i32* %6, metadata !4311, metadata !DIExpression()), !dbg !4316
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4320
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4322
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4314, metadata !DIExpression()), !dbg !4316
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %11, metadata !4315, metadata !DIExpression()), !dbg !4316
  %12 = icmp ult i64 %11, -3, !dbg !4324
  br i1 %12, label %13, label %18, !dbg !4326

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4327
  %15 = icmp eq i32 %14, 0, !dbg !4327
  br i1 %15, label %16, label %30, !dbg !4328

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4329, metadata !DIExpression()) #35, !dbg !4334
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4336, metadata !DIExpression()) #35, !dbg !4341
  call void @llvm.dbg.value(metadata i32 0, metadata !4339, metadata !DIExpression()) #35, !dbg !4341
  call void @llvm.dbg.value(metadata i64 8, metadata !4340, metadata !DIExpression()) #35, !dbg !4341
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4343
  store i64 0, i64* %17, align 1, !dbg !4343
  br label %30, !dbg !4344

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4345
  br i1 %19, label %20, label %21, !dbg !4347

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4348
  unreachable, !dbg !4348

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4349

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4351
  br i1 %24, label %30, label %25, !dbg !4352

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4353
  br i1 %26, label %30, label %27, !dbg !4356

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4357, !tbaa !730
  %29 = zext i8 %28 to i32, !dbg !4358
  store i32 %29, i32* %6, align 4, !dbg !4359, !tbaa !721
  br label %30, !dbg !4360

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4316
  ret i64 %31, !dbg !4361
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4362 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4370, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4371, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %2, metadata !4372, metadata !DIExpression()), !dbg !4374
  %4 = icmp eq i64 %2, 0, !dbg !4375
  br i1 %4, label %8, label %5, !dbg !4375

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4375
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4375
  br i1 %7, label %13, label %8, !dbg !4375

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4374
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4374
  %9 = mul i64 %2, %1, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %9, metadata !4373, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i8* %0, metadata !4377, metadata !DIExpression()) #35, !dbg !4381
  call void @llvm.dbg.value(metadata i64 %9, metadata !4380, metadata !DIExpression()) #35, !dbg !4381
  %10 = icmp eq i64 %9, 0, !dbg !4383
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4383
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4384
  br label %15, !dbg !4385

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4374
  %14 = tail call i32* @__errno_location() #38, !dbg !4386
  store i32 12, i32* %14, align 4, !dbg !4388, !tbaa !721
  br label %15, !dbg !4389

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4374
  ret i8* %16, !dbg !4390
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !4391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4393, metadata !DIExpression()), !dbg !4394
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #35, !dbg !4395
  ret i32 %2, !dbg !4396
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !4397 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4399, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i32 %1, metadata !4400, metadata !DIExpression()), !dbg !4424
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !4425
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #35, !dbg !4425
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !4401, metadata !DIExpression()), !dbg !4426
  call void @llvm.va_start(i8* nonnull %4), !dbg !4427
  call void @llvm.dbg.value(metadata i32 -1, metadata !4412, metadata !DIExpression()), !dbg !4424
  switch i32 %1, label %103 [
    i32 0, label %5
    i32 1030, label %26
    i32 1, label %80
    i32 3, label %80
    i32 1025, label %80
    i32 9, label %80
    i32 1032, label %80
    i32 1034, label %80
    i32 11, label %80
    i32 1033, label %82
    i32 1031, label %82
    i32 10, label %82
    i32 1026, label %82
    i32 2, label %82
    i32 4, label %82
    i32 1024, label %82
    i32 8, label %82
  ], !dbg !4428

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4429
  %7 = load i32, i32* %6, align 8, !dbg !4429
  %8 = icmp sgt i32 %7, -1, !dbg !4429
  br i1 %8, label %17, label %9, !dbg !4429

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !4429
  store i32 %10, i32* %6, align 8, !dbg !4429
  %11 = icmp ult i32 %7, -7, !dbg !4429
  br i1 %11, label %12, label %17, !dbg !4429

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4429
  %14 = load i8*, i8** %13, align 8, !dbg !4429
  %15 = sext i32 %7 to i64, !dbg !4429
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !4429
  br label %21, !dbg !4429

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4429
  %19 = load i8*, i8** %18, align 8, !dbg !4429
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !4429
  store i8* %20, i8** %18, align 8, !dbg !4429
  br label %21, !dbg !4429

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4429
  %24 = load i32, i32* %23, align 8, !dbg !4429
  call void @llvm.dbg.value(metadata i32 %24, metadata !4413, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 %0, metadata !4431, metadata !DIExpression()) #35, !dbg !4436
  call void @llvm.dbg.value(metadata i32 %24, metadata !4434, metadata !DIExpression()) #35, !dbg !4436
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #35, !dbg !4438
  call void @llvm.dbg.value(metadata i32 %25, metadata !4435, metadata !DIExpression()) #35, !dbg !4436
  call void @llvm.dbg.value(metadata i32 %25, metadata !4412, metadata !DIExpression()), !dbg !4424
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4439
  %28 = load i32, i32* %27, align 8, !dbg !4439
  %29 = icmp sgt i32 %28, -1, !dbg !4439
  br i1 %29, label %38, label %30, !dbg !4439

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !4439
  store i32 %31, i32* %27, align 8, !dbg !4439
  %32 = icmp ult i32 %28, -7, !dbg !4439
  br i1 %32, label %33, label %38, !dbg !4439

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4439
  %35 = load i8*, i8** %34, align 8, !dbg !4439
  %36 = sext i32 %28 to i64, !dbg !4439
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !4439
  br label %42, !dbg !4439

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4439
  %40 = load i8*, i8** %39, align 8, !dbg !4439
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !4439
  store i8* %41, i8** %39, align 8, !dbg !4439
  br label %42, !dbg !4439

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !4439
  %45 = load i32, i32* %44, align 8, !dbg !4439
  call void @llvm.dbg.value(metadata i32 %45, metadata !4416, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 %0, metadata !507, metadata !DIExpression()) #35, !dbg !4441
  call void @llvm.dbg.value(metadata i32 %45, metadata !508, metadata !DIExpression()) #35, !dbg !4441
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4443, !tbaa !721
  %47 = icmp sgt i32 %46, -1, !dbg !4445
  br i1 %47, label %48, label %60, !dbg !4446

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #35, !dbg !4447
  call void @llvm.dbg.value(metadata i32 %49, metadata !509, metadata !DIExpression()) #35, !dbg !4441
  %50 = icmp sgt i32 %49, -1, !dbg !4449
  br i1 %50, label %55, label %51, !dbg !4451

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #38, !dbg !4452
  %53 = load i32, i32* %52, align 4, !dbg !4452, !tbaa !721
  %54 = icmp eq i32 %53, 22, !dbg !4453
  br i1 %54, label %56, label %55, !dbg !4454

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4455, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %66, metadata !509, metadata !DIExpression()) #35, !dbg !4441
  br label %124, !dbg !4457

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !4431, metadata !DIExpression()) #35, !dbg !4458
  call void @llvm.dbg.value(metadata i32 %45, metadata !4434, metadata !DIExpression()) #35, !dbg !4458
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !4461
  call void @llvm.dbg.value(metadata i32 %57, metadata !4435, metadata !DIExpression()) #35, !dbg !4458
  call void @llvm.dbg.value(metadata i32 %57, metadata !509, metadata !DIExpression()) #35, !dbg !4441
  %58 = icmp sgt i32 %57, -1, !dbg !4462
  br i1 %58, label %59, label %124, !dbg !4464

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4465, !tbaa !721
  br label %64, !dbg !4466

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4431, metadata !DIExpression()) #35, !dbg !4467
  call void @llvm.dbg.value(metadata i32 %45, metadata !4434, metadata !DIExpression()) #35, !dbg !4467
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !4469
  call void @llvm.dbg.value(metadata i32 %61, metadata !4435, metadata !DIExpression()) #35, !dbg !4467
  call void @llvm.dbg.value(metadata i32 %61, metadata !509, metadata !DIExpression()) #35, !dbg !4441
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !4470
  call void @llvm.dbg.value(metadata i32 %66, metadata !509, metadata !DIExpression()) #35, !dbg !4441
  %67 = icmp sgt i32 %66, -1, !dbg !4471
  %68 = select i1 %67, i1 %65, i1 false, !dbg !4457
  br i1 %68, label %69, label %124, !dbg !4457

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #35, !dbg !4472
  call void @llvm.dbg.value(metadata i32 %70, metadata !510, metadata !DIExpression()) #35, !dbg !4473
  %71 = icmp slt i32 %70, 0, !dbg !4474
  br i1 %71, label %76, label %72, !dbg !4475

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !4476
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #35, !dbg !4477
  %75 = icmp eq i32 %74, -1, !dbg !4478
  br i1 %75, label %76, label %124, !dbg !4479

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #38, !dbg !4480
  %78 = load i32, i32* %77, align 4, !dbg !4480, !tbaa !721
  call void @llvm.dbg.value(metadata i32 %78, metadata !513, metadata !DIExpression()) #35, !dbg !4481
  %79 = call i32 @close(i32 noundef %66) #35, !dbg !4482
  store i32 %78, i32* %77, align 4, !dbg !4483, !tbaa !721
  call void @llvm.dbg.value(metadata i32 -1, metadata !509, metadata !DIExpression()) #35, !dbg !4441
  br label %124, !dbg !4484

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #35, !dbg !4485
  call void @llvm.dbg.value(metadata i32 %81, metadata !4412, metadata !DIExpression()), !dbg !4424
  br label %124, !dbg !4486

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4487
  %84 = load i32, i32* %83, align 8, !dbg !4487
  %85 = icmp sgt i32 %84, -1, !dbg !4487
  br i1 %85, label %94, label %86, !dbg !4487

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !4487
  store i32 %87, i32* %83, align 8, !dbg !4487
  %88 = icmp ult i32 %84, -7, !dbg !4487
  br i1 %88, label %89, label %94, !dbg !4487

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4487
  %91 = load i8*, i8** %90, align 8, !dbg !4487
  %92 = sext i32 %84 to i64, !dbg !4487
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !4487
  br label %98, !dbg !4487

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4487
  %96 = load i8*, i8** %95, align 8, !dbg !4487
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !4487
  store i8* %97, i8** %95, align 8, !dbg !4487
  br label %98, !dbg !4487

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !4487
  %101 = load i32, i32* %100, align 8, !dbg !4487
  call void @llvm.dbg.value(metadata i32 %101, metadata !4418, metadata !DIExpression()), !dbg !4488
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #35, !dbg !4489
  call void @llvm.dbg.value(metadata i32 %102, metadata !4412, metadata !DIExpression()), !dbg !4424
  br label %124, !dbg !4490

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4491
  %105 = load i32, i32* %104, align 8, !dbg !4491
  %106 = icmp sgt i32 %105, -1, !dbg !4491
  br i1 %106, label %115, label %107, !dbg !4491

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !4491
  store i32 %108, i32* %104, align 8, !dbg !4491
  %109 = icmp ult i32 %105, -7, !dbg !4491
  br i1 %109, label %110, label %115, !dbg !4491

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4491
  %112 = load i8*, i8** %111, align 8, !dbg !4491
  %113 = sext i32 %105 to i64, !dbg !4491
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !4491
  br label %119, !dbg !4491

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4491
  %117 = load i8*, i8** %116, align 8, !dbg !4491
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !4491
  store i8* %118, i8** %116, align 8, !dbg !4491
  br label %119, !dbg !4491

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !4491
  %122 = load i8*, i8** %121, align 8, !dbg !4491
  call void @llvm.dbg.value(metadata i8* %122, metadata !4422, metadata !DIExpression()), !dbg !4492
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #35, !dbg !4493
  call void @llvm.dbg.value(metadata i32 %123, metadata !4412, metadata !DIExpression()), !dbg !4424
  br label %124, !dbg !4494

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !4495
  call void @llvm.dbg.value(metadata i32 %125, metadata !4412, metadata !DIExpression()), !dbg !4424
  call void @llvm.va_end(i8* nonnull %4), !dbg !4496
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #35, !dbg !4497
  ret i32 %125, !dbg !4498
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4499 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4503, metadata !DIExpression()), !dbg !4508
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4509
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4509
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4504, metadata !DIExpression()), !dbg !4510
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4511
  %5 = icmp eq i32 %4, 0, !dbg !4511
  br i1 %5, label %6, label %13, !dbg !4513

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4514, metadata !DIExpression()) #35, !dbg !4518
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i64 0, i64 0), metadata !4517, metadata !DIExpression()) #35, !dbg !4518
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i64 0, i64 0), i64 2), !dbg !4521
  %8 = icmp eq i32 %7, 0, !dbg !4522
  br i1 %8, label %12, label %9, !dbg !4523

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4514, metadata !DIExpression()) #35, !dbg !4524
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.201, i64 0, i64 0), metadata !4517, metadata !DIExpression()) #35, !dbg !4524
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.201, i64 0, i64 0), i64 6), !dbg !4526
  %11 = icmp eq i32 %10, 0, !dbg !4527
  br i1 %11, label %12, label %13, !dbg !4528

12:                                               ; preds = %9, %6
  br label %13, !dbg !4529

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4508
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4530
  ret i1 %14, !dbg !4530
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4535, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i8* %1, metadata !4536, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %2, metadata !4537, metadata !DIExpression()), !dbg !4538
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4539
  ret i32 %4, !dbg !4540
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4541 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4545, metadata !DIExpression()), !dbg !4546
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4547
  ret i8* %2, !dbg !4548
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4549 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4551, metadata !DIExpression()), !dbg !4553
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4554
  call void @llvm.dbg.value(metadata i8* %2, metadata !4552, metadata !DIExpression()), !dbg !4553
  ret i8* %2, !dbg !4555
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4556 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4558, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i8* %1, metadata !4559, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %2, metadata !4560, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i32 %0, metadata !4551, metadata !DIExpression()) #35, !dbg !4566
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4568
  call void @llvm.dbg.value(metadata i8* %4, metadata !4552, metadata !DIExpression()) #35, !dbg !4566
  call void @llvm.dbg.value(metadata i8* %4, metadata !4561, metadata !DIExpression()), !dbg !4565
  %5 = icmp eq i8* %4, null, !dbg !4569
  br i1 %5, label %6, label %9, !dbg !4570

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4571
  br i1 %7, label %19, label %8, !dbg !4574

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4575, !tbaa !730
  br label %19, !dbg !4576

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4577
  call void @llvm.dbg.value(metadata i64 %10, metadata !4562, metadata !DIExpression()), !dbg !4578
  %11 = icmp ult i64 %10, %2, !dbg !4579
  br i1 %11, label %12, label %14, !dbg !4581

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4582
  call void @llvm.dbg.value(metadata i8* %1, metadata !4584, metadata !DIExpression()) #35, !dbg !4589
  call void @llvm.dbg.value(metadata i8* %4, metadata !4587, metadata !DIExpression()) #35, !dbg !4589
  call void @llvm.dbg.value(metadata i64 %13, metadata !4588, metadata !DIExpression()) #35, !dbg !4589
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4591
  br label %19, !dbg !4592

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4593
  br i1 %15, label %19, label %16, !dbg !4596

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4597
  call void @llvm.dbg.value(metadata i8* %1, metadata !4584, metadata !DIExpression()) #35, !dbg !4599
  call void @llvm.dbg.value(metadata i8* %4, metadata !4587, metadata !DIExpression()) #35, !dbg !4599
  call void @llvm.dbg.value(metadata i64 %17, metadata !4588, metadata !DIExpression()) #35, !dbg !4599
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4601
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4602
  store i8 0, i8* %18, align 1, !dbg !4603, !tbaa !730
  br label %19, !dbg !4604

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4605
  ret i32 %20, !dbg !4606
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
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { inaccessiblememonly nofree nounwind willreturn }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { nofree nosync nounwind willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #26 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { nounwind allocsize(0) }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { cold }

!llvm.dbg.cu = !{!10, !287, !306, !311, !318, !478, !516, !518, !520, !522, !359, !369, !399, !524, !532, !534, !537, !539, !470, !545, !579, !581, !583, !585, !587, !589, !484, !591, !594, !504, !596, !598, !600}
!llvm.ident = !{!602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602, !602}
!llvm.module.flags = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "default_file_list", scope: !2, file: !3, line: 498, type: !241, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 489, type: !4, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !230)
!3 = !DIFile(filename: "src/tac.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c011dce72bff7945d0c8301de2405c61")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !42, globals: !53, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !28}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !29, line: 42, baseType: !14, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!31 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!32 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!33 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!34 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!35 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!36 = !DIEnumerator(name: "c_quoting_style", value: 5)
!37 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!38 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!39 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!40 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!41 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!42 = !{!8, !43, !44, !6, !48, !49, !46, !52}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !{!0, !54, !56, !58, !60, !62, !86, !91, !178, !192, !194, !196, !198, !208, !226, !228}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "match_length", scope: !10, file: !3, line: 83, type: !49, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "G_buffer", scope: !10, file: !3, line: 86, type: !8, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "read_size", scope: !10, file: !3, line: 89, type: !49, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "G_buffer_size", scope: !10, file: !3, line: 94, type: !49, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "compiled_separator", scope: !10, file: !3, line: 97, type: !64, isLocal: true, isDefinition: true)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !65, line: 413, size: 512, elements: !66)
!65 = !DIFile(filename: "./lib/regex.h", directory: "/src", checksumkind: CSK_MD5, checksum: "fbbb1db427db36bb03cde72fd2b4622e")
!66 = !{!67, !70, !72, !73, !75, !76, !78, !79, !80, !81, !82, !83, !84, !85}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !64, file: !65, line: 417, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !65, line: 417, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !64, file: !65, line: 420, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !65, line: 56, baseType: !51)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !64, file: !65, line: 423, baseType: !71, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !64, file: !65, line: 426, baseType: !74, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !65, line: 71, baseType: !51)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !64, file: !65, line: 431, baseType: !8, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !64, file: !65, line: 437, baseType: !77, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !64, file: !65, line: 440, baseType: !49, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !64, file: !65, line: 446, baseType: !14, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !64, file: !65, line: 457, baseType: !14, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !64, file: !65, line: 461, baseType: !14, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !64, file: !65, line: 465, baseType: !14, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !64, file: !65, line: 469, baseType: !14, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !64, file: !65, line: 472, baseType: !14, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !64, file: !65, line: 475, baseType: !14, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "compiled_separator_fastmap", scope: !10, file: !3, line: 98, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 256)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !93, file: !94, line: 575, type: !6, isLocal: true, isDefinition: true)
!93 = distinct !DISubprogram(name: "oputs_", scope: !94, file: !94, line: 573, type: !95, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !97)
!94 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!95 = !DISubroutineType(types: !96)
!96 = !{null, !46, !46}
!97 = !{!98, !99, !100, !103, !105, !106, !107, !111, !112, !113, !114, !116, !172, !173, !174, !176, !177}
!98 = !DILocalVariable(name: "program", arg: 1, scope: !93, file: !94, line: 573, type: !46)
!99 = !DILocalVariable(name: "option", arg: 2, scope: !93, file: !94, line: 573, type: !46)
!100 = !DILocalVariable(name: "term", scope: !101, file: !94, line: 585, type: !46)
!101 = distinct !DILexicalBlock(scope: !102, file: !94, line: 582, column: 5)
!102 = distinct !DILexicalBlock(scope: !93, file: !94, line: 581, column: 7)
!103 = !DILocalVariable(name: "double_space", scope: !93, file: !94, line: 594, type: !104)
!104 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!105 = !DILocalVariable(name: "first_word", scope: !93, file: !94, line: 595, type: !46)
!106 = !DILocalVariable(name: "option_text", scope: !93, file: !94, line: 596, type: !46)
!107 = !DILocalVariable(name: "s", scope: !108, file: !94, line: 608, type: !46)
!108 = distinct !DILexicalBlock(scope: !109, file: !94, line: 605, column: 5)
!109 = distinct !DILexicalBlock(scope: !110, file: !94, line: 604, column: 12)
!110 = distinct !DILexicalBlock(scope: !93, file: !94, line: 597, column: 7)
!111 = !DILocalVariable(name: "spaces", scope: !108, file: !94, line: 609, type: !49)
!112 = !DILocalVariable(name: "anchor_len", scope: !93, file: !94, line: 620, type: !49)
!113 = !DILocalVariable(name: "desc_text", scope: !93, file: !94, line: 625, type: !46)
!114 = !DILocalVariable(name: "__ptr", scope: !115, file: !94, line: 644, type: !46)
!115 = distinct !DILexicalBlock(scope: !93, file: !94, line: 644, column: 3)
!116 = !DILocalVariable(name: "__stream", scope: !115, file: !94, line: 644, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !120)
!119 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !122)
!121 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !138, !140, !141, !142, !146, !147, !149, !153, !156, !158, !161, !164, !165, !166, !167, !168}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !120, file: !121, line: 51, baseType: !6, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !120, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !120, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !120, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !120, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !120, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !120, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !120, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !120, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !120, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !120, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !120, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !120, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !121, line: 36, flags: DIFlagFwdDecl)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !120, file: !121, line: 70, baseType: !139, size: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !120, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !120, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !120, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !144, line: 152, baseType: !145)
!144 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!145 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !120, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !120, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!148 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !120, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 1)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !120, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !121, line: 43, baseType: null)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !120, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !144, line: 153, baseType: !145)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !120, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !121, line: 37, flags: DIFlagFwdDecl)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !120, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !121, line: 38, flags: DIFlagFwdDecl)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !120, file: !121, line: 93, baseType: !139, size: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !120, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !120, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !120, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !120, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 20)
!172 = !DILocalVariable(name: "__cnt", scope: !115, file: !94, line: 644, type: !49)
!173 = !DILocalVariable(name: "url_program", scope: !93, file: !94, line: 648, type: !46)
!174 = !DILocalVariable(name: "__ptr", scope: !175, file: !94, line: 686, type: !46)
!175 = distinct !DILexicalBlock(scope: !93, file: !94, line: 686, column: 3)
!176 = !DILocalVariable(name: "__stream", scope: !175, file: !94, line: 686, type: !117)
!177 = !DILocalVariable(name: "__cnt", scope: !175, file: !94, line: 686, type: !49)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "longopts", scope: !10, file: !3, line: 101, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1536, elements: !190)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !183, line: 50, size: 256, elements: !184)
!183 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!184 = !{!185, !186, !187, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !183, line: 52, baseType: !46, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !182, file: !183, line: 55, baseType: !6, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !182, file: !183, line: 56, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !182, file: !183, line: 57, baseType: !6, size: 32, offset: 192)
!190 = !{!191}
!191 = !DISubrange(count: 6)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "separator_ends_record", scope: !10, file: !3, line: 73, type: !104, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "sentinel_length", scope: !10, file: !3, line: 78, type: !49, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "separator", scope: !10, file: !3, line: 66, type: !46, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "regs", scope: !10, file: !3, line: 99, type: !200, isLocal: true, isDefinition: true)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !65, line: 497, size: 192, elements: !201)
!201 = !{!202, !204, !207}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !200, file: !65, line: 499, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !65, line: 55, baseType: !14)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !200, file: !65, line: 500, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !65, line: 490, baseType: !6)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !200, file: !65, line: 501, baseType: !205, size: 64, offset: 128)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "buffer", scope: !210, file: !3, line: 154, type: !223, isLocal: true, isDefinition: true)
!210 = distinct !DISubprogram(name: "output", scope: !3, file: !3, line: 152, type: !95, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !211)
!211 = !{!212, !213, !214, !215, !216, !221, !222}
!212 = !DILocalVariable(name: "start", arg: 1, scope: !210, file: !3, line: 152, type: !46)
!213 = !DILocalVariable(name: "past_end", arg: 2, scope: !210, file: !3, line: 152, type: !46)
!214 = !DILocalVariable(name: "bytes_to_add", scope: !210, file: !3, line: 156, type: !49)
!215 = !DILocalVariable(name: "bytes_available", scope: !210, file: !3, line: 157, type: !49)
!216 = !DILocalVariable(name: "__ptr", scope: !217, file: !3, line: 161, type: !46)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 161, column: 11)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 161, column: 11)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 160, column: 5)
!220 = distinct !DILexicalBlock(scope: !210, file: !3, line: 159, column: 7)
!221 = !DILocalVariable(name: "__stream", scope: !217, file: !3, line: 161, type: !117)
!222 = !DILocalVariable(name: "__cnt", scope: !217, file: !3, line: 161, type: !49)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 65536, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 8192)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "bytes_in_buffer", scope: !210, file: !3, line: 155, type: !49, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !10, file: !3, line: 69, type: !104, isLocal: true, isDefinition: true)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238}
!231 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 489, type: !6)
!232 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 489, type: !7)
!233 = !DILocalVariable(name: "error_message", scope: !2, file: !3, line: 491, type: !46)
!234 = !DILocalVariable(name: "optc", scope: !2, file: !3, line: 492, type: !6)
!235 = !DILocalVariable(name: "ok", scope: !2, file: !3, line: 493, type: !104)
!236 = !DILocalVariable(name: "half_buffer_size", scope: !2, file: !3, line: 494, type: !49)
!237 = !DILocalVariable(name: "file", scope: !2, file: !3, line: 499, type: !44)
!238 = !DILocalVariable(name: "i", scope: !239, file: !3, line: 576, type: !49)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 576, column: 5)
!240 = distinct !DILexicalBlock(scope: !2, file: !3, line: 574, column: 3)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 2)
!244 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!245 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "tempfile", scope: !248, file: !249, line: 86, type: !8, isLocal: true, isDefinition: true)
!248 = distinct !DISubprogram(name: "temp_stream", scope: !249, file: !249, line: 84, type: !250, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !293)
!249 = !DIFile(filename: "src/temp-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8878e64e34a1409e8108ead719db2042")
!250 = !DISubroutineType(types: !251)
!251 = !{!104, !252, !7}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !255, file: !121, line: 51, baseType: !6, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !255, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !255, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !255, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !255, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !255, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !255, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !255, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !255, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !255, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !255, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !255, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !255, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !255, file: !121, line: 70, baseType: !271, size: 64, offset: 832)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !255, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !255, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !255, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !255, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !255, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !255, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !255, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !255, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !255, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !255, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !255, file: !121, line: 93, baseType: !271, size: 64, offset: 1344)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !255, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !255, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !255, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !255, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !289, globals: !290, splitDebugInlining: false, nameTableKind: None)
!288 = !{!28}
!289 = !{!43}
!290 = !{!246, !291}
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "tmp_fp", scope: !248, file: !249, line: 87, type: !253, isLocal: true, isDefinition: true)
!293 = !{!294, !295, !296, !299, !300, !301}
!294 = !DILocalVariable(name: "fp", arg: 1, scope: !248, file: !249, line: 84, type: !252)
!295 = !DILocalVariable(name: "file_name", arg: 2, scope: !248, file: !249, line: 84, type: !7)
!296 = !DILocalVariable(name: "tempbuf", scope: !297, file: !249, line: 90, type: !8)
!297 = distinct !DILexicalBlock(scope: !298, file: !249, line: 89, column: 5)
!298 = distinct !DILexicalBlock(scope: !248, file: !249, line: 88, column: 7)
!299 = !DILocalVariable(name: "tempbuf_len", scope: !297, file: !249, line: 91, type: !49)
!300 = !DILocalVariable(name: "fd", scope: !297, file: !249, line: 125, type: !6)
!301 = !DILabel(scope: !302, name: "Reset", file: !249, line: 140)
!302 = distinct !DILexicalBlock(scope: !303, file: !249, line: 135, column: 9)
!303 = distinct !DILexicalBlock(scope: !297, file: !249, line: 134, column: 11)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "Version", scope: !306, file: !307, line: 3, type: !46, isLocal: false, isDefinition: true)
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !308, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!308 = !{!304}
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "file_name", scope: !311, file: !312, line: 45, type: !46, isLocal: true, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !313, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!313 = !{!309, !314}
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !311, file: !312, line: 55, type: !104, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !318, file: !319, line: 66, type: !354, isLocal: false, isDefinition: true)
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !320, globals: !321, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!320 = !{!43, !52}
!321 = !{!322, !348, !316, !350, !352}
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "old_file_name", scope: !324, file: !319, line: 304, type: !46, isLocal: true, isDefinition: true)
!324 = distinct !DISubprogram(name: "verror_at_line", scope: !319, file: !319, line: 298, type: !325, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !341)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !6, !6, !46, !14, !46, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !328, line: 52, baseType: !329)
!328 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !330, line: 32, baseType: !331)
!330 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !332, baseType: !333)
!332 = !DIFile(filename: "lib/error.c", directory: "/src")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !334, size: 256, elements: !335)
!334 = !DINamespace(name: "std", scope: null)
!335 = !{!336, !337, !338, !339, !340}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !333, file: !332, baseType: !43, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !333, file: !332, baseType: !43, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !333, file: !332, baseType: !43, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !333, file: !332, baseType: !6, size: 32, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !333, file: !332, baseType: !6, size: 32, offset: 224)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DILocalVariable(name: "status", arg: 1, scope: !324, file: !319, line: 298, type: !6)
!343 = !DILocalVariable(name: "errnum", arg: 2, scope: !324, file: !319, line: 298, type: !6)
!344 = !DILocalVariable(name: "file_name", arg: 3, scope: !324, file: !319, line: 298, type: !46)
!345 = !DILocalVariable(name: "line_number", arg: 4, scope: !324, file: !319, line: 298, type: !14)
!346 = !DILocalVariable(name: "message", arg: 5, scope: !324, file: !319, line: 298, type: !46)
!347 = !DILocalVariable(name: "args", arg: 6, scope: !324, file: !319, line: 298, type: !327)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "old_line_number", scope: !324, file: !319, line: 305, type: !14, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "error_message_count", scope: !318, file: !319, line: 69, type: !14, isLocal: false, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !318, file: !319, line: 295, type: !6, isLocal: false, isDefinition: true)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null}
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "program_name", scope: !359, file: !360, line: 31, type: !46, isLocal: false, isDefinition: true)
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !361, globals: !362, splitDebugInlining: false, nameTableKind: None)
!360 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!361 = !{!8}
!362 = !{!357}
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "utf07FF", scope: !365, file: !366, line: 46, type: !396, isLocal: true, isDefinition: true)
!365 = distinct !DISubprogram(name: "proper_name_lite", scope: !366, file: !366, line: 38, type: !367, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !371)
!366 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!367 = !DISubroutineType(types: !368)
!368 = !{!46, !46, !46}
!369 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !370, splitDebugInlining: false, nameTableKind: None)
!370 = !{!363}
!371 = !{!372, !373, !374, !375, !380}
!372 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !365, file: !366, line: 38, type: !46)
!373 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !365, file: !366, line: 38, type: !46)
!374 = !DILocalVariable(name: "translation", scope: !365, file: !366, line: 40, type: !46)
!375 = !DILocalVariable(name: "w", scope: !365, file: !366, line: 47, type: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !377, line: 37, baseType: !378)
!377 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !144, line: 57, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !144, line: 42, baseType: !14)
!380 = !DILocalVariable(name: "mbs", scope: !365, file: !366, line: 48, type: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !382, line: 6, baseType: !383)
!382 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !384, line: 21, baseType: !385)
!384 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 13, size: 64, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !385, file: !384, line: 15, baseType: !6, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !385, file: !384, line: 20, baseType: !389, size: 32, offset: 32)
!389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !384, line: 16, size: 32, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !389, file: !384, line: 18, baseType: !14, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !389, file: !384, line: 19, baseType: !393, size: 32)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 4)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 16, elements: !242)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !399, file: !400, line: 76, type: !465, isLocal: false, isDefinition: true)
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !401, retainedTypes: !407, globals: !408, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!401 = !{!28, !402, !12}
!402 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !29, line: 254, baseType: !14, size: 32, elements: !403)
!403 = !{!404, !405, !406}
!404 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!405 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!406 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!407 = !{!6, !48, !49}
!408 = !{!397, !409, !415, !427, !429, !431, !454, !461, !463}
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !399, file: !400, line: 92, type: !411, isLocal: false, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 320, elements: !413)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!413 = !{!414}
!414 = !DISubrange(count: 10)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !399, file: !400, line: 1040, type: !417, isLocal: false, isDefinition: true)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !400, line: 56, size: 448, elements: !418)
!418 = !{!419, !420, !421, !425, !426}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !417, file: !400, line: 59, baseType: !28, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !400, line: 62, baseType: !6, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !417, file: !400, line: 66, baseType: !422, size: 256, offset: 64)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !417, file: !400, line: 69, baseType: !46, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !417, file: !400, line: 72, baseType: !46, size: 64, offset: 384)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !399, file: !400, line: 107, type: !417, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "slot0", scope: !399, file: !400, line: 831, type: !88, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "quote", scope: !433, file: !400, line: 228, type: !452, isLocal: true, isDefinition: true)
!433 = distinct !DISubprogram(name: "gettext_quote", scope: !400, file: !400, line: 197, type: !434, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!46, !46, !28}
!436 = !{!437, !438, !439, !440, !441}
!437 = !DILocalVariable(name: "msgid", arg: 1, scope: !433, file: !400, line: 197, type: !46)
!438 = !DILocalVariable(name: "s", arg: 2, scope: !433, file: !400, line: 197, type: !28)
!439 = !DILocalVariable(name: "translation", scope: !433, file: !400, line: 199, type: !46)
!440 = !DILocalVariable(name: "w", scope: !433, file: !400, line: 229, type: !376)
!441 = !DILocalVariable(name: "mbs", scope: !433, file: !400, line: 230, type: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !382, line: 6, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !384, line: 21, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 13, size: 64, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !444, file: !384, line: 15, baseType: !6, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !444, file: !384, line: 20, baseType: !448, size: 32, offset: 32)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !384, line: 16, size: 32, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !448, file: !384, line: 18, baseType: !14, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !448, file: !384, line: 19, baseType: !393, size: 32)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !453)
!453 = !{!243, !395}
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "slotvec", scope: !399, file: !400, line: 834, type: !456, isLocal: true, isDefinition: true)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !400, line: 823, size: 128, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !457, file: !400, line: 825, baseType: !49, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !457, file: !400, line: 826, baseType: !8, size: 64, offset: 64)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "nslots", scope: !399, file: !400, line: 832, type: !6, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "slotvec0", scope: !399, file: !400, line: 833, type: !457, isLocal: true, isDefinition: true)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 704, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 11)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !470, file: !471, line: 26, type: !473, isLocal: false, isDefinition: true)
!470 = distinct !DICompileUnit(language: DW_LANG_C99, file: !471, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !472, splitDebugInlining: false, nameTableKind: None)
!471 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!472 = !{!468}
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 376, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 47)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "exit_failure", scope: !478, file: !479, line: 24, type: !481, isLocal: false, isDefinition: true)
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !480, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!480 = !{!476}
!481 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "internal_state", scope: !484, file: !485, line: 97, type: !488, isLocal: true, isDefinition: true)
!484 = distinct !DICompileUnit(language: DW_LANG_C99, file: !485, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !486, globals: !487, splitDebugInlining: false, nameTableKind: None)
!485 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!486 = !{!43, !49, !52}
!487 = !{!482}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !382, line: 6, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !384, line: 21, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 13, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !490, file: !384, line: 15, baseType: !6, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !490, file: !384, line: 20, baseType: !494, size: 32, offset: 32)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !384, line: 16, size: 32, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !494, file: !384, line: 18, baseType: !14, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !494, file: !384, line: 19, baseType: !393, size: 32)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !500, file: !501, line: 506, type: !6, isLocal: true, isDefinition: true)
!500 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !501, file: !501, line: 485, type: !502, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !506)
!501 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!502 = !DISubroutineType(types: !503)
!503 = !{!6, !6, !6}
!504 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !505, splitDebugInlining: false, nameTableKind: None)
!505 = !{!498}
!506 = !{!507, !508, !509, !510, !513}
!507 = !DILocalVariable(name: "fd", arg: 1, scope: !500, file: !501, line: 485, type: !6)
!508 = !DILocalVariable(name: "target", arg: 2, scope: !500, file: !501, line: 485, type: !6)
!509 = !DILocalVariable(name: "result", scope: !500, file: !501, line: 487, type: !6)
!510 = !DILocalVariable(name: "flags", scope: !511, file: !501, line: 530, type: !6)
!511 = distinct !DILexicalBlock(scope: !512, file: !501, line: 529, column: 5)
!512 = distinct !DILexicalBlock(scope: !500, file: !501, line: 528, column: 7)
!513 = !DILocalVariable(name: "saved_errno", scope: !514, file: !501, line: 533, type: !6)
!514 = distinct !DILexicalBlock(scope: !515, file: !501, line: 532, column: 9)
!515 = distinct !DILexicalBlock(scope: !511, file: !501, line: 531, column: 11)
!516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!517 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !289, splitDebugInlining: false, nameTableKind: None)
!519 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!520 = distinct !DICompileUnit(language: DW_LANG_C99, file: !521, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !361, splitDebugInlining: false, nameTableKind: None)
!521 = !DIFile(filename: "lib/full-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "717d8293e026c44a771a83b22da54cc2")
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!523 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!524 = distinct !DICompileUnit(language: DW_LANG_C99, file: !525, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !526, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!525 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!526 = !{!527}
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !528, line: 36, baseType: !14, size: 32, elements: !529)
!528 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!529 = !{!530}
!530 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!531 = !{!49}
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!533 = !DIFile(filename: "lib/mkstemp-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c54cf13a93f038494ed7ea783050e30c")
!534 = distinct !DICompileUnit(language: DW_LANG_C99, file: !535, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !536, splitDebugInlining: false, nameTableKind: None)
!535 = !DIFile(filename: "lib/tmpdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6bb1205c798131b3318a3c96a85b8877")
!536 = !{!43, !6}
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!538 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !541, retainedTypes: !289, splitDebugInlining: false, nameTableKind: None)
!540 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!541 = !{!542}
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !540, line: 40, baseType: !14, size: 32, elements: !543)
!543 = !{!544}
!544 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !547, retainedTypes: !578, splitDebugInlining: false, nameTableKind: None)
!546 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!547 = !{!548, !560}
!548 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !549, file: !546, line: 188, baseType: !14, size: 32, elements: !558)
!549 = distinct !DISubprogram(name: "x2nrealloc", scope: !546, file: !546, line: 176, type: !550, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !553)
!550 = !DISubroutineType(types: !551)
!551 = !{!43, !43, !552, !49}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!553 = !{!554, !555, !556, !557}
!554 = !DILocalVariable(name: "p", arg: 1, scope: !549, file: !546, line: 176, type: !43)
!555 = !DILocalVariable(name: "pn", arg: 2, scope: !549, file: !546, line: 176, type: !552)
!556 = !DILocalVariable(name: "s", arg: 3, scope: !549, file: !546, line: 176, type: !49)
!557 = !DILocalVariable(name: "n", scope: !549, file: !546, line: 178, type: !49)
!558 = !{!559}
!559 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !561, file: !546, line: 228, baseType: !14, size: 32, elements: !558)
!561 = distinct !DISubprogram(name: "xpalloc", scope: !546, file: !546, line: 223, type: !562, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !568)
!562 = !DISubroutineType(types: !563)
!563 = !{!43, !43, !564, !565, !567, !565}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !566, line: 130, baseType: !567)
!566 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !50, line: 35, baseType: !145)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577}
!569 = !DILocalVariable(name: "pa", arg: 1, scope: !561, file: !546, line: 223, type: !43)
!570 = !DILocalVariable(name: "pn", arg: 2, scope: !561, file: !546, line: 223, type: !564)
!571 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !561, file: !546, line: 223, type: !565)
!572 = !DILocalVariable(name: "n_max", arg: 4, scope: !561, file: !546, line: 223, type: !567)
!573 = !DILocalVariable(name: "s", arg: 5, scope: !561, file: !546, line: 223, type: !565)
!574 = !DILocalVariable(name: "n0", scope: !561, file: !546, line: 230, type: !565)
!575 = !DILocalVariable(name: "n", scope: !561, file: !546, line: 237, type: !565)
!576 = !DILocalVariable(name: "nbytes", scope: !561, file: !546, line: 248, type: !565)
!577 = !DILocalVariable(name: "adjusted_nbytes", scope: !561, file: !546, line: 252, type: !565)
!578 = !{!8, !43, !104, !145, !51}
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!582 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!584 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!586 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!588 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !289, splitDebugInlining: false, nameTableKind: None)
!590 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !593, splitDebugInlining: false, nameTableKind: None)
!592 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!593 = !{!104, !51, !43}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!595 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!597 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!599 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !289, splitDebugInlining: false, nameTableKind: None)
!601 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!602 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!603 = !{i32 7, !"Dwarf Version", i32 5}
!604 = !{i32 2, !"Debug Info Version", i32 3}
!605 = !{i32 1, !"wchar_size", i32 4}
!606 = !{i32 1, !"branch-target-enforcement", i32 0}
!607 = !{i32 1, !"sign-return-address", i32 0}
!608 = !{i32 1, !"sign-return-address-all", i32 0}
!609 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!610 = !{i32 7, !"PIC Level", i32 2}
!611 = !{i32 7, !"PIE Level", i32 2}
!612 = !{i32 7, !"uwtable", i32 1}
!613 = !{i32 7, !"frame-pointer", i32 1}
!614 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 112, type: !615, scopeLine: 113, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !6}
!617 = !{!618}
!618 = !DILocalVariable(name: "status", arg: 1, scope: !614, file: !3, line: 112, type: !6)
!619 = !DILocation(line: 0, scope: !614)
!620 = !DILocation(line: 114, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !614, file: !3, line: 114, column: 7)
!622 = !DILocation(line: 114, column: 7, scope: !614)
!623 = !DILocation(line: 115, column: 5, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 115, column: 5)
!625 = !{!626, !626, i64 0}
!626 = !{!"any pointer", !627, i64 0}
!627 = !{!"omnipotent char", !628, i64 0}
!628 = !{!"Simple C/C++ TBAA"}
!629 = !DILocation(line: 118, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !621, file: !3, line: 117, column: 5)
!631 = !DILocation(line: 122, column: 7, scope: !630)
!632 = !DILocation(line: 729, column: 3, scope: !633, inlinedAt: !635)
!633 = distinct !DISubprogram(name: "emit_stdin_note", scope: !94, file: !94, line: 727, type: !355, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !634)
!634 = !{}
!635 = distinct !DILocation(line: 126, column: 7, scope: !630)
!636 = !DILocation(line: 736, column: 3, scope: !637, inlinedAt: !638)
!637 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !94, file: !94, line: 734, type: !355, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !634)
!638 = distinct !DILocation(line: 127, column: 7, scope: !630)
!639 = !DILocation(line: 129, column: 7, scope: !630)
!640 = !DILocation(line: 132, column: 7, scope: !630)
!641 = !DILocation(line: 135, column: 7, scope: !630)
!642 = !DILocation(line: 138, column: 7, scope: !630)
!643 = !DILocation(line: 139, column: 7, scope: !630)
!644 = !DILocation(line: 140, column: 7, scope: !630)
!645 = !DILocalVariable(name: "program", arg: 1, scope: !646, file: !94, line: 836, type: !46)
!646 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !94, file: !94, line: 836, type: !647, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !46}
!649 = !{!645, !650, !659, !660, !662, !663}
!650 = !DILocalVariable(name: "infomap", scope: !646, file: !94, line: 838, type: !651)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 896, elements: !657)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !646, file: !94, line: 838, size: 128, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !653, file: !94, line: 838, baseType: !46, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !653, file: !94, line: 838, baseType: !46, size: 64, offset: 64)
!657 = !{!658}
!658 = !DISubrange(count: 7)
!659 = !DILocalVariable(name: "node", scope: !646, file: !94, line: 848, type: !46)
!660 = !DILocalVariable(name: "map_prog", scope: !646, file: !94, line: 849, type: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!662 = !DILocalVariable(name: "lc_messages", scope: !646, file: !94, line: 861, type: !46)
!663 = !DILocalVariable(name: "url_program", scope: !646, file: !94, line: 874, type: !46)
!664 = !DILocation(line: 0, scope: !646, inlinedAt: !665)
!665 = distinct !DILocation(line: 143, column: 7, scope: !630)
!666 = !DILocation(line: 838, column: 3, scope: !646, inlinedAt: !665)
!667 = !DILocation(line: 838, column: 67, scope: !646, inlinedAt: !665)
!668 = !DILocation(line: 849, column: 36, scope: !646, inlinedAt: !665)
!669 = !DILocation(line: 851, column: 3, scope: !646, inlinedAt: !665)
!670 = !DILocalVariable(name: "__s1", arg: 1, scope: !671, file: !672, line: 1359, type: !46)
!671 = distinct !DISubprogram(name: "streq", scope: !672, file: !672, line: 1359, type: !673, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !675)
!672 = !DIFile(filename: "./lib/string.h", directory: "/src")
!673 = !DISubroutineType(types: !674)
!674 = !{!104, !46, !46}
!675 = !{!670, !676}
!676 = !DILocalVariable(name: "__s2", arg: 2, scope: !671, file: !672, line: 1359, type: !46)
!677 = !DILocation(line: 0, scope: !671, inlinedAt: !678)
!678 = distinct !DILocation(line: 851, column: 33, scope: !646, inlinedAt: !665)
!679 = !DILocation(line: 1361, column: 11, scope: !671, inlinedAt: !678)
!680 = !DILocation(line: 1361, column: 10, scope: !671, inlinedAt: !678)
!681 = !DILocation(line: 852, column: 13, scope: !646, inlinedAt: !665)
!682 = !DILocation(line: 851, column: 20, scope: !646, inlinedAt: !665)
!683 = !{!684, !626, i64 0}
!684 = !{!"infomap", !626, i64 0, !626, i64 8}
!685 = !DILocation(line: 851, column: 10, scope: !646, inlinedAt: !665)
!686 = !DILocation(line: 851, column: 28, scope: !646, inlinedAt: !665)
!687 = distinct !{!687, !669, !681, !688}
!688 = !{!"llvm.loop.mustprogress"}
!689 = !DILocation(line: 854, column: 17, scope: !690, inlinedAt: !665)
!690 = distinct !DILexicalBlock(scope: !646, file: !94, line: 854, column: 7)
!691 = !{!684, !626, i64 8}
!692 = !DILocation(line: 854, column: 7, scope: !690, inlinedAt: !665)
!693 = !DILocation(line: 854, column: 7, scope: !646, inlinedAt: !665)
!694 = !DILocation(line: 857, column: 3, scope: !646, inlinedAt: !665)
!695 = !DILocation(line: 861, column: 29, scope: !646, inlinedAt: !665)
!696 = !DILocation(line: 862, column: 7, scope: !697, inlinedAt: !665)
!697 = distinct !DILexicalBlock(scope: !646, file: !94, line: 862, column: 7)
!698 = !DILocation(line: 862, column: 19, scope: !697, inlinedAt: !665)
!699 = !DILocation(line: 862, column: 22, scope: !697, inlinedAt: !665)
!700 = !DILocation(line: 862, column: 7, scope: !646, inlinedAt: !665)
!701 = !DILocation(line: 868, column: 7, scope: !702, inlinedAt: !665)
!702 = distinct !DILexicalBlock(scope: !697, file: !94, line: 863, column: 5)
!703 = !DILocation(line: 870, column: 5, scope: !702, inlinedAt: !665)
!704 = !DILocation(line: 0, scope: !671, inlinedAt: !705)
!705 = distinct !DILocation(line: 874, column: 29, scope: !646, inlinedAt: !665)
!706 = !DILocation(line: 875, column: 3, scope: !646, inlinedAt: !665)
!707 = !DILocation(line: 877, column: 3, scope: !646, inlinedAt: !665)
!708 = !DILocation(line: 879, column: 1, scope: !646, inlinedAt: !665)
!709 = !DILocation(line: 145, column: 3, scope: !614)
!710 = !DISubprogram(name: "dcgettext", scope: !711, file: !711, line: 51, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!711 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!712 = !DISubroutineType(types: !713)
!713 = !{!8, !46, !46, !6}
!714 = !DISubprogram(name: "fputs_unlocked", scope: !328, file: !328, line: 691, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!715 = !DISubroutineType(types: !716)
!716 = !{!6, !717, !718}
!717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!719 = !DILocation(line: 0, scope: !93)
!720 = !DILocation(line: 581, column: 7, scope: !102)
!721 = !{!722, !722, i64 0}
!722 = !{!"int", !627, i64 0}
!723 = !DILocation(line: 581, column: 19, scope: !102)
!724 = !DILocation(line: 581, column: 7, scope: !93)
!725 = !DILocation(line: 585, column: 26, scope: !101)
!726 = !DILocation(line: 0, scope: !101)
!727 = !DILocation(line: 586, column: 23, scope: !101)
!728 = !DILocation(line: 586, column: 28, scope: !101)
!729 = !DILocation(line: 586, column: 32, scope: !101)
!730 = !{!627, !627, i64 0}
!731 = !DILocation(line: 586, column: 38, scope: !101)
!732 = !DILocation(line: 0, scope: !671, inlinedAt: !733)
!733 = distinct !DILocation(line: 586, column: 41, scope: !101)
!734 = !DILocation(line: 1361, column: 11, scope: !671, inlinedAt: !733)
!735 = !DILocation(line: 1361, column: 10, scope: !671, inlinedAt: !733)
!736 = !DILocation(line: 586, column: 19, scope: !101)
!737 = !DILocation(line: 587, column: 5, scope: !101)
!738 = !DILocation(line: 588, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !93, file: !94, line: 588, column: 7)
!740 = !DILocation(line: 588, column: 7, scope: !93)
!741 = !DILocation(line: 590, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !739, file: !94, line: 589, column: 5)
!743 = !DILocation(line: 591, column: 7, scope: !742)
!744 = !DILocation(line: 595, column: 37, scope: !93)
!745 = !DILocation(line: 595, column: 35, scope: !93)
!746 = !DILocation(line: 596, column: 29, scope: !93)
!747 = !DILocation(line: 597, column: 8, scope: !110)
!748 = !DILocation(line: 597, column: 7, scope: !93)
!749 = !DILocation(line: 604, column: 24, scope: !109)
!750 = !DILocation(line: 604, column: 12, scope: !110)
!751 = !DILocation(line: 0, scope: !108)
!752 = !DILocation(line: 610, column: 16, scope: !108)
!753 = !DILocation(line: 610, column: 7, scope: !108)
!754 = !DILocation(line: 611, column: 21, scope: !108)
!755 = !{!756, !756, i64 0}
!756 = !{!"short", !627, i64 0}
!757 = !DILocation(line: 611, column: 19, scope: !108)
!758 = !DILocation(line: 611, column: 16, scope: !108)
!759 = !DILocation(line: 610, column: 30, scope: !108)
!760 = distinct !{!760, !753, !754, !688}
!761 = !DILocation(line: 612, column: 18, scope: !762)
!762 = distinct !DILexicalBlock(scope: !108, file: !94, line: 612, column: 11)
!763 = !DILocation(line: 612, column: 11, scope: !108)
!764 = !DILocation(line: 620, column: 23, scope: !93)
!765 = !DILocation(line: 625, column: 39, scope: !93)
!766 = !DILocation(line: 626, column: 3, scope: !93)
!767 = !DILocation(line: 626, column: 10, scope: !93)
!768 = !DILocation(line: 626, column: 21, scope: !93)
!769 = !DILocation(line: 628, column: 44, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !94, line: 628, column: 11)
!771 = distinct !DILexicalBlock(scope: !93, file: !94, line: 627, column: 5)
!772 = !DILocation(line: 628, column: 32, scope: !770)
!773 = !DILocation(line: 628, column: 49, scope: !770)
!774 = !DILocation(line: 628, column: 11, scope: !771)
!775 = !DILocation(line: 630, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !771, file: !94, line: 630, column: 11)
!777 = !DILocation(line: 630, column: 11, scope: !771)
!778 = !DILocation(line: 632, column: 26, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !94, line: 632, column: 15)
!780 = distinct !DILexicalBlock(scope: !776, file: !94, line: 631, column: 9)
!781 = !DILocation(line: 632, column: 34, scope: !779)
!782 = !DILocation(line: 632, column: 37, scope: !779)
!783 = !DILocation(line: 632, column: 15, scope: !780)
!784 = !DILocation(line: 636, column: 29, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !94, line: 636, column: 15)
!786 = !DILocation(line: 640, column: 16, scope: !771)
!787 = distinct !{!787, !766, !788, !688}
!788 = !DILocation(line: 641, column: 5, scope: !93)
!789 = !DILocation(line: 644, column: 3, scope: !93)
!790 = !DILocation(line: 0, scope: !671, inlinedAt: !791)
!791 = distinct !DILocation(line: 648, column: 31, scope: !93)
!792 = !DILocation(line: 0, scope: !671, inlinedAt: !793)
!793 = distinct !DILocation(line: 649, column: 31, scope: !93)
!794 = !DILocation(line: 0, scope: !671, inlinedAt: !795)
!795 = distinct !DILocation(line: 650, column: 31, scope: !93)
!796 = !DILocation(line: 0, scope: !671, inlinedAt: !797)
!797 = distinct !DILocation(line: 651, column: 31, scope: !93)
!798 = !DILocation(line: 0, scope: !671, inlinedAt: !799)
!799 = distinct !DILocation(line: 652, column: 31, scope: !93)
!800 = !DILocation(line: 0, scope: !671, inlinedAt: !801)
!801 = distinct !DILocation(line: 653, column: 31, scope: !93)
!802 = !DILocation(line: 0, scope: !671, inlinedAt: !803)
!803 = distinct !DILocation(line: 654, column: 31, scope: !93)
!804 = !DILocation(line: 0, scope: !671, inlinedAt: !805)
!805 = distinct !DILocation(line: 655, column: 31, scope: !93)
!806 = !DILocation(line: 0, scope: !671, inlinedAt: !807)
!807 = distinct !DILocation(line: 656, column: 31, scope: !93)
!808 = !DILocation(line: 0, scope: !671, inlinedAt: !809)
!809 = distinct !DILocation(line: 657, column: 31, scope: !93)
!810 = !DILocation(line: 663, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !93, file: !94, line: 663, column: 7)
!812 = !DILocation(line: 664, column: 7, scope: !811)
!813 = !DILocation(line: 664, column: 10, scope: !811)
!814 = !DILocation(line: 663, column: 7, scope: !93)
!815 = !DILocation(line: 669, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !811, file: !94, line: 665, column: 5)
!817 = !DILocation(line: 671, column: 5, scope: !816)
!818 = !DILocation(line: 676, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !94, line: 673, column: 5)
!820 = !DILocation(line: 679, column: 3, scope: !93)
!821 = !DILocation(line: 683, column: 3, scope: !93)
!822 = !DILocation(line: 686, column: 3, scope: !93)
!823 = !DILocation(line: 688, column: 3, scope: !93)
!824 = !DILocation(line: 691, column: 3, scope: !93)
!825 = !DILocation(line: 695, column: 3, scope: !93)
!826 = !DILocation(line: 696, column: 1, scope: !93)
!827 = !DISubprogram(name: "setlocale", scope: !828, file: !828, line: 122, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!828 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!829 = !DISubroutineType(types: !830)
!830 = !{!8, !6, !46}
!831 = !DISubprogram(name: "getenv", scope: !832, file: !832, line: 641, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!832 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!833 = !DISubroutineType(types: !834)
!834 = !{!8, !46}
!835 = !DISubprogram(name: "fwrite_unlocked", scope: !328, file: !328, line: 704, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!836 = !DISubroutineType(types: !837)
!837 = !{!49, !838, !49, !49, !718}
!838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!841 = !DILocation(line: 0, scope: !2)
!842 = !DILocation(line: 502, column: 21, scope: !2)
!843 = !DILocation(line: 502, column: 3, scope: !2)
!844 = !DILocation(line: 503, column: 3, scope: !2)
!845 = !DILocation(line: 504, column: 3, scope: !2)
!846 = !DILocation(line: 505, column: 3, scope: !2)
!847 = !DILocation(line: 507, column: 3, scope: !2)
!848 = !DILocation(line: 509, column: 3, scope: !2)
!849 = !DILocation(line: 509, column: 18, scope: !2)
!850 = !DILocation(line: 514, column: 33, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 512, column: 9)
!852 = distinct !DILexicalBlock(scope: !2, file: !3, line: 510, column: 5)
!853 = !DILocation(line: 515, column: 11, scope: !851)
!854 = !DILocation(line: 517, column: 27, scope: !851)
!855 = !{!856, !856, i64 0}
!856 = !{!"long", !627, i64 0}
!857 = !DILocation(line: 518, column: 11, scope: !851)
!858 = !DILocation(line: 520, column: 23, scope: !851)
!859 = !DILocation(line: 520, column: 21, scope: !851)
!860 = !DILocation(line: 521, column: 11, scope: !851)
!861 = distinct !{!861, !848, !862, !688}
!862 = !DILocation(line: 527, column: 5, scope: !2)
!863 = !DILocation(line: 522, column: 9, scope: !851)
!864 = !DILocation(line: 523, column: 9, scope: !851)
!865 = !DILocation(line: 525, column: 11, scope: !851)
!866 = !DILocation(line: 529, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !2, file: !3, line: 529, column: 7)
!868 = !DILocation(line: 529, column: 23, scope: !867)
!869 = !DILocation(line: 0, scope: !867)
!870 = !DILocation(line: 529, column: 7, scope: !2)
!871 = !DILocation(line: 531, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !3, line: 530, column: 5)
!873 = !DILocation(line: 532, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !872, file: !3, line: 531, column: 11)
!875 = !DILocation(line: 535, column: 36, scope: !872)
!876 = !DILocation(line: 536, column: 34, scope: !872)
!877 = !{!878, !626, i64 32}
!878 = !{!"re_pattern_buffer", !626, i64 0, !856, i64 8, !856, i64 16, !856, i64 24, !626, i64 32, !626, i64 40, !856, i64 48, !722, i64 56, !722, i64 56, !722, i64 56, !722, i64 56, !722, i64 56, !722, i64 56, !722, i64 56}
!879 = !DILocation(line: 537, column: 36, scope: !872)
!880 = !{!878, !626, i64 40}
!881 = !DILocation(line: 538, column: 54, scope: !872)
!882 = !DILocation(line: 538, column: 23, scope: !872)
!883 = !DILocation(line: 540, column: 11, scope: !884)
!884 = distinct !DILexicalBlock(scope: !872, file: !3, line: 540, column: 11)
!885 = !DILocation(line: 540, column: 11, scope: !872)
!886 = !DILocation(line: 541, column: 9, scope: !884)
!887 = !DILocation(line: 544, column: 38, scope: !867)
!888 = !DILocation(line: 544, column: 51, scope: !867)
!889 = !DILocation(line: 544, column: 36, scope: !867)
!890 = !DILocation(line: 544, column: 18, scope: !867)
!891 = !DILocation(line: 547, column: 26, scope: !2)
!892 = !DILocation(line: 547, column: 3, scope: !2)
!893 = !DILocation(line: 549, column: 24, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 549, column: 11)
!895 = distinct !DILexicalBlock(scope: !2, file: !3, line: 548, column: 5)
!896 = !DILocation(line: 549, column: 11, scope: !895)
!897 = !DILocation(line: 550, column: 9, scope: !894)
!898 = !DILocation(line: 551, column: 17, scope: !895)
!899 = distinct !{!899, !892, !900, !688}
!900 = !DILocation(line: 552, column: 5, scope: !2)
!901 = !DILocation(line: 553, column: 32, scope: !2)
!902 = !DILocation(line: 553, column: 50, scope: !2)
!903 = !DILocation(line: 554, column: 21, scope: !2)
!904 = !DILocation(line: 554, column: 17, scope: !2)
!905 = !DILocation(line: 555, column: 20, scope: !906)
!906 = distinct !DILexicalBlock(scope: !2, file: !3, line: 555, column: 7)
!907 = !DILocation(line: 555, column: 39, scope: !906)
!908 = !DILocation(line: 556, column: 5, scope: !906)
!909 = !DILocation(line: 557, column: 14, scope: !2)
!910 = !DILocation(line: 558, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !2, file: !3, line: 558, column: 7)
!912 = !DILocation(line: 558, column: 7, scope: !2)
!913 = !DILocation(line: 560, column: 25, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 559, column: 5)
!915 = !DILocation(line: 560, column: 56, scope: !914)
!916 = !DILocation(line: 560, column: 55, scope: !914)
!917 = !DILocation(line: 560, column: 52, scope: !914)
!918 = !DILocalVariable(name: "__dest", arg: 1, scope: !919, file: !920, line: 26, type: !923)
!919 = distinct !DISubprogram(name: "memcpy", scope: !920, file: !920, line: 26, type: !921, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !924)
!920 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!921 = !DISubroutineType(types: !922)
!922 = !{!43, !923, !838, !49}
!923 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!924 = !{!918, !925, !926}
!925 = !DILocalVariable(name: "__src", arg: 2, scope: !919, file: !920, line: 26, type: !838)
!926 = !DILocalVariable(name: "__len", arg: 3, scope: !919, file: !920, line: 26, type: !49)
!927 = !DILocation(line: 0, scope: !919, inlinedAt: !928)
!928 = distinct !DILocation(line: 560, column: 7, scope: !914)
!929 = !DILocation(line: 29, column: 10, scope: !919, inlinedAt: !928)
!930 = !DILocation(line: 562, column: 5, scope: !914)
!931 = !DILocation(line: 0, scope: !911)
!932 = !DILocation(line: 568, column: 11, scope: !2)
!933 = !DILocation(line: 568, column: 18, scope: !2)
!934 = !DILocation(line: 0, scope: !239)
!935 = !DILocation(line: 576, column: 24, scope: !936)
!936 = distinct !DILexicalBlock(scope: !239, file: !3, line: 576, column: 5)
!937 = !DILocation(line: 576, column: 5, scope: !239)
!938 = !DILocation(line: 581, column: 3, scope: !2)
!939 = !DILocation(line: 583, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !2, file: !3, line: 583, column: 7)
!941 = !DILocation(line: 583, column: 23, scope: !940)
!942 = !DILocalVariable(name: "filename", arg: 1, scope: !943, file: !3, line: 449, type: !46)
!943 = distinct !DISubprogram(name: "tac_file", scope: !3, file: !3, line: 449, type: !944, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!104, !46}
!946 = !{!942, !947, !948, !950, !951}
!947 = !DILocalVariable(name: "ok", scope: !943, file: !3, line: 451, type: !104)
!948 = !DILocalVariable(name: "file_size", scope: !943, file: !3, line: 452, type: !949)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !328, line: 63, baseType: !143)
!950 = !DILocalVariable(name: "fd", scope: !943, file: !3, line: 453, type: !6)
!951 = !DILocalVariable(name: "is_stdin", scope: !943, file: !3, line: 454, type: !104)
!952 = !DILocation(line: 0, scope: !943, inlinedAt: !953)
!953 = distinct !DILocation(line: 577, column: 13, scope: !936)
!954 = !DILocation(line: 0, scope: !671, inlinedAt: !955)
!955 = distinct !DILocation(line: 454, column: 19, scope: !943, inlinedAt: !953)
!956 = !DILocation(line: 1361, column: 11, scope: !671, inlinedAt: !955)
!957 = !DILocation(line: 1361, column: 10, scope: !671, inlinedAt: !955)
!958 = !DILocation(line: 456, column: 7, scope: !943, inlinedAt: !953)
!959 = !DILocation(line: 458, column: 23, scope: !960, inlinedAt: !953)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 457, column: 5)
!961 = distinct !DILexicalBlock(scope: !943, file: !3, line: 456, column: 7)
!962 = !DILocation(line: 460, column: 18, scope: !960, inlinedAt: !953)
!963 = !DILocation(line: 462, column: 5, scope: !960, inlinedAt: !953)
!964 = !DILocation(line: 465, column: 12, scope: !965, inlinedAt: !953)
!965 = distinct !DILexicalBlock(scope: !961, file: !3, line: 464, column: 5)
!966 = !DILocation(line: 466, column: 14, scope: !967, inlinedAt: !953)
!967 = distinct !DILexicalBlock(scope: !965, file: !3, line: 466, column: 11)
!968 = !DILocation(line: 466, column: 11, scope: !965, inlinedAt: !953)
!969 = !DILocation(line: 468, column: 11, scope: !970, inlinedAt: !953)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 467, column: 9)
!971 = !DILocation(line: 470, column: 11, scope: !970, inlinedAt: !953)
!972 = !DILocation(line: 0, scope: !961, inlinedAt: !953)
!973 = !DILocation(line: 474, column: 15, scope: !943, inlinedAt: !953)
!974 = !DILocation(line: 476, column: 19, scope: !943, inlinedAt: !953)
!975 = !DILocation(line: 476, column: 23, scope: !943, inlinedAt: !953)
!976 = !DILocation(line: 476, column: 26, scope: !943, inlinedAt: !953)
!977 = !DILocation(line: 476, column: 9, scope: !943, inlinedAt: !953)
!978 = !DILocalVariable(name: "input_fd", arg: 1, scope: !979, file: !3, line: 432, type: !6)
!979 = distinct !DISubprogram(name: "tac_nonseekable", scope: !3, file: !3, line: 432, type: !980, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!104, !6, !46}
!982 = !{!978, !983, !984, !985, !986, !987}
!983 = !DILocalVariable(name: "file", arg: 2, scope: !979, file: !3, line: 432, type: !46)
!984 = !DILocalVariable(name: "tmp_stream", scope: !979, file: !3, line: 434, type: !117)
!985 = !DILocalVariable(name: "tmp_file", scope: !979, file: !3, line: 435, type: !8)
!986 = !DILocalVariable(name: "bytes_copied", scope: !979, file: !3, line: 436, type: !949)
!987 = !DILocalVariable(name: "ok", scope: !979, file: !3, line: 440, type: !104)
!988 = !DILocation(line: 0, scope: !979, inlinedAt: !989)
!989 = distinct !DILocation(line: 477, column: 11, scope: !943, inlinedAt: !953)
!990 = !DILocalVariable(name: "g_tmp", arg: 1, scope: !991, file: !3, line: 386, type: !994)
!991 = distinct !DISubprogram(name: "copy_to_temp", scope: !3, file: !3, line: 386, type: !992, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !995)
!992 = !DISubroutineType(types: !993)
!993 = !{!949, !994, !7, !6, !46}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!995 = !{!990, !996, !997, !998, !999, !1000, !1001, !1005, !1009, !1012, !1013}
!996 = !DILocalVariable(name: "g_tempfile", arg: 2, scope: !991, file: !3, line: 386, type: !7)
!997 = !DILocalVariable(name: "input_fd", arg: 3, scope: !991, file: !3, line: 386, type: !6)
!998 = !DILocalVariable(name: "file", arg: 4, scope: !991, file: !3, line: 386, type: !46)
!999 = !DILocalVariable(name: "fp", scope: !991, file: !3, line: 388, type: !117)
!1000 = !DILocalVariable(name: "file_name", scope: !991, file: !3, line: 389, type: !8)
!1001 = !DILocalVariable(name: "bytes_copied", scope: !991, file: !3, line: 390, type: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1003, line: 102, baseType: !1004)
!1003 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !144, line: 73, baseType: !51)
!1005 = !DILocalVariable(name: "bytes_read", scope: !1006, file: !3, line: 396, type: !1007)
!1006 = distinct !DILexicalBlock(scope: !991, file: !3, line: 395, column: 5)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !328, line: 77, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !144, line: 194, baseType: !145)
!1009 = !DILocalVariable(name: "__ptr", scope: !1010, file: !3, line: 405, type: !46)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 405, column: 11)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 405, column: 11)
!1012 = !DILocalVariable(name: "__stream", scope: !1010, file: !3, line: 405, type: !117)
!1013 = !DILocalVariable(name: "__cnt", scope: !1010, file: !3, line: 405, type: !49)
!1014 = !DILocation(line: 0, scope: !991, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 436, column: 24, scope: !979, inlinedAt: !989)
!1016 = !DILocation(line: 388, column: 3, scope: !991, inlinedAt: !1015)
!1017 = !DILocation(line: 389, column: 3, scope: !991, inlinedAt: !1015)
!1018 = !DILocation(line: 391, column: 8, scope: !1019, inlinedAt: !1015)
!1019 = distinct !DILexicalBlock(scope: !991, file: !3, line: 391, column: 7)
!1020 = !DILocation(line: 391, column: 7, scope: !991, inlinedAt: !1015)
!1021 = !DILocation(line: 396, column: 44, scope: !1006, inlinedAt: !1015)
!1022 = !DILocation(line: 396, column: 54, scope: !1006, inlinedAt: !1015)
!1023 = !DILocation(line: 396, column: 28, scope: !1006, inlinedAt: !1015)
!1024 = !DILocation(line: 0, scope: !1006, inlinedAt: !1015)
!1025 = !DILocation(line: 397, column: 22, scope: !1026, inlinedAt: !1015)
!1026 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 397, column: 11)
!1027 = !DILocation(line: 397, column: 11, scope: !1006, inlinedAt: !1015)
!1028 = !DILocation(line: 399, column: 22, scope: !1029, inlinedAt: !1015)
!1029 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 399, column: 11)
!1030 = !DILocation(line: 399, column: 11, scope: !1006, inlinedAt: !1015)
!1031 = !DILocation(line: 401, column: 11, scope: !1032, inlinedAt: !1015)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 400, column: 9)
!1033 = !DILocation(line: 402, column: 11, scope: !1032, inlinedAt: !1015)
!1034 = !DILocation(line: 0, scope: !1011, inlinedAt: !1015)
!1035 = !DILocation(line: 405, column: 11, scope: !1011, inlinedAt: !1015)
!1036 = !DILocation(line: 405, column: 48, scope: !1011, inlinedAt: !1015)
!1037 = !DILocation(line: 414, column: 20, scope: !1006, inlinedAt: !1015)
!1038 = !DILocation(line: 405, column: 11, scope: !1006, inlinedAt: !1015)
!1039 = !DILocation(line: 407, column: 11, scope: !1040, inlinedAt: !1015)
!1040 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 406, column: 9)
!1041 = !DILocation(line: 408, column: 11, scope: !1040, inlinedAt: !1015)
!1042 = !DILocation(line: 390, column: 13, scope: !991, inlinedAt: !1015)
!1043 = !DILocation(line: 417, column: 7, scope: !1044, inlinedAt: !1015)
!1044 = distinct !DILexicalBlock(scope: !991, file: !3, line: 417, column: 7)
!1045 = !DILocation(line: 417, column: 19, scope: !1044, inlinedAt: !1015)
!1046 = !DILocation(line: 417, column: 7, scope: !991, inlinedAt: !1015)
!1047 = !DILocation(line: 419, column: 7, scope: !1048, inlinedAt: !1015)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 418, column: 5)
!1049 = !DILocation(line: 420, column: 7, scope: !1048, inlinedAt: !1015)
!1050 = !DILocation(line: 426, column: 1, scope: !991, inlinedAt: !1015)
!1051 = !DILocation(line: 437, column: 7, scope: !979, inlinedAt: !989)
!1052 = !DILocation(line: 423, column: 12, scope: !991, inlinedAt: !1015)
!1053 = !DILocation(line: 424, column: 17, scope: !991, inlinedAt: !1015)
!1054 = !DILocation(line: 437, column: 20, scope: !1055, inlinedAt: !989)
!1055 = distinct !DILexicalBlock(scope: !979, file: !3, line: 437, column: 7)
!1056 = !DILocation(line: 440, column: 27, scope: !979, inlinedAt: !989)
!1057 = !DILocation(line: 440, column: 13, scope: !979, inlinedAt: !989)
!1058 = !DILocation(line: 478, column: 11, scope: !943, inlinedAt: !953)
!1059 = !DILocation(line: 480, column: 17, scope: !1060, inlinedAt: !953)
!1060 = distinct !DILexicalBlock(scope: !943, file: !3, line: 480, column: 7)
!1061 = !DILocation(line: 480, column: 20, scope: !1060, inlinedAt: !953)
!1062 = !DILocation(line: 480, column: 31, scope: !1060, inlinedAt: !953)
!1063 = !DILocation(line: 480, column: 7, scope: !943, inlinedAt: !953)
!1064 = !DILocation(line: 482, column: 7, scope: !1065, inlinedAt: !953)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 481, column: 5)
!1066 = !DILocation(line: 484, column: 5, scope: !1065, inlinedAt: !953)
!1067 = !DILocation(line: 577, column: 10, scope: !936)
!1068 = !DILocation(line: 576, column: 33, scope: !936)
!1069 = distinct !{!1069, !937, !1070, !688}
!1070 = !DILocation(line: 577, column: 30, scope: !239)
!1071 = !DILocation(line: 583, column: 26, scope: !940)
!1072 = !DILocation(line: 583, column: 47, scope: !940)
!1073 = !DILocation(line: 583, column: 7, scope: !2)
!1074 = !DILocation(line: 585, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !940, file: !3, line: 584, column: 5)
!1076 = !DILocation(line: 587, column: 5, scope: !1075)
!1077 = !DILocation(line: 589, column: 3, scope: !2)
!1078 = !DILocation(line: 590, column: 1, scope: !2)
!1079 = !DISubprogram(name: "bindtextdomain", scope: !711, file: !711, line: 86, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!8, !46, !46}
!1082 = !DISubprogram(name: "textdomain", scope: !711, file: !711, line: 82, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1083 = !DISubprogram(name: "atexit", scope: !832, file: !832, line: 602, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!6, !354}
!1086 = !DISubprogram(name: "getopt_long", scope: !183, file: !183, line: 66, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!6, !6, !1089, !46, !1091, !188}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1092 = !DISubprogram(name: "re_compile_pattern", scope: !65, file: !65, line: 548, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!46, !46, !49, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1096 = !DILocation(line: 0, scope: !210)
!1097 = !DILocation(line: 156, column: 34, scope: !210)
!1098 = !DILocation(line: 157, column: 40, scope: !210)
!1099 = !DILocation(line: 157, column: 38, scope: !210)
!1100 = !DILocation(line: 159, column: 8, scope: !220)
!1101 = !DILocation(line: 159, column: 7, scope: !210)
!1102 = !DILocation(line: 168, column: 23, scope: !210)
!1103 = !DILocation(line: 168, column: 3, scope: !210)
!1104 = !DILocation(line: 170, column: 22, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !210, file: !3, line: 169, column: 5)
!1106 = !DILocation(line: 0, scope: !919, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 170, column: 7, scope: !1105)
!1108 = !DILocation(line: 29, column: 10, scope: !919, inlinedAt: !1107)
!1109 = !DILocation(line: 173, column: 11, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 173, column: 11)
!1111 = !DILocation(line: 173, column: 49, scope: !1110)
!1112 = !DILocation(line: 173, column: 11, scope: !1105)
!1113 = !DILocation(line: 172, column: 13, scope: !1105)
!1114 = !DILocation(line: 171, column: 20, scope: !1105)
!1115 = !DILocation(line: 175, column: 23, scope: !1105)
!1116 = !DILocation(line: 161, column: 11, scope: !218)
!1117 = !DILocation(line: 161, column: 58, scope: !218)
!1118 = !DILocation(line: 161, column: 55, scope: !218)
!1119 = !DILocation(line: 161, column: 11, scope: !219)
!1120 = !DILocation(line: 948, column: 21, scope: !1121, inlinedAt: !1124)
!1121 = distinct !DISubprogram(name: "write_error", scope: !94, file: !94, line: 946, type: !355, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1122)
!1122 = !{!1123}
!1123 = !DILocalVariable(name: "saved_errno", scope: !1121, file: !94, line: 948, type: !6)
!1124 = distinct !DILocation(line: 162, column: 9, scope: !218)
!1125 = !DILocation(line: 0, scope: !1121, inlinedAt: !1124)
!1126 = !DILocation(line: 949, column: 3, scope: !1121, inlinedAt: !1124)
!1127 = !DILocation(line: 950, column: 11, scope: !1121, inlinedAt: !1124)
!1128 = !DILocation(line: 950, column: 3, scope: !1121, inlinedAt: !1124)
!1129 = !DILocation(line: 951, column: 3, scope: !1121, inlinedAt: !1124)
!1130 = !DILocation(line: 952, column: 3, scope: !1121, inlinedAt: !1124)
!1131 = !DILocation(line: 948, column: 21, scope: !1121, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 174, column: 9, scope: !1110)
!1133 = !DILocation(line: 0, scope: !1121, inlinedAt: !1132)
!1134 = !DILocation(line: 949, column: 3, scope: !1121, inlinedAt: !1132)
!1135 = !DILocation(line: 950, column: 11, scope: !1121, inlinedAt: !1132)
!1136 = !DILocation(line: 950, column: 3, scope: !1121, inlinedAt: !1132)
!1137 = !DILocation(line: 951, column: 3, scope: !1121, inlinedAt: !1132)
!1138 = !DILocation(line: 952, column: 3, scope: !1121, inlinedAt: !1132)
!1139 = distinct !{!1139, !1103, !1140, !688, !1141}
!1140 = !DILocation(line: 177, column: 5, scope: !210)
!1141 = !{!"llvm.loop.peeled.count", i32 1}
!1142 = !DILocation(line: 179, column: 20, scope: !210)
!1143 = !DILocation(line: 179, column: 18, scope: !210)
!1144 = !DILocation(line: 0, scope: !919, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 179, column: 3, scope: !210)
!1146 = !DILocation(line: 29, column: 10, scope: !919, inlinedAt: !1145)
!1147 = !DILocation(line: 180, column: 19, scope: !210)
!1148 = !DILocation(line: 181, column: 1, scope: !210)
!1149 = !DISubprogram(name: "open", scope: !1150, file: !1150, line: 181, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1150 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!6, !46, !6, null}
!1153 = !DISubprogram(name: "lseek", scope: !1154, file: !1154, line: 339, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1154 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!143, !6, !143, !6}
!1157 = !DISubprogram(name: "isatty", scope: !1154, file: !1154, line: 809, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!6, !6}
!1160 = !DISubprogram(name: "fflush_unlocked", scope: !328, file: !328, line: 239, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!6, !117}
!1163 = !DISubprogram(name: "fileno_unlocked", scope: !328, file: !328, line: 814, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1164 = distinct !DISubprogram(name: "tac_seekable", scope: !3, file: !3, line: 188, type: !1165, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!104, !6, !46, !949}
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1181, !1183, !1187, !1188, !1189, !1190, !1195, !1196, !1197}
!1168 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1164, file: !3, line: 188, type: !6)
!1169 = !DILocalVariable(name: "file", arg: 2, scope: !1164, file: !3, line: 188, type: !46)
!1170 = !DILocalVariable(name: "file_pos", arg: 3, scope: !1164, file: !3, line: 188, type: !949)
!1171 = !DILocalVariable(name: "match_start", scope: !1164, file: !3, line: 192, type: !8)
!1172 = !DILocalVariable(name: "past_end", scope: !1164, file: !3, line: 196, type: !8)
!1173 = !DILocalVariable(name: "saved_record_size", scope: !1164, file: !3, line: 199, type: !567)
!1174 = !DILocalVariable(name: "first_time", scope: !1164, file: !3, line: 203, type: !104)
!1175 = !DILocalVariable(name: "first_char", scope: !1164, file: !3, line: 204, type: !9)
!1176 = !DILocalVariable(name: "separator1", scope: !1164, file: !3, line: 205, type: !46)
!1177 = !DILocalVariable(name: "match_length1", scope: !1164, file: !3, line: 206, type: !49)
!1178 = !DILocalVariable(name: "remainder", scope: !1164, file: !3, line: 213, type: !49)
!1179 = !DILocalVariable(name: "rsize", scope: !1180, file: !3, line: 226, type: !949)
!1180 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 225, column: 5)
!1181 = !DILocalVariable(name: "nread", scope: !1182, file: !3, line: 235, type: !1007)
!1182 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 234, column: 5)
!1183 = !DILocalVariable(name: "i", scope: !1184, file: !3, line: 265, type: !49)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 264, column: 9)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 263, column: 11)
!1186 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 256, column: 5)
!1187 = !DILocalVariable(name: "ri", scope: !1184, file: !3, line: 266, type: !206)
!1188 = !DILocalVariable(name: "range", scope: !1184, file: !3, line: 267, type: !206)
!1189 = !DILocalVariable(name: "ret", scope: !1184, file: !3, line: 268, type: !206)
!1190 = !DILocalVariable(name: "newbuffer", scope: !1191, file: !3, line: 314, type: !8)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 309, column: 13)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 308, column: 15)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 299, column: 9)
!1194 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 298, column: 11)
!1195 = !DILocalVariable(name: "offset", scope: !1191, file: !3, line: 315, type: !49)
!1196 = !DILocalVariable(name: "old_G_buffer_size", scope: !1191, file: !3, line: 316, type: !49)
!1197 = !DILocalVariable(name: "match_end", scope: !1198, file: !3, line: 359, type: !8)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 358, column: 13)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 357, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 355, column: 9)
!1201 = !DILocation(line: 0, scope: !1164)
!1202 = !DILocation(line: 204, column: 22, scope: !1164)
!1203 = !DILocation(line: 204, column: 21, scope: !1164)
!1204 = !DILocation(line: 205, column: 38, scope: !1164)
!1205 = !DILocation(line: 206, column: 26, scope: !1164)
!1206 = !DILocation(line: 206, column: 39, scope: !1164)
!1207 = !DILocation(line: 213, column: 33, scope: !1164)
!1208 = !DILocation(line: 213, column: 31, scope: !1164)
!1209 = !DILocation(line: 214, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 214, column: 7)
!1211 = !DILocation(line: 214, column: 7, scope: !1164)
!1212 = !DILocation(line: 216, column: 16, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 215, column: 5)
!1214 = !DILocation(line: 217, column: 11, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 217, column: 11)
!1216 = !DILocation(line: 217, column: 48, scope: !1215)
!1217 = !DILocation(line: 217, column: 11, scope: !1213)
!1218 = !DILocation(line: 218, column: 9, scope: !1215)
!1219 = !DILocation(line: 223, column: 47, scope: !1164)
!1220 = !DILocation(line: 223, column: 57, scope: !1164)
!1221 = !DILocation(line: 223, column: 31, scope: !1164)
!1222 = !DILocation(line: 223, column: 69, scope: !1164)
!1223 = !DILocation(line: 224, column: 10, scope: !1164)
!1224 = !DILocation(line: 223, column: 3, scope: !1164)
!1225 = !DILocation(line: 226, column: 21, scope: !1180)
!1226 = !DILocation(line: 0, scope: !1180)
!1227 = !DILocation(line: 227, column: 28, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 227, column: 11)
!1229 = !DILocation(line: 227, column: 11, scope: !1228)
!1230 = !DILocation(line: 227, column: 46, scope: !1228)
!1231 = !DILocation(line: 227, column: 11, scope: !1180)
!1232 = !DILocation(line: 228, column: 9, scope: !1228)
!1233 = !DILocation(line: 229, column: 19, scope: !1180)
!1234 = !DILocation(line: 229, column: 16, scope: !1180)
!1235 = distinct !{!1235, !1224, !1236, !688}
!1236 = !DILocation(line: 230, column: 5, scope: !1164)
!1237 = !DILocation(line: 233, column: 3, scope: !1164)
!1238 = !DILocation(line: 223, column: 29, scope: !1164)
!1239 = !DILocation(line: 233, column: 31, scope: !1164)
!1240 = !DILocation(line: 233, column: 28, scope: !1164)
!1241 = !DILocation(line: 235, column: 39, scope: !1182)
!1242 = !DILocation(line: 235, column: 23, scope: !1182)
!1243 = !DILocation(line: 0, scope: !1182)
!1244 = !DILocation(line: 236, column: 17, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 236, column: 11)
!1246 = !DILocation(line: 236, column: 11, scope: !1182)
!1247 = !DILocation(line: 244, column: 25, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 244, column: 7)
!1249 = !DILocation(line: 244, column: 7, scope: !1164)
!1250 = !DILocation(line: 246, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 245, column: 5)
!1252 = !DILocation(line: 247, column: 7, scope: !1251)
!1253 = !DILocation(line: 250, column: 28, scope: !1164)
!1254 = !DILocation(line: 250, column: 37, scope: !1164)
!1255 = !DILocation(line: 252, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 252, column: 7)
!1257 = !DILocation(line: 252, column: 7, scope: !1164)
!1258 = !DILocation(line: 255, column: 3, scope: !1164)
!1259 = !DILocation(line: 263, column: 11, scope: !1185)
!1260 = !DILocation(line: 263, column: 27, scope: !1185)
!1261 = !DILocation(line: 263, column: 11, scope: !1186)
!1262 = !DILocation(line: 265, column: 36, scope: !1184)
!1263 = !DILocation(line: 265, column: 34, scope: !1184)
!1264 = !DILocation(line: 0, scope: !1184)
!1265 = !DILocation(line: 266, column: 25, scope: !1184)
!1266 = !DILocation(line: 267, column: 30, scope: !1184)
!1267 = !DILocation(line: 270, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 270, column: 15)
!1269 = !DILocation(line: 270, column: 15, scope: !1184)
!1270 = !DILocation(line: 271, column: 13, scope: !1268)
!1271 = !DILocation(line: 273, column: 21, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 273, column: 15)
!1273 = !DILocation(line: 274, column: 15, scope: !1272)
!1274 = !DILocation(line: 275, column: 40, scope: !1272)
!1275 = !DILocation(line: 274, column: 26, scope: !1272)
!1276 = !DILocation(line: 273, column: 15, scope: !1184)
!1277 = !DILocation(line: 277, column: 27, scope: !1272)
!1278 = !DILocation(line: 279, column: 13, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 278, column: 20)
!1280 = !DILocation(line: 283, column: 29, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 282, column: 13)
!1282 = !DILocation(line: 283, column: 45, scope: !1281)
!1283 = !{!1284, !626, i64 8}
!1284 = !{!"re_registers", !722, i64 0, !626, i64 8, !626, i64 16}
!1285 = !DILocation(line: 283, column: 40, scope: !1281)
!1286 = !DILocation(line: 283, column: 38, scope: !1281)
!1287 = !DILocation(line: 284, column: 35, scope: !1281)
!1288 = !{!1284, !626, i64 16}
!1289 = !DILocation(line: 284, column: 30, scope: !1281)
!1290 = !DILocation(line: 284, column: 42, scope: !1281)
!1291 = !DILocation(line: 284, column: 28, scope: !1281)
!1292 = !DILocation(line: 290, column: 19, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 288, column: 9)
!1294 = !DILocation(line: 290, column: 18, scope: !1293)
!1295 = !DILocation(line: 290, column: 33, scope: !1293)
!1296 = !DILocation(line: 291, column: 18, scope: !1293)
!1297 = distinct !{!1297, !1298, !1299, !688}
!1298 = !DILocation(line: 290, column: 11, scope: !1293)
!1299 = !DILocation(line: 293, column: 31, scope: !1293)
!1300 = !DILocation(line: 291, column: 36, scope: !1293)
!1301 = !DILocation(line: 291, column: 40, scope: !1293)
!1302 = !DILocation(line: 298, column: 25, scope: !1194)
!1303 = !DILocation(line: 0, scope: !1185)
!1304 = !DILocation(line: 298, column: 23, scope: !1194)
!1305 = !DILocation(line: 298, column: 11, scope: !1186)
!1306 = !DILocation(line: 300, column: 24, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 300, column: 15)
!1308 = !DILocation(line: 300, column: 15, scope: !1193)
!1309 = !DILocation(line: 303, column: 15, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 301, column: 13)
!1311 = !DILocation(line: 304, column: 15, scope: !1310)
!1312 = !DILocation(line: 307, column: 40, scope: !1193)
!1313 = !DILocation(line: 308, column: 35, scope: !1192)
!1314 = !DILocation(line: 308, column: 33, scope: !1192)
!1315 = !DILocation(line: 308, column: 15, scope: !1193)
!1316 = !DILocation(line: 315, column: 31, scope: !1191)
!1317 = !DILocation(line: 0, scope: !1191)
!1318 = !DILocation(line: 316, column: 42, scope: !1191)
!1319 = !DILocation(line: 318, column: 25, scope: !1191)
!1320 = !DILocation(line: 319, column: 41, scope: !1191)
!1321 = !DILocation(line: 319, column: 45, scope: !1191)
!1322 = !DILocation(line: 319, column: 63, scope: !1191)
!1323 = !DILocation(line: 319, column: 29, scope: !1191)
!1324 = !DILocation(line: 320, column: 33, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 320, column: 19)
!1326 = !DILocation(line: 320, column: 19, scope: !1191)
!1327 = !DILocation(line: 321, column: 17, scope: !1325)
!1328 = !DILocation(line: 322, column: 46, scope: !1191)
!1329 = !DILocation(line: 322, column: 27, scope: !1191)
!1330 = !DILocation(line: 323, column: 25, scope: !1191)
!1331 = !DILocation(line: 324, column: 24, scope: !1191)
!1332 = !DILocation(line: 328, column: 27, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 328, column: 15)
!1334 = !DILocation(line: 325, column: 13, scope: !1191)
!1335 = !DILocation(line: 328, column: 24, scope: !1333)
!1336 = !DILocation(line: 328, column: 15, scope: !1193)
!1337 = !DILocation(line: 329, column: 22, scope: !1333)
!1338 = !DILocation(line: 329, column: 13, scope: !1333)
!1339 = !DILocation(line: 332, column: 25, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 331, column: 13)
!1341 = !DILocation(line: 0, scope: !1333)
!1342 = !DILocation(line: 335, column: 15, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 335, column: 15)
!1344 = !DILocation(line: 335, column: 52, scope: !1343)
!1345 = !DILocation(line: 335, column: 15, scope: !1193)
!1346 = !DILocation(line: 336, column: 13, scope: !1343)
!1347 = !DILocation(line: 340, column: 20, scope: !1193)
!1348 = !DILocation(line: 340, column: 31, scope: !1193)
!1349 = !DILocation(line: 340, column: 29, scope: !1193)
!1350 = !DILocalVariable(name: "__dest", arg: 1, scope: !1351, file: !920, line: 34, type: !43)
!1351 = distinct !DISubprogram(name: "memmove", scope: !920, file: !920, line: 34, type: !1352, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!43, !43, !839, !49}
!1354 = !{!1350, !1355, !1356}
!1355 = !DILocalVariable(name: "__src", arg: 2, scope: !1351, file: !920, line: 34, type: !839)
!1356 = !DILocalVariable(name: "__len", arg: 3, scope: !1351, file: !920, line: 34, type: !49)
!1357 = !DILocation(line: 0, scope: !1351, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 340, column: 11, scope: !1193)
!1359 = !DILocation(line: 36, column: 10, scope: !1351, inlinedAt: !1358)
!1360 = !DILocation(line: 341, column: 31, scope: !1193)
!1361 = !DILocation(line: 341, column: 43, scope: !1193)
!1362 = !DILocation(line: 343, column: 15, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 343, column: 15)
!1364 = !DILocation(line: 348, column: 15, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 348, column: 15)
!1366 = !DILocation(line: 348, column: 60, scope: !1365)
!1367 = !DILocation(line: 348, column: 57, scope: !1365)
!1368 = !DILocation(line: 348, column: 15, scope: !1193)
!1369 = distinct !{!1369, !1258, !1370}
!1370 = !DILocation(line: 378, column: 5, scope: !1164)
!1371 = !DILocation(line: 350, column: 15, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 349, column: 13)
!1373 = !DILocation(line: 351, column: 15, scope: !1372)
!1374 = !DILocation(line: 357, column: 15, scope: !1199)
!1375 = !DILocation(line: 357, column: 15, scope: !1200)
!1376 = !DILocation(line: 359, column: 47, scope: !1198)
!1377 = !DILocation(line: 359, column: 45, scope: !1198)
!1378 = !DILocation(line: 0, scope: !1198)
!1379 = !DILocation(line: 363, column: 31, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 363, column: 19)
!1381 = !DILocation(line: 0, scope: !1199)
!1382 = !DILocation(line: 375, column: 15, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 375, column: 15)
!1384 = !DILocation(line: 375, column: 31, scope: !1383)
!1385 = !DILocation(line: 375, column: 15, scope: !1200)
!1386 = !DILocation(line: 379, column: 1, scope: !1164)
!1387 = !DISubprogram(name: "close", scope: !1154, file: !1154, line: 358, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1388 = !DISubprogram(name: "re_search", scope: !65, file: !65, line: 564, type: !1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!206, !1095, !46, !206, !206, !206, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1392 = !DISubprogram(name: "clearerr_unlocked", scope: !328, file: !328, line: 794, type: !1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !117}
!1395 = !DILocation(line: 0, scope: !248)
!1396 = !DILocation(line: 88, column: 7, scope: !298)
!1397 = !DILocation(line: 88, column: 16, scope: !298)
!1398 = !DILocation(line: 88, column: 7, scope: !248)
!1399 = !DILocation(line: 0, scope: !297)
!1400 = !DILocalVariable(name: "ptr", arg: 1, scope: !1401, file: !1402, line: 2057, type: !43)
!1401 = distinct !DISubprogram(name: "rpl_realloc", scope: !1402, file: !1402, line: 2057, type: !1403, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !1405)
!1402 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!43, !43, !49}
!1405 = !{!1400, !1406}
!1406 = !DILocalVariable(name: "size", arg: 2, scope: !1401, file: !1402, line: 2057, type: !49)
!1407 = !DILocation(line: 0, scope: !1401, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 95, column: 28, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !249, line: 95, column: 15)
!1410 = distinct !DILexicalBlock(scope: !297, file: !249, line: 94, column: 9)
!1411 = !DILocation(line: 2059, column: 10, scope: !1401, inlinedAt: !1408)
!1412 = !DILocation(line: 95, column: 26, scope: !1409)
!1413 = !DILocation(line: 95, column: 15, scope: !1410)
!1414 = !DILocation(line: 97, column: 15, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1409, file: !249, line: 96, column: 13)
!1416 = distinct !{!1416, !1417, !1418}
!1417 = !DILocation(line: 93, column: 7, scope: !297)
!1418 = !DILocation(line: 112, column: 9, scope: !297)
!1419 = !DILocation(line: 101, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1410, file: !249, line: 101, column: 15)
!1421 = !DILocation(line: 101, column: 71, scope: !1420)
!1422 = !DILocation(line: 101, column: 15, scope: !1410)
!1423 = !DILocation(line: 104, column: 15, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1410, file: !249, line: 104, column: 15)
!1425 = !DILocation(line: 104, column: 21, scope: !1424)
!1426 = !DILocation(line: 104, column: 31, scope: !1424)
!1427 = !DILocation(line: 98, column: 15, scope: !1415)
!1428 = !DILocation(line: 106, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !249, line: 105, column: 13)
!1430 = !DILocation(line: 108, column: 15, scope: !1429)
!1431 = !DILocation(line: 114, column: 16, scope: !297)
!1432 = !DILocation(line: 125, column: 16, scope: !297)
!1433 = !DILocation(line: 126, column: 14, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !297, file: !249, line: 126, column: 11)
!1435 = !DILocation(line: 126, column: 11, scope: !297)
!1436 = !DILocation(line: 128, column: 11, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !249, line: 127, column: 9)
!1438 = !DILocation(line: 130, column: 11, scope: !1437)
!1439 = !DILocation(line: 133, column: 16, scope: !297)
!1440 = !DILocation(line: 133, column: 14, scope: !297)
!1441 = !DILocation(line: 134, column: 13, scope: !303)
!1442 = !DILocation(line: 134, column: 11, scope: !297)
!1443 = !DILocation(line: 136, column: 11, scope: !302)
!1444 = !DILocation(line: 138, column: 11, scope: !302)
!1445 = !DILocation(line: 139, column: 19, scope: !302)
!1446 = !DILocation(line: 139, column: 11, scope: !302)
!1447 = !DILocation(line: 140, column: 9, scope: !302)
!1448 = !DILocation(line: 141, column: 17, scope: !302)
!1449 = !DILocation(line: 141, column: 11, scope: !302)
!1450 = !DILocation(line: 142, column: 20, scope: !302)
!1451 = !DILocation(line: 143, column: 11, scope: !302)
!1452 = !DILocation(line: 146, column: 34, scope: !297)
!1453 = !DILocalVariable(name: "fn", arg: 1, scope: !1454, file: !249, line: 69, type: !46)
!1454 = distinct !DISubprogram(name: "record_or_unlink_tempfile", scope: !249, file: !249, line: 69, type: !1455, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !1457)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !46, !253}
!1457 = !{!1453, !1458}
!1458 = !DILocalVariable(name: "fp", arg: 2, scope: !1454, file: !249, line: 69, type: !253)
!1459 = !DILocation(line: 0, scope: !1454, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 146, column: 7, scope: !297)
!1461 = !DILocation(line: 71, column: 3, scope: !1454, inlinedAt: !1460)
!1462 = !DILocation(line: 150, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !298, file: !249, line: 149, column: 5)
!1464 = !DILocation(line: 151, column: 19, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1463, file: !249, line: 151, column: 11)
!1466 = !DILocation(line: 151, column: 11, scope: !1465)
!1467 = !DILocation(line: 151, column: 40, scope: !1465)
!1468 = !DILocation(line: 152, column: 11, scope: !1465)
!1469 = !DILocation(line: 152, column: 25, scope: !1465)
!1470 = !DILocation(line: 152, column: 14, scope: !1465)
!1471 = !DILocation(line: 152, column: 45, scope: !1465)
!1472 = !DILocation(line: 151, column: 11, scope: !1463)
!1473 = !DILocation(line: 154, column: 11, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1465, file: !249, line: 153, column: 9)
!1475 = !DILocation(line: 156, column: 11, scope: !1474)
!1476 = !DILocation(line: 160, column: 9, scope: !248)
!1477 = !DILocation(line: 160, column: 7, scope: !248)
!1478 = !DILocation(line: 161, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !248, file: !249, line: 161, column: 7)
!1480 = !DILocation(line: 161, column: 7, scope: !248)
!1481 = !DILocation(line: 162, column: 18, scope: !1479)
!1482 = !DILocation(line: 162, column: 16, scope: !1479)
!1483 = !DILocation(line: 162, column: 5, scope: !1479)
!1484 = !DILocation(line: 164, column: 1, scope: !248)
!1485 = !DISubprogram(name: "fdopen", scope: !328, file: !328, line: 293, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!253, !6, !46}
!1488 = !DISubprogram(name: "unlink", scope: !1154, file: !1154, line: 858, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!6, !46}
!1491 = !DISubprogram(name: "ftruncate", scope: !1154, file: !1154, line: 1049, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!6, !6, !143}
!1494 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !312, file: !312, line: 50, type: !647, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1495)
!1495 = !{!1496}
!1496 = !DILocalVariable(name: "file", arg: 1, scope: !1494, file: !312, line: 50, type: !46)
!1497 = !DILocation(line: 0, scope: !1494)
!1498 = !DILocation(line: 52, column: 13, scope: !1494)
!1499 = !DILocation(line: 53, column: 1, scope: !1494)
!1500 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !312, file: !312, line: 87, type: !1501, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1503)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !104}
!1503 = !{!1504}
!1504 = !DILocalVariable(name: "ignore", arg: 1, scope: !1500, file: !312, line: 87, type: !104)
!1505 = !DILocation(line: 0, scope: !1500)
!1506 = !DILocation(line: 89, column: 16, scope: !1500)
!1507 = !{!1508, !1508, i64 0}
!1508 = !{!"_Bool", !627, i64 0}
!1509 = !DILocation(line: 90, column: 1, scope: !1500)
!1510 = distinct !DISubprogram(name: "close_stdout", scope: !312, file: !312, line: 116, type: !355, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1511)
!1511 = !{!1512}
!1512 = !DILocalVariable(name: "write_error", scope: !1513, file: !312, line: 121, type: !46)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !312, line: 120, column: 5)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !312, line: 118, column: 7)
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
!1528 = distinct !DILexicalBlock(scope: !1513, file: !312, line: 122, column: 11)
!1529 = !DILocation(line: 0, scope: !1528)
!1530 = !DILocation(line: 122, column: 11, scope: !1513)
!1531 = !DILocation(line: 123, column: 9, scope: !1528)
!1532 = !DILocation(line: 126, column: 9, scope: !1528)
!1533 = !DILocation(line: 128, column: 14, scope: !1513)
!1534 = !DILocation(line: 128, column: 7, scope: !1513)
!1535 = !DILocation(line: 133, column: 42, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1510, file: !312, line: 133, column: 7)
!1537 = !DILocation(line: 133, column: 28, scope: !1536)
!1538 = !DILocation(line: 133, column: 50, scope: !1536)
!1539 = !DILocation(line: 133, column: 7, scope: !1510)
!1540 = !DILocation(line: 134, column: 12, scope: !1536)
!1541 = !DILocation(line: 134, column: 5, scope: !1536)
!1542 = !DILocation(line: 135, column: 1, scope: !1510)
!1543 = distinct !DISubprogram(name: "verror", scope: !319, file: !319, line: 251, type: !1544, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !6, !6, !46, !327}
!1546 = !{!1547, !1548, !1549, !1550}
!1547 = !DILocalVariable(name: "status", arg: 1, scope: !1543, file: !319, line: 251, type: !6)
!1548 = !DILocalVariable(name: "errnum", arg: 2, scope: !1543, file: !319, line: 251, type: !6)
!1549 = !DILocalVariable(name: "message", arg: 3, scope: !1543, file: !319, line: 251, type: !46)
!1550 = !DILocalVariable(name: "args", arg: 4, scope: !1543, file: !319, line: 251, type: !327)
!1551 = !DILocation(line: 0, scope: !1543)
!1552 = !DILocation(line: 251, column: 1, scope: !1543)
!1553 = !DILocation(line: 261, column: 3, scope: !1543)
!1554 = !DILocation(line: 265, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1543, file: !319, line: 265, column: 7)
!1556 = !DILocation(line: 265, column: 7, scope: !1543)
!1557 = !DILocation(line: 266, column: 5, scope: !1555)
!1558 = !DILocation(line: 272, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !319, line: 268, column: 5)
!1560 = !DILocation(line: 276, column: 3, scope: !1543)
!1561 = !{i64 0, i64 8, !625, i64 8, i64 8, !625, i64 16, i64 8, !625, i64 24, i64 4, !721, i64 28, i64 4, !721}
!1562 = !DILocation(line: 282, column: 1, scope: !1543)
!1563 = distinct !DISubprogram(name: "flush_stdout", scope: !319, file: !319, line: 163, type: !355, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1564)
!1564 = !{!1565}
!1565 = !DILocalVariable(name: "stdout_fd", scope: !1563, file: !319, line: 166, type: !6)
!1566 = !DILocation(line: 0, scope: !1563)
!1567 = !DILocalVariable(name: "fd", arg: 1, scope: !1568, file: !319, line: 145, type: !6)
!1568 = distinct !DISubprogram(name: "is_open", scope: !319, file: !319, line: 145, type: !1158, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1569)
!1569 = !{!1567}
!1570 = !DILocation(line: 0, scope: !1568, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 182, column: 25, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1563, file: !319, line: 182, column: 7)
!1573 = !DILocation(line: 157, column: 15, scope: !1568, inlinedAt: !1571)
!1574 = !DILocation(line: 182, column: 25, scope: !1572)
!1575 = !DILocation(line: 182, column: 7, scope: !1563)
!1576 = !DILocation(line: 184, column: 5, scope: !1572)
!1577 = !DILocation(line: 185, column: 1, scope: !1563)
!1578 = distinct !DISubprogram(name: "error_tail", scope: !319, file: !319, line: 219, type: !1544, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1579)
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DILocalVariable(name: "status", arg: 1, scope: !1578, file: !319, line: 219, type: !6)
!1581 = !DILocalVariable(name: "errnum", arg: 2, scope: !1578, file: !319, line: 219, type: !6)
!1582 = !DILocalVariable(name: "message", arg: 3, scope: !1578, file: !319, line: 219, type: !46)
!1583 = !DILocalVariable(name: "args", arg: 4, scope: !1578, file: !319, line: 219, type: !327)
!1584 = !DILocation(line: 0, scope: !1578)
!1585 = !DILocation(line: 219, column: 1, scope: !1578)
!1586 = !DILocation(line: 229, column: 13, scope: !1578)
!1587 = !DILocation(line: 229, column: 3, scope: !1578)
!1588 = !DILocalVariable(name: "__stream", arg: 1, scope: !1589, file: !1590, line: 132, type: !1593)
!1589 = distinct !DISubprogram(name: "vfprintf", scope: !1590, file: !1590, line: 132, type: !1591, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1628)
!1590 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!6, !1593, !717, !329}
!1593 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1596, file: !121, line: 51, baseType: !6, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1596, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1596, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1596, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1596, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1596, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1596, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1596, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1596, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1596, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1596, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1596, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1596, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1596, file: !121, line: 70, baseType: !1612, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1596, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1596, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1596, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1596, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1596, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1596, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1596, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1596, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1596, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1596, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1596, file: !121, line: 93, baseType: !1612, size: 64, offset: 1344)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1596, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1596, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1596, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1596, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!1628 = !{!1588, !1629, !1630}
!1629 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1589, file: !1590, line: 133, type: !717)
!1630 = !DILocalVariable(name: "__ap", arg: 3, scope: !1589, file: !1590, line: 133, type: !329)
!1631 = !DILocation(line: 0, scope: !1589, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 229, column: 3, scope: !1578)
!1633 = !DILocation(line: 135, column: 10, scope: !1589, inlinedAt: !1632)
!1634 = !{!1635, !1637}
!1635 = distinct !{!1635, !1636, !"vfprintf.inline: argument 0"}
!1636 = distinct !{!1636, !"vfprintf.inline"}
!1637 = distinct !{!1637, !1636, !"vfprintf.inline: argument 1"}
!1638 = !DILocation(line: 232, column: 3, scope: !1578)
!1639 = !DILocation(line: 233, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1578, file: !319, line: 233, column: 7)
!1641 = !DILocation(line: 233, column: 7, scope: !1578)
!1642 = !DILocalVariable(name: "errnum", arg: 1, scope: !1643, file: !319, line: 188, type: !6)
!1643 = distinct !DISubprogram(name: "print_errno_message", scope: !319, file: !319, line: 188, type: !615, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1644)
!1644 = !{!1642, !1645, !1646}
!1645 = !DILocalVariable(name: "s", scope: !1643, file: !319, line: 190, type: !46)
!1646 = !DILocalVariable(name: "errbuf", scope: !1643, file: !319, line: 193, type: !1647)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 1024)
!1650 = !DILocation(line: 0, scope: !1643, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 234, column: 5, scope: !1640)
!1652 = !DILocation(line: 193, column: 3, scope: !1643, inlinedAt: !1651)
!1653 = !DILocation(line: 193, column: 8, scope: !1643, inlinedAt: !1651)
!1654 = !DILocation(line: 195, column: 7, scope: !1643, inlinedAt: !1651)
!1655 = !DILocation(line: 207, column: 9, scope: !1656, inlinedAt: !1651)
!1656 = distinct !DILexicalBlock(scope: !1643, file: !319, line: 207, column: 7)
!1657 = !DILocation(line: 207, column: 7, scope: !1643, inlinedAt: !1651)
!1658 = !DILocation(line: 208, column: 9, scope: !1656, inlinedAt: !1651)
!1659 = !DILocation(line: 208, column: 5, scope: !1656, inlinedAt: !1651)
!1660 = !DILocation(line: 214, column: 3, scope: !1643, inlinedAt: !1651)
!1661 = !DILocation(line: 216, column: 1, scope: !1643, inlinedAt: !1651)
!1662 = !DILocation(line: 234, column: 5, scope: !1640)
!1663 = !DILocation(line: 238, column: 3, scope: !1578)
!1664 = !DILocalVariable(name: "__c", arg: 1, scope: !1665, file: !1666, line: 101, type: !6)
!1665 = distinct !DISubprogram(name: "putc_unlocked", scope: !1666, file: !1666, line: 101, type: !1667, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1669)
!1666 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!6, !6, !1594}
!1669 = !{!1664, !1670}
!1670 = !DILocalVariable(name: "__stream", arg: 2, scope: !1665, file: !1666, line: 101, type: !1594)
!1671 = !DILocation(line: 0, scope: !1665, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 238, column: 3, scope: !1578)
!1673 = !DILocation(line: 103, column: 10, scope: !1665, inlinedAt: !1672)
!1674 = !{!1675, !626, i64 40}
!1675 = !{!"_IO_FILE", !722, i64 0, !626, i64 8, !626, i64 16, !626, i64 24, !626, i64 32, !626, i64 40, !626, i64 48, !626, i64 56, !626, i64 64, !626, i64 72, !626, i64 80, !626, i64 88, !626, i64 96, !626, i64 104, !722, i64 112, !722, i64 116, !856, i64 120, !756, i64 128, !627, i64 130, !627, i64 131, !626, i64 136, !856, i64 144, !626, i64 152, !626, i64 160, !626, i64 168, !626, i64 176, !856, i64 184, !722, i64 192, !627, i64 196}
!1676 = !{!1675, !626, i64 48}
!1677 = !{!"branch_weights", i32 2000, i32 1}
!1678 = !DILocation(line: 240, column: 3, scope: !1578)
!1679 = !DILocation(line: 241, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1578, file: !319, line: 241, column: 7)
!1681 = !DILocation(line: 241, column: 7, scope: !1578)
!1682 = !DILocation(line: 242, column: 5, scope: !1680)
!1683 = !DILocation(line: 243, column: 1, scope: !1578)
!1684 = !DISubprogram(name: "strerror_r", scope: !1685, file: !1685, line: 444, type: !1686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1685 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!8, !6, !8, !49}
!1688 = !DISubprogram(name: "fcntl", scope: !1150, file: !1150, line: 149, type: !1689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!6, !6, !6, null}
!1691 = distinct !DISubprogram(name: "error", scope: !319, file: !319, line: 285, type: !1692, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !6, !6, !46, null}
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DILocalVariable(name: "status", arg: 1, scope: !1691, file: !319, line: 285, type: !6)
!1696 = !DILocalVariable(name: "errnum", arg: 2, scope: !1691, file: !319, line: 285, type: !6)
!1697 = !DILocalVariable(name: "message", arg: 3, scope: !1691, file: !319, line: 285, type: !46)
!1698 = !DILocalVariable(name: "ap", scope: !1691, file: !319, line: 287, type: !327)
!1699 = !DILocation(line: 0, scope: !1691)
!1700 = !DILocation(line: 287, column: 3, scope: !1691)
!1701 = !DILocation(line: 287, column: 11, scope: !1691)
!1702 = !DILocation(line: 288, column: 3, scope: !1691)
!1703 = !DILocation(line: 289, column: 3, scope: !1691)
!1704 = !DILocation(line: 290, column: 3, scope: !1691)
!1705 = !DILocation(line: 291, column: 1, scope: !1691)
!1706 = !DILocation(line: 0, scope: !324)
!1707 = !DILocation(line: 298, column: 1, scope: !324)
!1708 = !DILocation(line: 302, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !324, file: !319, line: 302, column: 7)
!1710 = !DILocation(line: 302, column: 7, scope: !324)
!1711 = !DILocation(line: 307, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !319, line: 307, column: 11)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !319, line: 303, column: 5)
!1714 = !DILocation(line: 307, column: 27, scope: !1712)
!1715 = !DILocation(line: 308, column: 11, scope: !1712)
!1716 = !DILocation(line: 308, column: 28, scope: !1712)
!1717 = !DILocation(line: 308, column: 25, scope: !1712)
!1718 = !DILocation(line: 309, column: 15, scope: !1712)
!1719 = !DILocation(line: 309, column: 33, scope: !1712)
!1720 = !DILocation(line: 310, column: 19, scope: !1712)
!1721 = !DILocation(line: 311, column: 22, scope: !1712)
!1722 = !DILocation(line: 311, column: 56, scope: !1712)
!1723 = !DILocation(line: 307, column: 11, scope: !1713)
!1724 = !DILocation(line: 316, column: 21, scope: !1713)
!1725 = !DILocation(line: 317, column: 23, scope: !1713)
!1726 = !DILocation(line: 318, column: 5, scope: !1713)
!1727 = !DILocation(line: 327, column: 3, scope: !324)
!1728 = !DILocation(line: 331, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !324, file: !319, line: 331, column: 7)
!1730 = !DILocation(line: 331, column: 7, scope: !324)
!1731 = !DILocation(line: 332, column: 5, scope: !1729)
!1732 = !DILocation(line: 338, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !319, line: 334, column: 5)
!1734 = !DILocation(line: 346, column: 3, scope: !324)
!1735 = !DILocation(line: 350, column: 3, scope: !324)
!1736 = !DILocation(line: 356, column: 1, scope: !324)
!1737 = distinct !DISubprogram(name: "error_at_line", scope: !319, file: !319, line: 359, type: !1738, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !6, !6, !46, !14, !46, null}
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746}
!1741 = !DILocalVariable(name: "status", arg: 1, scope: !1737, file: !319, line: 359, type: !6)
!1742 = !DILocalVariable(name: "errnum", arg: 2, scope: !1737, file: !319, line: 359, type: !6)
!1743 = !DILocalVariable(name: "file_name", arg: 3, scope: !1737, file: !319, line: 359, type: !46)
!1744 = !DILocalVariable(name: "line_number", arg: 4, scope: !1737, file: !319, line: 360, type: !14)
!1745 = !DILocalVariable(name: "message", arg: 5, scope: !1737, file: !319, line: 360, type: !46)
!1746 = !DILocalVariable(name: "ap", scope: !1737, file: !319, line: 362, type: !327)
!1747 = !DILocation(line: 0, scope: !1737)
!1748 = !DILocation(line: 362, column: 3, scope: !1737)
!1749 = !DILocation(line: 362, column: 11, scope: !1737)
!1750 = !DILocation(line: 363, column: 3, scope: !1737)
!1751 = !DILocation(line: 364, column: 3, scope: !1737)
!1752 = !DILocation(line: 366, column: 3, scope: !1737)
!1753 = !DILocation(line: 367, column: 1, scope: !1737)
!1754 = distinct !DISubprogram(name: "fpurge", scope: !517, file: !517, line: 32, type: !1755, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !1791)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!6, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !1760)
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1759, file: !121, line: 51, baseType: !6, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1759, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1759, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1759, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1759, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1759, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1759, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1759, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1759, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1759, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1759, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1759, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1759, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1759, file: !121, line: 70, baseType: !1775, size: 64, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1759, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1759, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1759, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1759, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1759, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1759, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1759, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1759, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1759, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1759, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1759, file: !121, line: 93, baseType: !1775, size: 64, offset: 1344)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1759, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1759, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1759, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1759, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!1791 = !{!1792}
!1792 = !DILocalVariable(name: "fp", arg: 1, scope: !1754, file: !517, line: 32, type: !1757)
!1793 = !DILocation(line: 0, scope: !1754)
!1794 = !DILocation(line: 36, column: 3, scope: !1754)
!1795 = !DILocation(line: 38, column: 3, scope: !1754)
!1796 = distinct !DISubprogram(name: "rpl_fseeko", scope: !519, file: !519, line: 28, type: !1797, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1833)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!6, !1799, !949, !6}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !1801)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1801, file: !121, line: 51, baseType: !6, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1801, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1801, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1801, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1801, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1801, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1801, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1801, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1801, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1801, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1801, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1801, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1801, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1801, file: !121, line: 70, baseType: !1817, size: 64, offset: 832)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1801, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1801, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1801, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1801, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1801, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1801, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1801, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1801, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1801, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1801, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1801, file: !121, line: 93, baseType: !1817, size: 64, offset: 1344)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1801, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1801, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1801, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1801, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!1833 = !{!1834, !1835, !1836, !1837}
!1834 = !DILocalVariable(name: "fp", arg: 1, scope: !1796, file: !519, line: 28, type: !1799)
!1835 = !DILocalVariable(name: "offset", arg: 2, scope: !1796, file: !519, line: 28, type: !949)
!1836 = !DILocalVariable(name: "whence", arg: 3, scope: !1796, file: !519, line: 28, type: !6)
!1837 = !DILocalVariable(name: "pos", scope: !1838, file: !519, line: 123, type: !949)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !519, line: 119, column: 5)
!1839 = distinct !DILexicalBlock(scope: !1796, file: !519, line: 55, column: 7)
!1840 = !DILocation(line: 0, scope: !1796)
!1841 = !DILocation(line: 55, column: 12, scope: !1839)
!1842 = !{!1675, !626, i64 16}
!1843 = !DILocation(line: 55, column: 33, scope: !1839)
!1844 = !{!1675, !626, i64 8}
!1845 = !DILocation(line: 55, column: 25, scope: !1839)
!1846 = !DILocation(line: 56, column: 7, scope: !1839)
!1847 = !DILocation(line: 56, column: 15, scope: !1839)
!1848 = !DILocation(line: 56, column: 37, scope: !1839)
!1849 = !{!1675, !626, i64 32}
!1850 = !DILocation(line: 56, column: 29, scope: !1839)
!1851 = !DILocation(line: 57, column: 7, scope: !1839)
!1852 = !DILocation(line: 57, column: 15, scope: !1839)
!1853 = !{!1675, !626, i64 72}
!1854 = !DILocation(line: 57, column: 29, scope: !1839)
!1855 = !DILocation(line: 55, column: 7, scope: !1796)
!1856 = !DILocation(line: 123, column: 26, scope: !1838)
!1857 = !DILocation(line: 123, column: 19, scope: !1838)
!1858 = !DILocation(line: 0, scope: !1838)
!1859 = !DILocation(line: 124, column: 15, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1838, file: !519, line: 124, column: 11)
!1861 = !DILocation(line: 124, column: 11, scope: !1838)
!1862 = !DILocation(line: 135, column: 12, scope: !1838)
!1863 = !DILocation(line: 135, column: 19, scope: !1838)
!1864 = !{!1675, !722, i64 0}
!1865 = !DILocation(line: 136, column: 12, scope: !1838)
!1866 = !DILocation(line: 136, column: 20, scope: !1838)
!1867 = !{!1675, !856, i64 144}
!1868 = !DILocation(line: 167, column: 7, scope: !1838)
!1869 = !DILocation(line: 169, column: 10, scope: !1796)
!1870 = !DILocation(line: 169, column: 3, scope: !1796)
!1871 = !DILocation(line: 170, column: 1, scope: !1796)
!1872 = !DISubprogram(name: "fileno", scope: !328, file: !328, line: 809, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!6, !1799}
!1875 = !DISubprogram(name: "fseeko", scope: !328, file: !328, line: 736, type: !1876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!6, !1799, !143, !6}
!1878 = distinct !DISubprogram(name: "full_read", scope: !1879, file: !1879, line: 58, type: !1880, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !1882)
!1879 = !DIFile(filename: "./lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!565, !6, !43, !565}
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888}
!1883 = !DILocalVariable(name: "fd", arg: 1, scope: !1878, file: !1879, line: 58, type: !6)
!1884 = !DILocalVariable(name: "buf", arg: 2, scope: !1878, file: !1879, line: 58, type: !43)
!1885 = !DILocalVariable(name: "count", arg: 3, scope: !1878, file: !1879, line: 58, type: !565)
!1886 = !DILocalVariable(name: "total", scope: !1878, file: !1879, line: 60, type: !565)
!1887 = !DILocalVariable(name: "ptr", scope: !1878, file: !1879, line: 61, type: !8)
!1888 = !DILocalVariable(name: "n_rw", scope: !1889, file: !1879, line: 65, type: !567)
!1889 = distinct !DILexicalBlock(scope: !1878, file: !1879, line: 64, column: 5)
!1890 = !DILocation(line: 0, scope: !1878)
!1891 = !DILocation(line: 63, column: 16, scope: !1878)
!1892 = !DILocation(line: 63, column: 3, scope: !1878)
!1893 = !DILocation(line: 65, column: 24, scope: !1889)
!1894 = !DILocation(line: 0, scope: !1889)
!1895 = !DILocation(line: 66, column: 16, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1889, file: !1879, line: 66, column: 11)
!1897 = !DILocation(line: 66, column: 11, scope: !1889)
!1898 = !DILocation(line: 68, column: 16, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1889, file: !1879, line: 68, column: 11)
!1900 = !DILocation(line: 68, column: 11, scope: !1889)
!1901 = !DILocation(line: 70, column: 11, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !1879, line: 69, column: 9)
!1903 = !DILocation(line: 70, column: 17, scope: !1902)
!1904 = !DILocation(line: 71, column: 11, scope: !1902)
!1905 = !DILocation(line: 73, column: 13, scope: !1889)
!1906 = !DILocation(line: 74, column: 11, scope: !1889)
!1907 = !DILocation(line: 75, column: 13, scope: !1889)
!1908 = !DILocation(line: 78, column: 3, scope: !1878)
!1909 = distinct !DISubprogram(name: "getprogname", scope: !523, file: !523, line: 54, type: !1910, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !634)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!46}
!1912 = !DILocation(line: 58, column: 10, scope: !1909)
!1913 = !DILocation(line: 58, column: 3, scope: !1909)
!1914 = distinct !DISubprogram(name: "set_program_name", scope: !360, file: !360, line: 37, type: !647, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !1915)
!1915 = !{!1916, !1917, !1918}
!1916 = !DILocalVariable(name: "argv0", arg: 1, scope: !1914, file: !360, line: 37, type: !46)
!1917 = !DILocalVariable(name: "slash", scope: !1914, file: !360, line: 44, type: !46)
!1918 = !DILocalVariable(name: "base", scope: !1914, file: !360, line: 45, type: !46)
!1919 = !DILocation(line: 0, scope: !1914)
!1920 = !DILocation(line: 44, column: 23, scope: !1914)
!1921 = !DILocation(line: 45, column: 22, scope: !1914)
!1922 = !DILocation(line: 46, column: 17, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1914, file: !360, line: 46, column: 7)
!1924 = !DILocation(line: 46, column: 9, scope: !1923)
!1925 = !DILocation(line: 46, column: 25, scope: !1923)
!1926 = !DILocation(line: 46, column: 40, scope: !1923)
!1927 = !DILocalVariable(name: "__s1", arg: 1, scope: !1928, file: !672, line: 974, type: !839)
!1928 = distinct !DISubprogram(name: "memeq", scope: !672, file: !672, line: 974, type: !1929, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!104, !839, !839, !49}
!1931 = !{!1927, !1932, !1933}
!1932 = !DILocalVariable(name: "__s2", arg: 2, scope: !1928, file: !672, line: 974, type: !839)
!1933 = !DILocalVariable(name: "__n", arg: 3, scope: !1928, file: !672, line: 974, type: !49)
!1934 = !DILocation(line: 0, scope: !1928, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 46, column: 28, scope: !1923)
!1936 = !DILocation(line: 976, column: 11, scope: !1928, inlinedAt: !1935)
!1937 = !DILocation(line: 976, column: 10, scope: !1928, inlinedAt: !1935)
!1938 = !DILocation(line: 46, column: 7, scope: !1914)
!1939 = !DILocation(line: 49, column: 11, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !360, line: 49, column: 11)
!1941 = distinct !DILexicalBlock(scope: !1923, file: !360, line: 47, column: 5)
!1942 = !DILocation(line: 49, column: 36, scope: !1940)
!1943 = !DILocation(line: 49, column: 11, scope: !1941)
!1944 = !DILocation(line: 65, column: 16, scope: !1914)
!1945 = !DILocation(line: 71, column: 27, scope: !1914)
!1946 = !DILocation(line: 74, column: 33, scope: !1914)
!1947 = !DILocation(line: 76, column: 1, scope: !1914)
!1948 = !DILocation(line: 0, scope: !365)
!1949 = !DILocation(line: 40, column: 29, scope: !365)
!1950 = !DILocation(line: 41, column: 19, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !365, file: !366, line: 41, column: 7)
!1952 = !DILocation(line: 41, column: 7, scope: !365)
!1953 = !DILocation(line: 47, column: 3, scope: !365)
!1954 = !DILocation(line: 48, column: 3, scope: !365)
!1955 = !DILocation(line: 48, column: 13, scope: !365)
!1956 = !DILocalVariable(name: "ps", arg: 1, scope: !1957, file: !1958, line: 1135, type: !1961)
!1957 = distinct !DISubprogram(name: "mbszero", scope: !1958, file: !1958, line: 1135, type: !1959, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !1962)
!1958 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1959 = !DISubroutineType(types: !1960)
!1960 = !{null, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1962 = !{!1956}
!1963 = !DILocation(line: 0, scope: !1957, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 48, column: 18, scope: !365)
!1965 = !DILocalVariable(name: "__dest", arg: 1, scope: !1966, file: !920, line: 57, type: !43)
!1966 = distinct !DISubprogram(name: "memset", scope: !920, file: !920, line: 57, type: !1967, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!43, !43, !6, !49}
!1969 = !{!1965, !1970, !1971}
!1970 = !DILocalVariable(name: "__ch", arg: 2, scope: !1966, file: !920, line: 57, type: !6)
!1971 = !DILocalVariable(name: "__len", arg: 3, scope: !1966, file: !920, line: 57, type: !49)
!1972 = !DILocation(line: 0, scope: !1966, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 1137, column: 3, scope: !1957, inlinedAt: !1964)
!1974 = !DILocation(line: 59, column: 10, scope: !1966, inlinedAt: !1973)
!1975 = !DILocation(line: 49, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !365, file: !366, line: 49, column: 7)
!1977 = !DILocation(line: 49, column: 39, scope: !1976)
!1978 = !DILocation(line: 49, column: 44, scope: !1976)
!1979 = !DILocation(line: 54, column: 1, scope: !365)
!1980 = !DISubprogram(name: "mbrtoc32", scope: !377, file: !377, line: 57, type: !1981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!49, !1983, !717, !49, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1961)
!1986 = distinct !DISubprogram(name: "clone_quoting_options", scope: !400, file: !400, line: 113, type: !1987, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !1990)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1989, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1990 = !{!1991, !1992, !1993}
!1991 = !DILocalVariable(name: "o", arg: 1, scope: !1986, file: !400, line: 113, type: !1989)
!1992 = !DILocalVariable(name: "saved_errno", scope: !1986, file: !400, line: 115, type: !6)
!1993 = !DILocalVariable(name: "p", scope: !1986, file: !400, line: 116, type: !1989)
!1994 = !DILocation(line: 0, scope: !1986)
!1995 = !DILocation(line: 115, column: 21, scope: !1986)
!1996 = !DILocation(line: 116, column: 40, scope: !1986)
!1997 = !DILocation(line: 116, column: 31, scope: !1986)
!1998 = !DILocation(line: 118, column: 9, scope: !1986)
!1999 = !DILocation(line: 119, column: 3, scope: !1986)
!2000 = distinct !DISubprogram(name: "get_quoting_style", scope: !400, file: !400, line: 124, type: !2001, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2005)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!28, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!2005 = !{!2006}
!2006 = !DILocalVariable(name: "o", arg: 1, scope: !2000, file: !400, line: 124, type: !2003)
!2007 = !DILocation(line: 0, scope: !2000)
!2008 = !DILocation(line: 126, column: 11, scope: !2000)
!2009 = !DILocation(line: 126, column: 46, scope: !2000)
!2010 = !{!2011, !627, i64 0}
!2011 = !{!"quoting_options", !627, i64 0, !722, i64 4, !627, i64 8, !626, i64 40, !626, i64 48}
!2012 = !DILocation(line: 126, column: 3, scope: !2000)
!2013 = distinct !DISubprogram(name: "set_quoting_style", scope: !400, file: !400, line: 132, type: !2014, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2016)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !1989, !28}
!2016 = !{!2017, !2018}
!2017 = !DILocalVariable(name: "o", arg: 1, scope: !2013, file: !400, line: 132, type: !1989)
!2018 = !DILocalVariable(name: "s", arg: 2, scope: !2013, file: !400, line: 132, type: !28)
!2019 = !DILocation(line: 0, scope: !2013)
!2020 = !DILocation(line: 134, column: 4, scope: !2013)
!2021 = !DILocation(line: 134, column: 39, scope: !2013)
!2022 = !DILocation(line: 134, column: 45, scope: !2013)
!2023 = !DILocation(line: 135, column: 1, scope: !2013)
!2024 = distinct !DISubprogram(name: "set_char_quoting", scope: !400, file: !400, line: 143, type: !2025, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!6, !1989, !9, !6}
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2034, !2035}
!2028 = !DILocalVariable(name: "o", arg: 1, scope: !2024, file: !400, line: 143, type: !1989)
!2029 = !DILocalVariable(name: "c", arg: 2, scope: !2024, file: !400, line: 143, type: !9)
!2030 = !DILocalVariable(name: "i", arg: 3, scope: !2024, file: !400, line: 143, type: !6)
!2031 = !DILocalVariable(name: "uc", scope: !2024, file: !400, line: 145, type: !52)
!2032 = !DILocalVariable(name: "p", scope: !2024, file: !400, line: 146, type: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2034 = !DILocalVariable(name: "shift", scope: !2024, file: !400, line: 148, type: !6)
!2035 = !DILocalVariable(name: "r", scope: !2024, file: !400, line: 149, type: !14)
!2036 = !DILocation(line: 0, scope: !2024)
!2037 = !DILocation(line: 147, column: 6, scope: !2024)
!2038 = !DILocation(line: 147, column: 62, scope: !2024)
!2039 = !DILocation(line: 147, column: 57, scope: !2024)
!2040 = !DILocation(line: 148, column: 15, scope: !2024)
!2041 = !DILocation(line: 149, column: 21, scope: !2024)
!2042 = !DILocation(line: 149, column: 24, scope: !2024)
!2043 = !DILocation(line: 149, column: 34, scope: !2024)
!2044 = !DILocation(line: 150, column: 13, scope: !2024)
!2045 = !DILocation(line: 150, column: 19, scope: !2024)
!2046 = !DILocation(line: 150, column: 24, scope: !2024)
!2047 = !DILocation(line: 150, column: 6, scope: !2024)
!2048 = !DILocation(line: 151, column: 3, scope: !2024)
!2049 = distinct !DISubprogram(name: "set_quoting_flags", scope: !400, file: !400, line: 159, type: !2050, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!6, !1989, !6}
!2052 = !{!2053, !2054, !2055}
!2053 = !DILocalVariable(name: "o", arg: 1, scope: !2049, file: !400, line: 159, type: !1989)
!2054 = !DILocalVariable(name: "i", arg: 2, scope: !2049, file: !400, line: 159, type: !6)
!2055 = !DILocalVariable(name: "r", scope: !2049, file: !400, line: 163, type: !6)
!2056 = !DILocation(line: 0, scope: !2049)
!2057 = !DILocation(line: 161, column: 8, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2049, file: !400, line: 161, column: 7)
!2059 = !DILocation(line: 161, column: 7, scope: !2049)
!2060 = !DILocation(line: 163, column: 14, scope: !2049)
!2061 = !{!2011, !722, i64 4}
!2062 = !DILocation(line: 164, column: 12, scope: !2049)
!2063 = !DILocation(line: 165, column: 3, scope: !2049)
!2064 = distinct !DISubprogram(name: "set_custom_quoting", scope: !400, file: !400, line: 169, type: !2065, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !1989, !46, !46}
!2067 = !{!2068, !2069, !2070}
!2068 = !DILocalVariable(name: "o", arg: 1, scope: !2064, file: !400, line: 169, type: !1989)
!2069 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2064, file: !400, line: 170, type: !46)
!2070 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2064, file: !400, line: 170, type: !46)
!2071 = !DILocation(line: 0, scope: !2064)
!2072 = !DILocation(line: 172, column: 8, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2064, file: !400, line: 172, column: 7)
!2074 = !DILocation(line: 172, column: 7, scope: !2064)
!2075 = !DILocation(line: 174, column: 6, scope: !2064)
!2076 = !DILocation(line: 174, column: 12, scope: !2064)
!2077 = !DILocation(line: 175, column: 8, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2064, file: !400, line: 175, column: 7)
!2079 = !DILocation(line: 175, column: 19, scope: !2078)
!2080 = !DILocation(line: 176, column: 5, scope: !2078)
!2081 = !DILocation(line: 177, column: 6, scope: !2064)
!2082 = !DILocation(line: 177, column: 17, scope: !2064)
!2083 = !{!2011, !626, i64 40}
!2084 = !DILocation(line: 178, column: 6, scope: !2064)
!2085 = !DILocation(line: 178, column: 18, scope: !2064)
!2086 = !{!2011, !626, i64 48}
!2087 = !DILocation(line: 179, column: 1, scope: !2064)
!2088 = distinct !DISubprogram(name: "quotearg_buffer", scope: !400, file: !400, line: 774, type: !2089, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!49, !8, !49, !46, !49, !2003}
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099}
!2092 = !DILocalVariable(name: "buffer", arg: 1, scope: !2088, file: !400, line: 774, type: !8)
!2093 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2088, file: !400, line: 774, type: !49)
!2094 = !DILocalVariable(name: "arg", arg: 3, scope: !2088, file: !400, line: 775, type: !46)
!2095 = !DILocalVariable(name: "argsize", arg: 4, scope: !2088, file: !400, line: 775, type: !49)
!2096 = !DILocalVariable(name: "o", arg: 5, scope: !2088, file: !400, line: 776, type: !2003)
!2097 = !DILocalVariable(name: "p", scope: !2088, file: !400, line: 778, type: !2003)
!2098 = !DILocalVariable(name: "saved_errno", scope: !2088, file: !400, line: 779, type: !6)
!2099 = !DILocalVariable(name: "r", scope: !2088, file: !400, line: 780, type: !49)
!2100 = !DILocation(line: 0, scope: !2088)
!2101 = !DILocation(line: 778, column: 37, scope: !2088)
!2102 = !DILocation(line: 779, column: 21, scope: !2088)
!2103 = !DILocation(line: 781, column: 43, scope: !2088)
!2104 = !DILocation(line: 781, column: 53, scope: !2088)
!2105 = !DILocation(line: 781, column: 60, scope: !2088)
!2106 = !DILocation(line: 782, column: 43, scope: !2088)
!2107 = !DILocation(line: 782, column: 58, scope: !2088)
!2108 = !DILocation(line: 780, column: 14, scope: !2088)
!2109 = !DILocation(line: 783, column: 9, scope: !2088)
!2110 = !DILocation(line: 784, column: 3, scope: !2088)
!2111 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !400, file: !400, line: 251, type: !2112, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2116)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!49, !8, !49, !46, !49, !28, !6, !2114, !46, !46}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2141, !2143, !2146, !2147, !2148, !2149, !2152, !2153, !2156, !2160, !2161, !2169, !2172, !2173, !2175, !2176, !2177, !2178}
!2117 = !DILocalVariable(name: "buffer", arg: 1, scope: !2111, file: !400, line: 251, type: !8)
!2118 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2111, file: !400, line: 251, type: !49)
!2119 = !DILocalVariable(name: "arg", arg: 3, scope: !2111, file: !400, line: 252, type: !46)
!2120 = !DILocalVariable(name: "argsize", arg: 4, scope: !2111, file: !400, line: 252, type: !49)
!2121 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2111, file: !400, line: 253, type: !28)
!2122 = !DILocalVariable(name: "flags", arg: 6, scope: !2111, file: !400, line: 253, type: !6)
!2123 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2111, file: !400, line: 254, type: !2114)
!2124 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2111, file: !400, line: 255, type: !46)
!2125 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2111, file: !400, line: 256, type: !46)
!2126 = !DILocalVariable(name: "unibyte_locale", scope: !2111, file: !400, line: 258, type: !104)
!2127 = !DILocalVariable(name: "len", scope: !2111, file: !400, line: 260, type: !49)
!2128 = !DILocalVariable(name: "orig_buffersize", scope: !2111, file: !400, line: 261, type: !49)
!2129 = !DILocalVariable(name: "quote_string", scope: !2111, file: !400, line: 262, type: !46)
!2130 = !DILocalVariable(name: "quote_string_len", scope: !2111, file: !400, line: 263, type: !49)
!2131 = !DILocalVariable(name: "backslash_escapes", scope: !2111, file: !400, line: 264, type: !104)
!2132 = !DILocalVariable(name: "elide_outer_quotes", scope: !2111, file: !400, line: 265, type: !104)
!2133 = !DILocalVariable(name: "encountered_single_quote", scope: !2111, file: !400, line: 266, type: !104)
!2134 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2111, file: !400, line: 267, type: !104)
!2135 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2111, file: !400, line: 309, type: !104)
!2136 = !DILocalVariable(name: "lq", scope: !2137, file: !400, line: 361, type: !46)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !400, line: 361, column: 11)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !400, line: 360, column: 13)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !400, line: 333, column: 7)
!2140 = distinct !DILexicalBlock(scope: !2111, file: !400, line: 312, column: 5)
!2141 = !DILocalVariable(name: "i", scope: !2142, file: !400, line: 395, type: !49)
!2142 = distinct !DILexicalBlock(scope: !2111, file: !400, line: 395, column: 3)
!2143 = !DILocalVariable(name: "is_right_quote", scope: !2144, file: !400, line: 397, type: !104)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !400, line: 396, column: 5)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !400, line: 395, column: 3)
!2146 = !DILocalVariable(name: "escaping", scope: !2144, file: !400, line: 398, type: !104)
!2147 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2144, file: !400, line: 399, type: !104)
!2148 = !DILocalVariable(name: "c", scope: !2144, file: !400, line: 417, type: !52)
!2149 = !DILocalVariable(name: "m", scope: !2150, file: !400, line: 598, type: !49)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !400, line: 596, column: 11)
!2151 = distinct !DILexicalBlock(scope: !2144, file: !400, line: 419, column: 9)
!2152 = !DILocalVariable(name: "printable", scope: !2150, file: !400, line: 600, type: !104)
!2153 = !DILocalVariable(name: "mbs", scope: !2154, file: !400, line: 609, type: !442)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !400, line: 608, column: 15)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !400, line: 602, column: 17)
!2156 = !DILocalVariable(name: "w", scope: !2157, file: !400, line: 618, type: !376)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !400, line: 617, column: 19)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !400, line: 616, column: 17)
!2159 = distinct !DILexicalBlock(scope: !2154, file: !400, line: 616, column: 17)
!2160 = !DILocalVariable(name: "bytes", scope: !2157, file: !400, line: 619, type: !49)
!2161 = !DILocalVariable(name: "j", scope: !2162, file: !400, line: 648, type: !49)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !400, line: 648, column: 29)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !400, line: 647, column: 27)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !400, line: 645, column: 29)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !400, line: 636, column: 23)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !400, line: 628, column: 30)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !400, line: 623, column: 30)
!2168 = distinct !DILexicalBlock(scope: !2157, file: !400, line: 621, column: 25)
!2169 = !DILocalVariable(name: "ilim", scope: !2170, file: !400, line: 674, type: !49)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !400, line: 671, column: 15)
!2171 = distinct !DILexicalBlock(scope: !2150, file: !400, line: 670, column: 17)
!2172 = !DILabel(scope: !2111, name: "process_input", file: !400, line: 308)
!2173 = !DILabel(scope: !2174, name: "c_and_shell_escape", file: !400, line: 502)
!2174 = distinct !DILexicalBlock(scope: !2151, file: !400, line: 478, column: 9)
!2175 = !DILabel(scope: !2174, name: "c_escape", file: !400, line: 507)
!2176 = !DILabel(scope: !2144, name: "store_escape", file: !400, line: 709)
!2177 = !DILabel(scope: !2144, name: "store_c", file: !400, line: 712)
!2178 = !DILabel(scope: !2111, name: "force_outer_quoting_style", file: !400, line: 753)
!2179 = !DILocation(line: 0, scope: !2111)
!2180 = !DILocation(line: 258, column: 25, scope: !2111)
!2181 = !DILocation(line: 258, column: 36, scope: !2111)
!2182 = !DILocation(line: 267, column: 3, scope: !2111)
!2183 = !DILocation(line: 261, column: 10, scope: !2111)
!2184 = !DILocation(line: 262, column: 15, scope: !2111)
!2185 = !DILocation(line: 263, column: 10, scope: !2111)
!2186 = !DILocation(line: 308, column: 2, scope: !2111)
!2187 = !DILocation(line: 311, column: 3, scope: !2111)
!2188 = !DILocation(line: 318, column: 11, scope: !2140)
!2189 = !DILocation(line: 319, column: 9, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !400, line: 319, column: 9)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !400, line: 319, column: 9)
!2192 = distinct !DILexicalBlock(scope: !2140, file: !400, line: 318, column: 11)
!2193 = !DILocation(line: 319, column: 9, scope: !2191)
!2194 = !DILocation(line: 0, scope: !433, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 357, column: 26, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !400, line: 335, column: 11)
!2197 = distinct !DILexicalBlock(scope: !2139, file: !400, line: 334, column: 13)
!2198 = !DILocation(line: 199, column: 29, scope: !433, inlinedAt: !2195)
!2199 = !DILocation(line: 201, column: 19, scope: !2200, inlinedAt: !2195)
!2200 = distinct !DILexicalBlock(scope: !433, file: !400, line: 201, column: 7)
!2201 = !DILocation(line: 201, column: 7, scope: !433, inlinedAt: !2195)
!2202 = !DILocation(line: 229, column: 3, scope: !433, inlinedAt: !2195)
!2203 = !DILocation(line: 230, column: 3, scope: !433, inlinedAt: !2195)
!2204 = !DILocation(line: 230, column: 13, scope: !433, inlinedAt: !2195)
!2205 = !DILocalVariable(name: "ps", arg: 1, scope: !2206, file: !1958, line: 1135, type: !2209)
!2206 = distinct !DISubprogram(name: "mbszero", scope: !1958, file: !1958, line: 1135, type: !2207, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2210)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !2209}
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2210 = !{!2205}
!2211 = !DILocation(line: 0, scope: !2206, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 230, column: 18, scope: !433, inlinedAt: !2195)
!2213 = !DILocalVariable(name: "__dest", arg: 1, scope: !2214, file: !920, line: 57, type: !43)
!2214 = distinct !DISubprogram(name: "memset", scope: !920, file: !920, line: 57, type: !1967, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2215)
!2215 = !{!2213, !2216, !2217}
!2216 = !DILocalVariable(name: "__ch", arg: 2, scope: !2214, file: !920, line: 57, type: !6)
!2217 = !DILocalVariable(name: "__len", arg: 3, scope: !2214, file: !920, line: 57, type: !49)
!2218 = !DILocation(line: 0, scope: !2214, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 1137, column: 3, scope: !2206, inlinedAt: !2212)
!2220 = !DILocation(line: 59, column: 10, scope: !2214, inlinedAt: !2219)
!2221 = !DILocation(line: 231, column: 7, scope: !2222, inlinedAt: !2195)
!2222 = distinct !DILexicalBlock(scope: !433, file: !400, line: 231, column: 7)
!2223 = !DILocation(line: 231, column: 40, scope: !2222, inlinedAt: !2195)
!2224 = !DILocation(line: 231, column: 45, scope: !2222, inlinedAt: !2195)
!2225 = !DILocation(line: 235, column: 1, scope: !433, inlinedAt: !2195)
!2226 = !DILocation(line: 0, scope: !433, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 358, column: 27, scope: !2196)
!2228 = !DILocation(line: 199, column: 29, scope: !433, inlinedAt: !2227)
!2229 = !DILocation(line: 201, column: 19, scope: !2200, inlinedAt: !2227)
!2230 = !DILocation(line: 201, column: 7, scope: !433, inlinedAt: !2227)
!2231 = !DILocation(line: 229, column: 3, scope: !433, inlinedAt: !2227)
!2232 = !DILocation(line: 230, column: 3, scope: !433, inlinedAt: !2227)
!2233 = !DILocation(line: 230, column: 13, scope: !433, inlinedAt: !2227)
!2234 = !DILocation(line: 0, scope: !2206, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 230, column: 18, scope: !433, inlinedAt: !2227)
!2236 = !DILocation(line: 0, scope: !2214, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 1137, column: 3, scope: !2206, inlinedAt: !2235)
!2238 = !DILocation(line: 59, column: 10, scope: !2214, inlinedAt: !2237)
!2239 = !DILocation(line: 231, column: 7, scope: !2222, inlinedAt: !2227)
!2240 = !DILocation(line: 231, column: 40, scope: !2222, inlinedAt: !2227)
!2241 = !DILocation(line: 231, column: 45, scope: !2222, inlinedAt: !2227)
!2242 = !DILocation(line: 235, column: 1, scope: !433, inlinedAt: !2227)
!2243 = !DILocation(line: 360, column: 13, scope: !2139)
!2244 = !DILocation(line: 0, scope: !2137)
!2245 = !DILocation(line: 361, column: 45, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2137, file: !400, line: 361, column: 11)
!2247 = !DILocation(line: 361, column: 11, scope: !2137)
!2248 = !DILocation(line: 362, column: 13, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !400, line: 362, column: 13)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !400, line: 362, column: 13)
!2251 = !DILocation(line: 362, column: 13, scope: !2250)
!2252 = !DILocation(line: 361, column: 52, scope: !2246)
!2253 = distinct !{!2253, !2247, !2254, !688}
!2254 = !DILocation(line: 362, column: 13, scope: !2137)
!2255 = !DILocation(line: 260, column: 10, scope: !2111)
!2256 = !DILocation(line: 365, column: 28, scope: !2139)
!2257 = !DILocation(line: 367, column: 7, scope: !2140)
!2258 = !DILocation(line: 370, column: 7, scope: !2140)
!2259 = !DILocation(line: 376, column: 11, scope: !2140)
!2260 = !DILocation(line: 381, column: 11, scope: !2140)
!2261 = !DILocation(line: 382, column: 9, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !400, line: 382, column: 9)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !400, line: 382, column: 9)
!2264 = distinct !DILexicalBlock(scope: !2140, file: !400, line: 381, column: 11)
!2265 = !DILocation(line: 382, column: 9, scope: !2263)
!2266 = !DILocation(line: 389, column: 7, scope: !2140)
!2267 = !DILocation(line: 392, column: 7, scope: !2140)
!2268 = !DILocation(line: 0, scope: !2142)
!2269 = !DILocation(line: 395, column: 8, scope: !2142)
!2270 = !DILocation(line: 395, column: 34, scope: !2145)
!2271 = !DILocation(line: 395, column: 26, scope: !2145)
!2272 = !DILocation(line: 395, column: 48, scope: !2145)
!2273 = !DILocation(line: 395, column: 55, scope: !2145)
!2274 = !DILocation(line: 395, column: 3, scope: !2142)
!2275 = !DILocation(line: 395, column: 67, scope: !2145)
!2276 = !DILocation(line: 0, scope: !2144)
!2277 = !DILocation(line: 402, column: 11, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2144, file: !400, line: 401, column: 11)
!2279 = !DILocation(line: 404, column: 17, scope: !2278)
!2280 = !DILocation(line: 405, column: 39, scope: !2278)
!2281 = !DILocation(line: 409, column: 32, scope: !2278)
!2282 = !DILocation(line: 405, column: 19, scope: !2278)
!2283 = !DILocation(line: 405, column: 15, scope: !2278)
!2284 = !DILocation(line: 410, column: 11, scope: !2278)
!2285 = !DILocation(line: 410, column: 25, scope: !2278)
!2286 = !DILocalVariable(name: "__s1", arg: 1, scope: !2287, file: !672, line: 974, type: !839)
!2287 = distinct !DISubprogram(name: "memeq", scope: !672, file: !672, line: 974, type: !1929, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2288)
!2288 = !{!2286, !2289, !2290}
!2289 = !DILocalVariable(name: "__s2", arg: 2, scope: !2287, file: !672, line: 974, type: !839)
!2290 = !DILocalVariable(name: "__n", arg: 3, scope: !2287, file: !672, line: 974, type: !49)
!2291 = !DILocation(line: 0, scope: !2287, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 410, column: 14, scope: !2278)
!2293 = !DILocation(line: 976, column: 11, scope: !2287, inlinedAt: !2292)
!2294 = !DILocation(line: 976, column: 10, scope: !2287, inlinedAt: !2292)
!2295 = !DILocation(line: 401, column: 11, scope: !2144)
!2296 = !DILocation(line: 417, column: 25, scope: !2144)
!2297 = !DILocation(line: 418, column: 7, scope: !2144)
!2298 = !DILocation(line: 421, column: 15, scope: !2151)
!2299 = !DILocation(line: 423, column: 15, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !400, line: 423, column: 15)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !400, line: 422, column: 13)
!2302 = distinct !DILexicalBlock(scope: !2151, file: !400, line: 421, column: 15)
!2303 = !DILocation(line: 423, column: 15, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !400, line: 423, column: 15)
!2305 = !DILocation(line: 423, column: 15, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !400, line: 423, column: 15)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !400, line: 423, column: 15)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !400, line: 423, column: 15)
!2309 = !DILocation(line: 423, column: 15, scope: !2307)
!2310 = !DILocation(line: 423, column: 15, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !400, line: 423, column: 15)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !400, line: 423, column: 15)
!2313 = !DILocation(line: 423, column: 15, scope: !2312)
!2314 = !DILocation(line: 423, column: 15, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !400, line: 423, column: 15)
!2316 = distinct !DILexicalBlock(scope: !2308, file: !400, line: 423, column: 15)
!2317 = !DILocation(line: 423, column: 15, scope: !2316)
!2318 = !DILocation(line: 423, column: 15, scope: !2308)
!2319 = !DILocation(line: 423, column: 15, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !400, line: 423, column: 15)
!2321 = distinct !DILexicalBlock(scope: !2300, file: !400, line: 423, column: 15)
!2322 = !DILocation(line: 423, column: 15, scope: !2321)
!2323 = !DILocation(line: 431, column: 19, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2301, file: !400, line: 430, column: 19)
!2325 = !DILocation(line: 431, column: 24, scope: !2324)
!2326 = !DILocation(line: 431, column: 28, scope: !2324)
!2327 = !DILocation(line: 431, column: 38, scope: !2324)
!2328 = !DILocation(line: 431, column: 48, scope: !2324)
!2329 = !DILocation(line: 431, column: 59, scope: !2324)
!2330 = !DILocation(line: 433, column: 19, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !400, line: 433, column: 19)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !400, line: 433, column: 19)
!2333 = distinct !DILexicalBlock(scope: !2324, file: !400, line: 432, column: 17)
!2334 = !DILocation(line: 433, column: 19, scope: !2332)
!2335 = !DILocation(line: 434, column: 19, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !400, line: 434, column: 19)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !400, line: 434, column: 19)
!2338 = !DILocation(line: 434, column: 19, scope: !2337)
!2339 = !DILocation(line: 435, column: 17, scope: !2333)
!2340 = !DILocation(line: 442, column: 20, scope: !2302)
!2341 = !DILocation(line: 447, column: 11, scope: !2151)
!2342 = !DILocation(line: 450, column: 19, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2151, file: !400, line: 448, column: 13)
!2344 = !DILocation(line: 456, column: 19, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2343, file: !400, line: 455, column: 19)
!2346 = !DILocation(line: 456, column: 24, scope: !2345)
!2347 = !DILocation(line: 456, column: 28, scope: !2345)
!2348 = !DILocation(line: 456, column: 38, scope: !2345)
!2349 = !DILocation(line: 456, column: 47, scope: !2345)
!2350 = !DILocation(line: 456, column: 41, scope: !2345)
!2351 = !DILocation(line: 456, column: 52, scope: !2345)
!2352 = !DILocation(line: 455, column: 19, scope: !2343)
!2353 = !DILocation(line: 457, column: 25, scope: !2345)
!2354 = !DILocation(line: 457, column: 17, scope: !2345)
!2355 = !DILocation(line: 464, column: 25, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2345, file: !400, line: 458, column: 19)
!2357 = !DILocation(line: 468, column: 21, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !400, line: 468, column: 21)
!2359 = distinct !DILexicalBlock(scope: !2356, file: !400, line: 468, column: 21)
!2360 = !DILocation(line: 468, column: 21, scope: !2359)
!2361 = !DILocation(line: 469, column: 21, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !400, line: 469, column: 21)
!2363 = distinct !DILexicalBlock(scope: !2356, file: !400, line: 469, column: 21)
!2364 = !DILocation(line: 469, column: 21, scope: !2363)
!2365 = !DILocation(line: 470, column: 21, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !400, line: 470, column: 21)
!2367 = distinct !DILexicalBlock(scope: !2356, file: !400, line: 470, column: 21)
!2368 = !DILocation(line: 470, column: 21, scope: !2367)
!2369 = !DILocation(line: 471, column: 21, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !400, line: 471, column: 21)
!2371 = distinct !DILexicalBlock(scope: !2356, file: !400, line: 471, column: 21)
!2372 = !DILocation(line: 471, column: 21, scope: !2371)
!2373 = !DILocation(line: 472, column: 21, scope: !2356)
!2374 = !DILocation(line: 482, column: 33, scope: !2174)
!2375 = !DILocation(line: 483, column: 33, scope: !2174)
!2376 = !DILocation(line: 485, column: 33, scope: !2174)
!2377 = !DILocation(line: 486, column: 33, scope: !2174)
!2378 = !DILocation(line: 487, column: 33, scope: !2174)
!2379 = !DILocation(line: 490, column: 17, scope: !2174)
!2380 = !DILocation(line: 492, column: 21, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !400, line: 491, column: 15)
!2382 = distinct !DILexicalBlock(scope: !2174, file: !400, line: 490, column: 17)
!2383 = !DILocation(line: 499, column: 35, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2174, file: !400, line: 499, column: 17)
!2385 = !DILocation(line: 499, column: 57, scope: !2384)
!2386 = !DILocation(line: 0, scope: !2174)
!2387 = !DILocation(line: 502, column: 11, scope: !2174)
!2388 = !DILocation(line: 504, column: 17, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2174, file: !400, line: 503, column: 17)
!2390 = !DILocation(line: 507, column: 11, scope: !2174)
!2391 = !DILocation(line: 508, column: 17, scope: !2174)
!2392 = !DILocation(line: 517, column: 15, scope: !2151)
!2393 = !DILocation(line: 517, column: 40, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2151, file: !400, line: 517, column: 15)
!2395 = !DILocation(line: 517, column: 47, scope: !2394)
!2396 = !DILocation(line: 517, column: 18, scope: !2394)
!2397 = !DILocation(line: 521, column: 17, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2151, file: !400, line: 521, column: 15)
!2399 = !DILocation(line: 521, column: 15, scope: !2151)
!2400 = !DILocation(line: 525, column: 11, scope: !2151)
!2401 = !DILocation(line: 537, column: 15, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2151, file: !400, line: 536, column: 15)
!2403 = !DILocation(line: 536, column: 15, scope: !2151)
!2404 = !DILocation(line: 544, column: 15, scope: !2151)
!2405 = !DILocation(line: 546, column: 19, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !400, line: 545, column: 13)
!2407 = distinct !DILexicalBlock(scope: !2151, file: !400, line: 544, column: 15)
!2408 = !DILocation(line: 549, column: 19, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !400, line: 549, column: 19)
!2410 = !DILocation(line: 549, column: 30, scope: !2409)
!2411 = !DILocation(line: 558, column: 15, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !400, line: 558, column: 15)
!2413 = distinct !DILexicalBlock(scope: !2406, file: !400, line: 558, column: 15)
!2414 = !DILocation(line: 558, column: 15, scope: !2413)
!2415 = !DILocation(line: 559, column: 15, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !400, line: 559, column: 15)
!2417 = distinct !DILexicalBlock(scope: !2406, file: !400, line: 559, column: 15)
!2418 = !DILocation(line: 559, column: 15, scope: !2417)
!2419 = !DILocation(line: 560, column: 15, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !400, line: 560, column: 15)
!2421 = distinct !DILexicalBlock(scope: !2406, file: !400, line: 560, column: 15)
!2422 = !DILocation(line: 560, column: 15, scope: !2421)
!2423 = !DILocation(line: 562, column: 13, scope: !2406)
!2424 = !DILocation(line: 602, column: 17, scope: !2150)
!2425 = !DILocation(line: 0, scope: !2150)
!2426 = !DILocation(line: 605, column: 29, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2155, file: !400, line: 603, column: 15)
!2428 = !DILocation(line: 605, column: 41, scope: !2427)
!2429 = !DILocation(line: 670, column: 23, scope: !2171)
!2430 = !DILocation(line: 609, column: 17, scope: !2154)
!2431 = !DILocation(line: 609, column: 27, scope: !2154)
!2432 = !DILocation(line: 0, scope: !2206, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 609, column: 32, scope: !2154)
!2434 = !DILocation(line: 0, scope: !2214, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 1137, column: 3, scope: !2206, inlinedAt: !2433)
!2436 = !DILocation(line: 59, column: 10, scope: !2214, inlinedAt: !2435)
!2437 = !DILocation(line: 613, column: 29, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2154, file: !400, line: 613, column: 21)
!2439 = !DILocation(line: 613, column: 21, scope: !2154)
!2440 = !DILocation(line: 614, column: 29, scope: !2438)
!2441 = !DILocation(line: 614, column: 19, scope: !2438)
!2442 = !DILocation(line: 618, column: 21, scope: !2157)
!2443 = !DILocation(line: 620, column: 54, scope: !2157)
!2444 = !DILocation(line: 0, scope: !2157)
!2445 = !DILocation(line: 619, column: 36, scope: !2157)
!2446 = !DILocation(line: 621, column: 25, scope: !2157)
!2447 = !DILocation(line: 631, column: 38, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2166, file: !400, line: 629, column: 23)
!2449 = !DILocation(line: 631, column: 48, scope: !2448)
!2450 = !DILocation(line: 665, column: 19, scope: !2158)
!2451 = !DILocation(line: 666, column: 15, scope: !2155)
!2452 = !DILocation(line: 626, column: 25, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2167, file: !400, line: 624, column: 23)
!2454 = !DILocation(line: 631, column: 51, scope: !2448)
!2455 = !DILocation(line: 631, column: 25, scope: !2448)
!2456 = !DILocation(line: 632, column: 28, scope: !2448)
!2457 = !DILocation(line: 631, column: 34, scope: !2448)
!2458 = distinct !{!2458, !2455, !2456, !688}
!2459 = !DILocation(line: 646, column: 29, scope: !2164)
!2460 = !DILocation(line: 0, scope: !2162)
!2461 = !DILocation(line: 649, column: 49, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2162, file: !400, line: 648, column: 29)
!2463 = !DILocation(line: 649, column: 39, scope: !2462)
!2464 = !DILocation(line: 649, column: 31, scope: !2462)
!2465 = !DILocation(line: 648, column: 60, scope: !2462)
!2466 = !DILocation(line: 648, column: 50, scope: !2462)
!2467 = !DILocation(line: 648, column: 29, scope: !2162)
!2468 = distinct !{!2468, !2467, !2469, !688}
!2469 = !DILocation(line: 654, column: 33, scope: !2162)
!2470 = !DILocation(line: 657, column: 43, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2165, file: !400, line: 657, column: 29)
!2472 = !DILocalVariable(name: "wc", arg: 1, scope: !2473, file: !2474, line: 865, type: !2477)
!2473 = distinct !DISubprogram(name: "c32isprint", scope: !2474, file: !2474, line: 865, type: !2475, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2479)
!2474 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!6, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2478, line: 20, baseType: !14)
!2478 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2479 = !{!2472}
!2480 = !DILocation(line: 0, scope: !2473, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 657, column: 31, scope: !2471)
!2482 = !DILocation(line: 871, column: 10, scope: !2473, inlinedAt: !2481)
!2483 = !DILocation(line: 657, column: 31, scope: !2471)
!2484 = !DILocation(line: 664, column: 23, scope: !2157)
!2485 = !DILocation(line: 753, column: 2, scope: !2111)
!2486 = !DILocation(line: 756, column: 51, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2111, file: !400, line: 756, column: 7)
!2488 = !DILocation(line: 670, column: 19, scope: !2171)
!2489 = !DILocation(line: 670, column: 45, scope: !2171)
!2490 = !DILocation(line: 674, column: 33, scope: !2170)
!2491 = !DILocation(line: 0, scope: !2170)
!2492 = !DILocation(line: 676, column: 17, scope: !2170)
!2493 = !DILocation(line: 398, column: 12, scope: !2144)
!2494 = !DILocation(line: 678, column: 43, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !400, line: 678, column: 25)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !400, line: 677, column: 19)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !400, line: 676, column: 17)
!2498 = distinct !DILexicalBlock(scope: !2170, file: !400, line: 676, column: 17)
!2499 = !DILocation(line: 680, column: 25, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !400, line: 680, column: 25)
!2501 = distinct !DILexicalBlock(scope: !2495, file: !400, line: 679, column: 23)
!2502 = !DILocation(line: 680, column: 25, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !400, line: 680, column: 25)
!2504 = !DILocation(line: 680, column: 25, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !400, line: 680, column: 25)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !400, line: 680, column: 25)
!2507 = distinct !DILexicalBlock(scope: !2503, file: !400, line: 680, column: 25)
!2508 = !DILocation(line: 680, column: 25, scope: !2506)
!2509 = !DILocation(line: 680, column: 25, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !400, line: 680, column: 25)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !400, line: 680, column: 25)
!2512 = !DILocation(line: 680, column: 25, scope: !2511)
!2513 = !DILocation(line: 680, column: 25, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !400, line: 680, column: 25)
!2515 = distinct !DILexicalBlock(scope: !2507, file: !400, line: 680, column: 25)
!2516 = !DILocation(line: 680, column: 25, scope: !2515)
!2517 = !DILocation(line: 680, column: 25, scope: !2507)
!2518 = !DILocation(line: 680, column: 25, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !400, line: 680, column: 25)
!2520 = distinct !DILexicalBlock(scope: !2500, file: !400, line: 680, column: 25)
!2521 = !DILocation(line: 680, column: 25, scope: !2520)
!2522 = !DILocation(line: 681, column: 25, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !400, line: 681, column: 25)
!2524 = distinct !DILexicalBlock(scope: !2501, file: !400, line: 681, column: 25)
!2525 = !DILocation(line: 681, column: 25, scope: !2524)
!2526 = !DILocation(line: 682, column: 25, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !400, line: 682, column: 25)
!2528 = distinct !DILexicalBlock(scope: !2501, file: !400, line: 682, column: 25)
!2529 = !DILocation(line: 682, column: 25, scope: !2528)
!2530 = !DILocation(line: 683, column: 38, scope: !2501)
!2531 = !DILocation(line: 683, column: 33, scope: !2501)
!2532 = !DILocation(line: 684, column: 23, scope: !2501)
!2533 = !DILocation(line: 685, column: 30, scope: !2495)
!2534 = !DILocation(line: 687, column: 25, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !400, line: 687, column: 25)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !400, line: 687, column: 25)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !400, line: 686, column: 23)
!2538 = distinct !DILexicalBlock(scope: !2495, file: !400, line: 685, column: 30)
!2539 = !DILocation(line: 687, column: 25, scope: !2536)
!2540 = !DILocation(line: 689, column: 23, scope: !2537)
!2541 = !DILocation(line: 690, column: 35, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2496, file: !400, line: 690, column: 25)
!2543 = !DILocation(line: 690, column: 30, scope: !2542)
!2544 = !DILocation(line: 690, column: 25, scope: !2496)
!2545 = !DILocation(line: 692, column: 21, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !400, line: 692, column: 21)
!2547 = distinct !DILexicalBlock(scope: !2496, file: !400, line: 692, column: 21)
!2548 = !DILocation(line: 692, column: 21, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !400, line: 692, column: 21)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !400, line: 692, column: 21)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !400, line: 692, column: 21)
!2552 = !DILocation(line: 692, column: 21, scope: !2550)
!2553 = !DILocation(line: 692, column: 21, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !400, line: 692, column: 21)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !400, line: 692, column: 21)
!2556 = !DILocation(line: 692, column: 21, scope: !2555)
!2557 = !DILocation(line: 692, column: 21, scope: !2551)
!2558 = !DILocation(line: 0, scope: !2496)
!2559 = !DILocation(line: 693, column: 21, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !400, line: 693, column: 21)
!2561 = distinct !DILexicalBlock(scope: !2496, file: !400, line: 693, column: 21)
!2562 = !DILocation(line: 693, column: 21, scope: !2561)
!2563 = !DILocation(line: 694, column: 25, scope: !2496)
!2564 = !DILocation(line: 676, column: 17, scope: !2497)
!2565 = distinct !{!2565, !2566, !2567}
!2566 = !DILocation(line: 676, column: 17, scope: !2498)
!2567 = !DILocation(line: 695, column: 19, scope: !2498)
!2568 = !DILocation(line: 409, column: 30, scope: !2278)
!2569 = !DILocation(line: 702, column: 34, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2144, file: !400, line: 702, column: 11)
!2571 = !DILocation(line: 704, column: 14, scope: !2570)
!2572 = !DILocation(line: 705, column: 14, scope: !2570)
!2573 = !DILocation(line: 705, column: 35, scope: !2570)
!2574 = !DILocation(line: 705, column: 17, scope: !2570)
!2575 = !DILocation(line: 705, column: 47, scope: !2570)
!2576 = !DILocation(line: 705, column: 65, scope: !2570)
!2577 = !DILocation(line: 706, column: 11, scope: !2570)
!2578 = !DILocation(line: 702, column: 11, scope: !2144)
!2579 = !DILocation(line: 395, column: 15, scope: !2142)
!2580 = !DILocation(line: 709, column: 5, scope: !2144)
!2581 = !DILocation(line: 710, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2144, file: !400, line: 710, column: 7)
!2583 = !DILocation(line: 710, column: 7, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2582, file: !400, line: 710, column: 7)
!2585 = !DILocation(line: 710, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !400, line: 710, column: 7)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !400, line: 710, column: 7)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !400, line: 710, column: 7)
!2589 = !DILocation(line: 710, column: 7, scope: !2587)
!2590 = !DILocation(line: 710, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !400, line: 710, column: 7)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !400, line: 710, column: 7)
!2593 = !DILocation(line: 710, column: 7, scope: !2592)
!2594 = !DILocation(line: 710, column: 7, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !400, line: 710, column: 7)
!2596 = distinct !DILexicalBlock(scope: !2588, file: !400, line: 710, column: 7)
!2597 = !DILocation(line: 710, column: 7, scope: !2596)
!2598 = !DILocation(line: 710, column: 7, scope: !2588)
!2599 = !DILocation(line: 710, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !400, line: 710, column: 7)
!2601 = distinct !DILexicalBlock(scope: !2582, file: !400, line: 710, column: 7)
!2602 = !DILocation(line: 710, column: 7, scope: !2601)
!2603 = !DILocation(line: 712, column: 5, scope: !2144)
!2604 = !DILocation(line: 713, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !400, line: 713, column: 7)
!2606 = distinct !DILexicalBlock(scope: !2144, file: !400, line: 713, column: 7)
!2607 = !DILocation(line: 417, column: 21, scope: !2144)
!2608 = !DILocation(line: 713, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !400, line: 713, column: 7)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !400, line: 713, column: 7)
!2611 = distinct !DILexicalBlock(scope: !2605, file: !400, line: 713, column: 7)
!2612 = !DILocation(line: 713, column: 7, scope: !2610)
!2613 = !DILocation(line: 713, column: 7, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !400, line: 713, column: 7)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !400, line: 713, column: 7)
!2616 = !DILocation(line: 713, column: 7, scope: !2615)
!2617 = !DILocation(line: 713, column: 7, scope: !2611)
!2618 = !DILocation(line: 714, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !400, line: 714, column: 7)
!2620 = distinct !DILexicalBlock(scope: !2144, file: !400, line: 714, column: 7)
!2621 = !DILocation(line: 714, column: 7, scope: !2620)
!2622 = !DILocation(line: 716, column: 11, scope: !2144)
!2623 = !DILocation(line: 718, column: 5, scope: !2145)
!2624 = !DILocation(line: 395, column: 82, scope: !2145)
!2625 = !DILocation(line: 395, column: 3, scope: !2145)
!2626 = distinct !{!2626, !2274, !2627, !688}
!2627 = !DILocation(line: 718, column: 5, scope: !2142)
!2628 = !DILocation(line: 720, column: 11, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2111, file: !400, line: 720, column: 7)
!2630 = !DILocation(line: 720, column: 16, scope: !2629)
!2631 = !DILocation(line: 728, column: 51, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2111, file: !400, line: 728, column: 7)
!2633 = !DILocation(line: 731, column: 11, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2632, file: !400, line: 730, column: 5)
!2635 = !DILocation(line: 732, column: 16, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2634, file: !400, line: 731, column: 11)
!2637 = !DILocation(line: 732, column: 9, scope: !2636)
!2638 = !DILocation(line: 736, column: 18, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !400, line: 736, column: 16)
!2640 = !DILocation(line: 736, column: 29, scope: !2639)
!2641 = !DILocation(line: 745, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2111, file: !400, line: 745, column: 7)
!2643 = !DILocation(line: 745, column: 20, scope: !2642)
!2644 = !DILocation(line: 746, column: 12, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !400, line: 746, column: 5)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !400, line: 746, column: 5)
!2647 = !DILocation(line: 746, column: 5, scope: !2646)
!2648 = !DILocation(line: 747, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !400, line: 747, column: 7)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !400, line: 747, column: 7)
!2651 = !DILocation(line: 747, column: 7, scope: !2650)
!2652 = !DILocation(line: 746, column: 39, scope: !2645)
!2653 = distinct !{!2653, !2647, !2654, !688}
!2654 = !DILocation(line: 747, column: 7, scope: !2646)
!2655 = !DILocation(line: 749, column: 11, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2111, file: !400, line: 749, column: 7)
!2657 = !DILocation(line: 749, column: 7, scope: !2111)
!2658 = !DILocation(line: 750, column: 5, scope: !2656)
!2659 = !DILocation(line: 750, column: 17, scope: !2656)
!2660 = !DILocation(line: 756, column: 21, scope: !2487)
!2661 = !DILocation(line: 760, column: 42, scope: !2111)
!2662 = !DILocation(line: 758, column: 10, scope: !2111)
!2663 = !DILocation(line: 758, column: 3, scope: !2111)
!2664 = !DILocation(line: 762, column: 1, scope: !2111)
!2665 = !DISubprogram(name: "iswprint", scope: !2666, file: !2666, line: 120, type: !2475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!2666 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2667 = distinct !DISubprogram(name: "quotearg_alloc", scope: !400, file: !400, line: 788, type: !2668, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!8, !46, !49, !2003}
!2670 = !{!2671, !2672, !2673}
!2671 = !DILocalVariable(name: "arg", arg: 1, scope: !2667, file: !400, line: 788, type: !46)
!2672 = !DILocalVariable(name: "argsize", arg: 2, scope: !2667, file: !400, line: 788, type: !49)
!2673 = !DILocalVariable(name: "o", arg: 3, scope: !2667, file: !400, line: 789, type: !2003)
!2674 = !DILocation(line: 0, scope: !2667)
!2675 = !DILocalVariable(name: "arg", arg: 1, scope: !2676, file: !400, line: 801, type: !46)
!2676 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !400, file: !400, line: 801, type: !2677, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!8, !46, !49, !552, !2003}
!2679 = !{!2675, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687}
!2680 = !DILocalVariable(name: "argsize", arg: 2, scope: !2676, file: !400, line: 801, type: !49)
!2681 = !DILocalVariable(name: "size", arg: 3, scope: !2676, file: !400, line: 801, type: !552)
!2682 = !DILocalVariable(name: "o", arg: 4, scope: !2676, file: !400, line: 802, type: !2003)
!2683 = !DILocalVariable(name: "p", scope: !2676, file: !400, line: 804, type: !2003)
!2684 = !DILocalVariable(name: "saved_errno", scope: !2676, file: !400, line: 805, type: !6)
!2685 = !DILocalVariable(name: "flags", scope: !2676, file: !400, line: 807, type: !6)
!2686 = !DILocalVariable(name: "bufsize", scope: !2676, file: !400, line: 808, type: !49)
!2687 = !DILocalVariable(name: "buf", scope: !2676, file: !400, line: 812, type: !8)
!2688 = !DILocation(line: 0, scope: !2676, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 791, column: 10, scope: !2667)
!2690 = !DILocation(line: 804, column: 37, scope: !2676, inlinedAt: !2689)
!2691 = !DILocation(line: 805, column: 21, scope: !2676, inlinedAt: !2689)
!2692 = !DILocation(line: 807, column: 18, scope: !2676, inlinedAt: !2689)
!2693 = !DILocation(line: 807, column: 24, scope: !2676, inlinedAt: !2689)
!2694 = !DILocation(line: 808, column: 72, scope: !2676, inlinedAt: !2689)
!2695 = !DILocation(line: 809, column: 53, scope: !2676, inlinedAt: !2689)
!2696 = !DILocation(line: 810, column: 49, scope: !2676, inlinedAt: !2689)
!2697 = !DILocation(line: 811, column: 49, scope: !2676, inlinedAt: !2689)
!2698 = !DILocation(line: 808, column: 20, scope: !2676, inlinedAt: !2689)
!2699 = !DILocation(line: 811, column: 62, scope: !2676, inlinedAt: !2689)
!2700 = !DILocation(line: 812, column: 15, scope: !2676, inlinedAt: !2689)
!2701 = !DILocation(line: 813, column: 60, scope: !2676, inlinedAt: !2689)
!2702 = !DILocation(line: 815, column: 32, scope: !2676, inlinedAt: !2689)
!2703 = !DILocation(line: 815, column: 47, scope: !2676, inlinedAt: !2689)
!2704 = !DILocation(line: 813, column: 3, scope: !2676, inlinedAt: !2689)
!2705 = !DILocation(line: 816, column: 9, scope: !2676, inlinedAt: !2689)
!2706 = !DILocation(line: 791, column: 3, scope: !2667)
!2707 = !DILocation(line: 0, scope: !2676)
!2708 = !DILocation(line: 804, column: 37, scope: !2676)
!2709 = !DILocation(line: 805, column: 21, scope: !2676)
!2710 = !DILocation(line: 807, column: 18, scope: !2676)
!2711 = !DILocation(line: 807, column: 27, scope: !2676)
!2712 = !DILocation(line: 807, column: 24, scope: !2676)
!2713 = !DILocation(line: 808, column: 72, scope: !2676)
!2714 = !DILocation(line: 809, column: 53, scope: !2676)
!2715 = !DILocation(line: 810, column: 49, scope: !2676)
!2716 = !DILocation(line: 811, column: 49, scope: !2676)
!2717 = !DILocation(line: 808, column: 20, scope: !2676)
!2718 = !DILocation(line: 811, column: 62, scope: !2676)
!2719 = !DILocation(line: 812, column: 15, scope: !2676)
!2720 = !DILocation(line: 813, column: 60, scope: !2676)
!2721 = !DILocation(line: 815, column: 32, scope: !2676)
!2722 = !DILocation(line: 815, column: 47, scope: !2676)
!2723 = !DILocation(line: 813, column: 3, scope: !2676)
!2724 = !DILocation(line: 816, column: 9, scope: !2676)
!2725 = !DILocation(line: 817, column: 7, scope: !2676)
!2726 = !DILocation(line: 818, column: 11, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2676, file: !400, line: 817, column: 7)
!2728 = !DILocation(line: 818, column: 5, scope: !2727)
!2729 = !DILocation(line: 819, column: 3, scope: !2676)
!2730 = distinct !DISubprogram(name: "quotearg_free", scope: !400, file: !400, line: 837, type: !355, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2731)
!2731 = !{!2732, !2733}
!2732 = !DILocalVariable(name: "sv", scope: !2730, file: !400, line: 839, type: !456)
!2733 = !DILocalVariable(name: "i", scope: !2734, file: !400, line: 840, type: !6)
!2734 = distinct !DILexicalBlock(scope: !2730, file: !400, line: 840, column: 3)
!2735 = !DILocation(line: 839, column: 24, scope: !2730)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 0, scope: !2734)
!2738 = !DILocation(line: 840, column: 21, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2734, file: !400, line: 840, column: 3)
!2740 = !DILocation(line: 840, column: 3, scope: !2734)
!2741 = !DILocation(line: 842, column: 13, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2730, file: !400, line: 842, column: 7)
!2743 = !{!2744, !626, i64 8}
!2744 = !{!"slotvec", !856, i64 0, !626, i64 8}
!2745 = !DILocation(line: 842, column: 17, scope: !2742)
!2746 = !DILocation(line: 842, column: 7, scope: !2730)
!2747 = !DILocation(line: 841, column: 17, scope: !2739)
!2748 = !DILocation(line: 841, column: 5, scope: !2739)
!2749 = !DILocation(line: 840, column: 32, scope: !2739)
!2750 = distinct !{!2750, !2740, !2751, !688}
!2751 = !DILocation(line: 841, column: 20, scope: !2734)
!2752 = !DILocation(line: 844, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2742, file: !400, line: 843, column: 5)
!2754 = !DILocation(line: 845, column: 21, scope: !2753)
!2755 = !{!2744, !856, i64 0}
!2756 = !DILocation(line: 846, column: 20, scope: !2753)
!2757 = !DILocation(line: 847, column: 5, scope: !2753)
!2758 = !DILocation(line: 848, column: 10, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2730, file: !400, line: 848, column: 7)
!2760 = !DILocation(line: 848, column: 7, scope: !2730)
!2761 = !DILocation(line: 850, column: 13, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2759, file: !400, line: 849, column: 5)
!2763 = !DILocation(line: 850, column: 7, scope: !2762)
!2764 = !DILocation(line: 851, column: 15, scope: !2762)
!2765 = !DILocation(line: 852, column: 5, scope: !2762)
!2766 = !DILocation(line: 853, column: 10, scope: !2730)
!2767 = !DILocation(line: 854, column: 1, scope: !2730)
!2768 = distinct !DISubprogram(name: "quotearg_n", scope: !400, file: !400, line: 919, type: !829, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2769)
!2769 = !{!2770, !2771}
!2770 = !DILocalVariable(name: "n", arg: 1, scope: !2768, file: !400, line: 919, type: !6)
!2771 = !DILocalVariable(name: "arg", arg: 2, scope: !2768, file: !400, line: 919, type: !46)
!2772 = !DILocation(line: 0, scope: !2768)
!2773 = !DILocation(line: 921, column: 10, scope: !2768)
!2774 = !DILocation(line: 921, column: 3, scope: !2768)
!2775 = distinct !DISubprogram(name: "quotearg_n_options", scope: !400, file: !400, line: 866, type: !2776, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!8, !6, !46, !49, !2003}
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2789, !2790, !2792, !2793, !2794}
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2775, file: !400, line: 866, type: !6)
!2780 = !DILocalVariable(name: "arg", arg: 2, scope: !2775, file: !400, line: 866, type: !46)
!2781 = !DILocalVariable(name: "argsize", arg: 3, scope: !2775, file: !400, line: 866, type: !49)
!2782 = !DILocalVariable(name: "options", arg: 4, scope: !2775, file: !400, line: 867, type: !2003)
!2783 = !DILocalVariable(name: "saved_errno", scope: !2775, file: !400, line: 869, type: !6)
!2784 = !DILocalVariable(name: "sv", scope: !2775, file: !400, line: 871, type: !456)
!2785 = !DILocalVariable(name: "nslots_max", scope: !2775, file: !400, line: 873, type: !6)
!2786 = !DILocalVariable(name: "preallocated", scope: !2787, file: !400, line: 879, type: !104)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !400, line: 878, column: 5)
!2788 = distinct !DILexicalBlock(scope: !2775, file: !400, line: 877, column: 7)
!2789 = !DILocalVariable(name: "new_nslots", scope: !2787, file: !400, line: 880, type: !565)
!2790 = !DILocalVariable(name: "size", scope: !2791, file: !400, line: 891, type: !49)
!2791 = distinct !DILexicalBlock(scope: !2775, file: !400, line: 890, column: 3)
!2792 = !DILocalVariable(name: "val", scope: !2791, file: !400, line: 892, type: !8)
!2793 = !DILocalVariable(name: "flags", scope: !2791, file: !400, line: 894, type: !6)
!2794 = !DILocalVariable(name: "qsize", scope: !2791, file: !400, line: 895, type: !49)
!2795 = !DILocation(line: 0, scope: !2775)
!2796 = !DILocation(line: 869, column: 21, scope: !2775)
!2797 = !DILocation(line: 871, column: 24, scope: !2775)
!2798 = !DILocation(line: 874, column: 17, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2775, file: !400, line: 874, column: 7)
!2800 = !DILocation(line: 875, column: 5, scope: !2799)
!2801 = !DILocation(line: 877, column: 7, scope: !2788)
!2802 = !DILocation(line: 877, column: 14, scope: !2788)
!2803 = !DILocation(line: 877, column: 7, scope: !2775)
!2804 = !DILocation(line: 879, column: 31, scope: !2787)
!2805 = !DILocation(line: 0, scope: !2787)
!2806 = !DILocation(line: 880, column: 7, scope: !2787)
!2807 = !DILocation(line: 880, column: 26, scope: !2787)
!2808 = !DILocation(line: 880, column: 13, scope: !2787)
!2809 = !DILocation(line: 882, column: 31, scope: !2787)
!2810 = !DILocation(line: 883, column: 33, scope: !2787)
!2811 = !DILocation(line: 883, column: 42, scope: !2787)
!2812 = !DILocation(line: 883, column: 31, scope: !2787)
!2813 = !DILocation(line: 882, column: 22, scope: !2787)
!2814 = !DILocation(line: 882, column: 15, scope: !2787)
!2815 = !DILocation(line: 884, column: 11, scope: !2787)
!2816 = !DILocation(line: 885, column: 15, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2787, file: !400, line: 884, column: 11)
!2818 = !{i64 0, i64 8, !855, i64 8, i64 8, !625}
!2819 = !DILocation(line: 885, column: 9, scope: !2817)
!2820 = !DILocation(line: 886, column: 20, scope: !2787)
!2821 = !DILocation(line: 886, column: 18, scope: !2787)
!2822 = !DILocation(line: 886, column: 15, scope: !2787)
!2823 = !DILocation(line: 886, column: 32, scope: !2787)
!2824 = !DILocation(line: 886, column: 43, scope: !2787)
!2825 = !DILocation(line: 886, column: 53, scope: !2787)
!2826 = !DILocation(line: 0, scope: !2214, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 886, column: 7, scope: !2787)
!2828 = !DILocation(line: 59, column: 10, scope: !2214, inlinedAt: !2827)
!2829 = !DILocation(line: 887, column: 16, scope: !2787)
!2830 = !DILocation(line: 887, column: 14, scope: !2787)
!2831 = !DILocation(line: 888, column: 5, scope: !2788)
!2832 = !DILocation(line: 888, column: 5, scope: !2787)
!2833 = !DILocation(line: 891, column: 19, scope: !2791)
!2834 = !DILocation(line: 891, column: 25, scope: !2791)
!2835 = !DILocation(line: 0, scope: !2791)
!2836 = !DILocation(line: 892, column: 23, scope: !2791)
!2837 = !DILocation(line: 894, column: 26, scope: !2791)
!2838 = !DILocation(line: 894, column: 32, scope: !2791)
!2839 = !DILocation(line: 896, column: 55, scope: !2791)
!2840 = !DILocation(line: 897, column: 46, scope: !2791)
!2841 = !DILocation(line: 898, column: 55, scope: !2791)
!2842 = !DILocation(line: 899, column: 55, scope: !2791)
!2843 = !DILocation(line: 895, column: 20, scope: !2791)
!2844 = !DILocation(line: 901, column: 14, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2791, file: !400, line: 901, column: 9)
!2846 = !DILocation(line: 901, column: 9, scope: !2791)
!2847 = !DILocation(line: 903, column: 35, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !400, line: 902, column: 7)
!2849 = !DILocation(line: 903, column: 20, scope: !2848)
!2850 = !DILocation(line: 904, column: 17, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2848, file: !400, line: 904, column: 13)
!2852 = !DILocation(line: 904, column: 13, scope: !2848)
!2853 = !DILocation(line: 905, column: 11, scope: !2851)
!2854 = !DILocation(line: 906, column: 27, scope: !2848)
!2855 = !DILocation(line: 906, column: 19, scope: !2848)
!2856 = !DILocation(line: 907, column: 69, scope: !2848)
!2857 = !DILocation(line: 909, column: 44, scope: !2848)
!2858 = !DILocation(line: 910, column: 44, scope: !2848)
!2859 = !DILocation(line: 907, column: 9, scope: !2848)
!2860 = !DILocation(line: 911, column: 7, scope: !2848)
!2861 = !DILocation(line: 913, column: 11, scope: !2791)
!2862 = !DILocation(line: 914, column: 5, scope: !2791)
!2863 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !400, file: !400, line: 925, type: !2864, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!8, !6, !46, !49}
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "n", arg: 1, scope: !2863, file: !400, line: 925, type: !6)
!2868 = !DILocalVariable(name: "arg", arg: 2, scope: !2863, file: !400, line: 925, type: !46)
!2869 = !DILocalVariable(name: "argsize", arg: 3, scope: !2863, file: !400, line: 925, type: !49)
!2870 = !DILocation(line: 0, scope: !2863)
!2871 = !DILocation(line: 927, column: 10, scope: !2863)
!2872 = !DILocation(line: 927, column: 3, scope: !2863)
!2873 = distinct !DISubprogram(name: "quotearg", scope: !400, file: !400, line: 931, type: !833, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2874)
!2874 = !{!2875}
!2875 = !DILocalVariable(name: "arg", arg: 1, scope: !2873, file: !400, line: 931, type: !46)
!2876 = !DILocation(line: 0, scope: !2873)
!2877 = !DILocation(line: 0, scope: !2768, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 933, column: 10, scope: !2873)
!2879 = !DILocation(line: 921, column: 10, scope: !2768, inlinedAt: !2878)
!2880 = !DILocation(line: 933, column: 3, scope: !2873)
!2881 = distinct !DISubprogram(name: "quotearg_mem", scope: !400, file: !400, line: 937, type: !2882, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!8, !46, !49}
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "arg", arg: 1, scope: !2881, file: !400, line: 937, type: !46)
!2886 = !DILocalVariable(name: "argsize", arg: 2, scope: !2881, file: !400, line: 937, type: !49)
!2887 = !DILocation(line: 0, scope: !2881)
!2888 = !DILocation(line: 0, scope: !2863, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 939, column: 10, scope: !2881)
!2890 = !DILocation(line: 927, column: 10, scope: !2863, inlinedAt: !2889)
!2891 = !DILocation(line: 939, column: 3, scope: !2881)
!2892 = distinct !DISubprogram(name: "quotearg_n_style", scope: !400, file: !400, line: 943, type: !2893, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!8, !6, !28, !46}
!2895 = !{!2896, !2897, !2898, !2899}
!2896 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !400, line: 943, type: !6)
!2897 = !DILocalVariable(name: "s", arg: 2, scope: !2892, file: !400, line: 943, type: !28)
!2898 = !DILocalVariable(name: "arg", arg: 3, scope: !2892, file: !400, line: 943, type: !46)
!2899 = !DILocalVariable(name: "o", scope: !2892, file: !400, line: 945, type: !2004)
!2900 = !DILocation(line: 0, scope: !2892)
!2901 = !DILocation(line: 945, column: 3, scope: !2892)
!2902 = !DILocation(line: 945, column: 32, scope: !2892)
!2903 = !{!2904}
!2904 = distinct !{!2904, !2905, !"quoting_options_from_style: argument 0"}
!2905 = distinct !{!2905, !"quoting_options_from_style"}
!2906 = !DILocation(line: 945, column: 36, scope: !2892)
!2907 = !DILocalVariable(name: "style", arg: 1, scope: !2908, file: !400, line: 183, type: !28)
!2908 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !400, file: !400, line: 183, type: !2909, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!417, !28}
!2911 = !{!2907, !2912}
!2912 = !DILocalVariable(name: "o", scope: !2908, file: !400, line: 185, type: !417)
!2913 = !DILocation(line: 0, scope: !2908, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 945, column: 36, scope: !2892)
!2915 = !DILocation(line: 185, column: 26, scope: !2908, inlinedAt: !2914)
!2916 = !DILocation(line: 186, column: 13, scope: !2917, inlinedAt: !2914)
!2917 = distinct !DILexicalBlock(scope: !2908, file: !400, line: 186, column: 7)
!2918 = !DILocation(line: 186, column: 7, scope: !2908, inlinedAt: !2914)
!2919 = !DILocation(line: 187, column: 5, scope: !2917, inlinedAt: !2914)
!2920 = !DILocation(line: 188, column: 5, scope: !2908, inlinedAt: !2914)
!2921 = !DILocation(line: 188, column: 11, scope: !2908, inlinedAt: !2914)
!2922 = !DILocation(line: 946, column: 10, scope: !2892)
!2923 = !DILocation(line: 947, column: 1, scope: !2892)
!2924 = !DILocation(line: 946, column: 3, scope: !2892)
!2925 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !400, file: !400, line: 950, type: !2926, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!8, !6, !28, !46, !49}
!2928 = !{!2929, !2930, !2931, !2932, !2933}
!2929 = !DILocalVariable(name: "n", arg: 1, scope: !2925, file: !400, line: 950, type: !6)
!2930 = !DILocalVariable(name: "s", arg: 2, scope: !2925, file: !400, line: 950, type: !28)
!2931 = !DILocalVariable(name: "arg", arg: 3, scope: !2925, file: !400, line: 951, type: !46)
!2932 = !DILocalVariable(name: "argsize", arg: 4, scope: !2925, file: !400, line: 951, type: !49)
!2933 = !DILocalVariable(name: "o", scope: !2925, file: !400, line: 953, type: !2004)
!2934 = !DILocation(line: 0, scope: !2925)
!2935 = !DILocation(line: 953, column: 3, scope: !2925)
!2936 = !DILocation(line: 953, column: 32, scope: !2925)
!2937 = !{!2938}
!2938 = distinct !{!2938, !2939, !"quoting_options_from_style: argument 0"}
!2939 = distinct !{!2939, !"quoting_options_from_style"}
!2940 = !DILocation(line: 953, column: 36, scope: !2925)
!2941 = !DILocation(line: 0, scope: !2908, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 953, column: 36, scope: !2925)
!2943 = !DILocation(line: 185, column: 26, scope: !2908, inlinedAt: !2942)
!2944 = !DILocation(line: 186, column: 13, scope: !2917, inlinedAt: !2942)
!2945 = !DILocation(line: 186, column: 7, scope: !2908, inlinedAt: !2942)
!2946 = !DILocation(line: 187, column: 5, scope: !2917, inlinedAt: !2942)
!2947 = !DILocation(line: 188, column: 5, scope: !2908, inlinedAt: !2942)
!2948 = !DILocation(line: 188, column: 11, scope: !2908, inlinedAt: !2942)
!2949 = !DILocation(line: 954, column: 10, scope: !2925)
!2950 = !DILocation(line: 955, column: 1, scope: !2925)
!2951 = !DILocation(line: 954, column: 3, scope: !2925)
!2952 = distinct !DISubprogram(name: "quotearg_style", scope: !400, file: !400, line: 958, type: !2953, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!8, !28, !46}
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "s", arg: 1, scope: !2952, file: !400, line: 958, type: !28)
!2957 = !DILocalVariable(name: "arg", arg: 2, scope: !2952, file: !400, line: 958, type: !46)
!2958 = !DILocation(line: 0, scope: !2952)
!2959 = !DILocation(line: 0, scope: !2892, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 960, column: 10, scope: !2952)
!2961 = !DILocation(line: 945, column: 3, scope: !2892, inlinedAt: !2960)
!2962 = !DILocation(line: 945, column: 32, scope: !2892, inlinedAt: !2960)
!2963 = !{!2964}
!2964 = distinct !{!2964, !2965, !"quoting_options_from_style: argument 0"}
!2965 = distinct !{!2965, !"quoting_options_from_style"}
!2966 = !DILocation(line: 945, column: 36, scope: !2892, inlinedAt: !2960)
!2967 = !DILocation(line: 0, scope: !2908, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 945, column: 36, scope: !2892, inlinedAt: !2960)
!2969 = !DILocation(line: 185, column: 26, scope: !2908, inlinedAt: !2968)
!2970 = !DILocation(line: 186, column: 13, scope: !2917, inlinedAt: !2968)
!2971 = !DILocation(line: 186, column: 7, scope: !2908, inlinedAt: !2968)
!2972 = !DILocation(line: 187, column: 5, scope: !2917, inlinedAt: !2968)
!2973 = !DILocation(line: 188, column: 5, scope: !2908, inlinedAt: !2968)
!2974 = !DILocation(line: 188, column: 11, scope: !2908, inlinedAt: !2968)
!2975 = !DILocation(line: 946, column: 10, scope: !2892, inlinedAt: !2960)
!2976 = !DILocation(line: 947, column: 1, scope: !2892, inlinedAt: !2960)
!2977 = !DILocation(line: 960, column: 3, scope: !2952)
!2978 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !400, file: !400, line: 964, type: !2979, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!8, !28, !46, !49}
!2981 = !{!2982, !2983, !2984}
!2982 = !DILocalVariable(name: "s", arg: 1, scope: !2978, file: !400, line: 964, type: !28)
!2983 = !DILocalVariable(name: "arg", arg: 2, scope: !2978, file: !400, line: 964, type: !46)
!2984 = !DILocalVariable(name: "argsize", arg: 3, scope: !2978, file: !400, line: 964, type: !49)
!2985 = !DILocation(line: 0, scope: !2978)
!2986 = !DILocation(line: 0, scope: !2925, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 966, column: 10, scope: !2978)
!2988 = !DILocation(line: 953, column: 3, scope: !2925, inlinedAt: !2987)
!2989 = !DILocation(line: 953, column: 32, scope: !2925, inlinedAt: !2987)
!2990 = !{!2991}
!2991 = distinct !{!2991, !2992, !"quoting_options_from_style: argument 0"}
!2992 = distinct !{!2992, !"quoting_options_from_style"}
!2993 = !DILocation(line: 953, column: 36, scope: !2925, inlinedAt: !2987)
!2994 = !DILocation(line: 0, scope: !2908, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 953, column: 36, scope: !2925, inlinedAt: !2987)
!2996 = !DILocation(line: 185, column: 26, scope: !2908, inlinedAt: !2995)
!2997 = !DILocation(line: 186, column: 13, scope: !2917, inlinedAt: !2995)
!2998 = !DILocation(line: 186, column: 7, scope: !2908, inlinedAt: !2995)
!2999 = !DILocation(line: 187, column: 5, scope: !2917, inlinedAt: !2995)
!3000 = !DILocation(line: 188, column: 5, scope: !2908, inlinedAt: !2995)
!3001 = !DILocation(line: 188, column: 11, scope: !2908, inlinedAt: !2995)
!3002 = !DILocation(line: 954, column: 10, scope: !2925, inlinedAt: !2987)
!3003 = !DILocation(line: 955, column: 1, scope: !2925, inlinedAt: !2987)
!3004 = !DILocation(line: 966, column: 3, scope: !2978)
!3005 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !400, file: !400, line: 970, type: !3006, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!8, !46, !49, !9}
!3008 = !{!3009, !3010, !3011, !3012}
!3009 = !DILocalVariable(name: "arg", arg: 1, scope: !3005, file: !400, line: 970, type: !46)
!3010 = !DILocalVariable(name: "argsize", arg: 2, scope: !3005, file: !400, line: 970, type: !49)
!3011 = !DILocalVariable(name: "ch", arg: 3, scope: !3005, file: !400, line: 970, type: !9)
!3012 = !DILocalVariable(name: "options", scope: !3005, file: !400, line: 972, type: !417)
!3013 = !DILocation(line: 0, scope: !3005)
!3014 = !DILocation(line: 972, column: 3, scope: !3005)
!3015 = !DILocation(line: 972, column: 26, scope: !3005)
!3016 = !DILocation(line: 973, column: 13, scope: !3005)
!3017 = !{i64 0, i64 4, !730, i64 4, i64 4, !721, i64 8, i64 32, !730, i64 40, i64 8, !625, i64 48, i64 8, !625}
!3018 = !DILocation(line: 0, scope: !2024, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 974, column: 3, scope: !3005)
!3020 = !DILocation(line: 147, column: 62, scope: !2024, inlinedAt: !3019)
!3021 = !DILocation(line: 147, column: 57, scope: !2024, inlinedAt: !3019)
!3022 = !DILocation(line: 148, column: 15, scope: !2024, inlinedAt: !3019)
!3023 = !DILocation(line: 149, column: 21, scope: !2024, inlinedAt: !3019)
!3024 = !DILocation(line: 149, column: 24, scope: !2024, inlinedAt: !3019)
!3025 = !DILocation(line: 149, column: 34, scope: !2024, inlinedAt: !3019)
!3026 = !DILocation(line: 150, column: 19, scope: !2024, inlinedAt: !3019)
!3027 = !DILocation(line: 150, column: 24, scope: !2024, inlinedAt: !3019)
!3028 = !DILocation(line: 150, column: 6, scope: !2024, inlinedAt: !3019)
!3029 = !DILocation(line: 975, column: 10, scope: !3005)
!3030 = !DILocation(line: 976, column: 1, scope: !3005)
!3031 = !DILocation(line: 975, column: 3, scope: !3005)
!3032 = distinct !DISubprogram(name: "quotearg_char", scope: !400, file: !400, line: 979, type: !3033, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!8, !46, !9}
!3035 = !{!3036, !3037}
!3036 = !DILocalVariable(name: "arg", arg: 1, scope: !3032, file: !400, line: 979, type: !46)
!3037 = !DILocalVariable(name: "ch", arg: 2, scope: !3032, file: !400, line: 979, type: !9)
!3038 = !DILocation(line: 0, scope: !3032)
!3039 = !DILocation(line: 0, scope: !3005, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 981, column: 10, scope: !3032)
!3041 = !DILocation(line: 972, column: 3, scope: !3005, inlinedAt: !3040)
!3042 = !DILocation(line: 972, column: 26, scope: !3005, inlinedAt: !3040)
!3043 = !DILocation(line: 973, column: 13, scope: !3005, inlinedAt: !3040)
!3044 = !DILocation(line: 0, scope: !2024, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 974, column: 3, scope: !3005, inlinedAt: !3040)
!3046 = !DILocation(line: 147, column: 62, scope: !2024, inlinedAt: !3045)
!3047 = !DILocation(line: 147, column: 57, scope: !2024, inlinedAt: !3045)
!3048 = !DILocation(line: 148, column: 15, scope: !2024, inlinedAt: !3045)
!3049 = !DILocation(line: 149, column: 21, scope: !2024, inlinedAt: !3045)
!3050 = !DILocation(line: 149, column: 24, scope: !2024, inlinedAt: !3045)
!3051 = !DILocation(line: 149, column: 34, scope: !2024, inlinedAt: !3045)
!3052 = !DILocation(line: 150, column: 19, scope: !2024, inlinedAt: !3045)
!3053 = !DILocation(line: 150, column: 24, scope: !2024, inlinedAt: !3045)
!3054 = !DILocation(line: 150, column: 6, scope: !2024, inlinedAt: !3045)
!3055 = !DILocation(line: 975, column: 10, scope: !3005, inlinedAt: !3040)
!3056 = !DILocation(line: 976, column: 1, scope: !3005, inlinedAt: !3040)
!3057 = !DILocation(line: 981, column: 3, scope: !3032)
!3058 = distinct !DISubprogram(name: "quotearg_colon", scope: !400, file: !400, line: 985, type: !833, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3059)
!3059 = !{!3060}
!3060 = !DILocalVariable(name: "arg", arg: 1, scope: !3058, file: !400, line: 985, type: !46)
!3061 = !DILocation(line: 0, scope: !3058)
!3062 = !DILocation(line: 0, scope: !3032, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 987, column: 10, scope: !3058)
!3064 = !DILocation(line: 0, scope: !3005, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 981, column: 10, scope: !3032, inlinedAt: !3063)
!3066 = !DILocation(line: 972, column: 3, scope: !3005, inlinedAt: !3065)
!3067 = !DILocation(line: 972, column: 26, scope: !3005, inlinedAt: !3065)
!3068 = !DILocation(line: 973, column: 13, scope: !3005, inlinedAt: !3065)
!3069 = !DILocation(line: 0, scope: !2024, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 974, column: 3, scope: !3005, inlinedAt: !3065)
!3071 = !DILocation(line: 147, column: 57, scope: !2024, inlinedAt: !3070)
!3072 = !DILocation(line: 149, column: 21, scope: !2024, inlinedAt: !3070)
!3073 = !DILocation(line: 150, column: 6, scope: !2024, inlinedAt: !3070)
!3074 = !DILocation(line: 975, column: 10, scope: !3005, inlinedAt: !3065)
!3075 = !DILocation(line: 976, column: 1, scope: !3005, inlinedAt: !3065)
!3076 = !DILocation(line: 987, column: 3, scope: !3058)
!3077 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !400, file: !400, line: 991, type: !2882, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3078)
!3078 = !{!3079, !3080}
!3079 = !DILocalVariable(name: "arg", arg: 1, scope: !3077, file: !400, line: 991, type: !46)
!3080 = !DILocalVariable(name: "argsize", arg: 2, scope: !3077, file: !400, line: 991, type: !49)
!3081 = !DILocation(line: 0, scope: !3077)
!3082 = !DILocation(line: 0, scope: !3005, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 993, column: 10, scope: !3077)
!3084 = !DILocation(line: 972, column: 3, scope: !3005, inlinedAt: !3083)
!3085 = !DILocation(line: 972, column: 26, scope: !3005, inlinedAt: !3083)
!3086 = !DILocation(line: 973, column: 13, scope: !3005, inlinedAt: !3083)
!3087 = !DILocation(line: 0, scope: !2024, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 974, column: 3, scope: !3005, inlinedAt: !3083)
!3089 = !DILocation(line: 147, column: 57, scope: !2024, inlinedAt: !3088)
!3090 = !DILocation(line: 149, column: 21, scope: !2024, inlinedAt: !3088)
!3091 = !DILocation(line: 150, column: 6, scope: !2024, inlinedAt: !3088)
!3092 = !DILocation(line: 975, column: 10, scope: !3005, inlinedAt: !3083)
!3093 = !DILocation(line: 976, column: 1, scope: !3005, inlinedAt: !3083)
!3094 = !DILocation(line: 993, column: 3, scope: !3077)
!3095 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !400, file: !400, line: 997, type: !2893, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3096)
!3096 = !{!3097, !3098, !3099, !3100}
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3095, file: !400, line: 997, type: !6)
!3098 = !DILocalVariable(name: "s", arg: 2, scope: !3095, file: !400, line: 997, type: !28)
!3099 = !DILocalVariable(name: "arg", arg: 3, scope: !3095, file: !400, line: 997, type: !46)
!3100 = !DILocalVariable(name: "options", scope: !3095, file: !400, line: 999, type: !417)
!3101 = !DILocation(line: 0, scope: !3095)
!3102 = !DILocation(line: 999, column: 3, scope: !3095)
!3103 = !DILocation(line: 999, column: 26, scope: !3095)
!3104 = !DILocation(line: 0, scope: !2908, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1000, column: 13, scope: !3095)
!3106 = !DILocation(line: 186, column: 13, scope: !2917, inlinedAt: !3105)
!3107 = !DILocation(line: 186, column: 7, scope: !2908, inlinedAt: !3105)
!3108 = !DILocation(line: 187, column: 5, scope: !2917, inlinedAt: !3105)
!3109 = !{!3110}
!3110 = distinct !{!3110, !3111, !"quoting_options_from_style: argument 0"}
!3111 = distinct !{!3111, !"quoting_options_from_style"}
!3112 = !DILocation(line: 1000, column: 13, scope: !3095)
!3113 = !DILocation(line: 0, scope: !2024, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 1001, column: 3, scope: !3095)
!3115 = !DILocation(line: 147, column: 57, scope: !2024, inlinedAt: !3114)
!3116 = !DILocation(line: 149, column: 21, scope: !2024, inlinedAt: !3114)
!3117 = !DILocation(line: 150, column: 6, scope: !2024, inlinedAt: !3114)
!3118 = !DILocation(line: 1002, column: 10, scope: !3095)
!3119 = !DILocation(line: 1003, column: 1, scope: !3095)
!3120 = !DILocation(line: 1002, column: 3, scope: !3095)
!3121 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !400, file: !400, line: 1006, type: !3122, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!8, !6, !46, !46, !46}
!3124 = !{!3125, !3126, !3127, !3128}
!3125 = !DILocalVariable(name: "n", arg: 1, scope: !3121, file: !400, line: 1006, type: !6)
!3126 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3121, file: !400, line: 1006, type: !46)
!3127 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3121, file: !400, line: 1007, type: !46)
!3128 = !DILocalVariable(name: "arg", arg: 4, scope: !3121, file: !400, line: 1007, type: !46)
!3129 = !DILocation(line: 0, scope: !3121)
!3130 = !DILocalVariable(name: "n", arg: 1, scope: !3131, file: !400, line: 1014, type: !6)
!3131 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !400, file: !400, line: 1014, type: !3132, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!8, !6, !46, !46, !46, !49}
!3134 = !{!3130, !3135, !3136, !3137, !3138, !3139}
!3135 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3131, file: !400, line: 1014, type: !46)
!3136 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3131, file: !400, line: 1015, type: !46)
!3137 = !DILocalVariable(name: "arg", arg: 4, scope: !3131, file: !400, line: 1016, type: !46)
!3138 = !DILocalVariable(name: "argsize", arg: 5, scope: !3131, file: !400, line: 1016, type: !49)
!3139 = !DILocalVariable(name: "o", scope: !3131, file: !400, line: 1018, type: !417)
!3140 = !DILocation(line: 0, scope: !3131, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 1009, column: 10, scope: !3121)
!3142 = !DILocation(line: 1018, column: 3, scope: !3131, inlinedAt: !3141)
!3143 = !DILocation(line: 1018, column: 26, scope: !3131, inlinedAt: !3141)
!3144 = !DILocation(line: 1018, column: 30, scope: !3131, inlinedAt: !3141)
!3145 = !DILocation(line: 0, scope: !2064, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 1019, column: 3, scope: !3131, inlinedAt: !3141)
!3147 = !DILocation(line: 174, column: 6, scope: !2064, inlinedAt: !3146)
!3148 = !DILocation(line: 174, column: 12, scope: !2064, inlinedAt: !3146)
!3149 = !DILocation(line: 175, column: 8, scope: !2078, inlinedAt: !3146)
!3150 = !DILocation(line: 175, column: 19, scope: !2078, inlinedAt: !3146)
!3151 = !DILocation(line: 176, column: 5, scope: !2078, inlinedAt: !3146)
!3152 = !DILocation(line: 177, column: 6, scope: !2064, inlinedAt: !3146)
!3153 = !DILocation(line: 177, column: 17, scope: !2064, inlinedAt: !3146)
!3154 = !DILocation(line: 178, column: 6, scope: !2064, inlinedAt: !3146)
!3155 = !DILocation(line: 178, column: 18, scope: !2064, inlinedAt: !3146)
!3156 = !DILocation(line: 1020, column: 10, scope: !3131, inlinedAt: !3141)
!3157 = !DILocation(line: 1021, column: 1, scope: !3131, inlinedAt: !3141)
!3158 = !DILocation(line: 1009, column: 3, scope: !3121)
!3159 = !DILocation(line: 0, scope: !3131)
!3160 = !DILocation(line: 1018, column: 3, scope: !3131)
!3161 = !DILocation(line: 1018, column: 26, scope: !3131)
!3162 = !DILocation(line: 1018, column: 30, scope: !3131)
!3163 = !DILocation(line: 0, scope: !2064, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 1019, column: 3, scope: !3131)
!3165 = !DILocation(line: 174, column: 6, scope: !2064, inlinedAt: !3164)
!3166 = !DILocation(line: 174, column: 12, scope: !2064, inlinedAt: !3164)
!3167 = !DILocation(line: 175, column: 8, scope: !2078, inlinedAt: !3164)
!3168 = !DILocation(line: 175, column: 19, scope: !2078, inlinedAt: !3164)
!3169 = !DILocation(line: 176, column: 5, scope: !2078, inlinedAt: !3164)
!3170 = !DILocation(line: 177, column: 6, scope: !2064, inlinedAt: !3164)
!3171 = !DILocation(line: 177, column: 17, scope: !2064, inlinedAt: !3164)
!3172 = !DILocation(line: 178, column: 6, scope: !2064, inlinedAt: !3164)
!3173 = !DILocation(line: 178, column: 18, scope: !2064, inlinedAt: !3164)
!3174 = !DILocation(line: 1020, column: 10, scope: !3131)
!3175 = !DILocation(line: 1021, column: 1, scope: !3131)
!3176 = !DILocation(line: 1020, column: 3, scope: !3131)
!3177 = distinct !DISubprogram(name: "quotearg_custom", scope: !400, file: !400, line: 1024, type: !3178, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!8, !46, !46, !46}
!3180 = !{!3181, !3182, !3183}
!3181 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3177, file: !400, line: 1024, type: !46)
!3182 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3177, file: !400, line: 1024, type: !46)
!3183 = !DILocalVariable(name: "arg", arg: 3, scope: !3177, file: !400, line: 1025, type: !46)
!3184 = !DILocation(line: 0, scope: !3177)
!3185 = !DILocation(line: 0, scope: !3121, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 1027, column: 10, scope: !3177)
!3187 = !DILocation(line: 0, scope: !3131, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1009, column: 10, scope: !3121, inlinedAt: !3186)
!3189 = !DILocation(line: 1018, column: 3, scope: !3131, inlinedAt: !3188)
!3190 = !DILocation(line: 1018, column: 26, scope: !3131, inlinedAt: !3188)
!3191 = !DILocation(line: 1018, column: 30, scope: !3131, inlinedAt: !3188)
!3192 = !DILocation(line: 0, scope: !2064, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 1019, column: 3, scope: !3131, inlinedAt: !3188)
!3194 = !DILocation(line: 174, column: 6, scope: !2064, inlinedAt: !3193)
!3195 = !DILocation(line: 174, column: 12, scope: !2064, inlinedAt: !3193)
!3196 = !DILocation(line: 175, column: 8, scope: !2078, inlinedAt: !3193)
!3197 = !DILocation(line: 175, column: 19, scope: !2078, inlinedAt: !3193)
!3198 = !DILocation(line: 176, column: 5, scope: !2078, inlinedAt: !3193)
!3199 = !DILocation(line: 177, column: 6, scope: !2064, inlinedAt: !3193)
!3200 = !DILocation(line: 177, column: 17, scope: !2064, inlinedAt: !3193)
!3201 = !DILocation(line: 178, column: 6, scope: !2064, inlinedAt: !3193)
!3202 = !DILocation(line: 178, column: 18, scope: !2064, inlinedAt: !3193)
!3203 = !DILocation(line: 1020, column: 10, scope: !3131, inlinedAt: !3188)
!3204 = !DILocation(line: 1021, column: 1, scope: !3131, inlinedAt: !3188)
!3205 = !DILocation(line: 1027, column: 3, scope: !3177)
!3206 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !400, file: !400, line: 1031, type: !3207, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!8, !46, !46, !46, !49}
!3209 = !{!3210, !3211, !3212, !3213}
!3210 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3206, file: !400, line: 1031, type: !46)
!3211 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3206, file: !400, line: 1031, type: !46)
!3212 = !DILocalVariable(name: "arg", arg: 3, scope: !3206, file: !400, line: 1032, type: !46)
!3213 = !DILocalVariable(name: "argsize", arg: 4, scope: !3206, file: !400, line: 1032, type: !49)
!3214 = !DILocation(line: 0, scope: !3206)
!3215 = !DILocation(line: 0, scope: !3131, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 1034, column: 10, scope: !3206)
!3217 = !DILocation(line: 1018, column: 3, scope: !3131, inlinedAt: !3216)
!3218 = !DILocation(line: 1018, column: 26, scope: !3131, inlinedAt: !3216)
!3219 = !DILocation(line: 1018, column: 30, scope: !3131, inlinedAt: !3216)
!3220 = !DILocation(line: 0, scope: !2064, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 1019, column: 3, scope: !3131, inlinedAt: !3216)
!3222 = !DILocation(line: 174, column: 6, scope: !2064, inlinedAt: !3221)
!3223 = !DILocation(line: 174, column: 12, scope: !2064, inlinedAt: !3221)
!3224 = !DILocation(line: 175, column: 8, scope: !2078, inlinedAt: !3221)
!3225 = !DILocation(line: 175, column: 19, scope: !2078, inlinedAt: !3221)
!3226 = !DILocation(line: 176, column: 5, scope: !2078, inlinedAt: !3221)
!3227 = !DILocation(line: 177, column: 6, scope: !2064, inlinedAt: !3221)
!3228 = !DILocation(line: 177, column: 17, scope: !2064, inlinedAt: !3221)
!3229 = !DILocation(line: 178, column: 6, scope: !2064, inlinedAt: !3221)
!3230 = !DILocation(line: 178, column: 18, scope: !2064, inlinedAt: !3221)
!3231 = !DILocation(line: 1020, column: 10, scope: !3131, inlinedAt: !3216)
!3232 = !DILocation(line: 1021, column: 1, scope: !3131, inlinedAt: !3216)
!3233 = !DILocation(line: 1034, column: 3, scope: !3206)
!3234 = distinct !DISubprogram(name: "quote_n_mem", scope: !400, file: !400, line: 1049, type: !3235, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!46, !6, !46, !49}
!3237 = !{!3238, !3239, !3240}
!3238 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !400, line: 1049, type: !6)
!3239 = !DILocalVariable(name: "arg", arg: 2, scope: !3234, file: !400, line: 1049, type: !46)
!3240 = !DILocalVariable(name: "argsize", arg: 3, scope: !3234, file: !400, line: 1049, type: !49)
!3241 = !DILocation(line: 0, scope: !3234)
!3242 = !DILocation(line: 1051, column: 10, scope: !3234)
!3243 = !DILocation(line: 1051, column: 3, scope: !3234)
!3244 = distinct !DISubprogram(name: "quote_mem", scope: !400, file: !400, line: 1055, type: !3245, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!46, !46, !49}
!3247 = !{!3248, !3249}
!3248 = !DILocalVariable(name: "arg", arg: 1, scope: !3244, file: !400, line: 1055, type: !46)
!3249 = !DILocalVariable(name: "argsize", arg: 2, scope: !3244, file: !400, line: 1055, type: !49)
!3250 = !DILocation(line: 0, scope: !3244)
!3251 = !DILocation(line: 0, scope: !3234, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 1057, column: 10, scope: !3244)
!3253 = !DILocation(line: 1051, column: 10, scope: !3234, inlinedAt: !3252)
!3254 = !DILocation(line: 1057, column: 3, scope: !3244)
!3255 = distinct !DISubprogram(name: "quote_n", scope: !400, file: !400, line: 1061, type: !3256, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!46, !6, !46}
!3258 = !{!3259, !3260}
!3259 = !DILocalVariable(name: "n", arg: 1, scope: !3255, file: !400, line: 1061, type: !6)
!3260 = !DILocalVariable(name: "arg", arg: 2, scope: !3255, file: !400, line: 1061, type: !46)
!3261 = !DILocation(line: 0, scope: !3255)
!3262 = !DILocation(line: 0, scope: !3234, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 1063, column: 10, scope: !3255)
!3264 = !DILocation(line: 1051, column: 10, scope: !3234, inlinedAt: !3263)
!3265 = !DILocation(line: 1063, column: 3, scope: !3255)
!3266 = distinct !DISubprogram(name: "quote", scope: !400, file: !400, line: 1067, type: !3267, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!46, !46}
!3269 = !{!3270}
!3270 = !DILocalVariable(name: "arg", arg: 1, scope: !3266, file: !400, line: 1067, type: !46)
!3271 = !DILocation(line: 0, scope: !3266)
!3272 = !DILocation(line: 0, scope: !3255, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 1069, column: 10, scope: !3266)
!3274 = !DILocation(line: 0, scope: !3234, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 1063, column: 10, scope: !3255, inlinedAt: !3273)
!3276 = !DILocation(line: 1051, column: 10, scope: !3234, inlinedAt: !3275)
!3277 = !DILocation(line: 1069, column: 3, scope: !3266)
!3278 = distinct !DISubprogram(name: "safe_read", scope: !525, file: !525, line: 56, type: !3279, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3282)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!567, !6, !3281, !565}
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !525, line: 49, baseType: !43)
!3282 = !{!3283, !3284, !3285, !3286}
!3283 = !DILocalVariable(name: "fd", arg: 1, scope: !3278, file: !525, line: 56, type: !6)
!3284 = !DILocalVariable(name: "buf", arg: 2, scope: !3278, file: !525, line: 56, type: !3281)
!3285 = !DILocalVariable(name: "count", arg: 3, scope: !3278, file: !525, line: 56, type: !565)
!3286 = !DILocalVariable(name: "result", scope: !3287, file: !525, line: 60, type: !3290)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !525, line: 59, column: 5)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !525, line: 58, column: 3)
!3289 = distinct !DILexicalBlock(scope: !3278, file: !525, line: 58, column: 3)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3291, line: 108, baseType: !1008)
!3291 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3292 = !DILocation(line: 0, scope: !3278)
!3293 = !DILocation(line: 58, column: 3, scope: !3278)
!3294 = !DILocation(line: 60, column: 24, scope: !3287)
!3295 = !DILocation(line: 0, scope: !3287)
!3296 = !DILocation(line: 62, column: 13, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3287, file: !525, line: 62, column: 11)
!3298 = !DILocation(line: 62, column: 11, scope: !3287)
!3299 = !DILocation(line: 64, column: 16, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3297, file: !525, line: 64, column: 16)
!3301 = !DILocation(line: 64, column: 16, scope: !3297)
!3302 = distinct !{!3302, !3303, !3304}
!3303 = !DILocation(line: 58, column: 3, scope: !3289)
!3304 = !DILocation(line: 70, column: 5, scope: !3289)
!3305 = !DILocation(line: 66, column: 22, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3300, file: !525, line: 66, column: 16)
!3307 = !DILocation(line: 66, column: 32, scope: !3306)
!3308 = !DILocation(line: 0, scope: !3288)
!3309 = !DILocation(line: 71, column: 1, scope: !3278)
!3310 = distinct !DISubprogram(name: "mkstemp_safer", scope: !533, file: !533, line: 31, type: !3311, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!6, !8}
!3313 = !{!3314}
!3314 = !DILocalVariable(name: "templ", arg: 1, scope: !3310, file: !533, line: 31, type: !8)
!3315 = !DILocation(line: 0, scope: !3310)
!3316 = !DILocation(line: 33, column: 20, scope: !3310)
!3317 = !DILocation(line: 33, column: 10, scope: !3310)
!3318 = !DILocation(line: 33, column: 3, scope: !3310)
!3319 = !DISubprogram(name: "mkstemp", scope: !832, file: !832, line: 695, type: !3311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!3320 = distinct !DISubprogram(name: "mkostemp_safer", scope: !533, file: !533, line: 40, type: !3321, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!6, !8, !6}
!3323 = !{!3324, !3325}
!3324 = !DILocalVariable(name: "templ", arg: 1, scope: !3320, file: !533, line: 40, type: !8)
!3325 = !DILocalVariable(name: "flags", arg: 2, scope: !3320, file: !533, line: 40, type: !6)
!3326 = !DILocation(line: 0, scope: !3320)
!3327 = !DILocation(line: 42, column: 25, scope: !3320)
!3328 = !DILocation(line: 42, column: 10, scope: !3320)
!3329 = !DILocation(line: 42, column: 3, scope: !3320)
!3330 = !DISubprogram(name: "mkostemp", scope: !832, file: !832, line: 749, type: !3321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!3331 = distinct !DISubprogram(name: "path_search", scope: !535, file: !535, line: 92, type: !3332, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!6, !8, !49, !46, !46, !104}
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3344, !3345}
!3335 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3331, file: !535, line: 92, type: !8)
!3336 = !DILocalVariable(name: "tmpl_len", arg: 2, scope: !3331, file: !535, line: 92, type: !49)
!3337 = !DILocalVariable(name: "dir", arg: 3, scope: !3331, file: !535, line: 92, type: !46)
!3338 = !DILocalVariable(name: "pfx", arg: 4, scope: !3331, file: !535, line: 92, type: !46)
!3339 = !DILocalVariable(name: "try_tmpdir", arg: 5, scope: !3331, file: !535, line: 93, type: !104)
!3340 = !DILocalVariable(name: "plen", scope: !3331, file: !535, line: 95, type: !49)
!3341 = !DILocalVariable(name: "d", scope: !3342, file: !535, line: 110, type: !46)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !535, line: 109, column: 5)
!3343 = distinct !DILexicalBlock(scope: !3331, file: !535, line: 108, column: 7)
!3344 = !DILocalVariable(name: "dlen", scope: !3331, file: !535, line: 143, type: !49)
!3345 = !DILocalVariable(name: "add_slash", scope: !3331, file: !535, line: 145, type: !104)
!3346 = !DILocation(line: 0, scope: !3331)
!3347 = !DILocation(line: 96, column: 8, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3331, file: !535, line: 96, column: 7)
!3349 = !DILocation(line: 96, column: 12, scope: !3348)
!3350 = !DILocation(line: 96, column: 16, scope: !3348)
!3351 = !DILocation(line: 96, column: 7, scope: !3331)
!3352 = !DILocation(line: 103, column: 14, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3348, file: !535, line: 102, column: 5)
!3354 = !DILocation(line: 104, column: 11, scope: !3353)
!3355 = !DILocation(line: 0, scope: !3348)
!3356 = !DILocation(line: 108, column: 7, scope: !3331)
!3357 = !DILocation(line: 110, column: 23, scope: !3342)
!3358 = !DILocation(line: 0, scope: !3342)
!3359 = !DILocation(line: 111, column: 13, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3342, file: !535, line: 111, column: 11)
!3361 = !DILocation(line: 111, column: 21, scope: !3360)
!3362 = !DILocalVariable(name: "dir", arg: 1, scope: !3363, file: !535, line: 79, type: !46)
!3363 = distinct !DISubprogram(name: "direxists", scope: !535, file: !535, line: 79, type: !944, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !3364)
!3364 = !{!3362, !3365}
!3365 = !DILocalVariable(name: "buf", scope: !3363, file: !535, line: 81, type: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3367, line: 44, size: 1024, elements: !3368)
!3367 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3368 = !{!3369, !3371, !3373, !3375, !3377, !3379, !3381, !3382, !3383, !3384, !3386, !3387, !3389, !3397, !3398, !3399}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3366, file: !3367, line: 46, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !144, line: 145, baseType: !51)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3366, file: !3367, line: 47, baseType: !3372, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !144, line: 148, baseType: !51)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3366, file: !3367, line: 48, baseType: !3374, size: 32, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !144, line: 150, baseType: !14)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3366, file: !3367, line: 49, baseType: !3376, size: 32, offset: 160)
!3376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !144, line: 151, baseType: !14)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3366, file: !3367, line: 50, baseType: !3378, size: 32, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !144, line: 146, baseType: !14)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3366, file: !3367, line: 51, baseType: !3380, size: 32, offset: 224)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !144, line: 147, baseType: !14)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3366, file: !3367, line: 52, baseType: !3370, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3366, file: !3367, line: 53, baseType: !3370, size: 64, offset: 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3366, file: !3367, line: 54, baseType: !143, size: 64, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3366, file: !3367, line: 55, baseType: !3385, size: 32, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !144, line: 175, baseType: !6)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3366, file: !3367, line: 56, baseType: !6, size: 32, offset: 480)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3366, file: !3367, line: 57, baseType: !3388, size: 64, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !144, line: 180, baseType: !145)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3366, file: !3367, line: 65, baseType: !3390, size: 128, offset: 576)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3391, line: 11, size: 128, elements: !3392)
!3391 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3392 = !{!3393, !3395}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3390, file: !3391, line: 16, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !144, line: 160, baseType: !145)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3390, file: !3391, line: 21, baseType: !3396, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !144, line: 197, baseType: !145)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3366, file: !3367, line: 66, baseType: !3390, size: 128, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3366, file: !3367, line: 67, baseType: !3390, size: 128, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3366, file: !3367, line: 79, baseType: !3400, size: 64, offset: 960)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !242)
!3401 = !DILocation(line: 0, scope: !3363, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 111, column: 24, scope: !3360)
!3403 = !DILocation(line: 81, column: 3, scope: !3363, inlinedAt: !3402)
!3404 = !DILocation(line: 81, column: 17, scope: !3363, inlinedAt: !3402)
!3405 = !DILocation(line: 82, column: 10, scope: !3363, inlinedAt: !3402)
!3406 = !DILocation(line: 82, column: 43, scope: !3363, inlinedAt: !3402)
!3407 = !DILocation(line: 82, column: 48, scope: !3363, inlinedAt: !3402)
!3408 = !DILocation(line: 83, column: 1, scope: !3363, inlinedAt: !3402)
!3409 = !DILocation(line: 111, column: 11, scope: !3342)
!3410 = !DILocation(line: 113, column: 20, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3360, file: !535, line: 113, column: 16)
!3412 = !DILocation(line: 113, column: 28, scope: !3411)
!3413 = !DILocation(line: 0, scope: !3363, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 113, column: 31, scope: !3411)
!3415 = !DILocation(line: 81, column: 3, scope: !3363, inlinedAt: !3414)
!3416 = !DILocation(line: 81, column: 17, scope: !3363, inlinedAt: !3414)
!3417 = !DILocation(line: 82, column: 10, scope: !3363, inlinedAt: !3414)
!3418 = !DILocation(line: 82, column: 43, scope: !3363, inlinedAt: !3414)
!3419 = !DILocation(line: 82, column: 48, scope: !3363, inlinedAt: !3414)
!3420 = !DILocation(line: 83, column: 1, scope: !3363, inlinedAt: !3414)
!3421 = !DILocation(line: 113, column: 16, scope: !3360)
!3422 = !DILocation(line: 118, column: 11, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3331, file: !535, line: 118, column: 7)
!3424 = !DILocation(line: 118, column: 7, scope: !3331)
!3425 = !DILocation(line: 0, scope: !3363, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 132, column: 11, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !535, line: 132, column: 11)
!3428 = distinct !DILexicalBlock(scope: !3423, file: !535, line: 119, column: 5)
!3429 = !DILocation(line: 81, column: 3, scope: !3363, inlinedAt: !3426)
!3430 = !DILocation(line: 81, column: 17, scope: !3363, inlinedAt: !3426)
!3431 = !DILocation(line: 82, column: 10, scope: !3363, inlinedAt: !3426)
!3432 = !DILocation(line: 82, column: 43, scope: !3363, inlinedAt: !3426)
!3433 = !DILocation(line: 82, column: 48, scope: !3363, inlinedAt: !3426)
!3434 = !DILocation(line: 83, column: 1, scope: !3363, inlinedAt: !3426)
!3435 = !DILocation(line: 132, column: 11, scope: !3428)
!3436 = !DILocation(line: 138, column: 11, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !535, line: 137, column: 9)
!3438 = distinct !DILexicalBlock(scope: !3427, file: !535, line: 134, column: 16)
!3439 = !DILocation(line: 139, column: 11, scope: !3437)
!3440 = !DILocation(line: 143, column: 17, scope: !3331)
!3441 = !DILocation(line: 149, column: 20, scope: !3331)
!3442 = !DILocation(line: 149, column: 25, scope: !3331)
!3443 = !DILocation(line: 149, column: 29, scope: !3331)
!3444 = !DILocation(line: 153, column: 25, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3331, file: !535, line: 153, column: 7)
!3446 = !DILocation(line: 153, column: 23, scope: !3445)
!3447 = !DILocation(line: 153, column: 35, scope: !3445)
!3448 = !DILocation(line: 153, column: 46, scope: !3445)
!3449 = !DILocation(line: 153, column: 16, scope: !3445)
!3450 = !DILocation(line: 153, column: 7, scope: !3331)
!3451 = !DILocation(line: 155, column: 7, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3445, file: !535, line: 154, column: 5)
!3453 = !DILocation(line: 156, column: 7, scope: !3452)
!3454 = !DILocalVariable(name: "__dest", arg: 1, scope: !3455, file: !920, line: 26, type: !923)
!3455 = distinct !DISubprogram(name: "memcpy", scope: !920, file: !920, line: 26, type: !921, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !3456)
!3456 = !{!3454, !3457, !3458}
!3457 = !DILocalVariable(name: "__src", arg: 2, scope: !3455, file: !920, line: 26, type: !838)
!3458 = !DILocalVariable(name: "__len", arg: 3, scope: !3455, file: !920, line: 26, type: !49)
!3459 = !DILocation(line: 0, scope: !3455, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 159, column: 3, scope: !3331)
!3461 = !DILocation(line: 29, column: 10, scope: !3455, inlinedAt: !3460)
!3462 = !DILocation(line: 160, column: 3, scope: !3331)
!3463 = !DILocation(line: 161, column: 3, scope: !3331)
!3464 = !DILocation(line: 162, column: 1, scope: !3331)
!3465 = !DISubprogram(name: "secure_getenv", scope: !832, file: !832, line: 646, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!3466 = !DISubprogram(name: "stat", scope: !3467, file: !3467, line: 205, type: !3468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!3467 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!6, !717, !3470}
!3470 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3471)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3472 = distinct !DISubprogram(name: "fd_safer", scope: !538, file: !538, line: 37, type: !1158, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !537, retainedNodes: !3473)
!3473 = !{!3474, !3475, !3478}
!3474 = !DILocalVariable(name: "fd", arg: 1, scope: !3472, file: !538, line: 37, type: !6)
!3475 = !DILocalVariable(name: "f", scope: !3476, file: !538, line: 41, type: !6)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !538, line: 40, column: 5)
!3477 = distinct !DILexicalBlock(scope: !3472, file: !538, line: 39, column: 7)
!3478 = !DILocalVariable(name: "saved_errno", scope: !3476, file: !538, line: 42, type: !6)
!3479 = !DILocation(line: 0, scope: !3472)
!3480 = !DILocation(line: 39, column: 26, scope: !3477)
!3481 = !DILocation(line: 41, column: 15, scope: !3476)
!3482 = !DILocation(line: 0, scope: !3476)
!3483 = !DILocation(line: 42, column: 25, scope: !3476)
!3484 = !DILocation(line: 43, column: 7, scope: !3476)
!3485 = !DILocation(line: 44, column: 13, scope: !3476)
!3486 = !DILocation(line: 46, column: 5, scope: !3476)
!3487 = !DILocation(line: 48, column: 3, scope: !3472)
!3488 = distinct !DISubprogram(name: "version_etc_arn", scope: !540, file: !540, line: 61, type: !3489, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !3525)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !3491, !46, !46, !46, !44, !49}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3493, file: !121, line: 51, baseType: !6, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3493, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3493, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3493, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3493, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3493, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3493, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3493, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3493, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3493, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3493, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3493, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3493, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3493, file: !121, line: 70, baseType: !3509, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3493, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3493, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3493, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3493, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3493, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3493, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3493, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3493, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3493, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3493, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3493, file: !121, line: 93, baseType: !3509, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3493, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3493, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3493, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3493, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531}
!3526 = !DILocalVariable(name: "stream", arg: 1, scope: !3488, file: !540, line: 61, type: !3491)
!3527 = !DILocalVariable(name: "command_name", arg: 2, scope: !3488, file: !540, line: 62, type: !46)
!3528 = !DILocalVariable(name: "package", arg: 3, scope: !3488, file: !540, line: 62, type: !46)
!3529 = !DILocalVariable(name: "version", arg: 4, scope: !3488, file: !540, line: 63, type: !46)
!3530 = !DILocalVariable(name: "authors", arg: 5, scope: !3488, file: !540, line: 64, type: !44)
!3531 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3488, file: !540, line: 64, type: !49)
!3532 = !DILocation(line: 0, scope: !3488)
!3533 = !DILocation(line: 66, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3488, file: !540, line: 66, column: 7)
!3535 = !DILocation(line: 66, column: 7, scope: !3488)
!3536 = !DILocation(line: 67, column: 5, scope: !3534)
!3537 = !DILocation(line: 69, column: 5, scope: !3534)
!3538 = !DILocation(line: 83, column: 3, scope: !3488)
!3539 = !DILocation(line: 85, column: 3, scope: !3488)
!3540 = !DILocation(line: 88, column: 3, scope: !3488)
!3541 = !DILocation(line: 95, column: 3, scope: !3488)
!3542 = !DILocation(line: 97, column: 3, scope: !3488)
!3543 = !DILocation(line: 105, column: 7, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3488, file: !540, line: 98, column: 5)
!3545 = !DILocation(line: 106, column: 7, scope: !3544)
!3546 = !DILocation(line: 109, column: 7, scope: !3544)
!3547 = !DILocation(line: 110, column: 7, scope: !3544)
!3548 = !DILocation(line: 113, column: 7, scope: !3544)
!3549 = !DILocation(line: 115, column: 7, scope: !3544)
!3550 = !DILocation(line: 120, column: 7, scope: !3544)
!3551 = !DILocation(line: 122, column: 7, scope: !3544)
!3552 = !DILocation(line: 127, column: 7, scope: !3544)
!3553 = !DILocation(line: 129, column: 7, scope: !3544)
!3554 = !DILocation(line: 134, column: 7, scope: !3544)
!3555 = !DILocation(line: 137, column: 7, scope: !3544)
!3556 = !DILocation(line: 142, column: 7, scope: !3544)
!3557 = !DILocation(line: 145, column: 7, scope: !3544)
!3558 = !DILocation(line: 150, column: 7, scope: !3544)
!3559 = !DILocation(line: 154, column: 7, scope: !3544)
!3560 = !DILocation(line: 159, column: 7, scope: !3544)
!3561 = !DILocation(line: 163, column: 7, scope: !3544)
!3562 = !DILocation(line: 170, column: 7, scope: !3544)
!3563 = !DILocation(line: 174, column: 7, scope: !3544)
!3564 = !DILocation(line: 176, column: 1, scope: !3488)
!3565 = distinct !DISubprogram(name: "version_etc_ar", scope: !540, file: !540, line: 183, type: !3566, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3491, !46, !46, !46, !44}
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574}
!3569 = !DILocalVariable(name: "stream", arg: 1, scope: !3565, file: !540, line: 183, type: !3491)
!3570 = !DILocalVariable(name: "command_name", arg: 2, scope: !3565, file: !540, line: 184, type: !46)
!3571 = !DILocalVariable(name: "package", arg: 3, scope: !3565, file: !540, line: 184, type: !46)
!3572 = !DILocalVariable(name: "version", arg: 4, scope: !3565, file: !540, line: 185, type: !46)
!3573 = !DILocalVariable(name: "authors", arg: 5, scope: !3565, file: !540, line: 185, type: !44)
!3574 = !DILocalVariable(name: "n_authors", scope: !3565, file: !540, line: 187, type: !49)
!3575 = !DILocation(line: 0, scope: !3565)
!3576 = !DILocation(line: 189, column: 8, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3565, file: !540, line: 189, column: 3)
!3578 = !DILocation(line: 0, scope: !3577)
!3579 = !DILocation(line: 189, column: 23, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3577, file: !540, line: 189, column: 3)
!3581 = !DILocation(line: 189, column: 3, scope: !3577)
!3582 = !DILocation(line: 189, column: 52, scope: !3580)
!3583 = distinct !{!3583, !3581, !3584, !688}
!3584 = !DILocation(line: 190, column: 5, scope: !3577)
!3585 = !DILocation(line: 191, column: 3, scope: !3565)
!3586 = !DILocation(line: 192, column: 1, scope: !3565)
!3587 = distinct !DISubprogram(name: "version_etc_va", scope: !540, file: !540, line: 199, type: !3588, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !3601)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !3491, !46, !46, !46, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !328, line: 52, baseType: !3591)
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !330, line: 32, baseType: !3592)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3593, baseType: !3594)
!3593 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !334, size: 256, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3594, file: !3593, line: 192, baseType: !43, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3594, file: !3593, line: 192, baseType: !43, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3594, file: !3593, line: 192, baseType: !43, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3594, file: !3593, line: 192, baseType: !6, size: 32, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3594, file: !3593, line: 192, baseType: !6, size: 32, offset: 224)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3602 = !DILocalVariable(name: "stream", arg: 1, scope: !3587, file: !540, line: 199, type: !3491)
!3603 = !DILocalVariable(name: "command_name", arg: 2, scope: !3587, file: !540, line: 200, type: !46)
!3604 = !DILocalVariable(name: "package", arg: 3, scope: !3587, file: !540, line: 200, type: !46)
!3605 = !DILocalVariable(name: "version", arg: 4, scope: !3587, file: !540, line: 201, type: !46)
!3606 = !DILocalVariable(name: "authors", arg: 5, scope: !3587, file: !540, line: 201, type: !3590)
!3607 = !DILocalVariable(name: "n_authors", scope: !3587, file: !540, line: 203, type: !49)
!3608 = !DILocalVariable(name: "authtab", scope: !3587, file: !540, line: 204, type: !3609)
!3609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 640, elements: !413)
!3610 = !DILocation(line: 0, scope: !3587)
!3611 = !DILocation(line: 201, column: 46, scope: !3587)
!3612 = !DILocation(line: 204, column: 3, scope: !3587)
!3613 = !DILocation(line: 204, column: 15, scope: !3587)
!3614 = !DILocation(line: 208, column: 35, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !540, line: 206, column: 3)
!3616 = distinct !DILexicalBlock(scope: !3587, file: !540, line: 206, column: 3)
!3617 = !DILocation(line: 208, column: 14, scope: !3615)
!3618 = !DILocation(line: 208, column: 33, scope: !3615)
!3619 = !DILocation(line: 208, column: 67, scope: !3615)
!3620 = !DILocation(line: 206, column: 3, scope: !3616)
!3621 = !DILocation(line: 0, scope: !3616)
!3622 = !DILocation(line: 211, column: 3, scope: !3587)
!3623 = !DILocation(line: 213, column: 1, scope: !3587)
!3624 = distinct !DISubprogram(name: "version_etc", scope: !540, file: !540, line: 230, type: !3625, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !3491, !46, !46, !46, null}
!3627 = !{!3628, !3629, !3630, !3631, !3632}
!3628 = !DILocalVariable(name: "stream", arg: 1, scope: !3624, file: !540, line: 230, type: !3491)
!3629 = !DILocalVariable(name: "command_name", arg: 2, scope: !3624, file: !540, line: 231, type: !46)
!3630 = !DILocalVariable(name: "package", arg: 3, scope: !3624, file: !540, line: 231, type: !46)
!3631 = !DILocalVariable(name: "version", arg: 4, scope: !3624, file: !540, line: 232, type: !46)
!3632 = !DILocalVariable(name: "authors", scope: !3624, file: !540, line: 234, type: !3590)
!3633 = !DILocation(line: 0, scope: !3624)
!3634 = !DILocation(line: 234, column: 3, scope: !3624)
!3635 = !DILocation(line: 234, column: 11, scope: !3624)
!3636 = !DILocation(line: 235, column: 3, scope: !3624)
!3637 = !DILocation(line: 236, column: 3, scope: !3624)
!3638 = !DILocation(line: 237, column: 3, scope: !3624)
!3639 = !DILocation(line: 238, column: 1, scope: !3624)
!3640 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !540, file: !540, line: 241, type: !355, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !634)
!3641 = !DILocation(line: 243, column: 3, scope: !3640)
!3642 = !DILocation(line: 248, column: 3, scope: !3640)
!3643 = !DILocation(line: 254, column: 3, scope: !3640)
!3644 = !DILocation(line: 259, column: 3, scope: !3640)
!3645 = !DILocation(line: 261, column: 1, scope: !3640)
!3646 = distinct !DISubprogram(name: "xnrealloc", scope: !3647, file: !3647, line: 147, type: !3648, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3650)
!3647 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!43, !43, !49, !49}
!3650 = !{!3651, !3652, !3653}
!3651 = !DILocalVariable(name: "p", arg: 1, scope: !3646, file: !3647, line: 147, type: !43)
!3652 = !DILocalVariable(name: "n", arg: 2, scope: !3646, file: !3647, line: 147, type: !49)
!3653 = !DILocalVariable(name: "s", arg: 3, scope: !3646, file: !3647, line: 147, type: !49)
!3654 = !DILocation(line: 0, scope: !3646)
!3655 = !DILocalVariable(name: "p", arg: 1, scope: !3656, file: !546, line: 83, type: !43)
!3656 = distinct !DISubprogram(name: "xreallocarray", scope: !546, file: !546, line: 83, type: !3648, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3657)
!3657 = !{!3655, !3658, !3659}
!3658 = !DILocalVariable(name: "n", arg: 2, scope: !3656, file: !546, line: 83, type: !49)
!3659 = !DILocalVariable(name: "s", arg: 3, scope: !3656, file: !546, line: 83, type: !49)
!3660 = !DILocation(line: 0, scope: !3656, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 149, column: 10, scope: !3646)
!3662 = !DILocation(line: 85, column: 25, scope: !3656, inlinedAt: !3661)
!3663 = !DILocalVariable(name: "p", arg: 1, scope: !3664, file: !546, line: 37, type: !43)
!3664 = distinct !DISubprogram(name: "check_nonnull", scope: !546, file: !546, line: 37, type: !3665, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!43, !43}
!3667 = !{!3663}
!3668 = !DILocation(line: 0, scope: !3664, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 85, column: 10, scope: !3656, inlinedAt: !3661)
!3670 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3669)
!3671 = distinct !DILexicalBlock(scope: !3664, file: !546, line: 39, column: 7)
!3672 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3669)
!3673 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3669)
!3674 = !DILocation(line: 149, column: 3, scope: !3646)
!3675 = !DILocation(line: 0, scope: !3656)
!3676 = !DILocation(line: 85, column: 25, scope: !3656)
!3677 = !DILocation(line: 0, scope: !3664, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 85, column: 10, scope: !3656)
!3679 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3678)
!3680 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3678)
!3681 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3678)
!3682 = !DILocation(line: 85, column: 3, scope: !3656)
!3683 = distinct !DISubprogram(name: "xmalloc", scope: !546, file: !546, line: 47, type: !3684, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!43, !49}
!3686 = !{!3687}
!3687 = !DILocalVariable(name: "s", arg: 1, scope: !3683, file: !546, line: 47, type: !49)
!3688 = !DILocation(line: 0, scope: !3683)
!3689 = !DILocation(line: 49, column: 25, scope: !3683)
!3690 = !DILocation(line: 0, scope: !3664, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 49, column: 10, scope: !3683)
!3692 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3691)
!3693 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3691)
!3694 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3691)
!3695 = !DILocation(line: 49, column: 3, scope: !3683)
!3696 = distinct !DISubprogram(name: "ximalloc", scope: !546, file: !546, line: 53, type: !3697, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!43, !565}
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "s", arg: 1, scope: !3696, file: !546, line: 53, type: !565)
!3701 = !DILocation(line: 0, scope: !3696)
!3702 = !DILocalVariable(name: "s", arg: 1, scope: !3703, file: !3704, line: 55, type: !565)
!3703 = distinct !DISubprogram(name: "imalloc", scope: !3704, file: !3704, line: 55, type: !3697, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3705)
!3704 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3705 = !{!3702}
!3706 = !DILocation(line: 0, scope: !3703, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 55, column: 25, scope: !3696)
!3708 = !DILocation(line: 57, column: 26, scope: !3703, inlinedAt: !3707)
!3709 = !DILocation(line: 0, scope: !3664, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 55, column: 10, scope: !3696)
!3711 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3710)
!3712 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3710)
!3713 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3710)
!3714 = !DILocation(line: 55, column: 3, scope: !3696)
!3715 = distinct !DISubprogram(name: "xcharalloc", scope: !546, file: !546, line: 59, type: !3716, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!8, !49}
!3718 = !{!3719}
!3719 = !DILocalVariable(name: "n", arg: 1, scope: !3715, file: !546, line: 59, type: !49)
!3720 = !DILocation(line: 0, scope: !3715)
!3721 = !DILocation(line: 0, scope: !3683, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 61, column: 10, scope: !3715)
!3723 = !DILocation(line: 49, column: 25, scope: !3683, inlinedAt: !3722)
!3724 = !DILocation(line: 0, scope: !3664, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 49, column: 10, scope: !3683, inlinedAt: !3722)
!3726 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3725)
!3727 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3725)
!3728 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3725)
!3729 = !DILocation(line: 61, column: 3, scope: !3715)
!3730 = distinct !DISubprogram(name: "xrealloc", scope: !546, file: !546, line: 68, type: !1403, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3731)
!3731 = !{!3732, !3733}
!3732 = !DILocalVariable(name: "p", arg: 1, scope: !3730, file: !546, line: 68, type: !43)
!3733 = !DILocalVariable(name: "s", arg: 2, scope: !3730, file: !546, line: 68, type: !49)
!3734 = !DILocation(line: 0, scope: !3730)
!3735 = !DILocalVariable(name: "ptr", arg: 1, scope: !3736, file: !1402, line: 2057, type: !43)
!3736 = distinct !DISubprogram(name: "rpl_realloc", scope: !1402, file: !1402, line: 2057, type: !1403, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3737)
!3737 = !{!3735, !3738}
!3738 = !DILocalVariable(name: "size", arg: 2, scope: !3736, file: !1402, line: 2057, type: !49)
!3739 = !DILocation(line: 0, scope: !3736, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 70, column: 25, scope: !3730)
!3741 = !DILocation(line: 2059, column: 24, scope: !3736, inlinedAt: !3740)
!3742 = !DILocation(line: 2059, column: 10, scope: !3736, inlinedAt: !3740)
!3743 = !DILocation(line: 0, scope: !3664, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 70, column: 10, scope: !3730)
!3745 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3744)
!3746 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3744)
!3747 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3744)
!3748 = !DILocation(line: 70, column: 3, scope: !3730)
!3749 = distinct !DISubprogram(name: "xirealloc", scope: !546, file: !546, line: 74, type: !3750, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!43, !43, !565}
!3752 = !{!3753, !3754}
!3753 = !DILocalVariable(name: "p", arg: 1, scope: !3749, file: !546, line: 74, type: !43)
!3754 = !DILocalVariable(name: "s", arg: 2, scope: !3749, file: !546, line: 74, type: !565)
!3755 = !DILocation(line: 0, scope: !3749)
!3756 = !DILocalVariable(name: "p", arg: 1, scope: !3757, file: !3704, line: 66, type: !43)
!3757 = distinct !DISubprogram(name: "irealloc", scope: !3704, file: !3704, line: 66, type: !3750, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3758)
!3758 = !{!3756, !3759}
!3759 = !DILocalVariable(name: "s", arg: 2, scope: !3757, file: !3704, line: 66, type: !565)
!3760 = !DILocation(line: 0, scope: !3757, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 76, column: 25, scope: !3749)
!3762 = !DILocation(line: 0, scope: !3736, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 68, column: 26, scope: !3757, inlinedAt: !3761)
!3764 = !DILocation(line: 2059, column: 24, scope: !3736, inlinedAt: !3763)
!3765 = !DILocation(line: 2059, column: 10, scope: !3736, inlinedAt: !3763)
!3766 = !DILocation(line: 0, scope: !3664, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 76, column: 10, scope: !3749)
!3768 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3767)
!3769 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3767)
!3770 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3767)
!3771 = !DILocation(line: 76, column: 3, scope: !3749)
!3772 = distinct !DISubprogram(name: "xireallocarray", scope: !546, file: !546, line: 89, type: !3773, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!43, !43, !565, !565}
!3775 = !{!3776, !3777, !3778}
!3776 = !DILocalVariable(name: "p", arg: 1, scope: !3772, file: !546, line: 89, type: !43)
!3777 = !DILocalVariable(name: "n", arg: 2, scope: !3772, file: !546, line: 89, type: !565)
!3778 = !DILocalVariable(name: "s", arg: 3, scope: !3772, file: !546, line: 89, type: !565)
!3779 = !DILocation(line: 0, scope: !3772)
!3780 = !DILocalVariable(name: "p", arg: 1, scope: !3781, file: !3704, line: 98, type: !43)
!3781 = distinct !DISubprogram(name: "ireallocarray", scope: !3704, file: !3704, line: 98, type: !3773, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3782)
!3782 = !{!3780, !3783, !3784}
!3783 = !DILocalVariable(name: "n", arg: 2, scope: !3781, file: !3704, line: 98, type: !565)
!3784 = !DILocalVariable(name: "s", arg: 3, scope: !3781, file: !3704, line: 98, type: !565)
!3785 = !DILocation(line: 0, scope: !3781, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 91, column: 25, scope: !3772)
!3787 = !DILocation(line: 101, column: 13, scope: !3781, inlinedAt: !3786)
!3788 = !DILocation(line: 0, scope: !3664, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 91, column: 10, scope: !3772)
!3790 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3789)
!3791 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3789)
!3792 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3789)
!3793 = !DILocation(line: 91, column: 3, scope: !3772)
!3794 = distinct !DISubprogram(name: "xnmalloc", scope: !546, file: !546, line: 98, type: !3795, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!43, !49, !49}
!3797 = !{!3798, !3799}
!3798 = !DILocalVariable(name: "n", arg: 1, scope: !3794, file: !546, line: 98, type: !49)
!3799 = !DILocalVariable(name: "s", arg: 2, scope: !3794, file: !546, line: 98, type: !49)
!3800 = !DILocation(line: 0, scope: !3794)
!3801 = !DILocation(line: 0, scope: !3656, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 100, column: 10, scope: !3794)
!3803 = !DILocation(line: 85, column: 25, scope: !3656, inlinedAt: !3802)
!3804 = !DILocation(line: 0, scope: !3664, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 85, column: 10, scope: !3656, inlinedAt: !3802)
!3806 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3805)
!3807 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3805)
!3808 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3805)
!3809 = !DILocation(line: 100, column: 3, scope: !3794)
!3810 = distinct !DISubprogram(name: "xinmalloc", scope: !546, file: !546, line: 104, type: !3811, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!43, !565, !565}
!3813 = !{!3814, !3815}
!3814 = !DILocalVariable(name: "n", arg: 1, scope: !3810, file: !546, line: 104, type: !565)
!3815 = !DILocalVariable(name: "s", arg: 2, scope: !3810, file: !546, line: 104, type: !565)
!3816 = !DILocation(line: 0, scope: !3810)
!3817 = !DILocation(line: 0, scope: !3772, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 106, column: 10, scope: !3810)
!3819 = !DILocation(line: 0, scope: !3781, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 91, column: 25, scope: !3772, inlinedAt: !3818)
!3821 = !DILocation(line: 101, column: 13, scope: !3781, inlinedAt: !3820)
!3822 = !DILocation(line: 0, scope: !3664, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 91, column: 10, scope: !3772, inlinedAt: !3818)
!3824 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3823)
!3825 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3823)
!3826 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3823)
!3827 = !DILocation(line: 106, column: 3, scope: !3810)
!3828 = distinct !DISubprogram(name: "x2realloc", scope: !546, file: !546, line: 116, type: !3829, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!43, !43, !552}
!3831 = !{!3832, !3833}
!3832 = !DILocalVariable(name: "p", arg: 1, scope: !3828, file: !546, line: 116, type: !43)
!3833 = !DILocalVariable(name: "ps", arg: 2, scope: !3828, file: !546, line: 116, type: !552)
!3834 = !DILocation(line: 0, scope: !3828)
!3835 = !DILocation(line: 0, scope: !549, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 118, column: 10, scope: !3828)
!3837 = !DILocation(line: 178, column: 14, scope: !549, inlinedAt: !3836)
!3838 = !DILocation(line: 180, column: 9, scope: !3839, inlinedAt: !3836)
!3839 = distinct !DILexicalBlock(scope: !549, file: !546, line: 180, column: 7)
!3840 = !DILocation(line: 180, column: 7, scope: !549, inlinedAt: !3836)
!3841 = !DILocation(line: 182, column: 13, scope: !3842, inlinedAt: !3836)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !546, line: 182, column: 11)
!3843 = distinct !DILexicalBlock(scope: !3839, file: !546, line: 181, column: 5)
!3844 = !DILocation(line: 182, column: 11, scope: !3843, inlinedAt: !3836)
!3845 = !DILocation(line: 197, column: 11, scope: !3846, inlinedAt: !3836)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !546, line: 197, column: 11)
!3847 = distinct !DILexicalBlock(scope: !3839, file: !546, line: 195, column: 5)
!3848 = !DILocation(line: 197, column: 11, scope: !3847, inlinedAt: !3836)
!3849 = !DILocation(line: 198, column: 9, scope: !3846, inlinedAt: !3836)
!3850 = !DILocation(line: 0, scope: !3656, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 201, column: 7, scope: !549, inlinedAt: !3836)
!3852 = !DILocation(line: 85, column: 25, scope: !3656, inlinedAt: !3851)
!3853 = !DILocation(line: 0, scope: !3664, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 85, column: 10, scope: !3656, inlinedAt: !3851)
!3855 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3854)
!3856 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3854)
!3857 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3854)
!3858 = !DILocation(line: 202, column: 7, scope: !549, inlinedAt: !3836)
!3859 = !DILocation(line: 118, column: 3, scope: !3828)
!3860 = !DILocation(line: 0, scope: !549)
!3861 = !DILocation(line: 178, column: 14, scope: !549)
!3862 = !DILocation(line: 180, column: 9, scope: !3839)
!3863 = !DILocation(line: 180, column: 7, scope: !549)
!3864 = !DILocation(line: 182, column: 13, scope: !3842)
!3865 = !DILocation(line: 182, column: 11, scope: !3843)
!3866 = !DILocation(line: 190, column: 30, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3842, file: !546, line: 183, column: 9)
!3868 = !DILocation(line: 191, column: 16, scope: !3867)
!3869 = !DILocation(line: 191, column: 13, scope: !3867)
!3870 = !DILocation(line: 192, column: 9, scope: !3867)
!3871 = !DILocation(line: 197, column: 11, scope: !3846)
!3872 = !DILocation(line: 197, column: 11, scope: !3847)
!3873 = !DILocation(line: 198, column: 9, scope: !3846)
!3874 = !DILocation(line: 0, scope: !3656, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 201, column: 7, scope: !549)
!3876 = !DILocation(line: 85, column: 25, scope: !3656, inlinedAt: !3875)
!3877 = !DILocation(line: 0, scope: !3664, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 85, column: 10, scope: !3656, inlinedAt: !3875)
!3879 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3878)
!3880 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3878)
!3881 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3878)
!3882 = !DILocation(line: 202, column: 7, scope: !549)
!3883 = !DILocation(line: 203, column: 3, scope: !549)
!3884 = !DILocation(line: 0, scope: !561)
!3885 = !DILocation(line: 230, column: 14, scope: !561)
!3886 = !DILocation(line: 238, column: 7, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !561, file: !546, line: 238, column: 7)
!3888 = !DILocation(line: 238, column: 7, scope: !561)
!3889 = !DILocation(line: 240, column: 9, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !561, file: !546, line: 240, column: 7)
!3891 = !DILocation(line: 240, column: 18, scope: !3890)
!3892 = !DILocation(line: 253, column: 8, scope: !561)
!3893 = !DILocation(line: 258, column: 27, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !546, line: 257, column: 5)
!3895 = distinct !DILexicalBlock(scope: !561, file: !546, line: 256, column: 7)
!3896 = !DILocation(line: 259, column: 32, scope: !3894)
!3897 = !DILocation(line: 260, column: 5, scope: !3894)
!3898 = !DILocation(line: 262, column: 9, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !561, file: !546, line: 262, column: 7)
!3900 = !DILocation(line: 262, column: 7, scope: !561)
!3901 = !DILocation(line: 263, column: 9, scope: !3899)
!3902 = !DILocation(line: 263, column: 5, scope: !3899)
!3903 = !DILocation(line: 264, column: 9, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !561, file: !546, line: 264, column: 7)
!3905 = !DILocation(line: 264, column: 14, scope: !3904)
!3906 = !DILocation(line: 265, column: 7, scope: !3904)
!3907 = !DILocation(line: 265, column: 11, scope: !3904)
!3908 = !DILocation(line: 266, column: 11, scope: !3904)
!3909 = !DILocation(line: 266, column: 26, scope: !3904)
!3910 = !DILocation(line: 267, column: 14, scope: !3904)
!3911 = !DILocation(line: 264, column: 7, scope: !561)
!3912 = !DILocation(line: 268, column: 5, scope: !3904)
!3913 = !DILocation(line: 0, scope: !3730, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 269, column: 8, scope: !561)
!3915 = !DILocation(line: 0, scope: !3736, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 70, column: 25, scope: !3730, inlinedAt: !3914)
!3917 = !DILocation(line: 2059, column: 24, scope: !3736, inlinedAt: !3916)
!3918 = !DILocation(line: 2059, column: 10, scope: !3736, inlinedAt: !3916)
!3919 = !DILocation(line: 0, scope: !3664, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 70, column: 10, scope: !3730, inlinedAt: !3914)
!3921 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3920)
!3922 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3920)
!3923 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3920)
!3924 = !DILocation(line: 270, column: 7, scope: !561)
!3925 = !DILocation(line: 271, column: 3, scope: !561)
!3926 = distinct !DISubprogram(name: "xzalloc", scope: !546, file: !546, line: 279, type: !3684, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3927)
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "s", arg: 1, scope: !3926, file: !546, line: 279, type: !49)
!3929 = !DILocation(line: 0, scope: !3926)
!3930 = !DILocalVariable(name: "n", arg: 1, scope: !3931, file: !546, line: 294, type: !49)
!3931 = distinct !DISubprogram(name: "xcalloc", scope: !546, file: !546, line: 294, type: !3795, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3932)
!3932 = !{!3930, !3933}
!3933 = !DILocalVariable(name: "s", arg: 2, scope: !3931, file: !546, line: 294, type: !49)
!3934 = !DILocation(line: 0, scope: !3931, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 281, column: 10, scope: !3926)
!3936 = !DILocation(line: 296, column: 25, scope: !3931, inlinedAt: !3935)
!3937 = !DILocation(line: 0, scope: !3664, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 296, column: 10, scope: !3931, inlinedAt: !3935)
!3939 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3938)
!3940 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3938)
!3941 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3938)
!3942 = !DILocation(line: 281, column: 3, scope: !3926)
!3943 = !DILocation(line: 0, scope: !3931)
!3944 = !DILocation(line: 296, column: 25, scope: !3931)
!3945 = !DILocation(line: 0, scope: !3664, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 296, column: 10, scope: !3931)
!3947 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3946)
!3948 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3946)
!3949 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3946)
!3950 = !DILocation(line: 296, column: 3, scope: !3931)
!3951 = distinct !DISubprogram(name: "xizalloc", scope: !546, file: !546, line: 285, type: !3697, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3952)
!3952 = !{!3953}
!3953 = !DILocalVariable(name: "s", arg: 1, scope: !3951, file: !546, line: 285, type: !565)
!3954 = !DILocation(line: 0, scope: !3951)
!3955 = !DILocalVariable(name: "n", arg: 1, scope: !3956, file: !546, line: 300, type: !565)
!3956 = distinct !DISubprogram(name: "xicalloc", scope: !546, file: !546, line: 300, type: !3811, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3957)
!3957 = !{!3955, !3958}
!3958 = !DILocalVariable(name: "s", arg: 2, scope: !3956, file: !546, line: 300, type: !565)
!3959 = !DILocation(line: 0, scope: !3956, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 287, column: 10, scope: !3951)
!3961 = !DILocalVariable(name: "n", arg: 1, scope: !3962, file: !3704, line: 77, type: !565)
!3962 = distinct !DISubprogram(name: "icalloc", scope: !3704, file: !3704, line: 77, type: !3811, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3963)
!3963 = !{!3961, !3964}
!3964 = !DILocalVariable(name: "s", arg: 2, scope: !3962, file: !3704, line: 77, type: !565)
!3965 = !DILocation(line: 0, scope: !3962, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 302, column: 25, scope: !3956, inlinedAt: !3960)
!3967 = !DILocation(line: 91, column: 10, scope: !3962, inlinedAt: !3966)
!3968 = !DILocation(line: 0, scope: !3664, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 302, column: 10, scope: !3956, inlinedAt: !3960)
!3970 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3969)
!3971 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3969)
!3972 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3969)
!3973 = !DILocation(line: 287, column: 3, scope: !3951)
!3974 = !DILocation(line: 0, scope: !3956)
!3975 = !DILocation(line: 0, scope: !3962, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 302, column: 25, scope: !3956)
!3977 = !DILocation(line: 91, column: 10, scope: !3962, inlinedAt: !3976)
!3978 = !DILocation(line: 0, scope: !3664, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 302, column: 10, scope: !3956)
!3980 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3979)
!3981 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3979)
!3982 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3979)
!3983 = !DILocation(line: 302, column: 3, scope: !3956)
!3984 = distinct !DISubprogram(name: "xmemdup", scope: !546, file: !546, line: 310, type: !3985, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!43, !839, !49}
!3987 = !{!3988, !3989}
!3988 = !DILocalVariable(name: "p", arg: 1, scope: !3984, file: !546, line: 310, type: !839)
!3989 = !DILocalVariable(name: "s", arg: 2, scope: !3984, file: !546, line: 310, type: !49)
!3990 = !DILocation(line: 0, scope: !3984)
!3991 = !DILocation(line: 0, scope: !3683, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 312, column: 18, scope: !3984)
!3993 = !DILocation(line: 49, column: 25, scope: !3683, inlinedAt: !3992)
!3994 = !DILocation(line: 0, scope: !3664, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 49, column: 10, scope: !3683, inlinedAt: !3992)
!3996 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !3995)
!3997 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !3995)
!3998 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !3995)
!3999 = !DILocalVariable(name: "__dest", arg: 1, scope: !4000, file: !920, line: 26, type: !923)
!4000 = distinct !DISubprogram(name: "memcpy", scope: !920, file: !920, line: 26, type: !921, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4001)
!4001 = !{!3999, !4002, !4003}
!4002 = !DILocalVariable(name: "__src", arg: 2, scope: !4000, file: !920, line: 26, type: !838)
!4003 = !DILocalVariable(name: "__len", arg: 3, scope: !4000, file: !920, line: 26, type: !49)
!4004 = !DILocation(line: 0, scope: !4000, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 312, column: 10, scope: !3984)
!4006 = !DILocation(line: 29, column: 10, scope: !4000, inlinedAt: !4005)
!4007 = !DILocation(line: 312, column: 3, scope: !3984)
!4008 = distinct !DISubprogram(name: "ximemdup", scope: !546, file: !546, line: 316, type: !4009, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!43, !839, !565}
!4011 = !{!4012, !4013}
!4012 = !DILocalVariable(name: "p", arg: 1, scope: !4008, file: !546, line: 316, type: !839)
!4013 = !DILocalVariable(name: "s", arg: 2, scope: !4008, file: !546, line: 316, type: !565)
!4014 = !DILocation(line: 0, scope: !4008)
!4015 = !DILocation(line: 0, scope: !3696, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 318, column: 18, scope: !4008)
!4017 = !DILocation(line: 0, scope: !3703, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 55, column: 25, scope: !3696, inlinedAt: !4016)
!4019 = !DILocation(line: 57, column: 26, scope: !3703, inlinedAt: !4018)
!4020 = !DILocation(line: 0, scope: !3664, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 55, column: 10, scope: !3696, inlinedAt: !4016)
!4022 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !4021)
!4023 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !4021)
!4024 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !4021)
!4025 = !DILocation(line: 0, scope: !4000, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 318, column: 10, scope: !4008)
!4027 = !DILocation(line: 29, column: 10, scope: !4000, inlinedAt: !4026)
!4028 = !DILocation(line: 318, column: 3, scope: !4008)
!4029 = distinct !DISubprogram(name: "ximemdup0", scope: !546, file: !546, line: 325, type: !4030, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!8, !839, !565}
!4032 = !{!4033, !4034, !4035}
!4033 = !DILocalVariable(name: "p", arg: 1, scope: !4029, file: !546, line: 325, type: !839)
!4034 = !DILocalVariable(name: "s", arg: 2, scope: !4029, file: !546, line: 325, type: !565)
!4035 = !DILocalVariable(name: "result", scope: !4029, file: !546, line: 327, type: !8)
!4036 = !DILocation(line: 0, scope: !4029)
!4037 = !DILocation(line: 327, column: 30, scope: !4029)
!4038 = !DILocation(line: 0, scope: !3696, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 327, column: 18, scope: !4029)
!4040 = !DILocation(line: 0, scope: !3703, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 55, column: 25, scope: !3696, inlinedAt: !4039)
!4042 = !DILocation(line: 57, column: 26, scope: !3703, inlinedAt: !4041)
!4043 = !DILocation(line: 0, scope: !3664, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 55, column: 10, scope: !3696, inlinedAt: !4039)
!4045 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !4044)
!4046 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !4044)
!4047 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !4044)
!4048 = !DILocation(line: 328, column: 3, scope: !4029)
!4049 = !DILocation(line: 328, column: 13, scope: !4029)
!4050 = !DILocation(line: 0, scope: !4000, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 329, column: 10, scope: !4029)
!4052 = !DILocation(line: 29, column: 10, scope: !4000, inlinedAt: !4051)
!4053 = !DILocation(line: 329, column: 3, scope: !4029)
!4054 = distinct !DISubprogram(name: "xstrdup", scope: !546, file: !546, line: 335, type: !833, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4055)
!4055 = !{!4056}
!4056 = !DILocalVariable(name: "string", arg: 1, scope: !4054, file: !546, line: 335, type: !46)
!4057 = !DILocation(line: 0, scope: !4054)
!4058 = !DILocation(line: 337, column: 27, scope: !4054)
!4059 = !DILocation(line: 337, column: 43, scope: !4054)
!4060 = !DILocation(line: 0, scope: !3984, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 337, column: 10, scope: !4054)
!4062 = !DILocation(line: 0, scope: !3683, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 312, column: 18, scope: !3984, inlinedAt: !4061)
!4064 = !DILocation(line: 49, column: 25, scope: !3683, inlinedAt: !4063)
!4065 = !DILocation(line: 0, scope: !3664, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 49, column: 10, scope: !3683, inlinedAt: !4063)
!4067 = !DILocation(line: 39, column: 8, scope: !3671, inlinedAt: !4066)
!4068 = !DILocation(line: 39, column: 7, scope: !3664, inlinedAt: !4066)
!4069 = !DILocation(line: 40, column: 5, scope: !3671, inlinedAt: !4066)
!4070 = !DILocation(line: 0, scope: !4000, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 312, column: 10, scope: !3984, inlinedAt: !4061)
!4072 = !DILocation(line: 29, column: 10, scope: !4000, inlinedAt: !4071)
!4073 = !DILocation(line: 337, column: 3, scope: !4054)
!4074 = distinct !DISubprogram(name: "xalloc_die", scope: !580, file: !580, line: 32, type: !355, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !4075)
!4075 = !{!4076}
!4076 = !DILocalVariable(name: "__errstatus", scope: !4077, file: !580, line: 34, type: !4078)
!4077 = distinct !DILexicalBlock(scope: !4074, file: !580, line: 34, column: 3)
!4078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!4079 = !DILocation(line: 34, column: 3, scope: !4077)
!4080 = !DILocation(line: 0, scope: !4077)
!4081 = !DILocation(line: 40, column: 3, scope: !4074)
!4082 = distinct !DISubprogram(name: "close_stream", scope: !582, file: !582, line: 55, type: !4083, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !4119)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!6, !4085}
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4087, file: !121, line: 51, baseType: !6, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4087, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4087, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4087, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4087, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4087, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4087, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4087, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4087, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4087, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4087, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4087, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4087, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4087, file: !121, line: 70, baseType: !4103, size: 64, offset: 832)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4087, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4087, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4087, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4087, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4087, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4087, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4087, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4087, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4087, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4087, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4087, file: !121, line: 93, baseType: !4103, size: 64, offset: 1344)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4087, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4087, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4087, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4087, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!4119 = !{!4120, !4121, !4123, !4124}
!4120 = !DILocalVariable(name: "stream", arg: 1, scope: !4082, file: !582, line: 55, type: !4085)
!4121 = !DILocalVariable(name: "some_pending", scope: !4082, file: !582, line: 57, type: !4122)
!4122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!4123 = !DILocalVariable(name: "prev_fail", scope: !4082, file: !582, line: 58, type: !4122)
!4124 = !DILocalVariable(name: "fclose_fail", scope: !4082, file: !582, line: 59, type: !4122)
!4125 = !DILocation(line: 0, scope: !4082)
!4126 = !DILocation(line: 57, column: 30, scope: !4082)
!4127 = !DILocalVariable(name: "__stream", arg: 1, scope: !4128, file: !1666, line: 135, type: !4085)
!4128 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1666, file: !1666, line: 135, type: !4083, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !4129)
!4129 = !{!4127}
!4130 = !DILocation(line: 0, scope: !4128, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 58, column: 27, scope: !4082)
!4132 = !DILocation(line: 137, column: 10, scope: !4128, inlinedAt: !4131)
!4133 = !DILocation(line: 58, column: 43, scope: !4082)
!4134 = !DILocation(line: 59, column: 29, scope: !4082)
!4135 = !DILocation(line: 59, column: 45, scope: !4082)
!4136 = !DILocation(line: 69, column: 17, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4082, file: !582, line: 69, column: 7)
!4138 = !DILocation(line: 57, column: 50, scope: !4082)
!4139 = !DILocation(line: 69, column: 33, scope: !4137)
!4140 = !DILocation(line: 69, column: 53, scope: !4137)
!4141 = !DILocation(line: 69, column: 59, scope: !4137)
!4142 = !DILocation(line: 69, column: 7, scope: !4082)
!4143 = !DILocation(line: 71, column: 11, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4137, file: !582, line: 70, column: 5)
!4145 = !DILocation(line: 72, column: 9, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4144, file: !582, line: 71, column: 11)
!4147 = !DILocation(line: 72, column: 15, scope: !4146)
!4148 = !DILocation(line: 77, column: 1, scope: !4082)
!4149 = distinct !DISubprogram(name: "rpl_fclose", scope: !584, file: !584, line: 58, type: !4150, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4186)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!6, !4152}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4154, file: !121, line: 51, baseType: !6, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4154, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4154, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4154, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4154, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4154, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4154, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4154, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4154, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4154, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4154, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4154, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4154, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4154, file: !121, line: 70, baseType: !4170, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4154, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4154, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4154, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4154, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4154, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4154, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4154, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4154, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4154, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4154, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4154, file: !121, line: 93, baseType: !4170, size: 64, offset: 1344)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4154, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4154, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4154, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4154, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!4186 = !{!4187, !4188, !4189, !4190}
!4187 = !DILocalVariable(name: "fp", arg: 1, scope: !4149, file: !584, line: 58, type: !4152)
!4188 = !DILocalVariable(name: "saved_errno", scope: !4149, file: !584, line: 60, type: !6)
!4189 = !DILocalVariable(name: "fd", scope: !4149, file: !584, line: 63, type: !6)
!4190 = !DILocalVariable(name: "result", scope: !4149, file: !584, line: 74, type: !6)
!4191 = !DILocation(line: 0, scope: !4149)
!4192 = !DILocation(line: 63, column: 12, scope: !4149)
!4193 = !DILocation(line: 64, column: 10, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4149, file: !584, line: 64, column: 7)
!4195 = !DILocation(line: 64, column: 7, scope: !4149)
!4196 = !DILocation(line: 65, column: 12, scope: !4194)
!4197 = !DILocation(line: 65, column: 5, scope: !4194)
!4198 = !DILocation(line: 70, column: 9, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4149, file: !584, line: 70, column: 7)
!4200 = !DILocation(line: 70, column: 23, scope: !4199)
!4201 = !DILocation(line: 70, column: 33, scope: !4199)
!4202 = !DILocation(line: 70, column: 26, scope: !4199)
!4203 = !DILocation(line: 70, column: 59, scope: !4199)
!4204 = !DILocation(line: 71, column: 7, scope: !4199)
!4205 = !DILocation(line: 71, column: 10, scope: !4199)
!4206 = !DILocation(line: 70, column: 7, scope: !4149)
!4207 = !DILocation(line: 100, column: 12, scope: !4149)
!4208 = !DILocation(line: 105, column: 7, scope: !4149)
!4209 = !DILocation(line: 72, column: 19, scope: !4199)
!4210 = !DILocation(line: 105, column: 19, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4149, file: !584, line: 105, column: 7)
!4212 = !DILocation(line: 107, column: 13, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4211, file: !584, line: 106, column: 5)
!4214 = !DILocation(line: 109, column: 5, scope: !4213)
!4215 = !DILocation(line: 112, column: 1, scope: !4149)
!4216 = !DISubprogram(name: "fclose", scope: !328, file: !328, line: 178, type: !4150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!4217 = distinct !DISubprogram(name: "fd_safer_flag", scope: !586, file: !586, line: 40, type: !502, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4218)
!4218 = !{!4219, !4220, !4221, !4224}
!4219 = !DILocalVariable(name: "fd", arg: 1, scope: !4217, file: !586, line: 40, type: !6)
!4220 = !DILocalVariable(name: "flag", arg: 2, scope: !4217, file: !586, line: 40, type: !6)
!4221 = !DILocalVariable(name: "f", scope: !4222, file: !586, line: 44, type: !6)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !586, line: 43, column: 5)
!4223 = distinct !DILexicalBlock(scope: !4217, file: !586, line: 42, column: 7)
!4224 = !DILocalVariable(name: "saved_errno", scope: !4222, file: !586, line: 45, type: !6)
!4225 = !DILocation(line: 0, scope: !4217)
!4226 = !DILocation(line: 42, column: 26, scope: !4223)
!4227 = !DILocation(line: 44, column: 15, scope: !4222)
!4228 = !DILocation(line: 0, scope: !4222)
!4229 = !DILocation(line: 45, column: 25, scope: !4222)
!4230 = !DILocation(line: 46, column: 7, scope: !4222)
!4231 = !DILocation(line: 47, column: 13, scope: !4222)
!4232 = !DILocation(line: 49, column: 5, scope: !4222)
!4233 = !DILocation(line: 51, column: 3, scope: !4217)
!4234 = distinct !DISubprogram(name: "dup_safer_flag", scope: !588, file: !588, line: 34, type: !502, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !4235)
!4235 = !{!4236, !4237}
!4236 = !DILocalVariable(name: "fd", arg: 1, scope: !4234, file: !588, line: 34, type: !6)
!4237 = !DILocalVariable(name: "flag", arg: 2, scope: !4234, file: !588, line: 34, type: !6)
!4238 = !DILocation(line: 0, scope: !4234)
!4239 = !DILocation(line: 36, column: 27, scope: !4234)
!4240 = !DILocation(line: 36, column: 21, scope: !4234)
!4241 = !DILocation(line: 36, column: 10, scope: !4234)
!4242 = !DILocation(line: 36, column: 3, scope: !4234)
!4243 = distinct !DISubprogram(name: "rpl_fflush", scope: !590, file: !590, line: 130, type: !4244, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !4280)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!6, !4246}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !119, line: 7, baseType: !4248)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !121, line: 49, size: 1728, elements: !4249)
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4248, file: !121, line: 51, baseType: !6, size: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4248, file: !121, line: 54, baseType: !8, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4248, file: !121, line: 55, baseType: !8, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4248, file: !121, line: 56, baseType: !8, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4248, file: !121, line: 57, baseType: !8, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4248, file: !121, line: 58, baseType: !8, size: 64, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4248, file: !121, line: 59, baseType: !8, size: 64, offset: 384)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4248, file: !121, line: 60, baseType: !8, size: 64, offset: 448)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4248, file: !121, line: 61, baseType: !8, size: 64, offset: 512)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4248, file: !121, line: 64, baseType: !8, size: 64, offset: 576)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4248, file: !121, line: 65, baseType: !8, size: 64, offset: 640)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4248, file: !121, line: 66, baseType: !8, size: 64, offset: 704)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4248, file: !121, line: 68, baseType: !136, size: 64, offset: 768)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4248, file: !121, line: 70, baseType: !4264, size: 64, offset: 832)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4248, file: !121, line: 72, baseType: !6, size: 32, offset: 896)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4248, file: !121, line: 73, baseType: !6, size: 32, offset: 928)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4248, file: !121, line: 74, baseType: !143, size: 64, offset: 960)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4248, file: !121, line: 77, baseType: !48, size: 16, offset: 1024)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4248, file: !121, line: 78, baseType: !148, size: 8, offset: 1040)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4248, file: !121, line: 79, baseType: !150, size: 8, offset: 1048)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4248, file: !121, line: 81, baseType: !154, size: 64, offset: 1088)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4248, file: !121, line: 89, baseType: !157, size: 64, offset: 1152)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4248, file: !121, line: 91, baseType: !159, size: 64, offset: 1216)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4248, file: !121, line: 92, baseType: !162, size: 64, offset: 1280)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4248, file: !121, line: 93, baseType: !4264, size: 64, offset: 1344)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4248, file: !121, line: 94, baseType: !43, size: 64, offset: 1408)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4248, file: !121, line: 95, baseType: !49, size: 64, offset: 1472)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4248, file: !121, line: 96, baseType: !6, size: 32, offset: 1536)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4248, file: !121, line: 98, baseType: !169, size: 160, offset: 1568)
!4280 = !{!4281}
!4281 = !DILocalVariable(name: "stream", arg: 1, scope: !4243, file: !590, line: 130, type: !4246)
!4282 = !DILocation(line: 0, scope: !4243)
!4283 = !DILocation(line: 151, column: 14, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4243, file: !590, line: 151, column: 7)
!4285 = !DILocation(line: 151, column: 22, scope: !4284)
!4286 = !DILocation(line: 151, column: 27, scope: !4284)
!4287 = !DILocation(line: 151, column: 7, scope: !4243)
!4288 = !DILocation(line: 152, column: 12, scope: !4284)
!4289 = !DILocation(line: 152, column: 5, scope: !4284)
!4290 = !DILocalVariable(name: "fp", arg: 1, scope: !4291, file: !590, line: 42, type: !4246)
!4291 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !590, file: !590, line: 42, type: !4292, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !4294)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !4246}
!4294 = !{!4290}
!4295 = !DILocation(line: 0, scope: !4291, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 157, column: 3, scope: !4243)
!4297 = !DILocation(line: 44, column: 12, scope: !4298, inlinedAt: !4296)
!4298 = distinct !DILexicalBlock(scope: !4291, file: !590, line: 44, column: 7)
!4299 = !DILocation(line: 44, column: 19, scope: !4298, inlinedAt: !4296)
!4300 = !DILocation(line: 44, column: 7, scope: !4291, inlinedAt: !4296)
!4301 = !DILocation(line: 46, column: 5, scope: !4298, inlinedAt: !4296)
!4302 = !DILocation(line: 159, column: 10, scope: !4243)
!4303 = !DILocation(line: 159, column: 3, scope: !4243)
!4304 = !DILocation(line: 236, column: 1, scope: !4243)
!4305 = !DISubprogram(name: "fflush", scope: !328, file: !328, line: 230, type: !4244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!4306 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !485, file: !485, line: 100, type: !4307, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4310)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!49, !1984, !46, !49, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!4310 = !{!4311, !4312, !4313, !4314, !4315}
!4311 = !DILocalVariable(name: "pwc", arg: 1, scope: !4306, file: !485, line: 100, type: !1984)
!4312 = !DILocalVariable(name: "s", arg: 2, scope: !4306, file: !485, line: 100, type: !46)
!4313 = !DILocalVariable(name: "n", arg: 3, scope: !4306, file: !485, line: 100, type: !49)
!4314 = !DILocalVariable(name: "ps", arg: 4, scope: !4306, file: !485, line: 100, type: !4309)
!4315 = !DILocalVariable(name: "ret", scope: !4306, file: !485, line: 130, type: !49)
!4316 = !DILocation(line: 0, scope: !4306)
!4317 = !DILocation(line: 105, column: 9, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4306, file: !485, line: 105, column: 7)
!4319 = !DILocation(line: 105, column: 7, scope: !4306)
!4320 = !DILocation(line: 117, column: 10, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4306, file: !485, line: 117, column: 7)
!4322 = !DILocation(line: 117, column: 7, scope: !4306)
!4323 = !DILocation(line: 130, column: 16, scope: !4306)
!4324 = !DILocation(line: 135, column: 11, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4306, file: !485, line: 135, column: 7)
!4326 = !DILocation(line: 135, column: 25, scope: !4325)
!4327 = !DILocation(line: 135, column: 30, scope: !4325)
!4328 = !DILocation(line: 135, column: 7, scope: !4306)
!4329 = !DILocalVariable(name: "ps", arg: 1, scope: !4330, file: !1958, line: 1135, type: !4309)
!4330 = distinct !DISubprogram(name: "mbszero", scope: !1958, file: !1958, line: 1135, type: !4331, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !4309}
!4333 = !{!4329}
!4334 = !DILocation(line: 0, scope: !4330, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 137, column: 5, scope: !4325)
!4336 = !DILocalVariable(name: "__dest", arg: 1, scope: !4337, file: !920, line: 57, type: !43)
!4337 = distinct !DISubprogram(name: "memset", scope: !920, file: !920, line: 57, type: !1967, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4338)
!4338 = !{!4336, !4339, !4340}
!4339 = !DILocalVariable(name: "__ch", arg: 2, scope: !4337, file: !920, line: 57, type: !6)
!4340 = !DILocalVariable(name: "__len", arg: 3, scope: !4337, file: !920, line: 57, type: !49)
!4341 = !DILocation(line: 0, scope: !4337, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 1137, column: 3, scope: !4330, inlinedAt: !4335)
!4343 = !DILocation(line: 59, column: 10, scope: !4337, inlinedAt: !4342)
!4344 = !DILocation(line: 137, column: 5, scope: !4325)
!4345 = !DILocation(line: 138, column: 11, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4306, file: !485, line: 138, column: 7)
!4347 = !DILocation(line: 138, column: 7, scope: !4306)
!4348 = !DILocation(line: 139, column: 5, scope: !4346)
!4349 = !DILocation(line: 143, column: 26, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4306, file: !485, line: 143, column: 7)
!4351 = !DILocation(line: 143, column: 41, scope: !4350)
!4352 = !DILocation(line: 143, column: 7, scope: !4306)
!4353 = !DILocation(line: 145, column: 15, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !485, line: 145, column: 11)
!4355 = distinct !DILexicalBlock(scope: !4350, file: !485, line: 144, column: 5)
!4356 = !DILocation(line: 145, column: 11, scope: !4355)
!4357 = !DILocation(line: 146, column: 32, scope: !4354)
!4358 = !DILocation(line: 146, column: 16, scope: !4354)
!4359 = !DILocation(line: 146, column: 14, scope: !4354)
!4360 = !DILocation(line: 146, column: 9, scope: !4354)
!4361 = !DILocation(line: 286, column: 1, scope: !4306)
!4362 = !DISubprogram(name: "mbsinit", scope: !4363, file: !4363, line: 293, type: !4364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !634)
!4363 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!6, !4366}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!4368 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !592, file: !592, line: 27, type: !3648, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !4369)
!4369 = !{!4370, !4371, !4372, !4373}
!4370 = !DILocalVariable(name: "ptr", arg: 1, scope: !4368, file: !592, line: 27, type: !43)
!4371 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4368, file: !592, line: 27, type: !49)
!4372 = !DILocalVariable(name: "size", arg: 3, scope: !4368, file: !592, line: 27, type: !49)
!4373 = !DILocalVariable(name: "nbytes", scope: !4368, file: !592, line: 29, type: !49)
!4374 = !DILocation(line: 0, scope: !4368)
!4375 = !DILocation(line: 30, column: 7, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4368, file: !592, line: 30, column: 7)
!4377 = !DILocalVariable(name: "ptr", arg: 1, scope: !4378, file: !1402, line: 2057, type: !43)
!4378 = distinct !DISubprogram(name: "rpl_realloc", scope: !1402, file: !1402, line: 2057, type: !1403, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !4379)
!4379 = !{!4377, !4380}
!4380 = !DILocalVariable(name: "size", arg: 2, scope: !4378, file: !1402, line: 2057, type: !49)
!4381 = !DILocation(line: 0, scope: !4378, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 37, column: 10, scope: !4368)
!4383 = !DILocation(line: 2059, column: 24, scope: !4378, inlinedAt: !4382)
!4384 = !DILocation(line: 2059, column: 10, scope: !4378, inlinedAt: !4382)
!4385 = !DILocation(line: 37, column: 3, scope: !4368)
!4386 = !DILocation(line: 32, column: 7, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4376, file: !592, line: 31, column: 5)
!4388 = !DILocation(line: 32, column: 13, scope: !4387)
!4389 = !DILocation(line: 33, column: 7, scope: !4387)
!4390 = !DILocation(line: 38, column: 1, scope: !4368)
!4391 = distinct !DISubprogram(name: "dup_safer", scope: !595, file: !595, line: 31, type: !1158, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !4392)
!4392 = !{!4393}
!4393 = !DILocalVariable(name: "fd", arg: 1, scope: !4391, file: !595, line: 31, type: !6)
!4394 = !DILocation(line: 0, scope: !4391)
!4395 = !DILocation(line: 33, column: 10, scope: !4391)
!4396 = !DILocation(line: 33, column: 3, scope: !4391)
!4397 = distinct !DISubprogram(name: "rpl_fcntl", scope: !501, file: !501, line: 202, type: !1689, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4398)
!4398 = !{!4399, !4400, !4401, !4412, !4413, !4416, !4418, !4422}
!4399 = !DILocalVariable(name: "fd", arg: 1, scope: !4397, file: !501, line: 202, type: !6)
!4400 = !DILocalVariable(name: "action", arg: 2, scope: !4397, file: !501, line: 202, type: !6)
!4401 = !DILocalVariable(name: "arg", scope: !4397, file: !501, line: 208, type: !4402)
!4402 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !330, line: 14, baseType: !4403)
!4403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4404, baseType: !4405)
!4404 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !334, size: 256, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4410, !4411}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4405, file: !4404, line: 208, baseType: !43, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4405, file: !4404, line: 208, baseType: !43, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4405, file: !4404, line: 208, baseType: !43, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4405, file: !4404, line: 208, baseType: !6, size: 32, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4405, file: !4404, line: 208, baseType: !6, size: 32, offset: 224)
!4412 = !DILocalVariable(name: "result", scope: !4397, file: !501, line: 211, type: !6)
!4413 = !DILocalVariable(name: "target", scope: !4414, file: !501, line: 216, type: !6)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !501, line: 215, column: 7)
!4415 = distinct !DILexicalBlock(scope: !4397, file: !501, line: 213, column: 5)
!4416 = !DILocalVariable(name: "target", scope: !4417, file: !501, line: 223, type: !6)
!4417 = distinct !DILexicalBlock(scope: !4415, file: !501, line: 222, column: 7)
!4418 = !DILocalVariable(name: "x", scope: !4419, file: !501, line: 418, type: !6)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !501, line: 417, column: 13)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !501, line: 261, column: 11)
!4421 = distinct !DILexicalBlock(scope: !4415, file: !501, line: 258, column: 7)
!4422 = !DILocalVariable(name: "p", scope: !4423, file: !501, line: 426, type: !43)
!4423 = distinct !DILexicalBlock(scope: !4420, file: !501, line: 425, column: 13)
!4424 = !DILocation(line: 0, scope: !4397)
!4425 = !DILocation(line: 208, column: 3, scope: !4397)
!4426 = !DILocation(line: 208, column: 11, scope: !4397)
!4427 = !DILocation(line: 209, column: 3, scope: !4397)
!4428 = !DILocation(line: 212, column: 3, scope: !4397)
!4429 = !DILocation(line: 216, column: 22, scope: !4414)
!4430 = !DILocation(line: 0, scope: !4414)
!4431 = !DILocalVariable(name: "fd", arg: 1, scope: !4432, file: !501, line: 444, type: !6)
!4432 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !501, file: !501, line: 444, type: !502, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4433)
!4433 = !{!4431, !4434, !4435}
!4434 = !DILocalVariable(name: "target", arg: 2, scope: !4432, file: !501, line: 444, type: !6)
!4435 = !DILocalVariable(name: "result", scope: !4432, file: !501, line: 446, type: !6)
!4436 = !DILocation(line: 0, scope: !4432, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 217, column: 18, scope: !4414)
!4438 = !DILocation(line: 479, column: 12, scope: !4432, inlinedAt: !4437)
!4439 = !DILocation(line: 223, column: 22, scope: !4417)
!4440 = !DILocation(line: 0, scope: !4417)
!4441 = !DILocation(line: 0, scope: !500, inlinedAt: !4442)
!4442 = distinct !DILocation(line: 224, column: 18, scope: !4417)
!4443 = !DILocation(line: 507, column: 12, scope: !4444, inlinedAt: !4442)
!4444 = distinct !DILexicalBlock(scope: !500, file: !501, line: 507, column: 7)
!4445 = !DILocation(line: 507, column: 9, scope: !4444, inlinedAt: !4442)
!4446 = !DILocation(line: 507, column: 7, scope: !500, inlinedAt: !4442)
!4447 = !DILocation(line: 509, column: 16, scope: !4448, inlinedAt: !4442)
!4448 = distinct !DILexicalBlock(scope: !4444, file: !501, line: 508, column: 5)
!4449 = !DILocation(line: 510, column: 13, scope: !4450, inlinedAt: !4442)
!4450 = distinct !DILexicalBlock(scope: !4448, file: !501, line: 510, column: 11)
!4451 = !DILocation(line: 510, column: 23, scope: !4450, inlinedAt: !4442)
!4452 = !DILocation(line: 510, column: 26, scope: !4450, inlinedAt: !4442)
!4453 = !DILocation(line: 510, column: 32, scope: !4450, inlinedAt: !4442)
!4454 = !DILocation(line: 510, column: 11, scope: !4448, inlinedAt: !4442)
!4455 = !DILocation(line: 512, column: 30, scope: !4456, inlinedAt: !4442)
!4456 = distinct !DILexicalBlock(scope: !4450, file: !501, line: 511, column: 9)
!4457 = !DILocation(line: 528, column: 19, scope: !512, inlinedAt: !4442)
!4458 = !DILocation(line: 0, scope: !4432, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 520, column: 20, scope: !4460, inlinedAt: !4442)
!4460 = distinct !DILexicalBlock(scope: !4450, file: !501, line: 519, column: 9)
!4461 = !DILocation(line: 479, column: 12, scope: !4432, inlinedAt: !4459)
!4462 = !DILocation(line: 521, column: 22, scope: !4463, inlinedAt: !4442)
!4463 = distinct !DILexicalBlock(scope: !4460, file: !501, line: 521, column: 15)
!4464 = !DILocation(line: 521, column: 15, scope: !4460, inlinedAt: !4442)
!4465 = !DILocation(line: 522, column: 32, scope: !4463, inlinedAt: !4442)
!4466 = !DILocation(line: 522, column: 13, scope: !4463, inlinedAt: !4442)
!4467 = !DILocation(line: 0, scope: !4432, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 527, column: 14, scope: !4444, inlinedAt: !4442)
!4469 = !DILocation(line: 479, column: 12, scope: !4432, inlinedAt: !4468)
!4470 = !DILocation(line: 0, scope: !4444, inlinedAt: !4442)
!4471 = !DILocation(line: 528, column: 9, scope: !512, inlinedAt: !4442)
!4472 = !DILocation(line: 530, column: 19, scope: !511, inlinedAt: !4442)
!4473 = !DILocation(line: 0, scope: !511, inlinedAt: !4442)
!4474 = !DILocation(line: 531, column: 17, scope: !515, inlinedAt: !4442)
!4475 = !DILocation(line: 531, column: 21, scope: !515, inlinedAt: !4442)
!4476 = !DILocation(line: 531, column: 54, scope: !515, inlinedAt: !4442)
!4477 = !DILocation(line: 531, column: 24, scope: !515, inlinedAt: !4442)
!4478 = !DILocation(line: 531, column: 68, scope: !515, inlinedAt: !4442)
!4479 = !DILocation(line: 531, column: 11, scope: !511, inlinedAt: !4442)
!4480 = !DILocation(line: 533, column: 29, scope: !514, inlinedAt: !4442)
!4481 = !DILocation(line: 0, scope: !514, inlinedAt: !4442)
!4482 = !DILocation(line: 534, column: 11, scope: !514, inlinedAt: !4442)
!4483 = !DILocation(line: 535, column: 17, scope: !514, inlinedAt: !4442)
!4484 = !DILocation(line: 537, column: 9, scope: !514, inlinedAt: !4442)
!4485 = !DILocation(line: 329, column: 22, scope: !4420)
!4486 = !DILocation(line: 330, column: 13, scope: !4420)
!4487 = !DILocation(line: 418, column: 23, scope: !4419)
!4488 = !DILocation(line: 0, scope: !4419)
!4489 = !DILocation(line: 419, column: 24, scope: !4419)
!4490 = !DILocation(line: 421, column: 13, scope: !4420)
!4491 = !DILocation(line: 426, column: 25, scope: !4423)
!4492 = !DILocation(line: 0, scope: !4423)
!4493 = !DILocation(line: 427, column: 24, scope: !4423)
!4494 = !DILocation(line: 429, column: 13, scope: !4420)
!4495 = !DILocation(line: 0, scope: !4415)
!4496 = !DILocation(line: 438, column: 3, scope: !4397)
!4497 = !DILocation(line: 441, column: 1, scope: !4397)
!4498 = !DILocation(line: 440, column: 3, scope: !4397)
!4499 = distinct !DISubprogram(name: "hard_locale", scope: !597, file: !597, line: 28, type: !4500, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4502)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!104, !6}
!4502 = !{!4503, !4504}
!4503 = !DILocalVariable(name: "category", arg: 1, scope: !4499, file: !597, line: 28, type: !6)
!4504 = !DILocalVariable(name: "locale", scope: !4499, file: !597, line: 30, type: !4505)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2056, elements: !4506)
!4506 = !{!4507}
!4507 = !DISubrange(count: 257)
!4508 = !DILocation(line: 0, scope: !4499)
!4509 = !DILocation(line: 30, column: 3, scope: !4499)
!4510 = !DILocation(line: 30, column: 8, scope: !4499)
!4511 = !DILocation(line: 32, column: 7, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4499, file: !597, line: 32, column: 7)
!4513 = !DILocation(line: 32, column: 7, scope: !4499)
!4514 = !DILocalVariable(name: "__s1", arg: 1, scope: !4515, file: !672, line: 1359, type: !46)
!4515 = distinct !DISubprogram(name: "streq", scope: !672, file: !672, line: 1359, type: !673, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4516)
!4516 = !{!4514, !4517}
!4517 = !DILocalVariable(name: "__s2", arg: 2, scope: !4515, file: !672, line: 1359, type: !46)
!4518 = !DILocation(line: 0, scope: !4515, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 35, column: 9, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4499, file: !597, line: 35, column: 7)
!4521 = !DILocation(line: 1361, column: 11, scope: !4515, inlinedAt: !4519)
!4522 = !DILocation(line: 1361, column: 10, scope: !4515, inlinedAt: !4519)
!4523 = !DILocation(line: 35, column: 29, scope: !4520)
!4524 = !DILocation(line: 0, scope: !4515, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 35, column: 32, scope: !4520)
!4526 = !DILocation(line: 1361, column: 11, scope: !4515, inlinedAt: !4525)
!4527 = !DILocation(line: 1361, column: 10, scope: !4515, inlinedAt: !4525)
!4528 = !DILocation(line: 35, column: 7, scope: !4499)
!4529 = !DILocation(line: 46, column: 3, scope: !4499)
!4530 = !DILocation(line: 47, column: 1, scope: !4499)
!4531 = distinct !DISubprogram(name: "setlocale_null_r", scope: !599, file: !599, line: 154, type: !4532, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !4534)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!6, !6, !8, !49}
!4534 = !{!4535, !4536, !4537}
!4535 = !DILocalVariable(name: "category", arg: 1, scope: !4531, file: !599, line: 154, type: !6)
!4536 = !DILocalVariable(name: "buf", arg: 2, scope: !4531, file: !599, line: 154, type: !8)
!4537 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4531, file: !599, line: 154, type: !49)
!4538 = !DILocation(line: 0, scope: !4531)
!4539 = !DILocation(line: 159, column: 10, scope: !4531)
!4540 = !DILocation(line: 159, column: 3, scope: !4531)
!4541 = distinct !DISubprogram(name: "setlocale_null", scope: !599, file: !599, line: 186, type: !4542, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !598, retainedNodes: !4544)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!46, !6}
!4544 = !{!4545}
!4545 = !DILocalVariable(name: "category", arg: 1, scope: !4541, file: !599, line: 186, type: !6)
!4546 = !DILocation(line: 0, scope: !4541)
!4547 = !DILocation(line: 189, column: 10, scope: !4541)
!4548 = !DILocation(line: 189, column: 3, scope: !4541)
!4549 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !601, file: !601, line: 35, type: !4542, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !4550)
!4550 = !{!4551, !4552}
!4551 = !DILocalVariable(name: "category", arg: 1, scope: !4549, file: !601, line: 35, type: !6)
!4552 = !DILocalVariable(name: "result", scope: !4549, file: !601, line: 37, type: !46)
!4553 = !DILocation(line: 0, scope: !4549)
!4554 = !DILocation(line: 37, column: 24, scope: !4549)
!4555 = !DILocation(line: 62, column: 3, scope: !4549)
!4556 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !601, file: !601, line: 66, type: !4532, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !4557)
!4557 = !{!4558, !4559, !4560, !4561, !4562}
!4558 = !DILocalVariable(name: "category", arg: 1, scope: !4556, file: !601, line: 66, type: !6)
!4559 = !DILocalVariable(name: "buf", arg: 2, scope: !4556, file: !601, line: 66, type: !8)
!4560 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4556, file: !601, line: 66, type: !49)
!4561 = !DILocalVariable(name: "result", scope: !4556, file: !601, line: 111, type: !46)
!4562 = !DILocalVariable(name: "length", scope: !4563, file: !601, line: 125, type: !49)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !601, line: 124, column: 5)
!4564 = distinct !DILexicalBlock(scope: !4556, file: !601, line: 113, column: 7)
!4565 = !DILocation(line: 0, scope: !4556)
!4566 = !DILocation(line: 0, scope: !4549, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 111, column: 24, scope: !4556)
!4568 = !DILocation(line: 37, column: 24, scope: !4549, inlinedAt: !4567)
!4569 = !DILocation(line: 113, column: 14, scope: !4564)
!4570 = !DILocation(line: 113, column: 7, scope: !4556)
!4571 = !DILocation(line: 116, column: 19, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !601, line: 116, column: 11)
!4573 = distinct !DILexicalBlock(scope: !4564, file: !601, line: 114, column: 5)
!4574 = !DILocation(line: 116, column: 11, scope: !4573)
!4575 = !DILocation(line: 120, column: 16, scope: !4572)
!4576 = !DILocation(line: 120, column: 9, scope: !4572)
!4577 = !DILocation(line: 125, column: 23, scope: !4563)
!4578 = !DILocation(line: 0, scope: !4563)
!4579 = !DILocation(line: 126, column: 18, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4563, file: !601, line: 126, column: 11)
!4581 = !DILocation(line: 126, column: 11, scope: !4563)
!4582 = !DILocation(line: 128, column: 39, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4580, file: !601, line: 127, column: 9)
!4584 = !DILocalVariable(name: "__dest", arg: 1, scope: !4585, file: !920, line: 26, type: !923)
!4585 = distinct !DISubprogram(name: "memcpy", scope: !920, file: !920, line: 26, type: !921, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !4586)
!4586 = !{!4584, !4587, !4588}
!4587 = !DILocalVariable(name: "__src", arg: 2, scope: !4585, file: !920, line: 26, type: !838)
!4588 = !DILocalVariable(name: "__len", arg: 3, scope: !4585, file: !920, line: 26, type: !49)
!4589 = !DILocation(line: 0, scope: !4585, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 128, column: 11, scope: !4583)
!4591 = !DILocation(line: 29, column: 10, scope: !4585, inlinedAt: !4590)
!4592 = !DILocation(line: 129, column: 11, scope: !4583)
!4593 = !DILocation(line: 133, column: 23, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !601, line: 133, column: 15)
!4595 = distinct !DILexicalBlock(scope: !4580, file: !601, line: 132, column: 9)
!4596 = !DILocation(line: 133, column: 15, scope: !4595)
!4597 = !DILocation(line: 138, column: 44, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !601, line: 134, column: 13)
!4599 = !DILocation(line: 0, scope: !4585, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 138, column: 15, scope: !4598)
!4601 = !DILocation(line: 29, column: 10, scope: !4585, inlinedAt: !4600)
!4602 = !DILocation(line: 139, column: 15, scope: !4598)
!4603 = !DILocation(line: 139, column: 32, scope: !4598)
!4604 = !DILocation(line: 140, column: 13, scope: !4598)
!4605 = !DILocation(line: 0, scope: !4564)
!4606 = !DILocation(line: 145, column: 1, scope: !4556)
