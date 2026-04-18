; ModuleID = 'src/expand.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mbbuf_t = type { i8*, %struct._IO_FILE*, i64, i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"  -i, --initial\0A         do not convert tabs after non blanks\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart, not 8\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 1, !dbg !0
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !131
@optarg = external local_unnamed_addr global i8*, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !45
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@expand.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !145
@.str.54 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !205
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !235
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !284
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !286
@n_tabs_allocated = internal global i64 0, align 8, !dbg !289
@.str.20 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.1.21 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3.23 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.4.24 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !291
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !293
@max_column_width = dso_local local_unnamed_addr global i64 0, align 8, !dbg !282
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !295
@.str.5.32 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !335
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.35, i32 0, i32 0), i8* null], align 8, !dbg !299
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !304
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !237
@.str.6.35 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.8.39 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9.44 = private unnamed_addr constant [71 x i8] c"  -t, --tabs=LIST\0A         use comma separated list of tab positions.\0A\00", align 1
@.str.10.66 = private unnamed_addr constant [305 x i8] c"         The last specified position can be prefixed with '/'\0A         to specify a tab size to use after the last\0A         explicitly specified tab stop.  Also a prefix of '+'\0A         can be used to align remaining tab stops relative to\0A         the last specified tab stop instead of the first column\0A\00", align 1
@.str.12.7 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@.str.13.8 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.14.27 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.15.28 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.16.29 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@oputs_.help_no_sgr.45 = internal unnamed_addr global i32 -1, align 4, !dbg !307
@.str.17.46 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.18.47 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.19.48 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.20.49 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.28.50 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.29.51 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.30.52 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31.53 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32.54 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33.55 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.34.56 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.35.57 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.36.58 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.37.59 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38.60 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.39.61 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.40.62 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.41.63 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.42.64 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.43.65 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), align 8, !dbg !336
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !341
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !346
@.str.72 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.73 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.74 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.75 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !348
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.76 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !384
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !354
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !380
@.str.1.82 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.84 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.83 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !382
@.str.4.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.78 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.79 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !387
@.str.103 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.104 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !393
@.str.107 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.109 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.110 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.111 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.112 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.113 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.114 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.115 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.116 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.109, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.110, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.111, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.114, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.116, i32 0, i32 0), i8* null], align 8, !dbg !423
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !435
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !453
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !483
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !490
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !455
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !492
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !441
@.str.10.119 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.117 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.120 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !460
@.str.127 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.128 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.130 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.131 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.132 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.133 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.134 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.135 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.136 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.137 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.138 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.139 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.140 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.141 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.142 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.143 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.148 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.149 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.150 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.151 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.152 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.153 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.154 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !498
@exit_failure = dso_local global i32 1, align 4, !dbg !506
@.str.169 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.167 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.168 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.176 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !512
@.str.181 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.182 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !606 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !610, metadata !DIExpression()), !dbg !611
  %3 = icmp eq i32 %0, 0, !dbg !612
  br i1 %3, label %9, label %4, !dbg !614

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !615, !tbaa !617
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !615
  %7 = load i8*, i8** @program_name, align 8, !dbg !615, !tbaa !617
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !615
  br label %60, !dbg !615

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !621
  %11 = load i8*, i8** @program_name, align 8, !dbg !621, !tbaa !617
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !621
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !623
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !617
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !623
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #33, !dbg !624
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !617
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #33, !dbg !624
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #33, !dbg !628
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !617
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #33, !dbg !628
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !631
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !631
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !632
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !632
  tail call void @emit_tab_list_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !633
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !634
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !634
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !635
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !636, metadata !DIExpression()) #33, !dbg !655
  %26 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !657
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %26) #33, !dbg !657
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !641, metadata !DIExpression()) #33, !dbg !658
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %26, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !650, metadata !DIExpression()) #33, !dbg !655
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !651, metadata !DIExpression()) #33, !dbg !655
  %27 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !659
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !651, metadata !DIExpression()) #33, !dbg !655
  br label %28, !dbg !660

28:                                               ; preds = %33, %9
  %29 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %30 = phi %struct.infomap* [ %34, %33 ], [ %27, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !651, metadata !DIExpression()) #33, !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !668
  call void @llvm.dbg.value(metadata i8* %29, metadata !667, metadata !DIExpression()) #33, !dbg !668
  %31 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %29) #34, !dbg !670
  %32 = icmp eq i32 %31, 0, !dbg !671
  br i1 %32, label %38, label %33, !dbg !660

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 1, !dbg !672
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !651, metadata !DIExpression()) #33, !dbg !655
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 0, !dbg !673
  %36 = load i8*, i8** %35, align 8, !dbg !673, !tbaa !674
  %37 = icmp eq i8* %36, null, !dbg !676
  br i1 %37, label %38, label %28, !dbg !677, !llvm.loop !678

38:                                               ; preds = %33, %28
  %39 = phi %struct.infomap* [ %30, %28 ], [ %34, %33 ]
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 1, !dbg !680
  %41 = load i8*, i8** %40, align 8, !dbg !680, !tbaa !682
  %42 = icmp eq i8* %41, null, !dbg !683
  %43 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %41, !dbg !684
  call void @llvm.dbg.value(metadata i8* %43, metadata !650, metadata !DIExpression()) #33, !dbg !655
  tail call void @emit_bug_reporting_address() #33, !dbg !685
  %44 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !686
  call void @llvm.dbg.value(metadata i8* %44, metadata !653, metadata !DIExpression()) #33, !dbg !655
  %45 = icmp eq i8* %44, null, !dbg !687
  br i1 %45, label %53, label %46, !dbg !689

46:                                               ; preds = %38
  %47 = tail call i32 @strncmp(i8* noundef nonnull %44, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #34, !dbg !690
  %48 = icmp eq i32 %47, 0, !dbg !690
  br i1 %48, label %53, label %49, !dbg !691

49:                                               ; preds = %46
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #33, !dbg !692
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !617
  %52 = tail call i32 @fputs_unlocked(i8* noundef %50, %struct._IO_FILE* noundef %51) #33, !dbg !692
  br label %53, !dbg !694

53:                                               ; preds = %38, %46, %49
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !695
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !667, metadata !DIExpression()) #33, !dbg !695
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !654, metadata !DIExpression()) #33, !dbg !655
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #33, !dbg !697
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %54, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !697
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #33, !dbg !698
  %57 = icmp eq i8* %43, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !698
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !698
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %56, i8* noundef %43, i8* noundef %58) #33, !dbg !698
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %26) #33, !dbg !699
  br label %60

60:                                               ; preds = %53, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !700
  unreachable, !dbg !700
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !701 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !705 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !47 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !52, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8* %0, metadata !53, metadata !DIExpression()), !dbg !710
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !711, !tbaa !712
  %3 = icmp eq i32 %2, -1, !dbg !714
  br i1 %3, label %4, label %16, !dbg !715

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #33, !dbg !716
  call void @llvm.dbg.value(metadata i8* %5, metadata !54, metadata !DIExpression()), !dbg !717
  %6 = icmp eq i8* %5, null, !dbg !718
  br i1 %6, label %14, label %7, !dbg !719

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !720, !tbaa !721
  %9 = icmp eq i8 %8, 0, !dbg !720
  br i1 %9, label %14, label %10, !dbg !722

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !661, metadata !DIExpression()) #33, !dbg !723
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), metadata !667, metadata !DIExpression()) #33, !dbg !723
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #34, !dbg !725
  %12 = icmp eq i32 %11, 0, !dbg !726
  %13 = zext i1 %12 to i32, !dbg !722
  br label %14, !dbg !722

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !727, !tbaa !712
  br label %16, !dbg !728

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !729
  %18 = icmp eq i32 %17, 0, !dbg !729
  br i1 %18, label %22, label %19, !dbg !731

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !732, !tbaa !617
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !732
  br label %121, !dbg !734

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !57, metadata !DIExpression()), !dbg !710
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #34, !dbg !735
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !736
  call void @llvm.dbg.value(metadata i8* %24, metadata !58, metadata !DIExpression()), !dbg !710
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !737
  call void @llvm.dbg.value(metadata i8* %25, metadata !59, metadata !DIExpression()), !dbg !710
  %26 = icmp eq i8* %25, null, !dbg !738
  br i1 %26, label %53, label %27, !dbg !739

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !740
  br i1 %28, label %53, label %29, !dbg !741

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !60, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i64 0, metadata !64, metadata !DIExpression()), !dbg !742
  %30 = icmp ult i8* %24, %25, !dbg !743
  br i1 %30, label %31, label %53, !dbg !744

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !710
  %33 = load i16*, i16** %32, align 8, !tbaa !617
  br label %34, !dbg !744

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !60, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i64 %36, metadata !64, metadata !DIExpression()), !dbg !742
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !745
  call void @llvm.dbg.value(metadata i8* %37, metadata !60, metadata !DIExpression()), !dbg !742
  %38 = load i8, i8* %35, align 1, !dbg !745, !tbaa !721
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !745
  %41 = load i16, i16* %40, align 2, !dbg !745, !tbaa !746
  %42 = lshr i16 %41, 13, !dbg !748
  %43 = and i16 %42, 1, !dbg !748
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !749
  call void @llvm.dbg.value(metadata i64 %45, metadata !64, metadata !DIExpression()), !dbg !742
  %46 = icmp ult i8* %37, %25, !dbg !743
  %47 = icmp ult i64 %45, 2, !dbg !750
  %48 = select i1 %46, i1 %47, i1 false, !dbg !750
  br i1 %48, label %34, label %49, !dbg !744, !llvm.loop !751

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !752
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !754
  %52 = xor i1 %50, true, !dbg !754
  br label %53, !dbg !754

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !710
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !57, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8* %54, metadata !59, metadata !DIExpression()), !dbg !710
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #34, !dbg !755
  call void @llvm.dbg.value(metadata i64 %56, metadata !65, metadata !DIExpression()), !dbg !710
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !756
  call void @llvm.dbg.value(metadata i8* %57, metadata !66, metadata !DIExpression()), !dbg !710
  br label %58, !dbg !757

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !710
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !57, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8* %59, metadata !66, metadata !DIExpression()), !dbg !710
  %61 = load i8, i8* %59, align 1, !dbg !758, !tbaa !721
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !759

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !760
  %64 = load i8, i8* %63, align 1, !dbg !763, !tbaa !721
  %65 = icmp ne i8 %64, 45, !dbg !764
  %66 = select i1 %65, i1 %60, i1 false, !dbg !765
  br label %67, !dbg !765

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !57, metadata !DIExpression()), !dbg !710
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !766
  %70 = load i16*, i16** %69, align 8, !dbg !766, !tbaa !617
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !766
  %73 = load i16, i16* %72, align 2, !dbg !766, !tbaa !746
  %74 = and i16 %73, 8192, !dbg !766
  %75 = icmp eq i16 %74, 0, !dbg !766
  br i1 %75, label %89, label %76, !dbg !768

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !769
  br i1 %77, label %91, label %78, !dbg !772

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !773
  %80 = load i8, i8* %79, align 1, !dbg !773, !tbaa !721
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !773
  %83 = load i16, i16* %82, align 2, !dbg !773, !tbaa !746
  %84 = and i16 %83, 8192, !dbg !773
  %85 = icmp eq i16 %84, 0, !dbg !773
  br i1 %85, label %86, label %91, !dbg !774

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !775
  br i1 %88, label %89, label %91, !dbg !775

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !777
  call void @llvm.dbg.value(metadata i8* %90, metadata !66, metadata !DIExpression()), !dbg !710
  br label %58, !dbg !757, !llvm.loop !778

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !780
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !780, !tbaa !617
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !780
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !781
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !667, metadata !DIExpression()) #33, !dbg !781
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !783
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !785
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !787
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !791
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !793
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !795
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !797
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !661, metadata !DIExpression()) #33, !dbg !799
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !126, metadata !DIExpression()), !dbg !710
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #34, !dbg !801
  %96 = icmp eq i32 %95, 0, !dbg !801
  br i1 %96, label %100, label %97, !dbg !803

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #34, !dbg !804
  %99 = icmp eq i32 %98, 0, !dbg !804
  br i1 %99, label %100, label %103, !dbg !805

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !806
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !806
  br label %106, !dbg !808

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !809
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !809
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !811, !tbaa !617
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !811
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !812, !tbaa !617
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !812
  %111 = ptrtoint i8* %59 to i64, !dbg !813
  %112 = sub i64 %111, %92, !dbg !813
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !813, !tbaa !617
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !813
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !814, !tbaa !617
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !814
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !617
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !815
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !816, !tbaa !617
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !816
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !817
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
declare !dbg !818 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !822 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !826 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !832 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [2 x i8], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !836, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i8** %1, metadata !837, metadata !DIExpression()), !dbg !845
  %8 = load i8*, i8** %1, align 8, !dbg !846, !tbaa !617
  tail call void @set_program_name(i8* noundef %8) #33, !dbg !847
  %9 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #33, !dbg !848
  %10 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #33, !dbg !849
  %11 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #33, !dbg !850
  %12 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !851
  store i8 1, i8* @convert_entire_line, align 1, !dbg !852, !tbaa !853
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  br label %15, !dbg !855

15:                                               ; preds = %25, %2
  %16 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @shortopts, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #33, !dbg !856
  call void @llvm.dbg.value(metadata i32 %16, metadata !838, metadata !DIExpression()), !dbg !845
  switch i32 %16, label %33 [
    i32 -1, label %34
    i32 105, label %17
    i32 116, label %18
    i32 48, label %20
    i32 49, label %20
    i32 50, label %20
    i32 51, label %20
    i32 52, label %20
    i32 53, label %20
    i32 54, label %20
    i32 55, label %20
    i32 56, label %20
    i32 57, label %20
    i32 -2, label %28
    i32 -3, label %29
  ], !dbg !855

17:                                               ; preds = %15
  store i8 0, i8* @convert_entire_line, align 1, !dbg !857, !tbaa !853
  br label %25, !dbg !858

18:                                               ; preds = %15
  %19 = load i8*, i8** @optarg, align 8, !dbg !859, !tbaa !617
  call void @parse_tab_stops(i8* noundef %19) #33, !dbg !860
  br label %25, !dbg !861

20:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %21 = load i8*, i8** @optarg, align 8, !dbg !862, !tbaa !617
  %22 = icmp eq i8* %21, null, !dbg !862
  br i1 %22, label %26, label %23, !dbg !863

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !864
  call void @parse_tab_stops(i8* noundef nonnull %24) #33, !dbg !865
  br label %25, !dbg !865

25:                                               ; preds = %23, %26, %18, %17
  br label %15, !dbg !856, !llvm.loop !866

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %13) #33, !dbg !868
  call void @llvm.dbg.declare(metadata [2 x i8]* %7, metadata !839, metadata !DIExpression()), !dbg !869
  %27 = trunc i32 %16 to i8, !dbg !870
  store i8 %27, i8* %13, align 4, !dbg !871, !tbaa !721
  store i8 0, i8* %14, align 1, !dbg !872, !tbaa !721
  call void @parse_tab_stops(i8* noundef nonnull %13) #33, !dbg !873
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %13) #33, !dbg !874
  br label %25

28:                                               ; preds = %15
  call void @usage(i32 noundef 0) #37, !dbg !875
  unreachable, !dbg !875

29:                                               ; preds = %15
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !876, !tbaa !617
  %31 = load i8*, i8** @Version, align 8, !dbg !876, !tbaa !617
  %32 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #33, !dbg !876
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %31, i8* noundef %32, i8* noundef null) #33, !dbg !876
  call void @exit(i32 noundef 0) #35, !dbg !876
  unreachable, !dbg !876

33:                                               ; preds = %15
  call void @usage(i32 noundef 1) #37, !dbg !877
  unreachable, !dbg !877

34:                                               ; preds = %15
  call void @finalize_tab_stops() #33, !dbg !878
  %35 = load i32, i32* @optind, align 4, !dbg !879, !tbaa !712
  %36 = icmp slt i32 %35, %0, !dbg !880
  %37 = sext i32 %35 to i64, !dbg !879
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !879
  %39 = select i1 %36, i8** %38, i8** null, !dbg !879
  call void @set_file_list(i8** noundef %39) #33, !dbg !881
  %40 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef null) #33, !dbg !882
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !151, metadata !DIExpression()) #33, !dbg !884
  %41 = icmp eq %struct._IO_FILE* %40, null, !dbg !885
  br i1 %41, label %260, label %42, !dbg !887

42:                                               ; preds = %34
  %43 = bitcast i64* %5 to i8*
  %44 = bitcast %struct.__mbstate_t* %3 to i8*
  %45 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %3, i64 0, i32 0
  %46 = bitcast i32* %4 to i8*
  br label %47, !dbg !888

47:                                               ; preds = %258, %42
  %48 = phi i64 [ %147, %258 ], [ 0, %42 ], !dbg !884
  %49 = phi i64 [ %146, %258 ], [ 0, %42 ], !dbg !884
  %50 = phi %struct._IO_FILE* [ %62, %258 ], [ %40, %42 ], !dbg !889
  %51 = phi %struct._IO_FILE* [ %148, %258 ], [ %40, %42 ], !dbg !884
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %50, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 262144, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %49, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %48, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %51, metadata !151, metadata !DIExpression()) #33, !dbg !884
  call void @llvm.dbg.value(metadata i8 1, metadata !177, metadata !DIExpression()) #33, !dbg !900
  call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()) #33, !dbg !900
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #33, !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !184, metadata !DIExpression()) #33, !dbg !900
  store i64 0, i64* %5, align 8, !dbg !902, !tbaa !903
  br label %52, !dbg !905

52:                                               ; preds = %253, %47
  %53 = phi i64 [ %48, %47 ], [ %147, %253 ], !dbg !884
  %54 = phi i64 [ %49, %47 ], [ %146, %253 ], !dbg !884
  %55 = phi %struct._IO_FILE* [ %50, %47 ], [ %62, %253 ], !dbg !889
  %56 = phi i64 [ 0, %47 ], [ %255, %253 ], !dbg !900
  %57 = phi i1 [ true, %47 ], [ %256, %253 ]
  %58 = phi %struct._IO_FILE* [ %51, %47 ], [ %148, %253 ], !dbg !884
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %55, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 262144, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %54, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %53, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, metadata !151, metadata !DIExpression()) #33, !dbg !884
  call void @llvm.dbg.value(metadata i8 poison, metadata !177, metadata !DIExpression()) #33, !dbg !900
  call void @llvm.dbg.value(metadata i64 %56, metadata !178, metadata !DIExpression()) #33, !dbg !900
  br label %59, !dbg !906

59:                                               ; preds = %134, %52
  %60 = phi i64 [ %53, %52 ], [ 0, %134 ], !dbg !884
  %61 = phi i64 [ %54, %52 ], [ 0, %134 ], !dbg !884
  %62 = phi %struct._IO_FILE* [ %55, %52 ], [ %138, %134 ], !dbg !884
  %63 = phi %struct._IO_FILE* [ %58, %52 ], [ %138, %134 ], !dbg !884
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 262144, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %61, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %60, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !151, metadata !DIExpression()) #33, !dbg !884
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !907, metadata !DIExpression()) #33, !dbg !917
  %64 = sub nsw i64 %60, %61, !dbg !919
  call void @llvm.dbg.value(metadata i64 %64, metadata !912, metadata !DIExpression()) #33, !dbg !917
  %65 = icmp slt i64 %64, 4, !dbg !920
  br i1 %65, label %66, label %87, !dbg !921

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !922, metadata !DIExpression()) #33, !dbg !928
  %67 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %62, i64 0, i32 0, !dbg !930
  %68 = load i32, i32* %67, align 8, !dbg !930, !tbaa !931
  %69 = and i32 %68, 16, !dbg !933
  %70 = icmp eq i32 %69, 0, !dbg !933
  br i1 %70, label %71, label %82, !dbg !934

71:                                               ; preds = %66
  %72 = icmp sgt i64 %64, 0, !dbg !935
  br i1 %72, label %73, label %76, !dbg !937

73:                                               ; preds = %71
  %74 = getelementptr inbounds [262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 %61, !dbg !938
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), metadata !940, metadata !DIExpression()) #33, !dbg !948
  call void @llvm.dbg.value(metadata i8* %74, metadata !946, metadata !DIExpression()) #33, !dbg !948
  call void @llvm.dbg.value(metadata i64 %64, metadata !947, metadata !DIExpression()) #33, !dbg !948
  %75 = call i8* @__memmove_chk(i8* noundef nonnull getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), i8* noundef nonnull %74, i64 noundef %64, i64 noundef 262144) #33, !dbg !950
  call void @llvm.dbg.value(metadata i64 %64, metadata !913, metadata !DIExpression()) #33, !dbg !951
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i64 [ %64, %73 ], [ 0, %71 ], !dbg !952
  call void @llvm.dbg.value(metadata i64 %77, metadata !913, metadata !DIExpression()) #33, !dbg !951
  %78 = getelementptr inbounds [262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 %77, !dbg !953
  %79 = sub nuw nsw i64 262144, %77, !dbg !953
  %80 = call i64 @fread_unlocked(i8* noundef nonnull %78, i64 noundef 1, i64 noundef %79, %struct._IO_FILE* noundef nonnull %62) #33, !dbg !953
  %81 = add i64 %80, %77, !dbg !954
  call void @llvm.dbg.value(metadata i64 %81, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %81, metadata !912, metadata !DIExpression()) #33, !dbg !917
  br label %82, !dbg !955

82:                                               ; preds = %76, %66
  %83 = phi i64 [ %81, %76 ], [ %60, %66 ], !dbg !884
  %84 = phi i64 [ 0, %76 ], [ %61, %66 ], !dbg !884
  %85 = phi i64 [ %81, %76 ], [ %64, %66 ], !dbg !917
  call void @llvm.dbg.value(metadata i64 %84, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %83, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %85, metadata !912, metadata !DIExpression()) #33, !dbg !917
  %86 = icmp slt i64 %85, 1, !dbg !956
  br i1 %86, label %134, label %87, !dbg !958

87:                                               ; preds = %82, %59
  %88 = phi i64 [ %83, %82 ], [ %60, %59 ], !dbg !884
  %89 = phi i64 [ %84, %82 ], [ %61, %59 ], !dbg !884
  call void @llvm.dbg.value(metadata i64 %89, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i64 %88, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !884
  %90 = getelementptr inbounds [262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 %89, !dbg !959
  call void @llvm.dbg.value(metadata i8* %90, metadata !960, metadata !DIExpression()) #33, !dbg !980
  call void @llvm.dbg.value(metadata !DIArgList(i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), i64 undef), metadata !965, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #33, !dbg !980
  %91 = load i8, i8* %90, align 1, !dbg !982, !tbaa !721
  call void @llvm.dbg.value(metadata i8 %91, metadata !966, metadata !DIExpression()) #33, !dbg !980
  call void @llvm.dbg.value(metadata i8 %91, metadata !983, metadata !DIExpression()) #33, !dbg !988
  %92 = icmp sgt i8 %91, -1, !dbg !991
  br i1 %92, label %93, label %96, !dbg !992

93:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i64 1, metadata !993, metadata !DIExpression()) #33, !dbg !999
  %94 = zext i8 %91 to i64, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %94, metadata !998, metadata !DIExpression()) #33, !dbg !999
  %95 = or i64 %94, 1099511627776, !dbg !1001
  br label %117, !dbg !1002

96:                                               ; preds = %87
  call void @llvm.dbg.value(metadata !DIArgList(i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), i64 %88), metadata !965, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #33, !dbg !980
  %97 = getelementptr inbounds [262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 %88, !dbg !1003
  call void @llvm.dbg.value(metadata i8* %97, metadata !965, metadata !DIExpression()) #33, !dbg !980
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #33, !dbg !1004
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %3, metadata !967, metadata !DIExpression()) #33, !dbg !1005
  store i32 0, i32* %45, align 4, !dbg !1006, !tbaa !1007
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #33, !dbg !1009
  %98 = ptrtoint i8* %97 to i64, !dbg !1010
  %99 = ptrtoint i8* %90 to i64, !dbg !1010
  %100 = sub i64 %98, %99, !dbg !1010
  call void @llvm.dbg.value(metadata i32* %4, metadata !978, metadata !DIExpression(DW_OP_deref)) #33, !dbg !980
  %101 = call i64 @mbrtoc32(i32* noundef nonnull %4, i8* noundef nonnull %90, i64 noundef %100, %struct.__mbstate_t* noundef nonnull %3) #33, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %101, metadata !979, metadata !DIExpression()) #33, !dbg !980
  %102 = icmp slt i64 %101, 0, !dbg !1012
  br i1 %102, label %103, label %107, !dbg !1014, !prof !1015

103:                                              ; preds = %96
  call void @llvm.dbg.value(metadata i8 %91, metadata !1016, metadata !DIExpression()) #33, !dbg !1021
  %104 = zext i8 %91 to i64, !dbg !1023
  %105 = shl nuw nsw i64 %104, 32, !dbg !1023
  %106 = or i64 %105, 1099511627776, !dbg !1023
  br label %115, !dbg !1024

107:                                              ; preds = %96
  %108 = load i32, i32* %4, align 4, !dbg !1025, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %108, metadata !978, metadata !DIExpression()) #33, !dbg !980
  call void @llvm.dbg.value(metadata i32 %108, metadata !998, metadata !DIExpression()) #33, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %101, metadata !993, metadata !DIExpression()) #33, !dbg !1026
  %109 = icmp ne i64 %101, 0, !dbg !1028
  call void @llvm.assume(i1 %109) #33, !dbg !1028
  %110 = icmp ult i64 %101, 5, !dbg !1029
  call void @llvm.assume(i1 %110) #33, !dbg !1029
  %111 = icmp ult i32 %108, 1114112, !dbg !1030
  call void @llvm.assume(i1 %111) #33, !dbg !1030
  %112 = shl nuw nsw i64 %101, 40, !dbg !1031
  %113 = zext i32 %108 to i64, !dbg !1031
  %114 = or i64 %112, %113, !dbg !1031
  br label %115, !dbg !1032

115:                                              ; preds = %107, %103
  %116 = phi i64 [ %106, %103 ], [ %114, %107 ], !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #33, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #33, !dbg !1033
  br label %117

117:                                              ; preds = %115, %93
  %118 = phi i64 [ %95, %93 ], [ %116, %115 ], !dbg !980
  call void @llvm.dbg.value(metadata i64 %118, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !917
  call void @llvm.dbg.value(metadata i64 %118, metadata !916, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #33, !dbg !917
  call void @llvm.dbg.value(metadata i64 %118, metadata !916, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !917
  call void @llvm.dbg.value(metadata i64 %118, metadata !916, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #33, !dbg !917
  %119 = and i64 %118, 1095216660480, !dbg !1034
  %120 = icmp eq i64 %119, 0, !dbg !1034
  br i1 %120, label %121, label %124, !dbg !1036

121:                                              ; preds = %117
  %122 = lshr i64 %118, 40, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %122, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !917
  call void @llvm.dbg.value(metadata i64 %118, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !917
  %123 = and i64 %122, 255, !dbg !1038
  call void @llvm.dbg.value(metadata !DIArgList(i64 %89, i64 %123), metadata !152, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  br label %127, !dbg !1039

124:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i64 %89, metadata !152, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  %125 = load i8, i8* %90, align 1, !dbg !1040, !tbaa !721
  %126 = zext i8 %125 to i64, !dbg !1042
  call void @llvm.dbg.value(metadata i8 %125, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !917
  br label %127

127:                                              ; preds = %124, %121
  %128 = phi i64 [ %123, %121 ], [ 1, %124 ]
  %129 = phi i64 [ %118, %121 ], [ %126, %124 ], !dbg !917
  %130 = add nsw i64 %128, %89, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %130, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !884
  call void @llvm.dbg.value(metadata i32 undef, metadata !916, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !917
  %131 = and i64 %118, -4294967296
  call void @llvm.dbg.value(metadata i64 %88, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !884
  %132 = trunc i64 %129 to i32, !dbg !1044
  call void @llvm.dbg.value(metadata i32 %132, metadata !165, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !900
  call void @llvm.dbg.value(metadata i64 %131, metadata !165, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #33, !dbg !900
  call void @llvm.dbg.value(metadata i64 %131, metadata !165, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !900
  call void @llvm.dbg.value(metadata !DIArgList(i64 %131, i64 undef), metadata !165, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #33, !dbg !900
  %133 = icmp eq i32 %132, -1, !dbg !1045
  br i1 %133, label %134, label %140, !dbg !1046

134:                                              ; preds = %127, %82
  %135 = phi i64 [ %131, %127 ], [ 0, %82 ]
  %136 = phi i64 [ %130, %127 ], [ %84, %82 ]
  %137 = phi i64 [ %88, %127 ], [ %83, %82 ]
  %138 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef %63) #33, !dbg !1047
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %138, metadata !151, metadata !DIExpression()) #33, !dbg !884
  %139 = icmp eq %struct._IO_FILE* %138, null, !dbg !1046
  br i1 %139, label %142, label %59, !dbg !906, !llvm.loop !1048

140:                                              ; preds = %127
  %141 = trunc i64 %129 to i32, !dbg !1044
  br label %142, !dbg !1044

142:                                              ; preds = %134, %140
  %143 = phi i1 [ false, %140 ], [ true, %134 ]
  %144 = phi i32 [ %141, %140 ], [ -1, %134 ]
  %145 = phi i64 [ %131, %140 ], [ %135, %134 ]
  %146 = phi i64 [ %130, %140 ], [ %136, %134 ]
  %147 = phi i64 [ %88, %140 ], [ %137, %134 ]
  %148 = phi %struct._IO_FILE* [ %63, %140 ], [ null, %134 ], !dbg !884
  %149 = lshr i64 %145, 40, !dbg !1044
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %148, metadata !151, metadata !DIExpression()) #33, !dbg !884
  br i1 %57, label %150, label %229, !dbg !1050

150:                                              ; preds = %142
  %151 = load i8, i8* @convert_entire_line, align 1, !dbg !1051, !tbaa !853, !range !1052
  %152 = icmp eq i8 %151, 0, !dbg !1051
  br i1 %152, label %153, label %156, !dbg !1053

153:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i32 %132, metadata !1054, metadata !DIExpression()) #33, !dbg !1059
  call void @llvm.dbg.value(metadata i32 %132, metadata !1061, metadata !DIExpression()) #33, !dbg !1069
  %154 = call i32 @iswblank(i32 noundef %144) #33, !dbg !1071
  %155 = icmp ne i32 %154, 0, !dbg !1072
  br label %156, !dbg !1053

156:                                              ; preds = %153, %150
  %157 = phi i1 [ true, %150 ], [ %155, %153 ]
  call void @llvm.dbg.value(metadata i1 %157, metadata !177, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !900
  switch i32 %144, label %218 [
    i32 9, label %158
    i32 8, label %210
  ], !dbg !1073

158:                                              ; preds = %156
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #33, !dbg !1074
  call void @llvm.dbg.value(metadata i64* %5, metadata !184, metadata !DIExpression(DW_OP_deref)) #33, !dbg !900
  call void @llvm.dbg.value(metadata i8* %6, metadata !185, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1075
  %159 = call i64 @get_next_tab_column(i64 noundef %56, i64* noundef nonnull %5, i8* noundef nonnull %6) #33, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %159, metadata !191, metadata !DIExpression()) #33, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %56, metadata !178, metadata !DIExpression()) #33, !dbg !900
  %160 = add nsw i64 %56, 1, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %160, metadata !178, metadata !DIExpression()) #33, !dbg !900
  %161 = icmp slt i64 %160, %159, !dbg !1078
  br i1 %161, label %162, label %187, !dbg !1079

162:                                              ; preds = %158, %184
  %163 = phi i64 [ %185, %184 ], [ %160, %158 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1080, metadata !DIExpression()) #33, !dbg !1085
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1088, !tbaa !617
  %165 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %164, i64 0, i32 5, !dbg !1088
  %166 = load i8*, i8** %165, align 8, !dbg !1088, !tbaa !1089
  %167 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %164, i64 0, i32 6, !dbg !1088
  %168 = load i8*, i8** %167, align 8, !dbg !1088, !tbaa !1090
  %169 = icmp ult i8* %166, %168, !dbg !1088
  br i1 %169, label %170, label %172, !dbg !1088, !prof !1091

170:                                              ; preds = %162
  %171 = getelementptr inbounds i8, i8* %166, i64 1, !dbg !1088
  store i8* %171, i8** %165, align 8, !dbg !1088, !tbaa !1089
  store i8 32, i8* %166, align 1, !dbg !1088, !tbaa !721
  br label %184, !dbg !1092

172:                                              ; preds = %162
  %173 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %164, i32 noundef 32) #33, !dbg !1088
  %174 = icmp slt i32 %173, 0, !dbg !1093
  br i1 %174, label %175, label %184, !dbg !1092

175:                                              ; preds = %172
  %176 = tail call i32* @__errno_location() #36, !dbg !1094
  %177 = load i32, i32* %176, align 4, !dbg !1094, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %177, metadata !1097, metadata !DIExpression()) #33, !dbg !1099
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1100, !tbaa !617
  %179 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %178) #33, !dbg !1100
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1101, !tbaa !617
  %181 = call i32 @fpurge(%struct._IO_FILE* noundef %180) #33, !dbg !1102
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1103, !tbaa !617
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %182) #33, !dbg !1103
  %183 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #33, !dbg !1104
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %177, i8* noundef %183) #33, !dbg !1104
  unreachable, !dbg !1104

184:                                              ; preds = %172, %170
  call void @llvm.dbg.value(metadata i64 %163, metadata !178, metadata !DIExpression()) #33, !dbg !900
  %185 = add i64 %163, 1, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %185, metadata !178, metadata !DIExpression()) #33, !dbg !900
  %186 = icmp eq i64 %185, %159, !dbg !1078
  br i1 %186, label %187, label %162, !dbg !1079, !llvm.loop !1105

187:                                              ; preds = %184, %158
  %188 = phi i64 [ %160, %158 ], [ %159, %184 ], !dbg !1077
  call void @llvm.dbg.value(metadata i32 32, metadata !1080, metadata !DIExpression()) #33, !dbg !1107
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1110, !tbaa !617
  %190 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %189, i64 0, i32 5, !dbg !1110
  %191 = load i8*, i8** %190, align 8, !dbg !1110, !tbaa !1089
  %192 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %189, i64 0, i32 6, !dbg !1110
  %193 = load i8*, i8** %192, align 8, !dbg !1110, !tbaa !1090
  %194 = icmp ult i8* %191, %193, !dbg !1110
  br i1 %194, label %195, label %197, !dbg !1110, !prof !1091

195:                                              ; preds = %187
  %196 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1110
  store i8* %196, i8** %190, align 8, !dbg !1110, !tbaa !1089
  store i8 32, i8* %191, align 1, !dbg !1110, !tbaa !721
  br label %209, !dbg !1111

197:                                              ; preds = %187
  %198 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %189, i32 noundef 32) #33, !dbg !1110
  %199 = icmp slt i32 %198, 0, !dbg !1112
  br i1 %199, label %200, label %209, !dbg !1111

200:                                              ; preds = %197
  %201 = tail call i32* @__errno_location() #36, !dbg !1113
  %202 = load i32, i32* %201, align 4, !dbg !1113, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %202, metadata !1097, metadata !DIExpression()) #33, !dbg !1115
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1116, !tbaa !617
  %204 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %203) #33, !dbg !1116
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1117, !tbaa !617
  %206 = call i32 @fpurge(%struct._IO_FILE* noundef %205) #33, !dbg !1118
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1119, !tbaa !617
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %207) #33, !dbg !1119
  %208 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #33, !dbg !1120
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %202, i8* noundef %208) #33, !dbg !1120
  unreachable, !dbg !1120

209:                                              ; preds = %197, %195
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #33, !dbg !1121
  br label %253

210:                                              ; preds = %156
  %211 = icmp ne i64 %56, 0, !dbg !1122
  %212 = sext i1 %211 to i64
  %213 = add i64 %56, %212, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %213, metadata !178, metadata !DIExpression()) #33, !dbg !900
  %214 = load i64, i64* %5, align 8, !dbg !1125, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %214, metadata !184, metadata !DIExpression()) #33, !dbg !900
  %215 = icmp ne i64 %214, 0, !dbg !1126
  %216 = sext i1 %215 to i64
  %217 = add i64 %214, %216, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %217, metadata !184, metadata !DIExpression()) #33, !dbg !900
  store i64 %217, i64* %5, align 8, !dbg !1127, !tbaa !903
  br label %229, !dbg !1128

218:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i32 %132, metadata !1129, metadata !DIExpression()) #33, !dbg !1134
  %219 = call i32 @wcwidth(i32 noundef %144) #33, !dbg !1136
  call void @llvm.dbg.value(metadata i32 %219, metadata !192, metadata !DIExpression()) #33, !dbg !1137
  %220 = icmp slt i32 %219, 0, !dbg !1138
  %221 = select i1 %220, i32 1, i32 %219, !dbg !1138
  %222 = zext i32 %221 to i64, !dbg !1138
  %223 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %56, i64 %222) #33, !dbg !1138
  %224 = extractvalue { i64, i1 } %223, 1, !dbg !1138
  call void @llvm.dbg.value(metadata i64 undef, metadata !178, metadata !DIExpression()) #33, !dbg !900
  br i1 %224, label %225, label %227, !dbg !1140

225:                                              ; preds = %218
  %226 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #33, !dbg !1141
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %226) #33, !dbg !1141
  unreachable, !dbg !1141

227:                                              ; preds = %218
  %228 = extractvalue { i64, i1 } %223, 0, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %228, metadata !178, metadata !DIExpression()) #33, !dbg !900
  br label %229

229:                                              ; preds = %227, %210, %142
  %230 = phi i32 [ 8, %210 ], [ %144, %227 ], [ %144, %142 ]
  %231 = phi i64 [ %213, %210 ], [ %228, %227 ], [ %56, %142 ], !dbg !900
  %232 = phi i1 [ %157, %210 ], [ %157, %227 ], [ false, %142 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !177, metadata !DIExpression()) #33, !dbg !900
  call void @llvm.dbg.value(metadata i64 %231, metadata !178, metadata !DIExpression()) #33, !dbg !900
  br i1 %143, label %259, label %233, !dbg !1142

233:                                              ; preds = %229
  %234 = and i64 %149, 255, !dbg !1143
  %235 = icmp sge i64 %146, %234, !dbg !1144
  call void @llvm.assume(i1 %235) #33, !dbg !1144
  call void @llvm.dbg.value(metadata !DIArgList(i64 %131, i64 %149), metadata !1145, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)) #33, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %149, metadata !1145, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !1151
  call void @llvm.dbg.value(metadata !DIArgList(i64 %131, i64 %149), metadata !1145, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #33, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !1150, metadata !DIExpression()) #33, !dbg !1151
  %236 = sub nsw i64 %146, %234, !dbg !1153
  %237 = getelementptr inbounds [262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 %236, !dbg !1154
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1143, !tbaa !617
  %239 = call i64 @fwrite_unlocked(i8* noundef nonnull %237, i64 noundef 1, i64 noundef %234, %struct._IO_FILE* noundef %238) #33, !dbg !1143
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1155, !tbaa !617
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %240, metadata !1157, metadata !DIExpression()) #33, !dbg !1160
  %241 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %240, i64 0, i32 0, !dbg !1162
  %242 = load i32, i32* %241, align 8, !dbg !1162, !tbaa !931
  %243 = and i32 %242, 32, !dbg !1155
  %244 = icmp eq i32 %243, 0, !dbg !1155
  br i1 %244, label %253, label %245, !dbg !1163

245:                                              ; preds = %233
  %246 = tail call i32* @__errno_location() #36, !dbg !1164
  %247 = load i32, i32* %246, align 4, !dbg !1164, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %247, metadata !1097, metadata !DIExpression()) #33, !dbg !1166
  %248 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %240) #33, !dbg !1167
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1168, !tbaa !617
  %250 = call i32 @fpurge(%struct._IO_FILE* noundef %249) #33, !dbg !1169
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1170, !tbaa !617
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %251) #33, !dbg !1170
  %252 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #33, !dbg !1171
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %247, i8* noundef %252) #33, !dbg !1171
  unreachable, !dbg !1171

253:                                              ; preds = %233, %209
  %254 = phi i32 [ 9, %209 ], [ %230, %233 ]
  %255 = phi i64 [ %188, %209 ], [ %231, %233 ], !dbg !1172
  %256 = phi i1 [ %157, %209 ], [ %232, %233 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !177, metadata !DIExpression()) #33, !dbg !900
  call void @llvm.dbg.value(metadata i64 %255, metadata !178, metadata !DIExpression()) #33, !dbg !900
  %257 = icmp eq i32 %254, 10, !dbg !1173
  br i1 %257, label %258, label %52, !dbg !1174, !llvm.loop !1175

258:                                              ; preds = %253
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #33, !dbg !1177
  br label %47, !llvm.loop !1178

259:                                              ; preds = %229
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #33, !dbg !1177
  br label %260

260:                                              ; preds = %34, %259
  call void @cleanup_file_list_stdin() #33, !dbg !1179
  %261 = load i32, i32* @exit_status, align 4, !dbg !1180, !tbaa !712
  ret i32 %261, !dbg !1181
}

; Function Attrs: nounwind
declare !dbg !1182 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1185 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1186 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1189 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1195 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind
declare !dbg !1202 i32 @iswblank(i32 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !1204 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1205 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1208 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #12 !dbg !1213 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1217, metadata !DIExpression()), !dbg !1220
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1221, !tbaa !903
  %3 = icmp eq i64 %2, 0, !dbg !1221
  br i1 %3, label %9, label %4, !dbg !1221

4:                                                ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1222, !tbaa !617
  %6 = add nsw i64 %2, -1, !dbg !1223
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1222
  %8 = load i64, i64* %7, align 8, !dbg !1222, !tbaa !903
  br label %9, !dbg !1221

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1221
  call void @llvm.dbg.value(metadata i64 %10, metadata !1218, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 undef, metadata !1219, metadata !DIExpression()), !dbg !1220
  %11 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1224, !tbaa !903
  %12 = icmp eq i64 %2, %11, !dbg !1226
  br i1 %12, label %15, label %13, !dbg !1227

13:                                               ; preds = %9
  %14 = load i64*, i64** @tab_list, align 8, !dbg !1228, !tbaa !617
  br label %20, !dbg !1227

15:                                               ; preds = %9
  %16 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1229, !tbaa !617
  %17 = tail call nonnull i8* @xpalloc(i8* noundef %16, i64* noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #33, !dbg !1230
  store i8* %17, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1231, !tbaa !617
  %18 = bitcast i8* %17 to i64*, !dbg !1232
  %19 = load i64, i64* @first_free_tab, align 8, !dbg !1233, !tbaa !903
  br label %20, !dbg !1232

20:                                               ; preds = %13, %15
  %21 = phi i64 [ %2, %13 ], [ %19, %15 ], !dbg !1233
  %22 = phi i64* [ %14, %13 ], [ %18, %15 ], !dbg !1228
  %23 = icmp sgt i64 %10, %0, !dbg !1234
  %24 = sub nsw i64 %0, %10, !dbg !1235
  %25 = select i1 %23, i64 0, i64 %24, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %25, metadata !1219, metadata !DIExpression()), !dbg !1220
  %26 = add nsw i64 %21, 1, !dbg !1233
  store i64 %26, i64* @first_free_tab, align 8, !dbg !1233, !tbaa !903
  %27 = getelementptr inbounds i64, i64* %22, i64 %21, !dbg !1228
  store i64 %0, i64* %27, align 8, !dbg !1236, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %25, metadata !1237, metadata !DIExpression()), !dbg !1240
  %28 = load i64, i64* @max_column_width, align 8, !dbg !1242, !tbaa !903
  %29 = icmp slt i64 %28, %25, !dbg !1244
  br i1 %29, label %30, label %31, !dbg !1245

30:                                               ; preds = %20
  store i64 %25, i64* @max_column_width, align 8, !dbg !1246
  br label %31, !dbg !1249

31:                                               ; preds = %20, %30
  ret void, !dbg !1250
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(i8* noundef nonnull %0) local_unnamed_addr #12 !dbg !1251 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1253, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 0, metadata !1254, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i64 0, metadata !1255, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 0, metadata !1256, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 0, metadata !1257, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8* null, metadata !1258, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 1, metadata !1259, metadata !DIExpression()), !dbg !1272
  br label %2, !dbg !1273

2:                                                ; preds = %113, %1
  %3 = phi i64 [ 0, %1 ], [ %114, %113 ], !dbg !1274
  %4 = phi i1 [ false, %1 ], [ %115, %113 ]
  %5 = phi i1 [ false, %1 ], [ %116, %113 ]
  %6 = phi i8* [ null, %1 ], [ %117, %113 ], !dbg !1275
  %7 = phi i1 [ true, %1 ], [ %118, %113 ]
  %8 = phi i1 [ false, %1 ], [ %119, %113 ]
  %9 = phi i8* [ %0, %1 ], [ %121, %113 ]
  call void @llvm.dbg.value(metadata i8* %9, metadata !1253, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 poison, metadata !1254, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %6, metadata !1258, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %3, metadata !1255, metadata !DIExpression()), !dbg !1272
  %10 = load i8, i8* %9, align 1, !dbg !1276, !tbaa !721
  switch i8 %10, label %11 [
    i8 0, label %122
    i8 44, label %19
  ], !dbg !1277

11:                                               ; preds = %2
  %12 = tail call i16** @__ctype_b_loc() #36, !dbg !1278
  %13 = load i16*, i16** %12, align 8, !dbg !1278, !tbaa !617
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, i16* %13, i64 %14, !dbg !1278
  %16 = load i16, i16* %15, align 2, !dbg !1278, !tbaa !746
  %17 = and i16 %16, 1, !dbg !1278
  %18 = icmp eq i16 %17, 0, !dbg !1278
  br i1 %18, label %72, label %19, !dbg !1279

19:                                               ; preds = %2, %11
  br i1 %8, label %20, label %113, !dbg !1280

20:                                               ; preds = %19
  br i1 %4, label %21, label %31, !dbg !1282

21:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !1285, metadata !DIExpression()) #33, !dbg !1291
  call void @llvm.dbg.value(metadata i8 1, metadata !1290, metadata !DIExpression()) #33, !dbg !1291
  %22 = load i64, i64* @extend_size, align 8, !dbg !1296, !tbaa !903
  %23 = icmp eq i64 %22, 0, !dbg !1296
  br i1 %23, label %26, label %24, !dbg !1298

24:                                               ; preds = %21
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !1299
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %25) #33, !dbg !1299
  call void @llvm.dbg.value(metadata i8 0, metadata !1290, metadata !DIExpression()) #33, !dbg !1291
  br label %26, !dbg !1301

26:                                               ; preds = %24, %21
  call void @llvm.dbg.value(metadata i8 poison, metadata !1290, metadata !DIExpression()) #33, !dbg !1291
  store i64 %3, i64* @extend_size, align 8, !dbg !1302, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %3, metadata !1237, metadata !DIExpression()) #33, !dbg !1303
  %27 = load i64, i64* @max_column_width, align 8, !dbg !1305, !tbaa !903
  %28 = icmp slt i64 %27, %3, !dbg !1306
  br i1 %28, label %29, label %30, !dbg !1307

29:                                               ; preds = %26
  store i64 %3, i64* @max_column_width, align 8, !dbg !1308
  br label %30, !dbg !1309

30:                                               ; preds = %26, %29
  br i1 %23, label %113, label %178, !dbg !1310

31:                                               ; preds = %20
  br i1 %5, label %32, label %42, !dbg !1311

32:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()) #33, !dbg !1316
  call void @llvm.dbg.value(metadata i8 1, metadata !1315, metadata !DIExpression()) #33, !dbg !1316
  %33 = load i64, i64* @increment_size, align 8, !dbg !1321, !tbaa !903
  %34 = icmp eq i64 %33, 0, !dbg !1321
  br i1 %34, label %37, label %35, !dbg !1323

35:                                               ; preds = %32
  %36 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !1324
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %36) #33, !dbg !1324
  call void @llvm.dbg.value(metadata i8 0, metadata !1315, metadata !DIExpression()) #33, !dbg !1316
  br label %37, !dbg !1326

37:                                               ; preds = %35, %32
  call void @llvm.dbg.value(metadata i8 poison, metadata !1315, metadata !DIExpression()) #33, !dbg !1316
  store i64 %3, i64* @increment_size, align 8, !dbg !1327, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %3, metadata !1237, metadata !DIExpression()) #33, !dbg !1328
  %38 = load i64, i64* @max_column_width, align 8, !dbg !1330, !tbaa !903
  %39 = icmp slt i64 %38, %3, !dbg !1331
  br i1 %39, label %40, label %41, !dbg !1332

40:                                               ; preds = %37
  store i64 %3, i64* @max_column_width, align 8, !dbg !1333
  br label %41, !dbg !1334

41:                                               ; preds = %37, %40
  br i1 %34, label %113, label %178, !dbg !1335

42:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1217, metadata !DIExpression()) #33, !dbg !1336
  %43 = load i64, i64* @first_free_tab, align 8, !dbg !1338, !tbaa !903
  %44 = icmp eq i64 %43, 0, !dbg !1338
  br i1 %44, label %50, label %45, !dbg !1338

45:                                               ; preds = %42
  %46 = load i64*, i64** @tab_list, align 8, !dbg !1339, !tbaa !617
  %47 = add nsw i64 %43, -1, !dbg !1340
  %48 = getelementptr inbounds i64, i64* %46, i64 %47, !dbg !1339
  %49 = load i64, i64* %48, align 8, !dbg !1339, !tbaa !903
  br label %50, !dbg !1338

50:                                               ; preds = %45, %42
  %51 = phi i64 [ %49, %45 ], [ 0, %42 ], !dbg !1338
  call void @llvm.dbg.value(metadata i64 %51, metadata !1218, metadata !DIExpression()) #33, !dbg !1336
  call void @llvm.dbg.value(metadata i64 undef, metadata !1219, metadata !DIExpression()) #33, !dbg !1336
  %52 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1341, !tbaa !903
  %53 = icmp eq i64 %43, %52, !dbg !1342
  br i1 %53, label %56, label %54, !dbg !1343

54:                                               ; preds = %50
  %55 = load i64*, i64** @tab_list, align 8, !dbg !1344, !tbaa !617
  br label %61, !dbg !1343

56:                                               ; preds = %50
  %57 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1345, !tbaa !617
  %58 = tail call nonnull i8* @xpalloc(i8* noundef %57, i64* noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #33, !dbg !1346
  store i8* %58, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1347, !tbaa !617
  %59 = bitcast i8* %58 to i64*, !dbg !1348
  %60 = load i64, i64* @first_free_tab, align 8, !dbg !1349, !tbaa !903
  br label %61, !dbg !1348

61:                                               ; preds = %56, %54
  %62 = phi i64 [ %43, %54 ], [ %60, %56 ], !dbg !1349
  %63 = phi i64* [ %55, %54 ], [ %59, %56 ], !dbg !1344
  %64 = icmp slt i64 %3, %51, !dbg !1350
  %65 = sub nsw i64 %3, %51, !dbg !1351
  %66 = select i1 %64, i64 0, i64 %65, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %66, metadata !1219, metadata !DIExpression()) #33, !dbg !1336
  %67 = add nsw i64 %62, 1, !dbg !1349
  store i64 %67, i64* @first_free_tab, align 8, !dbg !1349, !tbaa !903
  %68 = getelementptr inbounds i64, i64* %63, i64 %62, !dbg !1344
  store i64 %3, i64* %68, align 8, !dbg !1352, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %66, metadata !1237, metadata !DIExpression()) #33, !dbg !1353
  %69 = load i64, i64* @max_column_width, align 8, !dbg !1355, !tbaa !903
  %70 = icmp slt i64 %69, %66, !dbg !1356
  br i1 %70, label %71, label %113, !dbg !1357

71:                                               ; preds = %61
  store i64 %66, i64* @max_column_width, align 8, !dbg !1358
  br label %113, !dbg !1359

72:                                               ; preds = %11
  switch i8 %10, label %81 [
    i8 47, label %73
    i8 43, label %77
  ], !dbg !1360

73:                                               ; preds = %72
  br i1 %8, label %74, label %113, !dbg !1361

74:                                               ; preds = %73
  %75 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #33, !dbg !1363
  %76 = tail call i8* @quote(i8* noundef nonnull %9) #33, !dbg !1363
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %75, i8* noundef %76) #33, !dbg !1363
  call void @llvm.dbg.value(metadata i8 0, metadata !1259, metadata !DIExpression()), !dbg !1272
  br label %113, !dbg !1366

77:                                               ; preds = %72
  br i1 %8, label %78, label %113, !dbg !1367

78:                                               ; preds = %77
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.21, i64 0, i64 0), i32 noundef 5) #33, !dbg !1369
  %80 = tail call i8* @quote(i8* noundef nonnull %9) #33, !dbg !1369
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %79, i8* noundef %80) #33, !dbg !1369
  call void @llvm.dbg.value(metadata i8 0, metadata !1259, metadata !DIExpression()), !dbg !1272
  br label %113, !dbg !1372

81:                                               ; preds = %72
  %82 = zext i8 %10 to i32, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %82, metadata !1374, metadata !DIExpression()), !dbg !1380
  %83 = add nsw i32 %82, -48, !dbg !1382
  %84 = icmp ult i32 %83, 10, !dbg !1382
  br i1 %84, label %85, label %110, !dbg !1383

85:                                               ; preds = %81
  %86 = select i1 %8, i64 %3, i64 0, !dbg !1384
  %87 = select i1 %8, i8* %6, i8* %9, !dbg !1384
  call void @llvm.dbg.value(metadata i8 poison, metadata !1254, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %87, metadata !1258, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %86, metadata !1255, metadata !DIExpression()), !dbg !1272
  %88 = icmp slt i64 %86, 0, !dbg !1385
  br i1 %88, label %89, label %92, !dbg !1385

89:                                               ; preds = %85
  %90 = add i64 %86, -1, !dbg !1385
  %91 = icmp ult i64 %90, -922337203685477581, !dbg !1385
  br i1 %91, label %94, label %96, !dbg !1385

92:                                               ; preds = %85
  %93 = icmp ugt i64 %86, 922337203685477580, !dbg !1385
  br i1 %93, label %94, label %96, !dbg !1385

94:                                               ; preds = %89, %92
  %95 = mul i64 %86, 10, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %97, metadata !1255, metadata !DIExpression()), !dbg !1272
  br label %102, !dbg !1385

96:                                               ; preds = %89, %92
  call void @llvm.dbg.value(metadata i64 %86, metadata !1255, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1272
  %97 = mul nsw i64 %86, 10, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %97, metadata !1255, metadata !DIExpression()), !dbg !1272
  %98 = add nsw i64 %14, -48, !dbg !1385
  %99 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %97, i64 %98), !dbg !1385
  %100 = extractvalue { i64, i1 } %99, 1, !dbg !1385
  %101 = extractvalue { i64, i1 } %99, 0, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %101, metadata !1255, metadata !DIExpression()), !dbg !1272
  br i1 %100, label %102, label %113, !dbg !1386

102:                                              ; preds = %94, %96
  %103 = phi i64 [ %101, %96 ], [ %95, %94 ], !dbg !1385
  call void @llvm.dbg.value(metadata i64 %103, metadata !1255, metadata !DIExpression()), !dbg !1272
  %104 = tail call i64 @strspn(i8* noundef %87, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.22, i64 0, i64 0)) #34, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %104, metadata !1260, metadata !DIExpression()), !dbg !1388
  %105 = tail call noalias nonnull i8* @ximemdup0(i8* noundef %87, i64 noundef %104) #33, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %105, metadata !1271, metadata !DIExpression()), !dbg !1388
  %106 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.23, i64 0, i64 0), i32 noundef 5) #33, !dbg !1390
  %107 = tail call i8* @quote(i8* noundef nonnull %105) #33, !dbg !1390
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %106, i8* noundef %107) #33, !dbg !1390
  tail call void @free(i8* noundef nonnull %105) #33, !dbg !1391
  call void @llvm.dbg.value(metadata i8 0, metadata !1259, metadata !DIExpression()), !dbg !1272
  %108 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !1392
  %109 = getelementptr inbounds i8, i8* %108, i64 %104, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %109, metadata !1253, metadata !DIExpression()), !dbg !1272
  br label %113, !dbg !1394

110:                                              ; preds = %81
  %111 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4.24, i64 0, i64 0), i32 noundef 5) #33, !dbg !1395
  %112 = tail call i8* @quote(i8* noundef nonnull %9) #33, !dbg !1395
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %111, i8* noundef %112) #33, !dbg !1395
  call void @llvm.dbg.value(metadata i8 0, metadata !1259, metadata !DIExpression()), !dbg !1272
  br label %178, !dbg !1397

113:                                              ; preds = %71, %61, %77, %78, %73, %74, %19, %41, %30, %96, %102
  %114 = phi i64 [ %103, %102 ], [ %101, %96 ], [ %3, %30 ], [ %3, %41 ], [ %3, %19 ], [ %3, %74 ], [ %3, %73 ], [ %3, %78 ], [ %3, %77 ], [ %3, %61 ], [ %3, %71 ], !dbg !1272
  %115 = phi i1 [ %4, %102 ], [ %4, %96 ], [ true, %30 ], [ false, %41 ], [ %4, %19 ], [ true, %74 ], [ true, %73 ], [ false, %78 ], [ false, %77 ], [ false, %61 ], [ false, %71 ]
  %116 = phi i1 [ %5, %102 ], [ %5, %96 ], [ %5, %30 ], [ true, %41 ], [ %5, %19 ], [ false, %74 ], [ false, %73 ], [ true, %78 ], [ true, %77 ], [ false, %61 ], [ false, %71 ]
  %117 = phi i8* [ %87, %102 ], [ %87, %96 ], [ %6, %30 ], [ %6, %41 ], [ %6, %19 ], [ %6, %74 ], [ %6, %73 ], [ %6, %78 ], [ %6, %77 ], [ %6, %61 ], [ %6, %71 ], !dbg !1275
  %118 = phi i1 [ false, %102 ], [ %7, %96 ], [ %7, %30 ], [ %7, %41 ], [ %7, %19 ], [ false, %74 ], [ %7, %73 ], [ false, %78 ], [ %7, %77 ], [ %7, %61 ], [ %7, %71 ]
  %119 = phi i1 [ true, %102 ], [ true, %96 ], [ false, %30 ], [ false, %41 ], [ false, %19 ], [ true, %74 ], [ false, %73 ], [ true, %78 ], [ false, %77 ], [ false, %61 ], [ false, %71 ]
  %120 = phi i8* [ %109, %102 ], [ %9, %96 ], [ %9, %30 ], [ %9, %41 ], [ %9, %19 ], [ %9, %74 ], [ %9, %73 ], [ %9, %78 ], [ %9, %77 ], [ %9, %61 ], [ %9, %71 ]
  call void @llvm.dbg.value(metadata i8* %120, metadata !1253, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 poison, metadata !1254, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %117, metadata !1258, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i8 poison, metadata !1256, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %114, metadata !1255, metadata !DIExpression()), !dbg !1272
  %121 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !1398
  call void @llvm.dbg.value(metadata i8* %121, metadata !1253, metadata !DIExpression()), !dbg !1272
  br label %2, !dbg !1399, !llvm.loop !1400

122:                                              ; preds = %2
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1272
  %123 = and i1 %7, %8, !dbg !1402
  br i1 %123, label %124, label %177, !dbg !1402

124:                                              ; preds = %122
  br i1 %4, label %125, label %136, !dbg !1404

125:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 %3, metadata !1285, metadata !DIExpression()) #33, !dbg !1406
  call void @llvm.dbg.value(metadata i8 1, metadata !1290, metadata !DIExpression()) #33, !dbg !1406
  %126 = load i64, i64* @extend_size, align 8, !dbg !1409, !tbaa !903
  %127 = icmp eq i64 %126, 0, !dbg !1409
  br i1 %127, label %128, label %131, !dbg !1410

128:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8 poison, metadata !1290, metadata !DIExpression()) #33, !dbg !1406
  store i64 %3, i64* @extend_size, align 8, !dbg !1411, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %3, metadata !1237, metadata !DIExpression()) #33, !dbg !1412
  %129 = load i64, i64* @max_column_width, align 8, !dbg !1414, !tbaa !903
  %130 = icmp slt i64 %129, %3, !dbg !1415
  br i1 %130, label %179, label %181, !dbg !1416

131:                                              ; preds = %125
  %132 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !1417
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %132) #33, !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1290, metadata !DIExpression()) #33, !dbg !1406
  store i64 %3, i64* @extend_size, align 8, !dbg !1411, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %3, metadata !1237, metadata !DIExpression()) #33, !dbg !1412
  %133 = load i64, i64* @max_column_width, align 8, !dbg !1414, !tbaa !903
  %134 = icmp slt i64 %133, %3, !dbg !1415
  br i1 %134, label %135, label %178, !dbg !1416

135:                                              ; preds = %131
  store i64 %3, i64* @max_column_width, align 8, !dbg !1418
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1272
  br label %178, !dbg !1419

136:                                              ; preds = %124
  br i1 %5, label %137, label %148, !dbg !1420

137:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()) #33, !dbg !1421
  call void @llvm.dbg.value(metadata i8 1, metadata !1315, metadata !DIExpression()) #33, !dbg !1421
  %138 = load i64, i64* @increment_size, align 8, !dbg !1424, !tbaa !903
  %139 = icmp eq i64 %138, 0, !dbg !1424
  br i1 %139, label %140, label %143, !dbg !1425

140:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i8 poison, metadata !1315, metadata !DIExpression()) #33, !dbg !1421
  store i64 %3, i64* @increment_size, align 8, !dbg !1426, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %3, metadata !1237, metadata !DIExpression()) #33, !dbg !1427
  %141 = load i64, i64* @max_column_width, align 8, !dbg !1429, !tbaa !903
  %142 = icmp slt i64 %141, %3, !dbg !1430
  br i1 %142, label %179, label %181, !dbg !1431

143:                                              ; preds = %137
  %144 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !1432
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %144) #33, !dbg !1432
  call void @llvm.dbg.value(metadata i8 poison, metadata !1315, metadata !DIExpression()) #33, !dbg !1421
  store i64 %3, i64* @increment_size, align 8, !dbg !1426, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %3, metadata !1237, metadata !DIExpression()) #33, !dbg !1427
  %145 = load i64, i64* @max_column_width, align 8, !dbg !1429, !tbaa !903
  %146 = icmp slt i64 %145, %3, !dbg !1430
  br i1 %146, label %147, label %178, !dbg !1431

147:                                              ; preds = %143
  store i64 %3, i64* @max_column_width, align 8, !dbg !1433
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1272
  br label %178, !dbg !1419

148:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i64 %3, metadata !1217, metadata !DIExpression()) #33, !dbg !1434
  %149 = load i64, i64* @first_free_tab, align 8, !dbg !1436, !tbaa !903
  %150 = icmp eq i64 %149, 0, !dbg !1436
  br i1 %150, label %156, label %151, !dbg !1436

151:                                              ; preds = %148
  %152 = load i64*, i64** @tab_list, align 8, !dbg !1437, !tbaa !617
  %153 = add nsw i64 %149, -1, !dbg !1438
  %154 = getelementptr inbounds i64, i64* %152, i64 %153, !dbg !1437
  %155 = load i64, i64* %154, align 8, !dbg !1437, !tbaa !903
  br label %156, !dbg !1436

156:                                              ; preds = %151, %148
  %157 = phi i64 [ %155, %151 ], [ 0, %148 ], !dbg !1436
  call void @llvm.dbg.value(metadata i64 %157, metadata !1218, metadata !DIExpression()) #33, !dbg !1434
  call void @llvm.dbg.value(metadata i64 undef, metadata !1219, metadata !DIExpression()) #33, !dbg !1434
  %158 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1439, !tbaa !903
  %159 = icmp eq i64 %149, %158, !dbg !1440
  br i1 %159, label %162, label %160, !dbg !1441

160:                                              ; preds = %156
  %161 = load i64*, i64** @tab_list, align 8, !dbg !1442, !tbaa !617
  br label %167, !dbg !1441

162:                                              ; preds = %156
  %163 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1443, !tbaa !617
  %164 = tail call nonnull i8* @xpalloc(i8* noundef %163, i64* noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #33, !dbg !1444
  store i8* %164, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1445, !tbaa !617
  %165 = bitcast i8* %164 to i64*, !dbg !1446
  %166 = load i64, i64* @first_free_tab, align 8, !dbg !1447, !tbaa !903
  br label %167, !dbg !1446

167:                                              ; preds = %162, %160
  %168 = phi i64 [ %149, %160 ], [ %166, %162 ], !dbg !1447
  %169 = phi i64* [ %161, %160 ], [ %165, %162 ], !dbg !1442
  %170 = icmp slt i64 %3, %157, !dbg !1448
  %171 = sub nsw i64 %3, %157, !dbg !1449
  %172 = select i1 %170, i64 0, i64 %171, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %172, metadata !1219, metadata !DIExpression()) #33, !dbg !1434
  %173 = add nsw i64 %168, 1, !dbg !1447
  store i64 %173, i64* @first_free_tab, align 8, !dbg !1447, !tbaa !903
  %174 = getelementptr inbounds i64, i64* %169, i64 %168, !dbg !1442
  store i64 %3, i64* %174, align 8, !dbg !1450, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %172, metadata !1237, metadata !DIExpression()) #33, !dbg !1451
  %175 = load i64, i64* @max_column_width, align 8, !dbg !1453, !tbaa !903
  %176 = icmp slt i64 %175, %172, !dbg !1454
  br i1 %176, label %179, label %181, !dbg !1455

177:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i8 poison, metadata !1259, metadata !DIExpression()), !dbg !1272
  br i1 %7, label %181, label %178, !dbg !1419

178:                                              ; preds = %30, %41, %143, %131, %147, %135, %110, %177
  tail call void @exit(i32 noundef 1) #35, !dbg !1456
  unreachable, !dbg !1456

179:                                              ; preds = %167, %140, %128
  %180 = phi i64 [ %3, %128 ], [ %3, %140 ], [ %172, %167 ]
  store i64 %180, i64* @max_column_width, align 8, !dbg !1458
  br label %181, !dbg !1459

181:                                              ; preds = %179, %167, %140, %128, %177
  ret void, !dbg !1459
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #12 !dbg !1460 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1461, !tbaa !617
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1462, !tbaa !903
  call void @llvm.dbg.value(metadata i64* %1, metadata !1463, metadata !DIExpression()) #33, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %2, metadata !1470, metadata !DIExpression()) #33, !dbg !1474
  call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()) #33, !dbg !1474
  call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()) #33, !dbg !1476
  %3 = icmp sgt i64 %2, 0, !dbg !1477
  br i1 %3, label %12, label %6, !dbg !1479

4:                                                ; preds = %20
  call void @llvm.dbg.value(metadata i64 %22, metadata !1472, metadata !DIExpression()) #33, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %16, metadata !1471, metadata !DIExpression()) #33, !dbg !1474
  %5 = icmp eq i64 %22, %2, !dbg !1477
  br i1 %5, label %6, label %12, !dbg !1479, !llvm.loop !1480

6:                                                ; preds = %4, %0
  %7 = load i64, i64* @increment_size, align 8, !dbg !1482, !tbaa !903
  %8 = icmp ne i64 %7, 0, !dbg !1482
  %9 = load i64, i64* @extend_size, align 8
  %10 = icmp ne i64 %9, 0
  %11 = select i1 %8, i1 %10, i1 false, !dbg !1484
  br i1 %11, label %25, label %27, !dbg !1484

12:                                               ; preds = %0, %4
  %13 = phi i64 [ %22, %4 ], [ 0, %0 ]
  %14 = phi i64 [ %16, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !1472, metadata !DIExpression()) #33, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %14, metadata !1471, metadata !DIExpression()) #33, !dbg !1474
  %15 = getelementptr inbounds i64, i64* %1, i64 %13, !dbg !1485
  %16 = load i64, i64* %15, align 8, !dbg !1485, !tbaa !903
  %17 = icmp eq i64 %16, 0, !dbg !1488
  br i1 %17, label %18, label %20, !dbg !1489

18:                                               ; preds = %12
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.27, i64 0, i64 0), i32 noundef 5) #33, !dbg !1490
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %19) #33, !dbg !1490
  unreachable, !dbg !1490

20:                                               ; preds = %12
  %21 = icmp sgt i64 %16, %14, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %16, metadata !1471, metadata !DIExpression()) #33, !dbg !1474
  %22 = add nuw nsw i64 %13, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %22, metadata !1472, metadata !DIExpression()) #33, !dbg !1476
  br i1 %21, label %4, label %23, !dbg !1494

23:                                               ; preds = %20
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15.28, i64 0, i64 0), i32 noundef 5) #33, !dbg !1495
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %24) #33, !dbg !1495
  unreachable, !dbg !1495

25:                                               ; preds = %6
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16.29, i64 0, i64 0), i32 noundef 5) #33, !dbg !1496
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %26) #33, !dbg !1496
  unreachable, !dbg !1496

27:                                               ; preds = %6
  %28 = icmp eq i64 %2, 0, !dbg !1497
  br i1 %28, label %29, label %34, !dbg !1499

29:                                               ; preds = %27
  %30 = icmp eq i64 %9, 0, !dbg !1500
  %31 = icmp eq i64 %7, 0, !dbg !1500
  %32 = select i1 %31, i64 8, i64 %7, !dbg !1500
  %33 = select i1 %30, i64 %32, i64 %9, !dbg !1500
  store i64 %33, i64* @max_column_width, align 8, !dbg !1501, !tbaa !903
  br label %40, !dbg !1502

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !1503
  %36 = select i1 %35, i1 true, i1 %10, !dbg !1505
  %37 = select i1 %36, i1 true, i1 %8, !dbg !1505
  br i1 %37, label %40, label %38, !dbg !1505

38:                                               ; preds = %34
  %39 = load i64, i64* %1, align 8, !dbg !1506, !tbaa !903
  br label %40, !dbg !1507

40:                                               ; preds = %34, %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %41, i64* @tab_size, align 8, !dbg !1508, !tbaa !903
  ret void, !dbg !1509
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, i64* nocapture noundef %1, i8* nocapture noundef nonnull writeonly %2) local_unnamed_addr #12 !dbg !1510 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1515, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i64* %1, metadata !1516, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8* %2, metadata !1517, metadata !DIExpression()), !dbg !1530
  store i8 0, i8* %2, align 1, !dbg !1531, !tbaa !853
  %4 = load i64, i64* @tab_size, align 8, !dbg !1532, !tbaa !903
  %5 = icmp eq i64 %4, 0, !dbg !1532
  br i1 %5, label %6, label %12, !dbg !1533

6:                                                ; preds = %3
  %7 = load i64, i64* @first_free_tab, align 8, !tbaa !903
  %8 = load i64, i64* %1, align 8, !dbg !1534, !tbaa !903
  %9 = icmp slt i64 %8, %7, !dbg !1535
  br i1 %9, label %10, label %23, !dbg !1536

10:                                               ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !tbaa !617
  br label %15, !dbg !1536

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !1537
  %14 = sub nsw i64 %4, %13, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %14, metadata !1518, metadata !DIExpression()), !dbg !1530
  br label %41, !dbg !1539

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, i64* %11, i64 %16, !dbg !1540
  %18 = load i64, i64* %17, align 8, !dbg !1540, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %18, metadata !1519, metadata !DIExpression()), !dbg !1541
  %19 = icmp sgt i64 %18, %0, !dbg !1542
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !1544
  store i64 %21, i64* %1, align 8, !dbg !1544, !tbaa !903
  %22 = icmp eq i64 %21, %7, !dbg !1535
  br i1 %22, label %23, label %15, !dbg !1536, !llvm.loop !1545

23:                                               ; preds = %20, %6
  %24 = load i64, i64* @extend_size, align 8, !dbg !1547, !tbaa !903
  %25 = icmp eq i64 %24, 0, !dbg !1547
  br i1 %25, label %29, label %26, !dbg !1548

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !1549
  %28 = sub nsw i64 %24, %27, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %28, metadata !1518, metadata !DIExpression()), !dbg !1530
  br label %41, !dbg !1551

29:                                               ; preds = %23
  %30 = load i64, i64* @increment_size, align 8, !dbg !1552, !tbaa !903
  %31 = icmp eq i64 %30, 0, !dbg !1552
  br i1 %31, label %40, label %32, !dbg !1553

32:                                               ; preds = %29
  %33 = load i64*, i64** @tab_list, align 8, !dbg !1554, !tbaa !617
  %34 = add nsw i64 %7, -1, !dbg !1555
  %35 = getelementptr inbounds i64, i64* %33, i64 %34, !dbg !1554
  %36 = load i64, i64* %35, align 8, !dbg !1554, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %36, metadata !1525, metadata !DIExpression()), !dbg !1556
  %37 = sub nsw i64 %0, %36, !dbg !1557
  %38 = srem i64 %37, %30, !dbg !1558
  %39 = sub nsw i64 %30, %38, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %39, metadata !1518, metadata !DIExpression()), !dbg !1530
  br label %41, !dbg !1560

40:                                               ; preds = %29
  store i8 1, i8* %2, align 1, !dbg !1561, !tbaa !853
  call void @llvm.dbg.value(metadata i64 1, metadata !1518, metadata !DIExpression()), !dbg !1530
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !1563
  call void @llvm.dbg.value(metadata i64 %42, metadata !1518, metadata !DIExpression()), !dbg !1530
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !1564
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !1564
  call void @llvm.dbg.value(metadata i64 undef, metadata !1529, metadata !DIExpression()), !dbg !1530
  br i1 %44, label %45, label %47, !dbg !1566

45:                                               ; preds = %41
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.32, i64 0, i64 0), i32 noundef 5) #33, !dbg !1567
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %46) #33, !dbg !1567
  unreachable, !dbg !1567

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %48, metadata !1529, metadata !DIExpression()), !dbg !1530
  br label %49

49:                                               ; preds = %15, %47
  %50 = phi i64 [ %48, %47 ], [ %18, %15 ], !dbg !1530
  ret i64 %50, !dbg !1568
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_file_list(i8** noundef %0) local_unnamed_addr #15 !dbg !1569 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1573, metadata !DIExpression()), !dbg !1574
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1575
  %2 = icmp eq i8** %0, null, !dbg !1576
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0
  store i8** %3, i8*** @file_list, align 8, !dbg !1578, !tbaa !617
  ret void, !dbg !1579
}

; Function Attrs: nounwind uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !239 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !277, metadata !DIExpression()), !dbg !1580
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1581
  br i1 %2, label %26, label %3, !dbg !1582

3:                                                ; preds = %1
  %4 = tail call i32* @__errno_location() #36, !dbg !1583
  %5 = load i32, i32* %4, align 4, !dbg !1583, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %5, metadata !279, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1585, metadata !DIExpression()), !dbg !1590
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1593
  %7 = load i32, i32* %6, align 8, !dbg !1593, !tbaa !931
  %8 = and i32 %7, 32, !dbg !1594
  %9 = icmp eq i32 %8, 0, !dbg !1594
  %10 = select i1 %9, i32 0, i32 %5, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %10, metadata !279, metadata !DIExpression()), !dbg !1584
  %11 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1596, !tbaa !617
  call void @llvm.dbg.value(metadata i8* %11, metadata !1598, metadata !DIExpression()) #33, !dbg !1602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.35, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1602
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.35, i64 0, i64 0)) #34, !dbg !1604
  %13 = icmp eq i32 %12, 0, !dbg !1605
  br i1 %13, label %14, label %15, !dbg !1606

14:                                               ; preds = %3
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1607
  br label %20, !dbg !1607

15:                                               ; preds = %3
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1608
  %17 = icmp eq i32 %16, 0, !dbg !1610
  br i1 %17, label %20, label %18, !dbg !1611

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4, !dbg !1612, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %19, metadata !279, metadata !DIExpression()), !dbg !1584
  br label %20, !dbg !1613

20:                                               ; preds = %15, %18, %14
  %21 = phi i32 [ %10, %14 ], [ %19, %18 ], [ %10, %15 ], !dbg !1584
  call void @llvm.dbg.value(metadata i32 %21, metadata !279, metadata !DIExpression()), !dbg !1584
  %22 = icmp eq i32 %21, 0, !dbg !1614
  br i1 %22, label %26, label %23, !dbg !1616

23:                                               ; preds = %20
  %24 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1617, !tbaa !617
  %25 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %24) #33, !dbg !1617
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.38, i64 0, i64 0), i8* noundef %25) #33, !dbg !1617
  store i32 1, i32* @exit_status, align 4, !dbg !1619, !tbaa !712
  br label %26, !dbg !1620

26:                                               ; preds = %20, %23, %1
  %27 = load i8**, i8*** @file_list, align 8, !dbg !1621, !tbaa !617
  %28 = getelementptr inbounds i8*, i8** %27, i64 1, !dbg !1621
  store i8** %28, i8*** @file_list, align 8, !dbg !1621, !tbaa !617
  %29 = load i8*, i8** %27, align 8, !dbg !1622, !tbaa !617
  call void @llvm.dbg.value(metadata i8* %29, metadata !278, metadata !DIExpression()), !dbg !1580
  %30 = icmp eq i8* %29, null, !dbg !1623
  br i1 %30, label %51, label %31, !dbg !1624

31:                                               ; preds = %26, %43
  %32 = phi i8* [ %49, %43 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !1598, metadata !DIExpression()) #33, !dbg !1625
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.35, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1625
  %33 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %32, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.35, i64 0, i64 0)) #34, !dbg !1629
  %34 = icmp eq i32 %33, 0, !dbg !1630
  br i1 %34, label %35, label %37, !dbg !1631

35:                                               ; preds = %31
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1632
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1634, !tbaa !617
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !277, metadata !DIExpression()), !dbg !1580
  br label %39, !dbg !1635

37:                                               ; preds = %31
  %38 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.39, i64 0, i64 0)) #33, !dbg !1636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %38, metadata !277, metadata !DIExpression()), !dbg !1580
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi %struct._IO_FILE* [ %36, %35 ], [ %38, %37 ], !dbg !1637
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !277, metadata !DIExpression()), !dbg !1580
  %41 = icmp eq %struct._IO_FILE* %40, null, !dbg !1638
  br i1 %41, label %43, label %42, !dbg !1640

42:                                               ; preds = %39
  store i8* %32, i8** @next_file.prev_file, align 8, !dbg !1641, !tbaa !617
  tail call void @fadvise(%struct._IO_FILE* noundef nonnull %40, i32 noundef 2) #33, !dbg !1643
  br label %51, !dbg !1644

43:                                               ; preds = %39
  %44 = tail call i32* @__errno_location() #36, !dbg !1645
  %45 = load i32, i32* %44, align 4, !dbg !1645, !tbaa !712
  %46 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef nonnull %32) #33, !dbg !1645
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.38, i64 0, i64 0), i8* noundef %46) #33, !dbg !1645
  store i32 1, i32* @exit_status, align 4, !dbg !1646, !tbaa !712
  %47 = load i8**, i8*** @file_list, align 8, !dbg !1621, !tbaa !617
  %48 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !1621
  store i8** %48, i8*** @file_list, align 8, !dbg !1621, !tbaa !617
  %49 = load i8*, i8** %47, align 8, !dbg !1622, !tbaa !617
  call void @llvm.dbg.value(metadata i8* %49, metadata !278, metadata !DIExpression()), !dbg !1580
  %50 = icmp eq i8* %49, null, !dbg !1623
  br i1 %50, label %51, label %31, !dbg !1624, !llvm.loop !1647

51:                                               ; preds = %43, %26, %42
  %52 = phi %struct._IO_FILE* [ %40, %42 ], [ null, %26 ], [ null, %43 ], !dbg !1580
  ret %struct._IO_FILE* %52, !dbg !1649
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #12 !dbg !1650 {
  %1 = load i1, i1* @have_read_stdin, align 1, !dbg !1651
  br i1 %1, label %2, label %9, !dbg !1653

2:                                                ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1654, !tbaa !617
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %3) #33, !dbg !1655
  %5 = icmp eq i32 %4, 0, !dbg !1656
  br i1 %5, label %9, label %6, !dbg !1657

6:                                                ; preds = %2
  %7 = tail call i32* @__errno_location() #36, !dbg !1658
  %8 = load i32, i32* %7, align 4, !dbg !1658, !tbaa !712
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.35, i64 0, i64 0)) #33, !dbg !1658
  unreachable, !dbg !1658

9:                                                ; preds = %2, %0
  ret void, !dbg !1659
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(i8* noundef %0) local_unnamed_addr #12 !dbg !1660 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1662, metadata !DIExpression()), !dbg !1663
  %2 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9.44, i64 0, i64 0), i32 noundef 5) #33, !dbg !1664
  call void @llvm.dbg.value(metadata i8* %0, metadata !311, metadata !DIExpression()) #33, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %2, metadata !312, metadata !DIExpression()) #33, !dbg !1665
  %3 = load i32, i32* @oputs_.help_no_sgr.45, align 4, !dbg !1667, !tbaa !712
  %4 = icmp eq i32 %3, -1, !dbg !1668
  br i1 %4, label %5, label %17, !dbg !1669

5:                                                ; preds = %1
  %6 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.46, i64 0, i64 0)) #33, !dbg !1670
  call void @llvm.dbg.value(metadata i8* %6, metadata !313, metadata !DIExpression()) #33, !dbg !1671
  %7 = icmp eq i8* %6, null, !dbg !1672
  br i1 %7, label %15, label %8, !dbg !1673

8:                                                ; preds = %5
  %9 = load i8, i8* %6, align 1, !dbg !1674, !tbaa !721
  %10 = icmp eq i8 %9, 0, !dbg !1674
  br i1 %10, label %15, label %11, !dbg !1675

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8* %6, metadata !1598, metadata !DIExpression()) #33, !dbg !1676
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18.47, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1676
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18.47, i64 0, i64 0)) #34, !dbg !1678
  %13 = icmp eq i32 %12, 0, !dbg !1679
  %14 = zext i1 %13 to i32, !dbg !1675
  br label %15, !dbg !1675

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, i32* @oputs_.help_no_sgr.45, align 4, !dbg !1680, !tbaa !712
  br label %17, !dbg !1681

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !1682
  %19 = icmp eq i32 %18, 0, !dbg !1682
  br i1 %19, label %23, label %20, !dbg !1684

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1685, !tbaa !617
  %22 = tail call i32 @fputs_unlocked(i8* noundef %2, %struct._IO_FILE* noundef %21) #33, !dbg !1685
  br label %156, !dbg !1687

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !316, metadata !DIExpression()) #33, !dbg !1665
  %24 = tail call i64 @strspn(i8* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19.48, i64 0, i64 0)) #34, !dbg !1688
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1689
  call void @llvm.dbg.value(metadata i8* %25, metadata !317, metadata !DIExpression()) #33, !dbg !1665
  %26 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %2, i32 noundef 45) #34, !dbg !1690
  call void @llvm.dbg.value(metadata i8* %26, metadata !318, metadata !DIExpression()) #33, !dbg !1665
  %27 = icmp eq i8* %26, null, !dbg !1691
  br i1 %27, label %56, label %28, !dbg !1692

28:                                               ; preds = %23
  %29 = icmp eq i8* %26, %25, !dbg !1693
  br i1 %29, label %56, label %30, !dbg !1694

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %25, metadata !319, metadata !DIExpression()) #33, !dbg !1695
  call void @llvm.dbg.value(metadata i64 0, metadata !323, metadata !DIExpression()) #33, !dbg !1695
  %31 = icmp ult i8* %25, %26, !dbg !1696
  br i1 %31, label %32, label %52, !dbg !1697

32:                                               ; preds = %30
  %33 = tail call i16** @__ctype_b_loc() #36, !dbg !1665
  %34 = load i16*, i16** %33, align 8, !tbaa !617
  br label %35, !dbg !1697

35:                                               ; preds = %35, %32
  %36 = phi i8* [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata i8* %36, metadata !319, metadata !DIExpression()) #33, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %37, metadata !323, metadata !DIExpression()) #33, !dbg !1695
  %38 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %38, metadata !319, metadata !DIExpression()) #33, !dbg !1695
  %39 = load i8, i8* %36, align 1, !dbg !1698, !tbaa !721
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, i16* %34, i64 %40, !dbg !1698
  %42 = load i16, i16* %41, align 2, !dbg !1698, !tbaa !746
  %43 = lshr i16 %42, 13, !dbg !1699
  %44 = and i16 %43, 1, !dbg !1699
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %46, metadata !323, metadata !DIExpression()) #33, !dbg !1695
  %47 = icmp ult i8* %38, %26, !dbg !1696
  %48 = icmp ult i64 %46, 2, !dbg !1701
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1701
  br i1 %49, label %35, label %50, !dbg !1697, !llvm.loop !1702

50:                                               ; preds = %35
  %51 = icmp eq i64 %46, 2, !dbg !1703
  br label %52, !dbg !1703

52:                                               ; preds = %50, %30
  %53 = phi i1 [ false, %30 ], [ %51, %50 ]
  %54 = select i1 %53, i8* %25, i8* %26, !dbg !1705
  %55 = xor i1 %53, true, !dbg !1665
  call void @llvm.dbg.value(metadata i8 undef, metadata !316, metadata !DIExpression()) #33, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %54, metadata !318, metadata !DIExpression()) #33, !dbg !1665
  br label %56, !dbg !1706

56:                                               ; preds = %52, %28, %23
  %57 = phi i8* [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !1665
  %58 = phi i1 [ %55, %52 ], [ true, %28 ], [ false, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !316, metadata !DIExpression()) #33, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %57, metadata !318, metadata !DIExpression()) #33, !dbg !1665
  %59 = tail call i64 @strcspn(i8* noundef %57, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20.49, i64 0, i64 0)) #34, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %59, metadata !324, metadata !DIExpression()) #33, !dbg !1665
  %60 = getelementptr inbounds i8, i8* %57, i64 %59, !dbg !1708
  call void @llvm.dbg.value(metadata i8* %60, metadata !325, metadata !DIExpression()) #33, !dbg !1665
  br label %61, !dbg !1709

61:                                               ; preds = %92, %56
  %62 = phi i8* [ %60, %56 ], [ %93, %92 ], !dbg !1665
  %63 = phi i1 [ %58, %56 ], [ %71, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !316, metadata !DIExpression()) #33, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %62, metadata !325, metadata !DIExpression()) #33, !dbg !1665
  %64 = load i8, i8* %62, align 1, !dbg !1710, !tbaa !721
  switch i8 %64, label %70 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %65
  ], !dbg !1711

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1712
  %67 = load i8, i8* %66, align 1, !dbg !1715, !tbaa !721
  %68 = icmp ne i8 %67, 45, !dbg !1716
  %69 = select i1 %68, i1 %63, i1 false, !dbg !1717
  br label %70, !dbg !1717

70:                                               ; preds = %65, %61
  %71 = phi i1 [ %63, %61 ], [ %69, %65 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !316, metadata !DIExpression()) #33, !dbg !1665
  %72 = tail call i16** @__ctype_b_loc() #36, !dbg !1718
  %73 = load i16*, i16** %72, align 8, !dbg !1718, !tbaa !617
  %74 = zext i8 %64 to i64
  %75 = getelementptr inbounds i16, i16* %73, i64 %74, !dbg !1718
  %76 = load i16, i16* %75, align 2, !dbg !1718, !tbaa !746
  %77 = and i16 %76, 8192, !dbg !1718
  %78 = icmp eq i16 %77, 0, !dbg !1718
  br i1 %78, label %92, label %79, !dbg !1720

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9, !dbg !1721
  br i1 %80, label %94, label %81, !dbg !1724

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1725
  %83 = load i8, i8* %82, align 1, !dbg !1725, !tbaa !721
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i16, i16* %73, i64 %84, !dbg !1725
  %86 = load i16, i16* %85, align 2, !dbg !1725, !tbaa !746
  %87 = and i16 %86, 8192, !dbg !1725
  %88 = icmp eq i16 %87, 0, !dbg !1725
  br i1 %88, label %89, label %94, !dbg !1726

89:                                               ; preds = %81
  %90 = icmp eq i8 %83, 45
  %91 = select i1 %71, i1 true, i1 %90, !dbg !1727
  br i1 %91, label %92, label %94, !dbg !1727

92:                                               ; preds = %89, %70
  %93 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1729
  call void @llvm.dbg.value(metadata i8* %93, metadata !325, metadata !DIExpression()) #33, !dbg !1665
  br label %61, !dbg !1709, !llvm.loop !1730

94:                                               ; preds = %89, %81, %79, %61, %61
  %95 = ptrtoint i8* %25 to i64, !dbg !1732
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1732, !tbaa !617
  %97 = tail call i64 @fwrite_unlocked(i8* noundef %2, i64 noundef 1, i64 noundef %24, %struct._IO_FILE* noundef %96) #33, !dbg !1732
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1733
  %98 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !1735
  %99 = icmp eq i32 %98, 0, !dbg !1736
  br i1 %99, label %128, label %100, !dbg !1737

100:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1738
  %101 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #34, !dbg !1740
  %102 = icmp eq i32 %101, 0, !dbg !1741
  br i1 %102, label %128, label %103, !dbg !1742

103:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1743
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1743
  %104 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #34, !dbg !1745
  %105 = icmp eq i32 %104, 0, !dbg !1746
  br i1 %105, label %128, label %106, !dbg !1747

106:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1748
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1748
  %107 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #34, !dbg !1750
  %108 = icmp eq i32 %107, 0, !dbg !1751
  br i1 %108, label %128, label %109, !dbg !1752

109:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1753
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28.50, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1753
  %110 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28.50, i64 0, i64 0)) #34, !dbg !1755
  %111 = icmp eq i32 %110, 0, !dbg !1756
  br i1 %111, label %128, label %112, !dbg !1757

112:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1758
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29.51, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1758
  %113 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29.51, i64 0, i64 0)) #34, !dbg !1760
  %114 = icmp eq i32 %113, 0, !dbg !1761
  br i1 %114, label %128, label %115, !dbg !1762

115:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1763
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30.52, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1763
  %116 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30.52, i64 0, i64 0)) #34, !dbg !1765
  %117 = icmp eq i32 %116, 0, !dbg !1766
  br i1 %117, label %128, label %118, !dbg !1767

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1768
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31.53, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1768
  %119 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31.53, i64 0, i64 0)) #34, !dbg !1770
  %120 = icmp eq i32 %119, 0, !dbg !1771
  br i1 %120, label %128, label %121, !dbg !1772

121:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1773
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32.54, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1773
  %122 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32.54, i64 0, i64 0)) #34, !dbg !1775
  %123 = icmp eq i32 %122, 0, !dbg !1776
  br i1 %123, label %128, label %124, !dbg !1777

124:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()) #33, !dbg !1778
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33.55, i64 0, i64 0), metadata !1601, metadata !DIExpression()) #33, !dbg !1778
  %125 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33.55, i64 0, i64 0)) #34, !dbg !1780
  %126 = icmp eq i32 %125, 0, !dbg !1781
  %127 = select i1 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* %0, !dbg !1782
  br label %128, !dbg !1777

128:                                              ; preds = %124, %121, %118, %115, %112, %109, %106, %103, %100, %94
  %129 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %94 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %100 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %103 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %106 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %109 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %112 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %115 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %118 ], [ %127, %124 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %121 ], !dbg !1737
  call void @llvm.dbg.value(metadata i8* %129, metadata !330, metadata !DIExpression()) #33, !dbg !1665
  %130 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34.56, i64 0, i64 0), i64 noundef 6) #34, !dbg !1783
  %131 = icmp eq i32 %130, 0, !dbg !1783
  br i1 %131, label %135, label %132, !dbg !1785

132:                                              ; preds = %128
  %133 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35.57, i64 0, i64 0), i64 noundef 9) #34, !dbg !1786
  %134 = icmp eq i32 %133, 0, !dbg !1786
  br i1 %134, label %135, label %138, !dbg !1787

135:                                              ; preds = %132, %128
  %136 = trunc i64 %59 to i32, !dbg !1788
  %137 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37.59, i64 0, i64 0), i8* noundef %129, i8* noundef %129, i32 noundef %136, i8* noundef %57) #33, !dbg !1788
  br label %141, !dbg !1790

138:                                              ; preds = %132
  %139 = trunc i64 %59 to i32, !dbg !1791
  %140 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39.61, i64 0, i64 0), i8* noundef %129, i32 noundef %139, i8* noundef %57) #33, !dbg !1791
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1793, !tbaa !617
  %143 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40.62, i64 0, i64 0), %struct._IO_FILE* noundef %142) #33, !dbg !1793
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1794, !tbaa !617
  %145 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41.63, i64 0, i64 0), %struct._IO_FILE* noundef %144) #33, !dbg !1794
  %146 = ptrtoint i8* %62 to i64, !dbg !1795
  %147 = sub i64 %146, %95, !dbg !1795
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1795, !tbaa !617
  %149 = tail call i64 @fwrite_unlocked(i8* noundef %25, i64 noundef 1, i64 noundef %147, %struct._IO_FILE* noundef %148) #33, !dbg !1795
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1796, !tbaa !617
  %151 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42.64, i64 0, i64 0), %struct._IO_FILE* noundef %150) #33, !dbg !1796
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1797, !tbaa !617
  %153 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43.65, i64 0, i64 0), %struct._IO_FILE* noundef %152) #33, !dbg !1797
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1798, !tbaa !617
  %155 = tail call i32 @fputs_unlocked(i8* noundef nonnull %62, %struct._IO_FILE* noundef %154) #33, !dbg !1798
  br label %156

156:                                              ; preds = %20, %141
  %157 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([305 x i8], [305 x i8]* @.str.10.66, i64 0, i64 0), i32 noundef 5) #33, !dbg !1799
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1799, !tbaa !617
  %159 = tail call i32 @fputs_unlocked(i8* noundef %157, %struct._IO_FILE* noundef %158), !dbg !1799
  ret void, !dbg !1800
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !1801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1803, metadata !DIExpression()), !dbg !1804
  store i8* %0, i8** @file_name, align 8, !dbg !1805, !tbaa !617
  ret void, !dbg !1806
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1807 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1811, metadata !DIExpression()), !dbg !1812
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1813, !tbaa !853
  ret void, !dbg !1814
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1815 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1820, !tbaa !617
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1821
  %3 = icmp eq i32 %2, 0, !dbg !1822
  br i1 %3, label %22, label %4, !dbg !1823

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1824, !tbaa !853, !range !1052
  %6 = icmp eq i8 %5, 0, !dbg !1824
  br i1 %6, label %11, label %7, !dbg !1825

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1826
  %9 = load i32, i32* %8, align 4, !dbg !1826, !tbaa !712
  %10 = icmp eq i32 %9, 32, !dbg !1827
  br i1 %10, label %22, label %11, !dbg !1828

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.73, i64 0, i64 0), i32 noundef 5) #33, !dbg !1829
  call void @llvm.dbg.value(metadata i8* %12, metadata !1817, metadata !DIExpression()), !dbg !1830
  %13 = load i8*, i8** @file_name, align 8, !dbg !1831, !tbaa !617
  %14 = icmp eq i8* %13, null, !dbg !1831
  %15 = tail call i32* @__errno_location() #36, !dbg !1833
  %16 = load i32, i32* %15, align 4, !dbg !1833, !tbaa !712
  br i1 %14, label %19, label %17, !dbg !1834

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1835
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.74, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1835
  br label %20, !dbg !1835

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.75, i64 0, i64 0), i8* noundef %12) #33, !dbg !1836
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1837, !tbaa !712
  tail call void @_exit(i32 noundef %21) #35, !dbg !1838
  unreachable, !dbg !1838

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1839, !tbaa !617
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1841
  %25 = icmp eq i32 %24, 0, !dbg !1842
  br i1 %25, label %28, label %26, !dbg !1843

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1844, !tbaa !712
  tail call void @_exit(i32 noundef %27) #35, !dbg !1845
  unreachable, !dbg !1845

28:                                               ; preds = %22
  ret void, !dbg !1846
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1847 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1851, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %1, metadata !1852, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %2, metadata !1853, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1854, metadata !DIExpression()), !dbg !1856
  tail call fastcc void @flush_stdout(), !dbg !1857
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1858, !tbaa !617
  %7 = icmp eq void ()* %6, null, !dbg !1858
  br i1 %7, label %9, label %8, !dbg !1860

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1861
  br label %13, !dbg !1861

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1862, !tbaa !617
  %11 = tail call i8* @getprogname() #34, !dbg !1862
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0), i8* noundef %11) #33, !dbg !1862
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1864
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1864
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1864
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1864, !tbaa.struct !1865
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1864
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1864
  ret void, !dbg !1866
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1867 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1869, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()) #33, !dbg !1874
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1877
  %2 = icmp slt i32 %1, 0, !dbg !1878
  br i1 %2, label %6, label %3, !dbg !1879

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1880, !tbaa !617
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1880
  br label %6, !dbg !1880

6:                                                ; preds = %3, %0
  ret void, !dbg !1881
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1882 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1884, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 %1, metadata !1885, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8* %2, metadata !1886, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1887, metadata !DIExpression()), !dbg !1889
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1890, !tbaa !617
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1891
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1892, metadata !DIExpression()) #33, !dbg !1935
  call void @llvm.dbg.value(metadata i8* %2, metadata !1933, metadata !DIExpression()) #33, !dbg !1935
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1937
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1937, !noalias !1938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1937
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1937
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1937, !noalias !1938
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1942, !tbaa !712
  %12 = add i32 %11, 1, !dbg !1942
  store i32 %12, i32* @error_message_count, align 4, !dbg !1942, !tbaa !712
  %13 = icmp eq i32 %1, 0, !dbg !1943
  br i1 %13, label %24, label %14, !dbg !1945

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1946, metadata !DIExpression()) #33, !dbg !1954
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1956
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1956
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1950, metadata !DIExpression()) #33, !dbg !1957
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1958
  call void @llvm.dbg.value(metadata i8* %16, metadata !1949, metadata !DIExpression()) #33, !dbg !1954
  %17 = icmp eq i8* %16, null, !dbg !1959
  br i1 %17, label %18, label %20, !dbg !1961

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.78, i64 0, i64 0), i32 noundef 5) #33, !dbg !1962
  call void @llvm.dbg.value(metadata i8* %19, metadata !1949, metadata !DIExpression()) #33, !dbg !1954
  br label %20, !dbg !1963

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1954
  call void @llvm.dbg.value(metadata i8* %21, metadata !1949, metadata !DIExpression()) #33, !dbg !1954
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1964, !tbaa !617
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.79, i64 0, i64 0), i8* noundef %21) #33, !dbg !1964
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1965
  br label %24, !dbg !1966

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1967, !tbaa !617
  call void @llvm.dbg.value(metadata i32 10, metadata !1968, metadata !DIExpression()) #33, !dbg !1974
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1973, metadata !DIExpression()) #33, !dbg !1974
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1976
  %27 = load i8*, i8** %26, align 8, !dbg !1976, !tbaa !1089
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1976
  %29 = load i8*, i8** %28, align 8, !dbg !1976, !tbaa !1090
  %30 = icmp ult i8* %27, %29, !dbg !1976
  br i1 %30, label %33, label %31, !dbg !1976, !prof !1091

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1976
  br label %35, !dbg !1976

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1976
  store i8* %34, i8** %26, align 8, !dbg !1976, !tbaa !1089
  store i8 10, i8* %27, align 1, !dbg !1976, !tbaa !721
  br label %35, !dbg !1976

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1977, !tbaa !617
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1977
  %38 = icmp eq i32 %0, 0, !dbg !1978
  br i1 %38, label %40, label %39, !dbg !1980

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1981
  unreachable, !dbg !1981

40:                                               ; preds = %35
  ret void, !dbg !1982
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1983 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1987 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1991 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1995, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i32 %1, metadata !1996, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8* %2, metadata !1997, metadata !DIExpression()), !dbg !1999
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !2000
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !2000
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.va_start(i8* nonnull %6), !dbg !2002
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2003
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2003, !tbaa.struct !1865
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #38, !dbg !2003
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2003
  call void @llvm.va_end(i8* nonnull %6), !dbg !2004
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !2005
  ret void, !dbg !2005
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !356 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !374, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i32 %1, metadata !375, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8* %2, metadata !376, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i32 %3, metadata !377, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8* %4, metadata !378, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !379, metadata !DIExpression()), !dbg !2007
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !2008, !tbaa !712
  %9 = icmp eq i32 %8, 0, !dbg !2008
  br i1 %9, label %24, label %10, !dbg !2010

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2011, !tbaa !712
  %12 = icmp eq i32 %11, %3, !dbg !2014
  br i1 %12, label %13, label %23, !dbg !2015

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2016, !tbaa !617
  %15 = icmp eq i8* %14, %2, !dbg !2017
  br i1 %15, label %39, label %16, !dbg !2018

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !2019
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !2020
  br i1 %19, label %20, label %23, !dbg !2020

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !2021
  %22 = icmp eq i32 %21, 0, !dbg !2022
  br i1 %22, label %39, label %23, !dbg !2023

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !2024, !tbaa !617
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !2025, !tbaa !712
  br label %24, !dbg !2026

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2027
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2028, !tbaa !617
  %26 = icmp eq void ()* %25, null, !dbg !2028
  br i1 %26, label %28, label %27, !dbg !2030

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !2031
  br label %32, !dbg !2031

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2032, !tbaa !617
  %30 = tail call i8* @getprogname() #34, !dbg !2032
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.82, i64 0, i64 0), i8* noundef %30) #33, !dbg !2032
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2034, !tbaa !617
  %34 = icmp eq i8* %2, null, !dbg !2034
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.83, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.84, i64 0, i64 0), !dbg !2034
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !2034
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2035
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !2035
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !2035, !tbaa.struct !1865
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !2035
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !2035
  br label %39, !dbg !2036

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !2036
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !2037 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2041, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %1, metadata !2042, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %2, metadata !2043, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %3, metadata !2044, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %4, metadata !2045, metadata !DIExpression()), !dbg !2047
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2048
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2048
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !2046, metadata !DIExpression()), !dbg !2049
  call void @llvm.va_start(i8* nonnull %8), !dbg !2050
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2051
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !2051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2051, !tbaa.struct !1865
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #38, !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !2051
  call void @llvm.va_end(i8* nonnull %8), !dbg !2052
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2053
  ret void, !dbg !2053
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !2054 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2060, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %1, metadata !2061, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %2, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 %3, metadata !2063, metadata !DIExpression()), !dbg !2064
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #33, !dbg !2065
  ret void, !dbg !2066
}

; Function Attrs: nounwind
declare !dbg !2067 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !2070 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2108, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32 %1, metadata !2109, metadata !DIExpression()), !dbg !2110
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2111
  br i1 %3, label %7, label %4, !dbg !2113

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %5, metadata !2060, metadata !DIExpression()) #33, !dbg !2115
  call void @llvm.dbg.value(metadata i64 0, metadata !2061, metadata !DIExpression()) #33, !dbg !2115
  call void @llvm.dbg.value(metadata i64 0, metadata !2062, metadata !DIExpression()) #33, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %1, metadata !2063, metadata !DIExpression()) #33, !dbg !2115
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #33, !dbg !2117
  br label %7, !dbg !2118

7:                                                ; preds = %4, %2
  ret void, !dbg !2119
}

; Function Attrs: nofree nounwind
declare !dbg !2120 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2123 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2161, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 0, metadata !2162, metadata !DIExpression()), !dbg !2165
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %2, metadata !2163, metadata !DIExpression()), !dbg !2165
  %3 = icmp slt i32 %2, 0, !dbg !2167
  br i1 %3, label %4, label %6, !dbg !2169

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2170
  br label %24, !dbg !2171

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2172
  %8 = icmp eq i32 %7, 0, !dbg !2172
  br i1 %8, label %13, label %9, !dbg !2174

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2175
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !2176
  %12 = icmp eq i64 %11, -1, !dbg !2177
  br i1 %12, label %16, label %13, !dbg !2178

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2179
  %15 = icmp eq i32 %14, 0, !dbg !2179
  br i1 %15, label %16, label %18, !dbg !2180

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !2162, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 0, metadata !2164, metadata !DIExpression()), !dbg !2165
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2181
  call void @llvm.dbg.value(metadata i32 %21, metadata !2164, metadata !DIExpression()), !dbg !2165
  br label %24, !dbg !2182

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !2183
  %20 = load i32, i32* %19, align 4, !dbg !2183, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %20, metadata !2162, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 0, metadata !2164, metadata !DIExpression()), !dbg !2165
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2181
  call void @llvm.dbg.value(metadata i32 %21, metadata !2164, metadata !DIExpression()), !dbg !2165
  %22 = icmp eq i32 %20, 0, !dbg !2184
  br i1 %22, label %24, label %23, !dbg !2182

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !2186, !tbaa !712
  call void @llvm.dbg.value(metadata i32 -1, metadata !2164, metadata !DIExpression()), !dbg !2165
  br label %24, !dbg !2188

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2165
  ret i32 %25, !dbg !2189
}

; Function Attrs: nofree nounwind
declare !dbg !2190 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2191 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !2195 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2233, metadata !DIExpression()), !dbg !2234
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !2235
  br i1 %2, label %6, label %3, !dbg !2237

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2238
  %5 = icmp eq i32 %4, 0, !dbg !2238
  br i1 %5, label %6, label %8, !dbg !2239

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !2240
  br label %17, !dbg !2241

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2242, metadata !DIExpression()) #33, !dbg !2247
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2249
  %10 = load i32, i32* %9, align 8, !dbg !2249, !tbaa !931
  %11 = and i32 %10, 256, !dbg !2251
  %12 = icmp eq i32 %11, 0, !dbg !2251
  br i1 %12, label %15, label %13, !dbg !2252

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !2253
  br label %15, !dbg !2253

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !2254
  br label %17, !dbg !2255

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !2234
  ret i32 %18, !dbg !2256
}

; Function Attrs: nofree nounwind
declare !dbg !2257 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2258 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2296, metadata !DIExpression()), !dbg !2297
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2298
  ret i32 0, !dbg !2299
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !2300 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2338, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i64 %1, metadata !2339, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 %2, metadata !2340, metadata !DIExpression()), !dbg !2344
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2345
  %5 = load i8*, i8** %4, align 8, !dbg !2345, !tbaa !2346
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2347
  %7 = load i8*, i8** %6, align 8, !dbg !2347, !tbaa !2348
  %8 = icmp eq i8* %5, %7, !dbg !2349
  br i1 %8, label %9, label %28, !dbg !2350

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2351
  %11 = load i8*, i8** %10, align 8, !dbg !2351, !tbaa !1089
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !2352
  %13 = load i8*, i8** %12, align 8, !dbg !2352, !tbaa !2353
  %14 = icmp eq i8* %11, %13, !dbg !2354
  br i1 %14, label %15, label %28, !dbg !2355

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !2356
  %17 = load i8*, i8** %16, align 8, !dbg !2356, !tbaa !2357
  %18 = icmp eq i8* %17, null, !dbg !2358
  br i1 %18, label %19, label %28, !dbg !2359

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2360
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %21, metadata !2341, metadata !DIExpression()), !dbg !2362
  %22 = icmp eq i64 %21, -1, !dbg !2363
  br i1 %22, label %30, label %23, !dbg !2365

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2366
  %25 = load i32, i32* %24, align 8, !dbg !2367, !tbaa !931
  %26 = and i32 %25, -17, !dbg !2367
  store i32 %26, i32* %24, align 8, !dbg !2367, !tbaa !931
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !2368
  store i64 %21, i64* %27, align 8, !dbg !2369, !tbaa !2370
  br label %30, !dbg !2371

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2372
  br label %30, !dbg !2373

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !2344
  ret i32 %31, !dbg !2374
}

; Function Attrs: nofree nounwind
declare !dbg !2375 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !2378 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2381, !tbaa !617
  ret i8* %1, !dbg !2382
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !2383 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2385, metadata !DIExpression()), !dbg !2388
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %2, metadata !2386, metadata !DIExpression()), !dbg !2388
  %3 = icmp eq i8* %2, null, !dbg !2390
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2390
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %5, metadata !2387, metadata !DIExpression()), !dbg !2388
  %6 = ptrtoint i8* %5 to i64, !dbg !2391
  %7 = ptrtoint i8* %0 to i64, !dbg !2391
  %8 = sub i64 %6, %7, !dbg !2391
  %9 = icmp sgt i64 %8, 6, !dbg !2393
  br i1 %9, label %10, label %19, !dbg !2394

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %11, metadata !2396, metadata !DIExpression()) #33, !dbg !2403
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), metadata !2401, metadata !DIExpression()) #33, !dbg !2403
  call void @llvm.dbg.value(metadata i64 7, metadata !2402, metadata !DIExpression()) #33, !dbg !2403
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), i64 7) #33, !dbg !2405
  %13 = icmp eq i32 %12, 0, !dbg !2406
  br i1 %13, label %14, label %19, !dbg !2407

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2385, metadata !DIExpression()), !dbg !2388
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.104, i64 0, i64 0), i64 noundef 3) #34, !dbg !2408
  %16 = icmp eq i32 %15, 0, !dbg !2411
  %17 = select i1 %16, i64 3, i64 0, !dbg !2412
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2412
  br label %19, !dbg !2412

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2388
  call void @llvm.dbg.value(metadata i8* %21, metadata !2387, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %20, metadata !2385, metadata !DIExpression()), !dbg !2388
  store i8* %20, i8** @program_name, align 8, !dbg !2413, !tbaa !617
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2414, !tbaa !617
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2415, !tbaa !617
  ret void, !dbg !2416
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !395 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !402, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8* %1, metadata !403, metadata !DIExpression()), !dbg !2417
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !2418
  call void @llvm.dbg.value(metadata i8* %5, metadata !404, metadata !DIExpression()), !dbg !2417
  %6 = icmp eq i8* %5, %0, !dbg !2419
  br i1 %6, label %7, label %17, !dbg !2421

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2422
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !2422
  %10 = bitcast i64* %4 to i8*, !dbg !2423
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !2423
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !406, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2425, metadata !DIExpression()) #33, !dbg !2432
  call void @llvm.dbg.value(metadata i8* %10, metadata !2434, metadata !DIExpression()) #33, !dbg !2441
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()) #33, !dbg !2441
  call void @llvm.dbg.value(metadata i64 8, metadata !2440, metadata !DIExpression()) #33, !dbg !2441
  store i64 0, i64* %4, align 8, !dbg !2443
  call void @llvm.dbg.value(metadata i32* %3, metadata !405, metadata !DIExpression(DW_OP_deref)), !dbg !2417
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !2444
  %12 = icmp eq i64 %11, 2, !dbg !2446
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !405, metadata !DIExpression()), !dbg !2417
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2447
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2417
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !2448
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2417
  ret i8* %18, !dbg !2448
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2449 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2454, metadata !DIExpression()), !dbg !2457
  %2 = tail call i32* @__errno_location() #36, !dbg !2458
  %3 = load i32, i32* %2, align 4, !dbg !2458, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %3, metadata !2455, metadata !DIExpression()), !dbg !2457
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2459
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2459
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2459
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #39, !dbg !2460
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2460
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2456, metadata !DIExpression()), !dbg !2457
  store i32 %3, i32* %2, align 4, !dbg !2461, !tbaa !712
  ret %struct.quoting_options* %8, !dbg !2462
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2463 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2469, metadata !DIExpression()), !dbg !2470
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2471
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2471
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2472
  %5 = load i32, i32* %4, align 8, !dbg !2472, !tbaa !2473
  ret i32 %5, !dbg !2475
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !2476 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %1, metadata !2481, metadata !DIExpression()), !dbg !2482
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2483
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2483
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2484
  store i32 %1, i32* %5, align 8, !dbg !2485, !tbaa !2473
  ret void, !dbg !2486
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2487 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2491, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %1, metadata !2492, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 %2, metadata !2493, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %1, metadata !2494, metadata !DIExpression()), !dbg !2499
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2500
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2500
  %6 = lshr i8 %1, 5, !dbg !2501
  %7 = zext i8 %6 to i64, !dbg !2501
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2502
  call void @llvm.dbg.value(metadata i32* %8, metadata !2495, metadata !DIExpression()), !dbg !2499
  %9 = and i8 %1, 31, !dbg !2503
  %10 = zext i8 %9 to i32, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %10, metadata !2497, metadata !DIExpression()), !dbg !2499
  %11 = load i32, i32* %8, align 4, !dbg !2504, !tbaa !712
  %12 = lshr i32 %11, %10, !dbg !2505
  %13 = and i32 %12, 1, !dbg !2506
  call void @llvm.dbg.value(metadata i32 %13, metadata !2498, metadata !DIExpression()), !dbg !2499
  %14 = and i32 %2, 1, !dbg !2507
  %15 = xor i32 %13, %14, !dbg !2508
  %16 = shl i32 %15, %10, !dbg !2509
  %17 = xor i32 %16, %11, !dbg !2510
  store i32 %17, i32* %8, align 4, !dbg !2510, !tbaa !712
  ret i32 %13, !dbg !2511
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2512 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2516, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %1, metadata !2517, metadata !DIExpression()), !dbg !2519
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2520
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2522
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2516, metadata !DIExpression()), !dbg !2519
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2523
  %6 = load i32, i32* %5, align 4, !dbg !2523, !tbaa !2524
  call void @llvm.dbg.value(metadata i32 %6, metadata !2518, metadata !DIExpression()), !dbg !2519
  store i32 %1, i32* %5, align 4, !dbg !2525, !tbaa !2524
  ret i32 %6, !dbg !2526
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2527 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()), !dbg !2534
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2535
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2531, metadata !DIExpression()), !dbg !2534
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2538
  store i32 10, i32* %6, align 8, !dbg !2539, !tbaa !2473
  %7 = icmp ne i8* %1, null, !dbg !2540
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2542
  br i1 %9, label %11, label %10, !dbg !2542

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2543
  unreachable, !dbg !2543

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2544
  store i8* %1, i8** %12, align 8, !dbg !2545, !tbaa !2546
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2547
  store i8* %2, i8** %13, align 8, !dbg !2548, !tbaa !2549
  ret void, !dbg !2550
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2555, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %1, metadata !2556, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* %2, metadata !2557, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %3, metadata !2558, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2559, metadata !DIExpression()), !dbg !2563
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2564
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2564
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2560, metadata !DIExpression()), !dbg !2563
  %8 = tail call i32* @__errno_location() #36, !dbg !2565
  %9 = load i32, i32* %8, align 4, !dbg !2565, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %9, metadata !2561, metadata !DIExpression()), !dbg !2563
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2566
  %11 = load i32, i32* %10, align 8, !dbg !2566, !tbaa !2473
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2567
  %13 = load i32, i32* %12, align 4, !dbg !2567, !tbaa !2524
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2568
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2569
  %16 = load i8*, i8** %15, align 8, !dbg !2569, !tbaa !2546
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2570
  %18 = load i8*, i8** %17, align 8, !dbg !2570, !tbaa !2549
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %19, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i32 %9, i32* %8, align 4, !dbg !2572, !tbaa !712
  ret i64 %19, !dbg !2573
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2574 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %1, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %2, metadata !2582, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %3, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %4, metadata !2584, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %5, metadata !2585, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32* %6, metadata !2586, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %7, metadata !2587, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %8, metadata !2588, metadata !DIExpression()), !dbg !2642
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !2643
  %18 = icmp eq i64 %17, 1, !dbg !2644
  call void @llvm.dbg.value(metadata i1 %18, metadata !2589, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2642
  call void @llvm.dbg.value(metadata i64 0, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 0, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* null, metadata !2592, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 0, metadata !2593, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 0, metadata !2594, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %5, metadata !2595, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2642
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2642
  %19 = and i32 %5, 2, !dbg !2645
  %20 = icmp ne i32 %19, 0, !dbg !2645
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
  br label %36, !dbg !2645

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2646
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2647
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2648
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %43, metadata !2593, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %42, metadata !2592, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %41, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 0, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %40, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %39, metadata !2588, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %38, metadata !2587, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %37, metadata !2584, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.label(metadata !2635), !dbg !2649
  call void @llvm.dbg.value(metadata i8 0, metadata !2598, metadata !DIExpression()), !dbg !2642
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
  ], !dbg !2650

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 5, metadata !2584, metadata !DIExpression()), !dbg !2642
  br label %111, !dbg !2651

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 5, metadata !2584, metadata !DIExpression()), !dbg !2642
  br i1 %45, label %111, label %51, !dbg !2651

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2652
  br i1 %52, label %111, label %53, !dbg !2656

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2652, !tbaa !721
  br label %111, !dbg !2652

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.117, i64 0, i64 0), metadata !466, metadata !DIExpression()) #33, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %37, metadata !467, metadata !DIExpression()) #33, !dbg !2657
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.117, i64 0, i64 0), i32 noundef 5) #33, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %55, metadata !468, metadata !DIExpression()) #33, !dbg !2657
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.117, i64 0, i64 0), !dbg !2662
  br i1 %56, label %57, label %66, !dbg !2664

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2665
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2666
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !470, metadata !DIExpression()) #33, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2668, metadata !DIExpression()) #33, !dbg !2674
  call void @llvm.dbg.value(metadata i8* %23, metadata !2676, metadata !DIExpression()) #33, !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #33, !dbg !2681
  call void @llvm.dbg.value(metadata i64 8, metadata !2680, metadata !DIExpression()) #33, !dbg !2681
  store i64 0, i64* %13, align 8, !dbg !2683
  call void @llvm.dbg.value(metadata i32* %12, metadata !469, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2657
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !2684
  %59 = icmp eq i64 %58, 3, !dbg !2686
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !469, metadata !DIExpression()) #33, !dbg !2657
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2687
  %63 = icmp eq i32 %37, 9, !dbg !2687
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), !dbg !2687
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2687
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2688
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2688
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2657
  call void @llvm.dbg.value(metadata i8* %67, metadata !2587, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), metadata !466, metadata !DIExpression()) #33, !dbg !2689
  call void @llvm.dbg.value(metadata i32 %37, metadata !467, metadata !DIExpression()) #33, !dbg !2689
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), i32 noundef 5) #33, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %68, metadata !468, metadata !DIExpression()) #33, !dbg !2689
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), !dbg !2692
  br i1 %69, label %70, label %79, !dbg !2693

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2695
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !470, metadata !DIExpression()) #33, !dbg !2696
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2668, metadata !DIExpression()) #33, !dbg !2697
  call void @llvm.dbg.value(metadata i8* %26, metadata !2676, metadata !DIExpression()) #33, !dbg !2699
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #33, !dbg !2699
  call void @llvm.dbg.value(metadata i64 8, metadata !2680, metadata !DIExpression()) #33, !dbg !2699
  store i64 0, i64* %11, align 8, !dbg !2701
  call void @llvm.dbg.value(metadata i32* %10, metadata !469, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2689
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !2702
  %72 = icmp eq i64 %71, 3, !dbg !2703
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !469, metadata !DIExpression()) #33, !dbg !2689
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2704
  %76 = icmp eq i32 %37, 9, !dbg !2704
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), !dbg !2704
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2704
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2705
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2705
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2588, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %80, metadata !2587, metadata !DIExpression()), !dbg !2642
  br i1 %45, label %97, label %82, !dbg !2706

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2599, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64 0, metadata !2590, metadata !DIExpression()), !dbg !2642
  %83 = load i8, i8* %80, align 1, !dbg !2708, !tbaa !721
  %84 = icmp eq i8 %83, 0, !dbg !2710
  br i1 %84, label %97, label %85, !dbg !2710

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2599, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64 %88, metadata !2590, metadata !DIExpression()), !dbg !2642
  %89 = icmp ult i64 %88, %48, !dbg !2711
  br i1 %89, label %90, label %92, !dbg !2714

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2711
  store i8 %86, i8* %91, align 1, !dbg !2711, !tbaa !721
  br label %92, !dbg !2711

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %93, metadata !2590, metadata !DIExpression()), !dbg !2642
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %94, metadata !2599, metadata !DIExpression()), !dbg !2707
  %95 = load i8, i8* %94, align 1, !dbg !2708, !tbaa !721
  %96 = icmp eq i8 %95, 0, !dbg !2710
  br i1 %96, label %97, label %85, !dbg !2710, !llvm.loop !2716

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2718
  call void @llvm.dbg.value(metadata i64 %98, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 1, metadata !2594, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %81, metadata !2592, metadata !DIExpression()), !dbg !2642
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %99, metadata !2593, metadata !DIExpression()), !dbg !2642
  br label %111, !dbg !2720

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2594, metadata !DIExpression()), !dbg !2642
  br label %102, !dbg !2721

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2642
  br i1 %45, label %102, label %105, !dbg !2722

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 2, metadata !2584, metadata !DIExpression()), !dbg !2642
  br label %111, !dbg !2723

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 2, metadata !2584, metadata !DIExpression()), !dbg !2642
  br i1 %45, label %111, label %105, !dbg !2723

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2724
  br i1 %107, label %111, label %108, !dbg !2728

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2724, !tbaa !721
  br label %111, !dbg !2724

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2595, metadata !DIExpression()), !dbg !2642
  br label %111, !dbg !2729

110:                                              ; preds = %36
  call void @abort() #35, !dbg !2730
  unreachable, !dbg !2730

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2718
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), %102 ], !dbg !2642
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2642
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %117, metadata !2593, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %116, metadata !2592, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %115, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %114, metadata !2588, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %113, metadata !2587, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %112, metadata !2584, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 0, metadata !2604, metadata !DIExpression()), !dbg !2731
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
  br label %132, !dbg !2732

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2718
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2646
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2731
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %139, metadata !2604, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %135, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %134, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %133, metadata !2583, metadata !DIExpression()), !dbg !2642
  %141 = icmp eq i64 %133, -1, !dbg !2733
  br i1 %141, label %142, label %146, !dbg !2734

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2735
  %144 = load i8, i8* %143, align 1, !dbg !2735, !tbaa !721
  %145 = icmp eq i8 %144, 0, !dbg !2736
  br i1 %145, label %596, label %148, !dbg !2737

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2738
  br i1 %147, label %596, label %148, !dbg !2737

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 0, metadata !2609, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 0, metadata !2610, metadata !DIExpression()), !dbg !2739
  br i1 %123, label %149, label %163, !dbg !2740

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2742
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2743
  br i1 %151, label %152, label %154, !dbg !2743

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %153, metadata !2583, metadata !DIExpression()), !dbg !2642
  br label %154, !dbg !2745

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2745
  call void @llvm.dbg.value(metadata i64 %155, metadata !2583, metadata !DIExpression()), !dbg !2642
  %156 = icmp ugt i64 %150, %155, !dbg !2746
  br i1 %156, label %163, label %157, !dbg !2747

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %158, metadata !2749, metadata !DIExpression()) #33, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %116, metadata !2752, metadata !DIExpression()) #33, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %117, metadata !2753, metadata !DIExpression()) #33, !dbg !2754
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !2756
  %160 = icmp ne i32 %159, 0, !dbg !2757
  %161 = or i1 %160, %125, !dbg !2758
  %162 = xor i1 %160, true, !dbg !2758
  br i1 %161, label %163, label %647, !dbg !2758

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2606, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %164, metadata !2583, metadata !DIExpression()), !dbg !2642
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2759
  %167 = load i8, i8* %166, align 1, !dbg !2759, !tbaa !721
  call void @llvm.dbg.value(metadata i8 %167, metadata !2611, metadata !DIExpression()), !dbg !2739
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
  ], !dbg !2760

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2761

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2762

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2609, metadata !DIExpression()), !dbg !2739
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2766
  br i1 %171, label %188, label %172, !dbg !2766

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2768
  br i1 %173, label %174, label %176, !dbg !2772

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2768
  store i8 39, i8* %175, align 1, !dbg !2768, !tbaa !721
  br label %176, !dbg !2768

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %177, metadata !2590, metadata !DIExpression()), !dbg !2642
  %178 = icmp ult i64 %177, %140, !dbg !2773
  br i1 %178, label %179, label %181, !dbg !2776

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2773
  store i8 36, i8* %180, align 1, !dbg !2773, !tbaa !721
  br label %181, !dbg !2773

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %182, metadata !2590, metadata !DIExpression()), !dbg !2642
  %183 = icmp ult i64 %182, %140, !dbg !2777
  br i1 %183, label %184, label %186, !dbg !2780

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2777
  store i8 39, i8* %185, align 1, !dbg !2777, !tbaa !721
  br label %186, !dbg !2777

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %187, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 1, metadata !2598, metadata !DIExpression()), !dbg !2642
  br label %188, !dbg !2781

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2642
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %189, metadata !2590, metadata !DIExpression()), !dbg !2642
  %191 = icmp ult i64 %189, %140, !dbg !2782
  br i1 %191, label %192, label %194, !dbg !2785

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2782
  store i8 92, i8* %193, align 1, !dbg !2782, !tbaa !721
  br label %194, !dbg !2782

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %195, metadata !2590, metadata !DIExpression()), !dbg !2642
  br i1 %120, label %196, label %499, !dbg !2786

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2788
  %198 = icmp ult i64 %197, %164, !dbg !2789
  br i1 %198, label %199, label %456, !dbg !2790

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2791
  %201 = load i8, i8* %200, align 1, !dbg !2791, !tbaa !721
  %202 = add i8 %201, -48, !dbg !2792
  %203 = icmp ult i8 %202, 10, !dbg !2792
  br i1 %203, label %204, label %456, !dbg !2792

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2793
  br i1 %205, label %206, label %208, !dbg !2797

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2793
  store i8 48, i8* %207, align 1, !dbg !2793, !tbaa !721
  br label %208, !dbg !2793

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %209, metadata !2590, metadata !DIExpression()), !dbg !2642
  %210 = icmp ult i64 %209, %140, !dbg !2798
  br i1 %210, label %211, label %213, !dbg !2801

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2798
  store i8 48, i8* %212, align 1, !dbg !2798, !tbaa !721
  br label %213, !dbg !2798

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %214, metadata !2590, metadata !DIExpression()), !dbg !2642
  br label %456, !dbg !2802

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2803

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2804

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2805

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2807

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2809
  %221 = icmp ult i64 %220, %164, !dbg !2810
  br i1 %221, label %222, label %456, !dbg !2811

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2812
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2813
  %225 = load i8, i8* %224, align 1, !dbg !2813, !tbaa !721
  %226 = icmp eq i8 %225, 63, !dbg !2814
  br i1 %226, label %227, label %456, !dbg !2815

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2816
  %229 = load i8, i8* %228, align 1, !dbg !2816, !tbaa !721
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
  ], !dbg !2817

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2818

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2611, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %220, metadata !2604, metadata !DIExpression()), !dbg !2731
  %232 = icmp ult i64 %134, %140, !dbg !2820
  br i1 %232, label %233, label %235, !dbg !2823

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2820
  store i8 63, i8* %234, align 1, !dbg !2820, !tbaa !721
  br label %235, !dbg !2820

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %236, metadata !2590, metadata !DIExpression()), !dbg !2642
  %237 = icmp ult i64 %236, %140, !dbg !2824
  br i1 %237, label %238, label %240, !dbg !2827

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2824
  store i8 34, i8* %239, align 1, !dbg !2824, !tbaa !721
  br label %240, !dbg !2824

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %241, metadata !2590, metadata !DIExpression()), !dbg !2642
  %242 = icmp ult i64 %241, %140, !dbg !2828
  br i1 %242, label %243, label %245, !dbg !2831

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2828
  store i8 34, i8* %244, align 1, !dbg !2828, !tbaa !721
  br label %245, !dbg !2828

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %246, metadata !2590, metadata !DIExpression()), !dbg !2642
  %247 = icmp ult i64 %246, %140, !dbg !2832
  br i1 %247, label %248, label %250, !dbg !2835

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2832
  store i8 63, i8* %249, align 1, !dbg !2832, !tbaa !721
  br label %250, !dbg !2832

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %251, metadata !2590, metadata !DIExpression()), !dbg !2642
  br label %456, !dbg !2836

252:                                              ; preds = %163
  br label %263, !dbg !2837

253:                                              ; preds = %163
  br label %263, !dbg !2838

254:                                              ; preds = %163
  br label %261, !dbg !2839

255:                                              ; preds = %163
  br label %261, !dbg !2840

256:                                              ; preds = %163
  br label %263, !dbg !2841

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2842

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2843

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2846

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2848

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2849
  call void @llvm.dbg.label(metadata !2636), !dbg !2850
  br i1 %128, label %263, label %638, !dbg !2851

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2849
  call void @llvm.dbg.label(metadata !2638), !dbg !2853
  br i1 %118, label %510, label %467, !dbg !2854

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2855

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2856, !tbaa !721
  %268 = icmp eq i8 %267, 0, !dbg !2858
  br i1 %268, label %269, label %456, !dbg !2859

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2860
  br i1 %270, label %271, label %456, !dbg !2862

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2610, metadata !DIExpression()), !dbg !2739
  br label %272, !dbg !2863

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2610, metadata !DIExpression()), !dbg !2739
  br i1 %126, label %274, label %456, !dbg !2864

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2866

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 1, metadata !2610, metadata !DIExpression()), !dbg !2739
  br i1 %126, label %276, label %456, !dbg !2867

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2868

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2871
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2873
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2873
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %282, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %281, metadata !2591, metadata !DIExpression()), !dbg !2642
  %283 = icmp ult i64 %134, %282, !dbg !2874
  br i1 %283, label %284, label %286, !dbg !2877

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2874
  store i8 39, i8* %285, align 1, !dbg !2874, !tbaa !721
  br label %286, !dbg !2874

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %287, metadata !2590, metadata !DIExpression()), !dbg !2642
  %288 = icmp ult i64 %287, %282, !dbg !2878
  br i1 %288, label %289, label %291, !dbg !2881

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2878
  store i8 92, i8* %290, align 1, !dbg !2878, !tbaa !721
  br label %291, !dbg !2878

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %292, metadata !2590, metadata !DIExpression()), !dbg !2642
  %293 = icmp ult i64 %292, %282, !dbg !2882
  br i1 %293, label %294, label %296, !dbg !2885

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2882
  store i8 39, i8* %295, align 1, !dbg !2882, !tbaa !721
  br label %296, !dbg !2882

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %297, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 0, metadata !2598, metadata !DIExpression()), !dbg !2642
  br label %456, !dbg !2886

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2887

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2612, metadata !DIExpression()), !dbg !2888
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !2889
  %301 = load i16*, i16** %300, align 8, !dbg !2889, !tbaa !617
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2889
  %304 = load i16, i16* %303, align 2, !dbg !2889, !tbaa !746
  %305 = and i16 %304, 16384, !dbg !2889
  %306 = icmp ne i16 %305, 0, !dbg !2891
  call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %349, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %312, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i1 %350, metadata !2610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  br label %352, !dbg !2892

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2893
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2616, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2668, metadata !DIExpression()) #33, !dbg !2895
  call void @llvm.dbg.value(metadata i8* %32, metadata !2676, metadata !DIExpression()) #33, !dbg !2897
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #33, !dbg !2897
  call void @llvm.dbg.value(metadata i64 8, metadata !2680, metadata !DIExpression()) #33, !dbg !2897
  store i64 0, i64* %14, align 8, !dbg !2899
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 1, metadata !2615, metadata !DIExpression()), !dbg !2888
  %308 = icmp eq i64 %164, -1, !dbg !2900
  br i1 %308, label %309, label %311, !dbg !2902

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %310, metadata !2583, metadata !DIExpression()), !dbg !2642
  br label %311, !dbg !2904

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2739
  call void @llvm.dbg.value(metadata i64 %312, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2905
  %313 = sub i64 %312, %139, !dbg !2906
  call void @llvm.dbg.value(metadata i32* %16, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2907
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %314, metadata !2623, metadata !DIExpression()), !dbg !2907
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2909

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2888
  %316 = icmp ugt i64 %312, %139, !dbg !2910
  br i1 %316, label %319, label %317, !dbg !2912

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %349, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %312, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i1 %350, metadata !2610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  br label %352, !dbg !2892

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2615, metadata !DIExpression()), !dbg !2888
  br label %346, !dbg !2915

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2612, metadata !DIExpression()), !dbg !2888
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2917
  %323 = load i8, i8* %322, align 1, !dbg !2917, !tbaa !721
  %324 = icmp eq i8 %323, 0, !dbg !2912
  br i1 %324, label %348, label %325, !dbg !2918

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %326, metadata !2612, metadata !DIExpression()), !dbg !2888
  %327 = add i64 %326, %139, !dbg !2920
  %328 = icmp eq i64 %326, %313, !dbg !2910
  br i1 %328, label %348, label %319, !dbg !2912, !llvm.loop !2921

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2922
  call void @llvm.dbg.value(metadata i64 1, metadata !2624, metadata !DIExpression()), !dbg !2923
  br i1 %331, label %332, label %340, !dbg !2922

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2624, metadata !DIExpression()), !dbg !2923
  %334 = add i64 %333, %139, !dbg !2924
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2926
  %336 = load i8, i8* %335, align 1, !dbg !2926, !tbaa !721
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2927

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %338, metadata !2624, metadata !DIExpression()), !dbg !2923
  %339 = icmp eq i64 %338, %314, !dbg !2929
  br i1 %339, label %340, label %332, !dbg !2930, !llvm.loop !2931

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2933, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %341, metadata !2619, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %341, metadata !2935, metadata !DIExpression()) #33, !dbg !2938
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !2940
  %343 = icmp ne i32 %342, 0, !dbg !2941
  call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %314, metadata !2612, metadata !DIExpression()), !dbg !2888
  br label %348, !dbg !2942

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2914
  call void @llvm.dbg.label(metadata !2641), !dbg !2943
  %345 = select i1 %118, i32 4, i32 2, !dbg !2944
  br label %643, !dbg !2944

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %349, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %312, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i1 %350, metadata !2610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  br label %352, !dbg !2892

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %349, metadata !2612, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %312, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i1 %350, metadata !2610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  %351 = icmp ugt i64 %349, 1, !dbg !2946
  br i1 %351, label %357, label %352, !dbg !2892

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2947
  br i1 %356, label %456, label %357, !dbg !2947

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %361, metadata !2632, metadata !DIExpression()), !dbg !2949
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2950

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2642
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2731
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2951
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2739
  call void @llvm.dbg.value(metadata i8 %369, metadata !2611, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %368, metadata !2609, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2606, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %366, metadata !2604, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %364, metadata !2590, metadata !DIExpression()), !dbg !2642
  br i1 %362, label %414, label %370, !dbg !2952

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2957

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2609, metadata !DIExpression()), !dbg !2739
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2960
  br i1 %372, label %389, label %373, !dbg !2960

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2962
  br i1 %374, label %375, label %377, !dbg !2966

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2962
  store i8 39, i8* %376, align 1, !dbg !2962, !tbaa !721
  br label %377, !dbg !2962

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %378, metadata !2590, metadata !DIExpression()), !dbg !2642
  %379 = icmp ult i64 %378, %140, !dbg !2967
  br i1 %379, label %380, label %382, !dbg !2970

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2967
  store i8 36, i8* %381, align 1, !dbg !2967, !tbaa !721
  br label %382, !dbg !2967

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %383, metadata !2590, metadata !DIExpression()), !dbg !2642
  %384 = icmp ult i64 %383, %140, !dbg !2971
  br i1 %384, label %385, label %387, !dbg !2974

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2971
  store i8 39, i8* %386, align 1, !dbg !2971, !tbaa !721
  br label %387, !dbg !2971

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %388, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 1, metadata !2598, metadata !DIExpression()), !dbg !2642
  br label %389, !dbg !2975

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2642
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %390, metadata !2590, metadata !DIExpression()), !dbg !2642
  %392 = icmp ult i64 %390, %140, !dbg !2976
  br i1 %392, label %393, label %395, !dbg !2979

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2976
  store i8 92, i8* %394, align 1, !dbg !2976, !tbaa !721
  br label %395, !dbg !2976

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %396, metadata !2590, metadata !DIExpression()), !dbg !2642
  %397 = icmp ult i64 %396, %140, !dbg !2980
  br i1 %397, label %398, label %402, !dbg !2983

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2980
  %400 = or i8 %399, 48, !dbg !2980
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2980
  store i8 %400, i8* %401, align 1, !dbg !2980, !tbaa !721
  br label %402, !dbg !2980

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %403, metadata !2590, metadata !DIExpression()), !dbg !2642
  %404 = icmp ult i64 %403, %140, !dbg !2984
  br i1 %404, label %405, label %410, !dbg !2987

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2984
  %407 = and i8 %406, 7, !dbg !2984
  %408 = or i8 %407, 48, !dbg !2984
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2984
  store i8 %408, i8* %409, align 1, !dbg !2984, !tbaa !721
  br label %410, !dbg !2984

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %411, metadata !2590, metadata !DIExpression()), !dbg !2642
  %412 = and i8 %369, 7, !dbg !2988
  %413 = or i8 %412, 48, !dbg !2989
  call void @llvm.dbg.value(metadata i8 %413, metadata !2611, metadata !DIExpression()), !dbg !2739
  br label %421, !dbg !2990

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2991

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2992
  br i1 %416, label %417, label %419, !dbg !2997

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2992
  store i8 92, i8* %418, align 1, !dbg !2992, !tbaa !721
  br label %419, !dbg !2992

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %420, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2739
  br label %421, !dbg !2998

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2642
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2739
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2739
  call void @llvm.dbg.value(metadata i8 %426, metadata !2611, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %425, metadata !2609, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2606, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %422, metadata !2590, metadata !DIExpression()), !dbg !2642
  %427 = add i64 %366, 1, !dbg !2999
  %428 = icmp ugt i64 %361, %427, !dbg !3001
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !3002

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !3003
  %432 = select i1 %423, i1 %431, i1 false, !dbg !3003
  br i1 %432, label %433, label %444, !dbg !3003

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !3006
  br i1 %434, label %435, label %437, !dbg !3010

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !3006
  store i8 39, i8* %436, align 1, !dbg !3006, !tbaa !721
  br label %437, !dbg !3006

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !3010
  call void @llvm.dbg.value(metadata i64 %438, metadata !2590, metadata !DIExpression()), !dbg !2642
  %439 = icmp ult i64 %438, %140, !dbg !3011
  br i1 %439, label %440, label %442, !dbg !3014

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !3011
  store i8 39, i8* %441, align 1, !dbg !3011, !tbaa !721
  br label %442, !dbg !3011

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %443, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 0, metadata !2598, metadata !DIExpression()), !dbg !2642
  br label %444, !dbg !3015

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !3016
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %445, metadata !2590, metadata !DIExpression()), !dbg !2642
  %447 = icmp ult i64 %445, %140, !dbg !3017
  br i1 %447, label %448, label %450, !dbg !3020

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !3017
  store i8 %426, i8* %449, align 1, !dbg !3017, !tbaa !721
  br label %450, !dbg !3017

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %451, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %427, metadata !2604, metadata !DIExpression()), !dbg !2731
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !3021
  %453 = load i8, i8* %452, align 1, !dbg !3021, !tbaa !721
  call void @llvm.dbg.value(metadata i8 %453, metadata !2611, metadata !DIExpression()), !dbg !2739
  br label %363, !dbg !3022, !llvm.loop !3023

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2611, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i1 %358, metadata !2610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %425, metadata !2609, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2606, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %366, metadata !2604, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %422, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %360, metadata !2583, metadata !DIExpression()), !dbg !2642
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !3026
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2642
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2646
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2731
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2739
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 %465, metadata !2611, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2609, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2606, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %462, metadata !2604, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %459, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %458, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %457, metadata !2583, metadata !DIExpression()), !dbg !2642
  br i1 %121, label %478, label %467, !dbg !3027

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
  br i1 %131, label %479, label %499, !dbg !3029

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !3030

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
  %490 = lshr i8 %481, 5, !dbg !3031
  %491 = zext i8 %490 to i64, !dbg !3031
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3032
  %493 = load i32, i32* %492, align 4, !dbg !3032, !tbaa !712
  %494 = and i8 %481, 31, !dbg !3033
  %495 = zext i8 %494 to i32, !dbg !3033
  %496 = shl nuw i32 1, %495, !dbg !3034
  %497 = and i32 %493, %496, !dbg !3034
  %498 = icmp eq i32 %497, 0, !dbg !3034
  br i1 %498, label %499, label %510, !dbg !3035

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
  br i1 %165, label %510, label %546, !dbg !3036

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !3026
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2642
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2646
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !3037
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2739
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 %518, metadata !2611, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %516, metadata !2604, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %513, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %512, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %511, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.label(metadata !2639), !dbg !3038
  br i1 %119, label %638, label %520, !dbg !3039

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2609, metadata !DIExpression()), !dbg !2739
  %521 = select i1 %120, i1 true, i1 %515, !dbg !3041
  br i1 %521, label %538, label %522, !dbg !3041

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !3043
  br i1 %523, label %524, label %526, !dbg !3047

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3043
  store i8 39, i8* %525, align 1, !dbg !3043, !tbaa !721
  br label %526, !dbg !3043

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %527, metadata !2590, metadata !DIExpression()), !dbg !2642
  %528 = icmp ult i64 %527, %519, !dbg !3048
  br i1 %528, label %529, label %531, !dbg !3051

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3048
  store i8 36, i8* %530, align 1, !dbg !3048, !tbaa !721
  br label %531, !dbg !3048

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %532, metadata !2590, metadata !DIExpression()), !dbg !2642
  %533 = icmp ult i64 %532, %519, !dbg !3052
  br i1 %533, label %534, label %536, !dbg !3055

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !3052
  store i8 39, i8* %535, align 1, !dbg !3052, !tbaa !721
  br label %536, !dbg !3052

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %537, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 1, metadata !2598, metadata !DIExpression()), !dbg !2642
  br label %538, !dbg !3056

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2739
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %539, metadata !2590, metadata !DIExpression()), !dbg !2642
  %541 = icmp ult i64 %539, %519, !dbg !3057
  br i1 %541, label %542, label %544, !dbg !3060

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !3057
  store i8 92, i8* %543, align 1, !dbg !3057, !tbaa !721
  br label %544, !dbg !3057

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %556, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 %555, metadata !2611, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2609, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %552, metadata !2604, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %549, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %548, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %547, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.label(metadata !2640), !dbg !3061
  br label %570, !dbg !3062

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !3026
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2642
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2646
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !3037
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !3065
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 %555, metadata !2611, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 poison, metadata !2609, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %552, metadata !2604, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %549, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %548, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %547, metadata !2583, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.label(metadata !2640), !dbg !3061
  %557 = xor i1 %551, true, !dbg !3062
  %558 = select i1 %557, i1 true, i1 %553, !dbg !3062
  br i1 %558, label %570, label %559, !dbg !3062

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !3066
  br i1 %560, label %561, label %563, !dbg !3070

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3066
  store i8 39, i8* %562, align 1, !dbg !3066, !tbaa !721
  br label %563, !dbg !3066

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %564, metadata !2590, metadata !DIExpression()), !dbg !2642
  %565 = icmp ult i64 %564, %556, !dbg !3071
  br i1 %565, label %566, label %568, !dbg !3074

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3071
  store i8 39, i8* %567, align 1, !dbg !3071, !tbaa !721
  br label %568, !dbg !3071

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %569, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 0, metadata !2598, metadata !DIExpression()), !dbg !2642
  br label %570, !dbg !3075

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2739
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %578, metadata !2590, metadata !DIExpression()), !dbg !2642
  %580 = icmp ult i64 %578, %571, !dbg !3076
  br i1 %580, label %581, label %583, !dbg !3079

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !3076
  store i8 %572, i8* %582, align 1, !dbg !3076, !tbaa !721
  br label %583, !dbg !3076

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %584, metadata !2590, metadata !DIExpression()), !dbg !2642
  %585 = select i1 %573, i1 %137, i1 false, !dbg !3080
  call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2642
  br label %586, !dbg !3081

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !3026
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2642
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2646
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !3037
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %593, metadata !2604, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 poison, metadata !2598, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %589, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %588, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %587, metadata !2583, metadata !DIExpression()), !dbg !2642
  %595 = add i64 %593, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %595, metadata !2604, metadata !DIExpression()), !dbg !2731
  br label %132, !dbg !3083, !llvm.loop !3084

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2581, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 undef, metadata !2591, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 undef, metadata !2590, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 undef, metadata !2583, metadata !DIExpression()), !dbg !2642
  %597 = icmp eq i64 %134, 0, !dbg !3086
  %598 = and i1 %126, %597, !dbg !3088
  %599 = and i1 %598, %119, !dbg !3088
  br i1 %599, label %638, label %600, !dbg !3088

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !3089
  %602 = or i1 %119, %601, !dbg !3089
  %603 = xor i1 %136, true, !dbg !3089
  %604 = select i1 %602, i1 true, i1 %603, !dbg !3089
  br i1 %604, label %612, label %605, !dbg !3089

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !3091

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !3093
  br label %653, !dbg !3095

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !3096
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !3098
  br i1 %611, label %36, label %612, !dbg !3098

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !3099
  %615 = or i1 %614, %613, !dbg !3101
  br i1 %615, label %631, label %616, !dbg !3101

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2592, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %134, metadata !2590, metadata !DIExpression()), !dbg !2642
  %617 = load i8, i8* %116, align 1, !dbg !3102, !tbaa !721
  %618 = icmp eq i8 %617, 0, !dbg !3105
  br i1 %618, label %631, label %619, !dbg !3105

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2592, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %622, metadata !2590, metadata !DIExpression()), !dbg !2642
  %623 = icmp ult i64 %622, %140, !dbg !3106
  br i1 %623, label %624, label %626, !dbg !3109

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3106
  store i8 %620, i8* %625, align 1, !dbg !3106, !tbaa !721
  br label %626, !dbg !3106

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %627, metadata !2590, metadata !DIExpression()), !dbg !2642
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %628, metadata !2592, metadata !DIExpression()), !dbg !2642
  %629 = load i8, i8* %628, align 1, !dbg !3102, !tbaa !721
  %630 = icmp eq i8 %629, 0, !dbg !3105
  br i1 %630, label %631, label %619, !dbg !3105, !llvm.loop !3111

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2718
  call void @llvm.dbg.value(metadata i64 %632, metadata !2590, metadata !DIExpression()), !dbg !2642
  %633 = icmp ult i64 %632, %140, !dbg !3113
  br i1 %633, label %634, label %653, !dbg !3115

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3116
  store i8 0, i8* %635, align 1, !dbg !3117, !tbaa !721
  br label %653, !dbg !3116

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2641), !dbg !2943
  %637 = icmp eq i32 %112, 2, !dbg !3118
  br i1 %637, label %643, label %647, !dbg !2944

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2641), !dbg !2943
  %641 = icmp eq i32 %112, 2, !dbg !3118
  %642 = select i1 %118, i32 4, i32 2, !dbg !2944
  br i1 %641, label %643, label %647, !dbg !2944

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2944

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2584, metadata !DIExpression()), !dbg !2642
  %651 = and i32 %5, -3, !dbg !3119
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3120
  br label %653, !dbg !3121

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3122
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !3123 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !3124 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()) #33, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %1, metadata !3137, metadata !DIExpression()) #33, !dbg !3145
  call void @llvm.dbg.value(metadata i64* null, metadata !3138, metadata !DIExpression()) #33, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3139, metadata !DIExpression()) #33, !dbg !3145
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3147
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3140, metadata !DIExpression()) #33, !dbg !3145
  %6 = tail call i32* @__errno_location() #36, !dbg !3148
  %7 = load i32, i32* %6, align 4, !dbg !3148, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %7, metadata !3141, metadata !DIExpression()) #33, !dbg !3145
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3149
  %9 = load i32, i32* %8, align 4, !dbg !3149, !tbaa !2524
  %10 = or i32 %9, 1, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %10, metadata !3142, metadata !DIExpression()) #33, !dbg !3145
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3151
  %12 = load i32, i32* %11, align 8, !dbg !3151, !tbaa !2473
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3152
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3153
  %15 = load i8*, i8** %14, align 8, !dbg !3153, !tbaa !2546
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3154
  %17 = load i8*, i8** %16, align 8, !dbg !3154, !tbaa !2549
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !3155
  %19 = add i64 %18, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %19, metadata !3143, metadata !DIExpression()) #33, !dbg !3145
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #40, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %20, metadata !3144, metadata !DIExpression()) #33, !dbg !3145
  %21 = load i32, i32* %11, align 8, !dbg !3158, !tbaa !2473
  %22 = load i8*, i8** %14, align 8, !dbg !3159, !tbaa !2546
  %23 = load i8*, i8** %16, align 8, !dbg !3160, !tbaa !2549
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !3161
  store i32 %7, i32* %6, align 4, !dbg !3162, !tbaa !712
  ret i8* %20, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !3133 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %1, metadata !3137, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64* %2, metadata !3138, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3139, metadata !DIExpression()), !dbg !3164
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3165
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3140, metadata !DIExpression()), !dbg !3164
  %7 = tail call i32* @__errno_location() #36, !dbg !3166
  %8 = load i32, i32* %7, align 4, !dbg !3166, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %8, metadata !3141, metadata !DIExpression()), !dbg !3164
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3167
  %10 = load i32, i32* %9, align 4, !dbg !3167, !tbaa !2524
  %11 = icmp eq i64* %2, null, !dbg !3168
  %12 = zext i1 %11 to i32, !dbg !3168
  %13 = or i32 %10, %12, !dbg !3169
  call void @llvm.dbg.value(metadata i32 %13, metadata !3142, metadata !DIExpression()), !dbg !3164
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3170
  %15 = load i32, i32* %14, align 8, !dbg !3170, !tbaa !2473
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3171
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3172
  %18 = load i8*, i8** %17, align 8, !dbg !3172, !tbaa !2546
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3173
  %20 = load i8*, i8** %19, align 8, !dbg !3173, !tbaa !2549
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3174
  %22 = add i64 %21, 1, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %22, metadata !3143, metadata !DIExpression()), !dbg !3164
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #40, !dbg !3176
  call void @llvm.dbg.value(metadata i8* %23, metadata !3144, metadata !DIExpression()), !dbg !3164
  %24 = load i32, i32* %14, align 8, !dbg !3177, !tbaa !2473
  %25 = load i8*, i8** %17, align 8, !dbg !3178, !tbaa !2546
  %26 = load i8*, i8** %19, align 8, !dbg !3179, !tbaa !2549
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3180
  store i32 %8, i32* %7, align 4, !dbg !3181, !tbaa !712
  br i1 %11, label %29, label %28, !dbg !3182

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3183, !tbaa !903
  br label %29, !dbg !3185

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3186
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3187 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3192, !tbaa !617
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3189, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 1, metadata !3190, metadata !DIExpression()), !dbg !3194
  %2 = load i32, i32* @nslots, align 4, !tbaa !712
  call void @llvm.dbg.value(metadata i32 1, metadata !3190, metadata !DIExpression()), !dbg !3194
  %3 = icmp sgt i32 %2, 1, !dbg !3195
  br i1 %3, label %4, label %6, !dbg !3197

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3195
  br label %10, !dbg !3197

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3198
  %8 = load i8*, i8** %7, align 8, !dbg !3198, !tbaa !3200
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3202
  br i1 %9, label %17, label %16, !dbg !3203

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3190, metadata !DIExpression()), !dbg !3194
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3204
  %13 = load i8*, i8** %12, align 8, !dbg !3204, !tbaa !3200
  tail call void @free(i8* noundef %13) #33, !dbg !3205
  %14 = add nuw nsw i64 %11, 1, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %14, metadata !3190, metadata !DIExpression()), !dbg !3194
  %15 = icmp eq i64 %14, %5, !dbg !3195
  br i1 %15, label %6, label %10, !dbg !3197, !llvm.loop !3207

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !3209
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3211, !tbaa !3212
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3213, !tbaa !3200
  br label %17, !dbg !3214

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3215
  br i1 %18, label %21, label %19, !dbg !3217

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3218
  tail call void @free(i8* noundef %20) #33, !dbg !3220
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3221, !tbaa !617
  br label %21, !dbg !3222

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3223, !tbaa !712
  ret void, !dbg !3224
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3225 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3227, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %1, metadata !3228, metadata !DIExpression()), !dbg !3229
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3230
  ret i8* %3, !dbg !3231
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !3232 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3236, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %1, metadata !3237, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 %2, metadata !3238, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3239, metadata !DIExpression()), !dbg !3252
  %6 = tail call i32* @__errno_location() #36, !dbg !3253
  %7 = load i32, i32* %6, align 4, !dbg !3253, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %7, metadata !3240, metadata !DIExpression()), !dbg !3252
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3254, !tbaa !617
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3241, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3242, metadata !DIExpression()), !dbg !3252
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3255
  br i1 %9, label %10, label %11, !dbg !3255

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3257
  unreachable, !dbg !3257

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3258, !tbaa !712
  %13 = icmp sgt i32 %12, %0, !dbg !3259
  br i1 %13, label %36, label %14, !dbg !3260

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3261
  call void @llvm.dbg.value(metadata i1 %15, metadata !3243, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  %16 = bitcast i64* %5 to i8*, !dbg !3263
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !3263
  %17 = sext i32 %12 to i64, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %17, metadata !3246, metadata !DIExpression()), !dbg !3262
  store i64 %17, i64* %5, align 8, !dbg !3265, !tbaa !903
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3266
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3266
  %20 = add nuw nsw i32 %0, 1, !dbg !3267
  %21 = sub i32 %20, %12, !dbg !3268
  %22 = sext i32 %21 to i64, !dbg !3269
  call void @llvm.dbg.value(metadata i64* %5, metadata !3246, metadata !DIExpression(DW_OP_deref)), !dbg !3262
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !3270
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3270
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3241, metadata !DIExpression()), !dbg !3252
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3271, !tbaa !617
  br i1 %15, label %25, label %26, !dbg !3272

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3273, !tbaa.struct !3275
  br label %26, !dbg !3276

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3277, !tbaa !712
  %28 = sext i32 %27 to i64, !dbg !3278
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3278
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3279
  %31 = load i64, i64* %5, align 8, !dbg !3280, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %31, metadata !3246, metadata !DIExpression()), !dbg !3262
  %32 = sub nsw i64 %31, %28, !dbg !3281
  %33 = shl i64 %32, 4, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %30, metadata !2676, metadata !DIExpression()) #33, !dbg !3283
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #33, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %33, metadata !2680, metadata !DIExpression()) #33, !dbg !3283
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !3285
  %34 = load i64, i64* %5, align 8, !dbg !3286, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %34, metadata !3246, metadata !DIExpression()), !dbg !3262
  %35 = trunc i64 %34 to i32, !dbg !3286
  store i32 %35, i32* @nslots, align 4, !dbg !3287, !tbaa !712
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !3288
  br label %36, !dbg !3289

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3252
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3241, metadata !DIExpression()), !dbg !3252
  %38 = zext i32 %0 to i64, !dbg !3290
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3291
  %40 = load i64, i64* %39, align 8, !dbg !3291, !tbaa !3212
  call void @llvm.dbg.value(metadata i64 %40, metadata !3247, metadata !DIExpression()), !dbg !3292
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3293
  %42 = load i8*, i8** %41, align 8, !dbg !3293, !tbaa !3200
  call void @llvm.dbg.value(metadata i8* %42, metadata !3249, metadata !DIExpression()), !dbg !3292
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3294
  %44 = load i32, i32* %43, align 4, !dbg !3294, !tbaa !2524
  %45 = or i32 %44, 1, !dbg !3295
  call void @llvm.dbg.value(metadata i32 %45, metadata !3250, metadata !DIExpression()), !dbg !3292
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3296
  %47 = load i32, i32* %46, align 8, !dbg !3296, !tbaa !2473
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3297
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3298
  %50 = load i8*, i8** %49, align 8, !dbg !3298, !tbaa !2546
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3299
  %52 = load i8*, i8** %51, align 8, !dbg !3299, !tbaa !2549
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %53, metadata !3251, metadata !DIExpression()), !dbg !3292
  %54 = icmp ugt i64 %40, %53, !dbg !3301
  br i1 %54, label %65, label %55, !dbg !3303

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %56, metadata !3247, metadata !DIExpression()), !dbg !3292
  store i64 %56, i64* %39, align 8, !dbg !3306, !tbaa !3212
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3307
  br i1 %57, label %59, label %58, !dbg !3309

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !3310
  br label %59, !dbg !3310

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #40, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %60, metadata !3249, metadata !DIExpression()), !dbg !3292
  store i8* %60, i8** %41, align 8, !dbg !3312, !tbaa !3200
  %61 = load i32, i32* %46, align 8, !dbg !3313, !tbaa !2473
  %62 = load i8*, i8** %49, align 8, !dbg !3314, !tbaa !2546
  %63 = load i8*, i8** %51, align 8, !dbg !3315, !tbaa !2549
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3316
  br label %65, !dbg !3317

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3292
  call void @llvm.dbg.value(metadata i8* %66, metadata !3249, metadata !DIExpression()), !dbg !3292
  store i32 %7, i32* %6, align 4, !dbg !3318, !tbaa !712
  ret i8* %66, !dbg !3319
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3324, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8* %1, metadata !3325, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %2, metadata !3326, metadata !DIExpression()), !dbg !3327
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3328
  ret i8* %4, !dbg !3329
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3330 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i32 0, metadata !3227, metadata !DIExpression()) #33, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %0, metadata !3228, metadata !DIExpression()) #33, !dbg !3334
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !3336
  ret i8* %2, !dbg !3337
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3338 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3342, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3324, metadata !DIExpression()) #33, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3325, metadata !DIExpression()) #33, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()) #33, !dbg !3345
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !3347
  ret i8* %3, !dbg !3348
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3349 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3353, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 %1, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %2, metadata !3355, metadata !DIExpression()), !dbg !3357
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3358
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3358
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3356, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3360), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %1, metadata !3364, metadata !DIExpression()) #33, !dbg !3370
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3369, metadata !DIExpression()) #33, !dbg !3372
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3372, !alias.scope !3360
  %6 = icmp eq i32 %1, 10, !dbg !3373
  br i1 %6, label %7, label %8, !dbg !3375

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3376, !noalias !3360
  unreachable, !dbg !3376

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3377
  store i32 %1, i32* %9, align 8, !dbg !3378, !tbaa !2473, !alias.scope !3360
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3379
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3380
  ret i8* %10, !dbg !3381
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3382 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3386, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %1, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %2, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %3, metadata !3389, metadata !DIExpression()), !dbg !3391
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3392
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3392
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3390, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3394), !dbg !3397
  call void @llvm.dbg.value(metadata i32 %1, metadata !3364, metadata !DIExpression()) #33, !dbg !3398
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3369, metadata !DIExpression()) #33, !dbg !3400
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !3400, !alias.scope !3394
  %7 = icmp eq i32 %1, 10, !dbg !3401
  br i1 %7, label %8, label %9, !dbg !3402

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !3403, !noalias !3394
  unreachable, !dbg !3403

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3404
  store i32 %1, i32* %10, align 8, !dbg !3405, !tbaa !2473, !alias.scope !3394
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3406
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3407
  ret i8* %11, !dbg !3408
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3409 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3413, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8* %1, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i32 0, metadata !3353, metadata !DIExpression()) #33, !dbg !3416
  call void @llvm.dbg.value(metadata i32 %0, metadata !3354, metadata !DIExpression()) #33, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3355, metadata !DIExpression()) #33, !dbg !3416
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3418
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3418
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3356, metadata !DIExpression()) #33, !dbg !3419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3420) #33, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %0, metadata !3364, metadata !DIExpression()) #33, !dbg !3424
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3369, metadata !DIExpression()) #33, !dbg !3426
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !3426, !alias.scope !3420
  %5 = icmp eq i32 %0, 10, !dbg !3427
  br i1 %5, label %6, label %7, !dbg !3428

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !3429, !noalias !3420
  unreachable, !dbg !3429

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3430
  store i32 %0, i32* %8, align 8, !dbg !3431, !tbaa !2473, !alias.scope !3420
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3432
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3433
  ret i8* %9, !dbg !3434
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3435 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3439, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %1, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %2, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3386, metadata !DIExpression()) #33, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %0, metadata !3387, metadata !DIExpression()) #33, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3388, metadata !DIExpression()) #33, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %2, metadata !3389, metadata !DIExpression()) #33, !dbg !3443
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3445
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3445
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3390, metadata !DIExpression()) #33, !dbg !3446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447) #33, !dbg !3450
  call void @llvm.dbg.value(metadata i32 %0, metadata !3364, metadata !DIExpression()) #33, !dbg !3451
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3369, metadata !DIExpression()) #33, !dbg !3453
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3453, !alias.scope !3447
  %6 = icmp eq i32 %0, 10, !dbg !3454
  br i1 %6, label %7, label %8, !dbg !3455

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3456, !noalias !3447
  unreachable, !dbg !3456

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3457
  store i32 %0, i32* %9, align 8, !dbg !3458, !tbaa !2473, !alias.scope !3447
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3459
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3460
  ret i8* %10, !dbg !3461
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3462 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %1, metadata !3467, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 %2, metadata !3468, metadata !DIExpression()), !dbg !3470
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3471
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3471
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3473, !tbaa.struct !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2491, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8 %2, metadata !2492, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8 %2, metadata !2494, metadata !DIExpression()), !dbg !3475
  %6 = lshr i8 %2, 5, !dbg !3477
  %7 = zext i8 %6 to i64, !dbg !3477
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3478
  call void @llvm.dbg.value(metadata i32* %8, metadata !2495, metadata !DIExpression()), !dbg !3475
  %9 = and i8 %2, 31, !dbg !3479
  %10 = zext i8 %9 to i32, !dbg !3479
  call void @llvm.dbg.value(metadata i32 %10, metadata !2497, metadata !DIExpression()), !dbg !3475
  %11 = load i32, i32* %8, align 4, !dbg !3480, !tbaa !712
  %12 = lshr i32 %11, %10, !dbg !3481
  %13 = and i32 %12, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i32 %13, metadata !2498, metadata !DIExpression()), !dbg !3475
  %14 = xor i32 %13, 1, !dbg !3483
  %15 = shl i32 %14, %10, !dbg !3484
  %16 = xor i32 %15, %11, !dbg !3485
  store i32 %16, i32* %8, align 4, !dbg !3485, !tbaa !712
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3486
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3487
  ret i8* %17, !dbg !3488
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3489 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3493, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8 %1, metadata !3494, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()) #33, !dbg !3496
  call void @llvm.dbg.value(metadata i64 -1, metadata !3467, metadata !DIExpression()) #33, !dbg !3496
  call void @llvm.dbg.value(metadata i8 %1, metadata !3468, metadata !DIExpression()) #33, !dbg !3496
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3498
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3498
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3469, metadata !DIExpression()) #33, !dbg !3499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3500, !tbaa.struct !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2491, metadata !DIExpression()) #33, !dbg !3501
  call void @llvm.dbg.value(metadata i8 %1, metadata !2492, metadata !DIExpression()) #33, !dbg !3501
  call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()) #33, !dbg !3501
  call void @llvm.dbg.value(metadata i8 %1, metadata !2494, metadata !DIExpression()) #33, !dbg !3501
  %5 = lshr i8 %1, 5, !dbg !3503
  %6 = zext i8 %5 to i64, !dbg !3503
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3504
  call void @llvm.dbg.value(metadata i32* %7, metadata !2495, metadata !DIExpression()) #33, !dbg !3501
  %8 = and i8 %1, 31, !dbg !3505
  %9 = zext i8 %8 to i32, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %9, metadata !2497, metadata !DIExpression()) #33, !dbg !3501
  %10 = load i32, i32* %7, align 4, !dbg !3506, !tbaa !712
  %11 = lshr i32 %10, %9, !dbg !3507
  %12 = and i32 %11, 1, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %12, metadata !2498, metadata !DIExpression()) #33, !dbg !3501
  %13 = xor i32 %12, 1, !dbg !3509
  %14 = shl i32 %13, %9, !dbg !3510
  %15 = xor i32 %14, %10, !dbg !3511
  store i32 %15, i32* %7, align 4, !dbg !3511, !tbaa !712
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3512
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3513
  ret i8* %16, !dbg !3514
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3515 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %0, metadata !3493, metadata !DIExpression()) #33, !dbg !3519
  call void @llvm.dbg.value(metadata i8 58, metadata !3494, metadata !DIExpression()) #33, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()) #33, !dbg !3521
  call void @llvm.dbg.value(metadata i64 -1, metadata !3467, metadata !DIExpression()) #33, !dbg !3521
  call void @llvm.dbg.value(metadata i8 58, metadata !3468, metadata !DIExpression()) #33, !dbg !3521
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3523
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3523
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3469, metadata !DIExpression()) #33, !dbg !3524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3525, !tbaa.struct !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2491, metadata !DIExpression()) #33, !dbg !3526
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()) #33, !dbg !3526
  call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()) #33, !dbg !3526
  call void @llvm.dbg.value(metadata i8 58, metadata !2494, metadata !DIExpression()) #33, !dbg !3526
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3528
  call void @llvm.dbg.value(metadata i32* %4, metadata !2495, metadata !DIExpression()) #33, !dbg !3526
  call void @llvm.dbg.value(metadata i32 26, metadata !2497, metadata !DIExpression()) #33, !dbg !3526
  %5 = load i32, i32* %4, align 4, !dbg !3529, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %5, metadata !2498, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3526
  %6 = or i32 %5, 67108864, !dbg !3530
  store i32 %6, i32* %4, align 4, !dbg !3530, !tbaa !712
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !3531
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3532
  ret i8* %7, !dbg !3533
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3534 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3536, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %1, metadata !3537, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()) #33, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %1, metadata !3467, metadata !DIExpression()) #33, !dbg !3539
  call void @llvm.dbg.value(metadata i8 58, metadata !3468, metadata !DIExpression()) #33, !dbg !3539
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3541
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3541
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3469, metadata !DIExpression()) #33, !dbg !3542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3543, !tbaa.struct !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2491, metadata !DIExpression()) #33, !dbg !3544
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()) #33, !dbg !3544
  call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()) #33, !dbg !3544
  call void @llvm.dbg.value(metadata i8 58, metadata !2494, metadata !DIExpression()) #33, !dbg !3544
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3546
  call void @llvm.dbg.value(metadata i32* %5, metadata !2495, metadata !DIExpression()) #33, !dbg !3544
  call void @llvm.dbg.value(metadata i32 26, metadata !2497, metadata !DIExpression()) #33, !dbg !3544
  %6 = load i32, i32* %5, align 4, !dbg !3547, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %6, metadata !2498, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3544
  %7 = or i32 %6, 67108864, !dbg !3548
  store i32 %7, i32* %5, align 4, !dbg !3548, !tbaa !712
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3549
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3550
  ret i8* %8, !dbg !3551
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3552 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3554, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 %1, metadata !3555, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8* %2, metadata !3556, metadata !DIExpression()), !dbg !3558
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3559
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3559
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3557, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i32 %1, metadata !3364, metadata !DIExpression()) #33, !dbg !3561
  call void @llvm.dbg.value(metadata i32 0, metadata !3369, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3561
  %6 = icmp eq i32 %1, 10, !dbg !3563
  br i1 %6, label %7, label %8, !dbg !3564

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3565, !noalias !3566
  unreachable, !dbg !3565

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3369, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3561
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3569
  store i32 %1, i32* %9, align 8, !dbg !3569, !tbaa.struct !3474
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3569
  %11 = bitcast i32* %10 to i8*, !dbg !3569
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2491, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 58, metadata !2494, metadata !DIExpression()), !dbg !3570
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3572
  call void @llvm.dbg.value(metadata i32* %12, metadata !2495, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 26, metadata !2497, metadata !DIExpression()), !dbg !3570
  %13 = load i32, i32* %12, align 4, !dbg !3573, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %13, metadata !2498, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3570
  %14 = or i32 %13, 67108864, !dbg !3574
  store i32 %14, i32* %12, align 4, !dbg !3574, !tbaa !712
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3575
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3576
  ret i8* %15, !dbg !3577
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3578 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3582, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %1, metadata !3583, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %3, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %0, metadata !3587, metadata !DIExpression()) #33, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %1, metadata !3592, metadata !DIExpression()) #33, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %2, metadata !3593, metadata !DIExpression()) #33, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %3, metadata !3594, metadata !DIExpression()) #33, !dbg !3597
  call void @llvm.dbg.value(metadata i64 -1, metadata !3595, metadata !DIExpression()) #33, !dbg !3597
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3599
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3599
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3596, metadata !DIExpression()) #33, !dbg !3600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3601, !tbaa.struct !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2531, metadata !DIExpression()) #33, !dbg !3602
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()) #33, !dbg !3602
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()) #33, !dbg !3602
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2531, metadata !DIExpression()) #33, !dbg !3602
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3604
  store i32 10, i32* %7, align 8, !dbg !3605, !tbaa !2473
  %8 = icmp ne i8* %1, null, !dbg !3606
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3607
  br i1 %10, label %12, label %11, !dbg !3607

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3608
  unreachable, !dbg !3608

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3609
  store i8* %1, i8** %13, align 8, !dbg !3610, !tbaa !2546
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3611
  store i8* %2, i8** %14, align 8, !dbg !3612, !tbaa !2549
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3613
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3614
  ret i8* %15, !dbg !3615
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3588 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3587, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3592, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %2, metadata !3593, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %3, metadata !3594, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %4, metadata !3595, metadata !DIExpression()), !dbg !3616
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3617
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3617
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3596, metadata !DIExpression()), !dbg !3618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3619, !tbaa.struct !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2531, metadata !DIExpression()) #33, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()) #33, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()) #33, !dbg !3620
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2531, metadata !DIExpression()) #33, !dbg !3620
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3622
  store i32 10, i32* %8, align 8, !dbg !3623, !tbaa !2473
  %9 = icmp ne i8* %1, null, !dbg !3624
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3625
  br i1 %11, label %13, label %12, !dbg !3625

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !3626
  unreachable, !dbg !3626

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3627
  store i8* %1, i8** %14, align 8, !dbg !3628, !tbaa !2546
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3629
  store i8* %2, i8** %15, align 8, !dbg !3630, !tbaa !2549
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3631
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3632
  ret i8* %16, !dbg !3633
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3634 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3638, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %1, metadata !3639, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %2, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3582, metadata !DIExpression()) #33, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %0, metadata !3583, metadata !DIExpression()) #33, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %1, metadata !3584, metadata !DIExpression()) #33, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %2, metadata !3585, metadata !DIExpression()) #33, !dbg !3642
  call void @llvm.dbg.value(metadata i32 0, metadata !3587, metadata !DIExpression()) #33, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %0, metadata !3592, metadata !DIExpression()) #33, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()) #33, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %2, metadata !3594, metadata !DIExpression()) #33, !dbg !3644
  call void @llvm.dbg.value(metadata i64 -1, metadata !3595, metadata !DIExpression()) #33, !dbg !3644
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3646
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3646
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3596, metadata !DIExpression()) #33, !dbg !3647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3648, !tbaa.struct !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2531, metadata !DIExpression()) #33, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #33, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2533, metadata !DIExpression()) #33, !dbg !3649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2531, metadata !DIExpression()) #33, !dbg !3649
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3651
  store i32 10, i32* %6, align 8, !dbg !3652, !tbaa !2473
  %7 = icmp ne i8* %0, null, !dbg !3653
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3654
  br i1 %9, label %11, label %10, !dbg !3654

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !3655
  unreachable, !dbg !3655

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3656
  store i8* %0, i8** %12, align 8, !dbg !3657, !tbaa !2546
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3658
  store i8* %1, i8** %13, align 8, !dbg !3659, !tbaa !2549
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3660
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3661
  ret i8* %14, !dbg !3662
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3663 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3667, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8* %1, metadata !3668, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8* %2, metadata !3669, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %3, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i32 0, metadata !3587, metadata !DIExpression()) #33, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %0, metadata !3592, metadata !DIExpression()) #33, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()) #33, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %2, metadata !3594, metadata !DIExpression()) #33, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %3, metadata !3595, metadata !DIExpression()) #33, !dbg !3672
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3674
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3674
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3596, metadata !DIExpression()) #33, !dbg !3675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3676, !tbaa.struct !3474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2531, metadata !DIExpression()) #33, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #33, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %1, metadata !2533, metadata !DIExpression()) #33, !dbg !3677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2531, metadata !DIExpression()) #33, !dbg !3677
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3679
  store i32 10, i32* %7, align 8, !dbg !3680, !tbaa !2473
  %8 = icmp ne i8* %0, null, !dbg !3681
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3682
  br i1 %10, label %12, label %11, !dbg !3682

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3683
  unreachable, !dbg !3683

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3684
  store i8* %0, i8** %13, align 8, !dbg !3685, !tbaa !2546
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3686
  store i8* %1, i8** %14, align 8, !dbg !3687, !tbaa !2549
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3688
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3689
  ret i8* %15, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3695, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* %1, metadata !3696, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i64 %2, metadata !3697, metadata !DIExpression()), !dbg !3698
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3699
  ret i8* %4, !dbg !3700
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3701 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3705, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %1, metadata !3706, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()) #33, !dbg !3708
  call void @llvm.dbg.value(metadata i8* %0, metadata !3696, metadata !DIExpression()) #33, !dbg !3708
  call void @llvm.dbg.value(metadata i64 %1, metadata !3697, metadata !DIExpression()) #33, !dbg !3708
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3710
  ret i8* %3, !dbg !3711
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3712 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3716, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i8* %1, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %0, metadata !3695, metadata !DIExpression()) #33, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %1, metadata !3696, metadata !DIExpression()) #33, !dbg !3719
  call void @llvm.dbg.value(metadata i64 -1, metadata !3697, metadata !DIExpression()) #33, !dbg !3719
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3721
  ret i8* %3, !dbg !3722
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3723 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i32 0, metadata !3716, metadata !DIExpression()) #33, !dbg !3729
  call void @llvm.dbg.value(metadata i8* %0, metadata !3717, metadata !DIExpression()) #33, !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()) #33, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %0, metadata !3696, metadata !DIExpression()) #33, !dbg !3731
  call void @llvm.dbg.value(metadata i64 -1, metadata !3697, metadata !DIExpression()) #33, !dbg !3731
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3733
  ret i8* %2, !dbg !3734
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3735 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3774, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %2, metadata !3776, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %3, metadata !3777, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8** %4, metadata !3778, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 %5, metadata !3779, metadata !DIExpression()), !dbg !3780
  %7 = icmp eq i8* %1, null, !dbg !3781
  br i1 %7, label %10, label %8, !dbg !3783

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !3784
  br label %12, !dbg !3784

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !3785
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.130, i64 0, i64 0), i32 noundef 5) #33, !dbg !3786
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !3786
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.131, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3787
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.132, i64 0, i64 0), i32 noundef 5) #33, !dbg !3788
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.133, i64 0, i64 0)) #33, !dbg !3788
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.131, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3789
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
  ], !dbg !3790

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.134, i64 0, i64 0), i32 noundef 5) #33, !dbg !3791
  %21 = load i8*, i8** %4, align 8, !dbg !3791, !tbaa !617
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !3791
  br label %147, !dbg !3793

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.135, i64 0, i64 0), i32 noundef 5) #33, !dbg !3794
  %25 = load i8*, i8** %4, align 8, !dbg !3794, !tbaa !617
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3794
  %27 = load i8*, i8** %26, align 8, !dbg !3794, !tbaa !617
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !3794
  br label %147, !dbg !3795

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.136, i64 0, i64 0), i32 noundef 5) #33, !dbg !3796
  %31 = load i8*, i8** %4, align 8, !dbg !3796, !tbaa !617
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3796
  %33 = load i8*, i8** %32, align 8, !dbg !3796, !tbaa !617
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3796
  %35 = load i8*, i8** %34, align 8, !dbg !3796, !tbaa !617
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !3796
  br label %147, !dbg !3797

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.137, i64 0, i64 0), i32 noundef 5) #33, !dbg !3798
  %39 = load i8*, i8** %4, align 8, !dbg !3798, !tbaa !617
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3798
  %41 = load i8*, i8** %40, align 8, !dbg !3798, !tbaa !617
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3798
  %43 = load i8*, i8** %42, align 8, !dbg !3798, !tbaa !617
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3798
  %45 = load i8*, i8** %44, align 8, !dbg !3798, !tbaa !617
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !3798
  br label %147, !dbg !3799

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.138, i64 0, i64 0), i32 noundef 5) #33, !dbg !3800
  %49 = load i8*, i8** %4, align 8, !dbg !3800, !tbaa !617
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3800
  %51 = load i8*, i8** %50, align 8, !dbg !3800, !tbaa !617
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3800
  %53 = load i8*, i8** %52, align 8, !dbg !3800, !tbaa !617
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3800
  %55 = load i8*, i8** %54, align 8, !dbg !3800, !tbaa !617
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3800
  %57 = load i8*, i8** %56, align 8, !dbg !3800, !tbaa !617
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !3800
  br label %147, !dbg !3801

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.139, i64 0, i64 0), i32 noundef 5) #33, !dbg !3802
  %61 = load i8*, i8** %4, align 8, !dbg !3802, !tbaa !617
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3802
  %63 = load i8*, i8** %62, align 8, !dbg !3802, !tbaa !617
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3802
  %65 = load i8*, i8** %64, align 8, !dbg !3802, !tbaa !617
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3802
  %67 = load i8*, i8** %66, align 8, !dbg !3802, !tbaa !617
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3802
  %69 = load i8*, i8** %68, align 8, !dbg !3802, !tbaa !617
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3802
  %71 = load i8*, i8** %70, align 8, !dbg !3802, !tbaa !617
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !3802
  br label %147, !dbg !3803

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.140, i64 0, i64 0), i32 noundef 5) #33, !dbg !3804
  %75 = load i8*, i8** %4, align 8, !dbg !3804, !tbaa !617
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3804
  %77 = load i8*, i8** %76, align 8, !dbg !3804, !tbaa !617
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3804
  %79 = load i8*, i8** %78, align 8, !dbg !3804, !tbaa !617
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3804
  %81 = load i8*, i8** %80, align 8, !dbg !3804, !tbaa !617
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3804
  %83 = load i8*, i8** %82, align 8, !dbg !3804, !tbaa !617
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3804
  %85 = load i8*, i8** %84, align 8, !dbg !3804, !tbaa !617
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3804
  %87 = load i8*, i8** %86, align 8, !dbg !3804, !tbaa !617
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !3804
  br label %147, !dbg !3805

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.141, i64 0, i64 0), i32 noundef 5) #33, !dbg !3806
  %91 = load i8*, i8** %4, align 8, !dbg !3806, !tbaa !617
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3806
  %93 = load i8*, i8** %92, align 8, !dbg !3806, !tbaa !617
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3806
  %95 = load i8*, i8** %94, align 8, !dbg !3806, !tbaa !617
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3806
  %97 = load i8*, i8** %96, align 8, !dbg !3806, !tbaa !617
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3806
  %99 = load i8*, i8** %98, align 8, !dbg !3806, !tbaa !617
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3806
  %101 = load i8*, i8** %100, align 8, !dbg !3806, !tbaa !617
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3806
  %103 = load i8*, i8** %102, align 8, !dbg !3806, !tbaa !617
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3806
  %105 = load i8*, i8** %104, align 8, !dbg !3806, !tbaa !617
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !3806
  br label %147, !dbg !3807

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.142, i64 0, i64 0), i32 noundef 5) #33, !dbg !3808
  %109 = load i8*, i8** %4, align 8, !dbg !3808, !tbaa !617
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3808
  %111 = load i8*, i8** %110, align 8, !dbg !3808, !tbaa !617
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3808
  %113 = load i8*, i8** %112, align 8, !dbg !3808, !tbaa !617
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3808
  %115 = load i8*, i8** %114, align 8, !dbg !3808, !tbaa !617
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3808
  %117 = load i8*, i8** %116, align 8, !dbg !3808, !tbaa !617
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3808
  %119 = load i8*, i8** %118, align 8, !dbg !3808, !tbaa !617
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3808
  %121 = load i8*, i8** %120, align 8, !dbg !3808, !tbaa !617
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3808
  %123 = load i8*, i8** %122, align 8, !dbg !3808, !tbaa !617
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3808
  %125 = load i8*, i8** %124, align 8, !dbg !3808, !tbaa !617
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !3808
  br label %147, !dbg !3809

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.143, i64 0, i64 0), i32 noundef 5) #33, !dbg !3810
  %129 = load i8*, i8** %4, align 8, !dbg !3810, !tbaa !617
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3810
  %131 = load i8*, i8** %130, align 8, !dbg !3810, !tbaa !617
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3810
  %133 = load i8*, i8** %132, align 8, !dbg !3810, !tbaa !617
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3810
  %135 = load i8*, i8** %134, align 8, !dbg !3810, !tbaa !617
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3810
  %137 = load i8*, i8** %136, align 8, !dbg !3810, !tbaa !617
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3810
  %139 = load i8*, i8** %138, align 8, !dbg !3810, !tbaa !617
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3810
  %141 = load i8*, i8** %140, align 8, !dbg !3810, !tbaa !617
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3810
  %143 = load i8*, i8** %142, align 8, !dbg !3810, !tbaa !617
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3810
  %145 = load i8*, i8** %144, align 8, !dbg !3810, !tbaa !617
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !3810
  br label %147, !dbg !3811

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3812
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3813 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3817, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8* %1, metadata !3818, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8* %2, metadata !3819, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8* %3, metadata !3820, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8** %4, metadata !3821, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 0, metadata !3822, metadata !DIExpression()), !dbg !3823
  br label %6, !dbg !3824

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3826
  call void @llvm.dbg.value(metadata i64 %7, metadata !3822, metadata !DIExpression()), !dbg !3823
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3827
  %9 = load i8*, i8** %8, align 8, !dbg !3827, !tbaa !617
  %10 = icmp eq i8* %9, null, !dbg !3829
  %11 = add i64 %7, 1, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %11, metadata !3822, metadata !DIExpression()), !dbg !3823
  br i1 %10, label %12, label %6, !dbg !3829, !llvm.loop !3831

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3833
  ret void, !dbg !3834
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3835 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3850, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i8* %1, metadata !3851, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i8* %2, metadata !3852, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i8* %3, metadata !3853, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3854, metadata !DIExpression()), !dbg !3859
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3860
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3860
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3856, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 0, metadata !3855, metadata !DIExpression()), !dbg !3858
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3855, metadata !DIExpression()), !dbg !3858
  %11 = load i32, i32* %8, align 8, !dbg !3862
  %12 = icmp sgt i32 %11, -1, !dbg !3862
  br i1 %12, label %20, label %13, !dbg !3862

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3862
  store i32 %14, i32* %8, align 8, !dbg !3862
  %15 = icmp ult i32 %11, -7, !dbg !3862
  br i1 %15, label %16, label %20, !dbg !3862

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3862
  %18 = sext i32 %11 to i64, !dbg !3862
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3862
  br label %24, !dbg !3862

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3862
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3862
  store i8* %23, i8** %10, align 8, !dbg !3862
  br label %24, !dbg !3862

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3862
  %28 = load i8*, i8** %27, align 8, !dbg !3862
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3865
  store i8* %28, i8** %29, align 8, !dbg !3866, !tbaa !617
  %30 = icmp eq i8* %28, null, !dbg !3867
  br i1 %30, label %210, label %31, !dbg !3868

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 1, metadata !3855, metadata !DIExpression()), !dbg !3858
  %32 = icmp sgt i32 %25, -1, !dbg !3862
  br i1 %32, label %40, label %33, !dbg !3862

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3862
  store i32 %34, i32* %8, align 8, !dbg !3862
  %35 = icmp ult i32 %25, -7, !dbg !3862
  br i1 %35, label %36, label %40, !dbg !3862

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3862
  %38 = sext i32 %25 to i64, !dbg !3862
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3862
  br label %44, !dbg !3862

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3862
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3862
  store i8* %43, i8** %10, align 8, !dbg !3862
  br label %44, !dbg !3862

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3862
  %48 = load i8*, i8** %47, align 8, !dbg !3862
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3865
  store i8* %48, i8** %49, align 8, !dbg !3866, !tbaa !617
  %50 = icmp eq i8* %48, null, !dbg !3867
  br i1 %50, label %210, label %51, !dbg !3868

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 2, metadata !3855, metadata !DIExpression()), !dbg !3858
  %52 = icmp sgt i32 %45, -1, !dbg !3862
  br i1 %52, label %60, label %53, !dbg !3862

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3862
  store i32 %54, i32* %8, align 8, !dbg !3862
  %55 = icmp ult i32 %45, -7, !dbg !3862
  br i1 %55, label %56, label %60, !dbg !3862

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3862
  %58 = sext i32 %45 to i64, !dbg !3862
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3862
  br label %64, !dbg !3862

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3862
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3862
  store i8* %63, i8** %10, align 8, !dbg !3862
  br label %64, !dbg !3862

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3862
  %68 = load i8*, i8** %67, align 8, !dbg !3862
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3865
  store i8* %68, i8** %69, align 8, !dbg !3866, !tbaa !617
  %70 = icmp eq i8* %68, null, !dbg !3867
  br i1 %70, label %210, label %71, !dbg !3868

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 3, metadata !3855, metadata !DIExpression()), !dbg !3858
  %72 = icmp sgt i32 %65, -1, !dbg !3862
  br i1 %72, label %80, label %73, !dbg !3862

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3862
  store i32 %74, i32* %8, align 8, !dbg !3862
  %75 = icmp ult i32 %65, -7, !dbg !3862
  br i1 %75, label %76, label %80, !dbg !3862

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3862
  %78 = sext i32 %65 to i64, !dbg !3862
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3862
  br label %84, !dbg !3862

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3862
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3862
  store i8* %83, i8** %10, align 8, !dbg !3862
  br label %84, !dbg !3862

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3862
  %88 = load i8*, i8** %87, align 8, !dbg !3862
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3865
  store i8* %88, i8** %89, align 8, !dbg !3866, !tbaa !617
  %90 = icmp eq i8* %88, null, !dbg !3867
  br i1 %90, label %210, label %91, !dbg !3868

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 4, metadata !3855, metadata !DIExpression()), !dbg !3858
  %92 = icmp sgt i32 %85, -1, !dbg !3862
  br i1 %92, label %100, label %93, !dbg !3862

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3862
  store i32 %94, i32* %8, align 8, !dbg !3862
  %95 = icmp ult i32 %85, -7, !dbg !3862
  br i1 %95, label %96, label %100, !dbg !3862

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3862
  %98 = sext i32 %85 to i64, !dbg !3862
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3862
  br label %104, !dbg !3862

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3862
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3862
  store i8* %103, i8** %10, align 8, !dbg !3862
  br label %104, !dbg !3862

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3862
  %108 = load i8*, i8** %107, align 8, !dbg !3862
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3865
  store i8* %108, i8** %109, align 8, !dbg !3866, !tbaa !617
  %110 = icmp eq i8* %108, null, !dbg !3867
  br i1 %110, label %210, label %111, !dbg !3868

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 5, metadata !3855, metadata !DIExpression()), !dbg !3858
  %112 = icmp sgt i32 %105, -1, !dbg !3862
  br i1 %112, label %120, label %113, !dbg !3862

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3862
  store i32 %114, i32* %8, align 8, !dbg !3862
  %115 = icmp ult i32 %105, -7, !dbg !3862
  br i1 %115, label %116, label %120, !dbg !3862

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3862
  %118 = sext i32 %105 to i64, !dbg !3862
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3862
  br label %124, !dbg !3862

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3862
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3862
  store i8* %123, i8** %10, align 8, !dbg !3862
  br label %124, !dbg !3862

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3862
  %128 = load i8*, i8** %127, align 8, !dbg !3862
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3865
  store i8* %128, i8** %129, align 8, !dbg !3866, !tbaa !617
  %130 = icmp eq i8* %128, null, !dbg !3867
  br i1 %130, label %210, label %131, !dbg !3868

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 6, metadata !3855, metadata !DIExpression()), !dbg !3858
  %132 = icmp sgt i32 %125, -1, !dbg !3862
  br i1 %132, label %140, label %133, !dbg !3862

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3862
  store i32 %134, i32* %8, align 8, !dbg !3862
  %135 = icmp ult i32 %125, -7, !dbg !3862
  br i1 %135, label %136, label %140, !dbg !3862

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3862
  %138 = sext i32 %125 to i64, !dbg !3862
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3862
  br label %144, !dbg !3862

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3862
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3862
  store i8* %143, i8** %10, align 8, !dbg !3862
  br label %144, !dbg !3862

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3862
  %148 = load i8*, i8** %147, align 8, !dbg !3862
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3865
  store i8* %148, i8** %149, align 8, !dbg !3866, !tbaa !617
  %150 = icmp eq i8* %148, null, !dbg !3867
  br i1 %150, label %210, label %151, !dbg !3868

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 7, metadata !3855, metadata !DIExpression()), !dbg !3858
  %152 = icmp sgt i32 %145, -1, !dbg !3862
  br i1 %152, label %160, label %153, !dbg !3862

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3862
  store i32 %154, i32* %8, align 8, !dbg !3862
  %155 = icmp ult i32 %145, -7, !dbg !3862
  br i1 %155, label %156, label %160, !dbg !3862

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3862
  %158 = sext i32 %145 to i64, !dbg !3862
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3862
  br label %164, !dbg !3862

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3862
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3862
  store i8* %163, i8** %10, align 8, !dbg !3862
  br label %164, !dbg !3862

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3862
  %168 = load i8*, i8** %167, align 8, !dbg !3862
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3865
  store i8* %168, i8** %169, align 8, !dbg !3866, !tbaa !617
  %170 = icmp eq i8* %168, null, !dbg !3867
  br i1 %170, label %210, label %171, !dbg !3868

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 8, metadata !3855, metadata !DIExpression()), !dbg !3858
  %172 = icmp sgt i32 %165, -1, !dbg !3862
  br i1 %172, label %180, label %173, !dbg !3862

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3862
  store i32 %174, i32* %8, align 8, !dbg !3862
  %175 = icmp ult i32 %165, -7, !dbg !3862
  br i1 %175, label %176, label %180, !dbg !3862

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3862
  %178 = sext i32 %165 to i64, !dbg !3862
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3862
  br label %184, !dbg !3862

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3862
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3862
  store i8* %183, i8** %10, align 8, !dbg !3862
  br label %184, !dbg !3862

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3862
  %188 = load i8*, i8** %187, align 8, !dbg !3862
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3865
  store i8* %188, i8** %189, align 8, !dbg !3866, !tbaa !617
  %190 = icmp eq i8* %188, null, !dbg !3867
  br i1 %190, label %210, label %191, !dbg !3868

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 9, metadata !3855, metadata !DIExpression()), !dbg !3858
  %192 = icmp sgt i32 %185, -1, !dbg !3862
  br i1 %192, label %200, label %193, !dbg !3862

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3862
  store i32 %194, i32* %8, align 8, !dbg !3862
  %195 = icmp ult i32 %185, -7, !dbg !3862
  br i1 %195, label %196, label %200, !dbg !3862

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3862
  %198 = sext i32 %185 to i64, !dbg !3862
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3862
  br label %203, !dbg !3862

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3862
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3862
  store i8* %202, i8** %10, align 8, !dbg !3862
  br label %203, !dbg !3862

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3862
  %206 = load i8*, i8** %205, align 8, !dbg !3862
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3865
  store i8* %206, i8** %207, align 8, !dbg !3866, !tbaa !617
  %208 = icmp eq i8* %206, null, !dbg !3867
  %209 = select i1 %208, i64 9, i64 10, !dbg !3868
  br label %210, !dbg !3868

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3869
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3870
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3871
  ret void, !dbg !3871
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3872 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3876, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %1, metadata !3877, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %2, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %3, metadata !3879, metadata !DIExpression()), !dbg !3881
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3882
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3882
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.va_start(i8* nonnull %7), !dbg !3884
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3885
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3885, !tbaa.struct !1865
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3885
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3885
  call void @llvm.va_end(i8* nonnull %7), !dbg !3886
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3887
  ret void, !dbg !3887
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3888 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3889, !tbaa !617
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.131, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3889
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.148, i64 0, i64 0), i32 noundef 5) #33, !dbg !3890
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.149, i64 0, i64 0)) #33, !dbg !3890
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.150, i64 0, i64 0), i32 noundef 5) #33, !dbg !3891
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.151, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.152, i64 0, i64 0)) #33, !dbg !3891
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.153, i64 0, i64 0), i32 noundef 5) #33, !dbg !3892
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.154, i64 0, i64 0)) #33, !dbg !3892
  ret void, !dbg !3893
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !3894 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3899, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i64 %1, metadata !3900, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i64 %2, metadata !3901, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i8* %0, metadata !3903, metadata !DIExpression()) #33, !dbg !3908
  call void @llvm.dbg.value(metadata i64 %1, metadata !3906, metadata !DIExpression()) #33, !dbg !3908
  call void @llvm.dbg.value(metadata i64 %2, metadata !3907, metadata !DIExpression()) #33, !dbg !3908
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %4, metadata !3911, metadata !DIExpression()) #33, !dbg !3916
  %5 = icmp eq i8* %4, null, !dbg !3918
  br i1 %5, label %6, label %7, !dbg !3920

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3921
  unreachable, !dbg !3921

7:                                                ; preds = %3
  ret i8* %4, !dbg !3922
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3904 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3903, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i64 %1, metadata !3906, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i64 %2, metadata !3907, metadata !DIExpression()), !dbg !3923
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %4, metadata !3911, metadata !DIExpression()) #33, !dbg !3925
  %5 = icmp eq i8* %4, null, !dbg !3927
  br i1 %5, label %6, label %7, !dbg !3928

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3929
  unreachable, !dbg !3929

7:                                                ; preds = %3
  ret i8* %4, !dbg !3930
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3931 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3935, metadata !DIExpression()), !dbg !3936
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3937
  call void @llvm.dbg.value(metadata i8* %2, metadata !3911, metadata !DIExpression()) #33, !dbg !3938
  %3 = icmp eq i8* %2, null, !dbg !3940
  br i1 %3, label %4, label %5, !dbg !3941

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3942
  unreachable, !dbg !3942

5:                                                ; preds = %1
  ret i8* %2, !dbg !3943
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3944 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3948, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %0, metadata !3950, metadata !DIExpression()) #33, !dbg !3954
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3956
  call void @llvm.dbg.value(metadata i8* %2, metadata !3911, metadata !DIExpression()) #33, !dbg !3957
  %3 = icmp eq i8* %2, null, !dbg !3959
  br i1 %3, label %4, label %5, !dbg !3960

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3961
  unreachable, !dbg !3961

5:                                                ; preds = %1
  ret i8* %2, !dbg !3962
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3963 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %0, metadata !3935, metadata !DIExpression()) #33, !dbg !3969
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %2, metadata !3911, metadata !DIExpression()) #33, !dbg !3972
  %3 = icmp eq i8* %2, null, !dbg !3974
  br i1 %3, label %4, label %5, !dbg !3975

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3976
  unreachable, !dbg !3976

5:                                                ; preds = %1
  ret i8* %2, !dbg !3977
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3978 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %1, metadata !3983, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i8* %0, metadata !3985, metadata !DIExpression()) #33, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()) #33, !dbg !3990
  %3 = icmp eq i64 %1, 0, !dbg !3992
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3992
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %5, metadata !3911, metadata !DIExpression()) #33, !dbg !3994
  %6 = icmp eq i8* %5, null, !dbg !3996
  br i1 %6, label %7, label %8, !dbg !3997

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3998
  unreachable, !dbg !3998

8:                                                ; preds = %2
  ret i8* %5, !dbg !3999
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !4000 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4004, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8* %0, metadata !4007, metadata !DIExpression()) #33, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4010, metadata !DIExpression()) #33, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %0, metadata !3985, metadata !DIExpression()) #33, !dbg !4013
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()) #33, !dbg !4013
  %3 = icmp eq i64 %1, 0, !dbg !4015
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4015
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !4016
  call void @llvm.dbg.value(metadata i8* %5, metadata !3911, metadata !DIExpression()) #33, !dbg !4017
  %6 = icmp eq i8* %5, null, !dbg !4019
  br i1 %6, label %7, label %8, !dbg !4020

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4021
  unreachable, !dbg !4021

8:                                                ; preds = %2
  ret i8* %5, !dbg !4022
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !4023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4027, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !4028, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %2, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8* %0, metadata !4031, metadata !DIExpression()) #33, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()) #33, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %2, metadata !4035, metadata !DIExpression()) #33, !dbg !4036
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !4038
  call void @llvm.dbg.value(metadata i8* %4, metadata !3911, metadata !DIExpression()) #33, !dbg !4039
  %5 = icmp eq i8* %4, null, !dbg !4041
  br i1 %5, label %6, label %7, !dbg !4042

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !4043
  unreachable, !dbg !4043

7:                                                ; preds = %3
  ret i8* %4, !dbg !4044
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4045 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4049, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %1, metadata !4050, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8* null, metadata !3903, metadata !DIExpression()) #33, !dbg !4052
  call void @llvm.dbg.value(metadata i64 %0, metadata !3906, metadata !DIExpression()) #33, !dbg !4052
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()) #33, !dbg !4052
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !4054
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()) #33, !dbg !4055
  %4 = icmp eq i8* %3, null, !dbg !4057
  br i1 %4, label %5, label %6, !dbg !4058

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4059
  unreachable, !dbg !4059

6:                                                ; preds = %2
  ret i8* %3, !dbg !4060
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4061 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4065, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %1, metadata !4066, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i8* null, metadata !4027, metadata !DIExpression()) #33, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %0, metadata !4028, metadata !DIExpression()) #33, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()) #33, !dbg !4068
  call void @llvm.dbg.value(metadata i8* null, metadata !4031, metadata !DIExpression()) #33, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %0, metadata !4034, metadata !DIExpression()) #33, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %1, metadata !4035, metadata !DIExpression()) #33, !dbg !4070
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !4072
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()) #33, !dbg !4073
  %4 = icmp eq i8* %3, null, !dbg !4075
  br i1 %4, label %5, label %6, !dbg !4076

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4077
  unreachable, !dbg !4077

6:                                                ; preds = %2
  ret i8* %3, !dbg !4078
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !4079 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4083, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64* %1, metadata !4084, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i8* %0, metadata !557, metadata !DIExpression()) #33, !dbg !4086
  call void @llvm.dbg.value(metadata i64* %1, metadata !558, metadata !DIExpression()) #33, !dbg !4086
  call void @llvm.dbg.value(metadata i64 1, metadata !559, metadata !DIExpression()) #33, !dbg !4086
  %3 = load i64, i64* %1, align 8, !dbg !4088, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %3, metadata !560, metadata !DIExpression()) #33, !dbg !4086
  %4 = icmp eq i8* %0, null, !dbg !4089
  br i1 %4, label %5, label %8, !dbg !4091

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4092
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4095
  br label %15, !dbg !4095

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4096
  %10 = add nuw i64 %9, 1, !dbg !4096
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !4096
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4096
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4096
  call void @llvm.dbg.value(metadata i64 %13, metadata !560, metadata !DIExpression()) #33, !dbg !4086
  br i1 %12, label %14, label %15, !dbg !4099

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !4100
  unreachable, !dbg !4100

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4086
  call void @llvm.dbg.value(metadata i64 %16, metadata !560, metadata !DIExpression()) #33, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %0, metadata !3903, metadata !DIExpression()) #33, !dbg !4101
  call void @llvm.dbg.value(metadata i64 %16, metadata !3906, metadata !DIExpression()) #33, !dbg !4101
  call void @llvm.dbg.value(metadata i64 1, metadata !3907, metadata !DIExpression()) #33, !dbg !4101
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %17, metadata !3911, metadata !DIExpression()) #33, !dbg !4104
  %18 = icmp eq i8* %17, null, !dbg !4106
  br i1 %18, label %19, label %20, !dbg !4107

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !4108
  unreachable, !dbg !4108

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !557, metadata !DIExpression()) #33, !dbg !4086
  store i64 %16, i64* %1, align 8, !dbg !4109, !tbaa !903
  ret i8* %17, !dbg !4110
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !552 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !557, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64* %1, metadata !558, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %2, metadata !559, metadata !DIExpression()), !dbg !4111
  %4 = load i64, i64* %1, align 8, !dbg !4112, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %4, metadata !560, metadata !DIExpression()), !dbg !4111
  %5 = icmp eq i8* %0, null, !dbg !4113
  br i1 %5, label %6, label %13, !dbg !4114

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4115
  br i1 %7, label %8, label %20, !dbg !4116

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4117
  call void @llvm.dbg.value(metadata i64 %9, metadata !560, metadata !DIExpression()), !dbg !4111
  %10 = icmp ugt i64 %2, 128, !dbg !4119
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4120
  call void @llvm.dbg.value(metadata i64 %12, metadata !560, metadata !DIExpression()), !dbg !4111
  br label %20, !dbg !4121

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4122
  %15 = add nuw i64 %14, 1, !dbg !4122
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4122
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4122
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4122
  call void @llvm.dbg.value(metadata i64 %18, metadata !560, metadata !DIExpression()), !dbg !4111
  br i1 %17, label %19, label %20, !dbg !4123

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !4124
  unreachable, !dbg !4124

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4111
  call void @llvm.dbg.value(metadata i64 %21, metadata !560, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i8* %0, metadata !3903, metadata !DIExpression()) #33, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %21, metadata !3906, metadata !DIExpression()) #33, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %2, metadata !3907, metadata !DIExpression()) #33, !dbg !4125
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %22, metadata !3911, metadata !DIExpression()) #33, !dbg !4128
  %23 = icmp eq i8* %22, null, !dbg !4130
  br i1 %23, label %24, label %25, !dbg !4131

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !4132
  unreachable, !dbg !4132

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !557, metadata !DIExpression()), !dbg !4111
  store i64 %21, i64* %1, align 8, !dbg !4133, !tbaa !903
  ret i8* %22, !dbg !4134
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !564 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !569, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64* %1, metadata !570, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %2, metadata !571, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %3, metadata !572, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %4, metadata !573, metadata !DIExpression()), !dbg !4135
  %6 = load i64, i64* %1, align 8, !dbg !4136, !tbaa !903
  call void @llvm.dbg.value(metadata i64 %6, metadata !574, metadata !DIExpression()), !dbg !4135
  %7 = ashr i64 %6, 1, !dbg !4137
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4137
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4137
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4137
  call void @llvm.dbg.value(metadata i64 %10, metadata !575, metadata !DIExpression()), !dbg !4135
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %11, metadata !575, metadata !DIExpression()), !dbg !4135
  %12 = icmp sgt i64 %3, -1, !dbg !4140
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4142
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %15, metadata !575, metadata !DIExpression()), !dbg !4135
  %16 = icmp slt i64 %4, 0, !dbg !4143
  br i1 %16, label %17, label %30, !dbg !4143

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4143
  br i1 %18, label %19, label %24, !dbg !4143

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4143
  %21 = udiv i64 9223372036854775807, %20, !dbg !4143
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4143
  br i1 %23, label %46, label %43, !dbg !4143

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4143
  br i1 %25, label %43, label %26, !dbg !4143

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4143
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4143
  %29 = icmp ult i64 %28, %15, !dbg !4143
  br i1 %29, label %46, label %43, !dbg !4143

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4143
  br i1 %31, label %43, label %32, !dbg !4143

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4143
  br i1 %33, label %34, label %40, !dbg !4143

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4143
  br i1 %35, label %43, label %36, !dbg !4143

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4143
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4143
  %39 = icmp ult i64 %38, %4, !dbg !4143
  br i1 %39, label %46, label %43, !dbg !4143

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4143
  %42 = icmp ult i64 %41, %15, !dbg !4143
  br i1 %42, label %46, label %43, !dbg !4143

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !576, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4135
  %44 = mul i64 %15, %4, !dbg !4143
  call void @llvm.dbg.value(metadata i64 %44, metadata !576, metadata !DIExpression()), !dbg !4135
  %45 = icmp slt i64 %44, 128, !dbg !4143
  br i1 %45, label %46, label %52, !dbg !4143

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !577, metadata !DIExpression()), !dbg !4135
  %48 = sdiv i64 %47, %4, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %48, metadata !575, metadata !DIExpression()), !dbg !4135
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %51, metadata !576, metadata !DIExpression()), !dbg !4135
  br label %52, !dbg !4148

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4135
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4135
  call void @llvm.dbg.value(metadata i64 %54, metadata !576, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %53, metadata !575, metadata !DIExpression()), !dbg !4135
  %55 = icmp eq i8* %0, null, !dbg !4149
  br i1 %55, label %56, label %57, !dbg !4151

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4152, !tbaa !903
  br label %57, !dbg !4153

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4154
  %59 = icmp slt i64 %58, %2, !dbg !4156
  br i1 %59, label %60, label %97, !dbg !4157

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4158
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4158
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %63, metadata !575, metadata !DIExpression()), !dbg !4135
  br i1 %62, label %96, label %64, !dbg !4159

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4160
  br i1 %66, label %96, label %67, !dbg !4160

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4161

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4161
  br i1 %69, label %70, label %75, !dbg !4161

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4161
  %72 = udiv i64 9223372036854775807, %71, !dbg !4161
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4161
  br i1 %74, label %96, label %94, !dbg !4161

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4161
  br i1 %76, label %94, label %77, !dbg !4161

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4161
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4161
  %80 = icmp ult i64 %79, %63, !dbg !4161
  br i1 %80, label %96, label %94, !dbg !4161

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4161
  br i1 %82, label %94, label %83, !dbg !4161

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4161
  br i1 %84, label %85, label %91, !dbg !4161

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4161
  br i1 %86, label %94, label %87, !dbg !4161

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4161
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4161
  %90 = icmp ult i64 %89, %4, !dbg !4161
  br i1 %90, label %96, label %94, !dbg !4161

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4161
  %93 = icmp ult i64 %92, %63, !dbg !4161
  br i1 %93, label %96, label %94, !dbg !4161

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !576, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4135
  %95 = mul i64 %63, %4, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %95, metadata !576, metadata !DIExpression()), !dbg !4135
  br label %97, !dbg !4162

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !4163
  unreachable, !dbg !4163

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4135
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4135
  call void @llvm.dbg.value(metadata i64 %99, metadata !576, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %98, metadata !575, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %0, metadata !3982, metadata !DIExpression()) #33, !dbg !4164
  call void @llvm.dbg.value(metadata i64 %99, metadata !3983, metadata !DIExpression()) #33, !dbg !4164
  call void @llvm.dbg.value(metadata i8* %0, metadata !3985, metadata !DIExpression()) #33, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %99, metadata !3989, metadata !DIExpression()) #33, !dbg !4166
  %100 = icmp eq i64 %99, 0, !dbg !4168
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4168
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !4169
  call void @llvm.dbg.value(metadata i8* %102, metadata !3911, metadata !DIExpression()) #33, !dbg !4170
  %103 = icmp eq i8* %102, null, !dbg !4172
  br i1 %103, label %104, label %105, !dbg !4173

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !4174
  unreachable, !dbg !4174

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !569, metadata !DIExpression()), !dbg !4135
  store i64 %98, i64* %1, align 8, !dbg !4175, !tbaa !903
  ret i8* %102, !dbg !4176
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !4177 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i64 %0, metadata !4181, metadata !DIExpression()) #33, !dbg !4185
  call void @llvm.dbg.value(metadata i64 1, metadata !4184, metadata !DIExpression()) #33, !dbg !4185
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !4187
  call void @llvm.dbg.value(metadata i8* %2, metadata !3911, metadata !DIExpression()) #33, !dbg !4188
  %3 = icmp eq i8* %2, null, !dbg !4190
  br i1 %3, label %4, label %5, !dbg !4191

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4192
  unreachable, !dbg !4192

5:                                                ; preds = %1
  ret i8* %2, !dbg !4193
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4182 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4181, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %1, metadata !4184, metadata !DIExpression()), !dbg !4194
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !4195
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()) #33, !dbg !4196
  %4 = icmp eq i8* %3, null, !dbg !4198
  br i1 %4, label %5, label %6, !dbg !4199

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4200
  unreachable, !dbg !4200

6:                                                ; preds = %2
  ret i8* %3, !dbg !4201
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !4202 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4204, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %0, metadata !4206, metadata !DIExpression()) #33, !dbg !4210
  call void @llvm.dbg.value(metadata i64 1, metadata !4209, metadata !DIExpression()) #33, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %0, metadata !4212, metadata !DIExpression()) #33, !dbg !4216
  call void @llvm.dbg.value(metadata i64 1, metadata !4215, metadata !DIExpression()) #33, !dbg !4216
  call void @llvm.dbg.value(metadata i64 %0, metadata !4212, metadata !DIExpression()) #33, !dbg !4216
  call void @llvm.dbg.value(metadata i64 1, metadata !4215, metadata !DIExpression()) #33, !dbg !4216
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !4218
  call void @llvm.dbg.value(metadata i8* %2, metadata !3911, metadata !DIExpression()) #33, !dbg !4219
  %3 = icmp eq i8* %2, null, !dbg !4221
  br i1 %3, label %4, label %5, !dbg !4222

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4223
  unreachable, !dbg !4223

5:                                                ; preds = %1
  ret i8* %2, !dbg !4224
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4207 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4206, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %1, metadata !4209, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %0, metadata !4212, metadata !DIExpression()) #33, !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4215, metadata !DIExpression()) #33, !dbg !4226
  call void @llvm.dbg.value(metadata i64 %0, metadata !4212, metadata !DIExpression()) #33, !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4215, metadata !DIExpression()) #33, !dbg !4226
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !4228
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()) #33, !dbg !4229
  %4 = icmp eq i8* %3, null, !dbg !4231
  br i1 %4, label %5, label %6, !dbg !4232

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4233
  unreachable, !dbg !4233

6:                                                ; preds = %2
  ret i8* %3, !dbg !4234
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !4235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4239, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 %1, metadata !4240, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3935, metadata !DIExpression()) #33, !dbg !4242
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !4244
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()) #33, !dbg !4245
  %4 = icmp eq i8* %3, null, !dbg !4247
  br i1 %4, label %5, label %6, !dbg !4248

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4249
  unreachable, !dbg !4249

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4250, metadata !DIExpression()) #33, !dbg !4258
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()) #33, !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()) #33, !dbg !4258
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4260
  ret i8* %3, !dbg !4261
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !4262 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4266, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %1, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %1, metadata !3948, metadata !DIExpression()) #33, !dbg !4269
  call void @llvm.dbg.value(metadata i64 %1, metadata !3950, metadata !DIExpression()) #33, !dbg !4271
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()) #33, !dbg !4274
  %4 = icmp eq i8* %3, null, !dbg !4276
  br i1 %4, label %5, label %6, !dbg !4277

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4278
  unreachable, !dbg !4278

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4250, metadata !DIExpression()) #33, !dbg !4279
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()) #33, !dbg !4279
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()) #33, !dbg !4279
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4281
  ret i8* %3, !dbg !4282
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4283 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4287, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i64 %1, metadata !4288, metadata !DIExpression()), !dbg !4290
  %3 = add nsw i64 %1, 1, !dbg !4291
  call void @llvm.dbg.value(metadata i64 %3, metadata !3948, metadata !DIExpression()) #33, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %3, metadata !3950, metadata !DIExpression()) #33, !dbg !4294
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !4296
  call void @llvm.dbg.value(metadata i8* %4, metadata !3911, metadata !DIExpression()) #33, !dbg !4297
  %5 = icmp eq i8* %4, null, !dbg !4299
  br i1 %5, label %6, label %7, !dbg !4300

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4301
  unreachable, !dbg !4301

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4289, metadata !DIExpression()), !dbg !4290
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4302
  store i8 0, i8* %8, align 1, !dbg !4303, !tbaa !721
  call void @llvm.dbg.value(metadata i8* %4, metadata !4250, metadata !DIExpression()) #33, !dbg !4304
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()) #33, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()) #33, !dbg !4304
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4306
  ret i8* %4, !dbg !4307
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4308 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4310, metadata !DIExpression()), !dbg !4311
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !4312
  %3 = add i64 %2, 1, !dbg !4313
  call void @llvm.dbg.value(metadata i8* %0, metadata !4239, metadata !DIExpression()) #33, !dbg !4314
  call void @llvm.dbg.value(metadata i64 %3, metadata !4240, metadata !DIExpression()) #33, !dbg !4314
  call void @llvm.dbg.value(metadata i64 %3, metadata !3935, metadata !DIExpression()) #33, !dbg !4316
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !4318
  call void @llvm.dbg.value(metadata i8* %4, metadata !3911, metadata !DIExpression()) #33, !dbg !4319
  %5 = icmp eq i8* %4, null, !dbg !4321
  br i1 %5, label %6, label %7, !dbg !4322

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4323
  unreachable, !dbg !4323

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4250, metadata !DIExpression()) #33, !dbg !4324
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()) #33, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %3, metadata !4257, metadata !DIExpression()) #33, !dbg !4324
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !4326
  ret i8* %4, !dbg !4327
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4328 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4333, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %1, metadata !4330, metadata !DIExpression()), !dbg !4334
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.168, i64 0, i64 0), i32 noundef 5) #33, !dbg !4333
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i64 0, i64 0), i8* noundef %2) #33, !dbg !4333
  %3 = icmp eq i32 %1, 0, !dbg !4333
  tail call void @llvm.assume(i1 %3), !dbg !4333
  tail call void @abort() #35, !dbg !4335
  unreachable, !dbg !4335
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4336 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4374, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8* %1, metadata !4375, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 0, metadata !4376, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 0, metadata !4377, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8 0, metadata !4378, metadata !DIExpression()), !dbg !4398
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4399
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #33, !dbg !4399
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4379, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i8* %1, metadata !4383, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i8* %4, metadata !4385, metadata !DIExpression()), !dbg !4401
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4402

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4401
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4403
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4398
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4404
  call void @llvm.dbg.value(metadata i32 %11, metadata !4376, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %10, metadata !4377, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8* %9, metadata !4385, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i8* %8, metadata !4383, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i8 poison, metadata !4378, metadata !DIExpression()), !dbg !4398
  %12 = load i8, i8* %8, align 1, !dbg !4405, !tbaa !721
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4406

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4376, metadata !DIExpression()), !dbg !4398
  %14 = icmp ult i8* %9, %5, !dbg !4407
  br i1 %14, label %15, label %47, !dbg !4410

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4411
  call void @llvm.dbg.value(metadata i8* %16, metadata !4385, metadata !DIExpression()), !dbg !4401
  store i8 114, i8* %9, align 1, !dbg !4412, !tbaa !721
  br label %47, !dbg !4413

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4376, metadata !DIExpression()), !dbg !4398
  %18 = or i32 %10, 576, !dbg !4414
  call void @llvm.dbg.value(metadata i32 %18, metadata !4377, metadata !DIExpression()), !dbg !4398
  %19 = icmp ult i8* %9, %5, !dbg !4415
  br i1 %19, label %20, label %47, !dbg !4417

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4418
  call void @llvm.dbg.value(metadata i8* %21, metadata !4385, metadata !DIExpression()), !dbg !4401
  store i8 119, i8* %9, align 1, !dbg !4419, !tbaa !721
  br label %47, !dbg !4420

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4376, metadata !DIExpression()), !dbg !4398
  %23 = or i32 %10, 1088, !dbg !4421
  call void @llvm.dbg.value(metadata i32 %23, metadata !4377, metadata !DIExpression()), !dbg !4398
  %24 = icmp ult i8* %9, %5, !dbg !4422
  br i1 %24, label %25, label %47, !dbg !4424

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4425
  call void @llvm.dbg.value(metadata i8* %26, metadata !4385, metadata !DIExpression()), !dbg !4401
  store i8 97, i8* %9, align 1, !dbg !4426, !tbaa !721
  br label %47, !dbg !4427

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4377, metadata !DIExpression()), !dbg !4398
  %28 = icmp ult i8* %9, %5, !dbg !4428
  br i1 %28, label %29, label %47, !dbg !4430

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4431
  call void @llvm.dbg.value(metadata i8* %30, metadata !4385, metadata !DIExpression()), !dbg !4401
  store i8 98, i8* %9, align 1, !dbg !4432, !tbaa !721
  br label %47, !dbg !4433

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4376, metadata !DIExpression()), !dbg !4398
  %32 = icmp ult i8* %9, %5, !dbg !4434
  br i1 %32, label %33, label %47, !dbg !4436

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4437
  call void @llvm.dbg.value(metadata i8* %34, metadata !4385, metadata !DIExpression()), !dbg !4401
  store i8 43, i8* %9, align 1, !dbg !4438, !tbaa !721
  br label %47, !dbg !4439

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4440
  call void @llvm.dbg.value(metadata i32 %36, metadata !4377, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8 1, metadata !4378, metadata !DIExpression()), !dbg !4398
  br label %47, !dbg !4441

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4442
  call void @llvm.dbg.value(metadata i32 %38, metadata !4377, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8 1, metadata !4378, metadata !DIExpression()), !dbg !4398
  br label %47, !dbg !4443

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #34, !dbg !4444
  call void @llvm.dbg.value(metadata i64 %40, metadata !4386, metadata !DIExpression()), !dbg !4445
  %41 = ptrtoint i8* %5 to i64, !dbg !4446
  %42 = ptrtoint i8* %9 to i64, !dbg !4446
  %43 = sub i64 %41, %42, !dbg !4446
  %44 = icmp ugt i64 %40, %43, !dbg !4448
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4449
  call void @llvm.dbg.value(metadata i64 %45, metadata !4386, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i8* %9, metadata !4450, metadata !DIExpression()) #33, !dbg !4455
  call void @llvm.dbg.value(metadata i8* %8, metadata !4453, metadata !DIExpression()) #33, !dbg !4455
  call void @llvm.dbg.value(metadata i64 %45, metadata !4454, metadata !DIExpression()) #33, !dbg !4455
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #33, !dbg !4457
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4458
  call void @llvm.dbg.value(metadata i8* %46, metadata !4385, metadata !DIExpression()), !dbg !4401
  br label %53, !dbg !4459

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4401
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4398
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4398
  call void @llvm.dbg.value(metadata i32 %51, metadata !4376, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %50, metadata !4377, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8* %49, metadata !4385, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i8 poison, metadata !4378, metadata !DIExpression()), !dbg !4398
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4460
  call void @llvm.dbg.value(metadata i8* %52, metadata !4383, metadata !DIExpression()), !dbg !4401
  br label %6, !dbg !4461, !llvm.loop !4462

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4401
  call void @llvm.dbg.value(metadata i8* %54, metadata !4385, metadata !DIExpression()), !dbg !4401
  store i8 0, i8* %54, align 1, !dbg !4464, !tbaa !721
  br i1 %7, label %55, label %66, !dbg !4465

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4466
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #33, !dbg !4467
  call void @llvm.dbg.value(metadata i32 %57, metadata !4391, metadata !DIExpression()), !dbg !4468
  %58 = icmp slt i32 %57, 0, !dbg !4469
  br i1 %58, label %68, label %59, !dbg !4471

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #33, !dbg !4472
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4394, metadata !DIExpression()), !dbg !4468
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4473
  br i1 %61, label %62, label %68, !dbg !4474

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #36, !dbg !4475
  %64 = load i32, i32* %63, align 4, !dbg !4475, !tbaa !712
  call void @llvm.dbg.value(metadata i32 %64, metadata !4395, metadata !DIExpression()), !dbg !4476
  %65 = call i32 @close(i32 noundef %57) #33, !dbg !4477
  store i32 %64, i32* %63, align 4, !dbg !4478, !tbaa !712
  br label %68, !dbg !4479

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4480, metadata !DIExpression()) #33, !dbg !4484
  call void @llvm.dbg.value(metadata i8* %1, metadata !4483, metadata !DIExpression()) #33, !dbg !4484
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #33, !dbg !4486
  br label %68, !dbg !4487

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4398
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #33, !dbg !4488
  ret %struct._IO_FILE* %69, !dbg !4488
}

; Function Attrs: nofree
declare !dbg !4489 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #30

; Function Attrs: nofree nounwind
declare !dbg !4492 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4495 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4496 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4534, metadata !DIExpression()), !dbg !4539
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !4540
  call void @llvm.dbg.value(metadata i1 undef, metadata !4535, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4541, metadata !DIExpression()), !dbg !4544
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4546
  %4 = load i32, i32* %3, align 8, !dbg !4546, !tbaa !931
  %5 = and i32 %4, 32, !dbg !4547
  %6 = icmp eq i32 %5, 0, !dbg !4547
  call void @llvm.dbg.value(metadata i1 %6, metadata !4537, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !4548
  %8 = icmp eq i32 %7, 0, !dbg !4549
  call void @llvm.dbg.value(metadata i1 %8, metadata !4538, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  br i1 %6, label %9, label %19, !dbg !4550

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4552
  call void @llvm.dbg.value(metadata i1 %10, metadata !4535, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4539
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4553
  %12 = xor i1 %8, true, !dbg !4553
  %13 = sext i1 %12 to i32, !dbg !4553
  br i1 %11, label %22, label %14, !dbg !4553

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !4554
  %16 = load i32, i32* %15, align 4, !dbg !4554, !tbaa !712
  %17 = icmp ne i32 %16, 9, !dbg !4555
  %18 = sext i1 %17 to i32, !dbg !4556
  br label %22, !dbg !4556

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4557

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !4559
  store i32 0, i32* %21, align 4, !dbg !4561, !tbaa !712
  br label %22, !dbg !4559

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4539
  ret i32 %23, !dbg !4562
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4563 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4568, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i8* %1, metadata !4569, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %2, metadata !4570, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4571, metadata !DIExpression()), !dbg !4573
  %5 = icmp eq i8* %1, null, !dbg !4574
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4576
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.176, i64 0, i64 0), i8* %1, !dbg !4576
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4576
  call void @llvm.dbg.value(metadata i64 %8, metadata !4570, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i8* %7, metadata !4569, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i32* %6, metadata !4568, metadata !DIExpression()), !dbg !4573
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4577
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4579
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4571, metadata !DIExpression()), !dbg !4573
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !4580
  call void @llvm.dbg.value(metadata i64 %11, metadata !4572, metadata !DIExpression()), !dbg !4573
  %12 = icmp ult i64 %11, -3, !dbg !4581
  br i1 %12, label %13, label %18, !dbg !4583

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !4584
  %15 = icmp eq i32 %14, 0, !dbg !4584
  br i1 %15, label %16, label %30, !dbg !4585

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4586, metadata !DIExpression()) #33, !dbg !4591
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4593, metadata !DIExpression()) #33, !dbg !4598
  call void @llvm.dbg.value(metadata i32 0, metadata !4596, metadata !DIExpression()) #33, !dbg !4598
  call void @llvm.dbg.value(metadata i64 8, metadata !4597, metadata !DIExpression()) #33, !dbg !4598
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4600
  store i64 0, i64* %17, align 1, !dbg !4600
  br label %30, !dbg !4601

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4602
  br i1 %19, label %20, label %21, !dbg !4604

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !4605
  unreachable, !dbg !4605

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4606

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !4608
  br i1 %24, label %30, label %25, !dbg !4609

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4610
  br i1 %26, label %30, label %27, !dbg !4613

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4614, !tbaa !721
  %29 = zext i8 %28 to i32, !dbg !4615
  store i32 %29, i32* %6, align 4, !dbg !4616, !tbaa !712
  br label %30, !dbg !4617

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4573
  ret i64 %31, !dbg !4618
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4619 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4624 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4626, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata i64 %1, metadata !4627, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata i64 %2, metadata !4628, metadata !DIExpression()), !dbg !4630
  %4 = icmp eq i64 %2, 0, !dbg !4631
  br i1 %4, label %8, label %5, !dbg !4631

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4631
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4631
  br i1 %7, label %13, label %8, !dbg !4631

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4629, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4630
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4629, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4630
  %9 = mul i64 %2, %1, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %9, metadata !4629, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata i8* %0, metadata !4633, metadata !DIExpression()) #33, !dbg !4637
  call void @llvm.dbg.value(metadata i64 %9, metadata !4636, metadata !DIExpression()) #33, !dbg !4637
  %10 = icmp eq i64 %9, 0, !dbg !4639
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4639
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !4640
  br label %15, !dbg !4641

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4629, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4630
  %14 = tail call i32* @__errno_location() #36, !dbg !4642
  store i32 12, i32* %14, align 4, !dbg !4644, !tbaa !712
  br label %15, !dbg !4645

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4630
  ret i8* %16, !dbg !4646
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4647 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4649, metadata !DIExpression()), !dbg !4654
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4655
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4655
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4650, metadata !DIExpression()), !dbg !4656
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !4657
  %5 = icmp eq i32 %4, 0, !dbg !4657
  br i1 %5, label %6, label %13, !dbg !4659

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4660, metadata !DIExpression()) #33, !dbg !4664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), metadata !4663, metadata !DIExpression()) #33, !dbg !4664
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), i64 2), !dbg !4667
  %8 = icmp eq i32 %7, 0, !dbg !4668
  br i1 %8, label %12, label %9, !dbg !4669

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4660, metadata !DIExpression()) #33, !dbg !4670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.182, i64 0, i64 0), metadata !4663, metadata !DIExpression()) #33, !dbg !4670
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.182, i64 0, i64 0), i64 6), !dbg !4672
  %11 = icmp eq i32 %10, 0, !dbg !4673
  br i1 %11, label %12, label %13, !dbg !4674

12:                                               ; preds = %9, %6
  br label %13, !dbg !4675

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4654
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4676
  ret i1 %14, !dbg !4676
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4677 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4681, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i8* %1, metadata !4682, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i64 %2, metadata !4683, metadata !DIExpression()), !dbg !4684
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !4685
  ret i32 %4, !dbg !4686
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4687 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4691, metadata !DIExpression()), !dbg !4692
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !4693
  ret i8* %2, !dbg !4694
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4697, metadata !DIExpression()), !dbg !4699
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4700
  call void @llvm.dbg.value(metadata i8* %2, metadata !4698, metadata !DIExpression()), !dbg !4699
  ret i8* %2, !dbg !4701
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4702 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4704, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.value(metadata i8* %1, metadata !4705, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.value(metadata i64 %2, metadata !4706, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.value(metadata i32 %0, metadata !4697, metadata !DIExpression()) #33, !dbg !4712
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4714
  call void @llvm.dbg.value(metadata i8* %4, metadata !4698, metadata !DIExpression()) #33, !dbg !4712
  call void @llvm.dbg.value(metadata i8* %4, metadata !4707, metadata !DIExpression()), !dbg !4711
  %5 = icmp eq i8* %4, null, !dbg !4715
  br i1 %5, label %6, label %9, !dbg !4716

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4717
  br i1 %7, label %19, label %8, !dbg !4720

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4721, !tbaa !721
  br label %19, !dbg !4722

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !4723
  call void @llvm.dbg.value(metadata i64 %10, metadata !4708, metadata !DIExpression()), !dbg !4724
  %11 = icmp ult i64 %10, %2, !dbg !4725
  br i1 %11, label %12, label %14, !dbg !4727

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4728
  call void @llvm.dbg.value(metadata i8* %1, metadata !4730, metadata !DIExpression()) #33, !dbg !4735
  call void @llvm.dbg.value(metadata i8* %4, metadata !4733, metadata !DIExpression()) #33, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %13, metadata !4734, metadata !DIExpression()) #33, !dbg !4735
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !4737
  br label %19, !dbg !4738

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4739
  br i1 %15, label %19, label %16, !dbg !4742

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4743
  call void @llvm.dbg.value(metadata i8* %1, metadata !4730, metadata !DIExpression()) #33, !dbg !4745
  call void @llvm.dbg.value(metadata i8* %4, metadata !4733, metadata !DIExpression()) #33, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %17, metadata !4734, metadata !DIExpression()) #33, !dbg !4745
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !4747
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4748
  store i8 0, i8* %18, align 1, !dbg !4749, !tbaa !721
  br label %19, !dbg !4750

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4751
  ret i32 %20, !dbg !4752
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
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind readnone willreturn }
attributes #37 = { noreturn }
attributes #38 = { cold }
attributes #39 = { nounwind allocsize(1) }
attributes #40 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !207, !338, !343, !350, !508, !528, !531, !533, !536, !538, !540, !389, !399, !425, !542, !500, !548, !579, !581, !583, !514, !585, !588, !590, !592}
!llvm.ident = !{!594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594}
!llvm.module.flags = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 52, type: !202, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/expand.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c80215ff64ab09027a1b86db960a2307")
!4 = !{!5, !21, !25, !28}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 127, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!23 = !{!24}
!24 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 131, baseType: !7, size: 32, elements: !26)
!26 = !{!27}
!27 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 130, baseType: !7, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!31 = !{!32, !34, !35, !36, !37, !40, !42, !43}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!44 = !{!45, !0, !131, !145}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !47, file: !48, line: 575, type: !35, isLocal: true, isDefinition: true)
!47 = distinct !DISubprogram(name: "oputs_", scope: !48, file: !48, line: 573, type: !49, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!49 = !DISubroutineType(types: !50)
!50 = !{null, !40, !40}
!51 = !{!52, !53, !54, !57, !58, !59, !60, !64, !65, !66, !67, !69, !125, !126, !127, !129, !130}
!52 = !DILocalVariable(name: "program", arg: 1, scope: !47, file: !48, line: 573, type: !40)
!53 = !DILocalVariable(name: "option", arg: 2, scope: !47, file: !48, line: 573, type: !40)
!54 = !DILocalVariable(name: "term", scope: !55, file: !48, line: 585, type: !40)
!55 = distinct !DILexicalBlock(scope: !56, file: !48, line: 582, column: 5)
!56 = distinct !DILexicalBlock(scope: !47, file: !48, line: 581, column: 7)
!57 = !DILocalVariable(name: "double_space", scope: !47, file: !48, line: 594, type: !43)
!58 = !DILocalVariable(name: "first_word", scope: !47, file: !48, line: 595, type: !40)
!59 = !DILocalVariable(name: "option_text", scope: !47, file: !48, line: 596, type: !40)
!60 = !DILocalVariable(name: "s", scope: !61, file: !48, line: 608, type: !40)
!61 = distinct !DILexicalBlock(scope: !62, file: !48, line: 605, column: 5)
!62 = distinct !DILexicalBlock(scope: !63, file: !48, line: 604, column: 12)
!63 = distinct !DILexicalBlock(scope: !47, file: !48, line: 597, column: 7)
!64 = !DILocalVariable(name: "spaces", scope: !61, file: !48, line: 609, type: !37)
!65 = !DILocalVariable(name: "anchor_len", scope: !47, file: !48, line: 620, type: !37)
!66 = !DILocalVariable(name: "desc_text", scope: !47, file: !48, line: 625, type: !40)
!67 = !DILocalVariable(name: "__ptr", scope: !68, file: !48, line: 644, type: !40)
!68 = distinct !DILexicalBlock(scope: !47, file: !48, line: 644, column: 3)
!69 = !DILocalVariable(name: "__stream", scope: !68, file: !48, line: 644, type: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !73)
!72 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !75)
!74 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !91, !93, !94, !95, !99, !100, !102, !106, !109, !111, !114, !117, !118, !119, !120, !121}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !73, file: !74, line: 51, baseType: !35, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !73, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !73, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !73, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !73, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !73, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !73, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !73, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !73, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !73, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !73, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !73, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !73, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !74, line: 36, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !73, file: !74, line: 70, baseType: !92, size: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !73, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !73, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !73, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !97, line: 152, baseType: !98)
!97 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!98 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !73, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !73, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!101 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !73, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !73, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !74, line: 43, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !73, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !97, line: 153, baseType: !98)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !73, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !74, line: 37, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !73, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !74, line: 38, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !73, file: !74, line: 93, baseType: !92, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !73, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !73, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !73, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !73, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 20)
!125 = !DILocalVariable(name: "__cnt", scope: !68, file: !48, line: 644, type: !37)
!126 = !DILocalVariable(name: "url_program", scope: !47, file: !48, line: 648, type: !40)
!127 = !DILocalVariable(name: "__ptr", scope: !128, file: !48, line: 686, type: !40)
!128 = distinct !DILexicalBlock(scope: !47, file: !48, line: 686, column: 3)
!129 = !DILocalVariable(name: "__stream", scope: !128, file: !48, line: 686, type: !70)
!130 = !DILocalVariable(name: "__cnt", scope: !128, file: !48, line: 686, type: !37)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 54, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 1280, elements: !143)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !136, line: 50, size: 256, elements: !137)
!136 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!137 = !{!138, !139, !140, !142}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !136, line: 52, baseType: !40, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !135, file: !136, line: 55, baseType: !35, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !135, file: !136, line: 56, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !135, file: !136, line: 57, baseType: !35, size: 32, offset: 192)
!143 = !{!144}
!144 = !DISubrange(count: 5)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "line_in", scope: !147, file: !3, line: 110, type: !199, isLocal: true, isDefinition: true)
!147 = distinct !DISubprogram(name: "expand", scope: !3, file: !3, line: 102, type: !148, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{null}
!150 = !{!151, !152, !165, !177, !178, !184, !185, !191, !192, !195, !197, !198}
!151 = !DILocalVariable(name: "fp", scope: !147, file: !3, line: 105, type: !70)
!152 = !DILocalVariable(name: "mbbuf", scope: !147, file: !3, line: 111, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !154, line: 50, baseType: !155)
!154 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 43, size: 320, elements: !156)
!156 = !{!157, !158, !159, !163, !164}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !155, file: !154, line: 45, baseType: !32, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !155, file: !154, line: 46, baseType: !70, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !154, line: 47, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !161, line: 130, baseType: !162)
!161 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !38, line: 35, baseType: !98)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !155, file: !154, line: 48, baseType: !160, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !155, file: !154, line: 49, baseType: !160, size: 64, offset: 256)
!165 = !DILocalVariable(name: "g", scope: !166, file: !3, line: 117, type: !167)
!166 = distinct !DILexicalBlock(scope: !147, file: !3, line: 115, column: 5)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !22, line: 143, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 138, size: 64, elements: !169)
!169 = !{!170, !175, !176}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !168, file: !22, line: 140, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !172, line: 37, baseType: !173)
!172 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !97, line: 57, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !97, line: 42, baseType: !7)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !168, file: !22, line: 141, baseType: !42, size: 8, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !168, file: !22, line: 142, baseType: !42, size: 8, offset: 40)
!177 = !DILocalVariable(name: "convert", scope: !166, file: !3, line: 120, type: !43)
!178 = !DILocalVariable(name: "column", scope: !166, file: !3, line: 127, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !180, line: 20, baseType: !181)
!180 = !DIFile(filename: "src/expand-common.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !182, line: 101, baseType: !183)
!182 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !97, line: 72, baseType: !98)
!184 = !DILocalVariable(name: "tab_index", scope: !166, file: !3, line: 130, type: !160)
!185 = !DILocalVariable(name: "last_tab", scope: !186, file: !3, line: 148, type: !43)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 146, column: 17)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 145, column: 19)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 142, column: 13)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 141, column: 15)
!190 = distinct !DILexicalBlock(scope: !166, file: !3, line: 136, column: 9)
!191 = !DILocalVariable(name: "next_tab_column", scope: !186, file: !3, line: 149, type: !179)
!192 = !DILocalVariable(name: "width", scope: !193, file: !3, line: 170, type: !35)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 169, column: 17)
!194 = distinct !DILexicalBlock(scope: !187, file: !3, line: 161, column: 24)
!195 = !DILocalVariable(name: "__ptr", scope: !196, file: !3, line: 180, type: !40)
!196 = distinct !DILexicalBlock(scope: !190, file: !3, line: 180, column: 11)
!197 = !DILocalVariable(name: "__stream", scope: !196, file: !3, line: 180, type: !70)
!198 = !DILocalVariable(name: "__cnt", scope: !196, file: !3, line: 180, type: !37)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2097152, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 262144)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 272, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 34)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !207, file: !208, line: 30, type: !43, isLocal: false, isDefinition: true)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !209, retainedTypes: !233, globals: !234, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "src/expand-common.c", directory: "/src", checksumkind: CSK_MD5, checksum: "942c25878b2cf9f4cd3ad8d127f8f292")
!209 = !{!5, !210, !224}
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !211, line: 42, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!213 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!214 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!215 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!216 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!217 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!218 = !DIEnumerator(name: "c_quoting_style", value: 5)
!219 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!220 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!221 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!222 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!223 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !225, line: 44, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!226 = !{!227, !228, !229, !230, !231, !232}
!227 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!228 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!229 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!230 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!231 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!232 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!233 = !{!35, !36, !43, !98, !39, !34, !37, !40, !42}
!234 = !{!205, !235, !237, !282, !284, !286, !289, !291, !293, !295, !297, !299, !304, !307}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "exit_status", scope: !207, file: !208, line: 69, type: !35, isLocal: false, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "prev_file", scope: !239, file: !208, line: 351, type: !32, isLocal: true, isDefinition: true)
!239 = distinct !DISubprogram(name: "next_file", scope: !208, file: !208, line: 349, type: !240, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !276)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !244, file: !74, line: 51, baseType: !35, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !244, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !244, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !244, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !244, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !244, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !244, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !244, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !244, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !244, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !244, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !244, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !244, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !244, file: !74, line: 70, baseType: !260, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !244, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !244, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !244, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !244, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !244, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !244, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !244, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !244, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !244, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !244, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !244, file: !74, line: 93, baseType: !260, size: 64, offset: 1344)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !244, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !244, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !244, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !244, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!276 = !{!277, !278, !279}
!277 = !DILocalVariable(name: "fp", arg: 1, scope: !239, file: !208, line: 349, type: !242)
!278 = !DILocalVariable(name: "file", scope: !239, file: !208, line: 352, type: !32)
!279 = !DILocalVariable(name: "err", scope: !280, file: !208, line: 356, type: !35)
!280 = distinct !DILexicalBlock(scope: !281, file: !208, line: 355, column: 5)
!281 = distinct !DILexicalBlock(scope: !239, file: !208, line: 354, column: 7)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "max_column_width", scope: !207, file: !208, line: 42, type: !160, isLocal: false, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !207, file: !208, line: 54, type: !160, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "tab_list", scope: !207, file: !208, line: 47, type: !288, isLocal: true, isDefinition: true)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !207, file: !208, line: 50, type: !160, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "extend_size", scope: !207, file: !208, line: 36, type: !179, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "increment_size", scope: !207, file: !208, line: 39, type: !179, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "tab_size", scope: !207, file: !208, line: 33, type: !179, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !207, file: !208, line: 66, type: !43, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !207, file: !208, line: 60, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 2)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "file_list", scope: !207, file: !208, line: 57, type: !306, isLocal: true, isDefinition: true)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !309, file: !48, line: 575, type: !35, isLocal: true, isDefinition: true)
!309 = distinct !DISubprogram(name: "oputs_", scope: !48, file: !48, line: 573, type: !49, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !310)
!310 = !{!311, !312, !313, !316, !317, !318, !319, !323, !324, !325, !326, !328, !329, !330, !331, !333, !334}
!311 = !DILocalVariable(name: "program", arg: 1, scope: !309, file: !48, line: 573, type: !40)
!312 = !DILocalVariable(name: "option", arg: 2, scope: !309, file: !48, line: 573, type: !40)
!313 = !DILocalVariable(name: "term", scope: !314, file: !48, line: 585, type: !40)
!314 = distinct !DILexicalBlock(scope: !315, file: !48, line: 582, column: 5)
!315 = distinct !DILexicalBlock(scope: !309, file: !48, line: 581, column: 7)
!316 = !DILocalVariable(name: "double_space", scope: !309, file: !48, line: 594, type: !43)
!317 = !DILocalVariable(name: "first_word", scope: !309, file: !48, line: 595, type: !40)
!318 = !DILocalVariable(name: "option_text", scope: !309, file: !48, line: 596, type: !40)
!319 = !DILocalVariable(name: "s", scope: !320, file: !48, line: 608, type: !40)
!320 = distinct !DILexicalBlock(scope: !321, file: !48, line: 605, column: 5)
!321 = distinct !DILexicalBlock(scope: !322, file: !48, line: 604, column: 12)
!322 = distinct !DILexicalBlock(scope: !309, file: !48, line: 597, column: 7)
!323 = !DILocalVariable(name: "spaces", scope: !320, file: !48, line: 609, type: !37)
!324 = !DILocalVariable(name: "anchor_len", scope: !309, file: !48, line: 620, type: !37)
!325 = !DILocalVariable(name: "desc_text", scope: !309, file: !48, line: 625, type: !40)
!326 = !DILocalVariable(name: "__ptr", scope: !327, file: !48, line: 644, type: !40)
!327 = distinct !DILexicalBlock(scope: !309, file: !48, line: 644, column: 3)
!328 = !DILocalVariable(name: "__stream", scope: !327, file: !48, line: 644, type: !242)
!329 = !DILocalVariable(name: "__cnt", scope: !327, file: !48, line: 644, type: !37)
!330 = !DILocalVariable(name: "url_program", scope: !309, file: !48, line: 648, type: !40)
!331 = !DILocalVariable(name: "__ptr", scope: !332, file: !48, line: 686, type: !40)
!332 = distinct !DILexicalBlock(scope: !309, file: !48, line: 686, column: 3)
!333 = !DILocalVariable(name: "__stream", scope: !332, file: !48, line: 686, type: !242)
!334 = !DILocalVariable(name: "__cnt", scope: !332, file: !48, line: 686, type: !37)
!335 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "Version", scope: !338, file: !339, line: 3, type: !40, isLocal: false, isDefinition: true)
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !340, splitDebugInlining: false, nameTableKind: None)
!339 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!340 = !{!336}
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "file_name", scope: !343, file: !344, line: 45, type: !40, isLocal: true, isDefinition: true)
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !345, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!345 = !{!341, !346}
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !343, file: !344, line: 55, type: !43, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !350, file: !351, line: 66, type: !386, isLocal: false, isDefinition: true)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !352, globals: !353, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!352 = !{!34, !42}
!353 = !{!354, !380, !348, !382, !384}
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "old_file_name", scope: !356, file: !351, line: 304, type: !40, isLocal: true, isDefinition: true)
!356 = distinct !DISubprogram(name: "verror_at_line", scope: !351, file: !351, line: 298, type: !357, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !373)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !35, !35, !40, !7, !40, !359}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !360, line: 52, baseType: !361)
!360 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !362, line: 32, baseType: !363)
!362 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !364, baseType: !365)
!364 = !DIFile(filename: "lib/error.c", directory: "/src")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !366, size: 256, elements: !367)
!366 = !DINamespace(name: "std", scope: null)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !365, file: !364, baseType: !34, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !365, file: !364, baseType: !34, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !365, file: !364, baseType: !34, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !365, file: !364, baseType: !35, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !365, file: !364, baseType: !35, size: 32, offset: 224)
!373 = !{!374, !375, !376, !377, !378, !379}
!374 = !DILocalVariable(name: "status", arg: 1, scope: !356, file: !351, line: 298, type: !35)
!375 = !DILocalVariable(name: "errnum", arg: 2, scope: !356, file: !351, line: 298, type: !35)
!376 = !DILocalVariable(name: "file_name", arg: 3, scope: !356, file: !351, line: 298, type: !40)
!377 = !DILocalVariable(name: "line_number", arg: 4, scope: !356, file: !351, line: 298, type: !7)
!378 = !DILocalVariable(name: "message", arg: 5, scope: !356, file: !351, line: 298, type: !40)
!379 = !DILocalVariable(name: "args", arg: 6, scope: !356, file: !351, line: 298, type: !359)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "old_line_number", scope: !356, file: !351, line: 305, type: !7, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "error_message_count", scope: !350, file: !351, line: 69, type: !7, isLocal: false, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !350, file: !351, line: 295, type: !35, isLocal: false, isDefinition: true)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "program_name", scope: !389, file: !390, line: 31, type: !40, isLocal: false, isDefinition: true)
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !391, globals: !392, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!391 = !{!32}
!392 = !{!387}
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "utf07FF", scope: !395, file: !396, line: 46, type: !422, isLocal: true, isDefinition: true)
!395 = distinct !DISubprogram(name: "proper_name_lite", scope: !396, file: !396, line: 38, type: !397, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !401)
!396 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!397 = !DISubroutineType(types: !398)
!398 = !{!40, !40, !40}
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !400, splitDebugInlining: false, nameTableKind: None)
!400 = !{!393}
!401 = !{!402, !403, !404, !405, !406}
!402 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !395, file: !396, line: 38, type: !40)
!403 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !395, file: !396, line: 38, type: !40)
!404 = !DILocalVariable(name: "translation", scope: !395, file: !396, line: 40, type: !40)
!405 = !DILocalVariable(name: "w", scope: !395, file: !396, line: 47, type: !171)
!406 = !DILocalVariable(name: "mbs", scope: !395, file: !396, line: 48, type: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !408, line: 6, baseType: !409)
!408 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !410, line: 21, baseType: !411)
!410 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 13, size: 64, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !411, file: !410, line: 15, baseType: !35, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !411, file: !410, line: 20, baseType: !415, size: 32, offset: 32)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !410, line: 16, size: 32, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !415, file: !410, line: 18, baseType: !7, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !415, file: !410, line: 19, baseType: !419, size: 32)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 4)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16, elements: !302)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !425, file: !426, line: 76, type: !494, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !427, retainedTypes: !433, globals: !434, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!427 = !{!210, !428, !5}
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !211, line: 254, baseType: !7, size: 32, elements: !429)
!429 = !{!430, !431, !432}
!430 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!431 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!432 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!433 = !{!35, !36, !37}
!434 = !{!423, !435, !441, !453, !455, !460, !483, !490, !492}
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !425, file: !426, line: 92, type: !437, isLocal: false, isDefinition: true)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 320, elements: !439)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!439 = !{!440}
!440 = !DISubrange(count: 10)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !425, file: !426, line: 1040, type: !443, isLocal: false, isDefinition: true)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !426, line: 56, size: 448, elements: !444)
!444 = !{!445, !446, !447, !451, !452}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !443, file: !426, line: 59, baseType: !210, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !426, line: 62, baseType: !35, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !443, file: !426, line: 66, baseType: !448, size: 256, offset: 64)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 8)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !443, file: !426, line: 69, baseType: !40, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !443, file: !426, line: 72, baseType: !40, size: 64, offset: 384)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !425, file: !426, line: 107, type: !443, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "slot0", scope: !425, file: !426, line: 831, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 256)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "quote", scope: !462, file: !426, line: 228, type: !481, isLocal: true, isDefinition: true)
!462 = distinct !DISubprogram(name: "gettext_quote", scope: !426, file: !426, line: 197, type: !463, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!40, !40, !210}
!465 = !{!466, !467, !468, !469, !470}
!466 = !DILocalVariable(name: "msgid", arg: 1, scope: !462, file: !426, line: 197, type: !40)
!467 = !DILocalVariable(name: "s", arg: 2, scope: !462, file: !426, line: 197, type: !210)
!468 = !DILocalVariable(name: "translation", scope: !462, file: !426, line: 199, type: !40)
!469 = !DILocalVariable(name: "w", scope: !462, file: !426, line: 229, type: !171)
!470 = !DILocalVariable(name: "mbs", scope: !462, file: !426, line: 230, type: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !408, line: 6, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !410, line: 21, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 13, size: 64, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !473, file: !410, line: 15, baseType: !35, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !473, file: !410, line: 20, baseType: !477, size: 32, offset: 32)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !473, file: !410, line: 16, size: 32, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !477, file: !410, line: 18, baseType: !7, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !477, file: !410, line: 19, baseType: !419, size: 32)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !482)
!482 = !{!303, !421}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "slotvec", scope: !425, file: !426, line: 834, type: !485, isLocal: true, isDefinition: true)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !426, line: 823, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !486, file: !426, line: 825, baseType: !37, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !486, file: !426, line: 826, baseType: !32, size: 64, offset: 64)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "nslots", scope: !425, file: !426, line: 832, type: !35, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "slotvec0", scope: !425, file: !426, line: 833, type: !486, isLocal: true, isDefinition: true)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 704, elements: !496)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!496 = !{!497}
!497 = !DISubrange(count: 11)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !500, file: !501, line: 26, type: !503, isLocal: false, isDefinition: true)
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !502, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!502 = !{!498}
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 376, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 47)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "exit_failure", scope: !508, file: !509, line: 24, type: !511, isLocal: false, isDefinition: true)
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !510, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!510 = !{!506}
!511 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "internal_state", scope: !514, file: !515, line: 97, type: !518, isLocal: true, isDefinition: true)
!514 = distinct !DICompileUnit(language: DW_LANG_C99, file: !515, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !516, globals: !517, splitDebugInlining: false, nameTableKind: None)
!515 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!516 = !{!34, !37, !42}
!517 = !{!512}
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !408, line: 6, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !410, line: 21, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 13, size: 64, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !520, file: !410, line: 15, baseType: !35, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !520, file: !410, line: 20, baseType: !524, size: 32, offset: 32)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !410, line: 16, size: 32, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !524, file: !410, line: 18, baseType: !7, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !524, file: !410, line: 19, baseType: !419, size: 32)
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !530, splitDebugInlining: false, nameTableKind: None)
!529 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!530 = !{!224}
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!532 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !535, splitDebugInlining: false, nameTableKind: None)
!534 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!535 = !{!34}
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!537 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !535, splitDebugInlining: false, nameTableKind: None)
!539 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!541 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !544, retainedTypes: !535, splitDebugInlining: false, nameTableKind: None)
!543 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!544 = !{!545}
!545 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !543, line: 40, baseType: !7, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !550, retainedTypes: !578, splitDebugInlining: false, nameTableKind: None)
!549 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!550 = !{!551, !563}
!551 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !552, file: !549, line: 188, baseType: !7, size: 32, elements: !561)
!552 = distinct !DISubprogram(name: "x2nrealloc", scope: !549, file: !549, line: 176, type: !553, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !556)
!553 = !DISubroutineType(types: !554)
!554 = !{!34, !34, !555, !37}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!556 = !{!557, !558, !559, !560}
!557 = !DILocalVariable(name: "p", arg: 1, scope: !552, file: !549, line: 176, type: !34)
!558 = !DILocalVariable(name: "pn", arg: 2, scope: !552, file: !549, line: 176, type: !555)
!559 = !DILocalVariable(name: "s", arg: 3, scope: !552, file: !549, line: 176, type: !37)
!560 = !DILocalVariable(name: "n", scope: !552, file: !549, line: 178, type: !37)
!561 = !{!562}
!562 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !564, file: !549, line: 228, baseType: !7, size: 32, elements: !561)
!564 = distinct !DISubprogram(name: "xpalloc", scope: !549, file: !549, line: 223, type: !565, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !568)
!565 = !DISubroutineType(types: !566)
!566 = !{!34, !34, !567, !160, !162, !160}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577}
!569 = !DILocalVariable(name: "pa", arg: 1, scope: !564, file: !549, line: 223, type: !34)
!570 = !DILocalVariable(name: "pn", arg: 2, scope: !564, file: !549, line: 223, type: !567)
!571 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !564, file: !549, line: 223, type: !160)
!572 = !DILocalVariable(name: "n_max", arg: 4, scope: !564, file: !549, line: 223, type: !162)
!573 = !DILocalVariable(name: "s", arg: 5, scope: !564, file: !549, line: 223, type: !160)
!574 = !DILocalVariable(name: "n0", scope: !564, file: !549, line: 230, type: !160)
!575 = !DILocalVariable(name: "n", scope: !564, file: !549, line: 237, type: !160)
!576 = !DILocalVariable(name: "nbytes", scope: !564, file: !549, line: 248, type: !160)
!577 = !DILocalVariable(name: "adjusted_nbytes", scope: !564, file: !549, line: 252, type: !160)
!578 = !{!32, !34, !43, !98, !39}
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !535, splitDebugInlining: false, nameTableKind: None)
!582 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!584 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !587, splitDebugInlining: false, nameTableKind: None)
!586 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!587 = !{!43, !39, !34}
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!589 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!591 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !535, splitDebugInlining: false, nameTableKind: None)
!593 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!594 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!595 = !{i32 7, !"Dwarf Version", i32 5}
!596 = !{i32 2, !"Debug Info Version", i32 3}
!597 = !{i32 1, !"wchar_size", i32 4}
!598 = !{i32 1, !"branch-target-enforcement", i32 0}
!599 = !{i32 1, !"sign-return-address", i32 0}
!600 = !{i32 1, !"sign-return-address-all", i32 0}
!601 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!602 = !{i32 7, !"PIC Level", i32 2}
!603 = !{i32 7, !"PIE Level", i32 2}
!604 = !{i32 7, !"uwtable", i32 1}
!605 = !{i32 7, !"frame-pointer", i32 1}
!606 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 64, type: !607, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !609)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !35}
!609 = !{!610}
!610 = !DILocalVariable(name: "status", arg: 1, scope: !606, file: !3, line: 64, type: !35)
!611 = !DILocation(line: 0, scope: !606)
!612 = !DILocation(line: 66, column: 14, scope: !613)
!613 = distinct !DILexicalBlock(scope: !606, file: !3, line: 66, column: 7)
!614 = !DILocation(line: 66, column: 7, scope: !606)
!615 = !DILocation(line: 67, column: 5, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !3, line: 67, column: 5)
!617 = !{!618, !618, i64 0}
!618 = !{!"any pointer", !619, i64 0}
!619 = !{!"omnipotent char", !620, i64 0}
!620 = !{!"Simple C/C++ TBAA"}
!621 = !DILocation(line: 70, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !613, file: !3, line: 69, column: 5)
!623 = !DILocation(line: 74, column: 7, scope: !622)
!624 = !DILocation(line: 729, column: 3, scope: !625, inlinedAt: !627)
!625 = distinct !DISubprogram(name: "emit_stdin_note", scope: !48, file: !48, line: 727, type: !148, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !626)
!626 = !{}
!627 = distinct !DILocation(line: 78, column: 7, scope: !622)
!628 = !DILocation(line: 736, column: 3, scope: !629, inlinedAt: !630)
!629 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !48, file: !48, line: 734, type: !148, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !626)
!630 = distinct !DILocation(line: 79, column: 7, scope: !622)
!631 = !DILocation(line: 81, column: 7, scope: !622)
!632 = !DILocation(line: 85, column: 7, scope: !622)
!633 = !DILocation(line: 89, column: 7, scope: !622)
!634 = !DILocation(line: 90, column: 7, scope: !622)
!635 = !DILocation(line: 91, column: 7, scope: !622)
!636 = !DILocalVariable(name: "program", arg: 1, scope: !637, file: !48, line: 836, type: !40)
!637 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !48, file: !48, line: 836, type: !638, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !40}
!640 = !{!636, !641, !650, !651, !653, !654}
!641 = !DILocalVariable(name: "infomap", scope: !637, file: !48, line: 838, type: !642)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 896, elements: !648)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !637, file: !48, line: 838, size: 128, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !644, file: !48, line: 838, baseType: !40, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !644, file: !48, line: 838, baseType: !40, size: 64, offset: 64)
!648 = !{!649}
!649 = !DISubrange(count: 7)
!650 = !DILocalVariable(name: "node", scope: !637, file: !48, line: 848, type: !40)
!651 = !DILocalVariable(name: "map_prog", scope: !637, file: !48, line: 849, type: !652)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!653 = !DILocalVariable(name: "lc_messages", scope: !637, file: !48, line: 861, type: !40)
!654 = !DILocalVariable(name: "url_program", scope: !637, file: !48, line: 874, type: !40)
!655 = !DILocation(line: 0, scope: !637, inlinedAt: !656)
!656 = distinct !DILocation(line: 92, column: 7, scope: !622)
!657 = !DILocation(line: 838, column: 3, scope: !637, inlinedAt: !656)
!658 = !DILocation(line: 838, column: 67, scope: !637, inlinedAt: !656)
!659 = !DILocation(line: 849, column: 36, scope: !637, inlinedAt: !656)
!660 = !DILocation(line: 851, column: 3, scope: !637, inlinedAt: !656)
!661 = !DILocalVariable(name: "__s1", arg: 1, scope: !662, file: !663, line: 1359, type: !40)
!662 = distinct !DISubprogram(name: "streq", scope: !663, file: !663, line: 1359, type: !664, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!663 = !DIFile(filename: "./lib/string.h", directory: "/src")
!664 = !DISubroutineType(types: !665)
!665 = !{!43, !40, !40}
!666 = !{!661, !667}
!667 = !DILocalVariable(name: "__s2", arg: 2, scope: !662, file: !663, line: 1359, type: !40)
!668 = !DILocation(line: 0, scope: !662, inlinedAt: !669)
!669 = distinct !DILocation(line: 851, column: 33, scope: !637, inlinedAt: !656)
!670 = !DILocation(line: 1361, column: 11, scope: !662, inlinedAt: !669)
!671 = !DILocation(line: 1361, column: 10, scope: !662, inlinedAt: !669)
!672 = !DILocation(line: 852, column: 13, scope: !637, inlinedAt: !656)
!673 = !DILocation(line: 851, column: 20, scope: !637, inlinedAt: !656)
!674 = !{!675, !618, i64 0}
!675 = !{!"infomap", !618, i64 0, !618, i64 8}
!676 = !DILocation(line: 851, column: 10, scope: !637, inlinedAt: !656)
!677 = !DILocation(line: 851, column: 28, scope: !637, inlinedAt: !656)
!678 = distinct !{!678, !660, !672, !679}
!679 = !{!"llvm.loop.mustprogress"}
!680 = !DILocation(line: 854, column: 17, scope: !681, inlinedAt: !656)
!681 = distinct !DILexicalBlock(scope: !637, file: !48, line: 854, column: 7)
!682 = !{!675, !618, i64 8}
!683 = !DILocation(line: 854, column: 7, scope: !681, inlinedAt: !656)
!684 = !DILocation(line: 854, column: 7, scope: !637, inlinedAt: !656)
!685 = !DILocation(line: 857, column: 3, scope: !637, inlinedAt: !656)
!686 = !DILocation(line: 861, column: 29, scope: !637, inlinedAt: !656)
!687 = !DILocation(line: 862, column: 7, scope: !688, inlinedAt: !656)
!688 = distinct !DILexicalBlock(scope: !637, file: !48, line: 862, column: 7)
!689 = !DILocation(line: 862, column: 19, scope: !688, inlinedAt: !656)
!690 = !DILocation(line: 862, column: 22, scope: !688, inlinedAt: !656)
!691 = !DILocation(line: 862, column: 7, scope: !637, inlinedAt: !656)
!692 = !DILocation(line: 868, column: 7, scope: !693, inlinedAt: !656)
!693 = distinct !DILexicalBlock(scope: !688, file: !48, line: 863, column: 5)
!694 = !DILocation(line: 870, column: 5, scope: !693, inlinedAt: !656)
!695 = !DILocation(line: 0, scope: !662, inlinedAt: !696)
!696 = distinct !DILocation(line: 874, column: 29, scope: !637, inlinedAt: !656)
!697 = !DILocation(line: 875, column: 3, scope: !637, inlinedAt: !656)
!698 = !DILocation(line: 877, column: 3, scope: !637, inlinedAt: !656)
!699 = !DILocation(line: 879, column: 1, scope: !637, inlinedAt: !656)
!700 = !DILocation(line: 94, column: 3, scope: !606)
!701 = !DISubprogram(name: "dcgettext", scope: !702, file: !702, line: 51, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!702 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!703 = !DISubroutineType(types: !704)
!704 = !{!32, !40, !40, !35}
!705 = !DISubprogram(name: "fputs_unlocked", scope: !360, file: !360, line: 691, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!706 = !DISubroutineType(types: !707)
!707 = !{!35, !708, !709}
!708 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!709 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!710 = !DILocation(line: 0, scope: !47)
!711 = !DILocation(line: 581, column: 7, scope: !56)
!712 = !{!713, !713, i64 0}
!713 = !{!"int", !619, i64 0}
!714 = !DILocation(line: 581, column: 19, scope: !56)
!715 = !DILocation(line: 581, column: 7, scope: !47)
!716 = !DILocation(line: 585, column: 26, scope: !55)
!717 = !DILocation(line: 0, scope: !55)
!718 = !DILocation(line: 586, column: 23, scope: !55)
!719 = !DILocation(line: 586, column: 28, scope: !55)
!720 = !DILocation(line: 586, column: 32, scope: !55)
!721 = !{!619, !619, i64 0}
!722 = !DILocation(line: 586, column: 38, scope: !55)
!723 = !DILocation(line: 0, scope: !662, inlinedAt: !724)
!724 = distinct !DILocation(line: 586, column: 41, scope: !55)
!725 = !DILocation(line: 1361, column: 11, scope: !662, inlinedAt: !724)
!726 = !DILocation(line: 1361, column: 10, scope: !662, inlinedAt: !724)
!727 = !DILocation(line: 586, column: 19, scope: !55)
!728 = !DILocation(line: 587, column: 5, scope: !55)
!729 = !DILocation(line: 588, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !47, file: !48, line: 588, column: 7)
!731 = !DILocation(line: 588, column: 7, scope: !47)
!732 = !DILocation(line: 590, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !48, line: 589, column: 5)
!734 = !DILocation(line: 591, column: 7, scope: !733)
!735 = !DILocation(line: 595, column: 37, scope: !47)
!736 = !DILocation(line: 595, column: 35, scope: !47)
!737 = !DILocation(line: 596, column: 29, scope: !47)
!738 = !DILocation(line: 597, column: 8, scope: !63)
!739 = !DILocation(line: 597, column: 7, scope: !47)
!740 = !DILocation(line: 604, column: 24, scope: !62)
!741 = !DILocation(line: 604, column: 12, scope: !63)
!742 = !DILocation(line: 0, scope: !61)
!743 = !DILocation(line: 610, column: 16, scope: !61)
!744 = !DILocation(line: 610, column: 7, scope: !61)
!745 = !DILocation(line: 611, column: 21, scope: !61)
!746 = !{!747, !747, i64 0}
!747 = !{!"short", !619, i64 0}
!748 = !DILocation(line: 611, column: 19, scope: !61)
!749 = !DILocation(line: 611, column: 16, scope: !61)
!750 = !DILocation(line: 610, column: 30, scope: !61)
!751 = distinct !{!751, !744, !745, !679}
!752 = !DILocation(line: 612, column: 18, scope: !753)
!753 = distinct !DILexicalBlock(scope: !61, file: !48, line: 612, column: 11)
!754 = !DILocation(line: 612, column: 11, scope: !61)
!755 = !DILocation(line: 620, column: 23, scope: !47)
!756 = !DILocation(line: 625, column: 39, scope: !47)
!757 = !DILocation(line: 626, column: 3, scope: !47)
!758 = !DILocation(line: 626, column: 10, scope: !47)
!759 = !DILocation(line: 626, column: 21, scope: !47)
!760 = !DILocation(line: 628, column: 44, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !48, line: 628, column: 11)
!762 = distinct !DILexicalBlock(scope: !47, file: !48, line: 627, column: 5)
!763 = !DILocation(line: 628, column: 32, scope: !761)
!764 = !DILocation(line: 628, column: 49, scope: !761)
!765 = !DILocation(line: 628, column: 11, scope: !762)
!766 = !DILocation(line: 630, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !762, file: !48, line: 630, column: 11)
!768 = !DILocation(line: 630, column: 11, scope: !762)
!769 = !DILocation(line: 632, column: 26, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !48, line: 632, column: 15)
!771 = distinct !DILexicalBlock(scope: !767, file: !48, line: 631, column: 9)
!772 = !DILocation(line: 632, column: 34, scope: !770)
!773 = !DILocation(line: 632, column: 37, scope: !770)
!774 = !DILocation(line: 632, column: 15, scope: !771)
!775 = !DILocation(line: 636, column: 29, scope: !776)
!776 = distinct !DILexicalBlock(scope: !771, file: !48, line: 636, column: 15)
!777 = !DILocation(line: 640, column: 16, scope: !762)
!778 = distinct !{!778, !757, !779, !679}
!779 = !DILocation(line: 641, column: 5, scope: !47)
!780 = !DILocation(line: 644, column: 3, scope: !47)
!781 = !DILocation(line: 0, scope: !662, inlinedAt: !782)
!782 = distinct !DILocation(line: 648, column: 31, scope: !47)
!783 = !DILocation(line: 0, scope: !662, inlinedAt: !784)
!784 = distinct !DILocation(line: 649, column: 31, scope: !47)
!785 = !DILocation(line: 0, scope: !662, inlinedAt: !786)
!786 = distinct !DILocation(line: 650, column: 31, scope: !47)
!787 = !DILocation(line: 0, scope: !662, inlinedAt: !788)
!788 = distinct !DILocation(line: 651, column: 31, scope: !47)
!789 = !DILocation(line: 0, scope: !662, inlinedAt: !790)
!790 = distinct !DILocation(line: 652, column: 31, scope: !47)
!791 = !DILocation(line: 0, scope: !662, inlinedAt: !792)
!792 = distinct !DILocation(line: 653, column: 31, scope: !47)
!793 = !DILocation(line: 0, scope: !662, inlinedAt: !794)
!794 = distinct !DILocation(line: 654, column: 31, scope: !47)
!795 = !DILocation(line: 0, scope: !662, inlinedAt: !796)
!796 = distinct !DILocation(line: 655, column: 31, scope: !47)
!797 = !DILocation(line: 0, scope: !662, inlinedAt: !798)
!798 = distinct !DILocation(line: 656, column: 31, scope: !47)
!799 = !DILocation(line: 0, scope: !662, inlinedAt: !800)
!800 = distinct !DILocation(line: 657, column: 31, scope: !47)
!801 = !DILocation(line: 663, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !47, file: !48, line: 663, column: 7)
!803 = !DILocation(line: 664, column: 7, scope: !802)
!804 = !DILocation(line: 664, column: 10, scope: !802)
!805 = !DILocation(line: 663, column: 7, scope: !47)
!806 = !DILocation(line: 669, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !802, file: !48, line: 665, column: 5)
!808 = !DILocation(line: 671, column: 5, scope: !807)
!809 = !DILocation(line: 676, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !802, file: !48, line: 673, column: 5)
!811 = !DILocation(line: 679, column: 3, scope: !47)
!812 = !DILocation(line: 683, column: 3, scope: !47)
!813 = !DILocation(line: 686, column: 3, scope: !47)
!814 = !DILocation(line: 688, column: 3, scope: !47)
!815 = !DILocation(line: 691, column: 3, scope: !47)
!816 = !DILocation(line: 695, column: 3, scope: !47)
!817 = !DILocation(line: 696, column: 1, scope: !47)
!818 = !DISubprogram(name: "setlocale", scope: !819, file: !819, line: 122, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!819 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!820 = !DISubroutineType(types: !821)
!821 = !{!32, !35, !40}
!822 = !DISubprogram(name: "getenv", scope: !823, file: !823, line: 641, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!823 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!824 = !DISubroutineType(types: !825)
!825 = !{!32, !40}
!826 = !DISubprogram(name: "fwrite_unlocked", scope: !360, file: !360, line: 704, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!827 = !DISubroutineType(types: !828)
!828 = !{!37, !829, !37, !37, !709}
!829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!832 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 189, type: !833, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{!35, !35, !306}
!835 = !{!836, !837, !838, !839}
!836 = !DILocalVariable(name: "argc", arg: 1, scope: !832, file: !3, line: 189, type: !35)
!837 = !DILocalVariable(name: "argv", arg: 2, scope: !832, file: !3, line: 189, type: !306)
!838 = !DILocalVariable(name: "c", scope: !832, file: !3, line: 191, type: !35)
!839 = !DILocalVariable(name: "tab_stop", scope: !840, file: !3, line: 220, type: !844)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 219, column: 13)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 216, column: 15)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 205, column: 9)
!843 = distinct !DILexicalBlock(scope: !832, file: !3, line: 203, column: 5)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16, elements: !302)
!845 = !DILocation(line: 0, scope: !832)
!846 = !DILocation(line: 194, column: 21, scope: !832)
!847 = !DILocation(line: 194, column: 3, scope: !832)
!848 = !DILocation(line: 195, column: 3, scope: !832)
!849 = !DILocation(line: 196, column: 3, scope: !832)
!850 = !DILocation(line: 197, column: 3, scope: !832)
!851 = !DILocation(line: 199, column: 3, scope: !832)
!852 = !DILocation(line: 200, column: 23, scope: !832)
!853 = !{!854, !854, i64 0}
!854 = !{!"_Bool", !619, i64 0}
!855 = !DILocation(line: 202, column: 3, scope: !832)
!856 = !DILocation(line: 202, column: 15, scope: !832)
!857 = !DILocation(line: 207, column: 31, scope: !842)
!858 = !DILocation(line: 208, column: 11, scope: !842)
!859 = !DILocation(line: 211, column: 28, scope: !842)
!860 = !DILocation(line: 211, column: 11, scope: !842)
!861 = !DILocation(line: 212, column: 11, scope: !842)
!862 = !DILocation(line: 216, column: 15, scope: !841)
!863 = !DILocation(line: 216, column: 15, scope: !842)
!864 = !DILocation(line: 217, column: 37, scope: !841)
!865 = !DILocation(line: 217, column: 13, scope: !841)
!866 = distinct !{!866, !855, !867, !679}
!867 = !DILocation(line: 234, column: 5, scope: !832)
!868 = !DILocation(line: 220, column: 15, scope: !840)
!869 = !DILocation(line: 220, column: 20, scope: !840)
!870 = !DILocation(line: 221, column: 29, scope: !840)
!871 = !DILocation(line: 221, column: 27, scope: !840)
!872 = !DILocation(line: 222, column: 27, scope: !840)
!873 = !DILocation(line: 223, column: 15, scope: !840)
!874 = !DILocation(line: 224, column: 13, scope: !841)
!875 = !DILocation(line: 227, column: 9, scope: !842)
!876 = !DILocation(line: 229, column: 9, scope: !842)
!877 = !DILocation(line: 232, column: 11, scope: !842)
!878 = !DILocation(line: 236, column: 3, scope: !832)
!879 = !DILocation(line: 238, column: 18, scope: !832)
!880 = !DILocation(line: 238, column: 25, scope: !832)
!881 = !DILocation(line: 238, column: 3, scope: !832)
!882 = !DILocation(line: 105, column: 14, scope: !147, inlinedAt: !883)
!883 = distinct !DILocation(line: 240, column: 3, scope: !832)
!884 = !DILocation(line: 0, scope: !147, inlinedAt: !883)
!885 = !DILocation(line: 107, column: 8, scope: !886, inlinedAt: !883)
!886 = distinct !DILexicalBlock(scope: !147, file: !3, line: 107, column: 7)
!887 = !DILocation(line: 107, column: 7, scope: !147, inlinedAt: !883)
!888 = !DILocation(line: 114, column: 3, scope: !147, inlinedAt: !883)
!889 = !DILocation(line: 61, column: 13, scope: !890, inlinedAt: !899)
!890 = distinct !DISubprogram(name: "mbbuf_init", scope: !154, file: !154, line: 56, type: !891, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !893, !32, !160, !70}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!894 = !{!895, !896, !897, !898}
!895 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !890, file: !154, line: 56, type: !893)
!896 = !DILocalVariable(name: "buffer", arg: 2, scope: !890, file: !154, line: 56, type: !32)
!897 = !DILocalVariable(name: "size", arg: 3, scope: !890, file: !154, line: 56, type: !160)
!898 = !DILocalVariable(name: "fp", arg: 4, scope: !890, file: !154, line: 56, type: !70)
!899 = distinct !DILocation(line: 112, column: 3, scope: !147, inlinedAt: !883)
!900 = !DILocation(line: 0, scope: !166, inlinedAt: !883)
!901 = !DILocation(line: 130, column: 7, scope: !166, inlinedAt: !883)
!902 = !DILocation(line: 130, column: 13, scope: !166, inlinedAt: !883)
!903 = !{!904, !904, i64 0}
!904 = !{!"long", !619, i64 0}
!905 = !DILocation(line: 135, column: 7, scope: !166, inlinedAt: !883)
!906 = !DILocation(line: 137, column: 11, scope: !190, inlinedAt: !883)
!907 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !908, file: !154, line: 71, type: !893)
!908 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !154, file: !154, line: 71, type: !909, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!167, !893}
!911 = !{!907, !912, !913, !916}
!912 = !DILocalVariable(name: "available", scope: !908, file: !154, line: 73, type: !160)
!913 = !DILocalVariable(name: "start", scope: !914, file: !154, line: 77, type: !160)
!914 = distinct !DILexicalBlock(scope: !915, file: !154, line: 76, column: 5)
!915 = distinct !DILexicalBlock(scope: !908, file: !154, line: 75, column: 7)
!916 = !DILocalVariable(name: "g", scope: !908, file: !154, line: 92, type: !167)
!917 = !DILocation(line: 0, scope: !908, inlinedAt: !918)
!918 = distinct !DILocation(line: 137, column: 23, scope: !190, inlinedAt: !883)
!919 = !DILocation(line: 73, column: 35, scope: !908, inlinedAt: !918)
!920 = !DILocation(line: 75, column: 17, scope: !915, inlinedAt: !918)
!921 = !DILocation(line: 75, column: 32, scope: !915, inlinedAt: !918)
!922 = !DILocalVariable(name: "__stream", arg: 1, scope: !923, file: !924, line: 128, type: !70)
!923 = distinct !DISubprogram(name: "feof_unlocked", scope: !924, file: !924, line: 128, type: !925, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !927)
!924 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!925 = !DISubroutineType(types: !926)
!926 = !{!35, !70}
!927 = !{!922}
!928 = !DILocation(line: 0, scope: !923, inlinedAt: !929)
!929 = distinct !DILocation(line: 75, column: 37, scope: !915, inlinedAt: !918)
!930 = !DILocation(line: 130, column: 10, scope: !923, inlinedAt: !929)
!931 = !{!932, !713, i64 0}
!932 = !{!"_IO_FILE", !713, i64 0, !618, i64 8, !618, i64 16, !618, i64 24, !618, i64 32, !618, i64 40, !618, i64 48, !618, i64 56, !618, i64 64, !618, i64 72, !618, i64 80, !618, i64 88, !618, i64 96, !618, i64 104, !713, i64 112, !713, i64 116, !904, i64 120, !747, i64 128, !619, i64 130, !619, i64 131, !618, i64 136, !904, i64 144, !618, i64 152, !618, i64 160, !618, i64 168, !618, i64 176, !904, i64 184, !713, i64 192, !619, i64 196}
!933 = !DILocation(line: 75, column: 37, scope: !915, inlinedAt: !918)
!934 = !DILocation(line: 75, column: 7, scope: !908, inlinedAt: !918)
!935 = !DILocation(line: 78, column: 15, scope: !936, inlinedAt: !918)
!936 = distinct !DILexicalBlock(scope: !914, file: !154, line: 78, column: 11)
!937 = !DILocation(line: 78, column: 11, scope: !914, inlinedAt: !918)
!938 = !DILocation(line: 82, column: 49, scope: !939, inlinedAt: !918)
!939 = distinct !DILexicalBlock(scope: !936, file: !154, line: 81, column: 9)
!940 = !DILocalVariable(name: "__dest", arg: 1, scope: !941, file: !942, line: 34, type: !34)
!941 = distinct !DISubprogram(name: "memmove", scope: !942, file: !942, line: 34, type: !943, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!942 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!943 = !DISubroutineType(types: !944)
!944 = !{!34, !34, !830, !37}
!945 = !{!940, !946, !947}
!946 = !DILocalVariable(name: "__src", arg: 2, scope: !941, file: !942, line: 34, type: !830)
!947 = !DILocalVariable(name: "__len", arg: 3, scope: !941, file: !942, line: 34, type: !37)
!948 = !DILocation(line: 0, scope: !941, inlinedAt: !949)
!949 = distinct !DILocation(line: 82, column: 11, scope: !939, inlinedAt: !918)
!950 = !DILocation(line: 36, column: 10, scope: !941, inlinedAt: !949)
!951 = !DILocation(line: 0, scope: !914, inlinedAt: !918)
!952 = !DILocation(line: 0, scope: !936, inlinedAt: !918)
!953 = !DILocation(line: 85, column: 23, scope: !914, inlinedAt: !918)
!954 = !DILocation(line: 86, column: 41, scope: !914, inlinedAt: !918)
!955 = !DILocation(line: 89, column: 5, scope: !914, inlinedAt: !918)
!956 = !DILocation(line: 90, column: 17, scope: !957, inlinedAt: !918)
!957 = distinct !DILexicalBlock(scope: !908, file: !154, line: 90, column: 7)
!958 = !DILocation(line: 90, column: 7, scope: !908, inlinedAt: !918)
!959 = !DILocation(line: 92, column: 39, scope: !908, inlinedAt: !918)
!960 = !DILocalVariable(name: "p", arg: 1, scope: !961, file: !22, line: 230, type: !40)
!961 = distinct !DISubprogram(name: "mcel_scan", scope: !22, file: !22, line: 230, type: !962, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!167, !40, !40}
!964 = !{!960, !965, !966, !967, !978, !979}
!965 = !DILocalVariable(name: "lim", arg: 2, scope: !961, file: !22, line: 230, type: !40)
!966 = !DILocalVariable(name: "c", scope: !961, file: !22, line: 235, type: !33)
!967 = !DILocalVariable(name: "mbs", scope: !961, file: !22, line: 244, type: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !408, line: 6, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !410, line: 21, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 13, size: 64, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !970, file: !410, line: 15, baseType: !35, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !970, file: !410, line: 20, baseType: !974, size: 32, offset: 32)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !410, line: 16, size: 32, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !974, file: !410, line: 18, baseType: !7, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !974, file: !410, line: 19, baseType: !419, size: 32)
!978 = !DILocalVariable(name: "ch", scope: !961, file: !22, line: 267, type: !171)
!979 = !DILocalVariable(name: "len", scope: !961, file: !22, line: 268, type: !37)
!980 = !DILocation(line: 0, scope: !961, inlinedAt: !981)
!981 = distinct !DILocation(line: 92, column: 14, scope: !908, inlinedAt: !918)
!982 = !DILocation(line: 235, column: 12, scope: !961, inlinedAt: !981)
!983 = !DILocalVariable(name: "c", arg: 1, scope: !984, file: !22, line: 215, type: !33)
!984 = distinct !DISubprogram(name: "mcel_isbasic", scope: !22, file: !22, line: 215, type: !985, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!43, !33}
!987 = !{!983}
!988 = !DILocation(line: 0, scope: !984, inlinedAt: !989)
!989 = distinct !DILocation(line: 236, column: 7, scope: !990, inlinedAt: !981)
!990 = distinct !DILexicalBlock(scope: !961, file: !22, line: 236, column: 7)
!991 = !DILocation(line: 217, column: 10, scope: !984, inlinedAt: !989)
!992 = !DILocation(line: 236, column: 7, scope: !961, inlinedAt: !981)
!993 = !DILocalVariable(name: "len", arg: 2, scope: !994, file: !22, line: 167, type: !37)
!994 = distinct !DISubprogram(name: "mcel_ch", scope: !22, file: !22, line: 167, type: !995, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!167, !171, !37}
!997 = !{!998, !993}
!998 = !DILocalVariable(name: "ch", arg: 1, scope: !994, file: !22, line: 167, type: !171)
!999 = !DILocation(line: 0, scope: !994, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 237, column: 12, scope: !990, inlinedAt: !981)
!1001 = !DILocation(line: 172, column: 3, scope: !994, inlinedAt: !1000)
!1002 = !DILocation(line: 237, column: 5, scope: !990, inlinedAt: !981)
!1003 = !DILocation(line: 93, column: 39, scope: !908, inlinedAt: !918)
!1004 = !DILocation(line: 244, column: 3, scope: !961, inlinedAt: !981)
!1005 = !DILocation(line: 244, column: 13, scope: !961, inlinedAt: !981)
!1006 = !DILocation(line: 244, column: 30, scope: !961, inlinedAt: !981)
!1007 = !{!1008, !713, i64 0}
!1008 = !{!"", !713, i64 0, !619, i64 4}
!1009 = !DILocation(line: 267, column: 3, scope: !961, inlinedAt: !981)
!1010 = !DILocation(line: 268, column: 38, scope: !961, inlinedAt: !981)
!1011 = !DILocation(line: 268, column: 16, scope: !961, inlinedAt: !981)
!1012 = !DILocation(line: 274, column: 7, scope: !1013, inlinedAt: !981)
!1013 = distinct !DILexicalBlock(scope: !961, file: !22, line: 274, column: 7)
!1014 = !DILocation(line: 274, column: 7, scope: !961, inlinedAt: !981)
!1015 = !{!"branch_weights", i32 1, i32 2000}
!1016 = !DILocalVariable(name: "err", arg: 1, scope: !1017, file: !22, line: 175, type: !42)
!1017 = distinct !DISubprogram(name: "mcel_err", scope: !22, file: !22, line: 175, type: !1018, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!167, !42}
!1020 = !{!1016}
!1021 = !DILocation(line: 0, scope: !1017, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 275, column: 12, scope: !1013, inlinedAt: !981)
!1023 = !DILocation(line: 178, column: 3, scope: !1017, inlinedAt: !1022)
!1024 = !DILocation(line: 275, column: 5, scope: !1013, inlinedAt: !981)
!1025 = !DILocation(line: 279, column: 19, scope: !961, inlinedAt: !981)
!1026 = !DILocation(line: 0, scope: !994, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 279, column: 10, scope: !961, inlinedAt: !981)
!1028 = !DILocation(line: 169, column: 3, scope: !994, inlinedAt: !1027)
!1029 = !DILocation(line: 170, column: 3, scope: !994, inlinedAt: !1027)
!1030 = !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !1027)
!1031 = !DILocation(line: 172, column: 3, scope: !994, inlinedAt: !1027)
!1032 = !DILocation(line: 279, column: 3, scope: !961, inlinedAt: !981)
!1033 = !DILocation(line: 280, column: 1, scope: !961, inlinedAt: !981)
!1034 = !DILocation(line: 94, column: 9, scope: !1035, inlinedAt: !918)
!1035 = distinct !DILexicalBlock(scope: !908, file: !154, line: 94, column: 7)
!1036 = !DILocation(line: 94, column: 7, scope: !908, inlinedAt: !918)
!1037 = !DILocation(line: 92, column: 14, scope: !908, inlinedAt: !918)
!1038 = !DILocation(line: 95, column: 22, scope: !1035, inlinedAt: !918)
!1039 = !DILocation(line: 95, column: 5, scope: !1035, inlinedAt: !918)
!1040 = !DILocation(line: 99, column: 30, scope: !1041, inlinedAt: !918)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !154, line: 97, column: 5)
!1042 = !DILocation(line: 99, column: 14, scope: !1041, inlinedAt: !918)
!1043 = !DILocation(line: 0, scope: !1035, inlinedAt: !918)
!1044 = !DILocation(line: 137, column: 23, scope: !190, inlinedAt: !883)
!1045 = !DILocation(line: 137, column: 51, scope: !190, inlinedAt: !883)
!1046 = !DILocation(line: 138, column: 18, scope: !190, inlinedAt: !883)
!1047 = !DILocation(line: 138, column: 27, scope: !190, inlinedAt: !883)
!1048 = distinct !{!1048, !906, !1049, !679}
!1049 = !DILocation(line: 139, column: 60, scope: !190, inlinedAt: !883)
!1050 = !DILocation(line: 141, column: 15, scope: !190, inlinedAt: !883)
!1051 = !DILocation(line: 143, column: 26, scope: !188, inlinedAt: !883)
!1052 = !{i8 0, i8 2}
!1053 = !DILocation(line: 143, column: 46, scope: !188, inlinedAt: !883)
!1054 = !DILocalVariable(name: "wc", arg: 1, scope: !1055, file: !48, line: 178, type: !171)
!1055 = distinct !DISubprogram(name: "c32issep", scope: !48, file: !48, line: 178, type: !1056, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!43, !171}
!1058 = !{!1054}
!1059 = !DILocation(line: 0, scope: !1055, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 143, column: 49, scope: !188, inlinedAt: !883)
!1061 = !DILocalVariable(name: "wc", arg: 1, scope: !1062, file: !1063, line: 770, type: !1066)
!1062 = distinct !DISubprogram(name: "c32isblank", scope: !1063, file: !1063, line: 770, type: !1064, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1063 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!35, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1067, line: 20, baseType: !7)
!1067 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1068 = !{!1061}
!1069 = !DILocation(line: 0, scope: !1062, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 181, column: 13, scope: !1055, inlinedAt: !1060)
!1071 = !DILocation(line: 776, column: 10, scope: !1062, inlinedAt: !1070)
!1072 = !DILocation(line: 181, column: 11, scope: !1055, inlinedAt: !1060)
!1073 = !DILocation(line: 145, column: 19, scope: !188, inlinedAt: !883)
!1074 = !DILocation(line: 148, column: 19, scope: !186, inlinedAt: !883)
!1075 = !DILocation(line: 0, scope: !186, inlinedAt: !883)
!1076 = !DILocation(line: 150, column: 23, scope: !186, inlinedAt: !883)
!1077 = !DILocation(line: 152, column: 26, scope: !186, inlinedAt: !883)
!1078 = !DILocation(line: 152, column: 35, scope: !186, inlinedAt: !883)
!1079 = !DILocation(line: 152, column: 19, scope: !186, inlinedAt: !883)
!1080 = !DILocalVariable(name: "__c", arg: 1, scope: !1081, file: !924, line: 108, type: !35)
!1081 = distinct !DISubprogram(name: "putchar_unlocked", scope: !924, file: !924, line: 108, type: !1082, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!35, !35}
!1084 = !{!1080}
!1085 = !DILocation(line: 0, scope: !1081, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 153, column: 25, scope: !1087, inlinedAt: !883)
!1087 = distinct !DILexicalBlock(scope: !186, file: !3, line: 153, column: 25)
!1088 = !DILocation(line: 110, column: 10, scope: !1081, inlinedAt: !1086)
!1089 = !{!932, !618, i64 40}
!1090 = !{!932, !618, i64 48}
!1091 = !{!"branch_weights", i32 2000, i32 1}
!1092 = !DILocation(line: 153, column: 25, scope: !186, inlinedAt: !883)
!1093 = !DILocation(line: 153, column: 39, scope: !1087, inlinedAt: !883)
!1094 = !DILocation(line: 948, column: 21, scope: !1095, inlinedAt: !1098)
!1095 = distinct !DISubprogram(name: "write_error", scope: !48, file: !48, line: 946, type: !148, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1096 = !{!1097}
!1097 = !DILocalVariable(name: "saved_errno", scope: !1095, file: !48, line: 948, type: !35)
!1098 = distinct !DILocation(line: 154, column: 23, scope: !1087, inlinedAt: !883)
!1099 = !DILocation(line: 0, scope: !1095, inlinedAt: !1098)
!1100 = !DILocation(line: 949, column: 3, scope: !1095, inlinedAt: !1098)
!1101 = !DILocation(line: 950, column: 11, scope: !1095, inlinedAt: !1098)
!1102 = !DILocation(line: 950, column: 3, scope: !1095, inlinedAt: !1098)
!1103 = !DILocation(line: 951, column: 3, scope: !1095, inlinedAt: !1098)
!1104 = !DILocation(line: 952, column: 3, scope: !1095, inlinedAt: !1098)
!1105 = distinct !{!1105, !1079, !1106, !679}
!1106 = !DILocation(line: 154, column: 36, scope: !186, inlinedAt: !883)
!1107 = !DILocation(line: 0, scope: !1081, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 156, column: 23, scope: !1109, inlinedAt: !883)
!1109 = distinct !DILexicalBlock(scope: !186, file: !3, line: 156, column: 23)
!1110 = !DILocation(line: 110, column: 10, scope: !1081, inlinedAt: !1108)
!1111 = !DILocation(line: 156, column: 23, scope: !186, inlinedAt: !883)
!1112 = !DILocation(line: 156, column: 37, scope: !1109, inlinedAt: !883)
!1113 = !DILocation(line: 948, column: 21, scope: !1095, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 157, column: 21, scope: !1109, inlinedAt: !883)
!1115 = !DILocation(line: 0, scope: !1095, inlinedAt: !1114)
!1116 = !DILocation(line: 949, column: 3, scope: !1095, inlinedAt: !1114)
!1117 = !DILocation(line: 950, column: 11, scope: !1095, inlinedAt: !1114)
!1118 = !DILocation(line: 950, column: 3, scope: !1095, inlinedAt: !1114)
!1119 = !DILocation(line: 951, column: 3, scope: !1095, inlinedAt: !1114)
!1120 = !DILocation(line: 952, column: 3, scope: !1095, inlinedAt: !1114)
!1121 = !DILocation(line: 160, column: 17, scope: !187, inlinedAt: !883)
!1122 = !DILocation(line: 165, column: 30, scope: !1123, inlinedAt: !883)
!1123 = distinct !DILexicalBlock(scope: !194, file: !3, line: 162, column: 17)
!1124 = !DILocation(line: 165, column: 26, scope: !1123, inlinedAt: !883)
!1125 = !DILocation(line: 166, column: 34, scope: !1123, inlinedAt: !883)
!1126 = !DILocation(line: 166, column: 33, scope: !1123, inlinedAt: !883)
!1127 = !DILocation(line: 166, column: 29, scope: !1123, inlinedAt: !883)
!1128 = !DILocation(line: 167, column: 17, scope: !1123, inlinedAt: !883)
!1129 = !DILocalVariable(name: "wc", arg: 1, scope: !1130, file: !1063, line: 1004, type: !171)
!1130 = distinct !DISubprogram(name: "c32width", scope: !1063, file: !1063, line: 1004, type: !1131, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!35, !171}
!1133 = !{!1129}
!1134 = !DILocation(line: 0, scope: !1130, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 170, column: 31, scope: !193, inlinedAt: !883)
!1136 = !DILocation(line: 1010, column: 10, scope: !1130, inlinedAt: !1135)
!1137 = !DILocation(line: 0, scope: !193, inlinedAt: !883)
!1138 = !DILocation(line: 171, column: 23, scope: !1139, inlinedAt: !883)
!1139 = distinct !DILexicalBlock(scope: !193, file: !3, line: 171, column: 23)
!1140 = !DILocation(line: 171, column: 23, scope: !193, inlinedAt: !883)
!1141 = !DILocation(line: 172, column: 21, scope: !1139, inlinedAt: !883)
!1142 = !DILocation(line: 177, column: 15, scope: !190, inlinedAt: !883)
!1143 = !DILocation(line: 180, column: 11, scope: !190, inlinedAt: !883)
!1144 = !DILocation(line: 0, scope: !190, inlinedAt: !883)
!1145 = !DILocalVariable(name: "g", arg: 2, scope: !1146, file: !154, line: 107, type: !167)
!1146 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !154, file: !154, line: 107, type: !1147, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1149)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!32, !893, !167}
!1149 = !{!1150, !1145}
!1150 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1146, file: !154, line: 107, type: !893)
!1151 = !DILocation(line: 0, scope: !1146, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 180, column: 11, scope: !190, inlinedAt: !883)
!1153 = !DILocation(line: 111, column: 41, scope: !1146, inlinedAt: !1152)
!1154 = !DILocation(line: 111, column: 24, scope: !1146, inlinedAt: !1152)
!1155 = !DILocation(line: 181, column: 15, scope: !1156, inlinedAt: !883)
!1156 = distinct !DILexicalBlock(scope: !190, file: !3, line: 181, column: 15)
!1157 = !DILocalVariable(name: "__stream", arg: 1, scope: !1158, file: !924, line: 135, type: !70)
!1158 = distinct !DISubprogram(name: "ferror_unlocked", scope: !924, file: !924, line: 135, type: !925, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1159 = !{!1157}
!1160 = !DILocation(line: 0, scope: !1158, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 181, column: 15, scope: !1156, inlinedAt: !883)
!1162 = !DILocation(line: 137, column: 10, scope: !1158, inlinedAt: !1161)
!1163 = !DILocation(line: 181, column: 15, scope: !190, inlinedAt: !883)
!1164 = !DILocation(line: 948, column: 21, scope: !1095, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 182, column: 13, scope: !1156, inlinedAt: !883)
!1166 = !DILocation(line: 0, scope: !1095, inlinedAt: !1165)
!1167 = !DILocation(line: 949, column: 3, scope: !1095, inlinedAt: !1165)
!1168 = !DILocation(line: 950, column: 11, scope: !1095, inlinedAt: !1165)
!1169 = !DILocation(line: 950, column: 3, scope: !1095, inlinedAt: !1165)
!1170 = !DILocation(line: 951, column: 3, scope: !1095, inlinedAt: !1165)
!1171 = !DILocation(line: 952, column: 3, scope: !1095, inlinedAt: !1165)
!1172 = !DILocation(line: 0, scope: !187, inlinedAt: !883)
!1173 = !DILocation(line: 184, column: 19, scope: !166, inlinedAt: !883)
!1174 = !DILocation(line: 183, column: 9, scope: !190, inlinedAt: !883)
!1175 = distinct !{!1175, !905, !1176, !679}
!1176 = !DILocation(line: 184, column: 26, scope: !166, inlinedAt: !883)
!1177 = !DILocation(line: 185, column: 5, scope: !147, inlinedAt: !883)
!1178 = distinct !{!1178, !888, !1177}
!1179 = !DILocation(line: 242, column: 3, scope: !832)
!1180 = !DILocation(line: 244, column: 10, scope: !832)
!1181 = !DILocation(line: 244, column: 3, scope: !832)
!1182 = !DISubprogram(name: "bindtextdomain", scope: !702, file: !702, line: 86, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!32, !40, !40}
!1185 = !DISubprogram(name: "textdomain", scope: !702, file: !702, line: 82, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1186 = !DISubprogram(name: "atexit", scope: !823, file: !823, line: 602, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!35, !386}
!1189 = !DISubprogram(name: "getopt_long", scope: !136, file: !136, line: 66, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!35, !35, !1192, !40, !1194, !141}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1195 = !DISubprogram(name: "mbrtoc32", scope: !172, file: !172, line: 57, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!37, !1198, !708, !37, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!1202 = !DISubprogram(name: "iswblank", scope: !1203, file: !1203, line: 146, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1203 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1204 = !DISubprogram(name: "fflush_unlocked", scope: !360, file: !360, line: 239, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1205 = !DISubprogram(name: "clearerr_unlocked", scope: !360, file: !360, line: 794, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !70}
!1208 = !DISubprogram(name: "wcwidth", scope: !1209, file: !1209, line: 368, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1209 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!35, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !38, line: 74, baseType: !7)
!1213 = distinct !DISubprogram(name: "add_tab_stop", scope: !208, file: !208, line: 84, type: !1214, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !179}
!1216 = !{!1217, !1218, !1219}
!1217 = !DILocalVariable(name: "tabval", arg: 1, scope: !1213, file: !208, line: 84, type: !179)
!1218 = !DILocalVariable(name: "prev_column", scope: !1213, file: !208, line: 86, type: !179)
!1219 = !DILocalVariable(name: "column_width", scope: !1213, file: !208, line: 87, type: !179)
!1220 = !DILocation(line: 0, scope: !1213)
!1221 = !DILocation(line: 86, column: 23, scope: !1213)
!1222 = !DILocation(line: 86, column: 40, scope: !1213)
!1223 = !DILocation(line: 86, column: 64, scope: !1213)
!1224 = !DILocation(line: 89, column: 25, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1213, file: !208, line: 89, column: 7)
!1226 = !DILocation(line: 89, column: 22, scope: !1225)
!1227 = !DILocation(line: 89, column: 7, scope: !1213)
!1228 = !DILocation(line: 91, column: 3, scope: !1213)
!1229 = !DILocation(line: 90, column: 25, scope: !1225)
!1230 = !DILocation(line: 90, column: 16, scope: !1225)
!1231 = !DILocation(line: 90, column: 14, scope: !1225)
!1232 = !DILocation(line: 90, column: 5, scope: !1225)
!1233 = !DILocation(line: 91, column: 26, scope: !1213)
!1234 = !DILocation(line: 87, column: 36, scope: !1213)
!1235 = !DILocation(line: 87, column: 24, scope: !1213)
!1236 = !DILocation(line: 91, column: 30, scope: !1213)
!1237 = !DILocalVariable(name: "width", arg: 1, scope: !1238, file: !208, line: 73, type: !179)
!1238 = distinct !DISubprogram(name: "set_max_column_width", scope: !208, file: !208, line: 73, type: !1214, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1239)
!1239 = !{!1237}
!1240 = !DILocation(line: 0, scope: !1238, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 93, column: 3, scope: !1213)
!1242 = !DILocation(line: 75, column: 7, scope: !1243, inlinedAt: !1241)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !208, line: 75, column: 7)
!1244 = !DILocation(line: 75, column: 24, scope: !1243, inlinedAt: !1241)
!1245 = !DILocation(line: 75, column: 7, scope: !1238, inlinedAt: !1241)
!1246 = !DILocation(line: 77, column: 11, scope: !1247, inlinedAt: !1241)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !208, line: 77, column: 11)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !208, line: 76, column: 5)
!1249 = !DILocation(line: 77, column: 11, scope: !1248, inlinedAt: !1241)
!1250 = !DILocation(line: 94, column: 1, scope: !1213)
!1251 = distinct !DISubprogram(name: "parse_tab_stops", scope: !208, file: !208, line: 137, type: !638, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1271}
!1253 = !DILocalVariable(name: "stops", arg: 1, scope: !1251, file: !208, line: 137, type: !40)
!1254 = !DILocalVariable(name: "have_tabval", scope: !1251, file: !208, line: 139, type: !43)
!1255 = !DILocalVariable(name: "tabval", scope: !1251, file: !208, line: 140, type: !179)
!1256 = !DILocalVariable(name: "extend_tabval", scope: !1251, file: !208, line: 141, type: !43)
!1257 = !DILocalVariable(name: "increment_tabval", scope: !1251, file: !208, line: 142, type: !43)
!1258 = !DILocalVariable(name: "num_start", scope: !1251, file: !208, line: 143, type: !40)
!1259 = !DILocalVariable(name: "ok", scope: !1251, file: !208, line: 144, type: !43)
!1260 = !DILocalVariable(name: "len", scope: !1261, file: !208, line: 207, type: !160)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !208, line: 206, column: 13)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !208, line: 205, column: 15)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !208, line: 196, column: 9)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !208, line: 195, column: 16)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !208, line: 184, column: 16)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !208, line: 173, column: 16)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !208, line: 148, column: 11)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !208, line: 147, column: 5)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !208, line: 146, column: 3)
!1270 = distinct !DILexicalBlock(scope: !1251, file: !208, line: 146, column: 3)
!1271 = !DILocalVariable(name: "bad_num", scope: !1261, file: !208, line: 208, type: !32)
!1272 = !DILocation(line: 0, scope: !1251)
!1273 = !DILocation(line: 146, column: 3, scope: !1251)
!1274 = !DILocation(line: 140, column: 9, scope: !1251)
!1275 = !DILocation(line: 143, column: 15, scope: !1251)
!1276 = !DILocation(line: 146, column: 10, scope: !1269)
!1277 = !DILocation(line: 146, column: 3, scope: !1270)
!1278 = !DILocation(line: 148, column: 28, scope: !1267)
!1279 = !DILocation(line: 148, column: 11, scope: !1268)
!1280 = !DILocation(line: 150, column: 15, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1267, file: !208, line: 149, column: 9)
!1282 = !DILocation(line: 152, column: 19, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !208, line: 151, column: 13)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !208, line: 150, column: 15)
!1285 = !DILocalVariable(name: "tabval", arg: 1, scope: !1286, file: !208, line: 97, type: !179)
!1286 = distinct !DISubprogram(name: "set_extend_size", scope: !208, file: !208, line: 97, type: !1287, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!43, !179}
!1289 = !{!1285, !1290}
!1290 = !DILocalVariable(name: "ok", scope: !1286, file: !208, line: 99, type: !43)
!1291 = !DILocation(line: 0, scope: !1286, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 154, column: 25, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !208, line: 154, column: 23)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !208, line: 153, column: 17)
!1295 = distinct !DILexicalBlock(scope: !1283, file: !208, line: 152, column: 19)
!1296 = !DILocation(line: 101, column: 7, scope: !1297, inlinedAt: !1292)
!1297 = distinct !DILexicalBlock(scope: !1286, file: !208, line: 101, column: 7)
!1298 = !DILocation(line: 101, column: 7, scope: !1286, inlinedAt: !1292)
!1299 = !DILocation(line: 103, column: 7, scope: !1300, inlinedAt: !1292)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !208, line: 102, column: 5)
!1301 = !DILocation(line: 107, column: 5, scope: !1300, inlinedAt: !1292)
!1302 = !DILocation(line: 108, column: 15, scope: !1286, inlinedAt: !1292)
!1303 = !DILocation(line: 0, scope: !1238, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 110, column: 3, scope: !1286, inlinedAt: !1292)
!1305 = !DILocation(line: 75, column: 7, scope: !1243, inlinedAt: !1304)
!1306 = !DILocation(line: 75, column: 24, scope: !1243, inlinedAt: !1304)
!1307 = !DILocation(line: 75, column: 7, scope: !1238, inlinedAt: !1304)
!1308 = !DILocation(line: 77, column: 11, scope: !1247, inlinedAt: !1304)
!1309 = !DILocation(line: 77, column: 11, scope: !1248, inlinedAt: !1304)
!1310 = !DILocation(line: 154, column: 23, scope: !1294)
!1311 = !DILocation(line: 160, column: 24, scope: !1295)
!1312 = !DILocalVariable(name: "tabval", arg: 1, scope: !1313, file: !208, line: 116, type: !179)
!1313 = distinct !DISubprogram(name: "set_increment_size", scope: !208, file: !208, line: 116, type: !1287, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1314)
!1314 = !{!1312, !1315}
!1315 = !DILocalVariable(name: "ok", scope: !1313, file: !208, line: 118, type: !43)
!1316 = !DILocation(line: 0, scope: !1313, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 162, column: 25, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !208, line: 162, column: 23)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !208, line: 161, column: 17)
!1320 = distinct !DILexicalBlock(scope: !1295, file: !208, line: 160, column: 24)
!1321 = !DILocation(line: 120, column: 7, scope: !1322, inlinedAt: !1317)
!1322 = distinct !DILexicalBlock(scope: !1313, file: !208, line: 120, column: 7)
!1323 = !DILocation(line: 120, column: 7, scope: !1313, inlinedAt: !1317)
!1324 = !DILocation(line: 122, column: 7, scope: !1325, inlinedAt: !1317)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !208, line: 121, column: 5)
!1326 = !DILocation(line: 126, column: 5, scope: !1325, inlinedAt: !1317)
!1327 = !DILocation(line: 127, column: 18, scope: !1313, inlinedAt: !1317)
!1328 = !DILocation(line: 0, scope: !1238, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 129, column: 3, scope: !1313, inlinedAt: !1317)
!1330 = !DILocation(line: 75, column: 7, scope: !1243, inlinedAt: !1329)
!1331 = !DILocation(line: 75, column: 24, scope: !1243, inlinedAt: !1329)
!1332 = !DILocation(line: 75, column: 7, scope: !1238, inlinedAt: !1329)
!1333 = !DILocation(line: 77, column: 11, scope: !1247, inlinedAt: !1329)
!1334 = !DILocation(line: 77, column: 11, scope: !1248, inlinedAt: !1329)
!1335 = !DILocation(line: 162, column: 23, scope: !1319)
!1336 = !DILocation(line: 0, scope: !1213, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 169, column: 17, scope: !1320)
!1338 = !DILocation(line: 86, column: 23, scope: !1213, inlinedAt: !1337)
!1339 = !DILocation(line: 86, column: 40, scope: !1213, inlinedAt: !1337)
!1340 = !DILocation(line: 86, column: 64, scope: !1213, inlinedAt: !1337)
!1341 = !DILocation(line: 89, column: 25, scope: !1225, inlinedAt: !1337)
!1342 = !DILocation(line: 89, column: 22, scope: !1225, inlinedAt: !1337)
!1343 = !DILocation(line: 89, column: 7, scope: !1213, inlinedAt: !1337)
!1344 = !DILocation(line: 91, column: 3, scope: !1213, inlinedAt: !1337)
!1345 = !DILocation(line: 90, column: 25, scope: !1225, inlinedAt: !1337)
!1346 = !DILocation(line: 90, column: 16, scope: !1225, inlinedAt: !1337)
!1347 = !DILocation(line: 90, column: 14, scope: !1225, inlinedAt: !1337)
!1348 = !DILocation(line: 90, column: 5, scope: !1225, inlinedAt: !1337)
!1349 = !DILocation(line: 91, column: 26, scope: !1213, inlinedAt: !1337)
!1350 = !DILocation(line: 87, column: 36, scope: !1213, inlinedAt: !1337)
!1351 = !DILocation(line: 87, column: 24, scope: !1213, inlinedAt: !1337)
!1352 = !DILocation(line: 91, column: 30, scope: !1213, inlinedAt: !1337)
!1353 = !DILocation(line: 0, scope: !1238, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 93, column: 3, scope: !1213, inlinedAt: !1337)
!1355 = !DILocation(line: 75, column: 7, scope: !1243, inlinedAt: !1354)
!1356 = !DILocation(line: 75, column: 24, scope: !1243, inlinedAt: !1354)
!1357 = !DILocation(line: 75, column: 7, scope: !1238, inlinedAt: !1354)
!1358 = !DILocation(line: 77, column: 11, scope: !1247, inlinedAt: !1354)
!1359 = !DILocation(line: 77, column: 11, scope: !1248, inlinedAt: !1354)
!1360 = !DILocation(line: 173, column: 16, scope: !1267)
!1361 = !DILocation(line: 175, column: 15, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1266, file: !208, line: 174, column: 9)
!1363 = !DILocation(line: 177, column: 15, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !208, line: 176, column: 13)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !208, line: 175, column: 15)
!1366 = !DILocation(line: 180, column: 13, scope: !1364)
!1367 = !DILocation(line: 186, column: 15, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1265, file: !208, line: 185, column: 9)
!1369 = !DILocation(line: 188, column: 15, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !208, line: 187, column: 13)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !208, line: 186, column: 15)
!1372 = !DILocation(line: 191, column: 13, scope: !1370)
!1373 = !DILocation(line: 173, column: 16, scope: !1266)
!1374 = !DILocalVariable(name: "c", arg: 1, scope: !1375, file: !1376, line: 233, type: !35)
!1375 = distinct !DISubprogram(name: "c_isdigit", scope: !1376, file: !1376, line: 233, type: !1377, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1379)
!1376 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!43, !35}
!1379 = !{!1374}
!1380 = !DILocation(line: 0, scope: !1375, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 195, column: 16, scope: !1264)
!1382 = !DILocation(line: 235, column: 3, scope: !1375, inlinedAt: !1381)
!1383 = !DILocation(line: 195, column: 16, scope: !1265)
!1384 = !DILocation(line: 197, column: 15, scope: !1263)
!1385 = !DILocation(line: 205, column: 16, scope: !1262)
!1386 = !DILocation(line: 205, column: 15, scope: !1263)
!1387 = !DILocation(line: 207, column: 27, scope: !1261)
!1388 = !DILocation(line: 0, scope: !1261)
!1389 = !DILocation(line: 208, column: 31, scope: !1261)
!1390 = !DILocation(line: 209, column: 15, scope: !1261)
!1391 = !DILocation(line: 210, column: 15, scope: !1261)
!1392 = !DILocation(line: 212, column: 33, scope: !1261)
!1393 = !DILocation(line: 212, column: 39, scope: !1261)
!1394 = !DILocation(line: 213, column: 13, scope: !1261)
!1395 = !DILocation(line: 217, column: 11, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1264, file: !208, line: 216, column: 9)
!1397 = !DILocation(line: 220, column: 11, scope: !1396)
!1398 = !DILocation(line: 146, column: 23, scope: !1269)
!1399 = !DILocation(line: 146, column: 3, scope: !1269)
!1400 = distinct !{!1400, !1277, !1401, !679}
!1401 = !DILocation(line: 222, column: 5, scope: !1270)
!1402 = !DILocation(line: 224, column: 10, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1251, file: !208, line: 224, column: 7)
!1404 = !DILocation(line: 226, column: 11, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1403, file: !208, line: 225, column: 5)
!1406 = !DILocation(line: 0, scope: !1286, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 227, column: 15, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !208, line: 226, column: 11)
!1409 = !DILocation(line: 101, column: 7, scope: !1297, inlinedAt: !1407)
!1410 = !DILocation(line: 101, column: 7, scope: !1286, inlinedAt: !1407)
!1411 = !DILocation(line: 108, column: 15, scope: !1286, inlinedAt: !1407)
!1412 = !DILocation(line: 0, scope: !1238, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 110, column: 3, scope: !1286, inlinedAt: !1407)
!1414 = !DILocation(line: 75, column: 7, scope: !1243, inlinedAt: !1413)
!1415 = !DILocation(line: 75, column: 24, scope: !1243, inlinedAt: !1413)
!1416 = !DILocation(line: 75, column: 7, scope: !1238, inlinedAt: !1413)
!1417 = !DILocation(line: 103, column: 7, scope: !1300, inlinedAt: !1407)
!1418 = !DILocation(line: 77, column: 11, scope: !1247, inlinedAt: !1413)
!1419 = !DILocation(line: 234, column: 7, scope: !1251)
!1420 = !DILocation(line: 228, column: 16, scope: !1408)
!1421 = !DILocation(line: 0, scope: !1313, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 229, column: 15, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1408, file: !208, line: 228, column: 16)
!1424 = !DILocation(line: 120, column: 7, scope: !1322, inlinedAt: !1422)
!1425 = !DILocation(line: 120, column: 7, scope: !1313, inlinedAt: !1422)
!1426 = !DILocation(line: 127, column: 18, scope: !1313, inlinedAt: !1422)
!1427 = !DILocation(line: 0, scope: !1238, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 129, column: 3, scope: !1313, inlinedAt: !1422)
!1429 = !DILocation(line: 75, column: 7, scope: !1243, inlinedAt: !1428)
!1430 = !DILocation(line: 75, column: 24, scope: !1243, inlinedAt: !1428)
!1431 = !DILocation(line: 75, column: 7, scope: !1238, inlinedAt: !1428)
!1432 = !DILocation(line: 122, column: 7, scope: !1325, inlinedAt: !1422)
!1433 = !DILocation(line: 77, column: 11, scope: !1247, inlinedAt: !1428)
!1434 = !DILocation(line: 0, scope: !1213, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 231, column: 9, scope: !1423)
!1436 = !DILocation(line: 86, column: 23, scope: !1213, inlinedAt: !1435)
!1437 = !DILocation(line: 86, column: 40, scope: !1213, inlinedAt: !1435)
!1438 = !DILocation(line: 86, column: 64, scope: !1213, inlinedAt: !1435)
!1439 = !DILocation(line: 89, column: 25, scope: !1225, inlinedAt: !1435)
!1440 = !DILocation(line: 89, column: 22, scope: !1225, inlinedAt: !1435)
!1441 = !DILocation(line: 89, column: 7, scope: !1213, inlinedAt: !1435)
!1442 = !DILocation(line: 91, column: 3, scope: !1213, inlinedAt: !1435)
!1443 = !DILocation(line: 90, column: 25, scope: !1225, inlinedAt: !1435)
!1444 = !DILocation(line: 90, column: 16, scope: !1225, inlinedAt: !1435)
!1445 = !DILocation(line: 90, column: 14, scope: !1225, inlinedAt: !1435)
!1446 = !DILocation(line: 90, column: 5, scope: !1225, inlinedAt: !1435)
!1447 = !DILocation(line: 91, column: 26, scope: !1213, inlinedAt: !1435)
!1448 = !DILocation(line: 87, column: 36, scope: !1213, inlinedAt: !1435)
!1449 = !DILocation(line: 87, column: 24, scope: !1213, inlinedAt: !1435)
!1450 = !DILocation(line: 91, column: 30, scope: !1213, inlinedAt: !1435)
!1451 = !DILocation(line: 0, scope: !1238, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 93, column: 3, scope: !1213, inlinedAt: !1435)
!1453 = !DILocation(line: 75, column: 7, scope: !1243, inlinedAt: !1452)
!1454 = !DILocation(line: 75, column: 24, scope: !1243, inlinedAt: !1452)
!1455 = !DILocation(line: 75, column: 7, scope: !1238, inlinedAt: !1452)
!1456 = !DILocation(line: 235, column: 5, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1251, file: !208, line: 234, column: 7)
!1458 = !DILocation(line: 0, scope: !1408)
!1459 = !DILocation(line: 236, column: 1, scope: !1251)
!1460 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !208, file: !208, line: 268, type: !148, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !626)
!1461 = !DILocation(line: 270, column: 23, scope: !1460)
!1462 = !DILocation(line: 270, column: 33, scope: !1460)
!1463 = !DILocalVariable(name: "tabs", arg: 1, scope: !1464, file: !208, line: 242, type: !1467)
!1464 = distinct !DISubprogram(name: "validate_tab_stops", scope: !208, file: !208, line: 242, type: !1465, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1469)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !1467, !160}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1469 = !{!1463, !1470, !1471, !1472}
!1470 = !DILocalVariable(name: "entries", arg: 2, scope: !1464, file: !208, line: 242, type: !160)
!1471 = !DILocalVariable(name: "prev_tab", scope: !1464, file: !208, line: 244, type: !179)
!1472 = !DILocalVariable(name: "i", scope: !1473, file: !208, line: 246, type: !160)
!1473 = distinct !DILexicalBlock(scope: !1464, file: !208, line: 246, column: 3)
!1474 = !DILocation(line: 0, scope: !1464, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 270, column: 3, scope: !1460)
!1476 = !DILocation(line: 0, scope: !1473, inlinedAt: !1475)
!1477 = !DILocation(line: 246, column: 23, scope: !1478, inlinedAt: !1475)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !208, line: 246, column: 3)
!1479 = !DILocation(line: 246, column: 3, scope: !1473, inlinedAt: !1475)
!1480 = distinct !{!1480, !1479, !1481, !679}
!1481 = !DILocation(line: 253, column: 5, scope: !1473, inlinedAt: !1475)
!1482 = !DILocation(line: 255, column: 7, scope: !1483, inlinedAt: !1475)
!1483 = distinct !DILexicalBlock(scope: !1464, file: !208, line: 255, column: 7)
!1484 = !DILocation(line: 255, column: 22, scope: !1483, inlinedAt: !1475)
!1485 = !DILocation(line: 248, column: 11, scope: !1486, inlinedAt: !1475)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !208, line: 248, column: 11)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !208, line: 247, column: 5)
!1488 = !DILocation(line: 248, column: 19, scope: !1486, inlinedAt: !1475)
!1489 = !DILocation(line: 248, column: 11, scope: !1487, inlinedAt: !1475)
!1490 = !DILocation(line: 249, column: 9, scope: !1486, inlinedAt: !1475)
!1491 = !DILocation(line: 250, column: 19, scope: !1492, inlinedAt: !1475)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !208, line: 250, column: 11)
!1493 = !DILocation(line: 246, column: 35, scope: !1478, inlinedAt: !1475)
!1494 = !DILocation(line: 250, column: 11, scope: !1487, inlinedAt: !1475)
!1495 = !DILocation(line: 251, column: 9, scope: !1492, inlinedAt: !1475)
!1496 = !DILocation(line: 256, column: 5, scope: !1483, inlinedAt: !1475)
!1497 = !DILocation(line: 272, column: 22, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1460, file: !208, line: 272, column: 7)
!1499 = !DILocation(line: 272, column: 7, scope: !1460)
!1500 = !DILocation(line: 273, column: 35, scope: !1498)
!1501 = !DILocation(line: 273, column: 33, scope: !1498)
!1502 = !DILocation(line: 273, column: 5, scope: !1498)
!1503 = !DILocation(line: 276, column: 27, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1498, file: !208, line: 276, column: 12)
!1505 = !DILocation(line: 276, column: 32, scope: !1504)
!1506 = !DILocation(line: 277, column: 16, scope: !1504)
!1507 = !DILocation(line: 277, column: 5, scope: !1504)
!1508 = !DILocation(line: 0, scope: !1498)
!1509 = !DILocation(line: 280, column: 1, scope: !1460)
!1510 = distinct !DISubprogram(name: "get_next_tab_column", scope: !208, file: !208, line: 288, type: !1511, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1514)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!179, !179, !567, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1525, !1529}
!1515 = !DILocalVariable(name: "column", arg: 1, scope: !1510, file: !208, line: 288, type: !179)
!1516 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1510, file: !208, line: 288, type: !567)
!1517 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1510, file: !208, line: 288, type: !1513)
!1518 = !DILocalVariable(name: "tab_distance", scope: !1510, file: !208, line: 291, type: !179)
!1519 = !DILocalVariable(name: "tab", scope: !1520, file: !208, line: 302, type: !179)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !208, line: 301, column: 9)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !208, line: 300, column: 7)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !208, line: 300, column: 7)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !208, line: 297, column: 5)
!1524 = distinct !DILexicalBlock(scope: !1510, file: !208, line: 294, column: 7)
!1525 = !DILocalVariable(name: "end_tab", scope: !1526, file: !208, line: 314, type: !179)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !208, line: 311, column: 9)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !208, line: 310, column: 16)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !208, line: 308, column: 11)
!1529 = !DILocalVariable(name: "tab_stop", scope: !1510, file: !208, line: 324, type: !179)
!1530 = !DILocation(line: 0, scope: !1510)
!1531 = !DILocation(line: 290, column: 13, scope: !1510)
!1532 = !DILocation(line: 294, column: 7, scope: !1524)
!1533 = !DILocation(line: 294, column: 7, scope: !1510)
!1534 = !DILocation(line: 300, column: 15, scope: !1521)
!1535 = !DILocation(line: 300, column: 26, scope: !1521)
!1536 = !DILocation(line: 300, column: 7, scope: !1522)
!1537 = !DILocation(line: 295, column: 38, scope: !1524)
!1538 = !DILocation(line: 295, column: 29, scope: !1524)
!1539 = !DILocation(line: 295, column: 5, scope: !1524)
!1540 = !DILocation(line: 302, column: 23, scope: !1520)
!1541 = !DILocation(line: 0, scope: !1520)
!1542 = !DILocation(line: 303, column: 22, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1520, file: !208, line: 303, column: 15)
!1544 = !DILocation(line: 300, column: 57, scope: !1521)
!1545 = distinct !{!1545, !1536, !1546, !679}
!1546 = !DILocation(line: 305, column: 9, scope: !1522)
!1547 = !DILocation(line: 308, column: 11, scope: !1528)
!1548 = !DILocation(line: 308, column: 11, scope: !1523)
!1549 = !DILocation(line: 309, column: 45, scope: !1528)
!1550 = !DILocation(line: 309, column: 36, scope: !1528)
!1551 = !DILocation(line: 309, column: 9, scope: !1528)
!1552 = !DILocation(line: 310, column: 16, scope: !1527)
!1553 = !DILocation(line: 310, column: 16, scope: !1528)
!1554 = !DILocation(line: 314, column: 27, scope: !1526)
!1555 = !DILocation(line: 314, column: 51, scope: !1526)
!1556 = !DILocation(line: 0, scope: !1526)
!1557 = !DILocation(line: 315, column: 52, scope: !1526)
!1558 = !DILocation(line: 315, column: 63, scope: !1526)
!1559 = !DILocation(line: 315, column: 41, scope: !1526)
!1560 = !DILocation(line: 316, column: 9, scope: !1526)
!1561 = !DILocation(line: 319, column: 21, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1527, file: !208, line: 318, column: 9)
!1563 = !DILocation(line: 0, scope: !1524)
!1564 = !DILocation(line: 325, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1510, file: !208, line: 325, column: 7)
!1566 = !DILocation(line: 325, column: 7, scope: !1510)
!1567 = !DILocation(line: 326, column: 5, scope: !1565)
!1568 = !DILocation(line: 328, column: 1, scope: !1510)
!1569 = distinct !DISubprogram(name: "set_file_list", scope: !208, file: !208, line: 333, type: !1570, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !306}
!1572 = !{!1573}
!1573 = !DILocalVariable(name: "list", arg: 1, scope: !1569, file: !208, line: 333, type: !306)
!1574 = !DILocation(line: 0, scope: !1569)
!1575 = !DILocation(line: 335, column: 19, scope: !1569)
!1576 = !DILocation(line: 337, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1569, file: !208, line: 337, column: 7)
!1578 = !DILocation(line: 0, scope: !1577)
!1579 = !DILocation(line: 341, column: 1, scope: !1569)
!1580 = !DILocation(line: 0, scope: !239)
!1581 = !DILocation(line: 354, column: 7, scope: !281)
!1582 = !DILocation(line: 354, column: 7, scope: !239)
!1583 = !DILocation(line: 356, column: 17, scope: !280)
!1584 = !DILocation(line: 0, scope: !280)
!1585 = !DILocalVariable(name: "__stream", arg: 1, scope: !1586, file: !924, line: 135, type: !242)
!1586 = distinct !DISubprogram(name: "ferror_unlocked", scope: !924, file: !924, line: 135, type: !1587, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!35, !242}
!1589 = !{!1585}
!1590 = !DILocation(line: 0, scope: !1586, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 357, column: 12, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !280, file: !208, line: 357, column: 11)
!1593 = !DILocation(line: 137, column: 10, scope: !1586, inlinedAt: !1591)
!1594 = !DILocation(line: 357, column: 12, scope: !1592)
!1595 = !DILocation(line: 357, column: 11, scope: !280)
!1596 = !DILocation(line: 359, column: 18, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !280, file: !208, line: 359, column: 11)
!1598 = !DILocalVariable(name: "__s1", arg: 1, scope: !1599, file: !663, line: 1359, type: !40)
!1599 = distinct !DISubprogram(name: "streq", scope: !663, file: !663, line: 1359, type: !664, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1600)
!1600 = !{!1598, !1601}
!1601 = !DILocalVariable(name: "__s2", arg: 2, scope: !1599, file: !663, line: 1359, type: !40)
!1602 = !DILocation(line: 0, scope: !1599, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 359, column: 11, scope: !1597)
!1604 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1603)
!1605 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1603)
!1606 = !DILocation(line: 359, column: 11, scope: !280)
!1607 = !DILocation(line: 360, column: 9, scope: !1597)
!1608 = !DILocation(line: 361, column: 16, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1597, file: !208, line: 361, column: 16)
!1610 = !DILocation(line: 361, column: 28, scope: !1609)
!1611 = !DILocation(line: 361, column: 16, scope: !1597)
!1612 = !DILocation(line: 362, column: 15, scope: !1609)
!1613 = !DILocation(line: 362, column: 9, scope: !1609)
!1614 = !DILocation(line: 363, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !280, file: !208, line: 363, column: 11)
!1616 = !DILocation(line: 363, column: 11, scope: !280)
!1617 = !DILocation(line: 365, column: 11, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !208, line: 364, column: 9)
!1619 = !DILocation(line: 366, column: 23, scope: !1618)
!1620 = !DILocation(line: 367, column: 9, scope: !1618)
!1621 = !DILocation(line: 370, column: 28, scope: !239)
!1622 = !DILocation(line: 370, column: 18, scope: !239)
!1623 = !DILocation(line: 370, column: 32, scope: !239)
!1624 = !DILocation(line: 370, column: 3, scope: !239)
!1625 = !DILocation(line: 0, scope: !1599, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 372, column: 11, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 372, column: 11)
!1628 = distinct !DILexicalBlock(scope: !239, file: !208, line: 371, column: 5)
!1629 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1626)
!1630 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1626)
!1631 = !DILocation(line: 372, column: 11, scope: !1628)
!1632 = !DILocation(line: 374, column: 27, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !208, line: 373, column: 9)
!1634 = !DILocation(line: 375, column: 16, scope: !1633)
!1635 = !DILocation(line: 376, column: 9, scope: !1633)
!1636 = !DILocation(line: 378, column: 14, scope: !1627)
!1637 = !DILocation(line: 0, scope: !1627)
!1638 = !DILocation(line: 379, column: 11, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 379, column: 11)
!1640 = !DILocation(line: 379, column: 11, scope: !1628)
!1641 = !DILocation(line: 381, column: 21, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !208, line: 380, column: 9)
!1643 = !DILocation(line: 382, column: 11, scope: !1642)
!1644 = !DILocation(line: 383, column: 11, scope: !1642)
!1645 = !DILocation(line: 385, column: 7, scope: !1628)
!1646 = !DILocation(line: 386, column: 19, scope: !1628)
!1647 = distinct !{!1647, !1624, !1648, !679}
!1648 = !DILocation(line: 387, column: 5, scope: !239)
!1649 = !DILocation(line: 389, column: 1, scope: !239)
!1650 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !208, file: !208, line: 393, type: !148, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !626)
!1651 = !DILocation(line: 395, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1650, file: !208, line: 395, column: 9)
!1653 = !DILocation(line: 395, column: 25, scope: !1652)
!1654 = !DILocation(line: 395, column: 36, scope: !1652)
!1655 = !DILocation(line: 395, column: 28, scope: !1652)
!1656 = !DILocation(line: 395, column: 43, scope: !1652)
!1657 = !DILocation(line: 395, column: 9, scope: !1650)
!1658 = !DILocation(line: 396, column: 7, scope: !1652)
!1659 = !DILocation(line: 397, column: 1, scope: !1650)
!1660 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !208, file: !208, line: 402, type: !638, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1661)
!1661 = !{!1662}
!1662 = !DILocalVariable(name: "program", arg: 1, scope: !1660, file: !208, line: 402, type: !40)
!1663 = !DILocation(line: 0, scope: !1660)
!1664 = !DILocation(line: 405, column: 20, scope: !1660)
!1665 = !DILocation(line: 0, scope: !309, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 405, column: 3, scope: !1660)
!1667 = !DILocation(line: 581, column: 7, scope: !315, inlinedAt: !1666)
!1668 = !DILocation(line: 581, column: 19, scope: !315, inlinedAt: !1666)
!1669 = !DILocation(line: 581, column: 7, scope: !309, inlinedAt: !1666)
!1670 = !DILocation(line: 585, column: 26, scope: !314, inlinedAt: !1666)
!1671 = !DILocation(line: 0, scope: !314, inlinedAt: !1666)
!1672 = !DILocation(line: 586, column: 23, scope: !314, inlinedAt: !1666)
!1673 = !DILocation(line: 586, column: 28, scope: !314, inlinedAt: !1666)
!1674 = !DILocation(line: 586, column: 32, scope: !314, inlinedAt: !1666)
!1675 = !DILocation(line: 586, column: 38, scope: !314, inlinedAt: !1666)
!1676 = !DILocation(line: 0, scope: !1599, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 586, column: 41, scope: !314, inlinedAt: !1666)
!1678 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1677)
!1679 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1677)
!1680 = !DILocation(line: 586, column: 19, scope: !314, inlinedAt: !1666)
!1681 = !DILocation(line: 587, column: 5, scope: !314, inlinedAt: !1666)
!1682 = !DILocation(line: 588, column: 7, scope: !1683, inlinedAt: !1666)
!1683 = distinct !DILexicalBlock(scope: !309, file: !48, line: 588, column: 7)
!1684 = !DILocation(line: 588, column: 7, scope: !309, inlinedAt: !1666)
!1685 = !DILocation(line: 590, column: 7, scope: !1686, inlinedAt: !1666)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !48, line: 589, column: 5)
!1687 = !DILocation(line: 591, column: 7, scope: !1686, inlinedAt: !1666)
!1688 = !DILocation(line: 595, column: 37, scope: !309, inlinedAt: !1666)
!1689 = !DILocation(line: 595, column: 35, scope: !309, inlinedAt: !1666)
!1690 = !DILocation(line: 596, column: 29, scope: !309, inlinedAt: !1666)
!1691 = !DILocation(line: 597, column: 8, scope: !322, inlinedAt: !1666)
!1692 = !DILocation(line: 597, column: 7, scope: !309, inlinedAt: !1666)
!1693 = !DILocation(line: 604, column: 24, scope: !321, inlinedAt: !1666)
!1694 = !DILocation(line: 604, column: 12, scope: !322, inlinedAt: !1666)
!1695 = !DILocation(line: 0, scope: !320, inlinedAt: !1666)
!1696 = !DILocation(line: 610, column: 16, scope: !320, inlinedAt: !1666)
!1697 = !DILocation(line: 610, column: 7, scope: !320, inlinedAt: !1666)
!1698 = !DILocation(line: 611, column: 21, scope: !320, inlinedAt: !1666)
!1699 = !DILocation(line: 611, column: 19, scope: !320, inlinedAt: !1666)
!1700 = !DILocation(line: 611, column: 16, scope: !320, inlinedAt: !1666)
!1701 = !DILocation(line: 610, column: 30, scope: !320, inlinedAt: !1666)
!1702 = distinct !{!1702, !1697, !1698, !679}
!1703 = !DILocation(line: 612, column: 18, scope: !1704, inlinedAt: !1666)
!1704 = distinct !DILexicalBlock(scope: !320, file: !48, line: 612, column: 11)
!1705 = !DILocation(line: 612, column: 11, scope: !320, inlinedAt: !1666)
!1706 = !DILocation(line: 618, column: 5, scope: !320, inlinedAt: !1666)
!1707 = !DILocation(line: 620, column: 23, scope: !309, inlinedAt: !1666)
!1708 = !DILocation(line: 625, column: 39, scope: !309, inlinedAt: !1666)
!1709 = !DILocation(line: 626, column: 3, scope: !309, inlinedAt: !1666)
!1710 = !DILocation(line: 626, column: 10, scope: !309, inlinedAt: !1666)
!1711 = !DILocation(line: 626, column: 21, scope: !309, inlinedAt: !1666)
!1712 = !DILocation(line: 628, column: 44, scope: !1713, inlinedAt: !1666)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !48, line: 628, column: 11)
!1714 = distinct !DILexicalBlock(scope: !309, file: !48, line: 627, column: 5)
!1715 = !DILocation(line: 628, column: 32, scope: !1713, inlinedAt: !1666)
!1716 = !DILocation(line: 628, column: 49, scope: !1713, inlinedAt: !1666)
!1717 = !DILocation(line: 628, column: 11, scope: !1714, inlinedAt: !1666)
!1718 = !DILocation(line: 630, column: 11, scope: !1719, inlinedAt: !1666)
!1719 = distinct !DILexicalBlock(scope: !1714, file: !48, line: 630, column: 11)
!1720 = !DILocation(line: 630, column: 11, scope: !1714, inlinedAt: !1666)
!1721 = !DILocation(line: 632, column: 26, scope: !1722, inlinedAt: !1666)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !48, line: 632, column: 15)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !48, line: 631, column: 9)
!1724 = !DILocation(line: 632, column: 34, scope: !1722, inlinedAt: !1666)
!1725 = !DILocation(line: 632, column: 37, scope: !1722, inlinedAt: !1666)
!1726 = !DILocation(line: 632, column: 15, scope: !1723, inlinedAt: !1666)
!1727 = !DILocation(line: 636, column: 29, scope: !1728, inlinedAt: !1666)
!1728 = distinct !DILexicalBlock(scope: !1723, file: !48, line: 636, column: 15)
!1729 = !DILocation(line: 640, column: 16, scope: !1714, inlinedAt: !1666)
!1730 = distinct !{!1730, !1709, !1731, !679}
!1731 = !DILocation(line: 641, column: 5, scope: !309, inlinedAt: !1666)
!1732 = !DILocation(line: 644, column: 3, scope: !309, inlinedAt: !1666)
!1733 = !DILocation(line: 0, scope: !1599, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 648, column: 31, scope: !309, inlinedAt: !1666)
!1735 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1734)
!1736 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1734)
!1737 = !DILocation(line: 648, column: 31, scope: !309, inlinedAt: !1666)
!1738 = !DILocation(line: 0, scope: !1599, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 649, column: 31, scope: !309, inlinedAt: !1666)
!1740 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1739)
!1741 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1739)
!1742 = !DILocation(line: 649, column: 31, scope: !309, inlinedAt: !1666)
!1743 = !DILocation(line: 0, scope: !1599, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 650, column: 31, scope: !309, inlinedAt: !1666)
!1745 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1744)
!1746 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1744)
!1747 = !DILocation(line: 650, column: 31, scope: !309, inlinedAt: !1666)
!1748 = !DILocation(line: 0, scope: !1599, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 651, column: 31, scope: !309, inlinedAt: !1666)
!1750 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1749)
!1751 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1749)
!1752 = !DILocation(line: 651, column: 31, scope: !309, inlinedAt: !1666)
!1753 = !DILocation(line: 0, scope: !1599, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 652, column: 31, scope: !309, inlinedAt: !1666)
!1755 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1754)
!1756 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1754)
!1757 = !DILocation(line: 652, column: 31, scope: !309, inlinedAt: !1666)
!1758 = !DILocation(line: 0, scope: !1599, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 653, column: 31, scope: !309, inlinedAt: !1666)
!1760 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1759)
!1761 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1759)
!1762 = !DILocation(line: 653, column: 31, scope: !309, inlinedAt: !1666)
!1763 = !DILocation(line: 0, scope: !1599, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 654, column: 31, scope: !309, inlinedAt: !1666)
!1765 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1764)
!1766 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1764)
!1767 = !DILocation(line: 654, column: 31, scope: !309, inlinedAt: !1666)
!1768 = !DILocation(line: 0, scope: !1599, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 655, column: 31, scope: !309, inlinedAt: !1666)
!1770 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1769)
!1771 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1769)
!1772 = !DILocation(line: 655, column: 31, scope: !309, inlinedAt: !1666)
!1773 = !DILocation(line: 0, scope: !1599, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 656, column: 31, scope: !309, inlinedAt: !1666)
!1775 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1774)
!1776 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1774)
!1777 = !DILocation(line: 656, column: 31, scope: !309, inlinedAt: !1666)
!1778 = !DILocation(line: 0, scope: !1599, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 657, column: 31, scope: !309, inlinedAt: !1666)
!1780 = !DILocation(line: 1361, column: 11, scope: !1599, inlinedAt: !1779)
!1781 = !DILocation(line: 1361, column: 10, scope: !1599, inlinedAt: !1779)
!1782 = !DILocation(line: 657, column: 31, scope: !309, inlinedAt: !1666)
!1783 = !DILocation(line: 663, column: 7, scope: !1784, inlinedAt: !1666)
!1784 = distinct !DILexicalBlock(scope: !309, file: !48, line: 663, column: 7)
!1785 = !DILocation(line: 664, column: 7, scope: !1784, inlinedAt: !1666)
!1786 = !DILocation(line: 664, column: 10, scope: !1784, inlinedAt: !1666)
!1787 = !DILocation(line: 663, column: 7, scope: !309, inlinedAt: !1666)
!1788 = !DILocation(line: 669, column: 7, scope: !1789, inlinedAt: !1666)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !48, line: 665, column: 5)
!1790 = !DILocation(line: 671, column: 5, scope: !1789, inlinedAt: !1666)
!1791 = !DILocation(line: 676, column: 7, scope: !1792, inlinedAt: !1666)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !48, line: 673, column: 5)
!1793 = !DILocation(line: 679, column: 3, scope: !309, inlinedAt: !1666)
!1794 = !DILocation(line: 683, column: 3, scope: !309, inlinedAt: !1666)
!1795 = !DILocation(line: 686, column: 3, scope: !309, inlinedAt: !1666)
!1796 = !DILocation(line: 688, column: 3, scope: !309, inlinedAt: !1666)
!1797 = !DILocation(line: 691, column: 3, scope: !309, inlinedAt: !1666)
!1798 = !DILocation(line: 695, column: 3, scope: !309, inlinedAt: !1666)
!1799 = !DILocation(line: 409, column: 3, scope: !1660)
!1800 = !DILocation(line: 416, column: 1, scope: !1660)
!1801 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !344, file: !344, line: 50, type: !638, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1802)
!1802 = !{!1803}
!1803 = !DILocalVariable(name: "file", arg: 1, scope: !1801, file: !344, line: 50, type: !40)
!1804 = !DILocation(line: 0, scope: !1801)
!1805 = !DILocation(line: 52, column: 13, scope: !1801)
!1806 = !DILocation(line: 53, column: 1, scope: !1801)
!1807 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !344, file: !344, line: 87, type: !1808, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !43}
!1810 = !{!1811}
!1811 = !DILocalVariable(name: "ignore", arg: 1, scope: !1807, file: !344, line: 87, type: !43)
!1812 = !DILocation(line: 0, scope: !1807)
!1813 = !DILocation(line: 89, column: 16, scope: !1807)
!1814 = !DILocation(line: 90, column: 1, scope: !1807)
!1815 = distinct !DISubprogram(name: "close_stdout", scope: !344, file: !344, line: 116, type: !148, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1816)
!1816 = !{!1817}
!1817 = !DILocalVariable(name: "write_error", scope: !1818, file: !344, line: 121, type: !40)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !344, line: 120, column: 5)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !344, line: 118, column: 7)
!1820 = !DILocation(line: 118, column: 21, scope: !1819)
!1821 = !DILocation(line: 118, column: 7, scope: !1819)
!1822 = !DILocation(line: 118, column: 29, scope: !1819)
!1823 = !DILocation(line: 119, column: 7, scope: !1819)
!1824 = !DILocation(line: 119, column: 12, scope: !1819)
!1825 = !DILocation(line: 119, column: 25, scope: !1819)
!1826 = !DILocation(line: 119, column: 28, scope: !1819)
!1827 = !DILocation(line: 119, column: 34, scope: !1819)
!1828 = !DILocation(line: 118, column: 7, scope: !1815)
!1829 = !DILocation(line: 121, column: 33, scope: !1818)
!1830 = !DILocation(line: 0, scope: !1818)
!1831 = !DILocation(line: 122, column: 11, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1818, file: !344, line: 122, column: 11)
!1833 = !DILocation(line: 0, scope: !1832)
!1834 = !DILocation(line: 122, column: 11, scope: !1818)
!1835 = !DILocation(line: 123, column: 9, scope: !1832)
!1836 = !DILocation(line: 126, column: 9, scope: !1832)
!1837 = !DILocation(line: 128, column: 14, scope: !1818)
!1838 = !DILocation(line: 128, column: 7, scope: !1818)
!1839 = !DILocation(line: 133, column: 42, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1815, file: !344, line: 133, column: 7)
!1841 = !DILocation(line: 133, column: 28, scope: !1840)
!1842 = !DILocation(line: 133, column: 50, scope: !1840)
!1843 = !DILocation(line: 133, column: 7, scope: !1815)
!1844 = !DILocation(line: 134, column: 12, scope: !1840)
!1845 = !DILocation(line: 134, column: 5, scope: !1840)
!1846 = !DILocation(line: 135, column: 1, scope: !1815)
!1847 = distinct !DISubprogram(name: "verror", scope: !351, file: !351, line: 251, type: !1848, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !35, !35, !40, !359}
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DILocalVariable(name: "status", arg: 1, scope: !1847, file: !351, line: 251, type: !35)
!1852 = !DILocalVariable(name: "errnum", arg: 2, scope: !1847, file: !351, line: 251, type: !35)
!1853 = !DILocalVariable(name: "message", arg: 3, scope: !1847, file: !351, line: 251, type: !40)
!1854 = !DILocalVariable(name: "args", arg: 4, scope: !1847, file: !351, line: 251, type: !359)
!1855 = !DILocation(line: 0, scope: !1847)
!1856 = !DILocation(line: 251, column: 1, scope: !1847)
!1857 = !DILocation(line: 261, column: 3, scope: !1847)
!1858 = !DILocation(line: 265, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1847, file: !351, line: 265, column: 7)
!1860 = !DILocation(line: 265, column: 7, scope: !1847)
!1861 = !DILocation(line: 266, column: 5, scope: !1859)
!1862 = !DILocation(line: 272, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !351, line: 268, column: 5)
!1864 = !DILocation(line: 276, column: 3, scope: !1847)
!1865 = !{i64 0, i64 8, !617, i64 8, i64 8, !617, i64 16, i64 8, !617, i64 24, i64 4, !712, i64 28, i64 4, !712}
!1866 = !DILocation(line: 282, column: 1, scope: !1847)
!1867 = distinct !DISubprogram(name: "flush_stdout", scope: !351, file: !351, line: 163, type: !148, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1868)
!1868 = !{!1869}
!1869 = !DILocalVariable(name: "stdout_fd", scope: !1867, file: !351, line: 166, type: !35)
!1870 = !DILocation(line: 0, scope: !1867)
!1871 = !DILocalVariable(name: "fd", arg: 1, scope: !1872, file: !351, line: 145, type: !35)
!1872 = distinct !DISubprogram(name: "is_open", scope: !351, file: !351, line: 145, type: !1082, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1873)
!1873 = !{!1871}
!1874 = !DILocation(line: 0, scope: !1872, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 182, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1867, file: !351, line: 182, column: 7)
!1877 = !DILocation(line: 157, column: 15, scope: !1872, inlinedAt: !1875)
!1878 = !DILocation(line: 182, column: 25, scope: !1876)
!1879 = !DILocation(line: 182, column: 7, scope: !1867)
!1880 = !DILocation(line: 184, column: 5, scope: !1876)
!1881 = !DILocation(line: 185, column: 1, scope: !1867)
!1882 = distinct !DISubprogram(name: "error_tail", scope: !351, file: !351, line: 219, type: !1848, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1883)
!1883 = !{!1884, !1885, !1886, !1887}
!1884 = !DILocalVariable(name: "status", arg: 1, scope: !1882, file: !351, line: 219, type: !35)
!1885 = !DILocalVariable(name: "errnum", arg: 2, scope: !1882, file: !351, line: 219, type: !35)
!1886 = !DILocalVariable(name: "message", arg: 3, scope: !1882, file: !351, line: 219, type: !40)
!1887 = !DILocalVariable(name: "args", arg: 4, scope: !1882, file: !351, line: 219, type: !359)
!1888 = !DILocation(line: 0, scope: !1882)
!1889 = !DILocation(line: 219, column: 1, scope: !1882)
!1890 = !DILocation(line: 229, column: 13, scope: !1882)
!1891 = !DILocation(line: 229, column: 3, scope: !1882)
!1892 = !DILocalVariable(name: "__stream", arg: 1, scope: !1893, file: !1894, line: 132, type: !1897)
!1893 = distinct !DISubprogram(name: "vfprintf", scope: !1894, file: !1894, line: 132, type: !1895, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1932)
!1894 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!35, !1897, !708, !361}
!1897 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1900, file: !74, line: 51, baseType: !35, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1900, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1900, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1900, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1900, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1900, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1900, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1900, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1900, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1900, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1900, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1900, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1900, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1900, file: !74, line: 70, baseType: !1916, size: 64, offset: 832)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1900, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1900, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1900, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1900, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1900, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1900, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1900, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1900, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1900, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1900, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1900, file: !74, line: 93, baseType: !1916, size: 64, offset: 1344)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1900, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1900, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1900, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1900, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!1932 = !{!1892, !1933, !1934}
!1933 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1893, file: !1894, line: 133, type: !708)
!1934 = !DILocalVariable(name: "__ap", arg: 3, scope: !1893, file: !1894, line: 133, type: !361)
!1935 = !DILocation(line: 0, scope: !1893, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 229, column: 3, scope: !1882)
!1937 = !DILocation(line: 135, column: 10, scope: !1893, inlinedAt: !1936)
!1938 = !{!1939, !1941}
!1939 = distinct !{!1939, !1940, !"vfprintf.inline: argument 0"}
!1940 = distinct !{!1940, !"vfprintf.inline"}
!1941 = distinct !{!1941, !1940, !"vfprintf.inline: argument 1"}
!1942 = !DILocation(line: 232, column: 3, scope: !1882)
!1943 = !DILocation(line: 233, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1882, file: !351, line: 233, column: 7)
!1945 = !DILocation(line: 233, column: 7, scope: !1882)
!1946 = !DILocalVariable(name: "errnum", arg: 1, scope: !1947, file: !351, line: 188, type: !35)
!1947 = distinct !DISubprogram(name: "print_errno_message", scope: !351, file: !351, line: 188, type: !607, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1948)
!1948 = !{!1946, !1949, !1950}
!1949 = !DILocalVariable(name: "s", scope: !1947, file: !351, line: 190, type: !40)
!1950 = !DILocalVariable(name: "errbuf", scope: !1947, file: !351, line: 193, type: !1951)
!1951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8192, elements: !1952)
!1952 = !{!1953}
!1953 = !DISubrange(count: 1024)
!1954 = !DILocation(line: 0, scope: !1947, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 234, column: 5, scope: !1944)
!1956 = !DILocation(line: 193, column: 3, scope: !1947, inlinedAt: !1955)
!1957 = !DILocation(line: 193, column: 8, scope: !1947, inlinedAt: !1955)
!1958 = !DILocation(line: 195, column: 7, scope: !1947, inlinedAt: !1955)
!1959 = !DILocation(line: 207, column: 9, scope: !1960, inlinedAt: !1955)
!1960 = distinct !DILexicalBlock(scope: !1947, file: !351, line: 207, column: 7)
!1961 = !DILocation(line: 207, column: 7, scope: !1947, inlinedAt: !1955)
!1962 = !DILocation(line: 208, column: 9, scope: !1960, inlinedAt: !1955)
!1963 = !DILocation(line: 208, column: 5, scope: !1960, inlinedAt: !1955)
!1964 = !DILocation(line: 214, column: 3, scope: !1947, inlinedAt: !1955)
!1965 = !DILocation(line: 216, column: 1, scope: !1947, inlinedAt: !1955)
!1966 = !DILocation(line: 234, column: 5, scope: !1944)
!1967 = !DILocation(line: 238, column: 3, scope: !1882)
!1968 = !DILocalVariable(name: "__c", arg: 1, scope: !1969, file: !924, line: 101, type: !35)
!1969 = distinct !DISubprogram(name: "putc_unlocked", scope: !924, file: !924, line: 101, type: !1970, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!35, !35, !1898}
!1972 = !{!1968, !1973}
!1973 = !DILocalVariable(name: "__stream", arg: 2, scope: !1969, file: !924, line: 101, type: !1898)
!1974 = !DILocation(line: 0, scope: !1969, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 238, column: 3, scope: !1882)
!1976 = !DILocation(line: 103, column: 10, scope: !1969, inlinedAt: !1975)
!1977 = !DILocation(line: 240, column: 3, scope: !1882)
!1978 = !DILocation(line: 241, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1882, file: !351, line: 241, column: 7)
!1980 = !DILocation(line: 241, column: 7, scope: !1882)
!1981 = !DILocation(line: 242, column: 5, scope: !1979)
!1982 = !DILocation(line: 243, column: 1, scope: !1882)
!1983 = !DISubprogram(name: "strerror_r", scope: !1984, file: !1984, line: 444, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1984 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!32, !35, !32, !37}
!1987 = !DISubprogram(name: "fcntl", scope: !1988, file: !1988, line: 149, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!1988 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!35, !35, !35, null}
!1991 = distinct !DISubprogram(name: "error", scope: !351, file: !351, line: 285, type: !1992, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !35, !35, !40, null}
!1994 = !{!1995, !1996, !1997, !1998}
!1995 = !DILocalVariable(name: "status", arg: 1, scope: !1991, file: !351, line: 285, type: !35)
!1996 = !DILocalVariable(name: "errnum", arg: 2, scope: !1991, file: !351, line: 285, type: !35)
!1997 = !DILocalVariable(name: "message", arg: 3, scope: !1991, file: !351, line: 285, type: !40)
!1998 = !DILocalVariable(name: "ap", scope: !1991, file: !351, line: 287, type: !359)
!1999 = !DILocation(line: 0, scope: !1991)
!2000 = !DILocation(line: 287, column: 3, scope: !1991)
!2001 = !DILocation(line: 287, column: 11, scope: !1991)
!2002 = !DILocation(line: 288, column: 3, scope: !1991)
!2003 = !DILocation(line: 289, column: 3, scope: !1991)
!2004 = !DILocation(line: 290, column: 3, scope: !1991)
!2005 = !DILocation(line: 291, column: 1, scope: !1991)
!2006 = !DILocation(line: 0, scope: !356)
!2007 = !DILocation(line: 298, column: 1, scope: !356)
!2008 = !DILocation(line: 302, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !356, file: !351, line: 302, column: 7)
!2010 = !DILocation(line: 302, column: 7, scope: !356)
!2011 = !DILocation(line: 307, column: 11, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !351, line: 307, column: 11)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !351, line: 303, column: 5)
!2014 = !DILocation(line: 307, column: 27, scope: !2012)
!2015 = !DILocation(line: 308, column: 11, scope: !2012)
!2016 = !DILocation(line: 308, column: 28, scope: !2012)
!2017 = !DILocation(line: 308, column: 25, scope: !2012)
!2018 = !DILocation(line: 309, column: 15, scope: !2012)
!2019 = !DILocation(line: 309, column: 33, scope: !2012)
!2020 = !DILocation(line: 310, column: 19, scope: !2012)
!2021 = !DILocation(line: 311, column: 22, scope: !2012)
!2022 = !DILocation(line: 311, column: 56, scope: !2012)
!2023 = !DILocation(line: 307, column: 11, scope: !2013)
!2024 = !DILocation(line: 316, column: 21, scope: !2013)
!2025 = !DILocation(line: 317, column: 23, scope: !2013)
!2026 = !DILocation(line: 318, column: 5, scope: !2013)
!2027 = !DILocation(line: 327, column: 3, scope: !356)
!2028 = !DILocation(line: 331, column: 7, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !356, file: !351, line: 331, column: 7)
!2030 = !DILocation(line: 331, column: 7, scope: !356)
!2031 = !DILocation(line: 332, column: 5, scope: !2029)
!2032 = !DILocation(line: 338, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !351, line: 334, column: 5)
!2034 = !DILocation(line: 346, column: 3, scope: !356)
!2035 = !DILocation(line: 350, column: 3, scope: !356)
!2036 = !DILocation(line: 356, column: 1, scope: !356)
!2037 = distinct !DISubprogram(name: "error_at_line", scope: !351, file: !351, line: 359, type: !2038, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !35, !35, !40, !7, !40, null}
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2046}
!2041 = !DILocalVariable(name: "status", arg: 1, scope: !2037, file: !351, line: 359, type: !35)
!2042 = !DILocalVariable(name: "errnum", arg: 2, scope: !2037, file: !351, line: 359, type: !35)
!2043 = !DILocalVariable(name: "file_name", arg: 3, scope: !2037, file: !351, line: 359, type: !40)
!2044 = !DILocalVariable(name: "line_number", arg: 4, scope: !2037, file: !351, line: 360, type: !7)
!2045 = !DILocalVariable(name: "message", arg: 5, scope: !2037, file: !351, line: 360, type: !40)
!2046 = !DILocalVariable(name: "ap", scope: !2037, file: !351, line: 362, type: !359)
!2047 = !DILocation(line: 0, scope: !2037)
!2048 = !DILocation(line: 362, column: 3, scope: !2037)
!2049 = !DILocation(line: 362, column: 11, scope: !2037)
!2050 = !DILocation(line: 363, column: 3, scope: !2037)
!2051 = !DILocation(line: 364, column: 3, scope: !2037)
!2052 = !DILocation(line: 366, column: 3, scope: !2037)
!2053 = !DILocation(line: 367, column: 1, scope: !2037)
!2054 = distinct !DISubprogram(name: "fdadvise", scope: !529, file: !529, line: 25, type: !2055, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !2059)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !35, !2057, !2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !360, line: 63, baseType: !96)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !225, line: 51, baseType: !224)
!2059 = !{!2060, !2061, !2062, !2063}
!2060 = !DILocalVariable(name: "fd", arg: 1, scope: !2054, file: !529, line: 25, type: !35)
!2061 = !DILocalVariable(name: "offset", arg: 2, scope: !2054, file: !529, line: 25, type: !2057)
!2062 = !DILocalVariable(name: "len", arg: 3, scope: !2054, file: !529, line: 25, type: !2057)
!2063 = !DILocalVariable(name: "advice", arg: 4, scope: !2054, file: !529, line: 25, type: !2058)
!2064 = !DILocation(line: 0, scope: !2054)
!2065 = !DILocation(line: 28, column: 3, scope: !2054)
!2066 = !DILocation(line: 30, column: 1, scope: !2054)
!2067 = !DISubprogram(name: "posix_fadvise", scope: !1988, file: !1988, line: 273, type: !2068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!35, !35, !2057, !2057, !35}
!2070 = distinct !DISubprogram(name: "fadvise", scope: !529, file: !529, line: 33, type: !2071, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !528, retainedNodes: !2107)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !2073, !2058}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2075, file: !74, line: 51, baseType: !35, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2075, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2075, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2075, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2075, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2075, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2075, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2075, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2075, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2075, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2075, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2075, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2075, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2075, file: !74, line: 70, baseType: !2091, size: 64, offset: 832)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2075, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2075, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2075, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2075, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2075, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2075, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2075, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2075, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2075, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2075, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2075, file: !74, line: 93, baseType: !2091, size: 64, offset: 1344)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2075, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2075, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2075, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2075, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!2107 = !{!2108, !2109}
!2108 = !DILocalVariable(name: "fp", arg: 1, scope: !2070, file: !529, line: 33, type: !2073)
!2109 = !DILocalVariable(name: "advice", arg: 2, scope: !2070, file: !529, line: 33, type: !2058)
!2110 = !DILocation(line: 0, scope: !2070)
!2111 = !DILocation(line: 35, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2070, file: !529, line: 35, column: 7)
!2113 = !DILocation(line: 35, column: 7, scope: !2070)
!2114 = !DILocation(line: 36, column: 15, scope: !2112)
!2115 = !DILocation(line: 0, scope: !2054, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 36, column: 5, scope: !2112)
!2117 = !DILocation(line: 28, column: 3, scope: !2054, inlinedAt: !2116)
!2118 = !DILocation(line: 36, column: 5, scope: !2112)
!2119 = !DILocation(line: 37, column: 1, scope: !2070)
!2120 = !DISubprogram(name: "fileno", scope: !360, file: !360, line: 809, type: !2121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!35, !2073}
!2123 = distinct !DISubprogram(name: "rpl_fclose", scope: !532, file: !532, line: 58, type: !2124, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2160)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!35, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !2129)
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2128, file: !74, line: 51, baseType: !35, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2128, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2128, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2128, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2128, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2128, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2128, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2128, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2128, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2128, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2128, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2128, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2128, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2128, file: !74, line: 70, baseType: !2144, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2128, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2128, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2128, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2128, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2128, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2128, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2128, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2128, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2128, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2128, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2128, file: !74, line: 93, baseType: !2144, size: 64, offset: 1344)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2128, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2128, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2128, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2128, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!2160 = !{!2161, !2162, !2163, !2164}
!2161 = !DILocalVariable(name: "fp", arg: 1, scope: !2123, file: !532, line: 58, type: !2126)
!2162 = !DILocalVariable(name: "saved_errno", scope: !2123, file: !532, line: 60, type: !35)
!2163 = !DILocalVariable(name: "fd", scope: !2123, file: !532, line: 63, type: !35)
!2164 = !DILocalVariable(name: "result", scope: !2123, file: !532, line: 74, type: !35)
!2165 = !DILocation(line: 0, scope: !2123)
!2166 = !DILocation(line: 63, column: 12, scope: !2123)
!2167 = !DILocation(line: 64, column: 10, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2123, file: !532, line: 64, column: 7)
!2169 = !DILocation(line: 64, column: 7, scope: !2123)
!2170 = !DILocation(line: 65, column: 12, scope: !2168)
!2171 = !DILocation(line: 65, column: 5, scope: !2168)
!2172 = !DILocation(line: 70, column: 9, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2123, file: !532, line: 70, column: 7)
!2174 = !DILocation(line: 70, column: 23, scope: !2173)
!2175 = !DILocation(line: 70, column: 33, scope: !2173)
!2176 = !DILocation(line: 70, column: 26, scope: !2173)
!2177 = !DILocation(line: 70, column: 59, scope: !2173)
!2178 = !DILocation(line: 71, column: 7, scope: !2173)
!2179 = !DILocation(line: 71, column: 10, scope: !2173)
!2180 = !DILocation(line: 70, column: 7, scope: !2123)
!2181 = !DILocation(line: 100, column: 12, scope: !2123)
!2182 = !DILocation(line: 105, column: 7, scope: !2123)
!2183 = !DILocation(line: 72, column: 19, scope: !2173)
!2184 = !DILocation(line: 105, column: 19, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2123, file: !532, line: 105, column: 7)
!2186 = !DILocation(line: 107, column: 13, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2185, file: !532, line: 106, column: 5)
!2188 = !DILocation(line: 109, column: 5, scope: !2187)
!2189 = !DILocation(line: 112, column: 1, scope: !2123)
!2190 = !DISubprogram(name: "fclose", scope: !360, file: !360, line: 178, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!2191 = !DISubprogram(name: "lseek", scope: !2192, file: !2192, line: 339, type: !2193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!2192 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!96, !35, !96, !35}
!2195 = distinct !DISubprogram(name: "rpl_fflush", scope: !534, file: !534, line: 130, type: !2196, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !533, retainedNodes: !2232)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!35, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !2200)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2200, file: !74, line: 51, baseType: !35, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2200, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2200, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2200, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2200, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2200, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2200, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2200, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2200, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2200, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2200, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2200, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2200, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2200, file: !74, line: 70, baseType: !2216, size: 64, offset: 832)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2200, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2200, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2200, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2200, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2200, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2200, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2200, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2200, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2200, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2200, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2200, file: !74, line: 93, baseType: !2216, size: 64, offset: 1344)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2200, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2200, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2200, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2200, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "stream", arg: 1, scope: !2195, file: !534, line: 130, type: !2198)
!2234 = !DILocation(line: 0, scope: !2195)
!2235 = !DILocation(line: 151, column: 14, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2195, file: !534, line: 151, column: 7)
!2237 = !DILocation(line: 151, column: 22, scope: !2236)
!2238 = !DILocation(line: 151, column: 27, scope: !2236)
!2239 = !DILocation(line: 151, column: 7, scope: !2195)
!2240 = !DILocation(line: 152, column: 12, scope: !2236)
!2241 = !DILocation(line: 152, column: 5, scope: !2236)
!2242 = !DILocalVariable(name: "fp", arg: 1, scope: !2243, file: !534, line: 42, type: !2198)
!2243 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !534, file: !534, line: 42, type: !2244, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !533, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !2198}
!2246 = !{!2242}
!2247 = !DILocation(line: 0, scope: !2243, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 157, column: 3, scope: !2195)
!2249 = !DILocation(line: 44, column: 12, scope: !2250, inlinedAt: !2248)
!2250 = distinct !DILexicalBlock(scope: !2243, file: !534, line: 44, column: 7)
!2251 = !DILocation(line: 44, column: 19, scope: !2250, inlinedAt: !2248)
!2252 = !DILocation(line: 44, column: 7, scope: !2243, inlinedAt: !2248)
!2253 = !DILocation(line: 46, column: 5, scope: !2250, inlinedAt: !2248)
!2254 = !DILocation(line: 159, column: 10, scope: !2195)
!2255 = !DILocation(line: 159, column: 3, scope: !2195)
!2256 = !DILocation(line: 236, column: 1, scope: !2195)
!2257 = !DISubprogram(name: "fflush", scope: !360, file: !360, line: 230, type: !2196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!2258 = distinct !DISubprogram(name: "fpurge", scope: !537, file: !537, line: 32, type: !2259, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2295)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!35, !2261}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !2263)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !2264)
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2263, file: !74, line: 51, baseType: !35, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2263, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2263, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2263, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2263, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2263, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2263, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2263, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2263, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2263, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2263, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2263, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2263, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2263, file: !74, line: 70, baseType: !2279, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2263, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2263, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2263, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2263, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2263, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2263, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2263, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2263, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2263, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2263, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2263, file: !74, line: 93, baseType: !2279, size: 64, offset: 1344)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2263, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2263, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2263, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2263, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "fp", arg: 1, scope: !2258, file: !537, line: 32, type: !2261)
!2297 = !DILocation(line: 0, scope: !2258)
!2298 = !DILocation(line: 36, column: 3, scope: !2258)
!2299 = !DILocation(line: 38, column: 3, scope: !2258)
!2300 = distinct !DISubprogram(name: "rpl_fseeko", scope: !539, file: !539, line: 28, type: !2301, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !538, retainedNodes: !2337)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!35, !2303, !2057, !35}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !2305)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2305, file: !74, line: 51, baseType: !35, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2305, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2305, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2305, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2305, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2305, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2305, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2305, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2305, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2305, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2305, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2305, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2305, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2305, file: !74, line: 70, baseType: !2321, size: 64, offset: 832)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2305, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2305, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2305, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2305, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2305, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2305, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2305, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2305, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2305, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2305, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2305, file: !74, line: 93, baseType: !2321, size: 64, offset: 1344)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2305, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2305, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2305, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2305, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DILocalVariable(name: "fp", arg: 1, scope: !2300, file: !539, line: 28, type: !2303)
!2339 = !DILocalVariable(name: "offset", arg: 2, scope: !2300, file: !539, line: 28, type: !2057)
!2340 = !DILocalVariable(name: "whence", arg: 3, scope: !2300, file: !539, line: 28, type: !35)
!2341 = !DILocalVariable(name: "pos", scope: !2342, file: !539, line: 123, type: !2057)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !539, line: 119, column: 5)
!2343 = distinct !DILexicalBlock(scope: !2300, file: !539, line: 55, column: 7)
!2344 = !DILocation(line: 0, scope: !2300)
!2345 = !DILocation(line: 55, column: 12, scope: !2343)
!2346 = !{!932, !618, i64 16}
!2347 = !DILocation(line: 55, column: 33, scope: !2343)
!2348 = !{!932, !618, i64 8}
!2349 = !DILocation(line: 55, column: 25, scope: !2343)
!2350 = !DILocation(line: 56, column: 7, scope: !2343)
!2351 = !DILocation(line: 56, column: 15, scope: !2343)
!2352 = !DILocation(line: 56, column: 37, scope: !2343)
!2353 = !{!932, !618, i64 32}
!2354 = !DILocation(line: 56, column: 29, scope: !2343)
!2355 = !DILocation(line: 57, column: 7, scope: !2343)
!2356 = !DILocation(line: 57, column: 15, scope: !2343)
!2357 = !{!932, !618, i64 72}
!2358 = !DILocation(line: 57, column: 29, scope: !2343)
!2359 = !DILocation(line: 55, column: 7, scope: !2300)
!2360 = !DILocation(line: 123, column: 26, scope: !2342)
!2361 = !DILocation(line: 123, column: 19, scope: !2342)
!2362 = !DILocation(line: 0, scope: !2342)
!2363 = !DILocation(line: 124, column: 15, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2342, file: !539, line: 124, column: 11)
!2365 = !DILocation(line: 124, column: 11, scope: !2342)
!2366 = !DILocation(line: 135, column: 12, scope: !2342)
!2367 = !DILocation(line: 135, column: 19, scope: !2342)
!2368 = !DILocation(line: 136, column: 12, scope: !2342)
!2369 = !DILocation(line: 136, column: 20, scope: !2342)
!2370 = !{!932, !904, i64 144}
!2371 = !DILocation(line: 167, column: 7, scope: !2342)
!2372 = !DILocation(line: 169, column: 10, scope: !2300)
!2373 = !DILocation(line: 169, column: 3, scope: !2300)
!2374 = !DILocation(line: 170, column: 1, scope: !2300)
!2375 = !DISubprogram(name: "fseeko", scope: !360, file: !360, line: 736, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!35, !2303, !96, !35}
!2378 = distinct !DISubprogram(name: "getprogname", scope: !541, file: !541, line: 54, type: !2379, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !626)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!40}
!2381 = !DILocation(line: 58, column: 10, scope: !2378)
!2382 = !DILocation(line: 58, column: 3, scope: !2378)
!2383 = distinct !DISubprogram(name: "set_program_name", scope: !390, file: !390, line: 37, type: !638, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !2384)
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "argv0", arg: 1, scope: !2383, file: !390, line: 37, type: !40)
!2386 = !DILocalVariable(name: "slash", scope: !2383, file: !390, line: 44, type: !40)
!2387 = !DILocalVariable(name: "base", scope: !2383, file: !390, line: 45, type: !40)
!2388 = !DILocation(line: 0, scope: !2383)
!2389 = !DILocation(line: 44, column: 23, scope: !2383)
!2390 = !DILocation(line: 45, column: 22, scope: !2383)
!2391 = !DILocation(line: 46, column: 17, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2383, file: !390, line: 46, column: 7)
!2393 = !DILocation(line: 46, column: 9, scope: !2392)
!2394 = !DILocation(line: 46, column: 25, scope: !2392)
!2395 = !DILocation(line: 46, column: 40, scope: !2392)
!2396 = !DILocalVariable(name: "__s1", arg: 1, scope: !2397, file: !663, line: 974, type: !830)
!2397 = distinct !DISubprogram(name: "memeq", scope: !663, file: !663, line: 974, type: !2398, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!43, !830, !830, !37}
!2400 = !{!2396, !2401, !2402}
!2401 = !DILocalVariable(name: "__s2", arg: 2, scope: !2397, file: !663, line: 974, type: !830)
!2402 = !DILocalVariable(name: "__n", arg: 3, scope: !2397, file: !663, line: 974, type: !37)
!2403 = !DILocation(line: 0, scope: !2397, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 46, column: 28, scope: !2392)
!2405 = !DILocation(line: 976, column: 11, scope: !2397, inlinedAt: !2404)
!2406 = !DILocation(line: 976, column: 10, scope: !2397, inlinedAt: !2404)
!2407 = !DILocation(line: 46, column: 7, scope: !2383)
!2408 = !DILocation(line: 49, column: 11, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !390, line: 49, column: 11)
!2410 = distinct !DILexicalBlock(scope: !2392, file: !390, line: 47, column: 5)
!2411 = !DILocation(line: 49, column: 36, scope: !2409)
!2412 = !DILocation(line: 49, column: 11, scope: !2410)
!2413 = !DILocation(line: 65, column: 16, scope: !2383)
!2414 = !DILocation(line: 71, column: 27, scope: !2383)
!2415 = !DILocation(line: 74, column: 33, scope: !2383)
!2416 = !DILocation(line: 76, column: 1, scope: !2383)
!2417 = !DILocation(line: 0, scope: !395)
!2418 = !DILocation(line: 40, column: 29, scope: !395)
!2419 = !DILocation(line: 41, column: 19, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !395, file: !396, line: 41, column: 7)
!2421 = !DILocation(line: 41, column: 7, scope: !395)
!2422 = !DILocation(line: 47, column: 3, scope: !395)
!2423 = !DILocation(line: 48, column: 3, scope: !395)
!2424 = !DILocation(line: 48, column: 13, scope: !395)
!2425 = !DILocalVariable(name: "ps", arg: 1, scope: !2426, file: !2427, line: 1135, type: !2430)
!2426 = distinct !DISubprogram(name: "mbszero", scope: !2427, file: !2427, line: 1135, type: !2428, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2431)
!2427 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!2431 = !{!2425}
!2432 = !DILocation(line: 0, scope: !2426, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 48, column: 18, scope: !395)
!2434 = !DILocalVariable(name: "__dest", arg: 1, scope: !2435, file: !942, line: 57, type: !34)
!2435 = distinct !DISubprogram(name: "memset", scope: !942, file: !942, line: 57, type: !2436, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!34, !34, !35, !37}
!2438 = !{!2434, !2439, !2440}
!2439 = !DILocalVariable(name: "__ch", arg: 2, scope: !2435, file: !942, line: 57, type: !35)
!2440 = !DILocalVariable(name: "__len", arg: 3, scope: !2435, file: !942, line: 57, type: !37)
!2441 = !DILocation(line: 0, scope: !2435, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 1137, column: 3, scope: !2426, inlinedAt: !2433)
!2443 = !DILocation(line: 59, column: 10, scope: !2435, inlinedAt: !2442)
!2444 = !DILocation(line: 49, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !395, file: !396, line: 49, column: 7)
!2446 = !DILocation(line: 49, column: 39, scope: !2445)
!2447 = !DILocation(line: 49, column: 44, scope: !2445)
!2448 = !DILocation(line: 54, column: 1, scope: !395)
!2449 = distinct !DISubprogram(name: "clone_quoting_options", scope: !426, file: !426, line: 113, type: !2450, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2453)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!2452, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!2453 = !{!2454, !2455, !2456}
!2454 = !DILocalVariable(name: "o", arg: 1, scope: !2449, file: !426, line: 113, type: !2452)
!2455 = !DILocalVariable(name: "saved_errno", scope: !2449, file: !426, line: 115, type: !35)
!2456 = !DILocalVariable(name: "p", scope: !2449, file: !426, line: 116, type: !2452)
!2457 = !DILocation(line: 0, scope: !2449)
!2458 = !DILocation(line: 115, column: 21, scope: !2449)
!2459 = !DILocation(line: 116, column: 40, scope: !2449)
!2460 = !DILocation(line: 116, column: 31, scope: !2449)
!2461 = !DILocation(line: 118, column: 9, scope: !2449)
!2462 = !DILocation(line: 119, column: 3, scope: !2449)
!2463 = distinct !DISubprogram(name: "get_quoting_style", scope: !426, file: !426, line: 124, type: !2464, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2468)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!210, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!2468 = !{!2469}
!2469 = !DILocalVariable(name: "o", arg: 1, scope: !2463, file: !426, line: 124, type: !2466)
!2470 = !DILocation(line: 0, scope: !2463)
!2471 = !DILocation(line: 126, column: 11, scope: !2463)
!2472 = !DILocation(line: 126, column: 46, scope: !2463)
!2473 = !{!2474, !619, i64 0}
!2474 = !{!"quoting_options", !619, i64 0, !713, i64 4, !619, i64 8, !618, i64 40, !618, i64 48}
!2475 = !DILocation(line: 126, column: 3, scope: !2463)
!2476 = distinct !DISubprogram(name: "set_quoting_style", scope: !426, file: !426, line: 132, type: !2477, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !2452, !210}
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "o", arg: 1, scope: !2476, file: !426, line: 132, type: !2452)
!2481 = !DILocalVariable(name: "s", arg: 2, scope: !2476, file: !426, line: 132, type: !210)
!2482 = !DILocation(line: 0, scope: !2476)
!2483 = !DILocation(line: 134, column: 4, scope: !2476)
!2484 = !DILocation(line: 134, column: 39, scope: !2476)
!2485 = !DILocation(line: 134, column: 45, scope: !2476)
!2486 = !DILocation(line: 135, column: 1, scope: !2476)
!2487 = distinct !DISubprogram(name: "set_char_quoting", scope: !426, file: !426, line: 143, type: !2488, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!35, !2452, !33, !35}
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2497, !2498}
!2491 = !DILocalVariable(name: "o", arg: 1, scope: !2487, file: !426, line: 143, type: !2452)
!2492 = !DILocalVariable(name: "c", arg: 2, scope: !2487, file: !426, line: 143, type: !33)
!2493 = !DILocalVariable(name: "i", arg: 3, scope: !2487, file: !426, line: 143, type: !35)
!2494 = !DILocalVariable(name: "uc", scope: !2487, file: !426, line: 145, type: !42)
!2495 = !DILocalVariable(name: "p", scope: !2487, file: !426, line: 146, type: !2496)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2497 = !DILocalVariable(name: "shift", scope: !2487, file: !426, line: 148, type: !35)
!2498 = !DILocalVariable(name: "r", scope: !2487, file: !426, line: 149, type: !7)
!2499 = !DILocation(line: 0, scope: !2487)
!2500 = !DILocation(line: 147, column: 6, scope: !2487)
!2501 = !DILocation(line: 147, column: 62, scope: !2487)
!2502 = !DILocation(line: 147, column: 57, scope: !2487)
!2503 = !DILocation(line: 148, column: 15, scope: !2487)
!2504 = !DILocation(line: 149, column: 21, scope: !2487)
!2505 = !DILocation(line: 149, column: 24, scope: !2487)
!2506 = !DILocation(line: 149, column: 34, scope: !2487)
!2507 = !DILocation(line: 150, column: 13, scope: !2487)
!2508 = !DILocation(line: 150, column: 19, scope: !2487)
!2509 = !DILocation(line: 150, column: 24, scope: !2487)
!2510 = !DILocation(line: 150, column: 6, scope: !2487)
!2511 = !DILocation(line: 151, column: 3, scope: !2487)
!2512 = distinct !DISubprogram(name: "set_quoting_flags", scope: !426, file: !426, line: 159, type: !2513, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!35, !2452, !35}
!2515 = !{!2516, !2517, !2518}
!2516 = !DILocalVariable(name: "o", arg: 1, scope: !2512, file: !426, line: 159, type: !2452)
!2517 = !DILocalVariable(name: "i", arg: 2, scope: !2512, file: !426, line: 159, type: !35)
!2518 = !DILocalVariable(name: "r", scope: !2512, file: !426, line: 163, type: !35)
!2519 = !DILocation(line: 0, scope: !2512)
!2520 = !DILocation(line: 161, column: 8, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2512, file: !426, line: 161, column: 7)
!2522 = !DILocation(line: 161, column: 7, scope: !2512)
!2523 = !DILocation(line: 163, column: 14, scope: !2512)
!2524 = !{!2474, !713, i64 4}
!2525 = !DILocation(line: 164, column: 12, scope: !2512)
!2526 = !DILocation(line: 165, column: 3, scope: !2512)
!2527 = distinct !DISubprogram(name: "set_custom_quoting", scope: !426, file: !426, line: 169, type: !2528, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !2452, !40, !40}
!2530 = !{!2531, !2532, !2533}
!2531 = !DILocalVariable(name: "o", arg: 1, scope: !2527, file: !426, line: 169, type: !2452)
!2532 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2527, file: !426, line: 170, type: !40)
!2533 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2527, file: !426, line: 170, type: !40)
!2534 = !DILocation(line: 0, scope: !2527)
!2535 = !DILocation(line: 172, column: 8, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2527, file: !426, line: 172, column: 7)
!2537 = !DILocation(line: 172, column: 7, scope: !2527)
!2538 = !DILocation(line: 174, column: 6, scope: !2527)
!2539 = !DILocation(line: 174, column: 12, scope: !2527)
!2540 = !DILocation(line: 175, column: 8, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2527, file: !426, line: 175, column: 7)
!2542 = !DILocation(line: 175, column: 19, scope: !2541)
!2543 = !DILocation(line: 176, column: 5, scope: !2541)
!2544 = !DILocation(line: 177, column: 6, scope: !2527)
!2545 = !DILocation(line: 177, column: 17, scope: !2527)
!2546 = !{!2474, !618, i64 40}
!2547 = !DILocation(line: 178, column: 6, scope: !2527)
!2548 = !DILocation(line: 178, column: 18, scope: !2527)
!2549 = !{!2474, !618, i64 48}
!2550 = !DILocation(line: 179, column: 1, scope: !2527)
!2551 = distinct !DISubprogram(name: "quotearg_buffer", scope: !426, file: !426, line: 774, type: !2552, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!37, !32, !37, !40, !37, !2466}
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2555 = !DILocalVariable(name: "buffer", arg: 1, scope: !2551, file: !426, line: 774, type: !32)
!2556 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2551, file: !426, line: 774, type: !37)
!2557 = !DILocalVariable(name: "arg", arg: 3, scope: !2551, file: !426, line: 775, type: !40)
!2558 = !DILocalVariable(name: "argsize", arg: 4, scope: !2551, file: !426, line: 775, type: !37)
!2559 = !DILocalVariable(name: "o", arg: 5, scope: !2551, file: !426, line: 776, type: !2466)
!2560 = !DILocalVariable(name: "p", scope: !2551, file: !426, line: 778, type: !2466)
!2561 = !DILocalVariable(name: "saved_errno", scope: !2551, file: !426, line: 779, type: !35)
!2562 = !DILocalVariable(name: "r", scope: !2551, file: !426, line: 780, type: !37)
!2563 = !DILocation(line: 0, scope: !2551)
!2564 = !DILocation(line: 778, column: 37, scope: !2551)
!2565 = !DILocation(line: 779, column: 21, scope: !2551)
!2566 = !DILocation(line: 781, column: 43, scope: !2551)
!2567 = !DILocation(line: 781, column: 53, scope: !2551)
!2568 = !DILocation(line: 781, column: 60, scope: !2551)
!2569 = !DILocation(line: 782, column: 43, scope: !2551)
!2570 = !DILocation(line: 782, column: 58, scope: !2551)
!2571 = !DILocation(line: 780, column: 14, scope: !2551)
!2572 = !DILocation(line: 783, column: 9, scope: !2551)
!2573 = !DILocation(line: 784, column: 3, scope: !2551)
!2574 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !426, file: !426, line: 251, type: !2575, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2579)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!37, !32, !37, !40, !37, !210, !35, !2577, !40, !40}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2604, !2606, !2609, !2610, !2611, !2612, !2615, !2616, !2619, !2623, !2624, !2632, !2635, !2636, !2638, !2639, !2640, !2641}
!2580 = !DILocalVariable(name: "buffer", arg: 1, scope: !2574, file: !426, line: 251, type: !32)
!2581 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2574, file: !426, line: 251, type: !37)
!2582 = !DILocalVariable(name: "arg", arg: 3, scope: !2574, file: !426, line: 252, type: !40)
!2583 = !DILocalVariable(name: "argsize", arg: 4, scope: !2574, file: !426, line: 252, type: !37)
!2584 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2574, file: !426, line: 253, type: !210)
!2585 = !DILocalVariable(name: "flags", arg: 6, scope: !2574, file: !426, line: 253, type: !35)
!2586 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2574, file: !426, line: 254, type: !2577)
!2587 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2574, file: !426, line: 255, type: !40)
!2588 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2574, file: !426, line: 256, type: !40)
!2589 = !DILocalVariable(name: "unibyte_locale", scope: !2574, file: !426, line: 258, type: !43)
!2590 = !DILocalVariable(name: "len", scope: !2574, file: !426, line: 260, type: !37)
!2591 = !DILocalVariable(name: "orig_buffersize", scope: !2574, file: !426, line: 261, type: !37)
!2592 = !DILocalVariable(name: "quote_string", scope: !2574, file: !426, line: 262, type: !40)
!2593 = !DILocalVariable(name: "quote_string_len", scope: !2574, file: !426, line: 263, type: !37)
!2594 = !DILocalVariable(name: "backslash_escapes", scope: !2574, file: !426, line: 264, type: !43)
!2595 = !DILocalVariable(name: "elide_outer_quotes", scope: !2574, file: !426, line: 265, type: !43)
!2596 = !DILocalVariable(name: "encountered_single_quote", scope: !2574, file: !426, line: 266, type: !43)
!2597 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2574, file: !426, line: 267, type: !43)
!2598 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2574, file: !426, line: 309, type: !43)
!2599 = !DILocalVariable(name: "lq", scope: !2600, file: !426, line: 361, type: !40)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !426, line: 361, column: 11)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !426, line: 360, column: 13)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !426, line: 333, column: 7)
!2603 = distinct !DILexicalBlock(scope: !2574, file: !426, line: 312, column: 5)
!2604 = !DILocalVariable(name: "i", scope: !2605, file: !426, line: 395, type: !37)
!2605 = distinct !DILexicalBlock(scope: !2574, file: !426, line: 395, column: 3)
!2606 = !DILocalVariable(name: "is_right_quote", scope: !2607, file: !426, line: 397, type: !43)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !426, line: 396, column: 5)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !426, line: 395, column: 3)
!2609 = !DILocalVariable(name: "escaping", scope: !2607, file: !426, line: 398, type: !43)
!2610 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2607, file: !426, line: 399, type: !43)
!2611 = !DILocalVariable(name: "c", scope: !2607, file: !426, line: 417, type: !42)
!2612 = !DILocalVariable(name: "m", scope: !2613, file: !426, line: 598, type: !37)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !426, line: 596, column: 11)
!2614 = distinct !DILexicalBlock(scope: !2607, file: !426, line: 419, column: 9)
!2615 = !DILocalVariable(name: "printable", scope: !2613, file: !426, line: 600, type: !43)
!2616 = !DILocalVariable(name: "mbs", scope: !2617, file: !426, line: 609, type: !471)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !426, line: 608, column: 15)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !426, line: 602, column: 17)
!2619 = !DILocalVariable(name: "w", scope: !2620, file: !426, line: 618, type: !171)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !426, line: 617, column: 19)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !426, line: 616, column: 17)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !426, line: 616, column: 17)
!2623 = !DILocalVariable(name: "bytes", scope: !2620, file: !426, line: 619, type: !37)
!2624 = !DILocalVariable(name: "j", scope: !2625, file: !426, line: 648, type: !37)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !426, line: 648, column: 29)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !426, line: 647, column: 27)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !426, line: 645, column: 29)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !426, line: 636, column: 23)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !426, line: 628, column: 30)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !426, line: 623, column: 30)
!2631 = distinct !DILexicalBlock(scope: !2620, file: !426, line: 621, column: 25)
!2632 = !DILocalVariable(name: "ilim", scope: !2633, file: !426, line: 674, type: !37)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !426, line: 671, column: 15)
!2634 = distinct !DILexicalBlock(scope: !2613, file: !426, line: 670, column: 17)
!2635 = !DILabel(scope: !2574, name: "process_input", file: !426, line: 308)
!2636 = !DILabel(scope: !2637, name: "c_and_shell_escape", file: !426, line: 502)
!2637 = distinct !DILexicalBlock(scope: !2614, file: !426, line: 478, column: 9)
!2638 = !DILabel(scope: !2637, name: "c_escape", file: !426, line: 507)
!2639 = !DILabel(scope: !2607, name: "store_escape", file: !426, line: 709)
!2640 = !DILabel(scope: !2607, name: "store_c", file: !426, line: 712)
!2641 = !DILabel(scope: !2574, name: "force_outer_quoting_style", file: !426, line: 753)
!2642 = !DILocation(line: 0, scope: !2574)
!2643 = !DILocation(line: 258, column: 25, scope: !2574)
!2644 = !DILocation(line: 258, column: 36, scope: !2574)
!2645 = !DILocation(line: 267, column: 3, scope: !2574)
!2646 = !DILocation(line: 261, column: 10, scope: !2574)
!2647 = !DILocation(line: 262, column: 15, scope: !2574)
!2648 = !DILocation(line: 263, column: 10, scope: !2574)
!2649 = !DILocation(line: 308, column: 2, scope: !2574)
!2650 = !DILocation(line: 311, column: 3, scope: !2574)
!2651 = !DILocation(line: 318, column: 11, scope: !2603)
!2652 = !DILocation(line: 319, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !426, line: 319, column: 9)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !426, line: 319, column: 9)
!2655 = distinct !DILexicalBlock(scope: !2603, file: !426, line: 318, column: 11)
!2656 = !DILocation(line: 319, column: 9, scope: !2654)
!2657 = !DILocation(line: 0, scope: !462, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 357, column: 26, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !426, line: 335, column: 11)
!2660 = distinct !DILexicalBlock(scope: !2602, file: !426, line: 334, column: 13)
!2661 = !DILocation(line: 199, column: 29, scope: !462, inlinedAt: !2658)
!2662 = !DILocation(line: 201, column: 19, scope: !2663, inlinedAt: !2658)
!2663 = distinct !DILexicalBlock(scope: !462, file: !426, line: 201, column: 7)
!2664 = !DILocation(line: 201, column: 7, scope: !462, inlinedAt: !2658)
!2665 = !DILocation(line: 229, column: 3, scope: !462, inlinedAt: !2658)
!2666 = !DILocation(line: 230, column: 3, scope: !462, inlinedAt: !2658)
!2667 = !DILocation(line: 230, column: 13, scope: !462, inlinedAt: !2658)
!2668 = !DILocalVariable(name: "ps", arg: 1, scope: !2669, file: !2427, line: 1135, type: !2672)
!2669 = distinct !DISubprogram(name: "mbszero", scope: !2427, file: !2427, line: 1135, type: !2670, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2673)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !2672}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!2673 = !{!2668}
!2674 = !DILocation(line: 0, scope: !2669, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 230, column: 18, scope: !462, inlinedAt: !2658)
!2676 = !DILocalVariable(name: "__dest", arg: 1, scope: !2677, file: !942, line: 57, type: !34)
!2677 = distinct !DISubprogram(name: "memset", scope: !942, file: !942, line: 57, type: !2436, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2678)
!2678 = !{!2676, !2679, !2680}
!2679 = !DILocalVariable(name: "__ch", arg: 2, scope: !2677, file: !942, line: 57, type: !35)
!2680 = !DILocalVariable(name: "__len", arg: 3, scope: !2677, file: !942, line: 57, type: !37)
!2681 = !DILocation(line: 0, scope: !2677, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1137, column: 3, scope: !2669, inlinedAt: !2675)
!2683 = !DILocation(line: 59, column: 10, scope: !2677, inlinedAt: !2682)
!2684 = !DILocation(line: 231, column: 7, scope: !2685, inlinedAt: !2658)
!2685 = distinct !DILexicalBlock(scope: !462, file: !426, line: 231, column: 7)
!2686 = !DILocation(line: 231, column: 40, scope: !2685, inlinedAt: !2658)
!2687 = !DILocation(line: 231, column: 45, scope: !2685, inlinedAt: !2658)
!2688 = !DILocation(line: 235, column: 1, scope: !462, inlinedAt: !2658)
!2689 = !DILocation(line: 0, scope: !462, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 358, column: 27, scope: !2659)
!2691 = !DILocation(line: 199, column: 29, scope: !462, inlinedAt: !2690)
!2692 = !DILocation(line: 201, column: 19, scope: !2663, inlinedAt: !2690)
!2693 = !DILocation(line: 201, column: 7, scope: !462, inlinedAt: !2690)
!2694 = !DILocation(line: 229, column: 3, scope: !462, inlinedAt: !2690)
!2695 = !DILocation(line: 230, column: 3, scope: !462, inlinedAt: !2690)
!2696 = !DILocation(line: 230, column: 13, scope: !462, inlinedAt: !2690)
!2697 = !DILocation(line: 0, scope: !2669, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 230, column: 18, scope: !462, inlinedAt: !2690)
!2699 = !DILocation(line: 0, scope: !2677, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 1137, column: 3, scope: !2669, inlinedAt: !2698)
!2701 = !DILocation(line: 59, column: 10, scope: !2677, inlinedAt: !2700)
!2702 = !DILocation(line: 231, column: 7, scope: !2685, inlinedAt: !2690)
!2703 = !DILocation(line: 231, column: 40, scope: !2685, inlinedAt: !2690)
!2704 = !DILocation(line: 231, column: 45, scope: !2685, inlinedAt: !2690)
!2705 = !DILocation(line: 235, column: 1, scope: !462, inlinedAt: !2690)
!2706 = !DILocation(line: 360, column: 13, scope: !2602)
!2707 = !DILocation(line: 0, scope: !2600)
!2708 = !DILocation(line: 361, column: 45, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2600, file: !426, line: 361, column: 11)
!2710 = !DILocation(line: 361, column: 11, scope: !2600)
!2711 = !DILocation(line: 362, column: 13, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !426, line: 362, column: 13)
!2713 = distinct !DILexicalBlock(scope: !2709, file: !426, line: 362, column: 13)
!2714 = !DILocation(line: 362, column: 13, scope: !2713)
!2715 = !DILocation(line: 361, column: 52, scope: !2709)
!2716 = distinct !{!2716, !2710, !2717, !679}
!2717 = !DILocation(line: 362, column: 13, scope: !2600)
!2718 = !DILocation(line: 260, column: 10, scope: !2574)
!2719 = !DILocation(line: 365, column: 28, scope: !2602)
!2720 = !DILocation(line: 367, column: 7, scope: !2603)
!2721 = !DILocation(line: 370, column: 7, scope: !2603)
!2722 = !DILocation(line: 376, column: 11, scope: !2603)
!2723 = !DILocation(line: 381, column: 11, scope: !2603)
!2724 = !DILocation(line: 382, column: 9, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !426, line: 382, column: 9)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !426, line: 382, column: 9)
!2727 = distinct !DILexicalBlock(scope: !2603, file: !426, line: 381, column: 11)
!2728 = !DILocation(line: 382, column: 9, scope: !2726)
!2729 = !DILocation(line: 389, column: 7, scope: !2603)
!2730 = !DILocation(line: 392, column: 7, scope: !2603)
!2731 = !DILocation(line: 0, scope: !2605)
!2732 = !DILocation(line: 395, column: 8, scope: !2605)
!2733 = !DILocation(line: 395, column: 34, scope: !2608)
!2734 = !DILocation(line: 395, column: 26, scope: !2608)
!2735 = !DILocation(line: 395, column: 48, scope: !2608)
!2736 = !DILocation(line: 395, column: 55, scope: !2608)
!2737 = !DILocation(line: 395, column: 3, scope: !2605)
!2738 = !DILocation(line: 395, column: 67, scope: !2608)
!2739 = !DILocation(line: 0, scope: !2607)
!2740 = !DILocation(line: 402, column: 11, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2607, file: !426, line: 401, column: 11)
!2742 = !DILocation(line: 404, column: 17, scope: !2741)
!2743 = !DILocation(line: 405, column: 39, scope: !2741)
!2744 = !DILocation(line: 409, column: 32, scope: !2741)
!2745 = !DILocation(line: 405, column: 19, scope: !2741)
!2746 = !DILocation(line: 405, column: 15, scope: !2741)
!2747 = !DILocation(line: 410, column: 11, scope: !2741)
!2748 = !DILocation(line: 410, column: 25, scope: !2741)
!2749 = !DILocalVariable(name: "__s1", arg: 1, scope: !2750, file: !663, line: 974, type: !830)
!2750 = distinct !DISubprogram(name: "memeq", scope: !663, file: !663, line: 974, type: !2398, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2751)
!2751 = !{!2749, !2752, !2753}
!2752 = !DILocalVariable(name: "__s2", arg: 2, scope: !2750, file: !663, line: 974, type: !830)
!2753 = !DILocalVariable(name: "__n", arg: 3, scope: !2750, file: !663, line: 974, type: !37)
!2754 = !DILocation(line: 0, scope: !2750, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 410, column: 14, scope: !2741)
!2756 = !DILocation(line: 976, column: 11, scope: !2750, inlinedAt: !2755)
!2757 = !DILocation(line: 976, column: 10, scope: !2750, inlinedAt: !2755)
!2758 = !DILocation(line: 401, column: 11, scope: !2607)
!2759 = !DILocation(line: 417, column: 25, scope: !2607)
!2760 = !DILocation(line: 418, column: 7, scope: !2607)
!2761 = !DILocation(line: 421, column: 15, scope: !2614)
!2762 = !DILocation(line: 423, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !426, line: 423, column: 15)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !426, line: 422, column: 13)
!2765 = distinct !DILexicalBlock(scope: !2614, file: !426, line: 421, column: 15)
!2766 = !DILocation(line: 423, column: 15, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !426, line: 423, column: 15)
!2768 = !DILocation(line: 423, column: 15, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !426, line: 423, column: 15)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !426, line: 423, column: 15)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !426, line: 423, column: 15)
!2772 = !DILocation(line: 423, column: 15, scope: !2770)
!2773 = !DILocation(line: 423, column: 15, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !426, line: 423, column: 15)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !426, line: 423, column: 15)
!2776 = !DILocation(line: 423, column: 15, scope: !2775)
!2777 = !DILocation(line: 423, column: 15, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !426, line: 423, column: 15)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !426, line: 423, column: 15)
!2780 = !DILocation(line: 423, column: 15, scope: !2779)
!2781 = !DILocation(line: 423, column: 15, scope: !2771)
!2782 = !DILocation(line: 423, column: 15, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !426, line: 423, column: 15)
!2784 = distinct !DILexicalBlock(scope: !2763, file: !426, line: 423, column: 15)
!2785 = !DILocation(line: 423, column: 15, scope: !2784)
!2786 = !DILocation(line: 431, column: 19, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2764, file: !426, line: 430, column: 19)
!2788 = !DILocation(line: 431, column: 24, scope: !2787)
!2789 = !DILocation(line: 431, column: 28, scope: !2787)
!2790 = !DILocation(line: 431, column: 38, scope: !2787)
!2791 = !DILocation(line: 431, column: 48, scope: !2787)
!2792 = !DILocation(line: 431, column: 59, scope: !2787)
!2793 = !DILocation(line: 433, column: 19, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !426, line: 433, column: 19)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !426, line: 433, column: 19)
!2796 = distinct !DILexicalBlock(scope: !2787, file: !426, line: 432, column: 17)
!2797 = !DILocation(line: 433, column: 19, scope: !2795)
!2798 = !DILocation(line: 434, column: 19, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !426, line: 434, column: 19)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !426, line: 434, column: 19)
!2801 = !DILocation(line: 434, column: 19, scope: !2800)
!2802 = !DILocation(line: 435, column: 17, scope: !2796)
!2803 = !DILocation(line: 442, column: 20, scope: !2765)
!2804 = !DILocation(line: 447, column: 11, scope: !2614)
!2805 = !DILocation(line: 450, column: 19, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2614, file: !426, line: 448, column: 13)
!2807 = !DILocation(line: 456, column: 19, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2806, file: !426, line: 455, column: 19)
!2809 = !DILocation(line: 456, column: 24, scope: !2808)
!2810 = !DILocation(line: 456, column: 28, scope: !2808)
!2811 = !DILocation(line: 456, column: 38, scope: !2808)
!2812 = !DILocation(line: 456, column: 47, scope: !2808)
!2813 = !DILocation(line: 456, column: 41, scope: !2808)
!2814 = !DILocation(line: 456, column: 52, scope: !2808)
!2815 = !DILocation(line: 455, column: 19, scope: !2806)
!2816 = !DILocation(line: 457, column: 25, scope: !2808)
!2817 = !DILocation(line: 457, column: 17, scope: !2808)
!2818 = !DILocation(line: 464, column: 25, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2808, file: !426, line: 458, column: 19)
!2820 = !DILocation(line: 468, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !426, line: 468, column: 21)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !426, line: 468, column: 21)
!2823 = !DILocation(line: 468, column: 21, scope: !2822)
!2824 = !DILocation(line: 469, column: 21, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !426, line: 469, column: 21)
!2826 = distinct !DILexicalBlock(scope: !2819, file: !426, line: 469, column: 21)
!2827 = !DILocation(line: 469, column: 21, scope: !2826)
!2828 = !DILocation(line: 470, column: 21, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !426, line: 470, column: 21)
!2830 = distinct !DILexicalBlock(scope: !2819, file: !426, line: 470, column: 21)
!2831 = !DILocation(line: 470, column: 21, scope: !2830)
!2832 = !DILocation(line: 471, column: 21, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !426, line: 471, column: 21)
!2834 = distinct !DILexicalBlock(scope: !2819, file: !426, line: 471, column: 21)
!2835 = !DILocation(line: 471, column: 21, scope: !2834)
!2836 = !DILocation(line: 472, column: 21, scope: !2819)
!2837 = !DILocation(line: 482, column: 33, scope: !2637)
!2838 = !DILocation(line: 483, column: 33, scope: !2637)
!2839 = !DILocation(line: 485, column: 33, scope: !2637)
!2840 = !DILocation(line: 486, column: 33, scope: !2637)
!2841 = !DILocation(line: 487, column: 33, scope: !2637)
!2842 = !DILocation(line: 490, column: 17, scope: !2637)
!2843 = !DILocation(line: 492, column: 21, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !426, line: 491, column: 15)
!2845 = distinct !DILexicalBlock(scope: !2637, file: !426, line: 490, column: 17)
!2846 = !DILocation(line: 499, column: 35, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2637, file: !426, line: 499, column: 17)
!2848 = !DILocation(line: 499, column: 57, scope: !2847)
!2849 = !DILocation(line: 0, scope: !2637)
!2850 = !DILocation(line: 502, column: 11, scope: !2637)
!2851 = !DILocation(line: 504, column: 17, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2637, file: !426, line: 503, column: 17)
!2853 = !DILocation(line: 507, column: 11, scope: !2637)
!2854 = !DILocation(line: 508, column: 17, scope: !2637)
!2855 = !DILocation(line: 517, column: 15, scope: !2614)
!2856 = !DILocation(line: 517, column: 40, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2614, file: !426, line: 517, column: 15)
!2858 = !DILocation(line: 517, column: 47, scope: !2857)
!2859 = !DILocation(line: 517, column: 18, scope: !2857)
!2860 = !DILocation(line: 521, column: 17, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2614, file: !426, line: 521, column: 15)
!2862 = !DILocation(line: 521, column: 15, scope: !2614)
!2863 = !DILocation(line: 525, column: 11, scope: !2614)
!2864 = !DILocation(line: 537, column: 15, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2614, file: !426, line: 536, column: 15)
!2866 = !DILocation(line: 536, column: 15, scope: !2614)
!2867 = !DILocation(line: 544, column: 15, scope: !2614)
!2868 = !DILocation(line: 546, column: 19, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !426, line: 545, column: 13)
!2870 = distinct !DILexicalBlock(scope: !2614, file: !426, line: 544, column: 15)
!2871 = !DILocation(line: 549, column: 19, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !426, line: 549, column: 19)
!2873 = !DILocation(line: 549, column: 30, scope: !2872)
!2874 = !DILocation(line: 558, column: 15, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !426, line: 558, column: 15)
!2876 = distinct !DILexicalBlock(scope: !2869, file: !426, line: 558, column: 15)
!2877 = !DILocation(line: 558, column: 15, scope: !2876)
!2878 = !DILocation(line: 559, column: 15, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !426, line: 559, column: 15)
!2880 = distinct !DILexicalBlock(scope: !2869, file: !426, line: 559, column: 15)
!2881 = !DILocation(line: 559, column: 15, scope: !2880)
!2882 = !DILocation(line: 560, column: 15, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !426, line: 560, column: 15)
!2884 = distinct !DILexicalBlock(scope: !2869, file: !426, line: 560, column: 15)
!2885 = !DILocation(line: 560, column: 15, scope: !2884)
!2886 = !DILocation(line: 562, column: 13, scope: !2869)
!2887 = !DILocation(line: 602, column: 17, scope: !2613)
!2888 = !DILocation(line: 0, scope: !2613)
!2889 = !DILocation(line: 605, column: 29, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2618, file: !426, line: 603, column: 15)
!2891 = !DILocation(line: 605, column: 41, scope: !2890)
!2892 = !DILocation(line: 670, column: 23, scope: !2634)
!2893 = !DILocation(line: 609, column: 17, scope: !2617)
!2894 = !DILocation(line: 609, column: 27, scope: !2617)
!2895 = !DILocation(line: 0, scope: !2669, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 609, column: 32, scope: !2617)
!2897 = !DILocation(line: 0, scope: !2677, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 1137, column: 3, scope: !2669, inlinedAt: !2896)
!2899 = !DILocation(line: 59, column: 10, scope: !2677, inlinedAt: !2898)
!2900 = !DILocation(line: 613, column: 29, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2617, file: !426, line: 613, column: 21)
!2902 = !DILocation(line: 613, column: 21, scope: !2617)
!2903 = !DILocation(line: 614, column: 29, scope: !2901)
!2904 = !DILocation(line: 614, column: 19, scope: !2901)
!2905 = !DILocation(line: 618, column: 21, scope: !2620)
!2906 = !DILocation(line: 620, column: 54, scope: !2620)
!2907 = !DILocation(line: 0, scope: !2620)
!2908 = !DILocation(line: 619, column: 36, scope: !2620)
!2909 = !DILocation(line: 621, column: 25, scope: !2620)
!2910 = !DILocation(line: 631, column: 38, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2629, file: !426, line: 629, column: 23)
!2912 = !DILocation(line: 631, column: 48, scope: !2911)
!2913 = !DILocation(line: 665, column: 19, scope: !2621)
!2914 = !DILocation(line: 666, column: 15, scope: !2618)
!2915 = !DILocation(line: 626, column: 25, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2630, file: !426, line: 624, column: 23)
!2917 = !DILocation(line: 631, column: 51, scope: !2911)
!2918 = !DILocation(line: 631, column: 25, scope: !2911)
!2919 = !DILocation(line: 632, column: 28, scope: !2911)
!2920 = !DILocation(line: 631, column: 34, scope: !2911)
!2921 = distinct !{!2921, !2918, !2919, !679}
!2922 = !DILocation(line: 646, column: 29, scope: !2627)
!2923 = !DILocation(line: 0, scope: !2625)
!2924 = !DILocation(line: 649, column: 49, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2625, file: !426, line: 648, column: 29)
!2926 = !DILocation(line: 649, column: 39, scope: !2925)
!2927 = !DILocation(line: 649, column: 31, scope: !2925)
!2928 = !DILocation(line: 648, column: 60, scope: !2925)
!2929 = !DILocation(line: 648, column: 50, scope: !2925)
!2930 = !DILocation(line: 648, column: 29, scope: !2625)
!2931 = distinct !{!2931, !2930, !2932, !679}
!2932 = !DILocation(line: 654, column: 33, scope: !2625)
!2933 = !DILocation(line: 657, column: 43, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2628, file: !426, line: 657, column: 29)
!2935 = !DILocalVariable(name: "wc", arg: 1, scope: !2936, file: !1063, line: 865, type: !1066)
!2936 = distinct !DISubprogram(name: "c32isprint", scope: !1063, file: !1063, line: 865, type: !1064, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2937)
!2937 = !{!2935}
!2938 = !DILocation(line: 0, scope: !2936, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 657, column: 31, scope: !2934)
!2940 = !DILocation(line: 871, column: 10, scope: !2936, inlinedAt: !2939)
!2941 = !DILocation(line: 657, column: 31, scope: !2934)
!2942 = !DILocation(line: 664, column: 23, scope: !2620)
!2943 = !DILocation(line: 753, column: 2, scope: !2574)
!2944 = !DILocation(line: 756, column: 51, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2574, file: !426, line: 756, column: 7)
!2946 = !DILocation(line: 670, column: 19, scope: !2634)
!2947 = !DILocation(line: 670, column: 45, scope: !2634)
!2948 = !DILocation(line: 674, column: 33, scope: !2633)
!2949 = !DILocation(line: 0, scope: !2633)
!2950 = !DILocation(line: 676, column: 17, scope: !2633)
!2951 = !DILocation(line: 398, column: 12, scope: !2607)
!2952 = !DILocation(line: 678, column: 43, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !426, line: 678, column: 25)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !426, line: 677, column: 19)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !426, line: 676, column: 17)
!2956 = distinct !DILexicalBlock(scope: !2633, file: !426, line: 676, column: 17)
!2957 = !DILocation(line: 680, column: 25, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !426, line: 680, column: 25)
!2959 = distinct !DILexicalBlock(scope: !2953, file: !426, line: 679, column: 23)
!2960 = !DILocation(line: 680, column: 25, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !426, line: 680, column: 25)
!2962 = !DILocation(line: 680, column: 25, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !426, line: 680, column: 25)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !426, line: 680, column: 25)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !426, line: 680, column: 25)
!2966 = !DILocation(line: 680, column: 25, scope: !2964)
!2967 = !DILocation(line: 680, column: 25, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !426, line: 680, column: 25)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !426, line: 680, column: 25)
!2970 = !DILocation(line: 680, column: 25, scope: !2969)
!2971 = !DILocation(line: 680, column: 25, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !426, line: 680, column: 25)
!2973 = distinct !DILexicalBlock(scope: !2965, file: !426, line: 680, column: 25)
!2974 = !DILocation(line: 680, column: 25, scope: !2973)
!2975 = !DILocation(line: 680, column: 25, scope: !2965)
!2976 = !DILocation(line: 680, column: 25, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !426, line: 680, column: 25)
!2978 = distinct !DILexicalBlock(scope: !2958, file: !426, line: 680, column: 25)
!2979 = !DILocation(line: 680, column: 25, scope: !2978)
!2980 = !DILocation(line: 681, column: 25, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !426, line: 681, column: 25)
!2982 = distinct !DILexicalBlock(scope: !2959, file: !426, line: 681, column: 25)
!2983 = !DILocation(line: 681, column: 25, scope: !2982)
!2984 = !DILocation(line: 682, column: 25, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !426, line: 682, column: 25)
!2986 = distinct !DILexicalBlock(scope: !2959, file: !426, line: 682, column: 25)
!2987 = !DILocation(line: 682, column: 25, scope: !2986)
!2988 = !DILocation(line: 683, column: 38, scope: !2959)
!2989 = !DILocation(line: 683, column: 33, scope: !2959)
!2990 = !DILocation(line: 684, column: 23, scope: !2959)
!2991 = !DILocation(line: 685, column: 30, scope: !2953)
!2992 = !DILocation(line: 687, column: 25, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !426, line: 687, column: 25)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !426, line: 687, column: 25)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !426, line: 686, column: 23)
!2996 = distinct !DILexicalBlock(scope: !2953, file: !426, line: 685, column: 30)
!2997 = !DILocation(line: 687, column: 25, scope: !2994)
!2998 = !DILocation(line: 689, column: 23, scope: !2995)
!2999 = !DILocation(line: 690, column: 35, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2954, file: !426, line: 690, column: 25)
!3001 = !DILocation(line: 690, column: 30, scope: !3000)
!3002 = !DILocation(line: 690, column: 25, scope: !2954)
!3003 = !DILocation(line: 692, column: 21, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !426, line: 692, column: 21)
!3005 = distinct !DILexicalBlock(scope: !2954, file: !426, line: 692, column: 21)
!3006 = !DILocation(line: 692, column: 21, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !426, line: 692, column: 21)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !426, line: 692, column: 21)
!3009 = distinct !DILexicalBlock(scope: !3004, file: !426, line: 692, column: 21)
!3010 = !DILocation(line: 692, column: 21, scope: !3008)
!3011 = !DILocation(line: 692, column: 21, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !426, line: 692, column: 21)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !426, line: 692, column: 21)
!3014 = !DILocation(line: 692, column: 21, scope: !3013)
!3015 = !DILocation(line: 692, column: 21, scope: !3009)
!3016 = !DILocation(line: 0, scope: !2954)
!3017 = !DILocation(line: 693, column: 21, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !426, line: 693, column: 21)
!3019 = distinct !DILexicalBlock(scope: !2954, file: !426, line: 693, column: 21)
!3020 = !DILocation(line: 693, column: 21, scope: !3019)
!3021 = !DILocation(line: 694, column: 25, scope: !2954)
!3022 = !DILocation(line: 676, column: 17, scope: !2955)
!3023 = distinct !{!3023, !3024, !3025}
!3024 = !DILocation(line: 676, column: 17, scope: !2956)
!3025 = !DILocation(line: 695, column: 19, scope: !2956)
!3026 = !DILocation(line: 409, column: 30, scope: !2741)
!3027 = !DILocation(line: 702, column: 34, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2607, file: !426, line: 702, column: 11)
!3029 = !DILocation(line: 704, column: 14, scope: !3028)
!3030 = !DILocation(line: 705, column: 14, scope: !3028)
!3031 = !DILocation(line: 705, column: 35, scope: !3028)
!3032 = !DILocation(line: 705, column: 17, scope: !3028)
!3033 = !DILocation(line: 705, column: 47, scope: !3028)
!3034 = !DILocation(line: 705, column: 65, scope: !3028)
!3035 = !DILocation(line: 706, column: 11, scope: !3028)
!3036 = !DILocation(line: 702, column: 11, scope: !2607)
!3037 = !DILocation(line: 395, column: 15, scope: !2605)
!3038 = !DILocation(line: 709, column: 5, scope: !2607)
!3039 = !DILocation(line: 710, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2607, file: !426, line: 710, column: 7)
!3041 = !DILocation(line: 710, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3040, file: !426, line: 710, column: 7)
!3043 = !DILocation(line: 710, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !426, line: 710, column: 7)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !426, line: 710, column: 7)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !426, line: 710, column: 7)
!3047 = !DILocation(line: 710, column: 7, scope: !3045)
!3048 = !DILocation(line: 710, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !426, line: 710, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !426, line: 710, column: 7)
!3051 = !DILocation(line: 710, column: 7, scope: !3050)
!3052 = !DILocation(line: 710, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !426, line: 710, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3046, file: !426, line: 710, column: 7)
!3055 = !DILocation(line: 710, column: 7, scope: !3054)
!3056 = !DILocation(line: 710, column: 7, scope: !3046)
!3057 = !DILocation(line: 710, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !426, line: 710, column: 7)
!3059 = distinct !DILexicalBlock(scope: !3040, file: !426, line: 710, column: 7)
!3060 = !DILocation(line: 710, column: 7, scope: !3059)
!3061 = !DILocation(line: 712, column: 5, scope: !2607)
!3062 = !DILocation(line: 713, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !426, line: 713, column: 7)
!3064 = distinct !DILexicalBlock(scope: !2607, file: !426, line: 713, column: 7)
!3065 = !DILocation(line: 417, column: 21, scope: !2607)
!3066 = !DILocation(line: 713, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !426, line: 713, column: 7)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !426, line: 713, column: 7)
!3069 = distinct !DILexicalBlock(scope: !3063, file: !426, line: 713, column: 7)
!3070 = !DILocation(line: 713, column: 7, scope: !3068)
!3071 = !DILocation(line: 713, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !426, line: 713, column: 7)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !426, line: 713, column: 7)
!3074 = !DILocation(line: 713, column: 7, scope: !3073)
!3075 = !DILocation(line: 713, column: 7, scope: !3069)
!3076 = !DILocation(line: 714, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !426, line: 714, column: 7)
!3078 = distinct !DILexicalBlock(scope: !2607, file: !426, line: 714, column: 7)
!3079 = !DILocation(line: 714, column: 7, scope: !3078)
!3080 = !DILocation(line: 716, column: 11, scope: !2607)
!3081 = !DILocation(line: 718, column: 5, scope: !2608)
!3082 = !DILocation(line: 395, column: 82, scope: !2608)
!3083 = !DILocation(line: 395, column: 3, scope: !2608)
!3084 = distinct !{!3084, !2737, !3085, !679}
!3085 = !DILocation(line: 718, column: 5, scope: !2605)
!3086 = !DILocation(line: 720, column: 11, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !2574, file: !426, line: 720, column: 7)
!3088 = !DILocation(line: 720, column: 16, scope: !3087)
!3089 = !DILocation(line: 728, column: 51, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2574, file: !426, line: 728, column: 7)
!3091 = !DILocation(line: 731, column: 11, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3090, file: !426, line: 730, column: 5)
!3093 = !DILocation(line: 732, column: 16, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3092, file: !426, line: 731, column: 11)
!3095 = !DILocation(line: 732, column: 9, scope: !3094)
!3096 = !DILocation(line: 736, column: 18, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3094, file: !426, line: 736, column: 16)
!3098 = !DILocation(line: 736, column: 29, scope: !3097)
!3099 = !DILocation(line: 745, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !2574, file: !426, line: 745, column: 7)
!3101 = !DILocation(line: 745, column: 20, scope: !3100)
!3102 = !DILocation(line: 746, column: 12, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !426, line: 746, column: 5)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !426, line: 746, column: 5)
!3105 = !DILocation(line: 746, column: 5, scope: !3104)
!3106 = !DILocation(line: 747, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !426, line: 747, column: 7)
!3108 = distinct !DILexicalBlock(scope: !3103, file: !426, line: 747, column: 7)
!3109 = !DILocation(line: 747, column: 7, scope: !3108)
!3110 = !DILocation(line: 746, column: 39, scope: !3103)
!3111 = distinct !{!3111, !3105, !3112, !679}
!3112 = !DILocation(line: 747, column: 7, scope: !3104)
!3113 = !DILocation(line: 749, column: 11, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !2574, file: !426, line: 749, column: 7)
!3115 = !DILocation(line: 749, column: 7, scope: !2574)
!3116 = !DILocation(line: 750, column: 5, scope: !3114)
!3117 = !DILocation(line: 750, column: 17, scope: !3114)
!3118 = !DILocation(line: 756, column: 21, scope: !2945)
!3119 = !DILocation(line: 760, column: 42, scope: !2574)
!3120 = !DILocation(line: 758, column: 10, scope: !2574)
!3121 = !DILocation(line: 758, column: 3, scope: !2574)
!3122 = !DILocation(line: 762, column: 1, scope: !2574)
!3123 = !DISubprogram(name: "iswprint", scope: !1203, file: !1203, line: 120, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!3124 = distinct !DISubprogram(name: "quotearg_alloc", scope: !426, file: !426, line: 788, type: !3125, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!32, !40, !37, !2466}
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "arg", arg: 1, scope: !3124, file: !426, line: 788, type: !40)
!3129 = !DILocalVariable(name: "argsize", arg: 2, scope: !3124, file: !426, line: 788, type: !37)
!3130 = !DILocalVariable(name: "o", arg: 3, scope: !3124, file: !426, line: 789, type: !2466)
!3131 = !DILocation(line: 0, scope: !3124)
!3132 = !DILocalVariable(name: "arg", arg: 1, scope: !3133, file: !426, line: 801, type: !40)
!3133 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !426, file: !426, line: 801, type: !3134, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!32, !40, !37, !555, !2466}
!3136 = !{!3132, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144}
!3137 = !DILocalVariable(name: "argsize", arg: 2, scope: !3133, file: !426, line: 801, type: !37)
!3138 = !DILocalVariable(name: "size", arg: 3, scope: !3133, file: !426, line: 801, type: !555)
!3139 = !DILocalVariable(name: "o", arg: 4, scope: !3133, file: !426, line: 802, type: !2466)
!3140 = !DILocalVariable(name: "p", scope: !3133, file: !426, line: 804, type: !2466)
!3141 = !DILocalVariable(name: "saved_errno", scope: !3133, file: !426, line: 805, type: !35)
!3142 = !DILocalVariable(name: "flags", scope: !3133, file: !426, line: 807, type: !35)
!3143 = !DILocalVariable(name: "bufsize", scope: !3133, file: !426, line: 808, type: !37)
!3144 = !DILocalVariable(name: "buf", scope: !3133, file: !426, line: 812, type: !32)
!3145 = !DILocation(line: 0, scope: !3133, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 791, column: 10, scope: !3124)
!3147 = !DILocation(line: 804, column: 37, scope: !3133, inlinedAt: !3146)
!3148 = !DILocation(line: 805, column: 21, scope: !3133, inlinedAt: !3146)
!3149 = !DILocation(line: 807, column: 18, scope: !3133, inlinedAt: !3146)
!3150 = !DILocation(line: 807, column: 24, scope: !3133, inlinedAt: !3146)
!3151 = !DILocation(line: 808, column: 72, scope: !3133, inlinedAt: !3146)
!3152 = !DILocation(line: 809, column: 53, scope: !3133, inlinedAt: !3146)
!3153 = !DILocation(line: 810, column: 49, scope: !3133, inlinedAt: !3146)
!3154 = !DILocation(line: 811, column: 49, scope: !3133, inlinedAt: !3146)
!3155 = !DILocation(line: 808, column: 20, scope: !3133, inlinedAt: !3146)
!3156 = !DILocation(line: 811, column: 62, scope: !3133, inlinedAt: !3146)
!3157 = !DILocation(line: 812, column: 15, scope: !3133, inlinedAt: !3146)
!3158 = !DILocation(line: 813, column: 60, scope: !3133, inlinedAt: !3146)
!3159 = !DILocation(line: 815, column: 32, scope: !3133, inlinedAt: !3146)
!3160 = !DILocation(line: 815, column: 47, scope: !3133, inlinedAt: !3146)
!3161 = !DILocation(line: 813, column: 3, scope: !3133, inlinedAt: !3146)
!3162 = !DILocation(line: 816, column: 9, scope: !3133, inlinedAt: !3146)
!3163 = !DILocation(line: 791, column: 3, scope: !3124)
!3164 = !DILocation(line: 0, scope: !3133)
!3165 = !DILocation(line: 804, column: 37, scope: !3133)
!3166 = !DILocation(line: 805, column: 21, scope: !3133)
!3167 = !DILocation(line: 807, column: 18, scope: !3133)
!3168 = !DILocation(line: 807, column: 27, scope: !3133)
!3169 = !DILocation(line: 807, column: 24, scope: !3133)
!3170 = !DILocation(line: 808, column: 72, scope: !3133)
!3171 = !DILocation(line: 809, column: 53, scope: !3133)
!3172 = !DILocation(line: 810, column: 49, scope: !3133)
!3173 = !DILocation(line: 811, column: 49, scope: !3133)
!3174 = !DILocation(line: 808, column: 20, scope: !3133)
!3175 = !DILocation(line: 811, column: 62, scope: !3133)
!3176 = !DILocation(line: 812, column: 15, scope: !3133)
!3177 = !DILocation(line: 813, column: 60, scope: !3133)
!3178 = !DILocation(line: 815, column: 32, scope: !3133)
!3179 = !DILocation(line: 815, column: 47, scope: !3133)
!3180 = !DILocation(line: 813, column: 3, scope: !3133)
!3181 = !DILocation(line: 816, column: 9, scope: !3133)
!3182 = !DILocation(line: 817, column: 7, scope: !3133)
!3183 = !DILocation(line: 818, column: 11, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3133, file: !426, line: 817, column: 7)
!3185 = !DILocation(line: 818, column: 5, scope: !3184)
!3186 = !DILocation(line: 819, column: 3, scope: !3133)
!3187 = distinct !DISubprogram(name: "quotearg_free", scope: !426, file: !426, line: 837, type: !148, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3188)
!3188 = !{!3189, !3190}
!3189 = !DILocalVariable(name: "sv", scope: !3187, file: !426, line: 839, type: !485)
!3190 = !DILocalVariable(name: "i", scope: !3191, file: !426, line: 840, type: !35)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !426, line: 840, column: 3)
!3192 = !DILocation(line: 839, column: 24, scope: !3187)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocation(line: 0, scope: !3191)
!3195 = !DILocation(line: 840, column: 21, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3191, file: !426, line: 840, column: 3)
!3197 = !DILocation(line: 840, column: 3, scope: !3191)
!3198 = !DILocation(line: 842, column: 13, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3187, file: !426, line: 842, column: 7)
!3200 = !{!3201, !618, i64 8}
!3201 = !{!"slotvec", !904, i64 0, !618, i64 8}
!3202 = !DILocation(line: 842, column: 17, scope: !3199)
!3203 = !DILocation(line: 842, column: 7, scope: !3187)
!3204 = !DILocation(line: 841, column: 17, scope: !3196)
!3205 = !DILocation(line: 841, column: 5, scope: !3196)
!3206 = !DILocation(line: 840, column: 32, scope: !3196)
!3207 = distinct !{!3207, !3197, !3208, !679}
!3208 = !DILocation(line: 841, column: 20, scope: !3191)
!3209 = !DILocation(line: 844, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3199, file: !426, line: 843, column: 5)
!3211 = !DILocation(line: 845, column: 21, scope: !3210)
!3212 = !{!3201, !904, i64 0}
!3213 = !DILocation(line: 846, column: 20, scope: !3210)
!3214 = !DILocation(line: 847, column: 5, scope: !3210)
!3215 = !DILocation(line: 848, column: 10, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3187, file: !426, line: 848, column: 7)
!3217 = !DILocation(line: 848, column: 7, scope: !3187)
!3218 = !DILocation(line: 850, column: 13, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3216, file: !426, line: 849, column: 5)
!3220 = !DILocation(line: 850, column: 7, scope: !3219)
!3221 = !DILocation(line: 851, column: 15, scope: !3219)
!3222 = !DILocation(line: 852, column: 5, scope: !3219)
!3223 = !DILocation(line: 853, column: 10, scope: !3187)
!3224 = !DILocation(line: 854, column: 1, scope: !3187)
!3225 = distinct !DISubprogram(name: "quotearg_n", scope: !426, file: !426, line: 919, type: !820, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3226)
!3226 = !{!3227, !3228}
!3227 = !DILocalVariable(name: "n", arg: 1, scope: !3225, file: !426, line: 919, type: !35)
!3228 = !DILocalVariable(name: "arg", arg: 2, scope: !3225, file: !426, line: 919, type: !40)
!3229 = !DILocation(line: 0, scope: !3225)
!3230 = !DILocation(line: 921, column: 10, scope: !3225)
!3231 = !DILocation(line: 921, column: 3, scope: !3225)
!3232 = distinct !DISubprogram(name: "quotearg_n_options", scope: !426, file: !426, line: 866, type: !3233, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!32, !35, !40, !37, !2466}
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3246, !3247, !3249, !3250, !3251}
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3232, file: !426, line: 866, type: !35)
!3237 = !DILocalVariable(name: "arg", arg: 2, scope: !3232, file: !426, line: 866, type: !40)
!3238 = !DILocalVariable(name: "argsize", arg: 3, scope: !3232, file: !426, line: 866, type: !37)
!3239 = !DILocalVariable(name: "options", arg: 4, scope: !3232, file: !426, line: 867, type: !2466)
!3240 = !DILocalVariable(name: "saved_errno", scope: !3232, file: !426, line: 869, type: !35)
!3241 = !DILocalVariable(name: "sv", scope: !3232, file: !426, line: 871, type: !485)
!3242 = !DILocalVariable(name: "nslots_max", scope: !3232, file: !426, line: 873, type: !35)
!3243 = !DILocalVariable(name: "preallocated", scope: !3244, file: !426, line: 879, type: !43)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !426, line: 878, column: 5)
!3245 = distinct !DILexicalBlock(scope: !3232, file: !426, line: 877, column: 7)
!3246 = !DILocalVariable(name: "new_nslots", scope: !3244, file: !426, line: 880, type: !160)
!3247 = !DILocalVariable(name: "size", scope: !3248, file: !426, line: 891, type: !37)
!3248 = distinct !DILexicalBlock(scope: !3232, file: !426, line: 890, column: 3)
!3249 = !DILocalVariable(name: "val", scope: !3248, file: !426, line: 892, type: !32)
!3250 = !DILocalVariable(name: "flags", scope: !3248, file: !426, line: 894, type: !35)
!3251 = !DILocalVariable(name: "qsize", scope: !3248, file: !426, line: 895, type: !37)
!3252 = !DILocation(line: 0, scope: !3232)
!3253 = !DILocation(line: 869, column: 21, scope: !3232)
!3254 = !DILocation(line: 871, column: 24, scope: !3232)
!3255 = !DILocation(line: 874, column: 17, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3232, file: !426, line: 874, column: 7)
!3257 = !DILocation(line: 875, column: 5, scope: !3256)
!3258 = !DILocation(line: 877, column: 7, scope: !3245)
!3259 = !DILocation(line: 877, column: 14, scope: !3245)
!3260 = !DILocation(line: 877, column: 7, scope: !3232)
!3261 = !DILocation(line: 879, column: 31, scope: !3244)
!3262 = !DILocation(line: 0, scope: !3244)
!3263 = !DILocation(line: 880, column: 7, scope: !3244)
!3264 = !DILocation(line: 880, column: 26, scope: !3244)
!3265 = !DILocation(line: 880, column: 13, scope: !3244)
!3266 = !DILocation(line: 882, column: 31, scope: !3244)
!3267 = !DILocation(line: 883, column: 33, scope: !3244)
!3268 = !DILocation(line: 883, column: 42, scope: !3244)
!3269 = !DILocation(line: 883, column: 31, scope: !3244)
!3270 = !DILocation(line: 882, column: 22, scope: !3244)
!3271 = !DILocation(line: 882, column: 15, scope: !3244)
!3272 = !DILocation(line: 884, column: 11, scope: !3244)
!3273 = !DILocation(line: 885, column: 15, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3244, file: !426, line: 884, column: 11)
!3275 = !{i64 0, i64 8, !903, i64 8, i64 8, !617}
!3276 = !DILocation(line: 885, column: 9, scope: !3274)
!3277 = !DILocation(line: 886, column: 20, scope: !3244)
!3278 = !DILocation(line: 886, column: 18, scope: !3244)
!3279 = !DILocation(line: 886, column: 15, scope: !3244)
!3280 = !DILocation(line: 886, column: 32, scope: !3244)
!3281 = !DILocation(line: 886, column: 43, scope: !3244)
!3282 = !DILocation(line: 886, column: 53, scope: !3244)
!3283 = !DILocation(line: 0, scope: !2677, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 886, column: 7, scope: !3244)
!3285 = !DILocation(line: 59, column: 10, scope: !2677, inlinedAt: !3284)
!3286 = !DILocation(line: 887, column: 16, scope: !3244)
!3287 = !DILocation(line: 887, column: 14, scope: !3244)
!3288 = !DILocation(line: 888, column: 5, scope: !3245)
!3289 = !DILocation(line: 888, column: 5, scope: !3244)
!3290 = !DILocation(line: 891, column: 19, scope: !3248)
!3291 = !DILocation(line: 891, column: 25, scope: !3248)
!3292 = !DILocation(line: 0, scope: !3248)
!3293 = !DILocation(line: 892, column: 23, scope: !3248)
!3294 = !DILocation(line: 894, column: 26, scope: !3248)
!3295 = !DILocation(line: 894, column: 32, scope: !3248)
!3296 = !DILocation(line: 896, column: 55, scope: !3248)
!3297 = !DILocation(line: 897, column: 46, scope: !3248)
!3298 = !DILocation(line: 898, column: 55, scope: !3248)
!3299 = !DILocation(line: 899, column: 55, scope: !3248)
!3300 = !DILocation(line: 895, column: 20, scope: !3248)
!3301 = !DILocation(line: 901, column: 14, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3248, file: !426, line: 901, column: 9)
!3303 = !DILocation(line: 901, column: 9, scope: !3248)
!3304 = !DILocation(line: 903, column: 35, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !426, line: 902, column: 7)
!3306 = !DILocation(line: 903, column: 20, scope: !3305)
!3307 = !DILocation(line: 904, column: 17, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3305, file: !426, line: 904, column: 13)
!3309 = !DILocation(line: 904, column: 13, scope: !3305)
!3310 = !DILocation(line: 905, column: 11, scope: !3308)
!3311 = !DILocation(line: 906, column: 27, scope: !3305)
!3312 = !DILocation(line: 906, column: 19, scope: !3305)
!3313 = !DILocation(line: 907, column: 69, scope: !3305)
!3314 = !DILocation(line: 909, column: 44, scope: !3305)
!3315 = !DILocation(line: 910, column: 44, scope: !3305)
!3316 = !DILocation(line: 907, column: 9, scope: !3305)
!3317 = !DILocation(line: 911, column: 7, scope: !3305)
!3318 = !DILocation(line: 913, column: 11, scope: !3248)
!3319 = !DILocation(line: 914, column: 5, scope: !3248)
!3320 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !426, file: !426, line: 925, type: !3321, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!32, !35, !40, !37}
!3323 = !{!3324, !3325, !3326}
!3324 = !DILocalVariable(name: "n", arg: 1, scope: !3320, file: !426, line: 925, type: !35)
!3325 = !DILocalVariable(name: "arg", arg: 2, scope: !3320, file: !426, line: 925, type: !40)
!3326 = !DILocalVariable(name: "argsize", arg: 3, scope: !3320, file: !426, line: 925, type: !37)
!3327 = !DILocation(line: 0, scope: !3320)
!3328 = !DILocation(line: 927, column: 10, scope: !3320)
!3329 = !DILocation(line: 927, column: 3, scope: !3320)
!3330 = distinct !DISubprogram(name: "quotearg", scope: !426, file: !426, line: 931, type: !824, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3331)
!3331 = !{!3332}
!3332 = !DILocalVariable(name: "arg", arg: 1, scope: !3330, file: !426, line: 931, type: !40)
!3333 = !DILocation(line: 0, scope: !3330)
!3334 = !DILocation(line: 0, scope: !3225, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 933, column: 10, scope: !3330)
!3336 = !DILocation(line: 921, column: 10, scope: !3225, inlinedAt: !3335)
!3337 = !DILocation(line: 933, column: 3, scope: !3330)
!3338 = distinct !DISubprogram(name: "quotearg_mem", scope: !426, file: !426, line: 937, type: !3339, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!32, !40, !37}
!3341 = !{!3342, !3343}
!3342 = !DILocalVariable(name: "arg", arg: 1, scope: !3338, file: !426, line: 937, type: !40)
!3343 = !DILocalVariable(name: "argsize", arg: 2, scope: !3338, file: !426, line: 937, type: !37)
!3344 = !DILocation(line: 0, scope: !3338)
!3345 = !DILocation(line: 0, scope: !3320, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 939, column: 10, scope: !3338)
!3347 = !DILocation(line: 927, column: 10, scope: !3320, inlinedAt: !3346)
!3348 = !DILocation(line: 939, column: 3, scope: !3338)
!3349 = distinct !DISubprogram(name: "quotearg_n_style", scope: !426, file: !426, line: 943, type: !3350, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!32, !35, !210, !40}
!3352 = !{!3353, !3354, !3355, !3356}
!3353 = !DILocalVariable(name: "n", arg: 1, scope: !3349, file: !426, line: 943, type: !35)
!3354 = !DILocalVariable(name: "s", arg: 2, scope: !3349, file: !426, line: 943, type: !210)
!3355 = !DILocalVariable(name: "arg", arg: 3, scope: !3349, file: !426, line: 943, type: !40)
!3356 = !DILocalVariable(name: "o", scope: !3349, file: !426, line: 945, type: !2467)
!3357 = !DILocation(line: 0, scope: !3349)
!3358 = !DILocation(line: 945, column: 3, scope: !3349)
!3359 = !DILocation(line: 945, column: 32, scope: !3349)
!3360 = !{!3361}
!3361 = distinct !{!3361, !3362, !"quoting_options_from_style: argument 0"}
!3362 = distinct !{!3362, !"quoting_options_from_style"}
!3363 = !DILocation(line: 945, column: 36, scope: !3349)
!3364 = !DILocalVariable(name: "style", arg: 1, scope: !3365, file: !426, line: 183, type: !210)
!3365 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !426, file: !426, line: 183, type: !3366, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!443, !210}
!3368 = !{!3364, !3369}
!3369 = !DILocalVariable(name: "o", scope: !3365, file: !426, line: 185, type: !443)
!3370 = !DILocation(line: 0, scope: !3365, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 945, column: 36, scope: !3349)
!3372 = !DILocation(line: 185, column: 26, scope: !3365, inlinedAt: !3371)
!3373 = !DILocation(line: 186, column: 13, scope: !3374, inlinedAt: !3371)
!3374 = distinct !DILexicalBlock(scope: !3365, file: !426, line: 186, column: 7)
!3375 = !DILocation(line: 186, column: 7, scope: !3365, inlinedAt: !3371)
!3376 = !DILocation(line: 187, column: 5, scope: !3374, inlinedAt: !3371)
!3377 = !DILocation(line: 188, column: 5, scope: !3365, inlinedAt: !3371)
!3378 = !DILocation(line: 188, column: 11, scope: !3365, inlinedAt: !3371)
!3379 = !DILocation(line: 946, column: 10, scope: !3349)
!3380 = !DILocation(line: 947, column: 1, scope: !3349)
!3381 = !DILocation(line: 946, column: 3, scope: !3349)
!3382 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !426, file: !426, line: 950, type: !3383, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!32, !35, !210, !40, !37}
!3385 = !{!3386, !3387, !3388, !3389, !3390}
!3386 = !DILocalVariable(name: "n", arg: 1, scope: !3382, file: !426, line: 950, type: !35)
!3387 = !DILocalVariable(name: "s", arg: 2, scope: !3382, file: !426, line: 950, type: !210)
!3388 = !DILocalVariable(name: "arg", arg: 3, scope: !3382, file: !426, line: 951, type: !40)
!3389 = !DILocalVariable(name: "argsize", arg: 4, scope: !3382, file: !426, line: 951, type: !37)
!3390 = !DILocalVariable(name: "o", scope: !3382, file: !426, line: 953, type: !2467)
!3391 = !DILocation(line: 0, scope: !3382)
!3392 = !DILocation(line: 953, column: 3, scope: !3382)
!3393 = !DILocation(line: 953, column: 32, scope: !3382)
!3394 = !{!3395}
!3395 = distinct !{!3395, !3396, !"quoting_options_from_style: argument 0"}
!3396 = distinct !{!3396, !"quoting_options_from_style"}
!3397 = !DILocation(line: 953, column: 36, scope: !3382)
!3398 = !DILocation(line: 0, scope: !3365, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 953, column: 36, scope: !3382)
!3400 = !DILocation(line: 185, column: 26, scope: !3365, inlinedAt: !3399)
!3401 = !DILocation(line: 186, column: 13, scope: !3374, inlinedAt: !3399)
!3402 = !DILocation(line: 186, column: 7, scope: !3365, inlinedAt: !3399)
!3403 = !DILocation(line: 187, column: 5, scope: !3374, inlinedAt: !3399)
!3404 = !DILocation(line: 188, column: 5, scope: !3365, inlinedAt: !3399)
!3405 = !DILocation(line: 188, column: 11, scope: !3365, inlinedAt: !3399)
!3406 = !DILocation(line: 954, column: 10, scope: !3382)
!3407 = !DILocation(line: 955, column: 1, scope: !3382)
!3408 = !DILocation(line: 954, column: 3, scope: !3382)
!3409 = distinct !DISubprogram(name: "quotearg_style", scope: !426, file: !426, line: 958, type: !3410, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!32, !210, !40}
!3412 = !{!3413, !3414}
!3413 = !DILocalVariable(name: "s", arg: 1, scope: !3409, file: !426, line: 958, type: !210)
!3414 = !DILocalVariable(name: "arg", arg: 2, scope: !3409, file: !426, line: 958, type: !40)
!3415 = !DILocation(line: 0, scope: !3409)
!3416 = !DILocation(line: 0, scope: !3349, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 960, column: 10, scope: !3409)
!3418 = !DILocation(line: 945, column: 3, scope: !3349, inlinedAt: !3417)
!3419 = !DILocation(line: 945, column: 32, scope: !3349, inlinedAt: !3417)
!3420 = !{!3421}
!3421 = distinct !{!3421, !3422, !"quoting_options_from_style: argument 0"}
!3422 = distinct !{!3422, !"quoting_options_from_style"}
!3423 = !DILocation(line: 945, column: 36, scope: !3349, inlinedAt: !3417)
!3424 = !DILocation(line: 0, scope: !3365, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 945, column: 36, scope: !3349, inlinedAt: !3417)
!3426 = !DILocation(line: 185, column: 26, scope: !3365, inlinedAt: !3425)
!3427 = !DILocation(line: 186, column: 13, scope: !3374, inlinedAt: !3425)
!3428 = !DILocation(line: 186, column: 7, scope: !3365, inlinedAt: !3425)
!3429 = !DILocation(line: 187, column: 5, scope: !3374, inlinedAt: !3425)
!3430 = !DILocation(line: 188, column: 5, scope: !3365, inlinedAt: !3425)
!3431 = !DILocation(line: 188, column: 11, scope: !3365, inlinedAt: !3425)
!3432 = !DILocation(line: 946, column: 10, scope: !3349, inlinedAt: !3417)
!3433 = !DILocation(line: 947, column: 1, scope: !3349, inlinedAt: !3417)
!3434 = !DILocation(line: 960, column: 3, scope: !3409)
!3435 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !426, file: !426, line: 964, type: !3436, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!32, !210, !40, !37}
!3438 = !{!3439, !3440, !3441}
!3439 = !DILocalVariable(name: "s", arg: 1, scope: !3435, file: !426, line: 964, type: !210)
!3440 = !DILocalVariable(name: "arg", arg: 2, scope: !3435, file: !426, line: 964, type: !40)
!3441 = !DILocalVariable(name: "argsize", arg: 3, scope: !3435, file: !426, line: 964, type: !37)
!3442 = !DILocation(line: 0, scope: !3435)
!3443 = !DILocation(line: 0, scope: !3382, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 966, column: 10, scope: !3435)
!3445 = !DILocation(line: 953, column: 3, scope: !3382, inlinedAt: !3444)
!3446 = !DILocation(line: 953, column: 32, scope: !3382, inlinedAt: !3444)
!3447 = !{!3448}
!3448 = distinct !{!3448, !3449, !"quoting_options_from_style: argument 0"}
!3449 = distinct !{!3449, !"quoting_options_from_style"}
!3450 = !DILocation(line: 953, column: 36, scope: !3382, inlinedAt: !3444)
!3451 = !DILocation(line: 0, scope: !3365, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 953, column: 36, scope: !3382, inlinedAt: !3444)
!3453 = !DILocation(line: 185, column: 26, scope: !3365, inlinedAt: !3452)
!3454 = !DILocation(line: 186, column: 13, scope: !3374, inlinedAt: !3452)
!3455 = !DILocation(line: 186, column: 7, scope: !3365, inlinedAt: !3452)
!3456 = !DILocation(line: 187, column: 5, scope: !3374, inlinedAt: !3452)
!3457 = !DILocation(line: 188, column: 5, scope: !3365, inlinedAt: !3452)
!3458 = !DILocation(line: 188, column: 11, scope: !3365, inlinedAt: !3452)
!3459 = !DILocation(line: 954, column: 10, scope: !3382, inlinedAt: !3444)
!3460 = !DILocation(line: 955, column: 1, scope: !3382, inlinedAt: !3444)
!3461 = !DILocation(line: 966, column: 3, scope: !3435)
!3462 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !426, file: !426, line: 970, type: !3463, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!32, !40, !37, !33}
!3465 = !{!3466, !3467, !3468, !3469}
!3466 = !DILocalVariable(name: "arg", arg: 1, scope: !3462, file: !426, line: 970, type: !40)
!3467 = !DILocalVariable(name: "argsize", arg: 2, scope: !3462, file: !426, line: 970, type: !37)
!3468 = !DILocalVariable(name: "ch", arg: 3, scope: !3462, file: !426, line: 970, type: !33)
!3469 = !DILocalVariable(name: "options", scope: !3462, file: !426, line: 972, type: !443)
!3470 = !DILocation(line: 0, scope: !3462)
!3471 = !DILocation(line: 972, column: 3, scope: !3462)
!3472 = !DILocation(line: 972, column: 26, scope: !3462)
!3473 = !DILocation(line: 973, column: 13, scope: !3462)
!3474 = !{i64 0, i64 4, !721, i64 4, i64 4, !712, i64 8, i64 32, !721, i64 40, i64 8, !617, i64 48, i64 8, !617}
!3475 = !DILocation(line: 0, scope: !2487, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 974, column: 3, scope: !3462)
!3477 = !DILocation(line: 147, column: 62, scope: !2487, inlinedAt: !3476)
!3478 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3476)
!3479 = !DILocation(line: 148, column: 15, scope: !2487, inlinedAt: !3476)
!3480 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3476)
!3481 = !DILocation(line: 149, column: 24, scope: !2487, inlinedAt: !3476)
!3482 = !DILocation(line: 149, column: 34, scope: !2487, inlinedAt: !3476)
!3483 = !DILocation(line: 150, column: 19, scope: !2487, inlinedAt: !3476)
!3484 = !DILocation(line: 150, column: 24, scope: !2487, inlinedAt: !3476)
!3485 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3476)
!3486 = !DILocation(line: 975, column: 10, scope: !3462)
!3487 = !DILocation(line: 976, column: 1, scope: !3462)
!3488 = !DILocation(line: 975, column: 3, scope: !3462)
!3489 = distinct !DISubprogram(name: "quotearg_char", scope: !426, file: !426, line: 979, type: !3490, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!32, !40, !33}
!3492 = !{!3493, !3494}
!3493 = !DILocalVariable(name: "arg", arg: 1, scope: !3489, file: !426, line: 979, type: !40)
!3494 = !DILocalVariable(name: "ch", arg: 2, scope: !3489, file: !426, line: 979, type: !33)
!3495 = !DILocation(line: 0, scope: !3489)
!3496 = !DILocation(line: 0, scope: !3462, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 981, column: 10, scope: !3489)
!3498 = !DILocation(line: 972, column: 3, scope: !3462, inlinedAt: !3497)
!3499 = !DILocation(line: 972, column: 26, scope: !3462, inlinedAt: !3497)
!3500 = !DILocation(line: 973, column: 13, scope: !3462, inlinedAt: !3497)
!3501 = !DILocation(line: 0, scope: !2487, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 974, column: 3, scope: !3462, inlinedAt: !3497)
!3503 = !DILocation(line: 147, column: 62, scope: !2487, inlinedAt: !3502)
!3504 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3502)
!3505 = !DILocation(line: 148, column: 15, scope: !2487, inlinedAt: !3502)
!3506 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3502)
!3507 = !DILocation(line: 149, column: 24, scope: !2487, inlinedAt: !3502)
!3508 = !DILocation(line: 149, column: 34, scope: !2487, inlinedAt: !3502)
!3509 = !DILocation(line: 150, column: 19, scope: !2487, inlinedAt: !3502)
!3510 = !DILocation(line: 150, column: 24, scope: !2487, inlinedAt: !3502)
!3511 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3502)
!3512 = !DILocation(line: 975, column: 10, scope: !3462, inlinedAt: !3497)
!3513 = !DILocation(line: 976, column: 1, scope: !3462, inlinedAt: !3497)
!3514 = !DILocation(line: 981, column: 3, scope: !3489)
!3515 = distinct !DISubprogram(name: "quotearg_colon", scope: !426, file: !426, line: 985, type: !824, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3516)
!3516 = !{!3517}
!3517 = !DILocalVariable(name: "arg", arg: 1, scope: !3515, file: !426, line: 985, type: !40)
!3518 = !DILocation(line: 0, scope: !3515)
!3519 = !DILocation(line: 0, scope: !3489, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 987, column: 10, scope: !3515)
!3521 = !DILocation(line: 0, scope: !3462, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 981, column: 10, scope: !3489, inlinedAt: !3520)
!3523 = !DILocation(line: 972, column: 3, scope: !3462, inlinedAt: !3522)
!3524 = !DILocation(line: 972, column: 26, scope: !3462, inlinedAt: !3522)
!3525 = !DILocation(line: 973, column: 13, scope: !3462, inlinedAt: !3522)
!3526 = !DILocation(line: 0, scope: !2487, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 974, column: 3, scope: !3462, inlinedAt: !3522)
!3528 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3527)
!3529 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3527)
!3530 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3527)
!3531 = !DILocation(line: 975, column: 10, scope: !3462, inlinedAt: !3522)
!3532 = !DILocation(line: 976, column: 1, scope: !3462, inlinedAt: !3522)
!3533 = !DILocation(line: 987, column: 3, scope: !3515)
!3534 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !426, file: !426, line: 991, type: !3339, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3535)
!3535 = !{!3536, !3537}
!3536 = !DILocalVariable(name: "arg", arg: 1, scope: !3534, file: !426, line: 991, type: !40)
!3537 = !DILocalVariable(name: "argsize", arg: 2, scope: !3534, file: !426, line: 991, type: !37)
!3538 = !DILocation(line: 0, scope: !3534)
!3539 = !DILocation(line: 0, scope: !3462, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 993, column: 10, scope: !3534)
!3541 = !DILocation(line: 972, column: 3, scope: !3462, inlinedAt: !3540)
!3542 = !DILocation(line: 972, column: 26, scope: !3462, inlinedAt: !3540)
!3543 = !DILocation(line: 973, column: 13, scope: !3462, inlinedAt: !3540)
!3544 = !DILocation(line: 0, scope: !2487, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 974, column: 3, scope: !3462, inlinedAt: !3540)
!3546 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3545)
!3547 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3545)
!3548 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3545)
!3549 = !DILocation(line: 975, column: 10, scope: !3462, inlinedAt: !3540)
!3550 = !DILocation(line: 976, column: 1, scope: !3462, inlinedAt: !3540)
!3551 = !DILocation(line: 993, column: 3, scope: !3534)
!3552 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !426, file: !426, line: 997, type: !3350, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3553)
!3553 = !{!3554, !3555, !3556, !3557}
!3554 = !DILocalVariable(name: "n", arg: 1, scope: !3552, file: !426, line: 997, type: !35)
!3555 = !DILocalVariable(name: "s", arg: 2, scope: !3552, file: !426, line: 997, type: !210)
!3556 = !DILocalVariable(name: "arg", arg: 3, scope: !3552, file: !426, line: 997, type: !40)
!3557 = !DILocalVariable(name: "options", scope: !3552, file: !426, line: 999, type: !443)
!3558 = !DILocation(line: 0, scope: !3552)
!3559 = !DILocation(line: 999, column: 3, scope: !3552)
!3560 = !DILocation(line: 999, column: 26, scope: !3552)
!3561 = !DILocation(line: 0, scope: !3365, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 1000, column: 13, scope: !3552)
!3563 = !DILocation(line: 186, column: 13, scope: !3374, inlinedAt: !3562)
!3564 = !DILocation(line: 186, column: 7, scope: !3365, inlinedAt: !3562)
!3565 = !DILocation(line: 187, column: 5, scope: !3374, inlinedAt: !3562)
!3566 = !{!3567}
!3567 = distinct !{!3567, !3568, !"quoting_options_from_style: argument 0"}
!3568 = distinct !{!3568, !"quoting_options_from_style"}
!3569 = !DILocation(line: 1000, column: 13, scope: !3552)
!3570 = !DILocation(line: 0, scope: !2487, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 1001, column: 3, scope: !3552)
!3572 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3571)
!3573 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3571)
!3574 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3571)
!3575 = !DILocation(line: 1002, column: 10, scope: !3552)
!3576 = !DILocation(line: 1003, column: 1, scope: !3552)
!3577 = !DILocation(line: 1002, column: 3, scope: !3552)
!3578 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !426, file: !426, line: 1006, type: !3579, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!32, !35, !40, !40, !40}
!3581 = !{!3582, !3583, !3584, !3585}
!3582 = !DILocalVariable(name: "n", arg: 1, scope: !3578, file: !426, line: 1006, type: !35)
!3583 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3578, file: !426, line: 1006, type: !40)
!3584 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3578, file: !426, line: 1007, type: !40)
!3585 = !DILocalVariable(name: "arg", arg: 4, scope: !3578, file: !426, line: 1007, type: !40)
!3586 = !DILocation(line: 0, scope: !3578)
!3587 = !DILocalVariable(name: "n", arg: 1, scope: !3588, file: !426, line: 1014, type: !35)
!3588 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !426, file: !426, line: 1014, type: !3589, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!32, !35, !40, !40, !40, !37}
!3591 = !{!3587, !3592, !3593, !3594, !3595, !3596}
!3592 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3588, file: !426, line: 1014, type: !40)
!3593 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3588, file: !426, line: 1015, type: !40)
!3594 = !DILocalVariable(name: "arg", arg: 4, scope: !3588, file: !426, line: 1016, type: !40)
!3595 = !DILocalVariable(name: "argsize", arg: 5, scope: !3588, file: !426, line: 1016, type: !37)
!3596 = !DILocalVariable(name: "o", scope: !3588, file: !426, line: 1018, type: !443)
!3597 = !DILocation(line: 0, scope: !3588, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 1009, column: 10, scope: !3578)
!3599 = !DILocation(line: 1018, column: 3, scope: !3588, inlinedAt: !3598)
!3600 = !DILocation(line: 1018, column: 26, scope: !3588, inlinedAt: !3598)
!3601 = !DILocation(line: 1018, column: 30, scope: !3588, inlinedAt: !3598)
!3602 = !DILocation(line: 0, scope: !2527, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 1019, column: 3, scope: !3588, inlinedAt: !3598)
!3604 = !DILocation(line: 174, column: 6, scope: !2527, inlinedAt: !3603)
!3605 = !DILocation(line: 174, column: 12, scope: !2527, inlinedAt: !3603)
!3606 = !DILocation(line: 175, column: 8, scope: !2541, inlinedAt: !3603)
!3607 = !DILocation(line: 175, column: 19, scope: !2541, inlinedAt: !3603)
!3608 = !DILocation(line: 176, column: 5, scope: !2541, inlinedAt: !3603)
!3609 = !DILocation(line: 177, column: 6, scope: !2527, inlinedAt: !3603)
!3610 = !DILocation(line: 177, column: 17, scope: !2527, inlinedAt: !3603)
!3611 = !DILocation(line: 178, column: 6, scope: !2527, inlinedAt: !3603)
!3612 = !DILocation(line: 178, column: 18, scope: !2527, inlinedAt: !3603)
!3613 = !DILocation(line: 1020, column: 10, scope: !3588, inlinedAt: !3598)
!3614 = !DILocation(line: 1021, column: 1, scope: !3588, inlinedAt: !3598)
!3615 = !DILocation(line: 1009, column: 3, scope: !3578)
!3616 = !DILocation(line: 0, scope: !3588)
!3617 = !DILocation(line: 1018, column: 3, scope: !3588)
!3618 = !DILocation(line: 1018, column: 26, scope: !3588)
!3619 = !DILocation(line: 1018, column: 30, scope: !3588)
!3620 = !DILocation(line: 0, scope: !2527, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 1019, column: 3, scope: !3588)
!3622 = !DILocation(line: 174, column: 6, scope: !2527, inlinedAt: !3621)
!3623 = !DILocation(line: 174, column: 12, scope: !2527, inlinedAt: !3621)
!3624 = !DILocation(line: 175, column: 8, scope: !2541, inlinedAt: !3621)
!3625 = !DILocation(line: 175, column: 19, scope: !2541, inlinedAt: !3621)
!3626 = !DILocation(line: 176, column: 5, scope: !2541, inlinedAt: !3621)
!3627 = !DILocation(line: 177, column: 6, scope: !2527, inlinedAt: !3621)
!3628 = !DILocation(line: 177, column: 17, scope: !2527, inlinedAt: !3621)
!3629 = !DILocation(line: 178, column: 6, scope: !2527, inlinedAt: !3621)
!3630 = !DILocation(line: 178, column: 18, scope: !2527, inlinedAt: !3621)
!3631 = !DILocation(line: 1020, column: 10, scope: !3588)
!3632 = !DILocation(line: 1021, column: 1, scope: !3588)
!3633 = !DILocation(line: 1020, column: 3, scope: !3588)
!3634 = distinct !DISubprogram(name: "quotearg_custom", scope: !426, file: !426, line: 1024, type: !3635, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!32, !40, !40, !40}
!3637 = !{!3638, !3639, !3640}
!3638 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3634, file: !426, line: 1024, type: !40)
!3639 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3634, file: !426, line: 1024, type: !40)
!3640 = !DILocalVariable(name: "arg", arg: 3, scope: !3634, file: !426, line: 1025, type: !40)
!3641 = !DILocation(line: 0, scope: !3634)
!3642 = !DILocation(line: 0, scope: !3578, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 1027, column: 10, scope: !3634)
!3644 = !DILocation(line: 0, scope: !3588, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 1009, column: 10, scope: !3578, inlinedAt: !3643)
!3646 = !DILocation(line: 1018, column: 3, scope: !3588, inlinedAt: !3645)
!3647 = !DILocation(line: 1018, column: 26, scope: !3588, inlinedAt: !3645)
!3648 = !DILocation(line: 1018, column: 30, scope: !3588, inlinedAt: !3645)
!3649 = !DILocation(line: 0, scope: !2527, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 1019, column: 3, scope: !3588, inlinedAt: !3645)
!3651 = !DILocation(line: 174, column: 6, scope: !2527, inlinedAt: !3650)
!3652 = !DILocation(line: 174, column: 12, scope: !2527, inlinedAt: !3650)
!3653 = !DILocation(line: 175, column: 8, scope: !2541, inlinedAt: !3650)
!3654 = !DILocation(line: 175, column: 19, scope: !2541, inlinedAt: !3650)
!3655 = !DILocation(line: 176, column: 5, scope: !2541, inlinedAt: !3650)
!3656 = !DILocation(line: 177, column: 6, scope: !2527, inlinedAt: !3650)
!3657 = !DILocation(line: 177, column: 17, scope: !2527, inlinedAt: !3650)
!3658 = !DILocation(line: 178, column: 6, scope: !2527, inlinedAt: !3650)
!3659 = !DILocation(line: 178, column: 18, scope: !2527, inlinedAt: !3650)
!3660 = !DILocation(line: 1020, column: 10, scope: !3588, inlinedAt: !3645)
!3661 = !DILocation(line: 1021, column: 1, scope: !3588, inlinedAt: !3645)
!3662 = !DILocation(line: 1027, column: 3, scope: !3634)
!3663 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !426, file: !426, line: 1031, type: !3664, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!32, !40, !40, !40, !37}
!3666 = !{!3667, !3668, !3669, !3670}
!3667 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3663, file: !426, line: 1031, type: !40)
!3668 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3663, file: !426, line: 1031, type: !40)
!3669 = !DILocalVariable(name: "arg", arg: 3, scope: !3663, file: !426, line: 1032, type: !40)
!3670 = !DILocalVariable(name: "argsize", arg: 4, scope: !3663, file: !426, line: 1032, type: !37)
!3671 = !DILocation(line: 0, scope: !3663)
!3672 = !DILocation(line: 0, scope: !3588, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 1034, column: 10, scope: !3663)
!3674 = !DILocation(line: 1018, column: 3, scope: !3588, inlinedAt: !3673)
!3675 = !DILocation(line: 1018, column: 26, scope: !3588, inlinedAt: !3673)
!3676 = !DILocation(line: 1018, column: 30, scope: !3588, inlinedAt: !3673)
!3677 = !DILocation(line: 0, scope: !2527, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 1019, column: 3, scope: !3588, inlinedAt: !3673)
!3679 = !DILocation(line: 174, column: 6, scope: !2527, inlinedAt: !3678)
!3680 = !DILocation(line: 174, column: 12, scope: !2527, inlinedAt: !3678)
!3681 = !DILocation(line: 175, column: 8, scope: !2541, inlinedAt: !3678)
!3682 = !DILocation(line: 175, column: 19, scope: !2541, inlinedAt: !3678)
!3683 = !DILocation(line: 176, column: 5, scope: !2541, inlinedAt: !3678)
!3684 = !DILocation(line: 177, column: 6, scope: !2527, inlinedAt: !3678)
!3685 = !DILocation(line: 177, column: 17, scope: !2527, inlinedAt: !3678)
!3686 = !DILocation(line: 178, column: 6, scope: !2527, inlinedAt: !3678)
!3687 = !DILocation(line: 178, column: 18, scope: !2527, inlinedAt: !3678)
!3688 = !DILocation(line: 1020, column: 10, scope: !3588, inlinedAt: !3673)
!3689 = !DILocation(line: 1021, column: 1, scope: !3588, inlinedAt: !3673)
!3690 = !DILocation(line: 1034, column: 3, scope: !3663)
!3691 = distinct !DISubprogram(name: "quote_n_mem", scope: !426, file: !426, line: 1049, type: !3692, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!40, !35, !40, !37}
!3694 = !{!3695, !3696, !3697}
!3695 = !DILocalVariable(name: "n", arg: 1, scope: !3691, file: !426, line: 1049, type: !35)
!3696 = !DILocalVariable(name: "arg", arg: 2, scope: !3691, file: !426, line: 1049, type: !40)
!3697 = !DILocalVariable(name: "argsize", arg: 3, scope: !3691, file: !426, line: 1049, type: !37)
!3698 = !DILocation(line: 0, scope: !3691)
!3699 = !DILocation(line: 1051, column: 10, scope: !3691)
!3700 = !DILocation(line: 1051, column: 3, scope: !3691)
!3701 = distinct !DISubprogram(name: "quote_mem", scope: !426, file: !426, line: 1055, type: !3702, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!40, !40, !37}
!3704 = !{!3705, !3706}
!3705 = !DILocalVariable(name: "arg", arg: 1, scope: !3701, file: !426, line: 1055, type: !40)
!3706 = !DILocalVariable(name: "argsize", arg: 2, scope: !3701, file: !426, line: 1055, type: !37)
!3707 = !DILocation(line: 0, scope: !3701)
!3708 = !DILocation(line: 0, scope: !3691, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 1057, column: 10, scope: !3701)
!3710 = !DILocation(line: 1051, column: 10, scope: !3691, inlinedAt: !3709)
!3711 = !DILocation(line: 1057, column: 3, scope: !3701)
!3712 = distinct !DISubprogram(name: "quote_n", scope: !426, file: !426, line: 1061, type: !3713, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!40, !35, !40}
!3715 = !{!3716, !3717}
!3716 = !DILocalVariable(name: "n", arg: 1, scope: !3712, file: !426, line: 1061, type: !35)
!3717 = !DILocalVariable(name: "arg", arg: 2, scope: !3712, file: !426, line: 1061, type: !40)
!3718 = !DILocation(line: 0, scope: !3712)
!3719 = !DILocation(line: 0, scope: !3691, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 1063, column: 10, scope: !3712)
!3721 = !DILocation(line: 1051, column: 10, scope: !3691, inlinedAt: !3720)
!3722 = !DILocation(line: 1063, column: 3, scope: !3712)
!3723 = distinct !DISubprogram(name: "quote", scope: !426, file: !426, line: 1067, type: !3724, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!40, !40}
!3726 = !{!3727}
!3727 = !DILocalVariable(name: "arg", arg: 1, scope: !3723, file: !426, line: 1067, type: !40)
!3728 = !DILocation(line: 0, scope: !3723)
!3729 = !DILocation(line: 0, scope: !3712, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 1069, column: 10, scope: !3723)
!3731 = !DILocation(line: 0, scope: !3691, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 1063, column: 10, scope: !3712, inlinedAt: !3730)
!3733 = !DILocation(line: 1051, column: 10, scope: !3691, inlinedAt: !3732)
!3734 = !DILocation(line: 1069, column: 3, scope: !3723)
!3735 = distinct !DISubprogram(name: "version_etc_arn", scope: !543, file: !543, line: 61, type: !3736, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3773)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{null, !3738, !40, !40, !40, !3772, !37}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3740, file: !74, line: 51, baseType: !35, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3740, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3740, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3740, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3740, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3740, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3740, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3740, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3740, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3740, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3740, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3740, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3740, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3740, file: !74, line: 70, baseType: !3756, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3740, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3740, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3740, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3740, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3740, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3740, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3740, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3740, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3740, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3740, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3740, file: !74, line: 93, baseType: !3756, size: 64, offset: 1344)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3740, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3740, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3740, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3740, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779}
!3774 = !DILocalVariable(name: "stream", arg: 1, scope: !3735, file: !543, line: 61, type: !3738)
!3775 = !DILocalVariable(name: "command_name", arg: 2, scope: !3735, file: !543, line: 62, type: !40)
!3776 = !DILocalVariable(name: "package", arg: 3, scope: !3735, file: !543, line: 62, type: !40)
!3777 = !DILocalVariable(name: "version", arg: 4, scope: !3735, file: !543, line: 63, type: !40)
!3778 = !DILocalVariable(name: "authors", arg: 5, scope: !3735, file: !543, line: 64, type: !3772)
!3779 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3735, file: !543, line: 64, type: !37)
!3780 = !DILocation(line: 0, scope: !3735)
!3781 = !DILocation(line: 66, column: 7, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3735, file: !543, line: 66, column: 7)
!3783 = !DILocation(line: 66, column: 7, scope: !3735)
!3784 = !DILocation(line: 67, column: 5, scope: !3782)
!3785 = !DILocation(line: 69, column: 5, scope: !3782)
!3786 = !DILocation(line: 83, column: 3, scope: !3735)
!3787 = !DILocation(line: 85, column: 3, scope: !3735)
!3788 = !DILocation(line: 88, column: 3, scope: !3735)
!3789 = !DILocation(line: 95, column: 3, scope: !3735)
!3790 = !DILocation(line: 97, column: 3, scope: !3735)
!3791 = !DILocation(line: 105, column: 7, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3735, file: !543, line: 98, column: 5)
!3793 = !DILocation(line: 106, column: 7, scope: !3792)
!3794 = !DILocation(line: 109, column: 7, scope: !3792)
!3795 = !DILocation(line: 110, column: 7, scope: !3792)
!3796 = !DILocation(line: 113, column: 7, scope: !3792)
!3797 = !DILocation(line: 115, column: 7, scope: !3792)
!3798 = !DILocation(line: 120, column: 7, scope: !3792)
!3799 = !DILocation(line: 122, column: 7, scope: !3792)
!3800 = !DILocation(line: 127, column: 7, scope: !3792)
!3801 = !DILocation(line: 129, column: 7, scope: !3792)
!3802 = !DILocation(line: 134, column: 7, scope: !3792)
!3803 = !DILocation(line: 137, column: 7, scope: !3792)
!3804 = !DILocation(line: 142, column: 7, scope: !3792)
!3805 = !DILocation(line: 145, column: 7, scope: !3792)
!3806 = !DILocation(line: 150, column: 7, scope: !3792)
!3807 = !DILocation(line: 154, column: 7, scope: !3792)
!3808 = !DILocation(line: 159, column: 7, scope: !3792)
!3809 = !DILocation(line: 163, column: 7, scope: !3792)
!3810 = !DILocation(line: 170, column: 7, scope: !3792)
!3811 = !DILocation(line: 174, column: 7, scope: !3792)
!3812 = !DILocation(line: 176, column: 1, scope: !3735)
!3813 = distinct !DISubprogram(name: "version_etc_ar", scope: !543, file: !543, line: 183, type: !3814, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3738, !40, !40, !40, !3772}
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822}
!3817 = !DILocalVariable(name: "stream", arg: 1, scope: !3813, file: !543, line: 183, type: !3738)
!3818 = !DILocalVariable(name: "command_name", arg: 2, scope: !3813, file: !543, line: 184, type: !40)
!3819 = !DILocalVariable(name: "package", arg: 3, scope: !3813, file: !543, line: 184, type: !40)
!3820 = !DILocalVariable(name: "version", arg: 4, scope: !3813, file: !543, line: 185, type: !40)
!3821 = !DILocalVariable(name: "authors", arg: 5, scope: !3813, file: !543, line: 185, type: !3772)
!3822 = !DILocalVariable(name: "n_authors", scope: !3813, file: !543, line: 187, type: !37)
!3823 = !DILocation(line: 0, scope: !3813)
!3824 = !DILocation(line: 189, column: 8, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3813, file: !543, line: 189, column: 3)
!3826 = !DILocation(line: 0, scope: !3825)
!3827 = !DILocation(line: 189, column: 23, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !543, line: 189, column: 3)
!3829 = !DILocation(line: 189, column: 3, scope: !3825)
!3830 = !DILocation(line: 189, column: 52, scope: !3828)
!3831 = distinct !{!3831, !3829, !3832, !679}
!3832 = !DILocation(line: 190, column: 5, scope: !3825)
!3833 = !DILocation(line: 191, column: 3, scope: !3813)
!3834 = !DILocation(line: 192, column: 1, scope: !3813)
!3835 = distinct !DISubprogram(name: "version_etc_va", scope: !543, file: !543, line: 199, type: !3836, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3849)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !3738, !40, !40, !40, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !360, line: 52, baseType: !3839)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !362, line: 32, baseType: !3840)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3841, baseType: !3842)
!3841 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !366, size: 256, elements: !3843)
!3843 = !{!3844, !3845, !3846, !3847, !3848}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3842, file: !3841, line: 192, baseType: !34, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3842, file: !3841, line: 192, baseType: !34, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3842, file: !3841, line: 192, baseType: !34, size: 64, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3842, file: !3841, line: 192, baseType: !35, size: 32, offset: 192)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3842, file: !3841, line: 192, baseType: !35, size: 32, offset: 224)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856}
!3850 = !DILocalVariable(name: "stream", arg: 1, scope: !3835, file: !543, line: 199, type: !3738)
!3851 = !DILocalVariable(name: "command_name", arg: 2, scope: !3835, file: !543, line: 200, type: !40)
!3852 = !DILocalVariable(name: "package", arg: 3, scope: !3835, file: !543, line: 200, type: !40)
!3853 = !DILocalVariable(name: "version", arg: 4, scope: !3835, file: !543, line: 201, type: !40)
!3854 = !DILocalVariable(name: "authors", arg: 5, scope: !3835, file: !543, line: 201, type: !3838)
!3855 = !DILocalVariable(name: "n_authors", scope: !3835, file: !543, line: 203, type: !37)
!3856 = !DILocalVariable(name: "authtab", scope: !3835, file: !543, line: 204, type: !3857)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 640, elements: !439)
!3858 = !DILocation(line: 0, scope: !3835)
!3859 = !DILocation(line: 201, column: 46, scope: !3835)
!3860 = !DILocation(line: 204, column: 3, scope: !3835)
!3861 = !DILocation(line: 204, column: 15, scope: !3835)
!3862 = !DILocation(line: 208, column: 35, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !543, line: 206, column: 3)
!3864 = distinct !DILexicalBlock(scope: !3835, file: !543, line: 206, column: 3)
!3865 = !DILocation(line: 208, column: 14, scope: !3863)
!3866 = !DILocation(line: 208, column: 33, scope: !3863)
!3867 = !DILocation(line: 208, column: 67, scope: !3863)
!3868 = !DILocation(line: 206, column: 3, scope: !3864)
!3869 = !DILocation(line: 0, scope: !3864)
!3870 = !DILocation(line: 211, column: 3, scope: !3835)
!3871 = !DILocation(line: 213, column: 1, scope: !3835)
!3872 = distinct !DISubprogram(name: "version_etc", scope: !543, file: !543, line: 230, type: !3873, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !3738, !40, !40, !40, null}
!3875 = !{!3876, !3877, !3878, !3879, !3880}
!3876 = !DILocalVariable(name: "stream", arg: 1, scope: !3872, file: !543, line: 230, type: !3738)
!3877 = !DILocalVariable(name: "command_name", arg: 2, scope: !3872, file: !543, line: 231, type: !40)
!3878 = !DILocalVariable(name: "package", arg: 3, scope: !3872, file: !543, line: 231, type: !40)
!3879 = !DILocalVariable(name: "version", arg: 4, scope: !3872, file: !543, line: 232, type: !40)
!3880 = !DILocalVariable(name: "authors", scope: !3872, file: !543, line: 234, type: !3838)
!3881 = !DILocation(line: 0, scope: !3872)
!3882 = !DILocation(line: 234, column: 3, scope: !3872)
!3883 = !DILocation(line: 234, column: 11, scope: !3872)
!3884 = !DILocation(line: 235, column: 3, scope: !3872)
!3885 = !DILocation(line: 236, column: 3, scope: !3872)
!3886 = !DILocation(line: 237, column: 3, scope: !3872)
!3887 = !DILocation(line: 238, column: 1, scope: !3872)
!3888 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !543, file: !543, line: 241, type: !148, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !626)
!3889 = !DILocation(line: 243, column: 3, scope: !3888)
!3890 = !DILocation(line: 248, column: 3, scope: !3888)
!3891 = !DILocation(line: 254, column: 3, scope: !3888)
!3892 = !DILocation(line: 259, column: 3, scope: !3888)
!3893 = !DILocation(line: 261, column: 1, scope: !3888)
!3894 = distinct !DISubprogram(name: "xnrealloc", scope: !3895, file: !3895, line: 147, type: !3896, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3898)
!3895 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!34, !34, !37, !37}
!3898 = !{!3899, !3900, !3901}
!3899 = !DILocalVariable(name: "p", arg: 1, scope: !3894, file: !3895, line: 147, type: !34)
!3900 = !DILocalVariable(name: "n", arg: 2, scope: !3894, file: !3895, line: 147, type: !37)
!3901 = !DILocalVariable(name: "s", arg: 3, scope: !3894, file: !3895, line: 147, type: !37)
!3902 = !DILocation(line: 0, scope: !3894)
!3903 = !DILocalVariable(name: "p", arg: 1, scope: !3904, file: !549, line: 83, type: !34)
!3904 = distinct !DISubprogram(name: "xreallocarray", scope: !549, file: !549, line: 83, type: !3896, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3905)
!3905 = !{!3903, !3906, !3907}
!3906 = !DILocalVariable(name: "n", arg: 2, scope: !3904, file: !549, line: 83, type: !37)
!3907 = !DILocalVariable(name: "s", arg: 3, scope: !3904, file: !549, line: 83, type: !37)
!3908 = !DILocation(line: 0, scope: !3904, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 149, column: 10, scope: !3894)
!3910 = !DILocation(line: 85, column: 25, scope: !3904, inlinedAt: !3909)
!3911 = !DILocalVariable(name: "p", arg: 1, scope: !3912, file: !549, line: 37, type: !34)
!3912 = distinct !DISubprogram(name: "check_nonnull", scope: !549, file: !549, line: 37, type: !3913, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3915)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!34, !34}
!3915 = !{!3911}
!3916 = !DILocation(line: 0, scope: !3912, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 85, column: 10, scope: !3904, inlinedAt: !3909)
!3918 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !3917)
!3919 = distinct !DILexicalBlock(scope: !3912, file: !549, line: 39, column: 7)
!3920 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !3917)
!3921 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !3917)
!3922 = !DILocation(line: 149, column: 3, scope: !3894)
!3923 = !DILocation(line: 0, scope: !3904)
!3924 = !DILocation(line: 85, column: 25, scope: !3904)
!3925 = !DILocation(line: 0, scope: !3912, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 85, column: 10, scope: !3904)
!3927 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !3926)
!3928 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !3926)
!3929 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !3926)
!3930 = !DILocation(line: 85, column: 3, scope: !3904)
!3931 = distinct !DISubprogram(name: "xmalloc", scope: !549, file: !549, line: 47, type: !3932, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!34, !37}
!3934 = !{!3935}
!3935 = !DILocalVariable(name: "s", arg: 1, scope: !3931, file: !549, line: 47, type: !37)
!3936 = !DILocation(line: 0, scope: !3931)
!3937 = !DILocation(line: 49, column: 25, scope: !3931)
!3938 = !DILocation(line: 0, scope: !3912, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 49, column: 10, scope: !3931)
!3940 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !3939)
!3941 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !3939)
!3942 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !3939)
!3943 = !DILocation(line: 49, column: 3, scope: !3931)
!3944 = distinct !DISubprogram(name: "ximalloc", scope: !549, file: !549, line: 53, type: !3945, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!34, !160}
!3947 = !{!3948}
!3948 = !DILocalVariable(name: "s", arg: 1, scope: !3944, file: !549, line: 53, type: !160)
!3949 = !DILocation(line: 0, scope: !3944)
!3950 = !DILocalVariable(name: "s", arg: 1, scope: !3951, file: !3952, line: 55, type: !160)
!3951 = distinct !DISubprogram(name: "imalloc", scope: !3952, file: !3952, line: 55, type: !3945, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3953)
!3952 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3953 = !{!3950}
!3954 = !DILocation(line: 0, scope: !3951, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 55, column: 25, scope: !3944)
!3956 = !DILocation(line: 57, column: 26, scope: !3951, inlinedAt: !3955)
!3957 = !DILocation(line: 0, scope: !3912, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 55, column: 10, scope: !3944)
!3959 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !3958)
!3960 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !3958)
!3961 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !3958)
!3962 = !DILocation(line: 55, column: 3, scope: !3944)
!3963 = distinct !DISubprogram(name: "xcharalloc", scope: !549, file: !549, line: 59, type: !3964, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!32, !37}
!3966 = !{!3967}
!3967 = !DILocalVariable(name: "n", arg: 1, scope: !3963, file: !549, line: 59, type: !37)
!3968 = !DILocation(line: 0, scope: !3963)
!3969 = !DILocation(line: 0, scope: !3931, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 61, column: 10, scope: !3963)
!3971 = !DILocation(line: 49, column: 25, scope: !3931, inlinedAt: !3970)
!3972 = !DILocation(line: 0, scope: !3912, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 49, column: 10, scope: !3931, inlinedAt: !3970)
!3974 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !3973)
!3975 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !3973)
!3976 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !3973)
!3977 = !DILocation(line: 61, column: 3, scope: !3963)
!3978 = distinct !DISubprogram(name: "xrealloc", scope: !549, file: !549, line: 68, type: !3979, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!34, !34, !37}
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "p", arg: 1, scope: !3978, file: !549, line: 68, type: !34)
!3983 = !DILocalVariable(name: "s", arg: 2, scope: !3978, file: !549, line: 68, type: !37)
!3984 = !DILocation(line: 0, scope: !3978)
!3985 = !DILocalVariable(name: "ptr", arg: 1, scope: !3986, file: !3987, line: 2057, type: !34)
!3986 = distinct !DISubprogram(name: "rpl_realloc", scope: !3987, file: !3987, line: 2057, type: !3979, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3988)
!3987 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3988 = !{!3985, !3989}
!3989 = !DILocalVariable(name: "size", arg: 2, scope: !3986, file: !3987, line: 2057, type: !37)
!3990 = !DILocation(line: 0, scope: !3986, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 70, column: 25, scope: !3978)
!3992 = !DILocation(line: 2059, column: 24, scope: !3986, inlinedAt: !3991)
!3993 = !DILocation(line: 2059, column: 10, scope: !3986, inlinedAt: !3991)
!3994 = !DILocation(line: 0, scope: !3912, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 70, column: 10, scope: !3978)
!3996 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !3995)
!3997 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !3995)
!3998 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !3995)
!3999 = !DILocation(line: 70, column: 3, scope: !3978)
!4000 = distinct !DISubprogram(name: "xirealloc", scope: !549, file: !549, line: 74, type: !4001, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4003)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!34, !34, !160}
!4003 = !{!4004, !4005}
!4004 = !DILocalVariable(name: "p", arg: 1, scope: !4000, file: !549, line: 74, type: !34)
!4005 = !DILocalVariable(name: "s", arg: 2, scope: !4000, file: !549, line: 74, type: !160)
!4006 = !DILocation(line: 0, scope: !4000)
!4007 = !DILocalVariable(name: "p", arg: 1, scope: !4008, file: !3952, line: 66, type: !34)
!4008 = distinct !DISubprogram(name: "irealloc", scope: !3952, file: !3952, line: 66, type: !4001, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4009)
!4009 = !{!4007, !4010}
!4010 = !DILocalVariable(name: "s", arg: 2, scope: !4008, file: !3952, line: 66, type: !160)
!4011 = !DILocation(line: 0, scope: !4008, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 76, column: 25, scope: !4000)
!4013 = !DILocation(line: 0, scope: !3986, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 68, column: 26, scope: !4008, inlinedAt: !4012)
!4015 = !DILocation(line: 2059, column: 24, scope: !3986, inlinedAt: !4014)
!4016 = !DILocation(line: 2059, column: 10, scope: !3986, inlinedAt: !4014)
!4017 = !DILocation(line: 0, scope: !3912, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 76, column: 10, scope: !4000)
!4019 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4018)
!4020 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4018)
!4021 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4018)
!4022 = !DILocation(line: 76, column: 3, scope: !4000)
!4023 = distinct !DISubprogram(name: "xireallocarray", scope: !549, file: !549, line: 89, type: !4024, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!34, !34, !160, !160}
!4026 = !{!4027, !4028, !4029}
!4027 = !DILocalVariable(name: "p", arg: 1, scope: !4023, file: !549, line: 89, type: !34)
!4028 = !DILocalVariable(name: "n", arg: 2, scope: !4023, file: !549, line: 89, type: !160)
!4029 = !DILocalVariable(name: "s", arg: 3, scope: !4023, file: !549, line: 89, type: !160)
!4030 = !DILocation(line: 0, scope: !4023)
!4031 = !DILocalVariable(name: "p", arg: 1, scope: !4032, file: !3952, line: 98, type: !34)
!4032 = distinct !DISubprogram(name: "ireallocarray", scope: !3952, file: !3952, line: 98, type: !4024, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4033)
!4033 = !{!4031, !4034, !4035}
!4034 = !DILocalVariable(name: "n", arg: 2, scope: !4032, file: !3952, line: 98, type: !160)
!4035 = !DILocalVariable(name: "s", arg: 3, scope: !4032, file: !3952, line: 98, type: !160)
!4036 = !DILocation(line: 0, scope: !4032, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 91, column: 25, scope: !4023)
!4038 = !DILocation(line: 101, column: 13, scope: !4032, inlinedAt: !4037)
!4039 = !DILocation(line: 0, scope: !3912, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 91, column: 10, scope: !4023)
!4041 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4040)
!4042 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4040)
!4043 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4040)
!4044 = !DILocation(line: 91, column: 3, scope: !4023)
!4045 = distinct !DISubprogram(name: "xnmalloc", scope: !549, file: !549, line: 98, type: !4046, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4048)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!34, !37, !37}
!4048 = !{!4049, !4050}
!4049 = !DILocalVariable(name: "n", arg: 1, scope: !4045, file: !549, line: 98, type: !37)
!4050 = !DILocalVariable(name: "s", arg: 2, scope: !4045, file: !549, line: 98, type: !37)
!4051 = !DILocation(line: 0, scope: !4045)
!4052 = !DILocation(line: 0, scope: !3904, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 100, column: 10, scope: !4045)
!4054 = !DILocation(line: 85, column: 25, scope: !3904, inlinedAt: !4053)
!4055 = !DILocation(line: 0, scope: !3912, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 85, column: 10, scope: !3904, inlinedAt: !4053)
!4057 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4056)
!4058 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4056)
!4059 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4056)
!4060 = !DILocation(line: 100, column: 3, scope: !4045)
!4061 = distinct !DISubprogram(name: "xinmalloc", scope: !549, file: !549, line: 104, type: !4062, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!34, !160, !160}
!4064 = !{!4065, !4066}
!4065 = !DILocalVariable(name: "n", arg: 1, scope: !4061, file: !549, line: 104, type: !160)
!4066 = !DILocalVariable(name: "s", arg: 2, scope: !4061, file: !549, line: 104, type: !160)
!4067 = !DILocation(line: 0, scope: !4061)
!4068 = !DILocation(line: 0, scope: !4023, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 106, column: 10, scope: !4061)
!4070 = !DILocation(line: 0, scope: !4032, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 91, column: 25, scope: !4023, inlinedAt: !4069)
!4072 = !DILocation(line: 101, column: 13, scope: !4032, inlinedAt: !4071)
!4073 = !DILocation(line: 0, scope: !3912, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 91, column: 10, scope: !4023, inlinedAt: !4069)
!4075 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4074)
!4076 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4074)
!4077 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4074)
!4078 = !DILocation(line: 106, column: 3, scope: !4061)
!4079 = distinct !DISubprogram(name: "x2realloc", scope: !549, file: !549, line: 116, type: !4080, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!34, !34, !555}
!4082 = !{!4083, !4084}
!4083 = !DILocalVariable(name: "p", arg: 1, scope: !4079, file: !549, line: 116, type: !34)
!4084 = !DILocalVariable(name: "ps", arg: 2, scope: !4079, file: !549, line: 116, type: !555)
!4085 = !DILocation(line: 0, scope: !4079)
!4086 = !DILocation(line: 0, scope: !552, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 118, column: 10, scope: !4079)
!4088 = !DILocation(line: 178, column: 14, scope: !552, inlinedAt: !4087)
!4089 = !DILocation(line: 180, column: 9, scope: !4090, inlinedAt: !4087)
!4090 = distinct !DILexicalBlock(scope: !552, file: !549, line: 180, column: 7)
!4091 = !DILocation(line: 180, column: 7, scope: !552, inlinedAt: !4087)
!4092 = !DILocation(line: 182, column: 13, scope: !4093, inlinedAt: !4087)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !549, line: 182, column: 11)
!4094 = distinct !DILexicalBlock(scope: !4090, file: !549, line: 181, column: 5)
!4095 = !DILocation(line: 182, column: 11, scope: !4094, inlinedAt: !4087)
!4096 = !DILocation(line: 197, column: 11, scope: !4097, inlinedAt: !4087)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !549, line: 197, column: 11)
!4098 = distinct !DILexicalBlock(scope: !4090, file: !549, line: 195, column: 5)
!4099 = !DILocation(line: 197, column: 11, scope: !4098, inlinedAt: !4087)
!4100 = !DILocation(line: 198, column: 9, scope: !4097, inlinedAt: !4087)
!4101 = !DILocation(line: 0, scope: !3904, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 201, column: 7, scope: !552, inlinedAt: !4087)
!4103 = !DILocation(line: 85, column: 25, scope: !3904, inlinedAt: !4102)
!4104 = !DILocation(line: 0, scope: !3912, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 85, column: 10, scope: !3904, inlinedAt: !4102)
!4106 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4105)
!4107 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4105)
!4108 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4105)
!4109 = !DILocation(line: 202, column: 7, scope: !552, inlinedAt: !4087)
!4110 = !DILocation(line: 118, column: 3, scope: !4079)
!4111 = !DILocation(line: 0, scope: !552)
!4112 = !DILocation(line: 178, column: 14, scope: !552)
!4113 = !DILocation(line: 180, column: 9, scope: !4090)
!4114 = !DILocation(line: 180, column: 7, scope: !552)
!4115 = !DILocation(line: 182, column: 13, scope: !4093)
!4116 = !DILocation(line: 182, column: 11, scope: !4094)
!4117 = !DILocation(line: 190, column: 30, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4093, file: !549, line: 183, column: 9)
!4119 = !DILocation(line: 191, column: 16, scope: !4118)
!4120 = !DILocation(line: 191, column: 13, scope: !4118)
!4121 = !DILocation(line: 192, column: 9, scope: !4118)
!4122 = !DILocation(line: 197, column: 11, scope: !4097)
!4123 = !DILocation(line: 197, column: 11, scope: !4098)
!4124 = !DILocation(line: 198, column: 9, scope: !4097)
!4125 = !DILocation(line: 0, scope: !3904, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 201, column: 7, scope: !552)
!4127 = !DILocation(line: 85, column: 25, scope: !3904, inlinedAt: !4126)
!4128 = !DILocation(line: 0, scope: !3912, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 85, column: 10, scope: !3904, inlinedAt: !4126)
!4130 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4129)
!4131 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4129)
!4132 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4129)
!4133 = !DILocation(line: 202, column: 7, scope: !552)
!4134 = !DILocation(line: 203, column: 3, scope: !552)
!4135 = !DILocation(line: 0, scope: !564)
!4136 = !DILocation(line: 230, column: 14, scope: !564)
!4137 = !DILocation(line: 238, column: 7, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !564, file: !549, line: 238, column: 7)
!4139 = !DILocation(line: 238, column: 7, scope: !564)
!4140 = !DILocation(line: 240, column: 9, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !564, file: !549, line: 240, column: 7)
!4142 = !DILocation(line: 240, column: 18, scope: !4141)
!4143 = !DILocation(line: 253, column: 8, scope: !564)
!4144 = !DILocation(line: 258, column: 27, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !549, line: 257, column: 5)
!4146 = distinct !DILexicalBlock(scope: !564, file: !549, line: 256, column: 7)
!4147 = !DILocation(line: 259, column: 32, scope: !4145)
!4148 = !DILocation(line: 260, column: 5, scope: !4145)
!4149 = !DILocation(line: 262, column: 9, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !564, file: !549, line: 262, column: 7)
!4151 = !DILocation(line: 262, column: 7, scope: !564)
!4152 = !DILocation(line: 263, column: 9, scope: !4150)
!4153 = !DILocation(line: 263, column: 5, scope: !4150)
!4154 = !DILocation(line: 264, column: 9, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !564, file: !549, line: 264, column: 7)
!4156 = !DILocation(line: 264, column: 14, scope: !4155)
!4157 = !DILocation(line: 265, column: 7, scope: !4155)
!4158 = !DILocation(line: 265, column: 11, scope: !4155)
!4159 = !DILocation(line: 266, column: 11, scope: !4155)
!4160 = !DILocation(line: 266, column: 26, scope: !4155)
!4161 = !DILocation(line: 267, column: 14, scope: !4155)
!4162 = !DILocation(line: 264, column: 7, scope: !564)
!4163 = !DILocation(line: 268, column: 5, scope: !4155)
!4164 = !DILocation(line: 0, scope: !3978, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 269, column: 8, scope: !564)
!4166 = !DILocation(line: 0, scope: !3986, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 70, column: 25, scope: !3978, inlinedAt: !4165)
!4168 = !DILocation(line: 2059, column: 24, scope: !3986, inlinedAt: !4167)
!4169 = !DILocation(line: 2059, column: 10, scope: !3986, inlinedAt: !4167)
!4170 = !DILocation(line: 0, scope: !3912, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 70, column: 10, scope: !3978, inlinedAt: !4165)
!4172 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4171)
!4173 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4171)
!4174 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4171)
!4175 = !DILocation(line: 270, column: 7, scope: !564)
!4176 = !DILocation(line: 271, column: 3, scope: !564)
!4177 = distinct !DISubprogram(name: "xzalloc", scope: !549, file: !549, line: 279, type: !3932, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4178)
!4178 = !{!4179}
!4179 = !DILocalVariable(name: "s", arg: 1, scope: !4177, file: !549, line: 279, type: !37)
!4180 = !DILocation(line: 0, scope: !4177)
!4181 = !DILocalVariable(name: "n", arg: 1, scope: !4182, file: !549, line: 294, type: !37)
!4182 = distinct !DISubprogram(name: "xcalloc", scope: !549, file: !549, line: 294, type: !4046, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4183)
!4183 = !{!4181, !4184}
!4184 = !DILocalVariable(name: "s", arg: 2, scope: !4182, file: !549, line: 294, type: !37)
!4185 = !DILocation(line: 0, scope: !4182, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 281, column: 10, scope: !4177)
!4187 = !DILocation(line: 296, column: 25, scope: !4182, inlinedAt: !4186)
!4188 = !DILocation(line: 0, scope: !3912, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 296, column: 10, scope: !4182, inlinedAt: !4186)
!4190 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4189)
!4191 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4189)
!4192 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4189)
!4193 = !DILocation(line: 281, column: 3, scope: !4177)
!4194 = !DILocation(line: 0, scope: !4182)
!4195 = !DILocation(line: 296, column: 25, scope: !4182)
!4196 = !DILocation(line: 0, scope: !3912, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 296, column: 10, scope: !4182)
!4198 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4197)
!4199 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4197)
!4200 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4197)
!4201 = !DILocation(line: 296, column: 3, scope: !4182)
!4202 = distinct !DISubprogram(name: "xizalloc", scope: !549, file: !549, line: 285, type: !3945, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4203)
!4203 = !{!4204}
!4204 = !DILocalVariable(name: "s", arg: 1, scope: !4202, file: !549, line: 285, type: !160)
!4205 = !DILocation(line: 0, scope: !4202)
!4206 = !DILocalVariable(name: "n", arg: 1, scope: !4207, file: !549, line: 300, type: !160)
!4207 = distinct !DISubprogram(name: "xicalloc", scope: !549, file: !549, line: 300, type: !4062, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4208)
!4208 = !{!4206, !4209}
!4209 = !DILocalVariable(name: "s", arg: 2, scope: !4207, file: !549, line: 300, type: !160)
!4210 = !DILocation(line: 0, scope: !4207, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 287, column: 10, scope: !4202)
!4212 = !DILocalVariable(name: "n", arg: 1, scope: !4213, file: !3952, line: 77, type: !160)
!4213 = distinct !DISubprogram(name: "icalloc", scope: !3952, file: !3952, line: 77, type: !4062, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4214)
!4214 = !{!4212, !4215}
!4215 = !DILocalVariable(name: "s", arg: 2, scope: !4213, file: !3952, line: 77, type: !160)
!4216 = !DILocation(line: 0, scope: !4213, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 302, column: 25, scope: !4207, inlinedAt: !4211)
!4218 = !DILocation(line: 91, column: 10, scope: !4213, inlinedAt: !4217)
!4219 = !DILocation(line: 0, scope: !3912, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 302, column: 10, scope: !4207, inlinedAt: !4211)
!4221 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4220)
!4222 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4220)
!4223 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4220)
!4224 = !DILocation(line: 287, column: 3, scope: !4202)
!4225 = !DILocation(line: 0, scope: !4207)
!4226 = !DILocation(line: 0, scope: !4213, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 302, column: 25, scope: !4207)
!4228 = !DILocation(line: 91, column: 10, scope: !4213, inlinedAt: !4227)
!4229 = !DILocation(line: 0, scope: !3912, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 302, column: 10, scope: !4207)
!4231 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4230)
!4232 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4230)
!4233 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4230)
!4234 = !DILocation(line: 302, column: 3, scope: !4207)
!4235 = distinct !DISubprogram(name: "xmemdup", scope: !549, file: !549, line: 310, type: !4236, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4238)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!34, !830, !37}
!4238 = !{!4239, !4240}
!4239 = !DILocalVariable(name: "p", arg: 1, scope: !4235, file: !549, line: 310, type: !830)
!4240 = !DILocalVariable(name: "s", arg: 2, scope: !4235, file: !549, line: 310, type: !37)
!4241 = !DILocation(line: 0, scope: !4235)
!4242 = !DILocation(line: 0, scope: !3931, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 312, column: 18, scope: !4235)
!4244 = !DILocation(line: 49, column: 25, scope: !3931, inlinedAt: !4243)
!4245 = !DILocation(line: 0, scope: !3912, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 49, column: 10, scope: !3931, inlinedAt: !4243)
!4247 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4246)
!4248 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4246)
!4249 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4246)
!4250 = !DILocalVariable(name: "__dest", arg: 1, scope: !4251, file: !942, line: 26, type: !4254)
!4251 = distinct !DISubprogram(name: "memcpy", scope: !942, file: !942, line: 26, type: !4252, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4255)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!34, !4254, !829, !37}
!4254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!4255 = !{!4250, !4256, !4257}
!4256 = !DILocalVariable(name: "__src", arg: 2, scope: !4251, file: !942, line: 26, type: !829)
!4257 = !DILocalVariable(name: "__len", arg: 3, scope: !4251, file: !942, line: 26, type: !37)
!4258 = !DILocation(line: 0, scope: !4251, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 312, column: 10, scope: !4235)
!4260 = !DILocation(line: 29, column: 10, scope: !4251, inlinedAt: !4259)
!4261 = !DILocation(line: 312, column: 3, scope: !4235)
!4262 = distinct !DISubprogram(name: "ximemdup", scope: !549, file: !549, line: 316, type: !4263, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4265)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!34, !830, !160}
!4265 = !{!4266, !4267}
!4266 = !DILocalVariable(name: "p", arg: 1, scope: !4262, file: !549, line: 316, type: !830)
!4267 = !DILocalVariable(name: "s", arg: 2, scope: !4262, file: !549, line: 316, type: !160)
!4268 = !DILocation(line: 0, scope: !4262)
!4269 = !DILocation(line: 0, scope: !3944, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 318, column: 18, scope: !4262)
!4271 = !DILocation(line: 0, scope: !3951, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 55, column: 25, scope: !3944, inlinedAt: !4270)
!4273 = !DILocation(line: 57, column: 26, scope: !3951, inlinedAt: !4272)
!4274 = !DILocation(line: 0, scope: !3912, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 55, column: 10, scope: !3944, inlinedAt: !4270)
!4276 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4275)
!4277 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4275)
!4278 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4275)
!4279 = !DILocation(line: 0, scope: !4251, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 318, column: 10, scope: !4262)
!4281 = !DILocation(line: 29, column: 10, scope: !4251, inlinedAt: !4280)
!4282 = !DILocation(line: 318, column: 3, scope: !4262)
!4283 = distinct !DISubprogram(name: "ximemdup0", scope: !549, file: !549, line: 325, type: !4284, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!32, !830, !160}
!4286 = !{!4287, !4288, !4289}
!4287 = !DILocalVariable(name: "p", arg: 1, scope: !4283, file: !549, line: 325, type: !830)
!4288 = !DILocalVariable(name: "s", arg: 2, scope: !4283, file: !549, line: 325, type: !160)
!4289 = !DILocalVariable(name: "result", scope: !4283, file: !549, line: 327, type: !32)
!4290 = !DILocation(line: 0, scope: !4283)
!4291 = !DILocation(line: 327, column: 30, scope: !4283)
!4292 = !DILocation(line: 0, scope: !3944, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 327, column: 18, scope: !4283)
!4294 = !DILocation(line: 0, scope: !3951, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 55, column: 25, scope: !3944, inlinedAt: !4293)
!4296 = !DILocation(line: 57, column: 26, scope: !3951, inlinedAt: !4295)
!4297 = !DILocation(line: 0, scope: !3912, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 55, column: 10, scope: !3944, inlinedAt: !4293)
!4299 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4298)
!4300 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4298)
!4301 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4298)
!4302 = !DILocation(line: 328, column: 3, scope: !4283)
!4303 = !DILocation(line: 328, column: 13, scope: !4283)
!4304 = !DILocation(line: 0, scope: !4251, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 329, column: 10, scope: !4283)
!4306 = !DILocation(line: 29, column: 10, scope: !4251, inlinedAt: !4305)
!4307 = !DILocation(line: 329, column: 3, scope: !4283)
!4308 = distinct !DISubprogram(name: "xstrdup", scope: !549, file: !549, line: 335, type: !824, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4309)
!4309 = !{!4310}
!4310 = !DILocalVariable(name: "string", arg: 1, scope: !4308, file: !549, line: 335, type: !40)
!4311 = !DILocation(line: 0, scope: !4308)
!4312 = !DILocation(line: 337, column: 27, scope: !4308)
!4313 = !DILocation(line: 337, column: 43, scope: !4308)
!4314 = !DILocation(line: 0, scope: !4235, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 337, column: 10, scope: !4308)
!4316 = !DILocation(line: 0, scope: !3931, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 312, column: 18, scope: !4235, inlinedAt: !4315)
!4318 = !DILocation(line: 49, column: 25, scope: !3931, inlinedAt: !4317)
!4319 = !DILocation(line: 0, scope: !3912, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 49, column: 10, scope: !3931, inlinedAt: !4317)
!4321 = !DILocation(line: 39, column: 8, scope: !3919, inlinedAt: !4320)
!4322 = !DILocation(line: 39, column: 7, scope: !3912, inlinedAt: !4320)
!4323 = !DILocation(line: 40, column: 5, scope: !3919, inlinedAt: !4320)
!4324 = !DILocation(line: 0, scope: !4251, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 312, column: 10, scope: !4235, inlinedAt: !4315)
!4326 = !DILocation(line: 29, column: 10, scope: !4251, inlinedAt: !4325)
!4327 = !DILocation(line: 337, column: 3, scope: !4308)
!4328 = distinct !DISubprogram(name: "xalloc_die", scope: !580, file: !580, line: 32, type: !148, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !4329)
!4329 = !{!4330}
!4330 = !DILocalVariable(name: "__errstatus", scope: !4331, file: !580, line: 34, type: !4332)
!4331 = distinct !DILexicalBlock(scope: !4328, file: !580, line: 34, column: 3)
!4332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!4333 = !DILocation(line: 34, column: 3, scope: !4331)
!4334 = !DILocation(line: 0, scope: !4331)
!4335 = !DILocation(line: 40, column: 3, scope: !4328)
!4336 = distinct !DISubprogram(name: "rpl_fopen", scope: !582, file: !582, line: 46, type: !4337, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !4373)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!4339, !40, !40}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !4341)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4341, file: !74, line: 51, baseType: !35, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4341, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4341, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4341, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4341, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4341, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4341, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4341, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4341, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4341, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4341, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4341, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4341, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4341, file: !74, line: 70, baseType: !4357, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4341, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4341, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4341, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4341, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4341, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4341, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4341, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4341, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4341, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4341, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4341, file: !74, line: 93, baseType: !4357, size: 64, offset: 1344)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4341, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4341, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4341, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4341, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379, !4383, !4385, !4386, !4391, !4394, !4395}
!4374 = !DILocalVariable(name: "filename", arg: 1, scope: !4336, file: !582, line: 46, type: !40)
!4375 = !DILocalVariable(name: "mode", arg: 2, scope: !4336, file: !582, line: 46, type: !40)
!4376 = !DILocalVariable(name: "open_direction", scope: !4336, file: !582, line: 54, type: !35)
!4377 = !DILocalVariable(name: "open_flags", scope: !4336, file: !582, line: 55, type: !35)
!4378 = !DILocalVariable(name: "open_flags_gnu", scope: !4336, file: !582, line: 57, type: !43)
!4379 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4336, file: !582, line: 59, type: !4380)
!4380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 648, elements: !4381)
!4381 = !{!4382}
!4382 = !DISubrange(count: 81)
!4383 = !DILocalVariable(name: "p", scope: !4384, file: !582, line: 62, type: !40)
!4384 = distinct !DILexicalBlock(scope: !4336, file: !582, line: 61, column: 3)
!4385 = !DILocalVariable(name: "q", scope: !4384, file: !582, line: 64, type: !32)
!4386 = !DILocalVariable(name: "len", scope: !4387, file: !582, line: 128, type: !37)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !582, line: 127, column: 9)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !582, line: 68, column: 7)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !582, line: 67, column: 5)
!4390 = distinct !DILexicalBlock(scope: !4384, file: !582, line: 67, column: 5)
!4391 = !DILocalVariable(name: "fd", scope: !4392, file: !582, line: 199, type: !35)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !582, line: 198, column: 5)
!4393 = distinct !DILexicalBlock(scope: !4336, file: !582, line: 197, column: 7)
!4394 = !DILocalVariable(name: "fp", scope: !4392, file: !582, line: 204, type: !4339)
!4395 = !DILocalVariable(name: "saved_errno", scope: !4396, file: !582, line: 207, type: !35)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !582, line: 206, column: 9)
!4397 = distinct !DILexicalBlock(scope: !4392, file: !582, line: 205, column: 11)
!4398 = !DILocation(line: 0, scope: !4336)
!4399 = !DILocation(line: 59, column: 3, scope: !4336)
!4400 = !DILocation(line: 59, column: 8, scope: !4336)
!4401 = !DILocation(line: 0, scope: !4384)
!4402 = !DILocation(line: 67, column: 5, scope: !4384)
!4403 = !DILocation(line: 64, column: 11, scope: !4384)
!4404 = !DILocation(line: 54, column: 7, scope: !4336)
!4405 = !DILocation(line: 67, column: 12, scope: !4389)
!4406 = !DILocation(line: 67, column: 5, scope: !4390)
!4407 = !DILocation(line: 74, column: 19, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4409, file: !582, line: 74, column: 17)
!4409 = distinct !DILexicalBlock(scope: !4388, file: !582, line: 70, column: 11)
!4410 = !DILocation(line: 74, column: 17, scope: !4409)
!4411 = !DILocation(line: 75, column: 17, scope: !4408)
!4412 = !DILocation(line: 75, column: 20, scope: !4408)
!4413 = !DILocation(line: 75, column: 15, scope: !4408)
!4414 = !DILocation(line: 80, column: 24, scope: !4409)
!4415 = !DILocation(line: 82, column: 19, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4409, file: !582, line: 82, column: 17)
!4417 = !DILocation(line: 82, column: 17, scope: !4409)
!4418 = !DILocation(line: 83, column: 17, scope: !4416)
!4419 = !DILocation(line: 83, column: 20, scope: !4416)
!4420 = !DILocation(line: 83, column: 15, scope: !4416)
!4421 = !DILocation(line: 88, column: 24, scope: !4409)
!4422 = !DILocation(line: 90, column: 19, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4409, file: !582, line: 90, column: 17)
!4424 = !DILocation(line: 90, column: 17, scope: !4409)
!4425 = !DILocation(line: 91, column: 17, scope: !4423)
!4426 = !DILocation(line: 91, column: 20, scope: !4423)
!4427 = !DILocation(line: 91, column: 15, scope: !4423)
!4428 = !DILocation(line: 100, column: 19, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4409, file: !582, line: 100, column: 17)
!4430 = !DILocation(line: 100, column: 17, scope: !4409)
!4431 = !DILocation(line: 101, column: 17, scope: !4429)
!4432 = !DILocation(line: 101, column: 20, scope: !4429)
!4433 = !DILocation(line: 101, column: 15, scope: !4429)
!4434 = !DILocation(line: 107, column: 19, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4409, file: !582, line: 107, column: 17)
!4436 = !DILocation(line: 107, column: 17, scope: !4409)
!4437 = !DILocation(line: 108, column: 17, scope: !4435)
!4438 = !DILocation(line: 108, column: 20, scope: !4435)
!4439 = !DILocation(line: 108, column: 15, scope: !4435)
!4440 = !DILocation(line: 113, column: 24, scope: !4409)
!4441 = !DILocation(line: 115, column: 13, scope: !4409)
!4442 = !DILocation(line: 117, column: 24, scope: !4409)
!4443 = !DILocation(line: 119, column: 13, scope: !4409)
!4444 = !DILocation(line: 128, column: 24, scope: !4387)
!4445 = !DILocation(line: 0, scope: !4387)
!4446 = !DILocation(line: 129, column: 48, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4387, file: !582, line: 129, column: 15)
!4448 = !DILocation(line: 129, column: 19, scope: !4447)
!4449 = !DILocation(line: 129, column: 15, scope: !4387)
!4450 = !DILocalVariable(name: "__dest", arg: 1, scope: !4451, file: !942, line: 26, type: !4254)
!4451 = distinct !DISubprogram(name: "memcpy", scope: !942, file: !942, line: 26, type: !4252, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !4452)
!4452 = !{!4450, !4453, !4454}
!4453 = !DILocalVariable(name: "__src", arg: 2, scope: !4451, file: !942, line: 26, type: !829)
!4454 = !DILocalVariable(name: "__len", arg: 3, scope: !4451, file: !942, line: 26, type: !37)
!4455 = !DILocation(line: 0, scope: !4451, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 131, column: 11, scope: !4387)
!4457 = !DILocation(line: 29, column: 10, scope: !4451, inlinedAt: !4456)
!4458 = !DILocation(line: 132, column: 13, scope: !4387)
!4459 = !DILocation(line: 135, column: 9, scope: !4388)
!4460 = !DILocation(line: 67, column: 25, scope: !4389)
!4461 = !DILocation(line: 67, column: 5, scope: !4389)
!4462 = distinct !{!4462, !4406, !4463, !679}
!4463 = !DILocation(line: 136, column: 7, scope: !4390)
!4464 = !DILocation(line: 138, column: 8, scope: !4384)
!4465 = !DILocation(line: 197, column: 7, scope: !4336)
!4466 = !DILocation(line: 199, column: 47, scope: !4392)
!4467 = !DILocation(line: 199, column: 16, scope: !4392)
!4468 = !DILocation(line: 0, scope: !4392)
!4469 = !DILocation(line: 201, column: 14, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4392, file: !582, line: 201, column: 11)
!4471 = !DILocation(line: 201, column: 11, scope: !4392)
!4472 = !DILocation(line: 204, column: 18, scope: !4392)
!4473 = !DILocation(line: 205, column: 14, scope: !4397)
!4474 = !DILocation(line: 205, column: 11, scope: !4392)
!4475 = !DILocation(line: 207, column: 29, scope: !4396)
!4476 = !DILocation(line: 0, scope: !4396)
!4477 = !DILocation(line: 208, column: 11, scope: !4396)
!4478 = !DILocation(line: 209, column: 17, scope: !4396)
!4479 = !DILocation(line: 210, column: 9, scope: !4396)
!4480 = !DILocalVariable(name: "filename", arg: 1, scope: !4481, file: !582, line: 30, type: !40)
!4481 = distinct !DISubprogram(name: "orig_fopen", scope: !582, file: !582, line: 30, type: !4337, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !4482)
!4482 = !{!4480, !4483}
!4483 = !DILocalVariable(name: "mode", arg: 2, scope: !4481, file: !582, line: 30, type: !40)
!4484 = !DILocation(line: 0, scope: !4481, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 219, column: 10, scope: !4336)
!4486 = !DILocation(line: 32, column: 10, scope: !4481, inlinedAt: !4485)
!4487 = !DILocation(line: 219, column: 3, scope: !4336)
!4488 = !DILocation(line: 220, column: 1, scope: !4336)
!4489 = !DISubprogram(name: "open", scope: !1988, file: !1988, line: 181, type: !4490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!35, !40, !35, null}
!4492 = !DISubprogram(name: "fdopen", scope: !360, file: !360, line: 293, type: !4493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!4339, !35, !40}
!4495 = !DISubprogram(name: "close", scope: !2192, file: !2192, line: 358, type: !1082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!4496 = distinct !DISubprogram(name: "close_stream", scope: !584, file: !584, line: 55, type: !4497, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4533)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!35, !4499}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 7, baseType: !4501)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 49, size: 1728, elements: !4502)
!4502 = !{!4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4501, file: !74, line: 51, baseType: !35, size: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4501, file: !74, line: 54, baseType: !32, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4501, file: !74, line: 55, baseType: !32, size: 64, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4501, file: !74, line: 56, baseType: !32, size: 64, offset: 192)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4501, file: !74, line: 57, baseType: !32, size: 64, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4501, file: !74, line: 58, baseType: !32, size: 64, offset: 320)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4501, file: !74, line: 59, baseType: !32, size: 64, offset: 384)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4501, file: !74, line: 60, baseType: !32, size: 64, offset: 448)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4501, file: !74, line: 61, baseType: !32, size: 64, offset: 512)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4501, file: !74, line: 64, baseType: !32, size: 64, offset: 576)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4501, file: !74, line: 65, baseType: !32, size: 64, offset: 640)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4501, file: !74, line: 66, baseType: !32, size: 64, offset: 704)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4501, file: !74, line: 68, baseType: !89, size: 64, offset: 768)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4501, file: !74, line: 70, baseType: !4517, size: 64, offset: 832)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4501, file: !74, line: 72, baseType: !35, size: 32, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4501, file: !74, line: 73, baseType: !35, size: 32, offset: 928)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4501, file: !74, line: 74, baseType: !96, size: 64, offset: 960)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4501, file: !74, line: 77, baseType: !36, size: 16, offset: 1024)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4501, file: !74, line: 78, baseType: !101, size: 8, offset: 1040)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4501, file: !74, line: 79, baseType: !103, size: 8, offset: 1048)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4501, file: !74, line: 81, baseType: !107, size: 64, offset: 1088)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4501, file: !74, line: 89, baseType: !110, size: 64, offset: 1152)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4501, file: !74, line: 91, baseType: !112, size: 64, offset: 1216)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4501, file: !74, line: 92, baseType: !115, size: 64, offset: 1280)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4501, file: !74, line: 93, baseType: !4517, size: 64, offset: 1344)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4501, file: !74, line: 94, baseType: !34, size: 64, offset: 1408)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4501, file: !74, line: 95, baseType: !37, size: 64, offset: 1472)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4501, file: !74, line: 96, baseType: !35, size: 32, offset: 1536)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4501, file: !74, line: 98, baseType: !122, size: 160, offset: 1568)
!4533 = !{!4534, !4535, !4537, !4538}
!4534 = !DILocalVariable(name: "stream", arg: 1, scope: !4496, file: !584, line: 55, type: !4499)
!4535 = !DILocalVariable(name: "some_pending", scope: !4496, file: !584, line: 57, type: !4536)
!4536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!4537 = !DILocalVariable(name: "prev_fail", scope: !4496, file: !584, line: 58, type: !4536)
!4538 = !DILocalVariable(name: "fclose_fail", scope: !4496, file: !584, line: 59, type: !4536)
!4539 = !DILocation(line: 0, scope: !4496)
!4540 = !DILocation(line: 57, column: 30, scope: !4496)
!4541 = !DILocalVariable(name: "__stream", arg: 1, scope: !4542, file: !924, line: 135, type: !4499)
!4542 = distinct !DISubprogram(name: "ferror_unlocked", scope: !924, file: !924, line: 135, type: !4497, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4543)
!4543 = !{!4541}
!4544 = !DILocation(line: 0, scope: !4542, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 58, column: 27, scope: !4496)
!4546 = !DILocation(line: 137, column: 10, scope: !4542, inlinedAt: !4545)
!4547 = !DILocation(line: 58, column: 43, scope: !4496)
!4548 = !DILocation(line: 59, column: 29, scope: !4496)
!4549 = !DILocation(line: 59, column: 45, scope: !4496)
!4550 = !DILocation(line: 69, column: 17, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4496, file: !584, line: 69, column: 7)
!4552 = !DILocation(line: 57, column: 50, scope: !4496)
!4553 = !DILocation(line: 69, column: 33, scope: !4551)
!4554 = !DILocation(line: 69, column: 53, scope: !4551)
!4555 = !DILocation(line: 69, column: 59, scope: !4551)
!4556 = !DILocation(line: 69, column: 7, scope: !4496)
!4557 = !DILocation(line: 71, column: 11, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4551, file: !584, line: 70, column: 5)
!4559 = !DILocation(line: 72, column: 9, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4558, file: !584, line: 71, column: 11)
!4561 = !DILocation(line: 72, column: 15, scope: !4560)
!4562 = !DILocation(line: 77, column: 1, scope: !4496)
!4563 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !515, file: !515, line: 100, type: !4564, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !4567)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!37, !1199, !40, !37, !4566}
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!4567 = !{!4568, !4569, !4570, !4571, !4572}
!4568 = !DILocalVariable(name: "pwc", arg: 1, scope: !4563, file: !515, line: 100, type: !1199)
!4569 = !DILocalVariable(name: "s", arg: 2, scope: !4563, file: !515, line: 100, type: !40)
!4570 = !DILocalVariable(name: "n", arg: 3, scope: !4563, file: !515, line: 100, type: !37)
!4571 = !DILocalVariable(name: "ps", arg: 4, scope: !4563, file: !515, line: 100, type: !4566)
!4572 = !DILocalVariable(name: "ret", scope: !4563, file: !515, line: 130, type: !37)
!4573 = !DILocation(line: 0, scope: !4563)
!4574 = !DILocation(line: 105, column: 9, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4563, file: !515, line: 105, column: 7)
!4576 = !DILocation(line: 105, column: 7, scope: !4563)
!4577 = !DILocation(line: 117, column: 10, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4563, file: !515, line: 117, column: 7)
!4579 = !DILocation(line: 117, column: 7, scope: !4563)
!4580 = !DILocation(line: 130, column: 16, scope: !4563)
!4581 = !DILocation(line: 135, column: 11, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4563, file: !515, line: 135, column: 7)
!4583 = !DILocation(line: 135, column: 25, scope: !4582)
!4584 = !DILocation(line: 135, column: 30, scope: !4582)
!4585 = !DILocation(line: 135, column: 7, scope: !4563)
!4586 = !DILocalVariable(name: "ps", arg: 1, scope: !4587, file: !2427, line: 1135, type: !4566)
!4587 = distinct !DISubprogram(name: "mbszero", scope: !2427, file: !2427, line: 1135, type: !4588, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !4590)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4566}
!4590 = !{!4586}
!4591 = !DILocation(line: 0, scope: !4587, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 137, column: 5, scope: !4582)
!4593 = !DILocalVariable(name: "__dest", arg: 1, scope: !4594, file: !942, line: 57, type: !34)
!4594 = distinct !DISubprogram(name: "memset", scope: !942, file: !942, line: 57, type: !2436, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !4595)
!4595 = !{!4593, !4596, !4597}
!4596 = !DILocalVariable(name: "__ch", arg: 2, scope: !4594, file: !942, line: 57, type: !35)
!4597 = !DILocalVariable(name: "__len", arg: 3, scope: !4594, file: !942, line: 57, type: !37)
!4598 = !DILocation(line: 0, scope: !4594, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 1137, column: 3, scope: !4587, inlinedAt: !4592)
!4600 = !DILocation(line: 59, column: 10, scope: !4594, inlinedAt: !4599)
!4601 = !DILocation(line: 137, column: 5, scope: !4582)
!4602 = !DILocation(line: 138, column: 11, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4563, file: !515, line: 138, column: 7)
!4604 = !DILocation(line: 138, column: 7, scope: !4563)
!4605 = !DILocation(line: 139, column: 5, scope: !4603)
!4606 = !DILocation(line: 143, column: 26, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4563, file: !515, line: 143, column: 7)
!4608 = !DILocation(line: 143, column: 41, scope: !4607)
!4609 = !DILocation(line: 143, column: 7, scope: !4563)
!4610 = !DILocation(line: 145, column: 15, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !515, line: 145, column: 11)
!4612 = distinct !DILexicalBlock(scope: !4607, file: !515, line: 144, column: 5)
!4613 = !DILocation(line: 145, column: 11, scope: !4612)
!4614 = !DILocation(line: 146, column: 32, scope: !4611)
!4615 = !DILocation(line: 146, column: 16, scope: !4611)
!4616 = !DILocation(line: 146, column: 14, scope: !4611)
!4617 = !DILocation(line: 146, column: 9, scope: !4611)
!4618 = !DILocation(line: 286, column: 1, scope: !4563)
!4619 = !DISubprogram(name: "mbsinit", scope: !1209, file: !1209, line: 293, type: !4620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !626)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!35, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!4624 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !586, file: !586, line: 27, type: !3896, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4625)
!4625 = !{!4626, !4627, !4628, !4629}
!4626 = !DILocalVariable(name: "ptr", arg: 1, scope: !4624, file: !586, line: 27, type: !34)
!4627 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4624, file: !586, line: 27, type: !37)
!4628 = !DILocalVariable(name: "size", arg: 3, scope: !4624, file: !586, line: 27, type: !37)
!4629 = !DILocalVariable(name: "nbytes", scope: !4624, file: !586, line: 29, type: !37)
!4630 = !DILocation(line: 0, scope: !4624)
!4631 = !DILocation(line: 30, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4624, file: !586, line: 30, column: 7)
!4633 = !DILocalVariable(name: "ptr", arg: 1, scope: !4634, file: !3987, line: 2057, type: !34)
!4634 = distinct !DISubprogram(name: "rpl_realloc", scope: !3987, file: !3987, line: 2057, type: !3979, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4635)
!4635 = !{!4633, !4636}
!4636 = !DILocalVariable(name: "size", arg: 2, scope: !4634, file: !3987, line: 2057, type: !37)
!4637 = !DILocation(line: 0, scope: !4634, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 37, column: 10, scope: !4624)
!4639 = !DILocation(line: 2059, column: 24, scope: !4634, inlinedAt: !4638)
!4640 = !DILocation(line: 2059, column: 10, scope: !4634, inlinedAt: !4638)
!4641 = !DILocation(line: 37, column: 3, scope: !4624)
!4642 = !DILocation(line: 32, column: 7, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4632, file: !586, line: 31, column: 5)
!4644 = !DILocation(line: 32, column: 13, scope: !4643)
!4645 = !DILocation(line: 33, column: 7, scope: !4643)
!4646 = !DILocation(line: 38, column: 1, scope: !4624)
!4647 = distinct !DISubprogram(name: "hard_locale", scope: !589, file: !589, line: 28, type: !1377, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4648)
!4648 = !{!4649, !4650}
!4649 = !DILocalVariable(name: "category", arg: 1, scope: !4647, file: !589, line: 28, type: !35)
!4650 = !DILocalVariable(name: "locale", scope: !4647, file: !589, line: 30, type: !4651)
!4651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2056, elements: !4652)
!4652 = !{!4653}
!4653 = !DISubrange(count: 257)
!4654 = !DILocation(line: 0, scope: !4647)
!4655 = !DILocation(line: 30, column: 3, scope: !4647)
!4656 = !DILocation(line: 30, column: 8, scope: !4647)
!4657 = !DILocation(line: 32, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4647, file: !589, line: 32, column: 7)
!4659 = !DILocation(line: 32, column: 7, scope: !4647)
!4660 = !DILocalVariable(name: "__s1", arg: 1, scope: !4661, file: !663, line: 1359, type: !40)
!4661 = distinct !DISubprogram(name: "streq", scope: !663, file: !663, line: 1359, type: !664, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4662)
!4662 = !{!4660, !4663}
!4663 = !DILocalVariable(name: "__s2", arg: 2, scope: !4661, file: !663, line: 1359, type: !40)
!4664 = !DILocation(line: 0, scope: !4661, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 35, column: 9, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4647, file: !589, line: 35, column: 7)
!4667 = !DILocation(line: 1361, column: 11, scope: !4661, inlinedAt: !4665)
!4668 = !DILocation(line: 1361, column: 10, scope: !4661, inlinedAt: !4665)
!4669 = !DILocation(line: 35, column: 29, scope: !4666)
!4670 = !DILocation(line: 0, scope: !4661, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 35, column: 32, scope: !4666)
!4672 = !DILocation(line: 1361, column: 11, scope: !4661, inlinedAt: !4671)
!4673 = !DILocation(line: 1361, column: 10, scope: !4661, inlinedAt: !4671)
!4674 = !DILocation(line: 35, column: 7, scope: !4647)
!4675 = !DILocation(line: 46, column: 3, scope: !4647)
!4676 = !DILocation(line: 47, column: 1, scope: !4647)
!4677 = distinct !DISubprogram(name: "setlocale_null_r", scope: !591, file: !591, line: 154, type: !4678, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!35, !35, !32, !37}
!4680 = !{!4681, !4682, !4683}
!4681 = !DILocalVariable(name: "category", arg: 1, scope: !4677, file: !591, line: 154, type: !35)
!4682 = !DILocalVariable(name: "buf", arg: 2, scope: !4677, file: !591, line: 154, type: !32)
!4683 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4677, file: !591, line: 154, type: !37)
!4684 = !DILocation(line: 0, scope: !4677)
!4685 = !DILocation(line: 159, column: 10, scope: !4677)
!4686 = !DILocation(line: 159, column: 3, scope: !4677)
!4687 = distinct !DISubprogram(name: "setlocale_null", scope: !591, file: !591, line: 186, type: !4688, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !4690)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!40, !35}
!4690 = !{!4691}
!4691 = !DILocalVariable(name: "category", arg: 1, scope: !4687, file: !591, line: 186, type: !35)
!4692 = !DILocation(line: 0, scope: !4687)
!4693 = !DILocation(line: 189, column: 10, scope: !4687)
!4694 = !DILocation(line: 189, column: 3, scope: !4687)
!4695 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !593, file: !593, line: 35, type: !4688, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !4696)
!4696 = !{!4697, !4698}
!4697 = !DILocalVariable(name: "category", arg: 1, scope: !4695, file: !593, line: 35, type: !35)
!4698 = !DILocalVariable(name: "result", scope: !4695, file: !593, line: 37, type: !40)
!4699 = !DILocation(line: 0, scope: !4695)
!4700 = !DILocation(line: 37, column: 24, scope: !4695)
!4701 = !DILocation(line: 62, column: 3, scope: !4695)
!4702 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !593, file: !593, line: 66, type: !4678, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !4703)
!4703 = !{!4704, !4705, !4706, !4707, !4708}
!4704 = !DILocalVariable(name: "category", arg: 1, scope: !4702, file: !593, line: 66, type: !35)
!4705 = !DILocalVariable(name: "buf", arg: 2, scope: !4702, file: !593, line: 66, type: !32)
!4706 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4702, file: !593, line: 66, type: !37)
!4707 = !DILocalVariable(name: "result", scope: !4702, file: !593, line: 111, type: !40)
!4708 = !DILocalVariable(name: "length", scope: !4709, file: !593, line: 125, type: !37)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !593, line: 124, column: 5)
!4710 = distinct !DILexicalBlock(scope: !4702, file: !593, line: 113, column: 7)
!4711 = !DILocation(line: 0, scope: !4702)
!4712 = !DILocation(line: 0, scope: !4695, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 111, column: 24, scope: !4702)
!4714 = !DILocation(line: 37, column: 24, scope: !4695, inlinedAt: !4713)
!4715 = !DILocation(line: 113, column: 14, scope: !4710)
!4716 = !DILocation(line: 113, column: 7, scope: !4702)
!4717 = !DILocation(line: 116, column: 19, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !593, line: 116, column: 11)
!4719 = distinct !DILexicalBlock(scope: !4710, file: !593, line: 114, column: 5)
!4720 = !DILocation(line: 116, column: 11, scope: !4719)
!4721 = !DILocation(line: 120, column: 16, scope: !4718)
!4722 = !DILocation(line: 120, column: 9, scope: !4718)
!4723 = !DILocation(line: 125, column: 23, scope: !4709)
!4724 = !DILocation(line: 0, scope: !4709)
!4725 = !DILocation(line: 126, column: 18, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4709, file: !593, line: 126, column: 11)
!4727 = !DILocation(line: 126, column: 11, scope: !4709)
!4728 = !DILocation(line: 128, column: 39, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4726, file: !593, line: 127, column: 9)
!4730 = !DILocalVariable(name: "__dest", arg: 1, scope: !4731, file: !942, line: 26, type: !4254)
!4731 = distinct !DISubprogram(name: "memcpy", scope: !942, file: !942, line: 26, type: !4252, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !4732)
!4732 = !{!4730, !4733, !4734}
!4733 = !DILocalVariable(name: "__src", arg: 2, scope: !4731, file: !942, line: 26, type: !829)
!4734 = !DILocalVariable(name: "__len", arg: 3, scope: !4731, file: !942, line: 26, type: !37)
!4735 = !DILocation(line: 0, scope: !4731, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 128, column: 11, scope: !4729)
!4737 = !DILocation(line: 29, column: 10, scope: !4731, inlinedAt: !4736)
!4738 = !DILocation(line: 129, column: 11, scope: !4729)
!4739 = !DILocation(line: 133, column: 23, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !593, line: 133, column: 15)
!4741 = distinct !DILexicalBlock(scope: !4726, file: !593, line: 132, column: 9)
!4742 = !DILocation(line: 133, column: 15, scope: !4741)
!4743 = !DILocation(line: 138, column: 44, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4740, file: !593, line: 134, column: 13)
!4745 = !DILocation(line: 0, scope: !4731, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 138, column: 15, scope: !4744)
!4747 = !DILocation(line: 29, column: 10, scope: !4731, inlinedAt: !4746)
!4748 = !DILocation(line: 139, column: 15, scope: !4744)
!4749 = !DILocation(line: 139, column: 32, scope: !4744)
!4750 = !DILocation(line: 140, column: 13, scope: !4744)
!4751 = !DILocation(line: 0, scope: !4710)
!4752 = !DILocation(line: 145, column: 1, scope: !4702)
